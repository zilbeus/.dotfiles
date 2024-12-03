vim.g.db_ui_table_helpers = {
	postgresql = {
		Comments = "select table_name, column_name, col_description((table_schema||'.'||table_name)::regclass::oid, ordinal_position) as column_comment from information_schema.columns where table_name='{table}' and table_schema='{schema}'",
	},
}

vim.g.db_ui_execute_on_save = 0
vim.g.db_ui_auto_execute_table_helpers = 1

vim.g.db_ui_winwidth = 50
