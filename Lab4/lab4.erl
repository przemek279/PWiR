-module(lab4).
-export([pole/1, len/1, amin/1, amax/1, tmin_max/1, lmin_max/1, pola/1, lgen/1, gen1/1, genE/2]).

pole({kwadrat,X,Y}) ->  X*Y;
pole({kolo,X}) -> 3.14*X*X;
pole({trojkat,X,Y}) -> 0.5*X*Y;
pole({trapez,A,B,H}) -> 0.5*(A+B)*H.


len([]) -> 0;
len([_|T]) -> 1 + len(T).


amin([A]) -> A;
amin([A,B|T]) when A < B -> amin([A|T]);
amin([_,B|T]) -> amin([B|T]).

amax([A]) -> A;
amax([A,B|T]) when A > B -> amax([A|T]);
amax([_,B|T]) -> amax([B|T]).

tmin_max(L) -> {amin(L), amax(L)}.

lmin_max(L) -> {amin(L), amax(L)}.


pola(L) -> lists:map(fun(X) -> pole(X) end, L).


lgen(1) -> [1];
lgen(N) -> [N | lgen(N-1)].


gen1(0) -> [];
gen1(N) -> [1 | gen1(N-1)].

genE(0, _) -> [];
genE(N, E) -> [E | genE(N-1, E)].
