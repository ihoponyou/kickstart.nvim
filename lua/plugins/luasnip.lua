local ls = require 'luasnip'
return {
  'L3MON4D3/LuaSnip',
  -- config = function()
  -- i think C-y already does this, not sure where it's bound
  -- vim.keymap.set({ 'i' }, '<Tab>', function()
  --   ls.expand()
  -- end, { silent = true })

  -- C-j does this
  -- vim.keymap.set({ 'i', 's' }, '<C-H>', function()
  --   ls.jump(1)
  -- end, { silent = true })

  -- C-k does this
  -- vim.keymap.set({ 'i', 's' }, '<C-J>', function()
  --   ls.jump(-1)
  -- end, { silent = true })
  --
  -- -- wtf is a choice node :100:
  -- vim.keymap.set({ 'i', 's' }, '<C-E>', function()
  --   if ls.choice_active() then
  --     ls.change_choice(1)
  --   end
  -- end, { silent = true })
  -- end,
  keys = {
    {
      'C-h',
      function()
        ls.jump(1)
      end,
      mode = { 'i', 's' },
    },
    {
      'C-j',
      function()
        ls.jump(-1)
      end,
      mode = { 'i', 's' },
    },
    {
      'C-e',
      function()
        if ls.choice_active() then
          ls.change_choice(1)
        end
      end,
      mode = { 'i', 's' },
    },
  },
  opts = {
    enable_autosnippets = true,
    update_events = { 'TextChanged', 'TextChangedI' },
  },
}
