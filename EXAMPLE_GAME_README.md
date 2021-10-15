# How do I run the example game?

To run TyranoScript games on your own computer, you need to open a local HTTP server (a webserver) to serve the files in this directory.

There are a lot of different ways to do this. Three common ones are described below.


## If You're On Windows And Confused

1. Download a portable HTTP server program like [Mongoose](https://mongoose.ws/desktop-app/) or [TinyWeb](https://www.ritlabs.com/en/products/tinyweb/).

2. Copy-paste its `.exe` file inside this folder (`tyranoscript`), and double-click on it.

3. The server should give you an address. Type that address into your web browser to play the example game.

(For more detailed instructions, please look at your chosen server's documentation.)


## Using Node.js

If you're going to be working with TyranoScript (or Javascript in general), you're probably going to need Node.js and NPM. [If you don't already have them, you can get them here.](https://nodejs.org/)

With Node and NPM installed, open your terminal in the `data` directory and do this:

```bash
cd tyranoscript                  # move into the directory, if necessary
npm install --global http-server # install the 'http-server' package
http-server                      # launch the server
```

If the server launched correctly, you'll see a block of text ending with:

```
Available on:
  http://127.0.0.1:8080
  http://192.168.0.203:8080
Hit CTRL-C to stop the server
```

In your web browser, go to one of the addresses that it gives you - in this case, <http://127.0.0.1:8080> or <http://192.168.0.203:8080>. The example game should be running.


## Using Python

Python comes with a simple HTTP server. If you use Linux, you probably already have Python installed. [This tutorial explains in detail how to launch the server](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/set_up_a_local_testing_server), but the short version is:

```bash
cd tyranoscript            # move into the directory, if necessary
python3 -m http.server     # type this if you have Python 3...
python -m SimpleHTTPServer # ...or this if you have Python 2
```

If the server launched correctly, you'll see something like:

`Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...` (Python 3)

or

`Serving HTTP on 0.0.0.0 port 8000 ...` (Python2)

In your web browser, go to the address that it gives you - in this case, <http://0.0.0.0:8000/>. The example game should be running.