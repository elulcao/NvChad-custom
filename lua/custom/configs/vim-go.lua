local present, vim_go = pcall(require, "vim-go")
if not present then
  print("vim-go not found")
  return
end

vim_go.setup ({
  run = ":GoInstallBinaries",
  go_list_type = "quickfix",
  go_fmt_command = "goimports",
})
