# Modules in Elixir

Modules are where all code lives in Elixir. They are a wrapper to help package your code.

Modules are defined using `defmodule ModuleName do ... end`. Here is an example module to could be used to help do math.

```
defmodule MathHelper do

  def sum(a, b), do: a + b

  def diff(a, b), do: a - b

  def mult(a, b), do: a * b

  def divide(a, b), do: a / b

end
```

Modules can also be nested. This is typically done in conjuction with folder directory structure but doesn't have to be. Simply add each subpackage that you want.
Example: `defmodule Utils.MathHelpers.Addition`

Modules can be called by other modules. Just reference the full name of the module. For example if you wanted to use the `MathHelper` module to sum two numbers, you would call `MathHelper.sum(1, 5)`.

If it's nested, you can call it like `Utils.MathHelpers.Addition.sum(1, 5)`. You can also alias a module at the top of your module so that you can call it in a shortened manner. When you alias it, you only need the last module for the call like so:

```
defmodule NeedsMathHelp do
  alias Utils.MathHelpers.Addition

  def need_to_do_sum(a, b) do
    Addition.sum(a, b)
  end

end
```
