`brew bundle`
`xcode-select —-install`
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
`cp .zshrc ~/`
`curl -sSL https://get.rvm.io | bash -s stable --ruby`
`echo -e "\n. $(brew --prefix asdf)/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc`
`asdf plugin add ruby`
`asdf plugin add nodejs`