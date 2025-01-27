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
				},
			},
		},
	},

	-- Language server `initializationOptions`
	-- You need to extend the `bundles` with paths to jar files
	-- if you want to use additional eclipse.jdt.ls plugins.
	--
	-- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
	--
	-- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
	init_options = {
		bundles = {
			vim.fn.glob(
				vim.fn.stdpath("data")
					.. "/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar",
				true
			),
		},
	},
}

require("jdtls").start_or_attach(config)
