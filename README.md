# prettier-number-line.nvim
little plugin to make neovim number line prettier.(Maybe?)
**Requires neovim 0.5.0+**

## Install
* packer.nvim
```lua
use({
    "PangPangPangPangPang/prettier-number-line.nvim",
    config = function ()
        -- current or virtual
        require('prettier-number-line').setup({mode = 'virtual'})
    end
})

```

## Config
```lua
M.defaultConfig = {
	mode = "virtual",
	virt_text_pos = "eol", -- :h nvim_buf_set_extmark
	virt_icon = "﬌ ",
	highlight = "CursorLineNr",
	exclusive_filetype = {},
}

```

## Preview
### virtual
![preview](https://p16.topbuzzcdn.com/origin/tos-alisg-i-0000/61b228f87fec4cc28578e1be8dcdb233)
### current
![preview](https://p16.topbuzzcdn.com/origin/tos-alisg-i-0000/026e6456f44b4b1893f647bacfb94195)
