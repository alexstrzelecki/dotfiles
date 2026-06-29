-- App focus hotkeys
local function focusApp(name)
  hs.application.launchOrFocus(name)
end

hs.hotkey.bind({"cmd", "shift"}, "A", function() focusApp("Alacritty") end)
hs.hotkey.bind({"cmd", "shift"}, "B", function() focusApp("Bloomberg") end)  -- verify name via hs.application.frontmostApplication():name()
hs.hotkey.bind({"cmd", "shift"}, "C", function() focusApp("Calendar") end)
hs.hotkey.bind({"cmd", "shift"}, "X", function() focusApp("Firefox") end)
hs.hotkey.bind({"cmd", "shift"}, "J", function() focusApp("IntelliJ IDEA") end)
hs.hotkey.bind({"cmd", "shift"}, "K", function() focusApp("Slack") end)
hs.hotkey.bind({"cmd", "shift"}, "G", function() focusApp("Obsidian") end)
hs.hotkey.bind({"cmd", "shift"}, "Q", function() focusApp("Visual Studio Code") end)
hs.hotkey.bind({"cmd", "shift"}, "W", function() focusApp("Passwords") end)
hs.hotkey.bind({"cmd", "shift"}, "I", function() focusApp("Finder") end)
hs.hotkey.bind({"cmd", "shift"}, "7", function() focusApp("OmniFocus") end)

-- Additional window switching combo
hs.hotkey.bind({"cmd"}, "2", function()
  hs.eventtap.keyStroke({"cmd"}, "`")
end)

-- Tab switching
hs.hotkey.bind({"cmd"}, "8", function()
  hs.eventtap.keyStroke({"ctrl", "shift"}, "tab")
end)
hs.hotkey.bind({"cmd"}, "9", function()
  hs.eventtap.keyStroke({"ctrl"}, "tab")
end)
