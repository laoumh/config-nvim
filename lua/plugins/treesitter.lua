-- Highlight, edit, and navigate code
--
-- There are additional nvim-treesitter modules that you can use to interact
-- with nvim-treesitter. You should go explore a few and see what interests you:
--
--    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
--    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects 
--
-- NOTE: ver comando `:InspectTree`
return {
  {
    'nvim-treesitter/nvim-treesitter',
    name = 'nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs', -- Sets main module to use for opts
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    opts = {
      ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' },
      -- Autoinstall languages that are not installed
      auto_install = false,
      highlight = {
        enable = true,
        disable = {"latex"},
        -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
        --  If you are experiencing weird indenting issues, add the language to
        --  the list of additional_vim_regex_highlighting and disabled languages for indent.
        additional_vim_regex_highlighting = { 'ruby' },
      },
      indent = { enable = true, disable = { 'ruby', 'html', 'htmldjango' } },
    },
  },
  {
    -- Mostra contexto (ex: função ou bloco de código no topo)
    -- Comandos disponíveis: TSContextEnable, TSContextDisable and TSContextToggle.
    'nvim-treesitter/nvim-treesitter-context',
    dependencies = {'nvim-treesitter'},
    opts = {
      enable = false,
      max_lines = 10,
      mode = 'topline',
      -- mode = 'cursor',
    },
  },
}
