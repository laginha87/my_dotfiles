let pictures = ls ~/Pictures/Vicente
let randomIndex = random int 1..($pictures | length)
let picture = $pictures | get ($randomIndex - 1)
kitten icat $picture.name
