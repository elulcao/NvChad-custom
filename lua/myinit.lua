local g = vim.g
local opt = vim.opt
local HOME = os.getenv("HOME")

opt.colorcolumn = "79,99"
opt.fileformat = "unix"
opt.fileformats = "unix,dos,mac"
opt.wildignore = "wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__,.DS_Store"

g.copilot_assume_mapped = true
g.tmux_navigator_save_on_switch = 2
