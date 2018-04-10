var cmodal, fn, focusApp, keys, log, moveCurrentWindowToScreen, moveWindowToScreen, showHintForWindow;

keys = [];


/**
 * Output information via notification center
 * @param  {Any} obj - any object
 * @param  {Number} duration = 5 - duration in seconds
 */

log = function(obj, duration) {
  var msg;
  if (duration == null) {
    duration = 5;
  }
  if (obj != null) {
    msg = (function() {
      switch (false) {
        case !(obj instanceof Error):
          return obj.message;
        case typeof obj !== 'object':
          return JSON.stringify(obj);
        default:
          return new String(obj);
      }
    })();
    return Phoenix.notify(msg);
  }
};


/**
 * Wrap function with try & catch construction
 * @param  {Function} implementation
 * @return {Function} wrapped function
 */

fn = function(implementation) {
  return function() {
    var e;
    try {
      return implementation.apply(null, arguments);
    } catch (_error) {
      e = _error;
      return log(e);
    }
  };
};


/**
 * Current modal window
 * @type {Null|Modal}
 */

cmodal = null;


/**
 * Show modal window with name of just focused window.
 * It helps with visual detection of current window.
 * @param  {Window} win - current window
 * @param  {String} name - window application name
 */

showHintForWindow = fn(function(win, name) {
  var frame, mframe, x, y;
  if (cmodal != null) {
    cmodal.close();
  }
  cmodal = new Modal();
  cmodal.message = name;
  frame = win.frame();
  mframe = cmodal.frame();
  x = frame.x + frame.width / 2 - mframe.width / 2;
  y = win.screen().visibleFrameInRectangle().height - (frame.y + frame.height / 2) - mframe.height / 2;
  cmodal.origin = {
    x: x,
    y: y
  };
  cmodal.duration = 0.3;
  return cmodal.show();
});


/**
 * Focus application by name
 * @param  {String} name
 */

focusApp = function(name) {
  var app, win, windows;
  if (!(app = App.get(name))) {
    app = App.launch(name);
  }
  if (app) {
    windows = _.filter(Window.recent(), function(win) {
      return win.app().name() === name;
    });
    if (!windows.length) {
      log('No launched app found "' + name + '"');
    } else {
      win = app.isActive() ? _.last(windows) : _.first(windows);
      win.focus();
      return showHintForWindow(win, name);
    }
  }
};


/**
 * Move window to the proper screen by screen number
 * @param  {Window} win
 * @param  {Number} screenNumber
 */

moveWindowToScreen = fn(function(win, screenNumber) {
  var frame, newScreenRect, oldScreenRect, screen, xRatio, yRatio;
  if (screen = Screen.all()[screenNumber - 1]) {
    frame = win.frame();
    oldScreenRect = win.screen().visibleFrameInRectangle();
    newScreenRect = screen.visibleFrameInRectangle();
    xRatio = newScreenRect.width / oldScreenRect.width;
    yRatio = newScreenRect.height / oldScreenRect.height;
    return win.setFrame({
      x: (Math.round(frame.x - oldScreenRect.x) * xRatio) + newScreenRect.x,
      y: (Math.round(frame.y - oldScreenRect.y) * yRatio) + newScreenRect.y,
      width: Math.round(frame.width * xRatio),
      height: Math.round(frame.height * yRatio)
    });
  }
});


/**
 * Move current window to the proper screen by screen number
 * @param  {Number} screenNumber
 */

moveCurrentWindowToScreen = fn(function(screenNumber) {
  return moveWindowToScreen(Window.focused(), screenNumber);
});

keys.push(Key.on('g', ['ctrl', 'cmd'], function() {
  return focusApp("Google Chrome");
}));

keys.push(Key.on('v', ['ctrl', 'cmd'], function() {
  // return focusApp("Code");
  return focusApp("Code");
}));

keys.push(Key.on('m', ['ctrl', 'cmd'], function() {
  return focusApp("Mail");
}));

keys.push(Key.on('s', ['ctrl', 'cmd'], function() {
  focusApp("Adium");
  focusApp("Telegram");
  focusApp("Skype");
}));

keys.push(Key.on('e', ['ctrl', 'cmd'], function() {
  return focusApp("Mail");
}));

keys.push(Key.on('t', ['ctrl', 'cmd'], function() {
  return focusApp("iTerm2");
}));

keys.push(Key.on('f', ['ctrl', 'cmd'], function() {
  App.launch("Finder");
  return focusApp("Finder");
}));

keys.push(Key.on('1', ['ctrl', 'cmd'], fn(function() {
  return moveCurrentWindowToScreen(1);
})));

keys.push(Key.on('2', ['ctrl', 'cmd'], fn(function() {
  return moveCurrentWindowToScreen(2);
})));

keys.push(Key.on('3', ['ctrl', 'cmd'], fn(function() {
  return moveCurrentWindowToScreen(3);
})));

keys.push(Key.on('return', ['ctrl', 'cmd'], function() {
  return Window.focused().maximize();
}));
