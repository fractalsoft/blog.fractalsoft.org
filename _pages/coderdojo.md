---
description: "CoderDojo w Gliwicach uczy dzieci i młodzież programowania, tworzenia gier w Unity, budowania robotów, projektowania modeli 3D w Blenderze i logicznego myślenia"
excerpt: "Jako mentorzy CoderDojo w Gliwicach działamy od 2014 roku. Nie tylko **uczymy programowania**, ale przede wszystkim **uczymy myślenia jak programista**. <br><br>Zawodowo zajmujemy się [tworzeniem aplikacji internetowych](https://fractalsoft.org/pl/), a na CoderDojo dzielimy się naszą wiedzą i doświadczeniem. <br><br>Na zajęciach CoderDojo poruszamy różne tematy z branży IT: **tworzenie gier w Unity**, budowanie robotów, algorytmika, modelowanie w Blenderze, **programowanie w Ruby**, tworzenie stron WWW, **programowanie w Pythonie**, uczenie maszynowe, krytografia i kryptoanaliza. <br><br>Pokazujemy, że matematyka i logiczne myślenie przydaje się w życiu. Uczymy praktycznych umiejętności zastosowania technologii. Pomagamy w sposób techniczny spełniać marzenia dzieci."
layout: collection
permalink: /coderdojo/
title: CoderDojo
header:
  overlay_color: '#4084c5'
  overlay_filter: rgba(0, 0, 0, 0.4)
  overlay_image: /assets/articles/2018-12-29/header.jpg
---

## CoderDojo Gliwice

{: .text-justify}
Oto nasze artykuły o CoderDojo w Gliwicach.
Znajdziecie w nich tematy wraz z opisami, daty i miejsca zajęć.

----
<div class='list'>
{% for post in site.categories.coderdojo %}
{% if post.url %}
  <div class='list__item'>
    <h2><a href='{{ post.url }}'>{{ post.title }}</a></h2>
    {{ post.excerpt | markdownify | replace: '<p>', "<p class='text-justify'>" }}
  </div>
{% endif %}
{% endfor %}
</div>
