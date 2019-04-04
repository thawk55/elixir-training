# Variables in Elixir

Elixir does variables different than other languages

The `=` sign is known as the match symbol. It will try to make the two sides match, and will throw an error if it can't.

It can be used to assign variables as follows:

1. Declaring a variable. This looks much the same as any other language.
  * `test = "hello"` will set `test` to be equal to `"hello"`

2. Pulling apart a complex type like a tuple, list, or map. Since the `=` sign matches, it will allow you to handle complex results. If you have a tuple like `{true, 123456}`, there are a couple ways you could set variables for it.
  *  `tuple = {true, 123456}` will set the variable `tuple` to be `{true, 123456}`
  *  `{is_true, number} = {true, 123456}` will set two variables `is_true` to be `true` and `number` to be `123456`
  *  `[first, second] = [1, 2]` will set `first` = 1 and `second` = 2
  *  `%{hello: test} = %{hello: 5}` will set `test` = 5

  It is important to know that an error will be thrown if it cannot be matched. For example:

  *  `{is_true} = {true, 123456}` will fail because there is only one value on the left and two on the right.
  *  `[first, second, third] = [1, 2]` will fail because the left side has 3 values and the right only has two.
  *  `%{goodbye: test} = %{hello: 5}` will fail because goodbye is not a key on the map.
