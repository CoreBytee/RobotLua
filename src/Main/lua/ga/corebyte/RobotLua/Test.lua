local Robot = Import("ga.corebyte.RobotLua")
p(Robot)
while true do
    local P = Robot.GetMousePos()
    p(Robot.GetPixelColor(P.x, P.y))
end
p("a")