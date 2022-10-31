local status_ok, npairs = pcall(require, "togglerterm")
if not status_ok then
  return
end

require("toggleterm").setup{
    direction = 'float',
    close_on_exit = true
}

