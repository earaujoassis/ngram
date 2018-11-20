defmodule NgramTest do
  use ExUnit.Case
  doctest Ngram

  describe "tokenizer" do
    test "<empty string>" do
      assert Ngram.tokenize("") == [""]
    end

    test "Show me the code." do
      assert Ngram.tokenize("Show me the code.") == [
        "Show",
        "me",
        "the",
        "code",
        "Show me",
        "me the",
        "the code",
        "Show me the",
        "me the code",
        "Show me the code"
      ]
    end

    test "Hello world!" do
      assert Ngram.tokenize("Hello world!") == [
        "Hello",
        "world",
        "Hello world"
      ]
    end
  end
end
