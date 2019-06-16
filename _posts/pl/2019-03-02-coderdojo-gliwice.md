---
author: torrocus
category: coderdojo
description: "Programowanie w Ruby, Pythonie i C#, kryptoanaliza i tworzenie gier w Unity - Nauka programowania dla dzieci - CoderDojo Gliwice #5"
excerpt: "Nauka kryptoanalizy w **języku Ruby** albo **programowanie gier w Unity**? Nasze zajęcia **uczą dzieci programowania** oraz myślenia. Tym właśnie jest CoderDojo Gliwice."
header:
  actions:
    - label: Programistyczne półkolonie w Gliwicach
      url: /pl/szkolenia/rubycamp/
    - label: Programowanie gier w Unity
      url: /news/2019/01/programujemy-gry-game-jam-2018/
  og_image: /assets/articles/2019-03-01/og_image.png
  overlay_filter: rgba(0, 0, 0, 0.5)
  overlay_image: /assets/articles/2019-03-01/header.svg
locale-ref: coderdojo-gliwice-5
locale: pl
permalink: /coderdojo/2019/03/coderdojo-gliwice/
tags: [programming, beginner, charity]
title: Nauka programowania dla dzieci i młodzieży - CoderDojo Gliwice - 2019-03
toc: true
toc_label: CoderDojo - 16.03.2019
---

{: .text-justify}
Nauka programowania jest jak jedzenie lodów z czekoladą.
Każdy kawałek sprawia, że sięgamy po następny.
Podobnie, im więcej programujemy tym bardziej nam się to podoba.
Mamy nadzieję, że Wy też tak macie.
Dookoła panuje grypa, więc uważajcie, by się nie zarazić.
My za to chcemy zarażać Was pasją do programowania i dzielić się wiedzą, a nie wirusami.
🔬

## Poprzednie zajęcia

{: .text-justify}
Małe podsumowanie poprzednich zajęć z programowania dla dzieci oraz zdjęcia naszego CoderDojo Gliwice:
+ {: .text-justify} łamanie szyfrów - podstawy kryptoanalizy
+ {: .text-justify} programowanie gier czasu rzeczywistego w C#
+ {: .text-justify} nauka programowania ze Scotty Go
+ {: .text-justify} programowanie bez komputera

{: .text-justify}
Jakby co, tematy tych zajęć opisaliśmy w artykule [CoderDojo Gliwice - 2019-02]({{site.url}}/coderdojo/2019/02/coderdojo-gliwice/).

{% include gallery/coderdojo-4.html %}


## Tematy na CoderDojo Gliwice

### Zaprogramuj deszyfrator

![Don Pedro]({{site.url}}/assets/articles/2019-03-01/don-pedro.jpg){: .align-center}

{: .text-justify}
Znacie _Don Pedro_, najlepszego szpiega z Krainy Deszczowców?
Będziecie mieli okazję zdekonspirować go.
_Karramba!_

{: .text-justify}
Na ostatnich zajęciach z szyfrowania mieliście okazję poznać podstawy kryptoanalizy.
**[Programistka](https://fractalsoft.org/pl/zespol/womanonrails) [Agnieszka](https://womanonrails.com/pl/)** oraz **programista Alek** zaszyfrowali dla Was wiadomości różnymi szyframi.
Okazało się, że niektóre metody szyfrowania były tak skomplikowane, że nie dało się ich jednoznacznie odszyfrować.
Ale dzięki temu nauczyliście się jak działa **kryptoanaliza statystyczna**.
Wykorzystaliście częstotliwość występowania liter w języku polskim do znalezienia kluczy w szyfrach podstawieniowych.
Użyliście również metod słownikowych dla jedno-znakowych i dwu-znakowych wyrazów.
Oto kod źródłowy w Ruby przydatny do kryptoanalizy statystycznej:
```ruby
# Przykładowa zaszyfrowana wiadomość
input = %(
Cemrqfgnjvnz jnz Zvfvn Chpungxn, xgóel jłnśavr j grw pujvyv
fpubqmv cb fpubqnpu. Ghx-ghx, ghx-ghx, mfhjn fvę Chpungrx
an temovrpvr, qb tóel abtnzv, j glyr mn Xemlfvrz, xgóel tb
pvątavr mn cemrqavą łncxę. Bqxąq Chpungrx fvrovr cnzvęgn,
wrfg gb wrqlal fcbfóo fpubqmravn mr fpubqój, pubć Zvś pmhwr
pmnfnzv, żr zótłol gb ebovć mhcrłavr vanpmrw, tqlol hqnłb zh
fvę cemrfgnć ghxgnć pubćol an wrqaą pujvyę v qboemr fvę anq
glz mnfgnabjvć. N cbgrz maój zh fvę mqnwr, żr pulon avr zn
an gb vaartb fcbfboh. Gnx pml fvnx, Zvś mwrpunł whż an qół
v tbgój wrfg mncbmanć fvę m jnzv. Cebfmę oneqmb: bgb wrfg
Xhohś Chpungrx. Xhohś Chpungrx yhov bq pmnfh qb pmnfh
anwebmznvgfmr mnonjl, n pmnfrz maój yhov fvąść fcbxbwavr
cemrq xbzvaxvrz v cbfłhpunć wnxvrwś pvrxnjrw uvfgbelwxv.
)

def frequency_of_characters(input)
  hash = Hash.new(0)
  input.downcase.each_char do |character|
    hash[character] += 1
  end
  hash
end

puts 'Częstotliwość znaków w kolejności od najpopularniejszych:'
frequency_of_characters(input).sort_by { |item| -item[1] }.each do |item|
  puts "'#{item[0]}' => #{item[1]}" if item[1] > 0
end
```

{: .text-justify}
Na najbliższych zajęciach będziemy jeszcze więcej programować i jeszcze więcej deszyfrować.
Szpieg z Krainy Deszczowców (Don Pedro) chciał przesłać tajne wiadomości.
Nasi mentor-agenci przejęli je i skopiowali.
Jednak ich treść jest wciąż niezrozumiała.
Trzeba zbudować odpowiedni deszyfrator, ponieważ ręczna kryptoanaliza zajęłaby zbyt wiele czasu.
Na szczęście w Gliwicach działa CoderDojo, czyli najlepsze zajęcia programowania dla dzieci.
Świat liczy na Waszą pomoc.

Wymagania:
+ {: .text-justify} Zamiłowanie do matematyki.
+ {: .text-justify} Pobierz i zainstaluj {% include common/foreign-link.html name='Ruby' url='https://www.ruby-lang.org/en/documentation/installation/' %}, język programowania, w którym powstało wiele startupów.
  Ruby jest darmowy i można w nim programować na różnych systemach operacyjnych.
  Składnia Ruby jest bardzo czytelna i ma niską barierę wejścia.
  Zapewniamy, że pokochacie język Ruby tak jak my.


----

### Wstęp do Unity3D

![Splashscreen z Unity]({{site.url}}/assets/images/unity/logo-black.png){: .align-center}

{: .text-justify}
We wcześniejszej serii zajęć zapoznaliśmy się z podstawami programowania obiektowego, od tworzenia pętli i instrukcji warunkowych, aż do tworzenia własnych metod oraz klas.
Nauczyliśmy się wykorzystywać różne rodzaje zmiennych oraz instancjonowanie obiektów.
Teraz zaczynamy nową tematykę.
Na kolejnych kilku zajęciach będziemy poznawać krok po kroku podstawy Unity3D.
Zajęcia poprowadzi **[game developer](https://fractalsoft.org/pl/zespol/lisu) Grzegorz**.

{: .text-justify}
Unity to silnik używany do tworzenia gier zarówno 2D jak i 3D.
Językiem wykorzystywanym do implementacji logiki w tym programie jest, już poznany przez Was na kilku poprzednich zajęciach z programowania, język C#.
Praca w Unity zapewnia nam wiele ułatwień, tak długo jak dostosowujemy się do sposobu pisania kodu wyznaczonego przez twórców silnika, możemy korzystać z dostarczonej obsługi klawiatury, dźwięku, grafiki oraz symulacji fizyki.

{: .text-justify}
Zajęcia rozpoczniemy od poznania interfejsu.
Zapoznamy się z importowaniem assetów i standardowych paczek.
Poznamy podstawowe komponenty.
Jednym z nich będzie komponent _Rigidbody_ odpowiadający za fizykę w grze.
Utworzymy prefabrykaty służące do ponownego używania tych samych elementów w grze.
Na końcu utworzymy naszą pierwszą klasę, która korzystając z fizyki gry pozwoli nam strzelać pre-fabrykantami lub wykrywać trafiony obiekt i wpływać na niego.

Wymagania:
+ {: .text-justify} Ściągnij i zainstaluj {% include common/foreign-link.html name='Unity3D' url='https://unity3d.com/get-unity/download' %} - silnik do tworzenia gier komputerowych.
  Zainstalowany silnik powinien być w wersji przynajmniej 2018.
  Przy pierwszym uruchomieniu należy wybrać wersję _personal_ aby używać tego narzędzia w wersji darmowej.


----

### Gdzie jest Python?

![Wąż pyton]({{site.url}}/assets/articles/2019-03-01/python-snake.jpg){: .align-center}

{: .text-justify}
Ostatnio zniknął Python, wielki wąż.
🐍
Możliwe, że dopadł go jakiś wirus.
Dlatego nie było mentora Darka.
🧔
Poszedł go szukać.
Mamy nadzieję, że go znalazł i przyprowadzi na zajęcia CoderDojo Gliwice.
A później nauczy Was jak programować takiego Pythona.

{: .text-justify}
Spodziewajcie się więc dużo wiedzy.
Pewnie starczyłoby jej na dwa osobne zajęcia.
Ale nie ma co się lenić.
Matura z informatyki już niedługo, a tam spotkacie Pythona.

Wymagania:
+ {: .text-justify} Pobierz i zainstaluj {% include common/foreign-link.html name='Pythona' url='https://www.python.org/downloads/' %} na dowolnej platformie i zupełnie za darmo.
  W Pythonie jest napisanych wiele popularnych aplikacji tj.
  DropBox,
  {% include common/foreign-link.html name='Instagram' url='https://www.instagram.com/fractalsoft/' %}
  czy
  {% include common/foreign-link.html name='YouTube' url='https://www.youtube.com/c/fractalsoft' %}.

----

{% include common/coderdojo--footer.html date='16.03.2019' %}

----
{% include common/footer--polish-text.html %}
