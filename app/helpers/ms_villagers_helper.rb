module MsVillagersHelper
  def fib(n, cache = {})
    return 1 if n <= 2
    cache[n] ||= fib(n-1, cache) + fib(n-2, cache)
  end

end
