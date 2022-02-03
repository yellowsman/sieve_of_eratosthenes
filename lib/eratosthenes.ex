defmodule Eratosthenes do
  @moduledoc """
  Documentation for `Eratosthenes`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Eratosthenes.hello()
      :world

  """
  defmodule Eratosthenes do
    def is_prime?(number, primes) do
      elem(primes, number)
    end

    def make(size) do
      sieve(Tuple.duplicate(true, size + 1), trunc(:math.sqrt(size)))
    end

    defp sieve(tuple, limit, index \\ 2)
    defp sieve(tuple, limit, index) when limit >= index do
      cond do
        elem(tuple, index) ->
          Enum.reduce(index..tuple_size(tuple)//index, tuple, &Kernel.put_elem(&2, &1, false))
          |> sieve(limit, index + 1)

        true ->
          sieve(tuple, limit, index + 1)
      end
    end

    defp sieve(tuple, _limit, _index), do: tuple
  end
end
