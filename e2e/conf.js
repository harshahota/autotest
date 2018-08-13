var Jasmine2HtmlReporter = require('protractor-jasmine2-html-reporter');

exports.config = {
  specs: ['./tests/*.js'],
  onPrepare: function () {
    browser.ignoreSynchronization = true;
  },
  directConnect: true,
  capabilities: {
    'browserName': 'chrome',
    'chromeOptions': {
      args: ['--no-sandbox']
    }
  },
  onPrepare: function () {
    jasmine.getEnv().addReporter(
      new Jasmine2HtmlReporter({
        savePath: 'target/report'
      })
    );
    browser.ignoreSynchronization = true;
  }
}