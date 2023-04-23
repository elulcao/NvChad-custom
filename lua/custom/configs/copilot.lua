local present, copilot = pcall(require, "copilot")
if not present then
  print("copilot not found")
  return
end

copilot.setup ({
  suggestion = { enabled = false },
  panel = { enabled = false },
  filetypes = {
    markdown = true, -- overrides default
    terraform = false, -- disallow specific filetype
    sh = function ()
      if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), '^%.env.*') then
        -- disable for .env files
        return false
      end
      return true
    end,
  },
})
