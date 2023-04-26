# nvim配置

## 安装

### 安装[neovim](https://github.com/neovim/neovim) 

下载neovim的二进制文件，并添加进PATH中

### 安装 [vim-plug](https://github.com/junegunn/vim-plug) 

``` bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
### 安装 [packer](https://github.com/wbthomason/packer.nvim)

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```


### clone本配置 

```
cd ~/.config
git clone git@github.com:XorSum/nvim.git
```

### 下载依赖
```
proxychains nvim
:PlugInstall
```

### 配置[coc](https://github.com/neoclide/coc.nvim) 

在前面的步骤中，已经在init.vim中写了coc的依赖，并且vim-plig将它下载到了`~/.local/share/nvim/plugged/coc.nvim`中。
但是自动编译出错了，需要手动编译一下。

```
cd .local/share/nvim/plugged/coc.nvim
proxychains npm install
proxychains npm build
```

然后再次运行`nvim`就好了。

安装lsp。

https://github.com/scalameta/coc-metals

https://github.com/fannheyward/coc-rust-analyzer

```
:CocInstall coc-metals
:CocInstall coc-rust-analyzer
```

### Roadmap

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



