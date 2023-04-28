local Plugin = {'nvim-neo-tree/neo-tree.nvim'}

Plugin.name = 'neotree'

-- See :help lualine.txt
Plugin.opts = {
        window = {
          position = "right",
	},
        filesystem = {
          filtered_items = {
            visible = false, -- when true, they will just be displayed differently than normal items
            hide_dotfiles = false,
            hide_gitignored = true,
          },
        },
}

function Plugin.init()
  vim.keymap.set('n', '<leader>n', ':NeoTreeRevealToggle<cr>')
end

return Plugin

