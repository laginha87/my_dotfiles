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

$env.PATH = ($env.PATH | split row (char esep) )

use ~/.cache/starship/init.nu


