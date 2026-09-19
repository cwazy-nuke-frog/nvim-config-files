local function enable_transparency()
    vim.api.nvim_set_hl(0, "Normal", {bg="none"})
end
return {
    {
  "binarylinuxx/graphite-nvim",
  priority = 1000,  -- Load first
  config = function()
    vim.cmd.colorscheme("graphite")  -- Default grey variant
    enable_transparency()
    -- Or choose from available variants:
    -- vim.cmd.colorscheme("graphite-grey")
    -- vim.cmd.colorscheme("graphite-purple") 
    -- vim.cmd.colorscheme("graphite-pink")
    -- vim.cmd.colorscheme("graphite-red")
    -- vim.cmd.colorscheme("graphite-orange")
    -- vim.cmd.colorscheme("graphite-yellow")
    -- vim.cmd.colorscheme("graphite-green")
    -- vim.cmd.colorscheme("graphite-teal")
  end,
    },
    {
	"nvim-lualine/lualine.nvim",
	dependencies = {
	    "nvim-tree/nvim-web-devicons",
	},
	opts = {
	    theme = 'graphite',
	}
    },
}


















