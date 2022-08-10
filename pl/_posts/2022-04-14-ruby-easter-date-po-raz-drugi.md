---
author: ania
category: news
description: "Masz kłopot z tym kiedy wypada Wielkanoc? Poznaj rozwiązanie z nami."
excerpt: "Wracamy do tematu wyznaczania daty Niedzieli Wielkanocnej. I jak to z nami bywa będziemy to robić w języku **Ruby**. 💎"
header:
  actions:
    - label: Programistyczne pisanki wielkanocne
      url: /pl/programistyczne-pisanki-wielkanocne/
    - label: Wielkanocne wajca i świateczny hazok
      url: /pl/wielkanocne-wajca-i-swiateczny-hazok/
    - label: Data Wielkanocy metodą Gaussa
      url: /news/2019/04/ruby-easter-date/
  og_image: /assets/articles/2022-04-14/og_image.png
  overlay_filter: rgba(0, 0, 0, 0.3)
  overlay_image: /assets/articles/2022-04-14/easter-date-in-ruby.jpg
  teaser: /assets/articles/2022-04-14/teaser.jpg
lang: pl
locale-ref: ruby-easter-date-po-raz-drugi
locale: pl
permalink: /pl/ruby-easter-date-po-raz-drugi/
title: Ruby Easter date po raz drugi
---

{: .text-justify}
Jeszcze rok temu pandemia zaprzątała nasze myśli.
🗓️
🦠
Dzisiaj temat ten przeszedł do lamusa.
Można zaryzykować stwierdzenie, że wracamy do normalności.
Jednak wydarzenia u naszych wschodnich sąsiadów przyniosły nowe obawy.
Trudno jest przejść obojętnie wobec bólu, cierpienia i śmierci niewinnych osób.
Wiedząc, że to wcale nie musiało się wydarzyć, że to zależy tylko od woli człowieka.
Znaleźliśmy się w czasie i miejscu kiedy to
> Ludzie ludziom zgotowali ten los

_Z. Nałkowska "Medaliony"_

{: .text-justify}
Nie traćmy jednak nadziei, że te spokojniejsze czasy nadejdą, że są "tuż za rogiem".

{: .text-justify}
I właśnie od takich życzeń chcemy zacząć...
aby te normalne, dobre dni czekały na nas wszystkich "tuż za rogiem", aby były na wyciągnięcie ręki.
Niech wszelkie troski i niepokoje zejdą na dalszy plan, a w ich miejsce zagoszczą radość i szczęście.
Niech dni upłyną w spokoju i harmonii.
Niech ten czas pozwoli odpocząć zarówno fizycznie, jak i psychicznie.
Życzymy Wam cudownych chwil w gronie najbliższych.

Wesołego Alleluja!
🥚
🐇
🐤
🐏

----

{: .text-justify}
Słowo się rzekło, czas go dotrzymać...
⏰

{: .text-justify}
Powracamy do tematu wyliczania daty Świąt Wielkanocnych.
Zgodnie z obietnicą daną w artykule [Ruby Easter date](https://blog.fractalsoft.org/news/2019/04/ruby-easter-date/), gdzie pisaliśmy o rozwiązaniu Gaussa, tym razem wykorzystamy metodę **Meeusa/Jonesa/Butchera**.
Przyjrzyjmy się więc jej bliżej.
Została przedstawiona przez Jeana Meeusa w 1991 roku.
W książce, swojego autorstwa "Astronomical Algorithms", zawarł sposób na wyliczenie daty Niedzieli Wielkanocnej.
Uwzględnił zarówno algorytm dla kalendarza gregoriańskiego, jak i juliańskiego.

{: .text-justify}
Metody opisane przez Meeusa są uniwersalne.
Nie wymagają od nas żadnych założeń czy wyjątków.
Jednakże, jak się przekonacie, wymagają więcej obliczeń.

{: .text-justify}
Dla każdego kalendarza w pierwszej kolejności opiszemy poszczególne kroki metody.
Następnie zaproponujemy przykładowy program w języku **Ruby**.

## Algorytm dla kalendarza gregoriańskiego

{: .text-justify}
Nasz algorytm polega na wyliczeniu pewnej grupy wartości: a, b, c, d, e, f, g, h, i, k, l, m, p.
Z ich pomocą wyznaczymy dzień i miesiąc święta.

{: .text-justify}
Jak policzyć potrzebne wielkości?
Poniżej mała pomoc:

_Wybierzmy rok dla którego chcemy poznać datę._
😉
1. {: .text-justify} Rok należy podzielić przez _19_.
W wyniku tego działania otrzymamy resztę, która jest naszą wartością _a_.
2. {: .text-justify} Następnie rok dzielimy przez _100_.
Zaokrąglony w dół wynik to nasze _b_, a reszta w tego dzielenia to poszukiwane _c_.
3. {: .text-justify} Otrzymane b dzielimy przez _4_.
Po zaokrągleniu wyniku w dół otrzymujemy _d_, a resztę w tego dzielenia nazywamy _e_.
4. {: .text-justify} Teraz wykonajmy działanie _(b + 8) / 25_.
Jego wynik zaokrąglamy w dół i dostajemy _f_.
5. {: .text-justify} Kolejnym krokiem będzie policzenie _(b – f + 1) / 3_.
Zaokrąglając wynik w dół otrzymamy _g_.
6. {: .text-justify} Szóstym krokiem będzie działanie _(19 * a + b – d – g + 15) % 30_.
Otrzymany wynik nazywamy _h_.
7. {: .text-justify} Kolejne wielkości otrzymujemy dzieląc _c_ przez _4_.
Zaokrąglony w dół wynik to nasze _i_, a reszta to nasze _k_.
8. {: .text-justify} Teraz wykonujemy działanie _(32 + 2 * e + 2 * i – h – k) % 7_.
Uzyskany rezultat to _l_.
9. {: .text-justify} Zaokrąglając w dół wynik z _(a + 11 * h + 22 * l) / 451_ dostaniemy _m_.
10. {: .text-justify} Ostatnią naszą wielkość _p_ otrzymujemy z dzielenia modulo _(h + l – 7 * m + 114) % 31_.

{: .text-justify}
Nie pozostaje nam nic innego jak policzyć odpowiednio:
- Dzień Wielkanocy = _p + 1_.
- Miesiąc = zaokrąglony w dół wynik z dzielenia _(h + l – 7 * m + 114)_ przez _31_.

{: .text-justify}
Program w **Ruby** może wyglądać:

```ruby
require 'date'

def gregorian_easter_date(year)
  a = year % 19
  b = (year / 100).floor
  c = year % 100
  d = (b / 4).floor
  e = b % 4
  f = ((b + 8) / 25).floor
  g = ((b - f + 1) / 3).floor
  h = (19 * a + b - d - g + 15) % 30
  i = (c / 4).floor
  k = c % 4
  l = (32 + 2 * e + 2 * i - h - k) % 7
  m = ((a + 11 * h + 22 * l) / 451).floor
  q = (h + l - 7 * m + 114)
  day = q % 31 + 1
  month = (q / 31).floor
  Date.new(year, month, day)
end
```

{: .text-justify}
Jak działa powyższa metoda?
Przekonajmy się i wyliczmy kilka dat.

```ruby
3.1.0 :020 > gregorian_easter_date(2022)
 => #<Date: 2022-04-17 ((2459687j,0s,0n),+0s,2299161j)>
3.1.0 :021 > gregorian_easter_date(2021)
 => #<Date: 2021-04-04 ((2459309j,0s,0n),+0s,2299161j)>
3.1.0 :022 > gregorian_easter_date(2023)
 => #<Date: 2023-04-09 ((2460044j,0s,0n),+0s,2299161j)>
3.1.0 :023 > gregorian_easter_date(1900)
 => #<Date: 1900-04-15 ((2415125j,0s,0n),+0s,2299161j)>
3.1.0 :024 > gregorian_easter_date(1967)
 => #<Date: 1967-03-26 ((2439576j,0s,0n),+0s,2299161j)>
```

{: .text-justify}
Daty te łatwo będziemy mogli sprawdzić.

## Algorytm dla kalendarza juliańskiego

{: .text-justify}
Ten algorytm jest zdecydowanie krótszy.
Wyliczamy tylko pięć wielkości: _a, b, c, d, e_ za pomocą, których wyznaczymy dzień i miesiąc.
Szczegóły poniżej:
1. {: .text-justify} Rok dzielimy przez _4_.
Otrzymaną resztę nazywamy _a_.
2. {: .text-justify} Wartość _b_ otrzymujemy jako resztę z dzielenia roku przez _7_.
3. {: .text-justify} Dzieląc rok przez _19_ dostaniemy resztę, którą oznaczamy jako _c_.
4. {: .text-justify} Następnie wykonajmy działanie _(19 * c + 15) % 30_.
Nasze _d_ to wynik z tego dzielenia.
5. {: .text-justify} Wyznaczamy _e_ jako iloraz z _(2 * a + 4 * b – d + 34) % 7_.

{: .text-justify}
Teraz już możemy policzyć:
- Dzień = rezultat z _(d + e + 114) % 31_, a następnie dodajemy _1_
- Miesiąc = zaokrąglony wynik w dół z _(d + e + 114) / 31_.

```ruby
require 'date'

def julian_easter_date(year)
  a = year % 4
  b = year % 7
  c = year % 19
  d = (19 * c + 15) % 30
  e = (2 * a + 4 * b - d + 34) % 7
  day = (d + e + 114) % 31 + 1
  month = ((d + e + 114) / 31).floor
  Date.new(year, month, day)
end
```

{: .text-justify}
Jako ciekawostka!
_Kalendarz juliański obowiązuje w Kościele Prawosławnym._
_Znając już datę świąt w obrządku prawosławnym możemy dowiedzieć się na jaki dzień i miesiąc kalendarza gregoriańskiego przypada uroczystość._
_Wystarczy, do uzyskanego wyniku, dodać 13._
_Zasada ta działa tylko dla lat 1900 - 2100._

{: .text-justify}
Wyniki przedstawiają się następująco:

```ruby
3.1.0 :035 > julian_easter_date(2022)
 => #<Date: 2022-04-11 ((2459681j,0s,0n),+0s,2299161j)>
3.1.0 :036 > julian_easter_date(2021)
 => #<Date: 2021-04-19 ((2459324j,0s,0n),+0s,2299161j)>
3.1.0 :037 > julian_easter_date(2023)
 => #<Date: 2023-04-03 ((2460038j,0s,0n),+0s,2299161j)>
3.1.0 :038 > julian_easter_date(1900)
 => #<Date: 1900-04-09 ((2415119j,0s,0n),+0s,2299161j)>
3.1.0 :039 > julian_easter_date(1967)
 => #<Date: 1967-04-17 ((2439598j,0s,0n),+0s,2299161j)>
```

{: .text-justify}
Życzymy Wam miłej zabawy z programowaniem.

🐏
🐰
🐇
🥚
🐤
🐣
🐥
