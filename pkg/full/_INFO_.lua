{
    packageID = "com.luafoxyt.github.io.lfrt-echo-template",
    packageName = "echo", -- name of youre progeram
    packageVersion = 000000001, -- version seperated by three the something like 0.0.1 becomes 000000001 1.1.1 is 001001001 and so on, must be a number
    packageAuthor = "LuaFoxYT", -- the author of the package, can be any string
    packageDescription = "A template for creating LFPK packages.", -- a short description of the package, can be any string
    packageLicense = "MIT", -- license of the package, can be any license, but must be a valid SPDX license identifier. See https://spdx.org/licenses/ for a list of valid identifiers.
    packageDependencies = {
        --["LuaFoxYT/LuaFoxRuntime-Develoupment-Program"] = {
        --    version = "latest",
        --    branch = "main"
        --}, -- an example of a dependency
    },
    files = { -- package's removable files.
        ["/lfrtBin/echo.lfar"] = true, -- the files that are in the project, true if removable, false if not, the path is relative to a exisiting folder in the comnputer we dont want to delete. the _-_lfrtBin_-_ represents the platforms lfrtBin folder specified by LFPC (LuaFox Platform Core) in linux its $HOME/.config in windows its Users/<User>/%AppData%/roaming
    },
}