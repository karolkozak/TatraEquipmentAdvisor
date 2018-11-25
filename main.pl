:- dynamic
    xfakty/2.

zabierz(kurtka_zimowa) :- (fakty(jest, zima);
                        fakty(bedzie_temp, lodowato)),
                        fakty(bedzie, padac_snieg),
                        fakty(idzie, w_wysokie_gory).
                        
zabierz(kurtka_przeciwdeszczowa) :- (fakty(bedzie, mgla);
                        fakty(bedzie, deszczowo)).
                        
zabierz(sniegowce) :- (fakty(jest, zima);
                      fakty(bedzie_temp, lodowato)),
                        fakty(bedzie, padac_snieg).
                        
zabierz(trampki) :- fakty(jest, lato),
                        fakty(bedzie, slonecznie).
                        
zabierz(latarka) :- (fakty(jest, lato),
                        fakty(bedzie_szedl, cztery),
                        fakty(wyruszy, po_15));
                        (fakty(jest, zima),
                        fakty(bedzie_szedl, szesc),
                        fakty(wyruszy, po_10)).

fakty(X,Y) :- xfakty(X,Y), !.

fakty(bedzie_temp, Y) :- pytaj_temperatura(Y), !.

fakty(X,Y) :- pytaj(X,Y).

pytaj_temperatura(Y) :- !, format('Jaka bedzie temperatura? (tylko liczby calkowite od -100 do 100)~n'),
                    read(Reply),
                    ((between(30,100,Reply) ->  pamietaj(bedzie_temp, goraco));
                    (between(20,30,Reply) ->  pamietaj(bedzie_temp, cieplo));
                    (between(10,20,Reply) ->  pamietaj(bedzie_temp, chlodno));
                    (between(0,10,Reply) ->  pamietaj(bedzie_temp, zimno));
                    (between(-10,0,Reply) ->  pamietaj(bedzie_temp, bardzo_zimno));
                    (between(-100,-10,Reply) ->  pamietaj(bedzie_temp, lodowato))),
                    pamietaj(bedzie,Y).
    

pytaj(X,Y) :- !, format('~w ~w ? (t/n)~n',[X,Y]),
                    read(Reply),
                    (Reply = 't'),
                    pamietaj(X,Y).
                    
pamietaj(X,Y) :- assertz(xfakty(X,Y)).

wyczysc_fakty :- write('Przycisnij cos aby wyjsc'), nl,
                    retractall(xfakty(_,_)),
                    read(_).

drukuj([]).
drukuj( [X|Y] ):- write('- '), write(X), writeln(','), drukuj(Y).
                    
wykonaj :- 
    setof(X, zabierz(X), Z),    
	writeln('Zabierz:'), drukuj(Z), nl, nl,
    wyczysc_fakty.
            
wykonaj :- write('Nie jestem w stanie odgadnac co to masz zabrac w gory.'), nl,
            wyczysc_fakty.
