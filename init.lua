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
myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")



hs.hotkey.bind({"`", "cmd"}, "i", function() hs.application.launchOrFocus("Google Chrome"); c() end)
hs.hotkey.bind({"`", "cmd"}, "h", function() hs.application.launchOrFocus("Arc"); c() end)
hs.hotkey.bind({"`", "cmd"}, "u", function() hs.application.launchOrFocus("Finder"); c() end)
hs.hotkey.bind({"`", "cmd"}, "l", function() hs.application.launchOrFocus("Warp"); c() end)
hs.hotkey.bind({"`", "cmd"}, ";", function() hs.application.launchOrFocus("Visual Studio Code"); c() end)
hs.hotkey.bind({"`", "cmd"}, "b", function() hs.application.launchOrFocus("Brave Browser"); c() end)
hs.hotkey.bind({"`", "cmd"}, "m", function() hs.application.launchOrFocus("Spotify"); c() end)
hs.hotkey.bind({"`", "cmd"}, "d", function() hs.application.launchOrFocus("Docker Desktop"); c() end)
hs.hotkey.bind({"`", "cmd"}, "y", function() hs.application.launchOrFocus("Zoom.us"); c() end)

