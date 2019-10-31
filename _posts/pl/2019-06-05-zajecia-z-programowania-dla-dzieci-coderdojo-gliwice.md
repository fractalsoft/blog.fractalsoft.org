---
author: torrocus
category: coderdojo
description: "Klasy do sudoku w Ruby, sieci neuronowe w Pythonie, shadery w Unity - zajęcia z programowania dla dzieci - CoderDojo Gliwice #8"
excerpt: "**Sieci neuronowe** w Pythonie? Rozwiązywanie i generowanie sudoku przy użyciu **programowania obiektowego** w Ruby? **Shadery** w Unity? To tematyka zajęć dla dzieci."
header:
  actions:
    - label: Programowanie gier w Unity
      url: /news/2019/01/programujemy-gry-game-jam-2018/
  og_image: /assets/articles/2019-06-05/og_image.png
  overlay_filter: rgba(0, 0, 0, 0.5)
  overlay_image: /assets/articles/2019-06-05/header.svg
  teaser: /assets/articles/2019-06-05/teaser.jpg
lang: pl
layout: single
locale-ref: coderdojo-gliwice-8
locale: pl
permalink: /coderdojo/2019/06/zajecia-z-programowania-dla-dzieci-coderdojo-gliwice/
tags: [programming, beginner, charity]
title: Zajęcia z programowania dla dzieci - CoderDojo Gliwice - 2019-06
toc: true
toc_label: CoderDojo - 15.06.2019
---

{: .text-justify}
Cześć **młodzi programiści i programistki**.
Zgłaszam spóźnienie.
Ale nie Wasze, tylko nasze, a dokładnie moje, tego artykułu.
Dzisiaj _miał_ być Dzień Dziecka! (sic!)
🚸
To ważny dzień dla Was i dla nas.
Tak, tak, my też jesteśmy dziećmi.
Dowód?
Otóż tak jak Wy mamy swoich rodziców.
I dla nich jesteśmy dziećmi, chociaż dorosłymi.
Przypomina to trochę **dziedziczenie klas w programowaniu obiektowym**.
Zainteresowanych zapraszamy na [**wakacyjny kurs Ruby od postaw**]({{site.url}}/pl/szkolenia/rubycamp/).
Będziemy jeszcze informować o szczegółach.
Dlatego śledźcie naszego bloga, aby być na bieżąco i nie przegapić zapisów.
📅

## Poprzednie CoderDojo

{: .text-justify}
Jesteście ciekawi co się działo na poprzednich zajęciach CoderDojo w Gliwicach?

{: .text-justify}
Słyszycie muzyczkę w tle?
Jeśli nie to włączcie głośniki.
Zazwyczaj tego nie robimy, ale tym razem podpięliśmy ścieżkę dźwiękową do tego artykułu.
🎶
Jest to twórczość jednego ninja, który uczęszcza już kilka lat na CoderDojo.
Zrobił to przy pomocy programu FL Studio.
Na pewno kojarzycie Przemka.
Jeśli nie to podpowiemy Wam.
Na większości zdjęć Przemek albo się chowa albo zasłania ręką twarz.
Pozostawimy to bez komentarza, ale muzykę robi fajną.
Poniżej macie panel sterowania.

<audio autoplay controls loop>
  <source src='{{site.url}}/assets/gallery/2019-06-05/muzyka-w-fl-studio/teflux.mp4' type='audio/mpeg'>
</audio>

{: .text-justify}
Darek na zajęciach z Pythona odbiegł trochę od założonego tematu jakim była "Enkapsulacja klas".
Nie wolno mu?
A kto mu zabroni?
W końcu jest mentorem, a nawet ninja nadążał.
I to nie byle jaki ninja.
U nas ninja, a w Rybniku mentor CoderDojo.
To pozytywnie świadczy o poziomie naszego
{% include common/coderdojo--colorful-text.html %}.
Oboje zagłębili się w sieciach rekurencyjnych.
Przerobił **wstęp do statystyki**, w tym rozkłady, dopasowania, korelacje.
Czysta matematyka!
Oj jak to piękne brzmi dla naszych uszu.
🧮

{: .text-justify}
Grupę z programowania gier przejął tym razem Wojtek.
Temat dotyczył tworzenia animacji postaci w Blenderze.
Gratulujemy Wojtkowi pierwszego takiego doświadczenia.
Zajęcia poprowadził bardzo profesjonalnie.
👨‍🏫
Nawet Grzegorz jako mentor siadł i grzecznie wykonywał polecenia młodszego kolegi.
Poniżej macie dwie krótkie animacje powstałe podczas tych zajęć.
Jedna zamodelowana przez mentora Grzegorza, a druga przez Damiana - ninję.

<video width='640' height='480' controls controlsList='nodownload'>
  <source src='{{site.url}}/assets/gallery/2019-06-05/animacje-w-blenderze/postac-macha-lewa-reka.webm' type='video/webm'>
</video>

<video width='640' height='480' controls controlsList='nodownload'>
  <source src='{{site.url}}/assets/gallery/2019-06-05/animacje-w-blenderze/postac-macha-prawa-reka.webm' type='video/webm'>
</video>

{: .text-justify}
Agnieszka i Alek wraz z ninja nauczyli komputer grać w sudoku.
🎲
Od teraz ninja mogą zarówno generować sobie plansze sudoku jak i rozwiązywać je.
Opis algorytmu pozwolimy sobie zostawić na osobny artykuł dot. generowania i rozwiązywania sudoku.
Opiszemy w nim krok po kroku wszystkie metody, które napisaliśmy w języku Ruby.
Chcemy, abyście mogli wracać do tego tematu z własnymi pomysłami.

{% include gallery/coderdojo-7.html %}


## Tematy na CoderDojo Gliwice

### Shader graph w Unity - wprowadzenie

{% include common/lazy-image.html alt='Shader graph na przykładzie postaci' classes='align-center' url='/assets/articles/2019-06-05/shader-graph-postaci.jpg' %}

{: .text-justify}
Po intensywnej nauce tworzenia modeli 3D wrócimy do Unity, ale nie odejdziemy zbyt daleko od zagadnień graficznych.
Poznaliśmy już z czego zbudowane są obiekty 3D oraz jak wykorzystywać mapy UV by nałożyć na nie tekstury.
Na ostatnich zajęciach Wojtek pokazał nam wszystkim jak poruszać obiektem przy pomocy kości.

{: .text-justify}
Tym razem dowiemy się jak połączyć programowanie z grafiką 3D w postaci shaderów!
Przez skomplikowany świat programowania grafiki przeprowadzi Was [game developer Grzegorz](https://fractalsoft.org/pl/zespol/lisu).
🎮
Tworzenie shaderów zwykle jest bardzo skomplikowane, wymaga wiedzy o działaniu karty graficznej, znajomości jednego z języków programowania shaderów HLSL, CG lub GLSL.
Na szczęście z pomocą przychodzi nam silnik Unity3D.

{: .text-justify}
W nowszych wersjach Unity dostępne jest świeżutkie narzędzie do tego celu.
_Shader graph_ jest to narzędzie do wizualnego tworzenia shaderów.
Pozwala ono tworzyć nowe materiały oraz poznawać jak działa grafika 3D bez napisania chociażby jednej linii kodu.

{: .text-justify}
Pliki z modelami i teksturami zawierają bardzo dużo danych, ale ułożone są one w powtarzalne struktury.
Każdy wierzchołek (vertex) ma swój trójwymiarowy wektor z pozycją, bardzo często z koordynatami UV i innymi dostarczanymi przez nas danymi.
Tekstura składa się z kolejno podanych kolorów pikseli i wartości alfy.
Karty graficzne specjalizują się w przetwarzaniu właśnie tego typu danych gdzie informacji jest bardzo dużo, ale są one opisane taką samą strukturą i mogą być przetwarzane równolegle.
_Shadery_ są to małe programy przesyłane do karty graficznej, mówiące jej w jaki sposób należy przetworzyć dostarczone jej dane.

{: .text-justify}
Podczas zajęć zapoznacie się z podstawami tworzenia shadera.
Będziecie tworzyć różnorodne materiały.
Część będzie tworzona proceduralnie, inne oparte o tekstury, a jeszcze inne będziecie nawet animować.

Wymagania:
+ {: .text-justify} Do zgłębiania tajników renderowania grafiki 3D w czasie rzeczywistym przyda nam się silnik {% include common/foreign-link.html name='Unity3D' url='https://unity3d.com/get-unity/download' %} w wersji 2019.
Wiecie co robić.


----

### Sudoku w klasach

{% include common/lazy-image.html alt='Klasa w szkole' classes='align-center' url='/assets/articles/2019-06-05/klasa-do-sudoku.jpg' %}

{: .text-justify}
Tematem zajęć będzie Sudoku w klasach.
Część z Was zapewne wyobraża sobie, że na CoderDojo podzielimy się na klasy i będziemy grać w sudoku.
🏫
_Nic bardziej mylnego_ - jak mawia twórca kanału Polimaty.
Otóż skupimy się na tym, aby pozmieniać nasz kod źródłowy rozwiązujący i generujący sudoku.
Zastanowimy się jak podzielić grupy funkcji do różnych klas, a klasy pogrupować w modułach.
Nauczymy się, że są inne klasy niż tylko te, które znacie ze szkoły.
Nie będzie nudy z budy.
Mentorami będą:
- {: .text-justify} [Agnieszka](https://womanonrails.com/pl/) - **[programistka](https://fractalsoft.org/pl/zespol/womanonrails)**, która programowanie obiektowe ma w małym palcu,
- {: .text-justify} Alek - **[Ruby developer](https://fractalsoft.org/team/torrocus)**, pasjonat algorytmów i prostych rozwiązań.

{: .text-justify}
Zresztą nie trzeba ich przedstawiać.
No chyba, że nie byliście na wcześniejszych CoderDojo, to wtedy ich nie znacie.
Ej pozdro!
Kumają kumaci.

Wymagania:
+ {: .text-justify} Pasja do matematyki i uczestnictwo na poprzednich zajęciach z sudoku.
Wystarczy, że było się na jednych zajęciach.
Teraz będziemy refaktoryzować i optymalizować nasze rozwiązania.
+ {: .text-justify} Interpreter języka {% include common/foreign-link.html name='Ruby' url='https://www.ruby-lang.org/en/documentation/installation/' %}, ponieważ kod źródłowy w całym cyklu zajęć z sudoku został napisany w tym języku programowania.
💎


----

### Co w sieciach neuronowych piszczy?

{% include common/lazy-image.html alt='Sieć neuronowa' classes='align-center' url='/assets/articles/2019-06-05/neurony-w-sieci.jpg' %}

{: .text-justify}
Tak to jest, że im głębiej w las tym więcej zwierząt.
Już wyjaśniam moją myśl.
Przed Wami zajęcia z Pythona.
A Python to język programowania, ale nazwa podobna do pytona, takiego węża.
Będziecie się zajmować zagadnieniami deep learning, czyli uczeniem maszynowym, ale dosłownie oznacza to głęboka nauka.
Ostatnio używane było też narzędzie Anaconda Navigator.
Anakonda to kolejny wąż.
🐍
Jak tak dalej pójdzie to biologię w szkole zastąpi CoderDojo.
Ot taki zwierzyniec.

{: .text-justify}
Do zoo zaprasza **mentor Darek**.
Będzie matematyka i biologia.
Statystyka i neurony.
A wszystko po to, aby nauczyć komputer być bardziej ludzkim.

Wymagania:
+ {: .text-justify} Ściągnij i zainstaluj {% include common/foreign-link.html name='Pythona' url='https://www.python.org/downloads/' %} - język programowania, który doskonale nadaje się do implementacji sieci neuronowych oraz zagadnień uczenia maszynowego.

----

{% include common/coderdojo--footer.html date='15.06.2019' %}

----
{% include common/footer--polish-text.html %}
