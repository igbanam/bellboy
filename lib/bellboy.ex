defmodule Bellboy do
  @moduledoc """
  Documentation for Bellboy.

  A CLI tool to put time on Freckle.
  """

  @doc """
  Enrtry Point
  """
  def main(args \\ []) do
    args
    |> digest_arguments
    |> process
  end

  defp digest_arguments(args) do
    options =
      args
      |> OptionParser.parse(
        switches: [
          for: :integer,
          help: :boolean,
          version: :boolean
        ],
        aliases: [h: :help, v: :version])

    case options do
      { [ help: true ], _, _ }                     -> :help
      { [], [ "projects" ], [] }                   -> :list_projects
      { [ for: project_id ], [ "log", time ], [] } -> { :log, time, project_id }
      { [ version: true ], _, _ }                  -> :version
      _                                            -> :help
    end
  end

  defp process(:help) do
    """

    USAGE
    =====
      bellboy projects
      bellboy log TIME --for PROJECT_ID
      bellboy [-h | --help]
      bellboy [-v | --version]

    ARGS
    ====

        PROJECT_ID    The project to log time for
        TIME          Time in minutes
    """
    |> IO.puts
  end

  defp process(:list_projects) do
    Bellboy.Freckle_Client.list(:projects)
  end

  defp process({:log, time, project_id}) do
    { minutes, _ } = Integer.parse(time)

    Bellboy.Freckle_Client.create(:entries, %{
      "project_id" => project_id,
      "minutes" => minutes
    })
  end

  defp process(:version) do
    IO.puts("Version 0.1.0")
  end
end
