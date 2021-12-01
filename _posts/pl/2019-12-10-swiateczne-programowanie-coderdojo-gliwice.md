---
author: womanonrails
category: coderdojo
description: "Programowanie świątecznej choinki dla dzieci i młodzieży - CoderDojo Gliwice #9"
excerpt: "Wkrótce Święta, a my będziemy się przygotowywać do Świąt jak **prawdziwi programiści**. Zaprogramujemy własną choinkę. 🎄"
header:
  actions:
    - label: Dodatkowa nauka programowania - zapisy wkrótce
      url: '#'
  og_image: /assets/articles/2019-12-10/og_image.jpg
  overlay_color: "#015e7d"
  overlay_filter: rgba(0, 0.0, 0, 0.5)
  overlay_image: /assets/articles/2019-12-10/header.jpg
  teaser: /assets/articles/2019-12-10/teaser.jpg
lang: pl
locale-ref: coderdojo-gliwice-9
locale: pl
permalink: /pl/coderdojo/2019/12/swiateczne-programowanie-coderdojo-gliwice/
redirect_from: /coderdojo/2019/12/swiateczne-programowanie-coderdojo-gliwice/
tags: [programming, beginner, charity]
title: Świąteczne programowanie - CoderDojo Gliwice - 2019-12
toc: true
toc_label: CoderDojo - 14.12.2019
---

```ruby
3.times do
  puts "Coraz bliżej Święta!"
end
```

{: .text-justify}
W programistycznym stylu zapraszamy na kolejne zajęcia {% include common/coderdojo--colorful-text.html %} w Gliwicach.

{: .text-justify}
Zajęcia planujemy przeprowadzić w stylu projektowym.
Każdy indywidualnie będzie programował swoją choinkę.
Oczywiście wszystko odbywać się będzie pod czujnym okiem programistów oraz mentorów z [Fractal Soft](https://fractalsoft.org/pl).


## Przygotowanie do zajęć

{% include common/lazy-image.html alt='Wielka choinka w centrum Gliwic' classes='align-center' url='/assets/articles/2019-12-10/choinka-w-gliwicach.jpg' %}

{: .text-justify}
W wielkim skrócie oto jak możecie się przygotować na zajęcia CoderDojo:
+ {: .text-justify} rozejrzyjcie się za choinkami
+ {: .text-justify} zastanówcie się jak powinna wyglądać Wasza choinka
+ {: .text-justify} pomyślcie nad najprostszym algorytmem, który buduje taką choinkę
+ {: .text-justify} zapiszcie sobie jakie elementy choinki są dla Was istotne


{: .text-justify}
Pamiętajcie, że zawsze możecie zaprosić kolegów i koleżanki na zajęcia.


{: .text-justify}
Proszę pamiętać, że zajęcia odbywają się w centrum Gliwic.

{: .text-justify}
Prosimy Was o kliknięcie w ikonkę kciuka pod artykułem.
👍

{: .text-center}
**⬇️ Kliknij w kciuka ⬇️**

----

{% include common/coderdojo--footer.html date='14.12.2019' %}

----

## Nasze programistyczne choinki

{: .text-justify}
Już po zajęciach, ale chcemy się pochwalić jak wyszło nasze świąteczne programowanie.
Wszyscy mieli bardzo kreatywne pomysły.
Oczywiście zaczynaliśmy od najprostszych, aż po bardzo efektowne.


### Najprostsza choinka

{: .text-justify}
To jest najkrótszy kod programistycznej choinki.
Wszak choinka to choinka i może mieć różna formę, nie koniecznie wizualną.

```ruby
2.6.4 :001 > "choinka"
 => "choinka"
```


### Kod generujący choinkę (59 znaków)

{: .text-justify}
Najprostszą choinkę można zaprogramować w dosłownie jednej linijce.
Taki program ma tylko 59 znaków w języku Ruby.

```ruby
2.6.4 :002 > ((1..20).to_a+[7]*4).each{|i|puts ('*'*(i*2-1)).center(60)}
                             *
                            ***
                           *****
                          *******
                         *********
                        ***********
                       *************
                      ***************
                     *****************
                    *******************
                   *********************
                  ***********************
                 *************************
                ***************************
               *****************************
              *******************************
             *********************************
            ***********************************
           *************************************
          ***************************************
                       *************
                       *************
                       *************
                       *************
 => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 7, 7, 7, 7]
```


### Choinka ASCII z bombkami i łańcuchem

{: .text-justify}
W kolejnych iteracjach rozwijaliśmy ten najprostszy program do generowania choinki.
Dodawaliśmy ozdobne łańcuchy, różnego rodzaju bombki i inne zdobienia.
Świąteczne programowanie pełną parą.

{: .text-justify}
Kod w Ruby wymagał pewnych modyfikacji.
Jest może trochę bardziej rozbudowany, ale wciąż prosty do zrozumienia.

```ruby
class String
  def random_replace(character)
    random_position = rand(self.size)
    self[random_position] = character
    self
  end
end

((1..20).to_a+[5]*3).each do |i|
  width = i * 2 - 1
  line = ('x'*5 + '*').split('').sample*width
  bombs_counter = width / 2
  if bombs_counter > 0
    rand(bombs_counter).times {
      line = line.random_replace(['O', '$'].sample)
    }
  end
  puts line.center(60)
end
```

{: .text-justify}
A oto efekt uruchomienia.
Jest jeszcze bardziej świątecznie oraz tym bardziej programistycznie.
Takie nasze świąteczne programowanie.

```bash
$ ruby xmass_tree_ascii.rb
                             x
                            ***
                           $xxxx
                          $xxxxx$
                         x$$xxxOxx
                        ****$***O*$
                       Oxxxxxxx$x$xx
                      ***************
                     xxxxxxxxxxxxxxxxx
                    xx$$x$xxxOO$xxOxxxx
                   xxxxxxxxxxxxx$xxxxxxx
                  xx$xxxxxxx$$xxxOxxOOO$x
                 *************************
                xxxxxxxxxxxxxxxxxxxxxxxxxxx
               xxxxxOxxxxx$xxxxxxxxOxxxxxxxx
              xxxxxxxxxxxxxxxxxxxxxxxxOxxxxxx
             $xxxxOOxxxxOxx$$xx$xx$xxOxxxOxxxx
            xOxxxxxxxxxxxxxxxxxxxOxx$xxxxxxxxxx
           ***O*O*$O***********O***********$****
          ****O**$*$*$*****O$OO****$***$***O***$*
                         **O*O****
                         xxxxxOxx$
                         xxxxxxxxx
```


### Choinka Emoji

{: .text-justify}
Kolejne kroki doprowadziły nas do programu generującego choinkę za pomocą emoji.
Tu było programowania i zabawy co nie miara.


#### Co to są Emoji?

{: .text-justify}
Emoji to takie emotikony, ale przedstawiające różne przedmioty, rośliny, zwierzęta, miejsca.
Emoji mogą mieć inny wygląd na różnych systemach operacyjnych.


#### Efekt generowania choinki Emoji

{: .text-justify}
Nasza Emoji choinka wymaga małego wyjaśnienia.
Poprzednia choinka składała się ze znaków ASCII.
Każdy znak ASCII wyświetlony w konsoli będzie miał tą samą szerokość.
Nie ważne czy to będzie spacja " ", litera "i" czy litera "w".
Wszystkie te znaki zajmują tyle samo miejsca.

{: .text-justify}
Emoji jako, że przyjmują formę graficzą będą zajmowały różna szerokość.
Dlatego programując choinkę musieliśmy dobrać odpowiednie emoji.
Nasza choinka przede wszystkim składała się z choinek.
🎄
To taka mała rekurencja.
Na jej szczycie umieściliśmy gwiazdę.
⭐
Ozdobami były różne przedmioty tj.:
+ 💡 (lampki)
+ 💣 (bombki) - _bombek choinkowych nie znaleźliśmy_
+ 🎁 (prezenty)
+ 🍬 (cukierki)
+ 🎀 (kokardki)
+ ✨ (iskierki)
+ 🐈 (kotki) - _tak umieściliśmy kotki na choince_

{: .text-justify}
Jak powszechnie wiadomo porządna choinka potrzebuje mieć solidną podstawę.
My naszą oparliśmy o "Świat Dysku" Terrego Pratchetta.
Pień zbudowany został ze słoni stojących na żółwiach.
🐘
🐢


```
                              ⭐
                             🎄🎄
                            🎄✨🎄
                           🎀🎄🎄🎄
                            🎄🎄🎄
                           🎄🎄🎄🎄
                          🎄🎄🎄🎄🎁
                         ✨🎄🎄🎀🎄💡
                        🎄🎄🎄💡💡🎄🍬
                       🎄🎄💡🍬✨🎀🎄🎄
                         🎄🎄🎄💣💡🎁
                        🎄🎄🎄🎄🎄🎄🎄
                       🎄🐈🎄🎄🎄🐈🎄🎄
                      🎄🐈🎀🎄🎄✨🎁🎄🎄
                     🎄🎄🎄🎄🎄🎄🎄🎄💡🎄
                    🎄🎄🎄🎄🎄🎄🎄🎄💡🎄🎄
                   🎄🎁🎄🎄🎄🎄🎄💣✨🎄🎄🎄
                            🐘🐘🐘
                            🐘🐘🐘
🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢🐢
```

{: .text-justify}
Co więcej powyższą choinkę zaprogramowaliśmy jako prostą animację.
Oto kod źródłowy (nie jest piękny, ale tu chodzi o dobrą zabawę):

```ruby
LEAF   = '🎄'
BOMB   = '💣'
CANDY  = '🍬'
STAR   = '⭐'
HEART  = '❤️'
ROOT   = '🐘'
GIFT   = '🎁'
BOW    = '🎀'
GROUND = '🐢'
CAT = '🐈'
BULB = '💡'
POPPER = '🎉'
FLASHES = '✨'

class String
  def center_emoji(width)
    space = ' '*((width - self.size * 2) / 2)
    space + self
  end

  def random_replace(characters)
    random_position = rand(self.size)
    self[random_position] = characters.sample
    self
  end
end

height = 20
index = 1
direction = +1

100.times do
  print "\e[2J\e[f" # clear screen

  puts STAR.center_emoji(80 + index)

  [2..4, 3..8, 6..12].each do |range|
    range.each do |level|
      width = level
      line = (LEAF*width)
      rand(level / 2 + 1).times do
        line.random_replace(
          [BOMB, CANDY, GIFT, BOW, CAT, BULB, FLASHES]
        )
      end
      puts line.center_emoji(80 + index)
    end
  end

  ([3]*2).each do |level|
    puts (ROOT*level).center_emoji(80 + index)
  end

  puts GROUND*40

  sleep(1)
  index = index + direction
  direction = -1 if index > 10
  direction = +1 if index < 1
end
```

### Choinka Sierpińskiego

{: .text-justify}
Na koniec zajęć padło jeszcze ważne pytanie.
Czy można zaprogramować choinkę przy pomocy fraktali?
Jasne, że można.
Wręcz trzeba!
Oto nasze świąteczne programowanie w oparciu o trójkąt Sierpińskiego.
Najpierw zaimplementowaliśmy sam fraktal.
Następnie zamiast zwykłych znaków ASCII np. * (gwiazdek) użyliśmy emoji
🎄
(choinki).
Dodatkowo dorobiliśmy bombki w postaci
🎀
(czerwonych wstążek).
Czyż nie jest świątecznie i programistycznie?
Poniżej kolejny efekt świątecznego programowania.

```
$ ruby xmass_tree_sierpinski.rb
               🎄
              🎄🎄
             🎄  🎄
            🎄🎄🎀🎄
           🎄      🎄
          🎄🎄    🎄🎄
         🎄  🎄  🎄  🎄
        🎄🎄🎀🎄🎄🎄🎄🎀
       🎄              🎄
      🎄🎄            🎄🎄
     🎄  🎀          🎀  🎀
    🎄🎄🎄🎄        🎄🎄🎄🎄
   🎀      🎀      🎀      🎄
  🎄🎄    🎄🎄    🎄🎄    🎄🎄
 🎄  🎄  🎄  🎄  🎀  🎄  🎄  🎀
🎄🎀🎄🎄🎄🎄🎄🎄🎄🎄🎄🎄🎄🎄🎄🎄
```

----
{% include common/footer--polish-text.html %}
