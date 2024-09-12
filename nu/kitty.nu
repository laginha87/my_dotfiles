export def upgrade-kitty [] {
  curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
}


export-env {
  $env.config = ($env.config | upsert hooks.env_change.PWD [
        {|before, after| 
        kitten @ set-tab-title ($after | path basename) 
        }
      ]
    
  )

}

