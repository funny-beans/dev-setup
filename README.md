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
## SublimeText
https://www.sublimetext.com/
```
brew cask install sublime-text
```
### Git
https://git-scm.com/
```
brew install git
```
