-- App focus hotkeys
local appBundleIds = {
  Chromium = "org.chromium.Chromium",
}

local function focusApp(name)
  local bundleId = appBundleIds[name]
  if bundleId then
    hs.application.launchOrFocusByBundleID(bundleId)
    return
  end

  hs.application.launchOrFocus(name)
end

hs.hotkey.bind({"cmd", "shift"}, "A", function() focusApp("Alacritty") end)
hs.hotkey.bind({"cmd", "shift"}, "B", function() focusApp("Bloomberg") end)  -- verify name via hs.application.frontmostApplication():name()
hs.hotkey.bind({"cmd", "shift"}, "C", function() focusApp("Calendar") end)
hs.hotkey.bind({"cmd", "shift"}, "H", function() focusApp("Home Assistant") end)
-- hs.hotkey.bind({"cmd", "shift"}, "J", function() focusApp("IntelliJ IDEA") end)
hs.hotkey.bind({"cmd", "shift"}, "K", function() focusApp("Slack") end)
hs.hotkey.bind({"cmd", "shift"}, "M", function() focusApp("Music") end)
hs.hotkey.bind({"cmd", "shift"}, "G", function() focusApp("Obsidian") end)
hs.hotkey.bind({"cmd", "shift"}, "Q", function() focusApp("OpenCode") end)
hs.hotkey.bind({"cmd", "shift"}, "W", function() focusApp("KeePassXC") end)
hs.hotkey.bind({"cmd", "shift"}, "Y", function() focusApp("Kagi Assistant") end)
hs.hotkey.bind({"cmd", "shift"}, "I", function() focusApp("Finder") end)
hs.hotkey.bind({"cmd", "shift"}, "7", function() focusApp("OmniFocus") end)
hs.hotkey.bind({"cmd", "shift"}, "8", function() focusApp("Signal") end)
hs.hotkey.bind({"cmd", "shift"}, "9", function() focusApp("Firefox") end)
hs.hotkey.bind({"cmd", "shift"}, "0", function() focusApp("Chromium") end)

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
