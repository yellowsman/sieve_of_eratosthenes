# Sieve

Implementation of "Sieve of Eratosthenes" by Elixir.

# Usage

```elixir
iex> primes = Sieve.make(100)
iex> Sieve.is_prime?(3, primes)
true
iex> Sieve.is_prime?(8, primes)
false
```
