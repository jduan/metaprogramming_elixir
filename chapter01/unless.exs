defmodule ControlFlow do
  defmacro unless(expression, [do: block]) do
    IO.puts "expression: #{inspect expression}"
    IO.puts "block: #{inspect block}"
    quote do
      if !unquote(expression) do
        unquote(block)
      end
    end
  end

  defmacro logself(anything, anything2) do
    IO.puts "anything: #{inspect anything}, anything2: #{inspect anything2}"
    quote do
      unquote(anything)
    end
  end
end
