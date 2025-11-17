require("nvchad.configs.lspconfig").defaults()

-- Configure ts_ls for better JavaScript/TypeScript support
vim.lsp.config.ts_ls = {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = {
    "javascript",
    "javascriptreact",
    "javascript.jsx",
    "typescript",
    "typescriptreact",
    "typescript.tsx",
  },
  root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
}

-- Configure eslint
vim.lsp.config.eslint = {
  cmd = { "vscode-eslint-language-server", "--stdio" },
  root_markers = {
    ".eslintrc",
    ".eslintrc.js",
    ".eslintrc.json",
    ".eslintrc.yml",
    "eslint.config.js",
    "package.json",
  },
}

local servers = { "html", "cssls", "ts_ls", "eslint" }
vim.lsp.enable(servers)

-- Enable inlay hints for TypeScript/JavaScript
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.server_capabilities.inlayHintProvider then
      vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
    end
  end,
})

-- read :h vim.lsp.config for changing options of lsp servers 
