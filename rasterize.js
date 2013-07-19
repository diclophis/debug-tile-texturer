var page = require('webpage').create(),
    system = require('system'),
    address, output, size;

if (system.args.length == 4) {
  address = system.args[1];
  output = system.args[2];
  size = system.args[3];
  page.viewportSize = { width: size, height: size };
  page.onConsoleMessage = function (msg) {
    console.log(msg);
  };
  phantom.addCookie({
    'name'  : 'viewportSize',
    'value' : size,
    'domain': 'localhost'
  });
  page.open(address, function (status) {
    if (status !== 'success') {
      console.log('Unable to load the address!');
      phantom.exit();
    } else {
      window.setTimeout(function () {
        page.render(output);
        phantom.exit();
      }, 200);
    }
  });
}
