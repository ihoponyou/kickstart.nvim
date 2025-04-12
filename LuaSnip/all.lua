-- Place this in ${HOME}/.config/nvim/LuaSnip/all.lua
local ls = require 'luasnip'
local t = ls.text_node
return {
  -- A snippet that expands the trigger "hi" into the string "Hello, world!".
  ls.snippet({ trig = 'hi' }, { t 'Hello, world!' }),

  -- To return multiple snippets, use one `return` statement per snippet file
  -- and return a table of Lua snippets.
  ls.snippet({ trig = 'foo' }, { t 'Another snippet.' }),
}
