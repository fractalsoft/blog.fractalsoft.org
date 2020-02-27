---
author: torrocus
category: community
description: "Spotkanie (11.02.2020) programistów Ruby w Gliwicach. Trzy prezentacje: Porady o PostgreSQL, developer vs designer, wypalenie zawodowe."
excerpt: Pierwszy, w 2020 roku 🎉, SRUG w Gliwicach, czyli **najlepsze spotkanie programistów Ruby** 💻💎 na Śląsku. ⛏️
header:
  og_image: /assets/articles/2020-02-05/og_image.png
  teaser: /assets/articles/2020-02-05/teaser.jpg
lang: pl
locale-ref: srug-1-2020
locale: pl
permalink: /pl/spolecznosc/srug-2020-01-gliwickie-spotkanie-programistow-ruby/
tags: [programming, event, professional]
title: Ruby Gliwice - SRUG 1.2020
---

{: .text-justify}
Gliwickie spotkania
[SRUG](https://fractalsoft.org/pl/spolecznosc/srug)
(Śląskiej Grupy Użytkowników języka Ruby) zawsze obfitowały w różnorodność tematów.
Od tematów bezpośrednio dotyczących **programistów Ruby** i **frameworku Ruby on Rails**,
aż po tematy miękkie i mniej techniczne.
Niezależnie od czasów, tematów i miejsca zawsze to było, jest i będzie darmowe spotkanie pasjonatów języka Ruby.

![Logo SRUG - Silesian Ruby Users Group]({{site.url}}/assets/images/srug/srug-logo.png){: .align-center}


{: .text-justify}
Wszystkich programistów i programistki, miłośników i sceptyków, profesjonalistów i hobbistów języka Ruby zapraszamy we wtorek (11.02.2020) o 18:00 na Rubiowe spotkanie w Gliwicach.
Tym razem spotkanie odbędzie się w Beer Brothers na Górnych Wałów 30.


## Tematy gliwickiego spotkania Ruby💎

{: .text-justify}
Tradycyjnie już spotkanie programistów Ruby w Gliwicach będzie składało się z trzech prezentacji oraz networkingu.
Poniżej programistyczne tematy, przydatne dla każdego, kto choć trochę liznął branżę:

+ {: .text-justify} _Postgres: Useful Tips_ - prezentacja różnych technik przydatnych w pracy z bazą danych **PostgreSQL** oraz wykorzystaniu ich w aplikacji opartej o **framework Ruby on Rails** z wykorzystaniem Active Record.
+ {: .text-justify} _Designer and Developer - One Goal, Different Paths_ - prezentacja o zawiłościach w pracy grafików oraz programistów (nie tylko języka Ruby oraz frameworku Ruby on Rails).
  Przedstawione zostaną **różnice w sposobach myślenia developera i designera**.
  Omówione zostaną narzędzia, których używają na co dzień.
  A na koniec nastąpi próba poprawy komunikacji pomiędzy programistami a designerami.
+ {: .text-justify#burnout} _Occupational Burnout Syndrome - How to still feel passion, even
  after years of programming?_ - prezentacja dot. trudnego tematu jakim jest
  **{% include common/friend-link.html name='wypalenie zawodowe' url='https://womanonrails.com/pl/occupational-burnout' %}**.
  Problem dotykający prędzej czy później każdego, nie tylko w branży IT.
  Przedstawione zostaną symptomy wypalenia zawodowego oraz jak sobie z nim poradzić.
  Tą prezentację przedstawi [Agnieszka, programistka](https://fractalsoft.org/pl/zespol/womanonrails),
  która na swoim technicznym blogu dokonała dokładnej analizy tematu **syndromu burnout** (ang. wypalić się).

{: .text-justify}
Jeśli tematy Wam się podobają (w co nie wątpimy), to przybywajcie na jedyne takie spotkanie programistów Ruby w Gliwicach, a nawet na całym Śląsku.
Zachęcamy do aktywnego uczestnictwa w spotkaniu i zawsze z miłą chęcią witamy nowe twarze.
🎤

----

## Po spotkaniu programistów Ruby

### Krótka relacja z Gliwic

{: .text-justify}
Kilkanaście osób (programistki i programiści) z niecierpliwością czekało na rozpoczęcie spotkania.
Przy okrągłych stolikach trwały jeszcze ostatnie rozmowy o Ruby, Railsach, JavaScript, Elixirze, Postgresie i innych technologiach.
Niektórych programistów nie widzieliśmy kilka miesięcy, a niektórych nawet kilka lat.
Zawsze jednak miło jest powspominać stare czasy oraz uaktualnić informacje kto się czym zajmuje.
Czasem jest to zmiana projektu albo firmy, a czasem nawet używanych technologii.
Najważniejsze jednak, że nawet jak ktoś przesiadł się na inną technologię to prędzej czy później wraca na nasze rubiowe spotkania do Gliwic.


#### Przydatne techniki w pracy z PostgreSQL-em

![Prezentacja Postgres Useful Tips](/assets/articles/2020-02-05/postgres-useful-tips.jpg)

{: .text-justify}
Meetup rozpoczęła prezentacja o PostgreSQL-u.
Temat może nie jest bezpośrednio związany z językiem Ruby, ale większość aplikacji pisanych w Ruby on Rails korzysta z bazy danych PostgreSQL.
W pierwszych minutach była mowa o nowej funkcjonalności, która pojawiła się w PostgreSQL 12, czyli o generowanych kolumnach (ang. generated columns).
Przykład użycia generated columns poniżej:

```sql
CREATE TABLE people (
  ...,
  height_cm NUMERIC,
  height_in NUMERIC GENERATED ALWAYS AS ( height_cm / 2.54 ) STORED
);
```

{: .text-justify}
Omówione zostały też ograniczenia (ang. constraint) nakładane na kolumny oraz porównanie ich do walidacji występujących w Ruby on Rails.

```sql
CREATE TABLE products (
  product_no integer,
  name text,
  price numeric CONSTRAINT positive_price CHECK (price >= 0)
);
```

{: .text-justify}
Kolejne rady polegały na stosowaniu "CONSTRAINT TRIGGER",
które umożliwiają uruchamianie funkcji w odpowiednich warunkach.
W wielu przypadkach pozwala to uniknąć wywołań typu Active Record Callbacks.

```sql
CREATE FUNCTION update_position()
  RETURNS trigger AS
$func$
BEGIN
  NEW.position := NEW.position + 1;
  RETURN NEW;
END
$func$ LANGUAGE plpgsql;

CREATE CONSTRAINT TRIGGER update_product_positions
AFTER INSERT OR UPDATE ON products
DEFERRABLE
FOR EACH ROW EXECUTE PROCEDURE update_position();
```

{: .text-justify}
Oczywiście nie obyło się na spotkaniu bez dyskusji wśród programistów rubiego na temat praktycznych zastosowań przedstawionych trików.
To właśnie ta część wymiany wiedzy oraz doświadczeń jest najcenniejsza.
Na koniec poruszona została sprawa czytelności i zrozumienia przez resztę zespołu tego typu zapisów.
Okazało się, że można w łatwy sposób tworzyć testy na bazę danych,
co w efekcie zwiększa czytelność i gwarantuje działanie wprowadzonych rozwiązań.
Polecane do tego narzędzie to pgTAP.
Poniżej prosta asercja (ang. assertion) w SQL-u:

```sql
-- Is the ultimate answer 42?
SELECT is( ultimate_answer(), 42, 'Meaning of Life' );
```

<figure class='third'>
  <a href='/assets/gallery/2020-02-11-srug/01-programisci-ruby-sluchaja-prezentacji.jpg'
     title=''>
    <img src='/assets/gallery/2020-02-11-srug/thumbs/01-programisci-ruby-sluchaja-prezentacji.jpg'
         alt='Programiści Ruby słuchają o przydatnych technikach w PostgreSQL-u'>
  </a>
  <a href='/assets/gallery/2020-02-11-srug/02-sandbox-w-railsach.jpg'
     title=''>
    <img src='/assets/gallery/2020-02-11-srug/thumbs/02-sandbox-w-railsach.jpg'
         alt='Omówienie jak uruchomić tryb Sandbox w Ruby on Rails'>
  </a>
  <a href='/assets/gallery/2020-02-11-srug/03-pgtap-do-testowania-postgresa.jpg'
     title=''>
    <img src='/assets/gallery/2020-02-11-srug/thumbs/03-pgtap-do-testowania-postgresa.jpg'
         alt='Slajd z API do pgTAP, narzędzie do testowania bazy danych'>
  </a>

  <figcaption>
    Przydatne techniki w pracy Postgresa i Ruby on Rails
  </figcaption>
</figure>


#### Jeden cel, różne ścieżki - grafik i programista

![Prezentacja Designer and Developer](/assets/articles/2020-02-05/designer-and-developer.jpg)

{: .text-justify}
Po krótkiej przerwie kolejna prezentacja dotyczyła procesu budowania aplikacji.
W przedstawionym przykładzie zespół deweloperski nie uczestniczył podczas określania wymagań (ang. requirements) klienta.
Dodatkowo designerzy przygotowywali projekty graficzne przedstawiające jedynie podstawowe widoki i nie określali szczegółowych zachowań aplikacji.
Powodowało to, że programiści często musieli dopytywać się jak powinien wyglądać projekt, ponieważ mieli zdefiniowaną tylko "zieloną ścieżkę" (ang. happy path).
Wielu programistów Ruby w Gliwicach była zaskoczona tym, że w dzisiejszych czasach (rok 2020) nadal można trafić na firmy / korporacje, które w tak toporny sposób podchodzą do tworzenia oprogramowania.
I nie chodzi tu wcale o to, aby wszyscy stosowali metodyki Agile, ale o zdroworozsądkowe podejście i planowanie.
Uważamy, że w określaniu wymagań aplikacji powinny uczestniczyć nie tylko osoby powiązane z biznesem, ale również osoby mocno techniczne, które będą w stanie pomóc biznesowi i zadać odpowiednie pytania.
Wspomniano również o narzędziu Zeplin.io, które ma służyć do współpracy pomiędzy designerami a developerami.
Poza tym jest wiele aplikacji pozwalających prototypować i tworzyć UI mockupy (Balsamiq, MockFlow, InVision czy open source'owy Pencil Project).

<figure class='third'>
  <a href='/assets/gallery/2020-02-11-srug/04-networking-na-srugu.jpg'
     title=''>
    <img src='/assets/gallery/2020-02-11-srug/thumbs/04-networking-na-srugu.jpg'
         alt='W przerwie pomiędzy prezentacjami odbywa się networking'>
  </a>
  <a href='/assets/gallery/2020-02-11-srug/05-designer-vs-developer.jpg'
     title=''>
    <img src='/assets/gallery/2020-02-11-srug/thumbs/05-designer-vs-developer.jpg'
         alt='Początek prezentacji Designer i Developer'>
  </a>
  <a href='/assets/gallery/2020-02-11-srug/06-narzedzie-zeplin.jpg'
     title=''>
    <img src='/assets/gallery/2020-02-11-srug/thumbs/06-narzedzie-zeplin.jpg'
         alt='Slajd z narzędziem Zeplin'>
  </a>

  <figcaption>
    Komunikacja między grafikami a programistami
  </figcaption>
</figure>


#### Jak czuć pasję po kilku latach programowania?

![Prezentacja Occupational Burnout Syndrome](/assets/articles/2020-02-05/occupational-burnout-syndrome.jpg)

{: .text-justify}
Ostatnia prezentacja poruszyła wszystkich.
Tuż przed rozpoczęciem kilku Ruby developerów z Gliwic i okolic zgłaszało się, że "to" mają.
Oczywiście "To" nie oznaczało powieści Stephena Kinga,
którą aktualnie kojarzyć można,
przez adaptacje filmową,
z czerwonym balonikiem.
🎈
W tym przypadku programiści Ruby poprzez "to" mieli na myśli wypalenie zawodowe i jego symptomy.
Zaskoczeniem dla większości było to, że syndrom wypalenia zawodowego nie jest uznawany za jednostkę chorobową.
Przedstawione zostały symptomy różnego typu (fizjologiczne, społeczne, intelektualne, emocjonalne, duchowe) po których można rozpoznać wypalenie u siebie.
Agnieszka omówiła krzywą stresu oraz czynniki zewnętrzne i wewnętrzne, które wpływają na poziom stresu.
Na koniec zaproponowanych zostało kilka sposobów na radzenie sobie ze stresem.
Temat ten wywołał dyskusję, w którą włączali się doświadczeni programiści jak i programiści z krótszym stażem zawodowym.
Prezentację można obejrzeć na stronie
{% include common/friend-link.html name='womanonrails.com/presentations' url='https://womanonrails.com/presentations/' %},
a link do artykułu w tym temacie podany został już <a href="#burnout">powyżej</a> w sekcji z tematami.

<figure class='third'>
  <a href='/assets/gallery/2020-02-11-srug/07-prezentacja-o-wypaleniu-zawodowym.jpg'
     title=''>
    <img src='/assets/gallery/2020-02-11-srug/thumbs/07-prezentacja-o-wypaleniu-zawodowym.jpg'
         alt='Agnieszka rozpoczyna prezentację o wypaleniu zawodowym'>
  </a>
  <a href='/assets/gallery/2020-02-11-srug/08-co-to-jest-wypalenie.jpg'
     title=''>
    <img src='/assets/gallery/2020-02-11-srug/thumbs/08-co-to-jest-wypalenie.jpg'
         alt='Omówienie czym jest wypalenie zawodowe'>
  </a>
  <a href='/assets/gallery/2020-02-11-srug/09-krzywa-stresu.jpg'
     title=''>
    <img src='/assets/gallery/2020-02-11-srug/thumbs/09-krzywa-stresu.jpg'
         alt='Slajd z krzywą stresu'>
  </a>
  <a href='/assets/gallery/2020-02-11-srug/10-woman-on-rails.jpg'
     title=''>
    <img src='/assets/gallery/2020-02-11-srug/thumbs/10-woman-on-rails.jpg'
         alt='Logo Agnieszki - Woman on Rails'>
  </a>

  <figcaption>
    Co to jest i jak zapobiegać wypaleniu zawodowemu?
  </figcaption>
</figure>


#### Networking

{: .text-justify}
Starym zwyczajem, po zakończeniu wszystkich prezentacji rozpoczął się upragniony networking.
Każdy programista
👨‍💻
lub programistka
👩‍💻,
a w szczególności programiści Ruby potrafią docenić ten moment.
Można na spokojnie wymieniać się doświadczeniami i zadać pytania prelegentom,
jeśli wcześniej nie miało się na to odwagi lub pomysłu.
Wszystkim, którzy byli na SRUG-u jeszcze raz dziękujemy i zapraszamy w imieniu całej społeczności Ruby w Gliwicach na kolejne spotkanie.

{% include common/information.html %}
