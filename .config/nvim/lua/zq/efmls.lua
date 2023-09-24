local efmls = require "efmls-configs"
efmls.init {
    default_config = false,
    init_option = { documentFormatting = true },
}

efmls.setup {
    javascript = {
        linter = require 'efmls-configs.linters.eslint_d',
        formatter = require 'efmls-configs.formatters.prettier_d',
    },
    javascriptreact = {
        linter = require 'efmls-configs.linters.eslint_d',
        formatter = require 'efmls-configs.formatters.prettier_d',
    },
    typescript = {
        linter = require 'efmls-configs.linters.eslint_d',
        formatter = require 'efmls-configs.formatters.prettier_d',
    },
    typescriptreact = {
        linter = require 'efmls-configs.linters.eslint_d',
        formatter = require 'efmls-configs.formatters.prettier_d',
    },
    json = {
        formatter = require 'efmls-configs.formatters.prettier_d',
    }
}
