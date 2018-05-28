defmodule DummyHttpServer.Router do
  use Plug.Router

  plug Plug.Logger
  plug Plug.Parsers, parsers: [:json],
    pass: ["*/*"],
    json_decoder: Jason
  plug :match
  plug :dispatch

  get "/" do
    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(204, "no content")
  end

  match _ do
    IO.inspect conn.body_params

    conn
    |> put_status(:no_content)
    |> put_resp_header("content-type", "application/json")
    |> send_resp(204, "")

    # conn
    # |> put_resp_content_type("text/plain")
    # |> send_resp(200, "no content")

    # conn
    # |> send_resp(404, "not found")
  end
end
