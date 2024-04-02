local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
  }
}

M.cpp= {
  plugin = false,
  n = {
    ["<leader>cs"] = {
      "<cmd> ClangdSwitchSourceHeader <CR>",
      "Switch between source and header file (C++)",
    },
    ["<leader>cr"] = {
      "<cmd> ClangdAST <CR>",
      "View the AST up to current line. zc to fold nodes"
    },
    ["<leader>ci"] = {
      "<cmd> ClangdSymbolInfo <CR>",
      "View info for symbol at cursor",
    },
    ["<leader>ct"] = {
      "<cmd> ClangdTypeHierarchy <CR>",
      "View type hierarchy, gd for type def",
    },
    ["<leader>cu"] = {
      "<cmd> ClangdMemoryUsage <CR>",
      "View memory usage. zc to fold items",
    },
    ["<leader>co"] = {
      "<cmd> ClangdToggleInlayHints <CR>",
      "Toggle hints",
    },
  },
  v = {
    ["<leader>cd"] = {
      ": TSCppDefineClassFunc <CR>",
      "Generate out-of-class member functions",
    },
    ["<leader>cv"] = {
      ": TSCppMakeConcreteClass <CR>",
      "Create class implementing all pure virtual functions",
    },
    ["<leader>cz"] = {
      ": TSCppRuleOf3 <CR>",
      "Add missing Rule of 3 function declarations",
    },
    ["<leader>cx"] = {
      ": TSCppRuleOf5 <CR>",
      "Add missing Rule of 5 function declarations"
    },
  }
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "Update all crates"
    }
  }
}

M.neogen = {
  n = {
    ["<leader>gn"] = {
      function ()
        require('neogen').generate()
      end,
      "Neogen documentation"
    }
  }
}
return M
