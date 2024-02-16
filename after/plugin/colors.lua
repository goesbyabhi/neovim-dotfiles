function ApplyTheme(color)
	-- color = "habamax"
	color = "nord"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.cmd("hi LineNr guifg=#add2f7")
end
ApplyTheme()
