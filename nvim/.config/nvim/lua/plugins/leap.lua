local Plugin = { "ggandor/leap.nvim" }

Plugin.name = 'leap'

-- See :help lualine.txt
Plugin.opts = {
}

function Plugin.init()
  require('leap').add_default_mappings()
end

return Plugin
