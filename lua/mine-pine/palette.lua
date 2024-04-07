local options = require('mine-pine.config').options

local variants = {
	main = {
		---@deprecated for backwards compatibility
		_experimental_nc = '#000002',
		nc = '#000001',
		base = '#1d2021',
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
		highlight_med = '#ccbaaa',
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
		text = '#a99a79',
		love = '#b14c47',
		gold = '#b68269',
		rose = '#b97a43',
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
		_experimental_nc = '#f8f0e7',
		nc = '#f8f0e7',
		base = '#faf4ed',
		surface = '#fffaf3',
		overlay = '#f2e9e1',
		muted = '#9893a5',
		subtle = '#797593',
		text = '#575279',
		love = '#b4637a',
		gold = '#ea9d34',
		rose = '#d7827e',
		pine = '#286983',
		foam = '#56949f',
		iris = '#907aa9',
		highlight_low = '#f4ede8',
		highlight_med = '#dfdad9',
		highlight_high = '#cecacd',
		none = 'NONE',
	},
}

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == 'light' and variants.dawn
	or variants[options.dark_variant or 'main']
