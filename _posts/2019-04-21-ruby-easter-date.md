---
author: torrocus
category: news
description: "Wyliczanie daty Wielkanocy wcale nie jest trywialnym procesem. Napiszemy prosty program w Ruby, aby nie trzeba było zaglądać w kalendarz."
excerpt: "**Programowanie** przydaje się w bardzo nieoczekiwanych momentach. Skąd wiadomo kiedy będzie Wielkanoc jeśli nie mamy kalendarza? Są odpowiednie _algorytmy_!"
header:
  actions:
    - label: Merry Christmas w rytmie Ruby
      url: /news/2018/12/merry-christmas/
  og_image: /assets/articles/2019-04-21/og_image.jpg
  overlay_filter: rgba(0, 0, 0, 0.5)
  overlay_image: assets/articles/2019-04-21/header.jpg
  teaser: /assets/articles/2019-04-21/teaser.jpg
lang: pl
layout: single
tags: [story]
title: Ruby Easter date
---

{: .text-justify}
Wielkanoc jest świętem ruchomym.
Niedziela Wielkanocna wypada w pierwszą niedzielą, która następuje po pierwszej wiosennej pełni Księżyca.
Zasadę tę ustalono w 325 roku podczas soboru nicejskiego.
W konsekwencji powoduje to, że Wielkanoc może wypadać w okresie od 22 marca do 25 kwietnia.
W dodatku dla uproszczenia przyjęto, że pierwszym dniem wiosny jest 21 marca.
Jest to umowne, ponieważ astronomiczny pierwszy dzień wiosny to dzień zrównania dnia z nocą.
🌜
Aktualnie tym dniem jest 20 marca, a za kilkadziesiąt lat będzie 19 marca.
Widzimy więc, że przyroda nie ułatwia nam zadania.

{: .text-justify}
Pomińmy aspekty historyczne i astronomiczne.
Skupmy się na najbliższych latach.
Chcemy znaleźć prosty sposób na wyznaczanie kolejnych dat Świąt Wielkanocnych.
Pomocną dłoń wyciąga pewien niemiecki matematyk, fizyk i astronom - Carl Friedrich Gauss.
Prawie dwieście lat temu zbudował prosty algorytm, który pozwala określić datę Niedzieli Wielkanocnej.

## Metoda Gaussa

1. {: .text-justify} Należy liczbę roku podzielić modulo:
   - przez 19 i wynik nazwać _a_,
   - przez 4 i wynik nazwać _b_,
   - przez 7 i wynik nazwać _c_.
2. {: .text-justify} Dla lat od 1900 do 2099 przyjmujemy, że:
   - _k_ równe jest 24,
   - _l_ równe jest 5.
3. {: .text-justify} Wykonać wzór `19*a + k`, a sumę podzielić modulo przez 30 i wynik nazwać _d_.
4. {: .text-justify} Wykonać wzór `2*b + 4*c + 6*d + l`, a sumę podzielić modulo przez  i wynik nazwać _e_.
5. {: .text-justify} Teraz do daty 22 marca należy dodać wyniki z punktu 3 i 4, czyli `d + e`.

{: .text-justify}
Jest to bardzo uproszczona wersja tego algorytmu.
Założyliśmy, że interesują nas tylko najbliższe lata.
Nie uwzględniamy wyjątków.
Chodzi o to, aby pokazać **implementację tego algorytmu w Ruby** i aby był to prosty program.

```ruby
require 'date'

def easter_date(year, k = 24, l = 5)
  array = [year % 19, year % 4, year % 7]
  array[3] = (19*array[0] + k) % 30
  array[4] = (2*array[1] + 4*array[2] + 6*array[3] + l) % 7
  Date.new(year, 3, 22) + array[3] + array[4]
end
```

{: .text-justify}
Zobaczmy jak działa nasza metoda dla aktualnego roku, lat przyszłych i przeszłych.

```ruby
2.6.0 :009 > easter_date(2019)
 => #<Date: 2019-04-21 ((2458595j,0s,0n),+0s,2299161j)>
2.6.0 :010 > easter_date(2020)
 => #<Date: 2020-04-12 ((2458952j,0s,0n),+0s,2299161j)>
2.6.0 :011 > easter_date(2021)
 => #<Date: 2021-04-04 ((2459309j,0s,0n),+0s,2299161j)>
2.6.0 :012 > easter_date(2018)
 => #<Date: 2018-04-01 ((2458210j,0s,0n),+0s,2299161j)>
2.6.0 :013 > easter_date(2017)
 => #<Date: 2017-04-16 ((2457860j,0s,0n),+0s,2299161j)>
2.6.0 :014 > easter_date(2000)
 => #<Date: 2000-04-23 ((2451658j,0s,0n),+0s,2299161j)>
```

{: .text-justify}
Z powyższych przykładów widzimy, że w aktualnym roku 2019 Wielkanoc przypada na 21 kwietnia.
I z pełną świadomością możemy to potwierdzić.
Za rok, czyli 2020 będzie to 12 kwietnia.
A w 2021 Święta Wielkiejnocy wypadną dnia 4 kwietnia.
Możemy również przypomnieć sobie zeszły rok.
W 2018 roku Wielkanoc obchodziliśmy w Prima Aprilis, czyli 1 kwietnia.
Cztery linijki kodu w Ruby (pomijając definiowanie metody) wystarcza do tego, aby uprościć sobie świąteczne plany.

{: .text-justify}
Metoda Gaussa nie jest jedyną metodą wyliczania dat Wielkanocy.
Istnieje również metoda Meeusa/Jonesa/Butchera.
Ale zostawimy tą metodę na inny artykuł.


## 🐰 Wesołych Świąt 🐥

{: .text-justify}
Drodzy czytelnicy!
Wiemy, że są wśród Was nasi przyjaciele, współpracownicy i zleceniodawcy, nasi klienci oraz dostawcy.
Część z Was korzysta z usług naszego [serwisu komputerowego w Cieszynie](https://fractalsoft.org/pl/cieszyn).
Inni za to zamawiają u nas [aplikacje internetowe](https://fractalsoft.org/pl).
Jeszcze inni to po prostu społeczności, w których działamy tj. [CoderDojo](https://fractalsoft.org/pl/spolecznosc/coderdojo), [Rails Girls](https://fractalsoft.org/pl/spolecznosc/rails-girls), czy [lokalna grupa Rubiego](https://fractalsoft.org/pl/spolecznosc/srug).
Dziękujemy, że z nami jesteście.
To wiele dla nas znaczy.

{: .text-justify}
Z okazji Świąt Wielkiejnocy życzymy Wam odrodzenia oraz regeneracji.
Wiemy, że to brzmi bardzo technicznie, ale taki jest cel tych życzeń.
Każdego laptopa da się naprawić.
Każdą aplikację da się napisać.
Jednak pamiętajcie, że technologia ma Wam ułatwiać życie, a nie je zastępować.
Korzystajcie z niej mądrze i na miarę naszych czasów.
To wspaniałe, że można zadzwonić do rodziny lub znajomych na drugim końcu świata nie ruszając się z domu.
W dobie Internetu można wysłać komuś uśmiechnięte zdjęcie lub życzenia świąteczne w kilka sekund.
Używajcie tych codziennych cudów techniki w wyjątkowy sposób.
Sprawcie, aby te Święta Wielkanocy były wyjątkowe także dla innych.
Podzielcie się z innymi radością i miłością.
Niech technologia będzie po Waszej stronie.
Razem zmieniajmy świat na lepsze.

{: .text-justify}
Tego życzymy Wam i sobie! Wesołego Alleluja!
🐣

----
{% include common/footer--polish-text.html %}
