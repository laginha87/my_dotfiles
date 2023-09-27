# Search aliases for a command that includes the passed in string
export def alias-search [
  str: string # string to search for
] {
  scope aliases | where { $in.expansion | str contains $str } | select name expansion
}