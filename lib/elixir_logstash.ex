defmodule ElixirLogstash do
  require Logger

  def log_debug(string) when is_binary(string) do
    Logger.debug string
  end
end
