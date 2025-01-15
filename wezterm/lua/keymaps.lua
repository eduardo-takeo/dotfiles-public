local wezterm = require("wezterm")

local keymaps = {
	-- split
	{
		mods = "LEADER",
		key = "-",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER",
		key = "=",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	-- move between panes
	{
		mods = "LEADER",
		key = "l",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		mods = "LEADER",
		key = "h",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		mods = "LEADER",
		key = "k",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		mods = "LEADER",
		key = "j",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		mods = "LEADER",
		key = "m",
		action = wezterm.action.TogglePaneZoomState,
	},
	{
		mods = "LEADER",
		key = "Space",
		action = wezterm.action.RotatePanes("Clockwise"),
	},
	-- resize
	{
		mods = "LEADER|CTRL",
		key = "h",
		action = wezterm.action.AdjustPaneSize({ "Left", 5 }),
	},
	{
		mods = "LEADER|CTRL",
		key = "l",
		action = wezterm.action.AdjustPaneSize({ "Right", 5 }),
	},
	{
		mods = "LEADER|CTRL",
		key = "k",
		action = wezterm.action.AdjustPaneSize({ "Up", 5 }),
	},
	{
		mods = "LEADER|CTRL",
		key = "j",
		action = wezterm.action.AdjustPaneSize({ "Down", 5 }),
	},
	-- show the pane selection mode, but have it swap the active and selected panes
	{
		mods = "LEADER",
		key = "x",
		action = wezterm.action.PaneSelect({
			mode = "SwapWithActive",
		}),
	},
	-- close
	{
		mods = "LEADER",
		key = "0",
		action = wezterm.action.CloseCurrentPane({ confirm = false }),
	},
	-- toggle fullscreen
	{
		mods = "CTRL|SHIFT",
		key = "Enter",
		action = wezterm.action.ToggleFullScreen,
	},
	-- clear scrollback
	{
		mods = 'CMD',
		key = 'k',
		action = wezterm.action.Multiple {
			wezterm.action.ClearScrollback 'ScrollbackAndViewport',
			wezterm.action.SendKey { key = 'L', mods = 'CTRL' },
		},
	},
}

return keymaps
