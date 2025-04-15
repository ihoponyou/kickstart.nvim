return {
  'L3MON4D3/LuaSnip',
  config = function()
    local ls = require 'luasnip'
    -- i think C-y already does this, not sure where it's bound
    -- vim.keymap.set({ 'i' }, '<Tab>', function()
    --   ls.expand()
    -- end, { silent = true })

    -- C-j does this
    vim.keymap.set({ 'i', 's' }, '<C-H>', function()
      ls.jump(1)
    end, { silent = true })

    -- C-k does this
    vim.keymap.set({ 'i', 's' }, '<C-J>', function()
      ls.jump(-1)
    end, { silent = true })

    -- wtf is a choice node :100:
    vim.keymap.set({ 'i', 's' }, '<C-E>', function()
      if ls.choice_active() then
        ls.change_choice(1)
      end
    end, { silent = true })
  end,

  update_events = { 'TextChanged', 'TextChangedI' },
}
