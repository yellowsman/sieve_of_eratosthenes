defmodule SieveTest do
  use ExUnit.Case
  doctest Sieve

  test "1 is not prime" do
    primes = Sieve.make(10)
    assert Sieve.is_prime?(1, primes) == false
  end

  test "2 is prime" do
    primes = Sieve.make(10)
    assert Sieve.is_prime?(2, primes) == true
  end

  test "3 is prime" do
    primes = Sieve.make(10)
    assert Sieve.is_prime?(3, primes) == true
  end

  test "7 is prime" do
    primes = Sieve.make(10)
    assert Sieve.is_prime?(7, primes) == true
  end

  test "9 is not prime" do
    primes = Sieve.make(10)
    assert Sieve.is_prime?(9, primes) == false
  end

  test "there are 25 prime numbers less than 100" do
    primes = Sieve.make(100)
    assert primes |> Tuple.to_list() |> Enum.filter(&(&1)) |> Enum.count() == 25
  end
end
