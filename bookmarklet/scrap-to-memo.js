(function () {
    var title = window.prompt('Scrap to memo.', document.title);
    if (!title) return;
    var lines = [window.location.href];
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
    lines.push('');
    var body = encodeURIComponent(lines.join('\n'));
    window.open('https://scrapbox.io/ohtomi-memo/' + encodeURIComponent(title.trim()) + '?body=' + body);
})()