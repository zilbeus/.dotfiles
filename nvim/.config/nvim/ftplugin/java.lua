local navic = require("nvim-navic")
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspaces/" .. project_name
local config = {
	on_attach = function(client, bufnr)
		if client.server_capabilities.documentSymbolProvider then
			navic.attach(client, bufnr)
		end
	end,
	cmd = {
		"java",
		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-Xmx1g",
		"-javaagent:" .. vim.fn.stdpath("data") .. "/mason/packages/jdtls/lombok.jar",
		-- "-Xbootclasspath/a:" .. vim.fn.stdpath("data") .. "/mason/packages/jdtls/lombok.jar",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",
		"-jar",
		vim.fn.glob(vim.fn.stdpath("data") .. "/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar", true),
		"-configuration",
		vim.fn.stdpath("data") .. "/mason/packages/jdtls/config_linux",
		"-data",
		workspace_dir,
	},
	root_dir = vim.fs.root(0, { ".git", "mvnw", "gradlew", "build.gradle" }),

	-- Here you can configure eclipse.jdt.ls specific settings
	-- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
	-- for a list of options
	settings = {
		java = {
			references = {
				includeDecompiledSources = true,
			},
			maven = {
				downloadSources = true,
			},
			-- project = {
			-- 	referencedLibraries = {
			-- 		"/home/zilq/projects/algs4/libs/algs4.jar",
			-- 	},
			-- },
			configuration = {
				runtimes = {
					{
						name = "JavaSE-11",
						path = "/usr/lib/jvm/java-11-openjdk",
					},
					{
						name = "JavaSE-17",
						path = "/usr/lib/jvm/java-17-openjdk-17.0.12.0.7-2.fc40.x86_64",
					},
					{
						name = "JavaSE-21",
						path = "/usr/lib/jvm/java-21-openjdk",
					},
					{
						name = "JavaSE-25",
						path = "/usr/lib/jvm/java-25-openjdk",
					},
				},
			},
		},
	},
}

local bundles = {}

local java_test_bundles = vim.split(
	vim.fn.glob(vim.fn.stdpath("data") .. "/mason/packages/java-test/extension/server/*.jar", true),
	"\n",
	{ trimempty = true }
)

local excluded = {
	"com.microsoft.java.test.runner-jar-with-dependencies.jar",
	"jacocoagent.jar",
}

local java_test_plugin_jar = nil

for _, java_test_jar in ipairs(java_test_bundles) do
	local fname = vim.fn.fnamemodify(java_test_jar, ":t")
	if vim.startswith(fname, "com.microsoft.java.test.plugin-") then
		java_test_plugin_jar = java_test_jar
	elseif not vim.tbl_contains(excluded, fname) then
		table.insert(bundles, java_test_jar)
	end
end

if java_test_plugin_jar then
	table.insert(bundles, java_test_plugin_jar)
end

local java_debug_jar = vim.fn.glob(
	vim.fn.stdpath("data")
		.. "/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar",
	true
)

if java_debug_jar ~= "" then
	table.insert(bundles, java_debug_jar)
end

config["init_options"] = {
	bundles = bundles,
}

require("jdtls").start_or_attach(config)
