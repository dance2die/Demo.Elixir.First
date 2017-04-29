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

    defp trace(string) do
        IO.puts("the value passed in was #{string}")
    end
end