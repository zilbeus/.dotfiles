require("fzf-lua").setup({
    defaults = {
        prompt = "",
        file_icons = true,
        formatter = "path.filename_first",
    },
    fzf_opts = {
        ["--margin"] = 0,
    },
    fzf_colors = {
        ["hl"] = "#8abae1",
    },
    winopts = {
        height = 0.9,
        width = 0.6,
        row = 0.5,
        border = "single",
        -- border = {
        -- 	"┏",
        -- 	"━",
        -- 	"┓",
        -- 	"┃",
        -- 	"┛",
        -- 	"━",
        -- 	"┗",
        -- 	"┃",
        -- },
        backdrop = 100,
        preview = {
            border = "single",
            vertical = "up:55%",
            layout = "vertical",
            title_pos = "left",
        },
    },
    lsp = {
        code_actions = {
            async_or_timeout = 5000,
            previewer = "codeaction_native",
        },
    },
    hls = {
        border = "FzfLuaBorder",
        preview_border = "FzfLuaBorderPreview",
    },
    keymap = {
        builtin = { true, ["<Esc>"] = "hide" },
        fzf = {
            ["alt-n"] = "preview-page-down",
            ["alt-p"] = "preview-page-up",
        },
    },
    files = {
        rg_ops = ' --files --hidden --ignore --glob "!.git" --sortr=modified',
        fzf_opts = {
            ["--scheme"] = "path",
            ["--tiebreak"] = "index",
        },
        multiprocess = true,
        actions = {
            ["ctrl-s"] = FzfLua.actions.file_split,
            ["ctrl-v"] = FzfLua.actions.file_vsplit,
            ["ctrl-t"] = FzfLua.actions.file_tabedit,
            ["alt-i"] = FzfLua.actions.toggle_ignore,
            ["alt-h"] = FzfLua.actions.toggle_hidden,
        },
    },
    grep = {
        RIPGREP_CONFIG_PATH = vim.env.RIPGREP_CONFIG_PATH,
        resume = true,
        multiline = 2,
        winopts = {
            preview = {
                border = "single",
                vertical = "up:45%",
                layout = "vertical",
                title_pos = "left",
            },
        },
        fzf_colors = {
            ["hl"] = "#8abae1",
        },
        actions = {
            ["ctrl-q"] = { fn = require("fzf-lua").actions.file_sel_to_qf, prefix = "select-all" },
        },
    },
})

require("fzf-lua").register_ui_select({
    winopts = {
        height = 0.3,
        width = 0.4,
        row = 0.5,
        col = 0.5,
    },
    fzf_opts = {
        ["--layout"] = "reverse-list",
        ["--info"] = "hidden",
    },
})
