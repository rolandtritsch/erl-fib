-module(fibonacci).
-export([main/0]).

main() -> 
    {N, []} = string:to_integer(lists:nth(1, init:get_plain_arguments())),
    io:fwrite("fib(~w) -> ~w~n", [N, fib(N)]).

fib(0) -> 0;
fib(1) -> 1;
fib(N) when N>=2 -> fib(N-1) + fib(N-2).
