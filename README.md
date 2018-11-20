# Ngram

> Obtain N-grams (contiguous sequence of n words) from a string of text

The module `Ngram` is defined in `lib/ngram.ex` and exports the `tokenize` function which
accepts a string and returns the N-grams for that string of text. If the string is empty,
it returns `[""]` (one-gram string). Examples could be found in the `test/ngram_test.exs`
file.

## Testing

```sh
$ mix test
```

## License

[MIT License](http://earaujoassis.mit-license.org/) &copy; Ewerton Carlos Assis
