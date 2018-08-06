exports.config = {
    specs: ['./tests/*.js'],
    onPrepare: function () {
        browser.ignoreSynchronization = true;
    },
}