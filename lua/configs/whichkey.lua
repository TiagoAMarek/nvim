-- Which-key group descriptions
local M = {}

M.setup = function()
  local wk = require "which-key"

  -- Register leader key groups with descriptions
  wk.add {
    -- Git operations
    { "<leader>g", group = "Git" },
    { "<leader>gg", desc = "LazyGit" },

    -- Diagnostics and quickfix
    { "<leader>x", group = "Diagnostics/Quickfix" },
    { "<leader>xx", desc = "Diagnostics (Trouble)" },
    { "<leader>xX", desc = "Buffer Diagnostics" },
    { "<leader>xL", desc = "Location List" },
    { "<leader>xQ", desc = "Quickfix List" },

    -- Code actions and LSP
    { "<leader>c", group = "Code" },
    { "<leader>ca", desc = "Code Action" },
    { "<leader>co", desc = "Organize Imports" },
    { "<leader>cl", desc = "LSP Definitions/References" },
    { "<leader>cs", desc = "Symbols (Trouble)" },

    -- Formatting
    { "<leader>f", group = "Format/Find" },
    { "<leader>fm", desc = "Format File" },

    -- Rename
    { "<leader>r", group = "Rename" },
    { "<leader>rn", desc = "LSP Rename Symbol" },

    -- Toggle operations
    { "<leader>t", group = "Toggle" },
    { "<leader>tn", desc = "Toggle Line Numbers" },
    { "<leader>tr", desc = "Toggle Relative Numbers" },

    -- NPM/Package operations
    { "<leader>n", group = "NPM/Package" },
    { "<leader>ns", desc = "Show Package Info" },
    { "<leader>nc", desc = "Hide Package Info" },
    { "<leader>nt", desc = "Toggle Package Info" },
    { "<leader>nu", desc = "Update Package" },
    { "<leader>nd", desc = "Delete Package" },
    { "<leader>ni", desc = "Install Package" },
    { "<leader>np", desc = "Change Package Version" },

    -- Buffer operations
    { "<leader>b", group = "Buffer" },
    { "<leader>bd", desc = "Close Buffer" },

    -- Console.log shortcuts
    { "<leader>cL", desc = "Console.log", mode = { "n", "v" } },

    -- Copilot operations
    { "<leader>cp", group = "Copilot" },
  }

  -- Copilot keybindings (Alt-based, shown for reference)
  wk.add {
    { "<M-l>", desc = "Accept Copilot Suggestion", mode = "i" },
    { "<M-]>", desc = "Next Copilot Suggestion", mode = "i" },
    { "<M-[>", desc = "Previous Copilot Suggestion", mode = "i" },
    { "<C-]>", desc = "Dismiss Copilot Suggestion", mode = "i" },
  }

  -- Non-leader key descriptions
  wk.add {
    -- LSP navigation
    { "gd", desc = "Go to Definition" },
    { "gr", desc = "Go to References" },
    { "K", desc = "Hover Documentation" },

    -- Flash navigation
    { "s", desc = "Flash Jump", mode = { "n", "x", "o" } },
    { "S", desc = "Flash Treesitter", mode = { "n", "x", "o" } },
    { "r", desc = "Remote Flash", mode = "o" },
    { "R", desc = "Treesitter Search", mode = { "o", "x" } },

    -- Visual mode enhancements
    { "J", desc = "Move Text Down", mode = "v" },
    { "K", desc = "Move Text Up", mode = "v" },
    { "p", desc = "Paste Without Yanking", mode = "v" },
    { "<", desc = "Indent Left", mode = "v" },
    { ">", desc = "Indent Right", mode = "v" },

    -- Search enhancements
    { "n", desc = "Next Search (Centered)" },
    { "N", desc = "Previous Search (Centered)" },

    -- Scrolling
    { "<C-d>", desc = "Scroll Down (Centered)" },
    { "<C-u>", desc = "Scroll Up (Centered)" },

    -- Window navigation
    { "<C-h>", desc = "Move to Left Window" },
    { "<C-j>", desc = "Move to Bottom Window" },
    { "<C-k>", desc = "Move to Top Window" },
    { "<C-l>", desc = "Move to Right Window" },

    -- Buffer navigation
    { "<S-h>", desc = "Previous Buffer" },
    { "<S-l>", desc = "Next Buffer" },

    -- Clear search
    { "<Esc>", desc = "Clear Search Highlight" },
  }
end

return M
