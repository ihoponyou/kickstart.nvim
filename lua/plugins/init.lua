return {
  require 'plugins.kickstart.vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to automatically pass options to a plugin's `setup()` function, forcing the plugin to be loaded.
  --

  -- Alternatively, use `config = function() ... end` for full control over the configuration.
  -- If you prefer to call `setup` explicitly, use:
  --    {
  --        'lewis6991/gitsigns.nvim',
  --        config = function()
  --            require('gitsigns').setup({
  --                -- Your gitsigns configuration here
  --            })
  --        end,
  --    }
  --
  -- Here is a more advanced example where we pass configuration
  -- options to `gitsigns.nvim`.
  --
  -- See `:help gitsigns` to understand what the configuration keys do
  require 'plugins.kickstart.gitsigns',

  -- NOTE: Plugins can also be configured to run Lua code when they are loaded.
  --
  -- This is often very useful to both group configuration, as well as handle
  -- lazy loading plugins that don't need to be loaded immediately at startup.
  --
  -- For example, in the following configuration, we use:
  --  event = 'VimEnter'
  --
  -- which loads which-key before all the UI elements are loaded. Events can be
  -- normal autocommands events (`:help autocmd-events`).
  --
  -- Then, because we use the `opts` key (recommended), the configuration runs
  -- after the plugin has been loaded as `require(MODULE).setup(opts)`.

  require 'plugins.kickstart.which-key', -- Useful plugin to show you pending keybinds.

  -- NOTE: Plugins can specify dependencies.
  --
  -- The dependencies are proper plugin specifications as well - anything
  -- you do for a plugin at the top level, you can do for a dependency.
  --
  -- Use the `dependencies` key to specify the dependencies of a particular plugin

  require 'plugins.kickstart.telescope', -- Fuzzy Finder (files, lsp, etc)

  -- LSP Plugins
  -- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
  -- used for completion, annotations and signatures of Neovim apis
  require 'plugins.kickstart.lazydev',

  -- Main LSP Configuration
  require 'plugins.kickstart.nvim-lspconfig',

  -- Autoformat
  require 'plugins.kickstart.conform',

  -- Autocompletion
  require 'plugins.kickstart.nvim-cmp',

  -- Highlight todo, notes, etc in comments
  require 'plugins.kickstart.todo-comments',

  -- Collection of various small independent plugins/modules
  require 'plugins.kickstart.mini',

  -- Highlight, edit, and navigate code
  require 'plugins.kickstart.treesitter',

  require 'plugins.kickstart.neo-tree',

  require 'plugins.vimtex',
  require 'plugins.theme',
  require 'plugins.rojo',
}
