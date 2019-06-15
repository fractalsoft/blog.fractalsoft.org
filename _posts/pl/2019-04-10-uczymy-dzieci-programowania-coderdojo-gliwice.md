---
author: torrocus
category: coderdojo
description: "Nie ma leniuchowania - ucz się programowania! Nauka Ruby i Pythona, modelowanie w Blenderze - Programowanie dla dzieci - CoderDojo Gliwice #6"
excerpt: "XML w **Pythonie**, modelowanie 3D w **Blenderze**, a może generator sudoku w **Ruby**? **Uczymy dzieci i młodzież programowania**, ale przede wszystkim uczymy myślenia."
header:
  actions:
    - label: Letnie zajęcia w Gliwicach
      url: /pl/szkolenia/rubycamp/
    - label: Programowanie gier w Unity
      url: /news/2019/01/programujemy-gry-game-jam-2018/
  og_image: /assets/articles/2019-04-10/og_image.png
  overlay_filter: rgba(0, 0, 0, 0.5)
  overlay_image: /assets/articles/2019-04-10/header.svg
locale-ref: coderdojo-gliwice-6
locale: pl
permalink: /coderdojo/2019/04/uczymy-dzieci-programowania-coderdojo-gliwice/
tags: [programming, beginner, charity]
title: Nauka programowania dla dzieci i młodzieży - CoderDojo Gliwice - 2019-04
toc: true
toc_label: CoderDojo - 13.04.2019
---

{: .text-justify}
Programowanie to umiejętność przydatna zarówno dla dzieci, młodzieży oraz dorosłych.
Dobry programista przede wszystkim myśli kreatywnie.
Stawiamy przed Wami kolejne wyzwania.
Zachęcamy do zapoznania się z tematami.
Przygotujcie się, bo zajęcia
{% include common/coderdojo--colorful-text.html %}
w Gliwicach zapowiadają się naprawdę ciekawie.
Oczywiście nie zostaniecie z tym wszystkim sami.
Jesteśmy tu po to, aby Was uczyć myśleć jak programiści.
🧠

## Poprzednie CoderDojo

{: .text-justify}
Krótkie przypomnienie tematyki ostatnich zajęć z programowania CoderDojo Gliwice:
+ {: .text-justify} programowanie deszyfratora - automatyzacja kryptoanalizy
+ {: .text-justify} programowanie gier w Unity
+ {: .text-justify} matura z informatyki w Pythonie

{: .text-justify}
Dokładniej opisaliśmy te tematy zajęć w artykule [CoderDojo Gliwice - 2019-03](/coderdojo/2019/03/coderdojo-gliwice/).

{% include common/lazy-image.html alt='Kryształy siarki' classes='align-center' url='/assets/articles/2019-04-10/siarka.jpg' %}

{: .text-justify}
Ale siara.
Tak mocno się zaangażowaliśmy w ostatnie zajęcia, że zapomnieliśmy o robieniu zdjęć w ich trakcie.
W ten oto sposób nie mamy Wam czego pokazać.
Chociaż zaraz, zaraz.
Przecież napisaliśmy trochę kodu źródłowego.
Zamiast zdjęć, będzie kod / kot.
🐈

{: .text-justify}
Na poprzednich zajęciach z kryptoanalizy grupa ninja zajmowała się [programowaniem deszyfratora](/coderdojo/2019/03/coderdojo-gliwice/#zaprogramuj-deszyfrator).
🕵️
Oto prosty skrypt, który wtedy powstał w języku Ruby.

```ruby
#!/usr/bin/env ruby
# frozen_string_literal: false

# Przykładowa zaszyfrowana wiadomość
input = %(
Hi rcb dsrfc, gndwsu n Yfowbm Rsgnqnckqck. Irozc aw gws
nzcyozwnckoq awsxgqs ikwsnwsbwo Boxkmngnsuc Rsgnqnckqo.
Bokwonozsa n bwaw ycbhoyh, ozs hfirbc psrnws wqv kmrcghoq
n ufcri Yfoyo. Hfnspo cdfoqckoq pofrnc rcpfm dzob iqwsqnyw.
)

ONE_LETTERS = %w[a i o u w z].freeze
TWO_LETTERS = %w[
  aż bo by iż ni że do ku na od po we za ze
  co se ja ty ci on mu go oń ją my wy im je
  ma mą me ów ta tę tą to te tu je ma są mi
].freeze

# Przykładowa funkcja szyfrująca / deszyfrująca
def crypt(character, code, start_character = 'a')
  return character unless ('a'..'z').cover? character

  start_number = start_character.ord
  number = character.ord - start_number + code
  number %= 26
  number += start_number
  number.chr
end

def list_of_n_letter_words(input, size)
  input.split(/[^\w]/).keep_if { |word| word.size == size }
end

# Generowanie wszystkich kombinacji rozwiązań
combinations = []
(1..26).each do |code|
  combinations[code] = ''
  input.downcase.each_char do |character|
    combinations[code] << crypt(character, code)
  end
end

# Eliminacja rozwiązań z wykorzystaniem słowników słów
results = combinations.map do |decrypted|
  next if decrypted.nil?

  one_letter_words = list_of_n_letter_words(decrypted, 1)
  one_letter_words -= ONE_LETTERS
  next unless one_letter_words.empty?

  two_letter_words = list_of_n_letter_words(decrypted, 2)
  two_letter_words -= TWO_LETTERS
  next unless two_letter_words.empty?

  decrypted
end.compact

puts 'Znalezione możliwe rozwiązania:'
results.each do |result|
  puts result
end
```

{: .text-justify}
Skrypt w Ruby działa.
Po uruchomieniu udało się odczytać jedną z tajnych wiadomości.
Don Pedro byłby zaskoczony.
😲
Ci co nie wiedzą o co chodzi widocznie nie przeczytali ze zrozumieniem poprzedniego tekstu na blogu.

```bash
$ ./decryptobox.rb
Znalezione możliwe rozwiązania:

tu don pedro, szpieg z krainy deszczowcow. udalo mi sie
zlokalizowac miejsce uwiezienia najwyzszego deszczowca.
nawiazalem z nimi kontakt, ale trudno bedzie ich wydostac
z grodu kraka. trzeba opracowac bardzo dobry plan ucieczki.
```


## Tematy na CoderDojo Gliwice

### Python w XML-u czy XML w Pythonie?

```xml
<?xml version="1.0" encoding="utf-8"?>
<python>
  <learning>programming</learning>
  <mentor>Darek</mentor>
</python>
```

{: .text-justify}
Matura z Pythona już niedługo.
Na szczęście nasi ninja pomyśleli o tym odpowiednio wcześnie i swoją maturę mają dopiero za rok.
To wcale nie oznacza, że będzie łatwo.
_Nie ma leniuchowania - ucz się programowania!_
Ta dewiza przyświeca naszemu **mentorowi Darkowi**.
🧔
Na ostatnim CoderDojo omawiane były struktury danych i generatory w Pythonie.
Dla przypomnienia generatory to rodzaj funkcji, które zachowują się jak iteratory.
Co to jest iterator?
Prosta sprawa, iterator to taki kursor.
W danej chwili może on wskazywać tylko jedno miejsce.
A więc widzimy tylko jedną daną z całej kolekcji lub listy.
Jest to więc dostęp sekwencyjny, wg. jakiegoś ścisłego porządku.
Jak się do tego mają generatory?
Otóż generatory mogą wstrzymać oraz wznawiać wywołanie metody zaczynając od miejsca wstrzymania.
To trochę taki czasowstrzymywacz.

{: .text-justify}
Co się pojawi na kolejnych zajęciach z nauki Pythona?
🐍
Tym razem programowanie w wężu sięgnie głębiej.
Spodziewajcie się zaawansowanych struktur danych.
Będziecie parsować dane XML oraz tworzyć nowe pliki XML.

Wymagania:
+ {: .text-justify} Ściągnij {% include common/foreign-link.html name='Pythona za ogon' url='https://www.python.org/downloads/' %} na swój komputer i zainstaluj go.
Python jest darmowy i może żyć w różnym środowisku (systemie operacyjnym).

----

### Tworzenie modeli 3D w Blenderze

{% include common/lazy-image.html alt='Blender kuchenny' classes='align-center' url='/assets/articles/2019-04-10/blender-kuchenny.jpg' %}

{: .text-justify}
Na poprzednich zajęciach zapoznaliśmy się z podstawami silnika Unity3D, nauczyliśmy się podstaw działania fizyki wewnątrz silnika oraz tworzenia skryptów C# działających w Unity.
Na najbliższych zajęciach poznamy podstawy tworzenia assetów 3D.
**[Programista](https://fractalsoft.org/pl/zespol/lisu) Grzegorz** zaprezentuje metody tworzenia obiektów trójwymiarowych przy użyciu narzędzia Blender.

{: .text-justify}
Blender jest to silnik trójwymiarowy pozwalający od początku do końca tworzyć zaawansowane modele 3D.
Przy użyciu tego narzędzia można zarówno modelować, teksturować, tworzyć animacje 3D, a nawet całe gry komputerowe.

{: .text-justify}
Przedstawione zostaną podstawowe pojęcia używane przy tworzeniu grafiki trójwymiarowej takie jak _vertex_, _edge_, _face_, _mesh_.
Utworzymy swój pierwszy obiekt 3D używając takich narzędzi jak _knife_ oraz _extrude_.
Nauczymy się jak wykonać _UV mapping modelu_ oraz nałożyć teksturę.
Poznamy czym są _shadery_ oraz jak je tworzyć i używać w _cycles renderer_.
Na koniec nauczymy się eksportować gotowy model.
Będzie można go używać w silniku Unity.

Wymagania:
+ {: .text-justify} Ściągnij i zainstaluj narzędzie {% include common/foreign-link.html name='Blender' url='https://www.blender.org/' %} - silnik pozwalający na tworzenie wszystkich elementów grafiki 3D.
+ {: .text-justify} Ściągnij i zainstaluj silnik do tworzenia gier {% include common/foreign-link.html name='Unity3D' url='https://unity3d.com/get-unity/download' %}.
Jeśli masz już Unity zainstalowany z poprzednich zajęć to sprawdź czy nie ma nowych aktualizacji.
Warto być na bieżąco.

----

### Zabawa w Sudoku

![Plansza sudoku](/assets/articles/2019-04-10/sudoku.svg){: .align-center}

{: .text-justify}
Co to jest sudoku?
Sudoku to japońska łamigłówka matematyczna.
Oryginalna pisownia to 数独.
Sūdoku jest skrótem od _**sū**ji wa **doku**shin ni kagiru_ i oznacza _cyfry muszą być pojedyncze_.
Gra polega na wypełnieniu pól cyframi od 1 do 9, ale przy zachowaniu pewnych warunków.
Główną zasadą sudoku jest to, aby w kwadratach 3 na 3 oraz wierszach i kolumnach dana cyfra występowała tylko raz.
Plansza do sudoku składa się z dziewięciu kwadratów 3 na 3, a więc wszystkich pól jest 9 na 9, czyli 81.
Dawniej sudoku można było spotkać pod nazwą "dziewięć na dziewięć".

{: .text-justify}
**[Programistka](https://fractalsoft.org/pl/zespol/womanonrails) [Agnieszka](https://womanonrails.com/pl/)** i **mentor Alek** pokażą Wam magiczne sposoby generowania własnych plansz sudoku.
🔮
Zanim to jednak nastąpi wytłumaczymy Wam zasady i samodzielnie spróbujecie rozwiązać jedno sudoku.
Poznacie prostą sztuczkę pozwalającą na zbudowanie nowej zagadki odpowiednio przestawiając wiersze i kolumny.
Będzie to pierwszy sposób na zaprogramowanie generatora sudoku.
Napiszecie również program "sprawdzacz".
Przyda się on do weryfikowania czy wygenerowana plansza spełnia założenia sudoku.
Następnym etapem będzie automatyzacja usuwania cyfr z rozwiązanej planszy sudoku.
Tą metodą również można uzyskać nową zagadkę do rozwiązania.
Ambitnych ninja zapraszamy do pracy nad algorytmem rozwiązującym sudoku.
Oczywiście poznane **algorytmy zaimplementujemy w Ruby**.
Od tego momentu sami będziecie mogli generować dowolną ilość łamigłówek sudoku.
Zobaczycie do czego przydaje się znajomość matematyki.
🧮


Wymagania:
+ {: .text-justify} Zamiłowanie do zagadek i matematyki.
+ {: .text-justify} Ściągnij i zainstaluj {% include common/foreign-link.html name='Ruby' url='https://www.ruby-lang.org/en/documentation/installation/' %} na swoim komputerze.
Ruby jest jak rubin, kamień szlachetny wśród języków programowania.
💎

----

{% include common/coderdojo--footer.html date='13.04.2019' %}

----
{% include common/footer--polish-text.html %}
