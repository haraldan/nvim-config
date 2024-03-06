return{
  -- {
  --      "catppuccin/nvim",
  --      name = "catpuccin",
  --      lazy = false,
  --      priority = 1000,
  -- },
  -- {
  -- 	"bluz71/vim-nightfly-colors",
  -- 	lazy = false,
  -- 	priority = 1000,
  -- },
  -- {
  --     "ellisonleao/gruvbox.nvim",
  -- 	lazy = false,
  -- 	priority = 1000,
  -- -- 	config = function()
  -- --  vim.o.background = "dark" -- or "light" for light mode
  -- --  vim.cmd([[colorscheme gruvbox]])
  -- --  end
  --
  -- -- },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd[[colorscheme tokyonight-night]]
    end
  }
}


