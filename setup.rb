puts "Updating xcode"
`xcode-select —-install`

puts "Running brew bundle"
`brew bundle`

puts "installing kitty"
`curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin`

puts "Install scriptkit"
`open https://www.scriptkit.com/`
