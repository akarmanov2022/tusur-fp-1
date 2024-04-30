fibonacci(0, [0]).
fibonacci(1, [0, 1]).

fibonacci(N, Seq) :-
    N > 1,
    fibonacci_(N, SeqR, 1, [0, 1]),
    reverse(SeqR, Seq).

fibonacci_(N,Seq,N,Seq).
fibonacci_(N,Seq,N0,[B,A|Fs]) :-
    N > N0,
    N1 is N0+1,
    C is A+B,
    write(C), write(" "), 
    fibonacci_(N,Seq,N1,[C,B,A|Fs]).