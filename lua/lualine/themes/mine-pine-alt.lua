local p = require('mine-pine.palette')

return {
	normal = {
		a = { bg = p.surface, fg = p.rose},
		b = { bg = p.surface, fg = p.text },
		c = { bg = p.surface, fg = p.subtle},
	},
	insert = {
		a = { bg = p.surface, fg = p.foam},
	},
	visual = {
		a = { bg = p.surface, fg = p.iris},
	},
	replace = {
		a = { bg = p.surface, fg = p.pine},
	},
	command = {
		a = { bg = p.surface, fg = p.love},
	},
	inactive = {
		a = { bg = p.base, fg = p.subtle},
		b = { bg = p.base, fg = p.subtle },
		c = { bg = p.base, fg = p.subtle},
	},
}
