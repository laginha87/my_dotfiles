puts "Updating xcode"
`xcode-select —-install`

puts "Running brew bundle"
`brew bundle`

puts "installing kitty"
`curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin`

puts "Install scriptkit"
`open https://www.scriptkit.com/`

puts "Config nushell"
# source '~/Documents/code/my_dotfiles/nu/config.nu'

puts "Prepping Starship"
`mkdir ~/.cache/starship`
`starship init nu | save -f ~/.cache/starship/init.nu`
