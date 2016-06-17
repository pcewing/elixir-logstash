defmodule ElixirLogstash.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_logstash,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :tzdata]]
  end

  defp deps do
    [{:logger_logstash_backend, "~> 2.0"}]
  end
end
