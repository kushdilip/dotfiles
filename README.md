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


### Transition from old to new mac
- Old: 
    - [x] Get a dump of old mac Brewfile
    - [x] sync & disconnect iCloud drive
    - [x] Airdrop downloads files to new mac
    - [x] sync chrome profiles and delete 
    - [ ] workspace: cleanup stuff and transfer files to new mac
    - [x] transfer .zsh_history
- New:
    - [x] connect iCloud drive
    - [ ] 


## Tutorial & dotfiles repos followed
- https://driesvints.com/blog/getting-started-with-dotfiles/
- https://github.com/driesvints/dotfiles/blob/main/fresh.sh
- https://github.com/mathiasbynens/dotfiles
