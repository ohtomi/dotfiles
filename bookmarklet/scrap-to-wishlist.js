javascript: (function () {
    var title = window.prompt('Scrap to wishlist.', document.title);
    if (!title) return;
    var lines = [` [${window.location.href} ${title}]`];
    var body = encodeURIComponent(lines.join('\n'));
    window.open(`https://scrapbox.io/ohtomi-journal/読みたい本?body=${body}`);
})()