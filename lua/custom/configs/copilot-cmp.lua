local present, copilot_cmp = pcall(require, "copilot_cmp")
if not present then
  print("copilot-cmp not found")
  return
end

copilot_cmp.setup({
})
