-module(hello_world).
-export([hello/0]).

hello() -> io:fwrite("Hello, World!\n").
