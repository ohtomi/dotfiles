FPATH="${HOME}/.zfunc:${HOME}/Documents/src/github.com/ohtomi/dotfiles/zsh:${FPATH}"

autoload -Uz zshrc-base && zshrc-base
autoload -Uz zshrc-prompt && zshrc-prompt
autoload -Uz zshrc-alias && zshrc-alias
