
# module completions {
#   def commands [] {
#     [console "k8s shell"]
#   }

#   def flags [context: string] {
#     let last = context | split words

#     if($last == "--service") {
#        ls ~/Documents/code/jobandtalent/terraform-services/ | get name | each { $in | split row "/" | last} | sort
#     } else {
#       []
#     }
#   }
#   export extern "kitt" [
#     command?: string@commands
#     flags?: string@flags # the branch / refspec
#   ]
# }

const preset_loc = "~/.kitt/presets"

def services [] {
  ["staging" "production"] | each {|| ls -D $"~/Documents/code/jobandtalent/terraform-services/**/($in)"} | flatten  | get name | each { $in | split row "/" | last 2 | first}  | uniq
}

def presets [ ] {
  open $preset_loc | keys
}

def commands [ ] {
  ["rails console", "/bin/sh"]
}

# runs `kitt k8s` command to connect to a service
# workforce and transactions have snippet loader code attached
export def k [
  service: string@services # The service to connect to
  --production (-p): bool # Connect to production
  --memory (-m): bool # Create pod with high memory limits
   ...commands: string@commands # Commands to run defaults to rails console
  ] {
  let command = ($commands | default  rails console | str join " ")
  mut extra = ""
  mut extra2 = ""
  if ( $service == "transactions") {
    $extra =  "--copy /Users/filipecorreia/Documents/code/jobandtalent/black-ops-support-snippets/ignored/code.rb"
    $extra2 =  "-- -r /tmp/code.rb"
    }
  # if ( $service == "workforce") {
  #   $extra =  "--copy /Users/filipecorreia/Documents/code/jobandtalent/black-ops-support-snippets/ignored/workforce.rb"
  #   $extra2 =  "-- -r /tmp/workforce.rb"
  # }

  let ex = $"JT_DISABLE_READONLY_DB_PROTECTION=true kitt k8s shell --service ($service) ($extra) -e (if $production {"p"} else  {"s"}) (if $memory { '--memory-limit 8192' }) ($command) ($extra2)"
  print $ex
  nu -c $ex
}

export alias kukcorrectionsp = kitt k8s shell  -e p --service uk-corrections-api --deployment http-internal -- rails console
export alias kukcorrections = kitt k8s shell  --service uk-corrections-api --deployment http-internal -- rails console

export alias kuktransactions = kitt k8s shell  --service transactions --deployment http -- rails console
export alias kukworkforceP = JT_DISABLE_READONLY_DB_PROTECTION=false kitt k8s shell  --service workforce --deployment http -e p -- rails console

export alias kuktransactions = DISABLE_JT_DISABLE_READONLY_DB_PROTECTION=true kitt k8s shell  --service transactions --deployment http -- rails console