local p = require('mine-pine.palette')

return {
	normal = {
		a = { bg = p.rose, fg = p.base},
		b = { bg = p.overlay, fg = p.rose },
		c = { bg = p.base, fg = p.text },
	},
	insert = {
		a = { bg = p.foam, fg = p.base},
		b = { bg = p.overlay, fg = p.foam },
		c = { bg = p.base, fg = p.text },
	},
	visual = {
		a = { bg = p.iris, fg = p.base},
		b = { bg = p.overlay, fg = p.iris },
		c = { bg = p.base, fg = p.text },
	},
	replace = {
		a = { bg = p.pine, fg = p.base},
		b = { bg = p.overlay, fg = p.pine },
		c = { bg = p.base, fg = p.text },
	},
	command = {
		a = { bg = p.love, fg = p.base},
		b = { bg = p.overlay, fg = p.love },
		c = { bg = p.base, fg = p.text },
	},
	inactive = {
		a = { bg = p.base, fg = p.muted},
		b = { bg = p.base, fg = p.muted },
		c = { bg = p.base, fg = p.muted },
	},
}
