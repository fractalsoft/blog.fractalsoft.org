---
author: torrocus
category: coderdojo
description: "Nauka programowania w Ruby i Pythonie oraz modelowanie postaci w Blenderze i jej animowanie - Programowanie dla dzieci i młodzieży - CoderDojo Gliwice #7"
excerpt: "Zaprogramujemy rozwiązywacz Sudoku w **Ruby**. Zamodelujemy postać i wprowadzimy ją w ruch w **Blenderze**. A w **Pythonie** zadbamy o klasy. Jesteście gotowi na wyzwania?"
header:
  actions:
    - label: Letnie zajęcia z programowania dla dzieci
      url: /pl/szkolenia/rubycamp/
    - label: Programowanie gier w Unity
      url: /news/2019/01/programujemy-gry-game-jam-2018/
  og_image: /assets/articles/2019-05-14/og_image.png
  overlay_filter: rgba(0, 0, 0, 0.5)
  overlay_image: /assets/articles/2019-05-14/header.svg
  teaser: /assets/articles/2019-05-14/teaser.jpg
locale-ref: coderdojo-gliwice-7
locale: pl
permalink: /coderdojo/2019/05/uczymy-dzieci-programowania-coderdojo-gliwice/
tags: [programming, beginner, charity]
title: Nauka programowania dla dzieci i młodzieży - CoderDojo Gliwice - 2019-05
toc: true
toc_label: CoderDojo - 18.05.2019
---

{: .text-justify}
Programowanie jest dla dzieci!
Programowanie jest dla młodzieży!
Programowanie jest dla dorosłych!
Programować można w każdym wieku.
Im wcześniej zaczyna się naukę programowania tym lepiej.
Ponieważ programowanie uczy logicznego myślenia.
A gdzie najlepiej uczyć się programowania?
To przecież oczywiste, że na naszych gliwickich zajęciach
{% include common/coderdojo--colorful-text.html %}.
Uczymy dzieci i młodzież myślenia jak programiści.
Technologie się zmieniają, umiejętność myślenia pozostanie.
🤔

## Poprzednie CoderDojo

{: .text-justify}
Krótkie podsumowanie poprzednich zajęć CoderDojo, czyli programowanie dla małych i dużych:
+ {: .text-justify} programowanie w Pythonie i machine learning
+ {: .text-justify} modelowanie obiektów 3D w Blenderze
+ {: .text-justify} tworzenie generatora plansz Sudoku w Ruby
+ {: .text-justify} nauka programowania ze Scotty Go
+ {: .text-justify} zabawa grafiką w Adobe Photoshop
+ {: .text-justify} hackowanie sterownika Fanuc 0i-MD
😜

{: .text-justify}
Po więcej szczegółów dot. tematów poprzednich zajęć CoderDojo sięgnijcie do posta [CoderDojo Gliwice - 2019-04]({{site.url}}/coderdojo/2019/04/uczymy-dzieci-programowania-coderdojo-gliwice/).

{: .text-justify}
Dodatkowo przeprowadziliśmy anonimową ankietę.
Chcieliśmy się dowiedzieć:
+ {: .text-justify} jak do nas trafiliście?
+ {: .text-justify} jak długo uczestniczycie w CoderDojo?
+ {: .text-justify} jak oceniacie nasze zajęcia i które się najbardziej podobają?
+ {: .text-justify} skąd dowiadujecie się o kolejnych spotkaniach i czy czytacie tego bloga?
+ {: .text-justify} jak często chcielibyście zajęcia z programowania?
+ {: .text-justify} co chcielibyście, abyśmy poprawili?

{: .text-justify}
Byliśmy pozytywnie zaskoczeni Waszymi odpowiedziami.
Okazuje się, że wszystkim podobają się zajęcia CoderDojo, niezależnie jak długo na nie uczęszcza.
📈
Ponadto część z Was chciałaby aby trwały one dłużej i odbywały się częściej, nawet wieczorami w tygodniu.

{: .text-justify}
Wiemy również, że nie wszyscy czytają naszego bloga.
Zachęcamy jednak abyście zapoznawali się z artykułami przed CoderDojo.
Pozwoli to Wam lepiej przygotować się na zajęcia.
Będziecie mogli wybrać interesujący Was temat i w domu zainstalować potrzebne oprogramowanie.
Przy okazji jest to sposób na wyeliminowanie trudności, że Internet wolno działa, bo taki problem też zgłaszaliście w ankietach.

{% include gallery/coderdojo-6.html %}


## Tematy na CoderDojo Gliwice

### Jak komputer gra w Sudoku?

![Rozwiązana plansza sudoku]({{site.url}}/assets/articles/2019-05-14/sudoku.svg){: .align-center}

{: .text-justify}
Na poprzednich zajęciach udało się zbudować generator plansz do sudoku.
Podstawowym założeniem było przerabianie gotowych sudoku poprzez zamianę ze sobą dwóch wierszy lub dwóch kolumn w obrębie kwadratu.
Poniżej kilka kawałków kodu w Ruby napisanych przez naszych ninja.

```ruby
sudoku = [
  [7, 3, 4, 8, 5, 9, 2, 1, 6],
  [8, 1, 9, 6, 7, 2, 4, 3, 5],
  [2, 5, 6, 1, 4, 3, 7, 9, 8],
  [3, 9, 8, 2, 1, 5, 6, 7, 4],
  [6, 4, 5, 7, 9, 8, 1, 2, 3],
  [1, 2, 7, 3, 6, 4, 8, 5, 9],
  [9, 7, 1, 5, 8, 6, 3, 4, 2],
  [5, 8, 2, 4, 3, 7, 9, 6, 1],
  [4, 6, 3, 9, 2, 1, 5, 8, 7]
]

def swap_rows(sudoku, from, to)
  row = sudoku[from]
  sudoku[from] = sudoku[to]
  sudoku[to] = row
  sudoku
end

def swap_columns(sudoku, from, to)
  column = sudoku.map { |row| row[from] }
  sudoku.each { |row| row[from] = row[to] }
  sudoku.each_with_index do |row, index|
    row[to] = column[index]
  end
  sudoku
end
```

{: .text-justify}
Powstały również metody do losowego usuwania zawartości pól w naszym generatorze sudoku.

```ruby
def random_position
  [rand(0..8), rand(0..8)]
end

def remove_cell(sudoku, count)
  count.times do
    x, y = random_position
    x, y = random_position while sudoku[x][y].nil?
    sudoku[x][y] = nil
  end
  sudoku
end
```

{: .text-justify}
Aby mieć pewność, że generowane sudoku wciąż spełnia założenia sudoku, czyli innymi słowy jest rozwiązywalne, postanowiliśmy zaimplementować metody walidujące.

```ruby
SQUARE_POSITIONS = [
  [0, 0], [0, 3], [0, 6],
  [3, 0], [3, 3], [3, 6],
  [6, 0], [6, 3], [6, 6]
].freeze

def valid_row?(sudoku, row_number)
  row = sudoku[row_number].compact
  row.uniq.size == row.size
end

def valid_column?(sudoku, column_number)
  column = sudoku.map { |row| row[column_number] }.compact
  column.uniq.size == column.size
end

def valid_square?(sudoku, row, column)
  square = sudoku[row..row + 2].flat_map do |item|
    item[column..column + 2]
  end.compact
  square.uniq.size == square.size
end

def valid_sudoku?(sudoku)
  (0..8).all? { |index| valid_row?(sudoku, index) } &&
    (0..8).all? { |index| valid_column?(sudoku, index) } &&
    SQUARE_POSITIONS.all? do |item|
      valid_square?(sudoku, item[0], item[1])
    end
end
```

{: .text-justify}
Powstała też metoda pomocnicza, służąca do zamiany macierzy liczb, jaką jest sudoku, na postać przyjazną człowiekowi.

```ruby
def to_string(sudoku)
  sudoku = sudoku.map { |row| row.map { |item| item.nil? ? ' ' : item } }
  rows = sudoku.map { |row|  row[0..2].join + '|' + row[3..5].join + '|' + row [6..8].join + "\n" }
  rows[0..2].join + ( '-' * 11 + "\n") + rows[3..5].join + ( '-' * 11 + "\n") + rows[6..8].join
end
```

{: .text-justify}
Wszystkie te metody powstały na zajęciach CoderDojo.
Ninja nie mieli więc zbyt wiele czasu nad ich dopracowaniem.
My, jako [zawodowi programiści Ruby](https://fractalsoft.org/pl) wiemy, że można ten kod jeszcze ulepszyć (refaktoring) i otestować.
💻

{: .text-justify}
Postanowiliśmy, że sudoku na dłużej zagości podczas nauki programowania w Ruby.
Ninja już doskonale wiedzą jak grać oraz jak generować planszę do sudoku.
Napisaliśmy też kod, który generuje planszę sudoku.
Jesteśmy więc w połowie drogi, aby maszyna nauczyła się tego co potrafi każdy nastolatek.
Przyszła pora nauczyć komputer grać w sudoku.
🎲

{: .text-justify}
Bez obawy, nie pozostaniecie z tym tematem sami.
Zaopiekują się Wami **[programistka rubiego](https://fractalsoft.org/pl/zespol/womanonrails) - [Agnieszka](https://womanonrails.com/pl/)** oraz **[developer Ruby](https://fractalsoft.org/team/torrocus) - Alek**.
Już nie możemy się doczekać, bo temat jest wciągający.
Mamy też małą niespodziankę.
Chcemy przygotować osobny artykuł o sudoku.
Opiszemy dokładnie jak my byśmy zaimplementowali generator sudoku oraz rozwiązywacz sudoku.
Będzie to mały wstęp do dodatkowych zajęć z programowania w Ruby.

Wymagania:
+ {: .text-justify} Pasja do zagadek matematycznych np. sudoku.
🧮
+ {: .text-justify} Wykop z głębokich czeluści kryształ o krwistoczerwonej barwie.
Niech {% include common/foreign-link.html name='Ruby' url='https://www.ruby-lang.org/en/documentation/installation/' %} zdobi Twój komputer.
💎

----

### Animacja postaci w Blenderze

{% include common/lazy-image.html alt='Modelowanie postaci' classes='align-center' url='/assets/articles/2019-05-14/postac-w-blenderze.jpg' %}

{: .text-justify}
Kto powiedział, że to [Grzegorz jako game developer](https://fractalsoft.org/pl/zespol/lisu) musi prowadzić zajęcia w grupe z tworzenia gier?
🎮
Zaskoczymy Was!
Przed Wami zajęcia CoderDojo, gdzie jeden z ninja zamieni się z Grzegorzem miejscami.
Ninja Wojtek przeobrazi się w mentora Wojtka.

{: .text-justify}
Pamiętacie blender z poprzednich zajęć tworzenia gier?
Blender jest to oprogramowanie do modelowania, renderowania obrazów oraz tworzenia animacji trójwymiarowych.
Blender jest w pełni kompleksowym narzędziem pozwalającym tworzyć zarówno całe krajobrazy jak i modele postaci.

{: .text-justify}
Na ostatnich zajęciach powstały pierwsze modele grafiki 3D.
🎨
Najpierw budowany był model krzesła.
Kolejnym modelem 3D była butelka z wodą.
Dużą frajdę sprawiało nakładanie na zamodelowane przedmioty tekstur w postaci zdjęć twarzy.
😂

<figure class='half'>
  <a href='/assets/gallery/2019-05-14/model-3d-krzesla.jpg'>
    <img src='/assets/gallery/2019-05-14/thumbs/model-3d-krzesla.jpg'
         alt='Trójwymiarowy model krzesła'>
  </a>
  <a href='/assets/gallery/2019-05-14/model-3d-butelki.jpg'>
    <img src='/assets/gallery/2019-05-14/thumbs/model-3d-butelki.jpg'
         alt='Trójwymiarowy model butelki z płynem'>
  </a>
  <figcaption>
    Ninja Damian podzielił się z nami swoimi wynikami.
  </figcaption>
</figure>

{: .text-justify}
Najbliższe zajęcia CoderDojo w Gliwicach będą poszerzały Wasze umiejętności posługiwania się silnikiem Blender3D.
Znacie już podstawy modelowania oraz teksturowania przy pomocy Blendera.
Wojtek przeprowadzi Was przez proces tworzenia postaci wraz z riggingiem.
_Rigging_ to przygotowanie trójwymiarowego modelu do późniejszego tworzenia animacji.

{: .text-justify}
Proces tworzenia postaci zaczniemy od budowania mesha prostej postaci typu _stick figure_ do której podepniemy _rig_, czyli zestaw kości wraz z wagami.
Poruszając tak połączonymi kośćmi pozwoli to Wam finalnie na poruszanie całą postacią.
W efekcie możliwe będzie utworzenie animacji chodzenia zbudowanej postaci.
🚶

Wymagania:
+ {: .text-justify} Przenieś {% include common/foreign-link.html name='Blender' url='https://www.blender.org/' %} z kuchni do pokoju...
_[5 minut później]_
Teraz odnieś go z powrotem.
To był tylko żart.
😉
Tak naprawdę po prostu zainstaluj sobie to świetne narzędzie do modelowania i animowania grafiki 3D.

----

### Enkapsulacja klas Pythona

<figure>
  <img alt='Jaja węża'
       class='align-center lazy'
       data-src='/assets/articles/2019-05-14/jaja-weza.jpg'
  >
  <figcaption>
    Co było pierwsze <strong>Python</strong> czy jajko?
  </figcaption>
</figure>

{: .text-justify}
Jak wiele programowanie i technologia czerpią z natury?
Przyjrzyjmy się takiemu wężowi jak pyton.
Samice pytonów składają jaja i opiekują się nimi aż do wyklucia.
🥚
To bardzo troskliwe i mądre zachowanie.

{: .text-justify}
Ale co ma do tego technologia?
Okazuje się, że z natury można zaczerpnąć pewne koncepcje.
Programując w Pythonie można budować klasy.
A klasy i obiekty to są elementy programowania obiektowego.
Jednym z założeń paradygmatu programowania obiektowego jest enkapsulacja, czyli hermetyzacja.
Chodzi o to, aby ukryć i ochronić wewnętrzną implementację klasy, czyli to jak klasa jest zbudowana.
Nie do wszystkich pól programista powinien mieć dostęp z zewnątrz.
Klasa jest więc jakby jajkiem.
A dostęp do tego co w środku jest poprzez publiczny interfejs, czyli metody które można wywoływać.
Przy pomocy Pythona programista musi dbać o to co jest w środku klasy.
Chodzi o to, aby nic nie naruszyło delikatne zbudowanego ekosystemu.
Widzicie analogię do jajek węża, którymi opiekuje się ten gad?

{: .text-justify}
O tym jak prawidłowo budować złożone typy danych tj. klasy oraz jak je enkapsulować opowie nasz **mentor Darek**.
🧔

Wymagania:
+ {: .text-justify} Zbuduj gniazdo dla swojego węża.
🐍
Pobierz i zainstaluj {% include common/foreign-link.html name='Pythona' url='https://www.python.org/downloads/' %} za darmo i w każdym środowisku.

----

{% include common/coderdojo--footer.html date='18.05.2019' %}

----
{% include common/footer--polish-text.html %}
