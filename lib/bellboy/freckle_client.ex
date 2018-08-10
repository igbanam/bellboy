defmodule Bellboy.Freckle_Client do
  def list(:projects) do
    render_title      = "Your Projects on Freckle"
    render_header     = [ "Project Name", "Project ID" ]

    { :ok, response } = HTTPoison.get(base_url() <> "/projects", headers())

    response.body
    |> Poison.decode!(as: [%Bellboy.Project{}])
    |> Enum.map(fn project -> [project.name, project.id] end)
    |> TableRex.quick_render!(render_header, render_title)
    |> IO.puts
  end

  defp base_url do
    "https://api.letsfreckle.com/v2"
  end

  defp headers do
    [
      "X-FreckleToken": Application.get_env(:bellboy, :freckle_token)
    ]
  end
end
