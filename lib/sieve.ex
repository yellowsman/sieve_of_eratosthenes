defmodule Sieve do
  @moduledoc """
  Documentation for `Sieve`.
  """

  @doc """
  """
  def is_prime?(0, _primes) do
    raise ArgumentError, message: "invalid argument 0"
  end

  def is_prime?(number, primes) do
    elem(primes, number)
  end

  def make(size) do
    Tuple.duplicate(true, size + 1)
    |> put_elem(0, false)
    |> put_elem(1, false)
    |> screen(trunc(:math.sqrt(size)))
  end

  defp screen(tuple, limit, index \\ 2)

  defp screen(tuple, limit, index) when limit >= index do
    cond do
      elem(tuple, index) ->
        Enum.reduce(index+index..(tuple_size(tuple) - 1)//index, tuple, &Kernel.put_elem(&2, &1, false))
        |> screen(limit, index + 1)

      true ->
        screen(tuple, limit, index + 1)
    end
  end

  defp screen(tuple, _limit, _index), do: tuple
end
