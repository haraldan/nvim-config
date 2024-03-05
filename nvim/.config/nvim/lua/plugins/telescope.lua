return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()

    local actions = require("telescope.actions")
    local builtin = require('telescope.builtin')

    require("telescope").setup({
      -- defaults = {
      --   -- path_display = { "truncate " },
      --   mappings = {
      --     i = {
      --       ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            -- ["<C-j>"] = actions.move_selection_next, -- move to next result
            -- ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          -- },
        -- },
      -- },
    })

    require("telescope").load_extension("fzf")

    -- set keymaps
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

  end,
}
