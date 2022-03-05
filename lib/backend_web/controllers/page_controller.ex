defmodule BackendWeb.PageController do
  use BackendWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", process_id: self |> :erlang.pid_to_list |> to_string) 
  end
end
