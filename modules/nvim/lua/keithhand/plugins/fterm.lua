-- fterm

return {
	"numToStr/FTerm.nvim",
	config = function()
		local fterm = require("FTerm")
		local gitui = fterm:new({
			ft = "fterm_lazygit",
			cmd = "lazygit",
			dimensions = {
				height = 1,
				width = 1,
			},
		})
		vim.keymap.set("n", "<leader>g", function()
			gitui:toggle()
		end, { desc = "Open Lazy[g]it" })
	end,
}