local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep

ls.add_snippets("all", {
  s("lg", {
    t('console.log('), i(1), t(', " :: '), rep(1), t('")')
  }),
  s("lgs", {
    t('console.log("===== '), i(1), t(' =====")'),
  })
})


