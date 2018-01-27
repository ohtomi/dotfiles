javascript: (function () {
    var title = window.prompt('Scrap to memo.', document.title);
    if (!title) return;
    if (window.location.href.startsWith('https://github.com') && title.indexOf(':') !== -1) title = title.substr(0, title.indexOf(':'));
    var lines = [];
    lines.push(window.location.href);
    lines.push('');
    var selection = document.getSelection();
    if (selection && selection.rangeCount) {
        var range = selection.getRangeAt(0);
        var contents = range.cloneContents();
        function replace(current) {
            var children = current.children;
            var count = children.length;
            for (var i = 0; i < count; i++) {
                var child = children[i];
                replace(child);
                if (child.nodeName === 'A') {
                    var span = document.createElement('span');
                    span.textContent = '[' + child.textContent + ' ' + child.href + ']';
                    current.replaceChild(span, child);
                }
            }
        }
        replace(contents);

        var doc = document.createElement('div');
        doc.appendChild(contents);
        lines.push(doc.textContent);
        lines.push('');
    }
    if (window.location.href.startsWith('https://github.com')) lines.push('#repository');
    lines.push('');
    var body = encodeURIComponent(lines.join('\n'));
    window.open('https://scrapbox.io/ohtomi-memo/' + encodeURIComponent(title.trim()) + '?body=' + body);
})()