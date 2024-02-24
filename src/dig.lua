sleepSecond = 0.1

function moveUp(distance)
  for i = 1, distance do
    turtle.up()
    sleep(sleepSecond)
  end
end

function moveDown(distance)
  for i = 1, distance do
    turtle.down()
    sleep(sleepSecond)
  end
end

function moveForward(distance)
  for i = 1, distance do
    turtle.forward()
    sleep(sleepSecond)
  end
end

function digUp(distance)
  for i = 1, distance do
    turtle.digUp()
    turtle.up()
    sleep(sleepSecond)
  end
end

function digDown(distance)
  for i = 1, distance do
    turtle.digDown()
    turtle.down()
    sleep(sleepSecond)
  end
end

function digForward(distance)
  for i = 1, distance do
    for j = 1, 10 do
      turtle.dig()
      sleep(sleepSecond)
    end
    turtle.forward()
  end
end

function dig(width, height, depth)
  local heightMax = height - 1
  digUp(heightMax)

  for z = 1, depth do
    digForward(1)
    turtle.turnRight()

    for x = 1, width do
      digDown(heightMax)
      moveUp(heightMax)
      if x < width then
        digForward(1)
      end
    end

    turtle.turnRight()
    turtle.turnRight()
    moveForward(width - 1)
    turtle.turnRight()
  end

  turtle.turnRight()
  turtle.turnRight()
  moveForward(depth)
  moveDown(heightMax)
  turtle.turnRight()
  turtle.turnRight()
end

w, h, d = ...

if w == nil or h == nil or d == nil then
  print("[ERR] must need 3 args. ex: dig.lua x y z")
else
  turtle.select(1)
  turtle.refuel()

  w = tonumber(w)
  h = tonumber(h)
  d = tonumber(d)

  dig(w, h, d)
end
