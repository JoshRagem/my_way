defmodule Mix.Tasks.Elvis do
  use Mix.Task

  def run(args) do
    case :elvis_core.rock(Mix.Project.config[:elvis]) do
      {:fail, _} -> Mix.raise "mix elvis failed"
      :ok -> :ok
    end
  end
end
