defmodule Ngram.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ngram,
      description: "Obtain N-grams (contiguous sequence of n words) from a string of text",
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: false,
      build_embedded: false,
      deps: []
    ]
  end
  def application do
    [
      applications: [:logger]
    ]
  end
end
