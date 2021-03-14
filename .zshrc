FPATH="${HOME}/.zfunc:${HOME}/src/github.com/ohtomi/dotfiles/zsh:${FPATH}"

autoload -Uz zshrc-base && zshrc-base
autoload -Uz zshrc-prompt && zshrc-prompt
autoload -Uz zshrc-alias && zshrc-alias

autoload -Uz zshrc-go && zshrc-go
autoload -Uz zshrc-nodejs && zshrc-nodejs
autoload -Uz zshrc-python && zshrc-python
autoload -Uz zshrc-ruby && zshrc-ruby
autoload -Uz zshrc-java && zshrc-java
autoload -Uz zshrc-haskell && zshrc-haskell
