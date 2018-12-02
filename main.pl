:- dynamic
    xfakty/2,
    xstart/1,
    xtrasa/1.

zabierz(buty_wysokie) :-
	fakty_alternatywa(cel_wyprawy, turnie, pietro_hal, pietro_kosodrzewiny, regiel_gorny),
	fakty_alternatywa(region, zachodnie, wysokie, bielskie).
	/* pora roku: dowolna 
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny
	 * wspinaczka: dowolnie
	 * zmrok: dowolnie */
zabierz(buty_wysokie) :-
	fakty(cel_wyprawy, regiel_dolny),
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	fakty(pora_roku, zima),
	/* opady: dowolne */
	fakty_alternatywa(temperatura, bardzo_zimno, lodowato).
	/* snieg: dowolnie
	 * stan lawionowy: dowolny
	 * wspinaczka: dowolnie
	 * zmrok: dowolnie */
zabierz(buty_niskie) :-
	fakty(cel_wyprawy, regiel_dolny),
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	fakty_alternatywa(pora_roku, wiosna, lato, jesien),
	fakty_alternatywa(opady, deszcz, mgla, brak),
	fakty_alternatywa(temperatura, goraca, cieplo, chlodno).
	/* snieg: dowolnie
	 * stan lawionowy: dowolny
	 * wspinaczka: dowolnie
	 * zmrok: dowolnie */
zabierz(kurtka_lekka) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	fakty_alternatywa(pora_roku, wiosna, lato, jesien),
	fakty_alternatywa(opady, deszcz, mgla, brak),
	fakty_alternatywa(temperatura, goraca, cieplo, chlodno).
	/* snieg: dowolnie
	 * stan lawionowy: dowolny
	 * wspinaczka: dowolnie
	 * zmrok: dowolnie */
zabierz(kurtka_zimowa) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne */
	fakty_alternatywa(temperatura, zimno, bardzo_zimno, lodowato).
	/* snieg: dowolnie
	 * stan lawionowy: dowolny
	 * wspinaczka: dowolnie
	 * zmrok: dowolnie */
zabierz(odziez_termiczna) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne */
	fakty_alternatywa(temperatura, chlodno, zimno, bardzo_zimno, lodowato).
	/* snieg: dowolnie
	 * stan lawionowy: dowolny
	 * wspinaczka: dowolnie
	 * zmrok: dowolnie */
zabierz(polar_bluza) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie).
	/* pora roku: dowolna
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * wspinaczka: dowolnie
	 * zmrok: dowolnie */
zabierz(rekawiczki) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne */
	fakty_alternatywa(temperatura, chlodno, zimno, bardzo_zimno, lodowato).
	/* snieg: dowolnie
	 * stan lawionowy: dowolny
	 * wspinaczka: dowolnie
	 * zmrok: dowolnie */
zabierz(bandana) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie).
	/* pora roku: dowolna
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny
	 * wspinaczka: dowolnie
	 * zmrok: dowolnie */
zabierz(lina) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny */
	fakty(wspinaczka, tak).
	/* zmrok: dowolnie */
zabierz(uprzaz) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny */
	fakty(wspinaczka, tak).
	/* zmrok: dowolnie */
zabierz(kask) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny */
	fakty(wspinaczka, tak).
	/* zmrok: dowolnie */
zabierz(magnezja) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny */
	fakty(wspinaczka, tak).
	/* zmrok: dowolnie */
zabierz(karabinki) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny */
	fakty(wspinaczka, tak).
	/* zmrok: dowolnie */
zabierz(bloczki) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne
     * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny */
	fakty(wspinaczka, tak).
	/* zmrok: dowolnie */
zabierz(haki) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny */
	fakty(wspinaczka, tak).
	/* zmrok: dowolnie */
zabierz(petle) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny */
	fakty(wspinaczka, tak).
	/* zmrok: dowolnie */
zabierz(latarka) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny
	 * wspinaczka: dowolnie */
	zmrok().
zabierz(czolowka) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny
	 * wspinaczka: dowolnie */
	zmrok().
zabierz(spiwor) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny */
	fakty(wspinaczka, nie),
	zmrok().
zabierz(kije_trekingowe) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny */
	fakty(wspinaczka, nie).
	/* zmrok: dowolnie */
zabierz(saperka) :-
	fakty_alternatywa(cel_wyprawy, turnie, pietro_hal, pietro_kosodrzewiny, regiel_gorny),
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne */
	fakty_alternatywa(temperatura, zimno, bardzo_zimno, lodowato),
	/* snieg: dowolnie */
	fakty_alternatywa(st_lawinowy, 3, 4, 5).
	/* wspinaczka: dowolnie
	zmrok: dowolnie */
zabierz(nozyk).
zabierz(mapa).
zabierz(raki) :-
	fakty_alternatywa(cel_wyprawy, turnie, pietro_hal, pietro_kosodrzewiny),
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna */
	fakty_alternatywa(opady, snieg, deszcz),
	fakty_alternatywa(temperatura, zimno, bardzo_zimno, lodowato).
	/* snieg: dowolnie
	stan lawionowy: dowolny
	wspinaczka: dowolnie
	zmrok: dowolnie */
zabierz(czekan) :-
	fakty_alternatywa(cel_wyprawy, turnie, pietro_hal),
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	/* pora roku: dowolna
	 * opady: dowolne
	 * temperatura: dowolna
	 * snieg: dowolnie
	 * stan lawionowy: dowolny */
	fakty(wspinaczka, tak).
	/* zmrok: dowolnie */
zabierz(czekan) :-
	fakty_alternatywa(cel_wyprawy, turnie, pietro_hal),
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	fakty_alternatywa(pora_roku, wiosna, jesien, zima),
	/* opady: dowolne */
	fakty_alternatywa(temperatura, zimno, bardzo_zimno, lodowato),
	/* snieg: dowolnie */
	fakty_alternatywa(st_lawinowy, 2, 3, 4, 5),
	fakty(wspinaczka, nie).
	/* zmrok: dowolnie */
zabierz(okulary).
zabierz(rakiety_sniezne) :-
	fakty_alternatywa(cel_wyprawy, turnie, pietro_hal, pietro_kosodrzewiny, regiel_gorny),
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	fakty_alternatywa(pora_roku, wiosna, jesien, zima),
	/* opady: dowolne */
	fakty_alternatywa(temperatura, zimno, bardzo_zimno, lodowato),
	fakty_alternatywa(snieg, 4, 5).
	/* stan lawionowy: dowolny
	wspinaczka: dowolnie
	zmrok: dowolnie */
zabierz(ogrzewacz) :-
	/* cel wyprawy: dowolny */
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	fakty_alternatywa(pora_roku, wiosna, jesien, zima),
	/* opady: dowolne */
	fakty_alternatywa(temperatura, bardzo_zimno, lodowato).
	/* snieg: dowolnie
	stan lawionowy: dowolny
	wspinaczka: dowolnie
	zmrok: dowolnie */
zabierz(detektor_lawinowy) :-
	fakty_alternatywa(cel_wyprawy, turnie, pietro_hal, pietro_kosodrzewiny, regiel_gorny),
	fakty_alternatywa(region, zachodnie, wysokie, bielskie),
	fakty_alternatywa(pora_roku, wiosna, jesien, zima),
	/* opady: dowolne */
	fakty_alternatywa(temperatura, zimno, bardzo_zimno, lodowato),
	/* snieg: dowolnie */
	fakty_alternatywa(st_lawinowy, 2, 3, 4, 5).
	/* wspinaczka: dowolnie
	zmrok: dowolnie */

fakty(X,Y) :- xfakty(X,Y).

fakty_alternatywa(X,A,B) :- (fakty(X,A); fakty(X,B)).
fakty_alternatywa(X,A,B,C) :- (fakty(X,A); fakty(X,B); fakty(X,C)).
fakty_alternatywa(X,A,B,C,D) :- (fakty(X,A); fakty(X,B); fakty(X,C); fakty(X,D)).

pamietaj(X,Y) :- assertz(xfakty(X,Y)).
pamietaj_temperature(X) :- ((between(30,100,X) ->  assertz(xfakty(temperatura, goraco)));
                    (between(20,30,X) ->  assertz(xfakty(temperatura, cieplo)));
                    (between(10,20,X) ->  assertz(xfakty(temperatura, chlodno)));
                    (between(0,10,X) ->  assertz(xfakty(temperatura, zimno)));
                    (between(-10,0,X) ->  assertz(xfakty(temperatura, bardzo_zimno)));
                    (between(-100,-10,X) ->  assertz(xfakty(temperatura, lodowato)))).
pamietaj_start(X) :- assertz(xstart(X)).
pamietaj_trase(X) :- assertz(xtrasa(X)).

zmrok() :- xstart(X),
    xtrasa(Y),
    Z is X+Y,
    (not(between(6,20,Z)), fakty(pora_roku, lato);
    not(between(7,18,Z)), (fakty(pora_roku, wiosna) ; fakty(pora_roku, jesien));
    not(between(8,16,Z)), fakty(pora_roku, zima)).

wyczysc_pamiec :- retractall(xfakty(_,_)),
    retractall(xstart(_)),
    retractall(xtrasa(_)),
    read(_).

drukuj([]).
drukuj( [X|Y] ):- write('- '), write(X), writeln(','), drukuj(Y).

co_zabrac() :- 
    setof(X, zabierz(X), Z),
	writeln('Zabierz:'), drukuj(Z),
    wyczysc_pamiec.

co_zabrac() :- write('Nie jestem w stanie odgadnac co masz zabrac w gory.'),
            wyczysc_pamiec.

/* cel wyprawy, region, pora roku, opady, temperatura, snieg, stan lawionowy, wspinaczka,
 * godzina wymarszu, czas trwania */
wykonaj(A, B, C, D, E, F, G, H, I, J) :-
    pamietaj(cel_wyprawy, A),
    pamietaj(region, B),
    pamietaj(pora_roku, C),
    pamietaj(opady, D),
    pamietaj_temperature(E),
    pamietaj(snieg, F),
    pamietaj(st_lawinowy, G),
    pamietaj(wspinaczka, H),
    pamietaj_start(I),
    pamietaj_trase(J),
    co_zabrac.

test() :- wykonaj(turnie, wysokie, zima, brak, 10, 0, 0, nie, 8, 9).