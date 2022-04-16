local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

telescope.load_extension('neoclip')

telescope.setup{
    defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        path_display = { "smart" },
    },
    pickers = {
      find_files = {
        theme = "dropdown",
      }
    },
    extensions = {
      fzy_native = {
        override_generic_sorter = false,
        override_file_sorter = true,
      }
    }
}

local M = {}
M.search_opensource = function()
    require("telescope.builtin").find_files({
        prompt_title = "< Open Source Project >",
        cwd = "~/open-source/",
    })
end

return M
