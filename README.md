# docker-sl1-to-cbt

Docker image containing uv3dp that will auto-convert any `.sl1` files found in the watch directory to `.cbt`.

## Features

* Auto convert `.sl1` files to `.cbt` using [uv3dp](https://github.com/ezrec/uv3dp)

## Configuration

Set the `WATCH_DIRECTORY` environment variable to set the directory to watch for `.sl1` files. (Defaults to `/home`)

## Building from source

```sh
make docker-build
```

## Resources

* [uv3dp](https://github.com/ezrec/uv3dp)

## Contributing

If you find a bug or have an idea for a new feature please [raise an issue](issues/new) to discuss it.

Pull requests are welcomed but please try and follow similar code style as the rest of the project and ensure all tests and code checkers are passing.

Thank you 💛

## License

See [LICENSE](LICENSE)
