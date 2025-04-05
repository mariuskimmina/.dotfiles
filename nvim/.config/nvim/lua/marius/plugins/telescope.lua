return {
  "nvim-telescope/telescope.nvim",
  event = "VimEnter",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
    "nvim-tree/nvim-web-devicons",
    "ThePrimeagen/harpoon",
  },

  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local themes = require("telescope.themes")

    telescope.load_extension("ui-select")
    telescope.load_extension("harpoon")

    telescope.setup({
      defaults = {
        vimgrep_arguments = {
          "rg",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--smart-case",
          "--column",
          "--hidden",
          "--glob",
          "!{**/.git/*,**/node_modules/*,**/package-lock.json,**/yarn.lock}",
        },
        path_display = { "truncate" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
      pickers = {
        find_files = {
          find_command = {
            "rg",
            "--files",
            "--smart-case",
            "--hidden",
            "--glob",
            "!{**/.git/*,**/node_modules/*,**/package-lock.json,**/yarn.lock}",
          },
        },
      },
      extensions = {
        ["ui-select"] = {
          themes.get_dropdown({}),
        },
        ["harpoon"] = {},
      },
    })

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    local builtin = require("telescope.builtin")
    keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
    keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
    keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
    keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
    keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch [B]uffers" })
    keymap.set("n", "<leader>sm", ":Telescope harpoon marks<CR>", { desc = "Search harpoon marks" })

    vim.keymap.set("n", "<leader>/", function()
      builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
        winblend = 10,
        previewer = false,
      }))
    end, { desc = "[/] Fuzzily search in current buffer" })
  end,
}
