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
		_experimental_nc = '#000002',
		nc = '#000001',
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
}

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == 'light' and variants.dawn
	or variants[options.dark_variant or 'main']
