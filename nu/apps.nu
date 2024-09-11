
# Show versions of apps
export def app-versions [
] {
kitty -v
yazi -V
let nu_version = nu -v
print $"nushell ($nu_version)"
}
