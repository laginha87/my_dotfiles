$env.NU_LIB_DIRS = [
    # ($nu.default-config-dir | path join 'scripts') # add <nushell-config-dir>/scripts
    ($env.HOME | path join Documents code my_dotfiles nu)
]

# Directories to search for plugin binaries when calling register
$env.NU_PLUGIN_DIRS = [
    ($nu.default-config-dir | path join 'plugins') # add <nushell-config-dir>/plugins
]

# To add entries to PATH (on Windows you might use Path), you can use the following pattern:
# $env.PATH = ($env.PATH | split row (char esep) | prepend '/some/path')


$env.CABINET = '/Users/filipecorreia/Documents/NewCabinet'


$env.GIT_MERGE_AUTOEDIT = 'no'
#
# $env.PATH = ($env.PATH | split row (char esep) | prepend  [/opt/homebrew/opt/openssl@3/bin, /Users/filipecorreia/.rbenv/shims, /Users/filipecorreia/.nvm/versions/node/v18.12.1/bin, /opt/homebrew/opt/openssl@3/bin, /opt/completion, /usr/local/opt/llvm/bin, /opt/homebrew/bin, /opt/homebrew/sbin, /usr/local/bin, /usr/bin, /bin, /usr/sbin, /sbin, /Library/Apple/usr/bin, /Library/Frameworks/Mono.framework/Versions/Current/Commands, /Users/filipecorreia/.cargo/bin, /Users/filipecorreia/Library/Application Support/JetBrains/Toolbox/scripts, /Users/filipecorreia/Documents/code/jobandtalent/devkit/bin, /Users/filipecorreia/Documents/code/jobandtalent/devcloud/bin, /Users/filipecorreia/Library/Application Support/itch/apps/butler, /usr/local/bin, /usr/local/sbin, /usr/bin, /bin, /usr/sbin, /sbin, /usr/local/bin, /usr/texbin, /Library/Frameworks/Mono.framework/Versions/Current/Commands/, /usr/local/opt/bin/, /opt/bin, /Users/filipecorreia/.rvm/bin, /opt/homebrew/opt/fzf/bin] | uniq)

use ~/.cache/starship/init.nu


