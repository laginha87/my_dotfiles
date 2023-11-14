

def commands [ ] {
  ["staging"]
}

export def jt [
  command: string@commands
] {
      gco staging
      gpl
      git reset --hard origin/staging
      git merge -
  }

