:- dynamic
    xfakty/2,
    xtemperatura/1,
    xstart/1,
    xtrasa/1.

zabierz(kurtka_zimowa) :- (fakty(pora_roku, zima); temperatura(lodowato)),
                        fakty(opady, snieg),
                        fakty(cel_wyprawy, wysokie_gory).
                        
zabierz(kurtka_przeciwdeszczowa) :- (fakty(opady, mgla); fakty(opady, deszcz)),
    not(zabierz(kurtka_zimowa)).
                        
zabierz(sniegowce) :- (fakty(pora_roku, zima); temperatura(lodowato)),
                        fakty(opady, snieg).
                        
zabierz(trampki) :- fakty(pora_roku, lato),
                        fakty(opady, brak),
                        fakty(cel_wyprawy, dolina).
                        
zabierz(latarka) :- zmrok().

fakty(X,Y) :- xfakty(X,Y).

temperatura(X) :- xtemperatura(X).
                    
pamietaj(X,Y) :- assertz(xfakty(X,Y)).
pamietaj_temperature(X) :- ((between(30,100,X) ->  assertz(xtemperatura(goraco)));
                    (between(20,30,X) ->  assertz(xtemperatura(cieplo)));
                    (between(10,20,X) ->  assertz(xtemperatura(chlodno)));
                    (between(0,10,X) ->  assertz(xtemperatura(zimno)));
                    (between(-10,0,X) ->  assertz(xtemperatura(bardzo_zimno)));
                    (between(-100,-10,X) ->  assertz(xtemperatura(lodowato)))).

zmrok() :- xstart(X),
    xtrasa(Y),
    Z is X+Y,
    (not(between(6,20,Z)), fakty(pora_roku, lato);
    not(between(7,18,Z)), (fakty(pora_roku, wiosna) ; fakty(pora_roku, jesien));
    not(between(8,16,Z)), fakty(pora_roku, zima)).

wyczysc_pamiec :- retractall(xfakty(_,_)),
    retractall(xtemperatura(_)),
    retractall(xstart(_)),
    retractall(xtrasa(_)),
    read(_).

drukuj([]).
drukuj( [X|Y] ):- write('- '), write(X), writeln(','), drukuj(Y).

co_zabrac(A, B, C, D, E) :- 
    pamietaj_temperature(A),
    pamietaj(pora_roku, B),
    pamietaj(opady, C),
    assertz(xstart(D)),
    assertz(xtrasa(E)),
    setof(X, zabierz(X), Z),
	writeln('Zabierz:'), drukuj(Z),
    wyczysc_pamiec.

co_zabrac(_, _, _) :- write('Nie jestem w stanie odgadnac co masz zabrac w gory.'),
            wyczysc_pamiec.