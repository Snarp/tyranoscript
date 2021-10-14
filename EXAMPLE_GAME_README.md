# How Do I Run The Example Game?

To run the example game on your own computer, you need to open a local HTTP server (a webserver) for [`data`](./data), the subdirectory that contains the example game code.

There are a lot of different ways to do this.

If you have Python 2+ or 3+ installed, you can [follow this tutorial](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server) to open one via the terminal. The short version:

```bash
cd data                    # move into the `data` directory
python3 -m http.server     # if you have Python 3
python -m SimpleHTTPServer # if you have Python 2
```