---
author: torrocus
category: coderdojo
description: "Tworzenie gier w C#, łamanie szyfrów (kryptografia), programowanie w Pythonie oraz zabawy Arduino - Zajęcia z programowania dla dzieci - CoderDojo Gliwice #4"
excerpt: "**Programowanie w Pythonie**. Szyfrowanie i deszyfrowanie wiadomości. **Programowanie gier** w języku C#. Oto kolejne zajęcia z programowania dla dzieci i młodzieży."
header:
  actions:
    - label: Programowanie gier w Unity
      url: /news/2019/01/programujemy-gry-game-jam-2018/
  caption: "Źródło: <a href='https://www.flickr.com/photos/groume/6326938044' rel='nofollow noopener noreferrer' target='_blank'>Flickr</a>"
  og_image: /assets/articles/2019-02-01/og_image.png
  overlay_filter: rgba(0, 0, 0, 0.5)
  overlay_image: assets/articles/2019-02-01/header.jpg
lang: pl
layout: single
tags: [programming, beginner, charity]
title: CoderDojo Gliwice - 2019-02
toc: true
toc_label: CoderDojo - 09.02.2019
---

{: .text-justify}
**CoderDojo Gliwice** zaprasza na kolejne programistyczne zajęcia.
Nieważne czy jesteś mały czy duży.
Nieważne ile masz lat.
Ważne, że chcesz się uczyć programowania i technologii.
{% include common/coderdojo--colorful-text.html %} to nie tylko **zajęcia z programowania dla dzieci / młodzieży**.
Tutaj uczysz się myślenia!
Dowiadujesz się jak zbudowany jest świat technologii.

{: .text-justify}
Na CoderDojo w Gliwicach zajmowaliśmy się już tyloma rzeczami z dziedziny IT, że aż trudno je zliczyć.
Było programowanie gier w RPG Makerze.
Tworzyliście muzykę (hymn Polski oraz kolędy) programując w języku Ruby.
Mieliście okazję poznać możliwości Arduino i budowaliście programy w C.
Na ostatnich zajęciach też nie próżnowaliście.

## Poprzednie zajęcia

{: .text-justify}
Krótkie przypomnienie tematyki ostatnich zajęć CoderDojo Gliwice oraz zdjęcia:
+ {: .text-justify} wprowadzenie do kryptografii - szyfrowania wiadomości
+ {: .text-justify} programowanie w Pythonie - struktury danych tj. listy, słowniki
+ {: .text-justify} programowanie gry w C# - gra w kółko i krzyżyk

Jakby co wszystko jest w artykule [CoderDojo Gliwice - 2019-01](/coderdojo/2019/01/coderdojo-gliwice/).

### Zdjęcia z CoderDojo Gliwice #3
<figure class='third'>
  <a href='/assets/gallery/2019-02-01/01.jpg'>
    <img src='/assets/gallery/2019-02-01/thumbs/01.jpg' alt=''>
  </a>
  <a href='/assets/gallery/2019-02-01/02.jpg'>
    <img src='/assets/gallery/2019-02-01/thumbs/02.jpg' alt=''>
  </a>
  <a href='/assets/gallery/2019-02-01/03.jpg'>
    <img src='/assets/gallery/2019-02-01/thumbs/03.jpg' alt=''>
  </a>
  <a href='/assets/gallery/2019-02-01/04.jpg'>
    <img src='/assets/gallery/2019-02-01/thumbs/04.jpg' alt=''>
  </a>
  <a href='/assets/gallery/2019-02-01/05.jpg'>
    <img src='/assets/gallery/2019-02-01/thumbs/05.jpg' alt=''>
  </a>
  <a href='/assets/gallery/2019-02-01/06.jpg'>
    <img src='/assets/gallery/2019-02-01/thumbs/06.jpg' alt=''>
  </a>
  <a href='/assets/gallery/2019-02-01/07.jpg'>
    <img src='/assets/gallery/2019-02-01/thumbs/07.jpg' alt=''>
  </a>
  <a href='/assets/gallery/2019-02-01/08.jpg'>
    <img src='/assets/gallery/2019-02-01/thumbs/08.jpg' alt=''>
  </a>
  <a href='/assets/gallery/2019-02-01/09.jpg'>
    <img src='/assets/gallery/2019-02-01/thumbs/09.jpg' alt=''>
  </a>
  <a href='/assets/gallery/2019-02-01/10.jpg'>
    <img src='/assets/gallery/2019-02-01/thumbs/10.jpg' alt=''>
  </a>
  <a href='/assets/gallery/2019-02-01/11.jpg'>
    <img src='/assets/gallery/2019-02-01/thumbs/11.jpg' alt=''>
  </a>
  <a href='/assets/gallery/2019-02-01/12.jpg'>
    <img src='/assets/gallery/2019-02-01/thumbs/12.jpg' alt=''>
  </a>
</figure>

## Tematy na CoderDojo Gliwice

### Gry czasu rzeczywistego w C#

{% include common/monodevelop--headline-image.html %}

{: .text-justify}
Czwarta część zajęć z **programowania w języku C#**.
Po świecie interaktywnej rozrywki oprowadzi Was **game developer Grzegorz**.
Na poprzednich zajęciach utworzyliśmy grę turową - kółko i krzyżyk.
Przy okazji poznaliście na czym polega tworzenie obiektów, pisanie metod oraz jak wykorzystywać tablice.
Na następnych zajęciach CoderDojo zapoznamy się z tworzeniem gier czasu rzeczywistego oraz pisaniem własnych klas.
:video_game:

{: .text-justify}
Zajęcia rozpoczniemy od powtórki. 
Przypomnimy sobie czym jest główna pętla gry.
Następnie zmodyfikujemy ją tak aby odpowiadała grze czasu rzeczywistego, a nie turowej. 
Utworzymy własne klasy odpowiadające za gracza, logikę gry oraz renderowanie. 
Grą, którą będziemy tworzyć na tych zajęciach będzie Snake.
:bug:

Wymagania:
+ {: .text-justify} Ściągnij i zainstaluj {% include common/foreign-link.html name='MonoDevelop' url='https://www.monodevelop.com/' %} - darmowe środowisko do programowania w C# i językach platformy .NET. Program dostępny jest na system Windows, Linux i Mac OS.

----

### Szyfry od postaw - tajne przez poufne

<img src='/assets/articles/2019-02-01/letters-frequencies.svg' alt='Wykres częstotliwości występowania liter' class='align-center'>

{: .text-justify}
Ostatnim razem programiści Agnieszka i Alek wprowadzili Was do tematu kryptografii.
Poznaliście bardzo podstawowe rodzaje szyfrów.
Były to szyfry podstawieniowe, czyli takie gdzie zamienia się jedne litery na inne.
Mieliście okazję szyfrować / rozszyfrowywać wiadomości używając szyfru Cezara oraz monoalfabetycznych szyfrów harcerskich z kluczem.
Jako klucze do szyfrowania użyliśmy:
- GA-DE-RY-PO-LU-KI
- PO-LI-TY-KA-RE-NU
- KO-NI-EC-MA-TU-RY

{: .text-justify}
Takie klucze można zbudować samemu lub znaleźć w Internecie.
Ważne jest to, aby litery w kluczu były unikatowe.
Aby lepiej zrozumieć na czym polegają te szyfry kodowaliśmy teksty na kartkach.
Następnie jak przystało na prawdziwych agentów wymienialiśmy się tajnymi wiadomościami i próbowaliśmy swoich sił w rozszyfrowywaniu.
Ręczne dekodowanie nie było łatwe.
Zwłaszcza jeżeli nie zna się klucza szyfrującego.
Oczywiście później cały proces kryptograficzny zautomatyzowaliśmy.
Powstały m.in takie proste skrypty w Ruby:
```ruby
# Klucze: GADERYPOLUKI | POLITYKARENU | KONIECMATURY
klucz = "GADERYPOLUKI"
tekst = "ZASZYFRUJ MNIE"
zaszyfrowany = ""

def szyfruj_litere(litera, klucz)
  indeks = klucz.index(litera)
  return litera unless indeks
  klucz[indes.even? ? indeks + 1 : indeks - 1]
end

tekst.each_char do |litera|
  zaszyfrowany << szyfruj_litere(litera, klucz)
end

puts zaszyfrowany
```

{: .text-justify}
Poznaliście również alfabet Morse'a.
Jego zastosowanie oraz sposoby nadawania.
Było ćwiczenie praktyczne z odczytywania wiadomości na odległość przy użyciu alfabetu Morse'a.
Niektórzy ninja napisali nawet programy zamieniające treść wiadomości na kropki i kreski.
A Ci co nie zdążli dostali zadanie domowe.
Jakbyście chcieli to alfabetu Morse'a możecie się nauczyć korzystając z {% include common/foreign-link.html name='aplikacji od Google' url='https://morse.withgoogle.com/learn/' %}.

{: .text-justify}
Przed nami kolejne, znacznie trudniejsze zajęcia.
Pamiętacie rozszyfrowanie wiadomości jak nie znaliście klucza?
Pokażemy Wam **podstawy kryptoanalizy statystycznej**.
Wiemy, że brzmi to strasznie, ale to zwykła matematyka.
W dodatku użyjemy do tego celu zwykłych ułamków (ewentualnie procentów) i obrazka zamieszczonego na początku tekstu o szyfrach.
Zobaczycie jak można łamać szyfry i dobrze się przy tym bawić.
:key:

Wymagania:
+ {: .text-justify} Podstawowa znajomość matematyki - ułamki
+ {: .text-justify} Dowolny kompilator / interpreter do języka programowania, który znacie i lubicie.
+ {: .text-justify} Zachęcamy do ściągnięcia i zainstalowania interpretera języka
{% include common/foreign-link.html name='Ruby' url='https://www.ruby-lang.org/en/documentation/installation/' %}. Nie pożałujecie, ponieważ Ruby jest łatwym do nauki i przyjemnym w czytaniu obiektowym językiem programowania. Sami zawodowo programujemy w Ruby.

----

### Python nie taki straszny, ale na maturze

{% include common/python--headline-image.html %}

{: .text-justify}
Zajęcia prowadzone przez mentora Darka :neckbeard: będą dotyczyły przede wszystkim programowania w Pythonie.
Podstawy tego języka ninja mają już za sobą.
Teraz czas na naprawdę trudne tematy.
Będą zadania maturalne z informatyki.
Ich rozwiązania będą realizowane przy użyciu Pythona.
Zapowiada się naprawdę ciężka praca!
Nie ma zmiłuj się.
:snake:

Wymagania:
+ {: .text-justify} Ściągnij i zainstaluj {% include common/foreign-link.html name='Pythona' url='https://www.python.org/downloads/' %} - dynamiczny, obiektowy język programowania. Python można uruchomić na różnych platformach i jest w pełni darmowy.

----

{: .text-justify}
Mamy nadzieję, że podobają Wam się tematy.
Nie bójcie się wyrażać swoich opini w komentarzach.
Jeżeli macie jakieś propozycje tematów to również napiszcie.
Chcemy aby CoderDojo w Gliwicach było najlepszym dojo w Polsce.

## Informacje organizacyjne

{: .text-justify}
Jeśli macie jakieś pytania organizacyjne to przeczytajcie proszę dział [FAQ - często zadawane pytania](/coderdojo/2018/11/coderdojo-gliwice/#faq-często-zadawane-pytania).

### Czas zajęć :alarm_clock:
_09.02.2019 (sobota) od 09:00 do 12:00_

### Miejsce zajęć :office:
{% include common/coderdojo--workshops-place.html %}

----
{% include common/footer--polish-text.html %}
