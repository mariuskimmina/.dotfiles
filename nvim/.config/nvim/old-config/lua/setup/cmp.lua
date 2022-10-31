local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
    return
end


local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
    return
end

local lspkind = require 'lspkind'
lspkind.init()

require("luasnip/loaders/from_vscode").lazy_load()

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = {
        ["<C-n>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "c" }),
        ["<C-p>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "c" }),
        ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
        ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
        ["<C-e>"] = cmp.mapping {
          i = cmp.mapping.abort(),
          c = cmp.mapping.close(),
        },
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = "luasnip" },
        { name = 'nvim_lua' },
        { name = 'path' },
        { name = 'buffer', keyword_length = 3 },
    },
    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            maxwidth = 60,
            menu = {
                luasnip = "[SNIP]",
                buffer = "[BUF]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[VIM]",
                path = "[PATH]",
            }
        }
    },
    confirm_opts = {
        behavior = cmp.ConfirmBehavior.Replace,
        select = false,
    },
    -- documentation = {
        -- border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    -- },
    experimental = {
        native_menu = false,
        ghost_text = false,
    },
})

-- Setup lspconfig.
require('lspconfig')['gopls'].setup {
    capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
}

require('lspconfig')['pyright'].setup {
    capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
}
