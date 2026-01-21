# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a LazyVim-based Neovim configuration using lazy.nvim as the plugin manager. LazyVim provides sensible defaults; customizations extend rather than replace them.

## Architecture

```
lua/
├── config/
│   ├── lazy.lua      # Plugin manager bootstrap and lazy.nvim setup
│   ├── options.lua   # Custom editor options (extends LazyVim defaults)
│   ├── keymaps.lua   # Custom key mappings (extends LazyVim defaults)
│   └── autocmds.lua  # Custom autocommands (extends LazyVim defaults)
└── plugins/
    └── *.lua         # Plugin specs - add/override/disable plugins here
```

**Entry point:** `init.lua` → requires `config.lazy` → loads LazyVim + user plugins

## Adding Plugins

Create or edit files in `lua/plugins/`. Each file returns a table of plugin specs:

```lua
return {
  -- Add a plugin
  { "user/plugin-name", opts = {} },

  -- Disable a LazyVim plugin
  { "some/plugin", enabled = false },

  -- Override LazyVim plugin config
  {
    "existing/plugin",
    opts = function(_, opts)
      -- modify opts table
      return opts
    end,
  },
}
```

## Formatting

Lua files are formatted with StyLua (2 spaces, 120 column width). Config: `stylua.toml`
