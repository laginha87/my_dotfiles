source ./env_config.nu
source ./path.nu
source ./lazygit.nu
source ./local.nu


export use ./git.nu *
export use ./apps.nu *
export use ./aliases/zellij.nu *
export use ./jt_ffs.nu *
export use ./kitt.nu *
export use ./fun.nu *
export use ./cab.nu *
export use ./kitty.nu *

export use ./cheat_search.nu *
use ../nu_scripts/custom-completions/zellij/zellij-completions.nu *
use ../nu_scripts/custom-completions/git/git-completions.nu *
use ../nu_scripts/custom-completions/npm/npm-completions.nu *
use ../nu_scripts/custom-completions/just/just-completions.nu *
use ../nu_scripts/custom-completions/cargo/cargo-completions.nu *

zoxide init nushell --hook pwd | save -f ~/.zoxide.nu
source ~/.zoxide.nu
source './image.nu'
