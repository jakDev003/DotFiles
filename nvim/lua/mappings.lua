local function register_mappings(mappings, default_options)
  for mode, mode_mappings in pairs(mappings) do
    for _, mapping in pairs(mode_mappings) do
      local options = #mapping == 3 and table.remove(mapping) or default_options
      local prefix, cmd = unpack(mapping)
      pcall(vim.keymap.set, mode, prefix, cmd, options)
    end
  end
end

-- Map leader to space
vim.g.mapleader = " "

local mappings = {
  i = {
    -- Insert mode
  },
  n = {
    -- Normal mode
    -- Find files using NetRw.
    { "<Leader>ex", ":e .<CR>" },

    -- Prettier
    { "<Leader>gp", ":Prettier<CR>" }, -- Get Pretty
    { "<Leader>wf", ":Prettier :w<CR>" }, -- Get Pretty and save
    -- these are handled in the prettier.lua
    -- "<Leader>f" == Format using Prettier

    -- Window mappings
    { "<Leader>vsp", ":vsp<CR>" }, -- vertical split
    { "<Leader>sp", ":sp<CR>" }, -- vertical split

    { "<Leader>+", ":res +2<CR>" }, -- increase window size by 2
    { "<Leader>-", ":res -2<CR>" }, -- decrease window size by 2
    { "<Leader>v+", ":vert res +2<CR>" }, -- increase vertical window size by 2
    { "<Leader>v-", ":vert res -2<CR>" }, -- decrease vertical window size by 2

    { "<Leader><Down>", "<C-W><C-J><CR>" }, -- move to bottom buffer
    { "<Leader><Up>", "<C-W><C-K><CR>" }, -- move to top buffer
    { "<Leader><Right>", "<C-W><C-L><CR>" }, -- move to right buffer
    { "<Leader><Left>", "<C-W><C-H><CR>" }, -- move to left buffer

    { "<Leader>bq", ":bd<CR>" }, -- Close current buffer without closing window

    -- Nvim Tree
    { "<Leader>nF", ":NvimTreeFocus<CR>" },
    { "<Leader>nt", ":NvimTreeToggle<CR>" },
    { "<Leader>nf", ":NvimTreeFindFile<CR>" },

    -- RipGrep
    { "<Leader>rg", ":lua require'nvim-ripgrep'.grep()<CR>" },

    -- Tabs
    { "<Leader>tn", ":tabnew" }, -- Open a new tab
    { "<Leader>tc", ":tabc" }, -- Close current tab
    { "<Leader>tn", ":tabn" }, -- Cycle to next tab
    { "<Leader>tp", ":tabp" }, -- Cycle to previous tab
  },
  x = {
    -- Visual mode
    -- Prettier
    { "<Leader>gp", ":Prettier<CR>" }, -- Get Pretty
    { "<Leader>wf", ":Prettier<CR> wa<CR>" }, -- Get Pretty and save
    -- these are handled in the prettier.lua
    -- "<Leader>f" == Format using Prettier
  },
}

register_mappings(mappings, { silent = true, noremap = true })

