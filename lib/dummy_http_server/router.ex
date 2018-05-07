defmodule DummyHttpServer.Router do
  use Plug.Router

  plug Plug.Logger
  plug :match
  plug :dispatch

  get "/" do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(204, "no content")
  end

  match _ do
    conn
    |> send_resp(404, "not found")
  end
end
