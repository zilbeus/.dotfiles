# Neovim Config Improvements

## High Priority

- [ ] Move lazy plugin setup out of `after/plugin/` and into lazy.nvim specs under `lua/custom/plugins/`.
- [ ] Refactor `noice.nvim` config so `event = "VeryLazy"` actually controls loading.
- [ ] Refactor `obsidian.nvim` config so `ft = "markdown"` actually controls loading.
- [ ] Consolidate `gitsigns.nvim` setup into a single source of truth.
- [ ] Consolidate LSP setup into one architecture instead of splitting it across `after/plugin/mason.lua`, `lua/custom/plugins/init.lua`, and `lua/custom/plugins/lsp.lua`.
- [ ] Fix undefined `capabilities` usage in `after/plugin/mason.lua`.
- [ ] Replace startup-time `:MasonInstall` behavior with an explicit or managed install flow.

## Medium Priority

- [ ] Clean up `lua/zq/editor.lua` so base options are defined once with no contradictions.
- [ ] Remove duplicate option assignments like `hlsearch` and `signcolumn`.
- [ ] Standardize option declarations on one API style where possible, preferably `vim.opt`.
- [ ] Fix the `lua/zq/keymaps/lsp.lua` helper bug where `deec` is defined but `desc` is used.
- [ ] Replace `_G.set_terminal_keymaps()` in `after/plugin/toggleterm.lua` with a local callback and `nvim_create_autocmd`.
- [ ] Replace `vim.loop` usage in `init.lua` with `vim.uv`.
- [ ] Remove brittle string-based autocmd definitions in favor of Lua autocmd APIs.

## Lower Priority

- [ ] Align theme consumers like `tabby` with the active colorscheme instead of hardcoding `monochrome` palette values.
- [ ] Reduce config split between `lua/zq/**`, `lua/custom/plugins/**`, and `after/plugin/**`.
- [ ] Decide on a long-term config structure for core settings, plugin specs, and theme integrations.
- [ ] Review other lazy plugin declarations for similar eager-loading regressions.

## Suggested Execution Order

1. Move `noice`, `obsidian`, and `gitsigns` config into plugin specs.
2. Consolidate and repair the LSP setup path.
3. Clean up editor defaults and keymap helper bugs.
4. Modernize autocmds and legacy Neovim API usage.
5. Unify theme-dependent UI modules.
