defmodule Sample.Calendar do
    def day_abbreviation2(day) do
        cond do
            day == :Monday -> "M"
            day == :Tuesday -> "Tu"
            day == :Wednesday -> "W"
            day == :Thursday -> "Th"
            day == :Friday -> "F"
            day == :Saturday -> "Sa"
            day == :Sunday -> "Su"
            true -> "Invalid Day"
        end
    end

    def day_abbreviation3(:Monday), do: "M"
    def day_abbreviation3(:Tuesday), do: "Tu"
    def day_abbreviation3(:Wednesday), do: "W"
    def day_abbreviation3(:Thursday), do: "Th"
    def day_abbreviation3(:Friday), do: "F"
    def day_abbreviation3(:Saturday), do: "S"
    def day_abbreviation3(:Sunday), do: "Su"
    def day_abbreviation3(_), do: "Invalid day!!!!"
end