defmodule Math do
  defmacro say({:+, _, [lhs, rhs]}) do
    IO.puts "lhs is #{inspect lhs}"
    IO.puts "rhs is #{inspect rhs}"
    quote do
      lhs = unquote(lhs)
      rhs = unquote(rhs)
      result = lhs + rhs
      IO.puts "#{lhs} plus #{rhs} is #{result}"
      result
    end
  end

  defmacro say({:*, _, [lhs, rhs]}) do
    IO.puts "lhs is #{inspect lhs}"
    IO.puts "rhs is #{inspect rhs}"
    quote do
      lhs = unquote(lhs)
      rhs = unquote(rhs)
      result = lhs * rhs
      IO.puts "#{lhs} times #{rhs} is #{result}"
      result
    end
  end
end
