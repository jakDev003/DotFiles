vim.api.nvim_command("set statusline=")
vim.api.nvim_command("set statusline+=%#PmenuSel#") -- Set status bar color
vim.api.nvim_command("set statusline+=\\ %M") -- Shows '+' if file has any changes
vim.api.nvim_command("set statusline+=\\ %r") -- Shows '[RO]' if file is READ ONLY
vim.api.nvim_command("set statusline+=\\ %y") -- Shows file type
--vim.api.nvim_command("set statusline+=\\ %F") -- Shows file path / file name
vim.api.nvim_command("set statusline+=\\ %f") -- Shows file name

vim.api.nvim_command("set statusline+=%=") -- Right Align
vim.api.nvim_command("set statusline+=%#DiffChange#") -- Set status bar color
vim.api.nvim_command("set statusline+=\\ %c:%l/%L") -- Shows cursor column : cursor line / total line count
vim.api.nvim_command("set statusline+=\\ [%n]") -- Shows buffer number
