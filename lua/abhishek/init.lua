require("abhishek.set")
require("abhishek.remap")

local augroup = vim.api.nvim_create_augroup
local AbhishekGroup = augroup('Abhishek', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd({"BufWritePre"}, {
    group = AbhishekGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

-- vim.g.netrw_browse_split = 0
-- vim.g.netrw_banner = 0
-- vim.g.netrw_winsize = 25
