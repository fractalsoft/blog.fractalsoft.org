---
category: programming
description: Witamy się ze światem, czyli nasz pierwszy post na blogu firmowym.
excerpt: Każdy programista kiedyś zaczynał i pisał najprostszy program wypisujący słowa "Hello world". Specjalnie dla Was, krótki eksperyment pamięciowy.
lang: pl
layout: single
tags: [programming, beginner]
title: Hello world w programowaniu
---

{: .text-justify}
**Hello world** - te dwa słowa to chyba najpopularniejszy tekst wypisywany na ekranach komputerów podczas nauki programowania.
My uczymy się cały czas. Jako programiści uczymy się nowych języków programowania i technologii.
A jako mentorzy uczymy innych jak programować. Dzięki temu uczymy się jak dobrze uczyć innych i jak robić to coraz lepiej.

{: .text-justify}
Przeprowadźmy mały eksperyment. Zobaczmy w ilu językach programowania potrafimy stworzyć program typu _Hello world_ nie korzystając z pomocy Google, Wikipedii czy Stackoverflow.
:unicorn:

Eksperyment czas zacząć...

```ruby
# Ruby
2.5.1 :001 > puts 'Hello world'
Hello world
```

```javascript
// JavaScript
console.log('Hello world');
Hello world
```

```python
# Python
>>> print 'Hello world'
Hello world
```

```perl
// Perl
print("Hello world\n");
Hello world
```

```bash
# bash
$ echo 'Hello world'
Hello world
```

```php
// PHP
<?php echo 'Hello world'; ?>
Hello world
```

```c
// ANSI C
// hello.c
#include <stdio.h>

int main() {
  printf("Hello world\n");
  return 0;
}

$ gcc hello.c -o hello
$ ./hello
Hello world
```

```cpp
// C++
// hello.cpp
#include <iostream>

main() {
  std::cout << "Hello world\n";
}

$ g++ hello.cpp -o hello
$ ./hello
Hello world
```

{: .text-justify}
I to by było na tyle. Ludzka pamięć jest zawodna. Pamiętamy te rzeczy, których używamy. Te mniej potrzebne usuwamy z naszej pamięci. Podobnie zachowują się komputery. Za taki mechanizm zwalniania pamięci w <strong>programowaniu</strong> odpowiada _garbage collector_. Ale to temat na zupełnie inny artykuł.
