defmodule Sample.Enum do
    # def first([]), do: nil
    def first(list) when length(list) == 0, do: nil
    def first([head | _]), do: head
end