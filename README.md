## Vim environment setup
Some settings for development environment.
* .vimrc
* .tmux.conf
* .gitconfig
* bin -
  * gwnt
  * jswnt
  * pywnt
* .jshintrc
* .eslintrc
* script -
  * clean.sh
  * init.sh
  * deploy.sh

### .vimrc
Basic vim config.

### How to Start?

#### 1. Clone source code to local.

```shell
git clone https://github.com/bbcyyb/vimsettings.git
```

#### 2. Run shell file as following

```shell
$ sudo ./clean.sh
$ sudo ./init.sh
$ sudo ./deploy.sh
```

#### 3. Start Vim and install plugin

```vim
:PluginInstall
```

#### 4. Install YouCompleteMe Plugin

#### 5. Install lint for each language

# ==================================================

## ~~How to suport Go in YouCompleteMe?~~

### ~~1. Make sure add two plugin nsf/gocode and Manishearth/godef into .vimrc~~

### ~~2. Install Go and add it to your path.~~

### ~~3. Navigate to `YouCompleteMe/third_party/ycmd/third_party/gocode` and run `go build`.~~

### ~~4. Navigate to `YouCompleteMe/third_party/ycmd/third_party/godef` and run `go build`.~~

## Use proxy to jump out China Great Wall

```shell
export GOPROXY=https://goproxy.io
export GO111MODULE=on
```

## .tmux.conf
Basic tmux config, need add below code into **.bashrc** before using tmux.
```sh 
export EDITOR='vim' 
alias tmux='tmux -2'
```

## .gitconfig
Basic git config.

## gwntj
Alias for search tools which use grep command on linux. Need add below code into **.bashrc** before using gwntj.
`
export PATH=$PATH:/home/kevin/bin
`

## .jshintrc
jshint config, used by RrackHD project.

## .eslintrc
eslint config, need to config this if you want to use react.

---
---

### How to set up Vim for [React.js](https://reactjs.org)

[React.js](https://reactjs.org) is gaining a lot of traction lately, but developing with its inline-XML-in-JS requires a few tweaks to Vim for a smooth experience.

#### Syntax highlighting
To get the syntax highlighting to look right, use mxw's [Vim JSX highlighting](https://github.com/mxw/vim-jsx).

If you use Vundle, add:
```php
Plugin 'mxw/vim-jsx'
```
Other plugin loaders, see the GitHub page.

If you use JSX syntax in .js files, which is now becoming standard, add:
```php
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
```
to your vimrc.
#### Syntax checking
If you use Syntastic, you'll notice immediate errors wherever XML nodes appear, which is to be expected. Here's a work around.

**Update 3/30/15: I've added instructions on using ESLint instead of the old wrapper package.**

Install eslint, babel-eslint (for ES6 support), and [eslint-plugin-react](https://github.com/yannickcr/eslint-plugin-react):
```sh
npm install -g eslint
npm install -g babel-eslint
npm install -g eslint-plugin-react
```
Create a config like this in your project's `.eslintrc`, or do so globally by placing it in `~/.eslintrc`:
```json
{
    "parser": "babel-eslint",
    "env": {
        "browser": true,
        "node": true
    },
    "settings": {
        "ecmascript": 6,
        "jsx": true
    },
    "plugins": [
        "react"
    ],
    "rules": {
        "strict": 0,
        "quotes": 0,
        "no-unused-vars": 0,
        "camelcase": 0,
        "no-underscore-dangle": 0
    }
}
```
Finally, configure Syntastic to use ESLint:
```php
let g:syntastic_javascript_checkers = ['eslint']
```


## Fix tmux and vim style mismatch.

After adding the line below into `.tmux.conf`

```shell
set -g default-terminal "screen-256color"
```

You still need to add the line below into `.vimrc`

```shell
set term=screen-256color
```

Finally, the alias need to be added to `.bashrc`

```shell
alias tmux='tmux -2'
```
