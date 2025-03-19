


# Used to process a list of files in a markdown file and concats them
open "4 Archives/2023-10-19 Archives/100 Resources/032 Maker/MOC_Creativity.md"  | lines | each { $in | str substring  4..-3  | append ".md" | prepend "4 Archives/2023-10-19 Archives/100 Resources/032 Maker/" |str join "" } | each { open $in}  
