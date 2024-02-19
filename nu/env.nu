source ./env_config.nu
source ./path.nu
source ./local.nu
source ./bins.nu


export use ./git.nu *
export use ./aliases/zellij.nu *
export use ./jt_ffs.nu *
export use ./kitt.nu *
export use ./cab.nu *

export use ./cheat_search.nu *
use ../nu_scripts/custom-completions/zellij/zellij-completions.nu *
use ../nu_scripts/custom-completions/git/git-completions.nu *
use ../nu_scripts/custom-completions/npm/npm-completions.nu *
use ../nu_scripts/custom-completions/just/just-completions.nu *
use ../nu_scripts/custom-completions/cargo/cargo-completions.nu *

# zoxide init nushell | save -f ~/.zoxide.nu
source './image.nu'
