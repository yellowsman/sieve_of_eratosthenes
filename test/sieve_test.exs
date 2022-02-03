defmodule SieveTest do
  use ExUnit.Case
  doctest Sieve

  test "7 is prime" do
    primes = Sieve.make(10)
    assert Sieve.is_prime?(7, primes) == true
  end

  test "9 is not prime" do
    primes = Sieve.make(10)
    assert Sieve.is_prime?(9, primes) == false
  end

  test "make 11 primes" do
    primes = Sieve.make(11)
    assert tuple_size(primes) == 12
  end
end
