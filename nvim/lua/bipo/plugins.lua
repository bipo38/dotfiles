return {
	{
		"neoclide/coc.nvim",
		branch = 'release'
	},
	-- Treesitter will highlight the code in a better way than vim.
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate"
	},
	{
		'sainnhe/gruvbox-material'
	},
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.3',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		"nvim-tree/nvim-web-devicons",
	},
	{
		'jeff-dh/expJABS.nvim',
		branch = 'expJABS',
		config = function()
			require 'jabs'.setup {
				keymap = {
					close = "q", -- Close buffer. Default D
					jump = "l", -- Jump to buffer. Default <cr>
					h_split = "h", -- Horizontally split buffer. Default s
					v_split = "v", -- Vertically split buffer. Default v
					preview = "p", -- Open buffer preview. Default P
				},
			}
		end
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		}
	},
	{ 'github/copilot.vim' },
	{
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup({
				pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
			})
		end,
		dependencies = {
			'JoosepAlviste/nvim-ts-context-commentstring',
			-- Allows commenting in multiple languages in the same file (e.g. HTML and JS in a .vue file)
		},
	},


	{ 'voldikss/vim-floaterm' },
}
