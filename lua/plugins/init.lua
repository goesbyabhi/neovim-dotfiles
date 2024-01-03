local plugins = {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		lazy = true,
		cmd = "Telescope",
		config = function()
			require "plugins.configs.telescope"
		end,
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{
		'folke/trouble.nvim',
		event = "BufReadPre",
		config = function()
			require "plugins.configs.trouble"
		end,
	},
	{
		'nvim-treesitter/nvim-treesitter',
		build = ":TSUpdate",
		config = function()
			require "plugins.configs.treesitter"
		end,
	},
	{
		"theprimeagen/harpoon",
		lazy = true,
		config = function()
			require "plugins.configs.harpoon"
		end,
	},
	{
		"theprimeagen/refactoring.nvim",
		lazy = true,
		config = function()
			require "plugins.configs.refactoring"
		end,
	},
	{
		"mbbill/undotree",
		config = function()
			require "plugins.configs.undotree"
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context"
	},
	{
		"VonHeikemen/lsp-zero.nvim", branch = 'v1.x',
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require "plugins.configs.lsp"
		end,
		dependencies =
		{
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{
				'hrsh7th/nvim-cmp',
				--	event = "InsertEnter",
				dependencies = {
					{'hrsh7th/cmp-buffer'},
					{'hrsh7th/cmp-path'},
					{'saadparwaiz1/cmp_luasnip'},
					{'hrsh7th/cmp-nvim-lsp'},
					{'hrsh7th/cmp-nvim-lua'},
					-- Snippets
					{
						'L3MON4D3/LuaSnip',
						config = function()
							require("luasnip.loaders.from_vscode").lazy_load()
						end,
					},
					{'rafamadriz/friendly-snippets'},
				}
			},
		}
	},
	{
		"laytan/cloak.nvim", lazy = true,
		config = function()
			require("plugins.configs.cloak")
		end,
	},
	{
		'nvim-tree/nvim-tree.lua',
		dependencies = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
		config = function()
			require "plugins.configs.nvimtree"
		end,
	},
	{
		'sudormrfbin/cheatsheet.nvim',
		lazy = true,
		dependencies =
		{
			{'nvim-telescope/telescope.nvim'},
			{'nvim-lua/popup.nvim'},
			{'nvim-lua/plenary.nvim'},
		},
	},
	{
		"github/copilot.vim",
		-- event = "InsertEnter",
	},
}

local opts = {}

require("lazy").setup(plugins, opts)
