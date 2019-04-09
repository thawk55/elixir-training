# Functions in Elixir

Elixir is a functional language. As such, functions are used everywhere and can be passed around as well. A function is named by both it's name and arity (number of parameters).

For example here are three functions are all look similar:
`def test_function(), do: nil`
`def test_function(param1), do: param1`
`def test_function(param1, param2), do: {param1, param2}`

They are called like so: `test_function/0`, `test_function/1`, and `test_function/2` respectively.

The last line of a function is what a function will return. So the following function returns `"last"`

```
# returns "last"
def return_last() do
  0
  :not_this
  "last"
end
```

They are not limited to only returning variables though. You can return the results of another function. So this function also returns `"last"`.

```
# returns the results of return_last/0
def return_the_func() do
  return_last()
end
```

Functions in Elixir can also match on values. You can also use guard clauses to choose which function to call.

For example, these two functions have the same signature (name and arity) but one of them will only be called if the value passed is `true`:

```
def a_func(true), do: true
def a_func(something_else), do: false
```

For functions like this order does matter. When the function is called, it will start at the top and work it's way down. The most specific function should be at the top.

You can also check types like so:

```
def num_func(number) when is_integer(number), do: true
def num_func(something_else), do: false
```

The first function will only be called if the variable passed in is an integer. So `num_func(1)` will return `true` and `num_func("a_string")` will return `false`

Default params can be set with `\\ ` followed by the value.

```
def has_default(param \\ "default"), do: param
```

This function will can either be called with a param or will use `"default"` as the default param. `has_default()` returns `"default"` whereas `has_default("test")` returns `"test"`.

