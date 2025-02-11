return {
  'goolord/alpha-nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'nvim-lua/plenary.nvim',
  },
  lazy = false,
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.header.val = {
      [[                        If                           ]],
      [[ If you can keep your head when all about you        ]],
      [[     Are losing theirs and blaming it on you,        ]],
      [[ If you can trust yourself when all men doubt you,   ]],
      [[     But make allowance for their doubting too;      ]],
      [[ If you can wait and not be tired by waiting,        ]],
      [[     Or being lied about, don’t deal in lies,        ]],
      [[ Or being hated, don’t give way to hating,           ]],
      [[     And yet don’t look too good, nor talk too wise: ]],
      [[ ]],
      [[ If you can dream—and not make dreams your master;   ]],
      [[     If you can think—and not make thoughts your aim;]],
      [[ If you can meet with Triumph and Disaster           ]],
      [[     And treat those two impostors just the same;    ]],
      [[ If you can bear to hear the truth you’ve spoken     ]],
      [[     Twisted by knaves to make a trap for fools,     ]],
      [[ Or watch the things you gave your life to, broken,  ]],
      [[     And stoop and build ’em up with worn-out tools: ]],
      [[ ]],
      [[ If you can make one heap of all your winnings       ]],
      [[     And risk it on one turn of pitch-and-toss,      ]],
      [[ And lose, and start again at your beginnings        ]],
      [[     And never breathe a word about your loss;       ]],
      [[ If you can force your heart and nerve and sinew     ]],
      [[     To serve your turn long after they are gone,    ]],
      [[ And so hold on when there is nothing in you         ]],
      [[     Except the Will which says to them: ‘Hold on!’  ]],
      [[ ]],
      [[ If you can talk with crowds and keep your virtue,   ]],
      [[     Or walk with Kings—nor lose the common touch,   ]],
      [[ If neither foes nor loving friends can hurt you,    ]],
      [[     If all men count with you, but none too much;   ]],
      [[ If you can fill the unforgiving minute              ]],
      [[     With sixty seconds’ worth of distance run,      ]],
      [[ Yours is the Earth and everything that’s in it,     ]],
      [[     And—which is more—you’ll be a Man, my son!      ]],
      [[                                   - Rudyard Kipling ]],

      -- [[ 私が来た ]],
      -- -- [[ I must not fear. Fear is the mind-killer. ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣿⣮⣻⣿⣿⣿⣿⣿⣿⣽⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⡿⣿⣿⣿⡿⣽⣿⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⢿⣿⣿⣿⣻⣿⣿⣹⣿⣿⡟⣿⣿⣿⣿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣏⣿⣿⣿⣯⣿⣿⣿⣿⣿⣽⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣻⠿⣿⣿⡿⠿⠿⣽⣻⣿⣿⣿⣿⢿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⢟⣿⣿⣿⣫⣿⠋⠀⢀⠀⠀⡀⠙⢾⣿⣿⡿⣿⣵⣳⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⢿⣾⣷⣿⣻⣿⠇⠀⣠⠡⢴⣾⠿⢨⣈⣟⠟⠩⢿⣿⡿⣾⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⠝⢊⣨⡿⠀⠰⣻⣿⣾⣿⣾⣿⡏⢸⣽⡄⠈⣻⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡼⣿⠟⠁⠰⣾⣿⠛⠒⠚⠒⢺⣟⠂⢻⣿⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣅⠀⠀⠀⠈⠙⠳⠴⠿⠔⠋⠀⠀⠀⣓⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⣤⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠁⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⢀⣬⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣇⠀⠀⠀⣀⡀⠀⠀⢸⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣺⠆⠀⠀⠻⡿⠗⠁⢸⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣿⠏⠀⠀⠀⠀⠀⠀⠀⠘⣿⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣹⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⣤⠠⠀⠀⠀⠘⠏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣀⠀⠀⠀⠀⠀⢨⣿⡄⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣿⣤⣿⣿⣿⣟⣿⣿⣧⣿⣷⣄⢀⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
      -- [[ ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠯⠿⠿⢿⣿⣾⣿⣿⣿⣿⢹⣿⣟⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿ ]],
    }

    dashboard.section.buttons.val = {
      dashboard.button('n', '  New File', '<cmd>ene<CR>'),
      dashboard.button('\\', '  File Directory', ':Neotree reveal<CR>'),
      dashboard.button('f', '  Search Files', '<cmd>Telescope find_files<CR>'),
      dashboard.button('q', '  Quit', ':qa<cr>'),
    }

    -- Set footer
    local footer = [[
      
      I must not fear. Fear is the mind-killer. Fear is the little-death that brings total obliteration.
      I will face my fear. I will permit it to pass over me and through me. And when it has gone past
      I will turn the inner eye to see its path. Where the fear has gone there will be nothing.
      Only I will remain.
    ]]

    dashboard.section.footer.val = footer
    dashboard.section.footer.type = 'text'
    dashboard.section.footer.opts = {
      position = 'center',
      hl = 'Number',
    }

    -- Keymaps
    -- vim.keymap.set('n', '<leader>a', ':Alpha<CR>', { desc = 'Goto Greeter Screen' })

    alpha.setup(dashboard.config)

    vim.api.nvim_create_autocmd('User', {
      once = true,
      pattern = 'LazyVimStarted',
      callback = function()
        -- Get the current date and time

        -- Get the current hour
        local current_hour = tonumber(os.date '%H')

        -- Define the greeting variable
        local greeting

        if current_hour < 5 then
          greeting = '    おやすみ!'
        elseif current_hour < 12 then
          greeting = '  󰼰 おはよう!'
        elseif current_hour < 17 then
          greeting = '  󰖨 こんにちは!'
        elseif current_hour < 20 then
          greeting = '  󰖝  こんばんは!'
        else
          greeting = '  󰖔  おやすみ!'
        end

        dashboard.section.footer.val = greeting

        pcall(vim.cmd.AlphaRedraw)
      end,
    })
  end,
}
