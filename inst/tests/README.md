## seleniumPipes tests

Port of the python tests in the Selenium project currently at /selenium/py/test/selenium/webdriver/commmon . The html files utilised are currently located at /selenium/common/src/web also in the selenium project. A environment variable SEL_TEST_DIR should be set on a local system to refer to the base directory containing the html files. This should be a fully qualified path.

### sauceConnect

For running tests on sauceLabs it is recommended to have a local server serving the selenium test html files. The sauce labs browsers should access these files via sauceConnect.
