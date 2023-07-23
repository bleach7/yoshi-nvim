return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "oxfist/night-owl.nvim",
    lazy = false,
    priority = 1000,
    config = function() vim.cmd.colorscheme "night-owl" end,
    event = "User AstroFile",
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup {
        filters = {
          dotfiles = false,
          git_ignored = false,
          exclude = { vim.fn.stdpath "config" .. "/lua/custom" },
        },
        disable_netrw = true,
        hijack_netrw = true,
        hijack_cursor = true,
        hijack_unnamed_buffer_when_opening = false,
        sync_root_with_cwd = true,
        update_focused_file = {
          enable = true,
          update_root = false,
        },
        view = {
          adaptive_size = false,
          side = "left",
          width = 40,
          preserve_window_proportions = true,
        },
        --git = {
        --enable = false,
        --ignore = true,
        --},
        --filesystem_watchers = {
        --enable = true,
        --},
        actions = {
          open_file = {
            resize_window = true,
          },
        },
        renderer = {
          root_folder_label = false,
          --highlight_git = false,
          highlight_opened_files = "none",

          indent_markers = {
            enable = false,
          },

          --icons = {
          --show = {
          --file = true,
          --folder = true,
          --folder_arrow = true,
          --git = false,
          --},
          --},
        },
      }
    end,
    opts = {},
    event = "User AstroFile",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  },
  {
    "brenoprata10/nvim-highlight-colors",
    config = function() require("nvim-highlight-colors").setup { enable_tailwind = true } end,
    opts = {},
    event = "User AstroFile",
  },
  {
    "laytan/tailwind-sorter.nvim",
    config = function() require("tailwind-sorter").setup {} end,
    run = "cd formatter && npm i && npm run build",
    event = "User AstroFile",
  },
}
