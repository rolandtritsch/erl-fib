erlc *.erl
erl -noshell -s hello main -s init stop
erl -noshell -s fibonacci main -s init stop -extra 10