return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg = "#000000",
        dark_bg = "#000000",
        darker_bg = "#000000",
        lighter_bg = "#0a0a0a",

        fg = "#e8e8e8",
        dark_fg = "#606060",
        light_fg = "#b8b8b8",
        bright_fg = "#ffffff",
        muted = "#181818",

        red = "#ff4057",
        yellow = "#ffd740",
        orange = "#ff8c40",
        green = "#00e676",
        cyan = "#00e5ff",
        blue = "#448aff",
        magenta = "#e040fb",
        brown = "#b08050",

        bright_red = "#ff6b7d",
        bright_yellow = "#ffe066",
        bright_green = "#69f0ae",
        bright_cyan = "#64f4ff",
        bright_blue = "#82b1ff",
        bright_magenta = "#ea80fc",

        accent = "#00e5ff",
        cursor = "#ffffff",
        foreground = "#e8e8e8",
        background = "#000000",
        selection = "#002b30",
        selection_foreground = "#ffffff",
        selection_background = "#002b30",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          vim.api.nvim_set_hl(0, "Comment", {
            fg = "#606060",
            italic = true,
          })

          vim.api.nvim_set_hl(0, "@comment", {
            fg = "#606060",
            italic = true,
          })
        end,
      })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = opts.options or {}
      opts.options.theme = {
        normal = {
          a = { fg = "#000000", bg = "#00e5ff", gui = "bold" },
          b = { fg = "#ffd740", bg = "#000000" },
          c = { fg = "#e8e8e8", bg = "#000000" },
        },
        insert = {
          a = { fg = "#000000", bg = "#00e676", gui = "bold" },
        },
        visual = {
          a = { fg = "#000000", bg = "#ea80fc", gui = "bold" },
        },
        replace = {
          a = { fg = "#000000", bg = "#ff6b7d", gui = "bold" },
        },
        command = {
          a = { fg = "#000000", bg = "#ff8c40", gui = "bold" },
        },
        inactive = {
          a = { fg = "#606060", bg = "#000000" },
          b = { fg = "#606060", bg = "#000000" },
          c = { fg = "#606060", bg = "#000000" },
        },
      }
    end,
  },
}
