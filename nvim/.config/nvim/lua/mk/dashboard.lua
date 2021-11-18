vim.g.dashboard_default_executive = 'telescope'

vim.g.dashboard_custom_section = {
    a = { description = {'📁  Find Files  '}, command = 'Telescope find_files'},
    b = { description = {'🔤  Search Text  '}, command = 'Telescope live_grep'},
    c = { description = {'🕑  Recent Files  '}, command = 'Telescope oldfiles'}
}
