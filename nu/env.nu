source ./env_config.nu
export use ./git.nu *

export use ./kitt.nu *
export use ./cab.nu *

export use ./cheat_search.nu *

export use ./hxconfig.nu *



export-env { $env.ZELLIJ_CONFIG_DIR = $"($env.HOME)/Documents/code/my_dotfiles/zellij" }
