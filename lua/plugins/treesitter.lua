return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { 
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"elixir",
				"heex",
				"javascript",
				"html",
				"css",
                "bash",
                "c_sharp",
                "cpp",
                "go",
                "javascript",
                "latex",
                "make",
                "php",
                "python",
                "rust",
                "sql",
                "xml",
                "yaml",
                "zig"
			},
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
 }
