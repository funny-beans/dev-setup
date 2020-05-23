# My Setup

## OS Setup
### General
Appearance: Dark
### Users & Groups
* Login Options -> Show fast user switching menu as "Icon"

### Trackpad
Tap to click: Checked

### Keyboard
Key Repeat: Fast
Delay Until Repeat: Short

## Terminal setup
### zsh
Switch default shell to Zsh
```
chsh -s /bin/zsh
```
### Oh My ZSH!
https://ohmyz.sh/
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### zsh-autosuggestions
https://github.com/zsh-users/zsh-autosuggestions
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions\n
```
### zsh-syntax-highlighting
https://github.com/zsh-users/zsh-syntax-highlighting
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
### z
https://github.com/agkozak/zsh-z
```
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
```
### .zshrc
See [.zhrc](.zshrc)
## brew
https://brew.sh/
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```
## iTerm2
https://www.iterm2.com/
```
brew cask install iterm2
```
* Preferences -> Profiles -> Window -> Columns: 140 & Rows: 50

## SublimeText
https://www.sublimetext.com/
```
brew cask install sublime-text
```
* Install Package (cmd+shift+p) -> "Install Package" -> ayu-mirage theme
* Preferences (cmd+,) -> 
```
{
	"color_scheme": "Packages/ayu/ayu-mirage.sublime-color-scheme",
	"font_size": 16,
	"ignored_packages":
	[
		"Vintage"
	],
	"margin": 2,
	"open_files_in_new_window": false,
	"tab_size": 2,
	"theme": "ayu-mirage.sublime-theme"
}
```
### Kdiff3
http://kdiff3.sourceforge.net/
```
brew cask install https://raw.githubusercontent.com/Homebrew/homebrew-cask/6a96e5ea44803e52a43c0c89242390f75d1581ab/Casks/kdiff3.rb
```
### Git
Set Kdiff3 as default diff and merge tool
```
git config --global --edit
```
```
[diff]
        tool = kdiff3
[difftool "kdiff3"]
        path = /usr/local/bin/kdiff3
[difftool]
        prompt = false
        keepBackup = false
        trustExitCode = false
[merge]
        tool = kdiff3
[mergetool]
        prompt = false
        keepBackup = false
        keepTemporaries = false
[mergetool "kdiff3"]
        path = /usr/local/bin/kdiff3
```
