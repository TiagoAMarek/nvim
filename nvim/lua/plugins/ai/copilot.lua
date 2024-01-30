-- return {
--   "github/copilot.vim",
--   cmd = "Copilot"
-- }

return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    init = function()
      require('copilot').setup {
        suggestion = { enabled = false },
        panel = { enabled = false },
      }
    end,
  },
}
