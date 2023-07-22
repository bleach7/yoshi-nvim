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
        sort_by = "case_sensitive",
        view = { width = 40 },
        renderer = { group_empty = true },
        filters = { dotfiles = false, git_ignored = false },
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
}
