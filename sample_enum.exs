defmodule Sample.Enum do
    # def first([]), do: nil
    # def first(list) when length(list) == 0, do: nil
    # def first([head | _]), do: head

    def first(list, val \\ nil)
    def first([head | _], _), do: head
    def first([], val), do: val

    def add(list, val \\ 0) do
        trace(val)
        [val | list]
    end

    def map([], _), do: []
    def map([hd | tl], f) do
        [f.(hd) | map(tl, f)]
    end

    def reverse(l), do: reverse(l, [])
    def reverse([], reversed), do: reversed
    def reverse([head | tail], reversed),
        do: reverse(tail, [head | reversed])

    def map2([head | tail], f), 
        do: map2(tail, f, [f.(head)])
    def map2([], _, result), 
         do: reverse(result)
    def map2([head | tail], f, result), 
        do: map2(tail, f, [f.(head) | result])

    defp trace(string) do
        IO.puts("the value passed in was #{string}")
    end
end