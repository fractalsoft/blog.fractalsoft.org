---
author: torrocus
category: community
description: Lorem ipsum
excerpt: Programiści Ruby tworzą nie tylko dobre aplikacje, ale również wspaniałe lokalne społeczności. Rubiowców ze Śląska zapraszamy na SRUG-a. Więcej w artykule.
lang: pl
layout: single
tags: [programming, event, professional]
title: Ruby Gliwice - SRUG 3.2018
---

{: .text-justify}
SRUG to skrót od **Silesian Ruby Users Group**, czyli Śląskiej Grupy Użytkowników Rubiego.
Jest to lokalna społeczność miłośników języka Ruby działająca na terenie Śląska.
Celem SRUG-owych spotkań jest wymiana wiedzy oraz doświadczeń pomiędzy programistami z różnych, lokalnych firm.
Programiści przygotowują prezentacje dla innych programistów.
Uczymy się od siebie nawzajem.

![Logo SRUG - Silesian Ruby Users Group](/assets/images/srug/srug-logo.png){: .align-center}

{: .text-justify}
We wtorek, 13-tego listopada o 18:00 w Gliwicach odbędzie się trzecie w tym roku (2018) spotkanie Śląskiej Grupy Użytkowników Rubiego.
Serdecznie zapraszamy, ponieważ spotykamy się, o ile to możliwe, tylko raz na kwartał.
Więcej informacji o terminach oraz miejscach spotkań znajdziecie na oficjalnej stronie <a href='https://srug.pl/' rel='nofollow noopener' target='_blank'>SRUG-a</a>.

## Tematy na SRUG-u w Gliwicach

{: .text-justify}
+ _How to Never Let your Hands off the Keyboard_ - prezentacja o tym jak nie zdejmować rąk z klawiatury i zminimalizować użycie myszki komputerowej, trackballa, trackpada lub touchpada.
+ _Dry-Transaction - Co to?_ - prezentacja o bibliotece wspomagającej definiowanie i modelowanie złożonych transakcji biznesowych, które wymagają przetwarzania wielu kroków na wielu różnych obiektach. **dry-transaction** jest częścią kolekcji dry-rb.
+ _SVG for Developers, not Designers_ - prezentacja o otwartym formacie grafiki wektorowej **SVG** z punktu widzenia programisty, ale nie grafika.
  Tę prezentację przedstawi Alek.

{: .text-justify}
O prezentacji z _SVG dla programistów_ możemy powiedzieć nieco więcej, nie zdradzając jej treści.
Jeśli chcecie posłuchać musicie przyjść osobiście. :microphone:


## SVG for Developers, not Designers

![Logo SVG](/assets/images/svg/svg-logo.svg){: .align-center}

{: .text-justify}
Formaty graficzne zazwyczaj kojarzą nam się z designerami oraz grafikami.
Zakładamy, że aby stworzyć lub zmodyfikować jakiś obraz potrzebujemy mieć artystyczne zacięcie i dobrą znajomość programu graficznego.
Pliki SVG są jednak tak zbudowane, że może je stworzyć zarówno grafik, przy pomocy swoich graficznych narzędzi, jak i programista, przy pomocy zwykłego edytora.
Skoro można podglądać plik SVG w postaci tekstowej to na podstawie różnych przykładów i dokumentacji / specyfikacji formatu SVG można również nauczyć się łączyć te elementy.
Dokładając do tego umiejętności kodowania daje to możliwość generowania grafiki każdemu programiście.

{: .text-justify}
Wyobraźmy sobie, że potrzebujemy wykres słupkowy przedstawiający nasze dane z bazy w postaci graficznej.
Zazwyczaj sięgniemy od razu po jakąś bibliotekę w _JavaScript_.
Nie zawsze w projekcie trzeba dokładać kolejną bibliotekę.
Przecież każda nowa biblioteka w aplikacji tworzy zależność (dependency).
A to generuje koszty dla klienta w postaci czasu potrzebnego na aktualizację wersji, rozwiązywanie ewentualnych problemów pomiędzy różnymi bibliotekami, zwiększenie zajmowanej przez aplikację pamięci.
Do problemu możemy jednak podejść z innej strony.
Można wygenerować ten wykres jako plik SVG po stronie backendu w Ruby.
Przeglądarki od dawna obsługują ten format.
Pliki generowane po stronie backendu można cache'ować.
Jeśli chcemy zaoszczędzić na zapytaniach (request) to możemy plik SVG wrzucić bezpośrednio do HTML-a jako inline.
Nawet animację ładowania słupków można zaprogramować w SVG.

{: .text-justify}
Każde rozwiązanie ma swoje wady i zalety.
Format SVG jest doskonałym dopełnieniem do istniejących rozwiązań i warto rozważać jego użycie.
To do programistów należy obowiązek poznania alternatyw.
Klient nie powie nam jakiego rozwiązania potrzebuje, tylko przedstawi nam swój problem.
Programista odpowiedzialny jest za dobranie właściwego narzędzia do tego problemu.
Dlatego jeszcze raz zachęcamy Was do uczestnictwa na spotkaniu SRUG-a.

----
{% include common/footer--polish-text.html %}
