require("neo-tree").setup({
  close_if_last_window = true,
  open_files_do_not_replace_types = { "terminal", "trouble", "qf" },
  default_component_configs = {
    indent = {
      indent_size = 2,
      with_markers = true,
      indent_marker = "├",
      last_indent_marker = "└",
    },
  },
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
      hide_hidden = false,
    },
    follow_current_file = {
      enabled = true,
    },
  },
})
