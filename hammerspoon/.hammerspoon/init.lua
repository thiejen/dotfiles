-- https://www.hammerspoon.org/go/
-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
-- --  hs.alert.show("Hello World!")
--   hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
-- end)

-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()

--   f.x = f.x - 10
--   win:setFrame(f)
-- end)

-- hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
--   local win = hs.window.focusedWindow()
--   local f = win:frame()

--   local screen = win:screen()
--   local max = screen:frame()

--   f.x = max.x
--   f.y = max.y
--   f.w = max.w / 2
--   f.h = max.h

--   win:setFrame(f)
-- end)

-- u k o
-- h   l
-- b j m

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "U", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h / 2

  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "I", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2

  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "O", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + max.w / 2
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h / 2

  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "H", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h

  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + max.w / 2
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h

  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "N", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + max.h / 2
  f.w = max.w
  f.h = max.h / 2

  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "B", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + max.h / 2
  f.w = max.w / 2
  f.h = max.h / 2

  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "M", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + max.w / 2
  f.y = max.y + max.h / 2
  f.w = max.w / 2
  f.h = max.h / 2

  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "0", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h

  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "J", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x - max.w * 2 / 3
  f.y = max.y
  f.w = max.w
  f.h = max.h

  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "K", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()

  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + max.w * 2 / 3
  f.y = max.y
  f.w = max.w
  f.h = max.h

  win:setFrame(f)
end)

-- Simple configuration
hs.hotkey.bind({"cmd",  "alt", "ctrl"}, "R", function()
  hs.reload()
end)

-- Fancy configuration reloading
function reloadConfig(files)
  doReload = false
  for _,file in pairs(files) do
    if file:sub(-4) == ".lua" then
      doReload = true
    end
  end
  if doReload then
    hs.reload()
  end
end

myWatcher = hs.pathwatcher.new("~/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded2")

-- https://www.reddit.com/r/hammerspoon/comments/aexm45/request_move_between_multiple_monitors/
--
-- tru het frame thi tinh dc
