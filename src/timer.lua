mon = peripheral.wrap("top")
mon.clear()

while true do
  t = os.time()
  ts = textutils.formatTime(t)

  mon.setCursorPos(1, 1)
  mon.clearLine()
  mon.write()

  if 6 < t and t < 18.5 then
    typ = "Noon"
  else
    typ = "Night"
  end

  mon.setCursorPos(1, 2)
  mon.clearLine()
  mon.write()

  sleep(1)
end
