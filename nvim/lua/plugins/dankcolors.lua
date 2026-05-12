return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({
				base00 = '#141311',
				base01 = '#141311',
				base02 = '#87847d',
				base03 = '#87847d',
				base04 = '#dbd7ce',
				base05 = '#fffdf8',
				base06 = '#fffdf8',
				base07 = '#fffdf8',
				base08 = '#ffa79f',
				base09 = '#ffa79f',
				base0A = '#e5dbc2',
				base0B = '#affaa3',
				base0C = '#fff8ea',
				base0D = '#e5dbc2',
				base0E = '#fff5de',
				base0F = '#fff5de',
			})

			vim.api.nvim_set_hl(0, 'Visual', {
				bg = '#87847d',
				fg = '#fffdf8',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Statusline', {
				bg = '#e5dbc2',
				fg = '#141311',
			})
			vim.api.nvim_set_hl(0, 'LineNr', { fg = '#87847d' })
			vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#fff8ea', bold = true })

			vim.api.nvim_set_hl(0, 'Statement', {
				fg = '#fff5de',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Keyword', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Repeat', { link = 'Statement' })
			vim.api.nvim_set_hl(0, 'Conditional', { link = 'Statement' })

			vim.api.nvim_set_hl(0, 'Function', {
				fg = '#e5dbc2',
				bold = true
			})
			vim.api.nvim_set_hl(0, 'Macro', {
				fg = '#e5dbc2',
				italic = true
			})
			vim.api.nvim_set_hl(0, '@function.macro', { link = 'Macro' })

			vim.api.nvim_set_hl(0, 'Type', {
				fg = '#fff8ea',
				bold = true,
				italic = true
			})
			vim.api.nvim_set_hl(0, 'Structure', { link = 'Type' })

			vim.api.nvim_set_hl(0, 'String', {
				fg = '#affaa3',
				italic = true
			})

			vim.api.nvim_set_hl(0, 'Operator', { fg = '#dbd7ce' })
			vim.api.nvim_set_hl(0, 'Delimiter', { fg = '#dbd7ce' })
			vim.api.nvim_set_hl(0, '@punctuation.bracket', { link = 'Delimiter' })
			vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = 'Delimiter' })

			vim.api.nvim_set_hl(0, 'Comment', {
				fg = '#87847d',
				italic = true
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
