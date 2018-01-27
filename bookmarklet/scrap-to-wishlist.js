javascript: (function () {
    var title = window.prompt('Scrap to wishlist.', document.title);
    if (!title) return;
    var lines = [window.location.href];
    var body = encodeURIComponent(lines.join('\n'));
    window.open('https://scrapbox.io/ohtomi-wishlist/' + encodeURIComponent(title.trim()) + '?body=' + body);
})()