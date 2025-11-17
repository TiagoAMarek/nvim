return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "jsonc",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    },
  },
  {
    "folke/sidekick.nvim",
    opts = {
      -- add any options here
      cli = {
        mux = {
          backend = "tmux",
          enabled = true,
        },
        win = {
          layout = "float",
        },
      },
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
  },
  -- Auto-close JSX tags
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "html",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      "svelte",
      "vue",
      "tsx",
      "jsx",
      "xml",
      "markdown",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "gbprod/yanky.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  -- Scrollbar with git and diagnostics integration
  {
    "dstein64/nvim-scrollview",
    lazy = false,
    config = function()
      require("scrollview").setup {
        -- current_only = true,
        -- base = "buffer",
        signs_on_startup = { "all" },
        diagnostics_error_symbol = "x",
        diagnostics_warn_symbol = "!",
        latestchange_symbol = "",
        cursor_symbol = "",
        search_symbol = "",
      }

      require("scrollview.contrib.gitsigns").setup()
    end,
  },
  -- LazyGit integration
  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  -- Better diagnostics
  {
    "folke/trouble.nvim",
    cmd = { "Trouble" },
    opts = {},
    keys = {
      { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
      { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)" },
      { "<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)" },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      { "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
      { "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
    },
  },

  -- Flash navigation
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump()
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "x", "o" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "Treesitter Search",
      },
      {
        "<c-s>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "Toggle Flash Search",
      },
    },
  },

  -- Package.json version info
  {
    "vuki656/package-info.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    ft = "json",
    config = function()
      require("package-info").setup()
    end,
    keys = {
      {
        "<leader>ns",
        function()
          require("package-info").show()
        end,
        desc = "Show package info",
      },
      {
        "<leader>nc",
        function()
          require("package-info").hide()
        end,
        desc = "Hide package info",
      },
      {
        "<leader>nt",
        function()
          require("package-info").toggle()
        end,
        desc = "Toggle package info",
      },
      {
        "<leader>nu",
        function()
          require("package-info").update()
        end,
        desc = "Update package",
      },
      {
        "<leader>nd",
        function()
          require("package-info").delete()
        end,
        desc = "Delete package",
      },
      {
        "<leader>ni",
        function()
          require("package-info").install()
        end,
        desc = "Install package",
      },
      {
        "<leader>np",
        function()
          require("package-info").change_version()
        end,
        desc = "Change package version",
      },
    },
  },

  -- Better escape without delay
  -- {
  --   "max397574/better-escape.nvim",
  --   event = "InsertEnter",
  --   opts = {
  --     timeout = vim.o.timeoutlen,
  --     default_mappings = false,
  --     mappings = {
  --       i = {
  --         j = {
  --           k = "<Esc>",
  --           j = "<Esc>",
  --         },
  --       },
  --       c = {
  --         j = {
  --           k = "<Esc>",
  --           j = "<Esc>",
  --         },
  --       },
  --       t = {
  --         j = {
  --           k = "<Esc>",
  --           j = "<Esc>",
  --         },
  --       },
  --       v = {
  --         j = {
  --           k = "<Esc>",
  --         },
  --       },
  --       s = {
  --         j = {
  --           k = "<Esc>",
  --         },
  --       },
  --     },
  --   },
  -- },

  -- GitHub Copilot
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        panel = {
          enabled = true,
          auto_refresh = false,
          keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>", -- Alt+Enter
          },
          layout = {
            position = "bottom", -- | top | left | right
            ratio = 0.4,
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<C-l>", -- Alt+l
            accept_word = false,
            accept_line = false,
            next = "<M-]>", -- Alt+]
            prev = "<M-[>", -- Alt+[
            dismiss = "<C-]>",
          },
        },
        filetypes = {
          yaml = false,
          markdown = false,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ["."] = false,
        },
        copilot_node_command = "node", -- Node.js version must be > 18.x
        server_opts_overrides = {},
      }
    end,
  },

  -- opencode
  {
    "sudo-tee/opencode.nvim",
    event = "VeryLazy",
    opts = {
      ui = {
        input = {
          text = {
            wrap = true, -- Wraps text inside input window
          },
        },
      },
      keymap = {
        editor = {
          ["<leader>og"] = { "toggle", desc = "Toggle Opencode" },
          ["<leader>oi"] = { "open_input", desc = "Open input window in insert mode" },
          ["<leader>oI"] = { "open_input_new_session", desc = "Open input window and create new session" },
          ["<leader>oo"] = { "open_output", desc = "Open output window" },
          ["<leader>ot"] = { "toggle_focus", desc = "Toggle focus between Opencode and last window" },
          ["<leader>oq"] = { "close", desc = "Close UI windows" },
          ["<leader>os"] = { "select_session", desc = "Select and load Opencode session" },
          ["<leader>op"] = { "configure_provider", desc = "Configure provider and model" },
          ["<leader>od"] = { "diff_open", desc = "Open diff view of modified files" },
          ["<leader>o]"] = { "diff_next", desc = "Navigate to next file diff" },
          ["<leader>o["] = { "diff_prev", desc = "Navigate to previous file diff" },
          ["<leader>oc"] = { "diff_close", desc = "Close diff view" },
          ["<leader>ora"] = { "diff_revert_all_last_prompt", desc = "Revert all files since last prompt" },
          ["<leader>ort"] = { "diff_revert_this_last_prompt", desc = "Revert current file since last prompt" },
          ["<leader>orA"] = { "diff_revert_all", desc = "Revert all files since last session" },
          ["<leader>orT"] = { "diff_revert_this", desc = "Revert current file since last session" },
          ["<leader>orr"] = { "diff_restore_snapshot_file", desc = "Restore file to restore point" },
          ["<leader>orR"] = { "diff_restore_snapshot_all", desc = "Restore all files to restore point" },
          ["<leader>ox"] = { "swap_position", desc = "Swap Opencode pane position" },
          ["<leader>opa"] = { "permission_accept", desc = "Accept permission request" },
          ["<leader>opA"] = { "permission_accept_all", desc = "Accept all permissions" },
          ["<leader>opd"] = { "permission_deny", desc = "Deny permission request" },
        },
        input_window = {
          ["<cr>"] = { "submit_input_prompt", mode = { "n", "i" }, desc = "Submit prompt" },
          ["<esc>"] = { "close", desc = "Close UI windows" },
          ["<C-c>"] = { "cancel", desc = "Cancel Opencode request" },
          ["~"] = { "mention_file", mode = "i", desc = "Mention file in context" },
          ["@"] = { "mention", mode = "i", desc = "Insert mention (file/agent)" },
          ["/"] = { "slash_commands", mode = "i", desc = "Pick slash command" },
          ["<tab>"] = { "toggle_pane", mode = { "n", "i" }, desc = "Toggle between input and output panes" },
          ["<up>"] = { "prev_prompt_history", mode = { "n", "i" }, desc = "Previous prompt in history" },
          ["<down>"] = { "next_prompt_history", mode = { "n", "i" }, desc = "Next prompt in history" },
          ["<M-m>"] = { "switch_mode", desc = "Switch between modes (build/plan)" },
        },
        output_window = {
          ["<esc>"] = { "close", desc = "Close UI windows" },
          ["<C-c>"] = { "cancel", desc = "Cancel Opencode request" },
          ["]]"] = { "next_message", desc = "Next message in conversation" },
          ["[["] = { "prev_message", desc = "Previous message in conversation" },
          ["<tab>"] = { "toggle_pane", mode = { "n", "i" }, desc = "Toggle between input and output panes" },
          ["i"] = { "focus_input", "n", desc = "Focus input window" },
          ["<leader>oS"] = { "select_child_session", desc = "Select and load child session" },
          ["<leader>oD"] = { "debug_message", desc = "Debug message in new buffer" },
          ["<leader>oO"] = { "debug_output", desc = "Debug output in new buffer" },
          ["<leader>ods"] = { "debug_session", desc = "Debug session in new buffer" },
        },
      },
    },
  },

  -- CodeCompanion
  {
    "ravitemer/codecompanion-history.nvim", -- Save and load conversation history
    {
      "olimorris/codecompanion.nvim",
      lazy = false,
      dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "j-hui/fidget.nvim",
      },
      config = function(_, opts)
        require("codecompanion").setup(opts)
        require("custom.extmarks").setup()
      end,
      init = function()
        require("custom.spinner"):init()
      end,
      opts = {
        extensions = {
          history = {
            enabled = true,
            opts = {
              keymap = "gh",
              save_chat_keymap = "sc",
              auto_save = true,
              auto_generate_title = true,
              continue_last_chat = false,
              delete_on_clearing_chat = false,
              picker = "snacks",
              enable_logging = false,
              dir_to_save = vim.fn.stdpath "data" .. "/codecompanion-history",
            },
          },
        },
        strategies = {
          chat = {
            keymaps = {
              close = {
                modes = { n = "<C-q>", i = "<C-q>" },
              },
            },
            adapter = {
              name = "copilot",
              model = "gpt-4.1",
            },
            slash_commands = {
              ["buffer"] = {
                keymaps = {
                  modes = {
                    i = "<C-b>",
                  },
                },
              },
              ["fetch"] = {
                keymaps = {
                  modes = {
                    i = "<C-f>",
                  },
                },
              },
              ["help"] = {
                opts = {
                  max_lines = 1000,
                },
              },
              ["image"] = {
                keymaps = {
                  modes = {
                    i = "<C-i>",
                  },
                },
                opts = {
                  dirs = { "~/Documents/Screenshots" },
                },
              },
            },
          },
          inline = { adapter = "copilot" },
        },
        -- display = {
        --   action_palette = {
        --     prompt = "Prompt ", -- Prompt used for interactive LLM calls
        --     provider = "default", -- default|telescope|mini_pick
        --     opts = {
        --       show_default_actions = true, -- Show the default actions in the action palette?
        --       show_default_prompt_library = true, -- Show the default prompt library in the action palette?
        --     },
        --   },
        -- },
      },
      keys = {
        { "<leader>Ac", "<cmd>CodeCompanionChat<cr>", desc = "CodeCompanion - Chat" },
        { "<leader>Aa", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion - Actions" },
      },
    },
  },
}
