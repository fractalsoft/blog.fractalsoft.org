# https://sjp.pwn.pl/poradnia/haslo/;7072
alphabet = %w(a ą b c ć d e ę f g h i j k l ł m n ń o ó p q r s ś t u v w x y z ź ż)
number_of_letters = alphabet.count
frequency_of_letters=<<EOF
a	8.91%	  w	4.65%	  p	3.13%	  g	1.42%	  ć	0.40%
i	8.21%	  s	4.32%	  m	2.80%	  ę	1.11%	  f	0.30%
o	7.75%	  t	3.98%	  u	2.50%	  h	1.08%	  ń	0.20%
e	7.66%	  c	3.96%	  j	2.28%	  ą	0.99%	  q	0.14%
z	5.64%	  y	3.76%	  l	2.10%	  ó	0.85%	  ź	0.06%
n	5.52%	  k	3.51%	  ł	1.82%	  ż	0.83%	  v	0.04%
r	4.69%	  d	3.25%	  b	1.47%	  ś	0.66%	  x	0.02%
EOF
column_width = 20
image_width = 80 + column_width * number_of_letters
bar_color = '#abcdef'

data = Hash[*frequency_of_letters.strip.split(/\s+/)]

puts <<EOF
<?xml version="1.0" encoding="utf-8" standalone="no"?>
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="#{image_width}" height="360" x="0" y="0">
EOF

9.downto(0) do |i|
  puts "<line x1='0' y1='#{(9-i)*30+60}' x2='#{image_width}' y2='#{(9-i)*30+60}' stroke='grey' stroke-width='1' />"
  puts "<text x='30' y='#{(9-i)*30+55}' width='20' style='font-size:16px;text-anchor:middle;font-family:arial'>#{i}%</text>"
end

puts '<g transform="translate(60 -20)">'

alphabet.each_with_index do |letter, index|
  l = data[letter]
  x = column_width * index
  height = l.sub('%','').to_f * 100 * 0.3

  puts "<rect x='#{x}' y='#{350-height}' width='#{column_width}' height='#{height}' fill='#{bar_color}' stroke='black' stroke-width='1' />"
  puts "<text x='#{x+10}' y='370' width='#{column_width}' style='font-size:16px;text-anchor:middle;font-family:arial'>#{letter}</text>"
  puts "<text x='#{x}' y='#{350-height-45}' width='#{column_width}' height='10' style='font-size:16px;font-family:arial' transform='rotate(90 #{x} #{350-height-45}) translate(-4 -4)'>#{l}</text>"
end

puts '</g>'
puts '</svg>'

