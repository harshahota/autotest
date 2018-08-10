var Jasmine2HtmlReporter = require('protractor-jasmine2-html-reporter');

exports.config = {
    specs: ['./tests/*.js'],
    onPrepare: function () {
        browser.ignoreSynchronization = true;
    },
    capabilities: {
      'browserName': 'firefox'
    },
    onPrepare: function() {
        jasmine.getEnv().addReporter(
          new Jasmine2HtmlReporter({
            savePath: 'target/report'
          })
        );
     }
}