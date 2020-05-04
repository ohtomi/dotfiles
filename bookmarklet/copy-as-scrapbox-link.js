(function () {
    var scrapboxLink = '[' + window.location.href + ' ' + document.title + ']';
    var textarea = document.createElement('textarea');
    textarea.textContent = scrapboxLink;
    document.body.appendChild(textarea);
    textarea.select();
    document.execCommand('copy');
    document.body.removeChild(textContent);
})()