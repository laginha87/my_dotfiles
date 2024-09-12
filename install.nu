def get-it [ blah: string] {
 which $blah | get path | first
}

["# vim:fileencoding=utf-8:foldmethod=marker", "include ~/Documents/code/my_dotfiles/kitty/kitty.conf", $"shell (get-it nu)", $"editor (get-it hx)"] | str join "\n" | save --force ~/.config/kitty/kitty.conf
let env_file = open $nu.config-path | lines

let final_line = "source '~/Documents/code/my_dotfiles/nu/env.nu'";

if (($env_file | where {$in | str contains $final_line} | length) == 0 ) {
  ( $env_file | append $final_line | str join "\n") | save $nu.env-path --force
}

