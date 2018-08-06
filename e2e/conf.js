exports.config = {
    specs: ['./tests/*.js'],
    onPrepare: function () {
        browser.ignoreSynchronization = true;
    },
    capabilities: {
        'browserName': 'chrome',
        'chromeOptions': {
          'args': ['--headless']
        }
      },
}