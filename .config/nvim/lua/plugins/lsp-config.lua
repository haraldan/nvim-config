return {
	{
		"williamboman/mason.nvim",
		config = true,
		lazy = false,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")

			lspconfig.clangd.setup({
				capabilities = capabilities,
				-- cmd = {"clangd-12", '--query-driver=/opt/arm-gnu-toolchain-13_2/bin/arm-none-eabi-gcc', "--pretty", "--clang-tidy"},
				-- cmd = {"clangd-12", '--query-driver=/usr/bin/arm-none-eabi-gcc'},
				cmd = {
					"clangd",
					"--query-driver=/home/ds/.local/bin/arm-gnu-toolchain-13.2.Rel1-x86_64-arm-none-eabi/bin/*gcc",
					"--clang-tidy",
				},
				single_file_support = false,
			})
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
