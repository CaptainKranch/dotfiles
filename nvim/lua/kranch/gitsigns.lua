require('gitsigns').setup {
	-- signs config
	current_line_blame = false, --enable to see the person that made the last change.
	current_line_blame_opts = {
		virt_text_pos = 'right_align'
	}
}
