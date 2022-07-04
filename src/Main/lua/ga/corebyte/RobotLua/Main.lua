local FS = require("fs")
local Request = require("coro-http").request
local AppData = TypeWriter.Folder .. "/ApplicationData/RobotLua/"
FS.mkdirSync(AppData)
local GetFile = AppData .. "Get-Node.twr"
if FS.existsSync(GetFile) == false then
    local Response, Body = Request(
        "GET",
        "https://github.com/CoreBytee/get-node/releases/latest/download/Get-Node.twr"
    )

    FS.writeFileSync(
        GetFile,
        Body
    )
end
TypeWriter.Runtime.LoadFile(GetFile)
Import("ga.corebyte.get-node")()

return Import("ga.corebyte.RobotLua.Robot")