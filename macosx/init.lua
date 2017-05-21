-- lock screen
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "L", function()
--  hs.caffeinate.lockScreen()
  os.execute("/Users/zephyr/bin/lockscreen")
end)
