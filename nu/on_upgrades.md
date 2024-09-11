Taken from https://www.nushell.sh/blog/2024-05-15-top-nushell-hacks.html
## keybinding

```
  {
    name: abbr
    modifier: control
    keycode: space
    mode: [emacs, vi_normal, vi_insert]
    event: [
    { send: menu name: abbr_menu }
    { edit: insertchar, value: ' '}
    ]
  }

```
## menu
```
    {
      name: abbr_menu
      only_buffer_difference: false
      marker: "👀 "
      type: {
        layout: columnar
        columns: 1
        col_width: 20
        col_padding: 2
      }
      style: {
        text: green
        selected_text: green_reverse
        description_text: yellow
      }
      source: { |buffer, position|
        scope aliases
        | where name == $buffer
        | each { |it| {value: $it.expansion }}
      }
    }

```
