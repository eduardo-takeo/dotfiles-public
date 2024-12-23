local wezterm = require("wezterm")
local keymaps = require("lua.keymaps")
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config = {
	-- leader
	leader = { key = "a", mods = "CTRL", timeout_milliseconds = 1000 },
	-- bind remap keys
	keys = keymaps,
	default_cursor_style = "BlinkingBlock",
	automatically_reload_config = true,
	window_close_confirmation = "NeverPrompt",
	adjust_window_size_when_changing_font_size = false,
	window_decorations = "RESIZE",
	check_for_updates = false,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	enable_tab_bar = true,
	font_size = 12.5,
	font = wezterm.font("MesloLGS NF", { weight = "Bold" }),
	window_padding = {
		left = 3,
		right = 3,
		top = 15,
		bottom = 0,
	},
	background = {
		{
			source = {
				Color = "#1C2027"
			},
			width = "100%",
			height = "100%",
			opacity = 1,
		},
	},
	-- from: https://akos.ma/blog/adopting-wezterm/
	hyperlink_rules = {
		-- Matches: a URL in parens: (URL)
		{
			regex = "\\((\\w+://\\S+)\\)",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in brackets: [URL]
		{
			regex = "\\[(\\w+://\\S+)\\]",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in curly braces: {URL}
		{
			regex = "\\{(\\w+://\\S+)\\}",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in angle brackets: <URL>
		{
			regex = "<(\\w+://\\S+)>",
			format = "$1",
			highlight = 1,
		},
		-- Then handle URLs not wrapped in brackets
		{
			-- Before
			--regex = '\\b\\w+://\\S+[)/a-zA-Z0-9-]+',
			--format = '$0',
			-- After
			regex = "[^(]\\b(\\w+://\\S+[)/a-zA-Z0-9-]+)",
			format = "$1",
			highlight = 1,
		},
		-- implicit mailto link
		{
			regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
			format = "mailto:$0",
		},
	},
}

return config
