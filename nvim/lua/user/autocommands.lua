vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	pattern = { "*.lua", "*.js*", "*.json", "*.ts*", "*.html" },
	callback = function()
		-- Async formatting
		vim.lsp.buf.formatting_sync()
		vim.cmd("w")
	end,
})
