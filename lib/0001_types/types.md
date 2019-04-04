# Types in Elixir

Elixir has several types.

The types are as follows:

1. atom - an atom starts with a : and comes from Erlang, the language that Elixir was built on top of. It is a constant whose name is its own value. Can also be called a symbol.
  * `:hello`
  * `:ok`
  * `:example`

1. string - a string is wrapped in quotes. They can be either one line or multiline.
  * `"hello"`
  * 
  ```
  """
  This is
  a multiline
  string.
  """
  ```

1. integer - an integer is any number that has no decimal.
  * `1`
  * `1234567`
  * `-50283`

1. float - a float is any number that has a decimal.
  * `1.0`
  * `1234567.12345`
  * `-50283.912`

1. boolean - a boolean is either `true` or `false`.
  * `true`
  * `false`

1. List - a list can contain any other kind of type (they don't have to be the same type) and is wrapped in `[` `]`.
  * `[1, 2, 3]`
  * `[:hello, 2.0, false]`
  * `[{:ok, 1}, 5]`

1. Tuple - a tuple is a grouping of other types and is wrapped in `{` `}`.
  * `{:ok, true}`
  * `{1, "two", :three, 4.0}

1. Map - a map takes two types as a key value pair. The key must be either a string or atom. This means that a map can be created a couple different ways. It is wrapped in `%{` and `}`
  * `%{test: 1}` - most common
  * `%{"key with spaces": true}`
  * `%{"key with spaces" => [1, 2, 3]}`
  * `%{:atom => 1}`

1. Struct - a struct is a map that has defined parameters. They are typically defined in a module using `defstruct`. They give you the ability to know what keys to expect in a map.
  * %User{first_name: "Billie", last_name: "Jean", gender: :female, my_lover: false}
  * %Book{title: "Great Expectations", author: "Charles Dickens", pages: 544}
