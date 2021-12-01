    -- Setup nvim-cmp.
local lspkind = require 'lspkind'
lspkind.init()


local cmp = require 'cmp'
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lua' },
        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'buffer', keyword_length = 4 },
    },
    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            maxwidth = 60,
            menu = {
                buffer = "[BUF]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[VIM]",
                path = "[PATH]",
            }
        }
    },
    experimental = {
        native_menu = false,
        ghost_text = true,
    },
})

-- Setup lspconfig.
require('lspconfig')['gopls'].setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

require('lspconfig')['pyright'].setup {
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
