require("plugins")
require("options")
require("setup.spelling")
require("mappings")

-- To specify a different config for a particular Operating System I can do this:
-- if (vim.loop.os_uname().sysname == "Linux") then
--     require('linuxconfig')
-- end
-- if (vim.loop.os_uname().sysname == "Windows_NT") then
--     require('windowsconfig')
-- end

