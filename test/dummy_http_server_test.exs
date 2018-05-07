defmodule DummyHttpServerTest do
  use ExUnit.Case
  doctest DummyHttpServer

  test "greets the world" do
    assert DummyHttpServer.hello() == :world
  end
end
