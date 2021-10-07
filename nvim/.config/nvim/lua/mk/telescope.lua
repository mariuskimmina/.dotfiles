local api = vim.api
api.nvim_set_keymap('n', '<Leader>ff',  [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true, silent = true })


require('telescope').setup{
  defaults = {
  },
  pickers = {
  },
  extensions = {
  }
}
