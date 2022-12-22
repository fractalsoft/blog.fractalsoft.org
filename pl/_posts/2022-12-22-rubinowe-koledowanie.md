---
author: ania
category: news
description: "Święta i programowanie, to zawsze można połączyć. Tym razem w muzycznym wydaniu."
excerpt: "Hej, kolęda, kolęda! 🎵 W programistycznym stylu, z klawiaturą ⌨️ w ręce wyczarowujemy świąteczną muzykę."
header:
  actions:
    - label: Święta pod znakiem pandemii
      url: /pl/swieta-pod-znakiem-pandemii/
    - label: Świrusowe Święta
      url: /pl/news/swirusowe-swieta/
  og_image: /assets/articles/2022-12-22/og_image.jpg
  overlay_image: /assets/articles/2022-12-22/header.jpg
  teaser: /assets/articles/2022-12-22/teaser.jpg
lang: pl
locale-ref: rubinowe-koledowanie
locale: pl
permalink: /pl/rubinowe-koledowanie/
title: Rubinowe kolędowanie
---

{: .text-justify}
Tradycyjnie, co roku, spotykamy się na naszym blogu, aby złożyć Wam Świąteczne Życzenia.
Nie mogło tego zabraknąć w 2022 roku.
🎄
🎁

{: .text-justify}
Z okazji Świąt życzymy Wam wytrwałości oraz siły tak potrzebnej w tych trudnych czasach.
Niech te dni wypełni pokój i radość, a także wiara w lepszą przyszłość.
Niech świąteczny duch zawita do każdego z Was i napełni te chwile najwspanialszymi wspomnieniami.
Aby świąteczny czas pozwolił na cieszenie się spotkaniami z tymi, których kochamy i którzy są dla nas ważni.
Dużo zdrowia, życzliwości i nadziei na lepszy Nowy Rok.
🎆
🍾

{: .text-justify}
A kiedy już zapadnie zmrok 🌃 i pojawi się pierwsza gwiazdka 🌟 zaśpiewajmy kolędy 🎙️... a może zagramy je programując?
🎼
💻

### Sonic Pi, czyli programowanie muzyki w Ruby

![Splashscreen z Sonic Pi]({{site.url}}/assets/images/sonic-pi/splashscreen.png){: .align-center}

{: .text-justify}
Zapraszamy Was do wspólnej zabawy z
{% include common/foreign-link.html name='Sonic Pi' url='https://sonic-pi.net/' %},
gdzie zaprogramujemy kolędy (i nie tylko).
Poza tym ta przygoda nie musi skończyć się po Świętach.
I mały, i duży może odkryć w sobie muzyka i programistę w jednym.
👩‍💻
👩‍🎤
Na pewno będzie to mile i kreatywnie spędzony czas.

{: .text-justify}
Dla mnie to pierwsza przygoda z Sonic Pi.
Do tego słoń 🐘 nadepnął mi na ucho. 👂
Śpiewam jak kot 😿 z przytrzaśniętym ogonem.
Jednak, nie spostrzegłam się, że spędziłam kilka godzin ⌛ bawiąc się muzyką i kodem.
Tak, tak, trochę kodu jest.

{: .text-justify}
Na pewno warto zapoznać się z tutorialem przygotowanym do tego, aby wprowadzić nas w tajniki programu.
I będzie to tylko wprowadzenie ponieważ Sonic Pi jest naprawdę rozbudowany i daje wiele możliwości.
Już posługując się podstawowym kodem można tworzyć muzykę.
To motywuje, bo nie czuje się frustracji braku efektu.
Co bardziej zdeterminowane osoby mogą podnosić sobie poprzeczkę i doskonalić swoją twórczość.
Mnogość możliwości na pewno Was nie znudzi i zapewni wiele kreatywnych wieczorów.

### Słów kilka wstępu

{: .text-justify}
Nie będę zagłębiać się w szczegóły, po co psuć zabawę.
😄
Chciałabym tylko napisać parę słów od siebie na temat programu i moich odczuć.
Mam nadzieję, że to Was zachęci do zapoznania się z Sonic Pi i spróbowania sił jako kompozytor oraz programista.

{: .text-justify}
Po uruchomieniu pojawia się okno programu.
<figure class='half1'>
  <a href='/assets/articles/2022-12-22/main-window.png'>
    <img src='/assets/articles/2022-12-22/main-window.png' alt='Okno główne programu'>
  </a>
</figure>

{: .text-justify}
Znajdziemy tam miejsce do pisania kodu, który będziemy uruchamiać.
Miejsce gdzie możemy prześledzić podstawowe informacje podczas odtwarzania muzyki, a nawet tutorial.
Wszystko w jednym.
👍
Dostępna opcja zapisania kodu do pliku tekstowego pozwoli na zachowanie każdej wersji naszej pracy.
Taki plik możemy potem załadować i pracować na nim dalej.
To co mi ułatwiło pracę, to możliwość przełączania zakładek do pisania kodu.
Do dyspozycji mamy dziewięć paneli, gdzie możemy pracować nad osobnym kodem i go odsłuchiwać.
Okazało się to przydatne, kiedy chciałam skupić się na mniejszym fragmencie i popróbować dodatkowych efektów.

{: .text-justify}
Moja podstawowa wersja prezentowała się następująco:
{% include common/post-image.html
           alt='Wersja podstawowa'
           image_name='/assets/articles/2022-12-22/plain-version'
%}
<br>
Tę wersję podzieliłam na dwa fragmenty i na pierwszym pracowałam w nowym okienku:
{% include common/post-image.html
           alt='Pierwsza zmiana'
           image_name='/assets/articles/2022-12-22/first-edit-version'
%}
<br>
A drugi fragment przerabiałam w kolejnym okienku:
{% include common/post-image.html
           alt='Druga zmiana'
           image_name='/assets/articles/2022-12-22/second-edit-version'
%}
<br>

{: .text-justify}
Na szczęście nie musimy pamiętać co gdzie mamy.
Można podpisywać swoje okienka dodając komentarze.

{% include common/post-image.html
           alt='Komentarz'
           image_name='/assets/articles/2022-12-22/comment'
%}
<br>

{: .text-justify}
Naszarezultat nie musi pozostać tylko dla nas.
Mamy możliwość nagrania pliku w domyślnym formacie wave lub podając odpowiednie rozszerzenie np. jako mp3.
W ten sposób swoją kompozycję można wysłać do innych, a osoby obdarowane mogą cieszyć się muzycznym upominkiem.

### Moja pierwsza kolęda w Ruby

{: .text-justify}
Postanowiłam spróbować sił w kolędzie.
💪
Najpierw zabrałam się za szukanie jak wyglądają kolędy w zapisie nutowym.
🎶
Chciałam poszukać 🔍 czegoś prostego, a jednocześnie taki utwór, który najbardziej lubię.
Tym sposobem wybór padł na "Przybieżeli do Betlejem".
Zaczęłam powoli od pojedynczych nut najprostrzej wersji.
♪
Kilka nut wpisałam jako kod i puściłam.
```ruby
use_synth :piano
play :C2
sleep 0.2
play :B2
sleep 0.2
play :C2
sleep 0.2
play :D2
sleep 0.3
play :E2
sleep 0.2
play :D2
sleep 0.2
play :E2
sleep 0.2
play :F2
```

{: .text-justify}
O rany, to brzmi podobnie - pomyślałam sobie.
😲
🥳
Zachęcona tym dopisałam pozostałe nuty.
🎵
🎶
I tak oto powstała najprostrza wersja zwrotki i refrenu kolędy.

{: .text-justify}
Potem zaczęłam eksperymetnować.
Tak zleciały kolejne godziny.
Czasami zmiana jest większa, czasami mniejsza.
Czasami byłam bardziej zadowolona, czasami mniej.
Jednak próbowałam dalej.
A oto efekt...

<audio controls>
  <source src='{{site.url}}/assets/gallery/2022-12-22/koleda.mp4' type='audio/mpeg'>
</audio>

### Podsumowując...

{: .text-justify}
To co w tym jest najlepsze, to ta ciekawość co wyjdzie.
Co mogę zmienić i jaki efekt dostanę?
Mimo, że dopiero odkrywam podstawy Sonic Pi, a moje programistyczne nutki są dość proste, to efekt końcowy cieszy.
Mogę dalej pracować i szukać lepszych rozwiązań.

{: .text-justify}
Polecam spróbować swoich sił z Sonic Pi, może u kogoś zamieni się to w prawdziwą pasję do tworzenia muzyki.
Trzymam za Was kciuki 🤞 i życzę wspaniałej zabawy.
Może nawet pochwalicie się rezultatami.

{: .text-justify}
A jeżeli Wasz zapał twórczy będzie większy niż możliwości komputera i będzie on potrzebował małej naprawy.
To nic się nie martwcie, w [**serwisie komputerowym w Cieszynie**](https://fractalsoft.org/pl/cieszyn) go naprawią (oczywiście po Nowym Roku).
🎅
❄️
⛄
