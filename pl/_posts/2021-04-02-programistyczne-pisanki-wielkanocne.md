---
author: ania
category: news
description: "Z okazji Wielkanocy mamy dla naszych czytelników małą niespodziankę. Co mają wspólnego pisanki z programowaniem? Jak bawią się programiści? Zobaczmy..."
excerpt: "Wielkanocne świętowanie może przynieść z sobą wiele niespodzianek. Co odkryjemy w tym roku? Siedząc w domu 🏠 również możemy ciekawie spędzić czas."
header:
  actions:
    - label: Wielkanocne wajca i świateczny hazok
      url: /pl/wielkanocne-wajca-i-swiateczny-hazok/
    - label: Wielkanoc z metodą Gaussa
      url: /news/2019/04/ruby-easter-date/
  og_image: /assets/articles/2021-04-02/easter-eggs.jpg
  overlay_filter: rgba(0, 0, 0, 0.3)
  overlay_image: assets/articles/2021-04-02/easter-eggs.jpg
  teaser: /assets/articles/2021-04-02/teaser.jpg
lang: pl
locale-ref: programistyczne-pisanki-wielkanocne
locale: pl
permalink: /pl/programistyczne-pisanki-wielkanocne/
title: Programistyczne pisanki wielkanocne
---

{: .text-justify}
Przed nami kolejne pandemiczne Święta, tak różne od tych jakie znamy i za jakimi tęsknimy.
😔

{: .text-justify}
Obostrzenia, lockdown, COVID-owe zasady towarzyszą nam od ponad roku.
Stały się częścią naszej codzienności.
Czas świąteczny jest dla nas szczególnie ciężki. 
Tęsknimy za spotkaniami z rodziną i przyjaciółmi. 
Wprawdzie nowoczesne technologie pozwalają nam pozostać w kontakcie, ale jednak brakuje nam bliskości drugiego człowieka.

{: .text-justify}
Pomimo tych niesprzyjających okoliczności chcemy złożyć Wam życzenia.
Odpoczynku od zgiełku codzienności oraz towarzyszącym im trosk.
Niegasnącej nadziei i wiary w lepsze jutro.
Pogody ducha i wiosennej radości każdego dnia.
Szczęśliwych, spokojnych, a przede wszystkim zdrowych Świąt Wielkanocnych.
Spędzonych w ciepłej i życzliwej atmosferze.

TL;DR: Wesołego Alleluja! 
🐣

----


## Wielkanocne zwyczaje

{: .text-justify}
Jedną z wielkanocnych tradycji jest poszukiwanie zajączka oraz schowanych przez niego prezentów.
🐇🎁
Zwyczaj ten przyszedł do nas z Niemiec.
Na początku popularny był na terenie Śląska oraz Wielkopolski. 
Następnie zaczął gościć również na Pomorzu. 
Chowano przede wszystkim pisanki 🥚 i kraszanki lub ich słodkie odpowiedniki.
🍬
🍭

{: .text-justify}
Okazuje się, że takie jajka wielkanocne możemy znaleźć również w programowaniu.
Tutaj występują pod angielską nazwą **easter eggs**.
Pełnia rolę niespodzianki i to dobrze ukrytej.


## Easter eggs

{: .text-justify}
Co to jest **easter eggs**?
To ukryte funkcje lub sekretne wiadomości jakie programiści umieszczają w kodzie. 
Można je znaleźć w aplikacjach, grach, na stronach internetowych czy nawet w filmach.
Nie są one oficjalnie udokumentowane i wiedzę o nich posiadają tylko wtajemniczeni.

{: .text-justify}
Kiedy zaczęła się tradycja **easter eggs**?
Dokładnie nie wiadomo, jednak wiemy kiedy pojawił się ten termin. 
Pojęcie to zaczęło funkcjonować w 1979 roku.
Wtedy to Warren Robinett, w grze Adventure, ukrył w sekretnym pokoju swoje imię i nazwisko.
Podpisał w ten sposób swoją pracę.

![Created by Warren Robinett](/assets/articles/2021-04-02/adventure-easter-egg.gif)

{: .text-justify}
I tak pojawiła się nowa tradycja, która trwa do dzisiaj.


## Programistyczne przykłady easter eggs

### Hello world 👋 🌍

{: .text-justify}
Z nauką programowania kojarzy się zwrot "[Hello World](/pl/programowanie/hello-world/)", który wyświetlamy na ekranie.
Developerzy Pythona ukryli opcję pozwalającą wywołać znane powitanie.
Wystarczy zaimportować bibliotekę hello, aby wyświetlić "Hello World!":
```python
>>> import __hello__
Hello world!
```

{: .text-justify}
Uwaga!
Przywitać się można tylko raz.
Ponownie skorzystać można tylko przy kolejnym uruchomieniu interpretera Pythona.


### Linuksowe Super Krowy 🐄

{: .text-justify}
System Linux również zawiera wiele ciekawych **easter eggs**.
Przykładowo, wpisując pod Ubuntu polecenie do zarządzania pakietami `apt-get`, dowiemy się że:
```shell
$ apt-get help
[...] Ten APT ma moce Super Krowy.
```

{: .text-justify}
Można skorzystać z tej mocy wykonując polecenie:
```shell
$ apt-get moo
```

{: .text-justify}
Super Krowa przybędzie...
Jedna z dwóch.

```shell
               _     _
              (_\___( \,
                )___   _  Have you smashed some milk today?
               /( (_)-(_)    /
    ,---------'         \_
  //(  ',__,'      \  (' ')
 //  )              '----'
 '' ; \     .--.  ,/
    | )',_,'----( ;
    ||| '''     '||
```

lub

```shell
                 (__) 
                 (oo) 
           /------\/ 
          / |    ||   
         *  /\---/\ 
            ~~   ~~   
..."Have you mooed today?"...
```


### Pomylony pociąg 🚂

{: .text-justify}
Czeskie błędy mogą zdarzyć się każdemu. 
Jeśli zamiast polecenia `ls` (lista plików) wpisujemy `sl`, to można dla małej rozrywki zainstalować pakiet `sl`.
W tym celu pod Ubuntu należy wywołać polecenie:
```shell
$ sudo apt install sl
```

{: .text-justify}
Teraz podczas pomyłki (komenda `sl`) pojawi się mknący pociąg.

```shell
                          (  ) (@@) ( )  (@)  ()    @@    O     @     O     @
                     (@@@)
                 (    )
              (@@@@)

            (   )
        ====        ________                ___________
    _D _|  |_______/        \__I_I_____===__|_________|
     |(_)---  |   H\________/ |   |        =|___ ___|      _________________
     /     |  |   H  |  |     |   |         ||_| |_||     _|                \___
    |      |  |   H  |__--------------------| [___] |   =|
    | ________|___H__/__|_____/[][]~\_______|       |   -|
    |/ |   |-----------I_____I [][] []  D   |=======|____|______________________
  __/ =| o |=-~~\  /~~\  /~~\  /~~\ ____Y___________|__|________________________
   |/-=|___|=O=====O=====O=====O   |_____/~\___/          |_D__D__D_|  |_D__D__D
    \_/      \__/  \__/  \__/  \__/      \_/               \_/   \_/    \_/   \
```


### Animowany rubinek 💎

{: .text-justify}
Nie zapomnieliśmy o miłośnikach języka Ruby.
Sami do nich należymy i na co dzień [programujemy w Ruby](https://fractalsoft.org/pl).
**Easter egg w Ruby** otrzymamy wpisując polecenie `RubyVM` i naciskając dwa razy klawisz `tab` w konsoli `irb`.
Drugim sposobem jest bezpośrednie wywołanie w interpreterze Ruby prywatnej metody `easter_egg`:

```ruby
> IRB.send :easter_egg
```

{: .text-justify}
W zależności od szczęścia można zobaczyć w ASCII art statyczny rubinek:

```
                                            -+smJYYN?mm-
                                   HB"BBYT            TQg  NggT
                              9Q+g       Nm,T      8g          NJW
                          YS+              N2NJ"Sg               N?
                       BQg                  #(  gT Nggggk          J
                     5j                     NJ    NJ            NNge
                  #Q                        #JJ     NgT            N(
                @j                          bj         mT           J
              Bj                           @/d           NJ         (
            #q                            #((              NgT     #J
           5d                            #(t                  mT   $d
         #q                             @(@J                    NJB;
        @(                             5d ? HHH H HQmgggggggmN    qD
       5d                            #uN  2QdH                   E O
      5                             5JSd  Nd  NJH               @d j
     Fd                           @J4d     s     NQH           #d  (
    #(                          #o6d       Nd       NgH       #d  #d
    4                         B&Od          v          NgT   #d   F
   #(                       9JGd            NH            NgUd    F
   #d                    #GJQ                d             NP     $
   #J                 #U+#Q                  N            Q #     j
  j /W             BQ+ BQ                     d             NJ   NJ
  - NjJH      HBIjTQggPJQgW                   N        W     k   #J
 #J  b  HYWgggN       j s    Nag               d     NN      b   #d
 #J  5-              D   s         Ngg         N    d        Nd  F
 Fd BKH2            #+    s             NNgg    J Q           J  ]
 F H @  J           N      y                   K(d            P  I
 F4  E  N?         #d       y                #Q   NJ          E  j
 F   W   Nd        q         m             Bg       NxW       N(H-
 F   d    b       @           m          Hd            gW      vKJ
 NJ  d     K      d            s      Bg                 aT    FDd
  b #       d    N              m  BQ                      mV  N>
   e5       Nd  #d              NggggggQWH HHHH              NJ -
    m7       NW H            N                        HSVO1z=?11-
      NgTH    bB        kH   WBHWWHBHWmQgg&gggggNNN
           NNggggggNN
```

lub animację tańczącego rubinka:

![Animacja Ruby Easter Egg](/assets/articles/2021-04-02/ruby-easter-egg.gif)

----

{: .text-justify}
Mamy nadzieję, że powyższe przykłady się spodobały i obudziły Waszą ciekawość.
Zachęcamy do własnych poszukiwań 🕵️ oraz życzymy pasjonujących odkryć **programistycznych pisanek**.
Jeżeli podczas zabawy komputer odmówi posłuszeństwa to zapraszamy serdecznie do 
[serwisu komputerowego w Cieszynie](https://fractalsoft.org/pl/cieszyn), 
ale to już po Świętach. 
💻

{: .text-justify}
Niech moc będzie z Wami!

<div style='background-color: #fff; width: 16%'>
  <img alt='Yoda'
       class='align-center'
       src='{{site.url}}/assets/images/yoda/yoda.svg'>
</div>

----
