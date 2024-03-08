return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-ui-select.nvim"
  },
  config = function()

    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({}),
        },
      },
      -- defaults = {
      --   -- path_display = { "truncate " },
      --   mappings = {
      --   local actions = require("telescope.actions")
      --     i = {
      --       ["<C-k>"] = actions.move_selection_previous, -- move to prev result
      --       ["<C-j>"] = actions.move_selection_next, -- move to next result
      --       ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
      -- },
      -- },
      -- },
    })

    require("telescope").load_extension("fzf")
    require("telescope").load_extension("ui-select")

    local builtin = require('telescope.builtin')
    -- set keymaps
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

  end,
}
