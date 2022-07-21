-- For more info on getting the language server running look here:
-- https://github.com/neovim/nvim-lspconfig/wiki/Installing-language-servers#automatically
-- https://github.com/williamboman/nvim-lsp-installer

-- install language servers:
-- sudo npm install -g vscode-languageserver
-- sudo npm install -g ng-server
-- sudo npm install -g typescript-language-server
-- sudo npm install -g typescript-eslint-language-service
-- pip install "python-lsp-server[all]" -- for more info https://www.github.com/python-lsp/python-lsp-server 
-- sudo npm i -g vscode-langservers-extracted
-- dotnet tool install --global csharp-ls

require("nvim-lsp-installer").setup {
    automatic_installation = true
  }
  
  local lspconfig = require('lspconfig')
  
  lspconfig.sumneko_lua.setup {}
  lspconfig.angularls.setup {}
  lspconfig.emmet_ls.setup {}
  lspconfig.eslint.setup {}
  lspconfig.html.setup {}
  lspconfig.tsserver.setup {}
  lspconfig.csharp_ls.setup {}
  lspconfig.cssls.setup {}
  lspconfig.cssmodules_ls.setup {}
  lspconfig.gopls.setup {
    cmd = {'gopls'},
    -- for postfix snippets and analyzers
    capabilities = capabilities,
    settings = {
      gopls = {
        experimentalPostfixCompletions = true,
        analyses = {
          unusedparams = true,
          shadow = true,
        },
        staticcheck = true,
      },
    },
    on_attach = on_attach,
  }
  lspconfig.marksman.setup {}
  lspconfig.pylsp.setup {}

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<Leader>df', vim.diagnostic.goto_next, bufopts)
  vim.keymap.set('n', '<Leader>dp', vim.diagnostic.goto_prev, bufopts)
  vim.keymap.set('n', '<Leader>dl', "<cmd>Telescope diagnostics<cr>", bufopts)
  vim.keymap.set('n', '<Leader>r', vim.lsp.buf.rename, bufopts)  
  vim.keymap.set('n', '<Leader>c', vim.lsp.buf.code_action, bufopts)
end

local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

-- Gopls additional code
function goimports(timeoutms)
  local context = { source = { organizeImports = true } }
  vim.validate { context = { context, "t", true } }
  
  local params = vim.lsp.util.make_range_params()
  params.context = context

  -- See the implementation of the textDocument/codeAction callback
  -- (lua/vim/lsp/handler.lua) for hot to do this properly
  local result = vim.lsp.buf request_sync(0, "textDocument/codeAction", params, timeout_ms)
  if not result or next(result) == nil then return end
  local actions = result[1].result
  if not actions then return end
  local action = actions[1]

  -- textDocument/codeAction can return either Command[] or CodeAction[]. If it
  -- is a CodeAction, it can have either an edit, a command or both. Edits
  -- should be executed first.
  if action.edit or type(action.command) == "table" then
    if action.edit then
      vim.lsp.util.apply_workspace_edit(action.edit)
    end
    if type(action.command) == "table" then
      vim.lsp.buf.execute_command(action.command)
    end
  else
    vim.lsp.buf.execute_command(action)
  end
end
