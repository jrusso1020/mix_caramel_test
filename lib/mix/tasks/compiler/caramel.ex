defmodule Mix.Tasks.Compile.Caramel do
  use Mix.Task.Compiler

  def run(_args) do
    case Mix.shell().cmd("caramelc compile src/*.ml") do
      0 ->
        File.mkdir_p!(Path.dirname("gen/src/"))
        "*.erl"
        |> Path.wildcard()
        |> Enum.each(fn generated_file -> File.rename!(generated_file, "gen/src/#{Path.basename(generated_file)}") end)

        {:ok, []}
      status -> exit(status)
    end
  end
end
