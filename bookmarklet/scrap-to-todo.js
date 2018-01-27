javascript: (function () {
    var title = window.prompt('Scrap to todo.', document.title);
    if (!title) return;
    var lines = [window.location.href];
    var body = encodeURIComponent(lines.join('\n'));
    window.open('https://scrapbox.io/ohtomi-todo/' + encodeURIComponent(title.trim()) + '?body=' + body);
})()