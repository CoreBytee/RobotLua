local Robot = {}
local Func = Import("ga.corebyte.RobotLua.Func")

--#region Keyboard
function Robot.SetKeyboardDelay(MS)
    return Func("setKeyboardDelay", MS)
end

function Robot.KeyTap(Key)
    return Func("keyTap", Key)
end

function Robot.KeyToggle(Key)
    return Func("keyToggle", Key)
end

function Robot.TypeString(Text)
    return Func("typeString", Text)
end

function Robot.TypeStringDelayed(Text, Cpm)
    return Func("typeStringDelayed", Text, Cpm) 
end
--#endregion

--#region Mouse
function Robot.SetMouseDelay(Ms)
    return Func("setMouseDelay", Ms)
end

function Robot.MoveMouse(X, Y)
    return Func("moveMouse", X, Y)
end

function Robot.MoveMouseSmooth(X, Y)
    return Func("moveMouseSmooth", X, Y)
end

function Robot.MouseClick(Button, Double)
    return Func("mouseClick", Button, Double)
end

function Robot.MouseToggle(Down, Button)
    return Func("mouseToggle", Down, Button)
end

function Robot.DragMouse(X, Y)
    return Func("dragMouse", X, Y)
end

function Robot.GetMousePos()
    return Func("getMousePos")
end

function Robot.ScrollMouse(X, Y)
    return Func("scrollMouse", X, Y)
end
--#endregion

--#region Screen
function Robot.GetPixelColor(X, Y)
    return Func("getPixelColor", X, Y)
end

function Robot.GetScreenSize()
    return Func("getScreenSize")
end

function Robot.CaputureScreen(X, Y, Width, Height)
    return Func("captureScreen", X, Y, Width, Height)
end
--#endregion

return Robot