return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count
    local clients_lsp = function()
      local bufnr = vim.api.nvim_get_current_buf()
      ---@diagnostic disable-next-line: deprecated
      local clients = vim.lsp.buf_get_clients(bufnr)
      if next(clients) == nil then
        return ""
      end

      local c = {}
      for _, client in pairs(clients) do
        table.insert(c, client.name)
      end
      return "\u{f085} " .. table.concat(c, "|")
    end

    local branch = { "branch", icon = "" }
    local mode = { "mode", icon = "󰡛" }
    local diagnostics = { "diagnostics", symbols = { error = " ", warn = " ", info = " " }, colored = false }
    lualine.setup({
      options = {
        theme = "catppuccin",
        icons_enabled = true,
        disabled_filetypes = {},
        section_separators = {},
        component_separators = {},
        always_divide_middle = true,
        globalstatus = false,
      },
      sections = {
        lualine_a = { mode },
        lualine_b = { branch, "filename" },
        lualine_c = {
          {
            function()
              return require("grapple").name_or_index()
            end,
            cond = function()
              return package.loaded["grapple"] and require("grapple").exists()
            end,
          },
        },
        lualine_x = { diagnostics, "diff", "filetype" },
        lualine_y = { "progress", "location" },
        lualine_z = { clients_lsp },
      },
    })
  end,
}
