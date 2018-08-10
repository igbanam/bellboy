defmodule Bellboy do
  @moduledoc """
  Documentation for Bellboy.
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
      { [ help: true ], _, _ }    -> :help
      { [], ["projects"], [] }    -> :list_projects
      { [ version: true ], _, _ } -> :version
      _                           -> :help
    end
  end

  defp process(:help) do
    """
    USAGE
    =====
      bellboy --project PROJECT --for HH:MM:SS
      bellboy [-h | --help]
      bellboy [-v | --version]

    ARGS
    ====

        PROJECT    The project you want to log time for
        HH:MM:SS   Hours, minutes, and seconds you want to log
    """
    |> IO.puts
  end

  defp process(:list_projects) do
    Bellboy.Freckle_Client.list(:projects)
  end

  defp process(:version) do
    IO.puts("Version 0.0.0")
  end
end
