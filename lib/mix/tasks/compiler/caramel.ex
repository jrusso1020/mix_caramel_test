defmodule Mix.Tasks.Compile.Caramel do
  @moduledoc """
  This module is responsible for compiling caramel code

  It looks for code in the src/ directory and then will compile all the code
  and mode it to the gen/src/ directory so it is available in your mix project.
  """
  use Mix.Task.Compiler

  def run(_args) do
    case Mix.shell().cmd("caramelc compile src/*.ml") do
      0 ->
        File.mkdir_p!(Path.dirname("gen/src/"))

        "*.erl"
        |> Path.wildcard()
        |> Enum.each(fn generated_file ->
          File.rename!(generated_file, "gen/src/#{Path.basename(generated_file)}")
        end)

        {:ok, []}

      status ->
        exit(status)
    end
  end
end
