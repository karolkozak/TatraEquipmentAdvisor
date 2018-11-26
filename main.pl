:- dynamic
    xfakty/2,
    xtemperatura/2.

zabierz(kurtka_zimowa) :- (fakty(pora_roku, zima); temperatura(lodowato)),
                        fakty(opady, snieg),
                        fakty(cel_wyprawy, wysokie_gory).
                        
zabierz(kurtka_przeciwdeszczowa) :- (fakty(opady, mgla); fakty(opady, deszcz)).
                        
zabierz(sniegowce) :- (fakty(pora_roku, zima); temperatura(lodowato)),
                        fakty(opady, snieg).
                        
zabierz(trampki) :- fakty(pora_roku, lato),
                        fakty(opady, brak),
                        fakty(cel_wyprawy, dolina).
                        
zabierz(latarka) :- (fakty(pora_roku, lato),
                        fakty(bedzie_szedl, cztery),
                        fakty(wyruszy, po_15));
                        (fakty(pora_roku, zima),
                        fakty(bedzie_szedl, szesc),
                        fakty(wyruszy, po_10)).

fakty(X,Y) :- xfakty(X,Y).

temperatura(X) :- xtemperatura(_, X).
                    
pamietaj(X,Y) :- assertz(xfakty(X,Y)).
pamietaj_temperature(X) :- ((between(30,100,X) ->  assertz(xtemperatura(X, goraco)));
                    (between(20,30,X) ->  assertz(xtemperatura(X, cieplo)));
                    (between(10,20,X) ->  assertz(xtemperatura(X, chlodno)));
                    (between(0,10,X) ->  assertz(xtemperatura(X, zimno)));
                    (between(-10,0,X) ->  assertz(xtemperatura(X, bardzo_zimno)));
                    (between(-100,-10,X) ->  assertz(xtemperatura(X, lodowato)))).

wyczysc_pamiec :- retractall(xfakty(_,_)),
    retractall(xtemperatura(_,_)),
    read(_).

drukuj([]).
drukuj( [X|Y] ):- write('- '), write(X), writeln(','), drukuj(Y).

co_zabrac(A, B, C, D) :- 
    pamietaj_temperature(A),
    pamietaj(pora_roku, B),
    pamietaj(opady, C),
    setof(X, zabierz(X), Z),
	writeln('Zabierz:'), drukuj(Z),
    wyczysc_pamiec.

co_zabrac(_, _, _) :- write('Nie jestem w stanie odgadnac co masz zabrac w gory.'),
            wyczysc_pamiec.