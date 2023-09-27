
def schemaPath  [] { $"($env.CABINET)/Schemas" };

def schemas [] {
  ls $"($env.CABINET)/Schemas"  | get name | each { basename $in  |  split row "." | first}
}

export def cabinet [ schema: string@schemas] {
  print $"(schemaPath)/($schema).note-schema.yaml"
  open $"(schemaPath)/($schema).note-schema.yaml" | table --expand
}