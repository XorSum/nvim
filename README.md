# XorSum的NeoVim配置

## 安装

### 安装[neovim](https://github.com/neovim/neovim) 

下载neovim的二进制文件，并添加进PATH中

### 安装插件管理器 [packer](https://github.com/wbthomason/packer.nvim)

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### clone本配置

```
cd ~/.config
git clone git@github.com:XorSum/nvim.git
```

### 安装插件

```
nvim
:PackerSync
```

## Roadmap

- [x] organization

- [x] baisc

- [x] plugin manager

- [x] theme

- [x] hotkey mapping

- [x] file explorer

- [x] buffer line

- [x] status line

- [x] startify

- [x] searching

- [ ] session/cache

- [ ] language server ptotocol

- [ ] auto complete


### Acknowledgments

* [NeoVIm Lua Guide](https://neovim.io/doc/user/lua-guide.html#lua-guide)

* [学习 Neovim 全 lua 配置](https://zhuanlan.zhihu.com/p/571617696)

* [How do you decide keybindings to use for things?](https://www.reddit.com/r/neovim/comments/sng5jy/how_do_you_decide_keybindings_to_use_for_things/)

* [which-key.nvim mappings](https://gist.github.com/JSchrtke/cabd3e42a6920ef1f0835bd7ae286aad)

* [从零开始配置 Neovim](https://martinlwx.github.io/zh-cn/config-neovim-from-scratch/)

* [NeoVim LSP Doc](https://neovim.io/doc/user/lsp.html)

* [LSP list](https://microsoft.github.io/language-server-protocol/implementors/servers/)



