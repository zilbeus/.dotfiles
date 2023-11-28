local efmls = require "efmls-configs"

local languages = require('efmls-configs.defaults').languages()
languages = vim.tbl_extend('force', languages, {
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
})
