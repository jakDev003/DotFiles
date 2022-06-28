-- Status Line
vim.api.nvim_command("set statusline=")
vim.api.nvim_command("set statusline+=%#PmenuSel#") -- Set status bar color
vim.api.nvim_command("set statusline+=\\ %m") -- Shows '+' if file has any changes
vim.api.nvim_command("set statusline+=\\ %r") -- Shows '[RO]' if file is READ ONLY
vim.api.nvim_command("set statusline+=\\ %t") -- Shows filename
--vim.api.nvim_command("set statusline+=\\ %f") -- Shows file path

vim.api.nvim_command("set statusline+=%=") -- Right Align
vim.api.nvim_command("set statusline+=%#DiffChange#") -- Set status bar color
vim.api.nvim_command("set statusline+=\\ %c:%l/%L") -- Shows cursor column : cursor line / total line count
vim.api.nvim_command("set statusline+=\\ [%n]") -- Shows buffer number

vim.api.nvim_command("set statusline+=%#warningmsg#")
vim.api.nvim_command("set statusline+=%{SyntasticStatuslineFlag()}")
vim.api.nvim_command("set statusline+=%*")

-- Syntastic specific settings for statusline
vim.api.nvim_command("let g:syntastic_always_populate_loc_list = 1")
vim.api.nvim_command("let g:syntastic_auto_loc_list = 1")
vim.api.nvim_command("let g:syntastic_check_on_open = 1")
vim.api.nvim_command("let g:syntastic_check_on_wq = 0")

-- -- WinBar
-- vim.api.nvim_command("set winbar=")
-- vim.api.nvim_command("set winbar+=%=") -- Right Align
-- vim.api.nvim_command("set winbar+=%#PmenuSel#") -- Set status bar color
-- vim.api.nvim_command("set winbar+=\\ %m") -- Shows '+' if file has any changes
-- vim.api.nvim_command("set winbar+=\\ %r") -- Shows '[RO]' if file is READ ONLY
-- vim.api.nvim_command("set winbar+=\\ %f") -- Shows file path / file name