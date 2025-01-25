return {
	"nvim-neo-tree/neo-tree.nvim",
	cmd = "Neotree",
	position = "right",
	opts = {
		window = {
			position = "right"
		},
		sources = {
			"filesystem",
			"buffers",
			"git_status"
		},
		enable_git_status = true,
		source_selector = {
			winbar = true,
			statusline = true,
			sources = {
				{ source = "filesystem" },
				{ source = "buffers" },
				{ source = "git_status" }
			},
		},
		event_handlers = {
			{
				event = "neo_tree_buffer_enter",
				handler = function (a)
					vim.opt_local.relativenumber = true
				end,
			},
		},
	}
}
