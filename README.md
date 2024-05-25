## Installation Notes
- `brew bundle dump --describe`
    - Creates `Brewfile` containing install command for all brew packages 
- 

## New Office Mac Setup
# Copy stuff from old mac using airdrop/icloud/onedrive
- .zsh_history

### Apps installed
- Magnet
- VSCode
- Slack

### Manual Setup
- Finger print enrollment
- Okta browser login - through okra verify

### Engg tools setup
- `sudo jamf policy -event phoenix`

### Install Brew
- Using command from [https://brew.sh/](https://brew.sh/)
```/bin/bash -c "$(curl -fsSL [https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh](https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh))”```

### Then supply brewfile location
`brew bundle --file ~/.dotfiles/Brewfile`

### Or move to dotfiles
`cd ~/.dotfiles && brew bundle`

