defmodule TodoLists.CsvImporter do
  alias TodoLists.TodoCrud, as: TodoList

  def import(filepath) do
    File.stream!(filepath)
    |> Stream.map(fn line -> String.trim_trailing(line, "\n") end)
    |> Stream.map(fn line -> String.split(line, ",") end)
    |> List.update_at(0, fn date -> Date.from_iso8601!(date) end)
  end
end
