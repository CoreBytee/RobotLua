local Spawn = require("coro-spawn")
local Json = require("json")
local ExecPath = Import("ga.corebyte.get-node")() .. "/node"
local NodeFile = table.concat(require("path").normalize(TypeWriter.Folder .. "/ApplicationData/RobotLua/RobotJs.node"):split("\\"), "/")

return function (N, ...)
    local Result = Spawn(
        ExecPath,
        {
            args = {
                "-e",
                string.format(
                    "console.log(JSON.stringify(require('%s').%s(%s)))",
                    NodeFile,
                    N,
                    table.concat({...} or {}, ", ")
                )
            }
        }
    )
    Result.waitExit()
    return ({Json.decode(Result.stdout.read())})[1]
end