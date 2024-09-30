local options = require('mine-pine.config').options

local variants = {
	main = {
		---@deprecated for backwards compatibility
		_experimental_nc = '#000001',
		nc = '#000002',
		base = '#1d2021',
		surface = '#151114',
		overlay = '#1b161a',
		muted = '#524841',
		subtle = '#6c6153',
		text = '#c3ae89',
		love = '#b14c47',
		gold = '#b68269',
		rose = '#b68283',
		pine = '#426749',
		foam = '#75906b',
		iris = '#937372',
		highlight_low = '#161414',
		highlight_med = '#ffd3c5',
		highlight_high = '#3c3531',
		none = 'NONE',
	},
	moon = {
		---@deprecated for backwards compatibility
		_experimental_nc = '#000002',
		nc = '#000001',
		base = '#232324',
		surface = '#151114',
		overlay = '#1b161a',
		muted = '#524841',
		subtle = '#6c6153',
		text = '#c3ae89',
		love = '#b14c47',
		gold = '#b68269',
		rose = '#b3705a',
		pine = '#426749',
		foam = '#75906b',
		iris = '#937372',
		highlight_low = '#161414',
		highlight_med = '#ccbaaa',
		highlight_high = '#3c3531',
		none = 'NONE',
	},
	dawn = {
		---@deprecated for backwards compatibility
		_experimental_nc = '#000001',
		nc = '#000002',
		base = '#010101',
		surface = '#151114',
		overlay = '#1b161a',
		muted = '#524841',
		subtle = '#6c6153',
		text = '#a99a79',
		love = '#b14c47',
		gold = '#b68269',
		rose = '#b68283',
		pine = '#426749',
		foam = '#75906b',
		iris = '#937372',
		highlight_low = '#161414',
		highlight_med = '#ffd3c5',
		highlight_high = '#3c3531',
		none = 'NONE',
	},
	tmux = {
		_nc = "#16141f",
		base = "#191724",
		surface = "#1f1d2e",
		overlay = "#26233a",
		muted = "#6e6a86",
		subtle = "#908caa",
		text = "#e0def4",
		love = "#eb6f92",
		gold = "#f6c177",
		rose = "#ebbcba",
		pine = "#31748f",
		foam = "#9ccfd8",
		iris = "#c4a7e7",
		leaf = "#95b1ac",
		highlight_low = "#21202e",
		highlight_med = "#403d52",
		highlight_high = "#524f67",
		none = "NONE",
	},
}

if options.palette ~= nil and next(options.palette) then
	-- handle variant specific overrides
	for variant_name, override_palette in pairs(options.palette) do
		if variants[variant_name] then
			variants[variant_name] = vim.tbl_extend("force", variants[variant_name], override_palette or {})
		end
	end
end

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == "light" and variants.dawn or variants[options.dark_variant or "main"]
