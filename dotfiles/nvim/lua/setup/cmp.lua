local lspkind = require('lspkind')
local cmp = require('cmp')
cmp.setup {
    -- As currently, i am not using any snippet manager, thus disabled it.
       -- snippet = {
          --   expand = function(args)
             --     require("luasnip").lsp_expand(args.body)
             --   end,
          -- },
 
       mapping = {
          ["<C-d>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-e>"] = cmp.mapping.close(),
          ["<c-y>"] = cmp.mapping.confirm {
             behavior = cmp.ConfirmBehavior.Insert,
             select = true,
          },
       },
       formatting = {
          format = lspkind.cmp_format {
             with_text = true,
             menu = {
                buffer   = "[buf]",
                nvim_lsp = "[LSP]",
                path     = "[path]",
             },
          },
       },
 
       sources = {
          { name = "nvim_lsp"},
          { name = "path" },
          { name = "buffer" , keyword_length = 5},
       },
       experimental = {
          ghost_text = true
       }
 }