---
author: torrocus
category: programowanie
description:
excerpt: Jak policzyć czy dany rok jest przestępny czy nie? 📅
lang: pl
locale-ref: leap-year-programming
locale: pl
permalink: /pl/rok-przestepny-w-programowaniu/
title: Rok przestępny w programowaniu
---

{: .text-justify}
**29 luty** pojawia się raz kilka lat.
Data ta jest związana z rokiem przestępnym.
Dla uproszczenia często przyjmujemy, że dzień 29-tego lutego występuje co 4 lata.
Jest to bardzo duże uproszczenie, ale aby to zrozumieć musimy sięgnąć do astronomii.
Ponadto dobrze jest zdefiniować podstawowe pojęcia, którymi będziemy się posługiwać.

{: .text-justify}
**Rok** to okres czasu, który jest mierzony pomiędzy dwoma jednakowymi położeniami planety po orbicie wokół jej gwiazdy.
W naszym przypadku Ziemia krąży po orbicie wokół Słońca.
Pamiętajmy jednak, że Mars również krąży wokół Słońca i tam rok marsjański będzie trwał dłużej.
Za to na Wenus rok będzie trwał krócej.
Rok jest to więc okres orbitalny obiegu planety wokół Słońca,
który można wyliczyć z trzeciego prawa Keplera.
Chodzi o to, że im większa orbita tym dłuższy okres obiegu.
Ponadto dla orbity kołowej prędkość liniowa planety na orbicie jest odwrotnie proporcjonalna do pierwiastka promienia tej orbity.
Wróćmy jednak do podstawowych pojęć.

{: .text-justify}
**Rok kalendarzowy** według kalendarza gregoriańskiego rozpoczynamy 1 stycznia o godzinie 00:00, a kończymy 31 grudnia.
Rok kalendarzowy zwyczajowo łączymy z kalendarzem słonecznym,
który charakteryzuje się podziałem na pory roku.
Różne kalendarze słoneczne (lub solarne) używane były od wielu wieków przez Majów, Azteków oraz ludy zamieszkujące starożytną Mezopotamię.
Było to jeszcze w erze gdy nie było komputerów, a ludzie nie potrafili programować.
W przyrodzie łatwo można było zauważyć cykl zmian pór roku (wiosna, lato, jesień, zima),
co było efektem ruchu obiegowego Ziemi wokół Słońca.
Stąd kalendarz słoneczny zakładał, że rok trwał 365 dni.
Z czasem obliczenia cyklu obiegu Ziemi wokół Słońca były coraz dokładniejsze.

{: .text-justify}
**Rok zwrotnikowy** to czas jaki mija pomiędzy dwoma następującymi po sobie równonocami wiosennymi.
Rok zwrotnikowy zwany jest również rokiem słonecznym i wyznacza cykl zmian pór roku.
Chodzi o to, że gdy Słońce przechodzi (z naszej perspektywy) przez punkt Barana zaczynamy liczyć astronomiczną wiosnę.
Mierząc czas pomiędzy różnymi punktami otrzymamy różne wartości.
Jeśli jako punkt startowy wybierzemy równonoc wiosenną to możemy policzyć rok równonocy wiosennej.
Analogicznie obserwacje możemy poczynić z przesileniem letnim, równonocą jesienną oraz przesileniem zimowym.
Licząc średnią z tych czterech punktów otrzymamy średni rok zwrotnikowy.
Dodatkowo rok zwrotnikowy jest krótszy od roku gwiazdowego.
W dużym przybliżeniu średnia długość roku zwrotnikowego wynosi **365.2422** dni (ET).
Wartość ta była znana już kilkadziesiąt lat temu i wciąż z powodzeniem ją używamy.
Musimy jeszcze wyjaśnić kilka pojęć.

{: .text-justify}
**Efemeryalny dzień** (ang. ephemeris day) to uśredniona długość doby w układzie SI (fr. Système international d'unités).
Przyjmuje się, że doba w układzie SI trwa 86400 sekund.
Każda doba trwa 24 godziny.
Każda godzina trwa 60 minut.
Każda minuta trwa 60 sekund.
Obliczenia są więc trywialne.
```ruby
> 24 * 60 * 60 => 86400
```

{: .text-justify}
Jeśli weźmiemy podaną wcześniej średnią długość roku zwrotnikowego to możemy wyliczyć ile sekund (w dużym przybliżeniu) trwa rok zwrotnikowy.
```ruby
> mean_tropical_year = 365.2422 * 24 * 60 * 60
 => 31556926.079999994
```

{: .text-justify}
**Rok gwiazdowy** jest to rok liczony względem gwiazd.
Aby wyliczyć rok gwiazdowy wymagany jest obserwator na Ziemi.
Bierze się pod uwagę dwa kolejne przejścia Słońca na tle tych samych gwiazd.
Ze względu na to, ze na naszą planetę oddziałują różne inne ciała niebieskie to rok ten ulega zmianom.
W chwili J2000 długość roku gwiazdowego wynosi **365.256 363 004** dni słonecznych, czyli 365 dni 6 godzin 9 minut 9.76 sekundy.

{: .text-justify}
Ile sekund trwa rok gwiazdowy?
Proste obliczenia powinny dać nam poniższy wynik.
```ruby
> sidereal_year = 365.256363004 * 24 * 60 * 60
 => 31558149.7632
```
OK, ale czy to duża czy mała różnica?
Sprawdźmy to!
```ruby
> sidereal_year - mean_tropical_year
 => 1223.6835456080735
```
Różnica pomiędzy rokiem gwiazdowym a średnim rokiem zwrotnikowym wynosi ponad 1223 sekundy, czyli około 20 minut i 23 sekundy.

{: .text-justify}
**J2000** oznacza 1 stycznia 2000 roku godzinę 12:00 czasu ziemskiego (TT).
Jest to epoka juliańska, której zapis dat juliańskich używany jest często w algorytmach astronomicznych.

{: .text-justify}
**Czas Efemeryd** (ang. Ephemeris Time, w skrócie ET) jest to standard czasu niezależny od położenia obserwatora.
Oblicza się go przy pomocy mechaniki nieba na podstawie obserwacji położeń ciał niebieskich (planety i księżyc) względem siebie.
Jedną z odmian czasu efemeryd jest TT.

{: .text-justify}
**Czas Ziemski** (ang. Terrestrial Time, w skrócie TT) jest to nowoczesny standard czasu zdefiniowany do pomiarów obserwacji astronomicznych dokonywanych z powierzchni Ziemi.
Jednostką czasu ziemskiego jest oczywiście sekunda wg układu SI.

{: .text-justify}
Bądźmy jednak bardziej precyzyjni, jak przystało na programistów.
Wg Xaviera Moissona w chwili J2000.0 (2000.01.01 12:00 TT) średnia wartość roku zwrotnikowego wynosiła: **365.242 190 419** dni SI.
```ruby
> mean_tropical_year_j2000 = 365.242190419 * 24 * 60 * 60
 => 31556925.2522016
```

{: .text-justify}
O ile dokładniej potrafimy teraz zdefiniować rok?
Daje to nam około 0.83 sekundy różnicy w ciągu roku.
Wartość zupełnie pomijalna.

{: .text-justify}
**Rok przestępny** jest to rok kalendarzowy, w którym jest 366 dni, czyli o 1 dzień więcej.
Tym dodatkowym dniem w roku przestępnym jest 29 luty.
Jest on dodawany po to, aby zrównać rok kalendarzowy z rokiem zwrotnikowym.

{: .text-justify}
Załóżmy przez chwilę, że rok zwrotnikowy trwa 365.25 dni SI.

```ruby
days_in_year = 365.25
(1..4).map { |year| year * days_in_year }
 => [365.25, 730.5, 1095.75, 1461.0]
```

{: .text-justify}
Jeżeli w kalendarzu mamy tylko 365 dni to już w czwartym roku zauważymy, że nasz kalendarz rozsynchronizował się z latami zwrotnikowymi.
W czwartym roku powinniśmy dostać 4 * 365, czyli 1460 dni, a otrzymaliśmy 1461 dni SI.
To jest oczywiście idealna sytuacja, ponieważ prostym rozwiązaniem w tym przypadku będzie dodanie co 4 rok jednego dnia (29 luty).
W takim przypadku kod sprawdzający czy rok przestępny jest bardzo uproszczony.

```ruby
def leap_year?(year)
  year % 4 == 0
end

leap_year?(2019)
 => false
leap_year?(2020)
 => true
leap_year?(2021)
 => false
```

{: .text-justify}
Sposób ten stosowany był już 238 roku p.n.e. (przed naszą erą) w Egipcie.
Lata przestępne co cztery lata zostały wprowadzone w Rzymie do kalendarza juliańskiego przez Juliusza Cezara 45 lat p.n.e.
Jednak rok zwrotnikowy jest trochę krótszy niż 365.25 dni.
Dlatego w dłuższej perspektywie otrzymamy błąd.
Zaprogramujmy prostą symulację.

```ruby
def leap_year?(year)
  year % 4 == 0
end

def leap_year_error(mean_tropical_year:)
  delta_days, year = 0, 0
  while true
    year += 1
    delta_days += mean_tropical_year
    delta_days -= leap_year?(year) ? 366 : 365
    return year if delta_days.abs.to_i > 0
  end
end

leap_year_error(mean_tropical_year: 365.2422)
 => 132
```

{: .text-justify}
Widać, że po 132 latach pojawi się kolejny dodatkowy dzień, którego kalendarz juliański nie uwzględnił.
Problem ten częściowo rozwiązuje kalendarz gregoriański.
Otóż papież Grzegorz XIII w 1582 roku wprowadza zmienia kalendarz juliański.
Eliminuje on z lat przestępnych te, które wypadają na koniec wieku.
Jednak zostawia te, których liczba stuleci podzielna jest przez 4.

```ruby
def leap_year?(year)
  return true if year % 400 == 0
  return false if year % 100 == 0
  return true if year % 4 == 0
  false
end
```

{: .text-justify}
W kalendarzu juliańskim lat przestępnych w ciągu 400 lat było aż 100.
W kalendarzu gregoriańskim lat przestępnych w ciągu 400 lat jest 97.

```ruby
# Wyliczenia analityczne
(400 / 4) - (400 / 100) + (400 / 400)
 => 97

# Wyliczenia empiryczne
(1..400).count { |year| leap_year?(year) }
 => 97
```

{: .text-justify}
Uśredniony rok wg kalendarza gregoriańskiego trwa (365 + 97/400).
Różnica pomiędzy nim, a rokiem zwrotnikowym pozwala określić bieżący błąd kalendarza gregoriańskiego w sekundach.

```ruby
> mean_tropical_year_j2000 = 365.242190419
# Błąd obliczania daty w jednostkach dzień/rok
> delta = (365 + 97/400.0) - mean_tropical_year_j2000
 => 0.0003095810000104393
# Ile to sekund w ciągu roku?
> delta * 24 * 60 * 60
 => 26.747798400901956
# Ile lat potrzeba, aby stracić dzień?
> delta * 3231
 => 1.0002562110337294
```

{: .text-justify}
Możliwe jest znalezienie lepszego algorytmu do wyliczania lat przestępnych.
Jednak błąd jest na tyle mały, że wręcz pomijalny.
