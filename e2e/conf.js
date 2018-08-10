var Jasmine2HtmlReporter = require('protractor-jasmine2-html-reporter');

exports.config = {
  specs: ['./tests/*.js'],
  onPrepare: function () {
    browser.ignoreSynchronization = true;
  },
  capabilities: {
    'browserName': 'chrome',
    'chromeOptions': {
      'args': ['--headless','--no-sandbox','--disable-dev-shm-usage']
    }
  },
  onPrepare: function () {
    jasmine.getEnv().addReporter(
      new Jasmine2HtmlReporter({
        savePath: 'target/report'
      })
    );
  }
}