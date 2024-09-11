export def ztop [] {
  git rev-parse --show-toplevel | cd $in
}
