% Lily was here -- automatically converted by /usr/local/lilypond/usr/bin/midi2ly from Old_Father_Thames_1933.kar
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

trackAchannelA = {
  \key c \major
  \time 4/4 
  \tempo 4 = 109 
  % [MARKER] Old Father Thames 1933 Betsy O'Hogan & Raymond Wallace
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  \set Staff.instrumentName = "Soft karaoke"
  % [TEXT_EVENT] @KMIDI KARAOKE FILE
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
>>


words = \lyricmode {
  \\There's some folks who always worry,
  /And some folks who never care,
  \\But in this world of rush and hurry
  /It matters neither here nor there.
  \\Be steady and realistic,
  /Don't hanker for gold or gems,
  \\Be care~free and optimistic,
  /Like Old Father Thames.
  \\High in the hills,
  /Down in the dales,
  /Happy and fancy free,
  \\Old Father Thames keeps rolling along, 
  /Down to the mighty  sea. 
  \\What does he know, 
  /What does he care? 
  /Nothing for you or  me, 
  \\Old Father Thames keeps  rolling along, 
  /Down to the mighty  sea.
  \\He  never seems to  worry,
  /doesn't  care for Fortune's  fame,
  \\He  never seems to  hurry,
  /But he  gets there just the  same. 
  \\Kingdoms may come, 
  /Kingdoms may go, 
  /Whatever the end may  be, 
  \\Old Father Thames keeps  rolling along, 
  /Down to the mighty  sea. 
  \\High in the hills, 
  /Down in the dales, 
  /Happy and fancy  free, 
  \\Old Father Thames keeps  rolling along, 
  /Down to the mighty  sea. 
  \\What does he know, 
  /What does he care? 
  /Nothing for you or  me, 
  \\Old Father Thames keeps  rolling along, 
  /Down to the mighty  sea.
  \\He  never seems to  worry,
  /doesn't  care for Fortune's  fame,
  \\He  never seems to  hurry,
  /But he  gets there just the  same. 
  \\Kingdoms may come, 
  /Kingdoms may go, 
  /Whatever the end may  be, 
  \\Old Father Thames keeps  rolling along, 
  /Down to the mighty  sea.
  \\The  best way, a heaven  bless'd way,
  /Just  try to be always  kind,
  \\It  doesn't matter what the  rest say,
  /You're  bound to leave them far be hind.
  \\It's  your job to do your  duty,
  /Be  faithful to all your  friends,
  \\For  England and Home and  Beauty,
  /Like  Old Father  Thames. 
  \\High in the hills, 
  /Down in the dales, 
  /Happy and fancy  free, 
  \\Old Father Thames keeps  rolling along, 
  /Down to the mighty  sea. 
  \\What does he know, 
  /What does he care? 
  /Nothing for you or  me, 
  \\Old Father Thames keeps  rolling along, 
  /Down to the mighty  sea.
  \\He  never seems to  worry,
  /doesn't  care for Fortune's  fame,
  \\He  never seems to  hurry,
  /But he  gets there just the  same. 
  \\Kingdoms may come, 
  /Kingdoms may go, 
  /Whatever the end may  be, 
  \\Old Father Thames keeps  rolling along, 
  /Down to the mighty  sea. 
  \\High in the hills, 
  /Down in the dales, 
  /Happy and fancy  free, 
  \\Old Father Thames keeps  rolling along, 
  /Down to the mighty  sea. 
  \\What does he know, 
  /What does he care? 
  /Nothing for you or  me, 
  \\Old Father Thames keeps  rolling along, 
  /Down to the mighty  sea.
  \\He  never seems to  worry,
  /doesn't  care for Fortune's  fame,
  \\He  never seems to  hurry,
  /But he  gets there just the  same. 
  \\Kingdoms may come, 
  /Kingdoms may go, 
  /Whatever the end may  be, 
  \\Old Father Thames keeps  rolling along,
  /Down to the mighty   sea.
}

trackDchannelA = {
  
  \set Staff.instrumentName = "piano"
  
}

trebleacc = \relative c {
  \voiceThree
  r1 
  | % 2
  <c' g e >4 c8. e16 <g e c >4 <c, e, g > 
  | % 3
  <f f, a > f8. a16 <fis c >4 <fis c > 
  | % 4
  <c' c, e > g8. c16 <f,, g, d'' a' >4 <g b' d, g,, > 
  | % 5
  <c,, c' > g' <c'' g' g,,, e' c, e''' c' > <e, gis, e, d' d' > 
  | % 6
  <a e a,, c' a e > <a, c e a,, e' > <a a, c' e e, > b'8. gis16 
  | % 7
  <a e e, c' a a, >4 <a, a, e' c' e > <a c e a,, e' > <e' gis, e, b' d' > 
  | % 8
  <a e c > <e c > <e c > b'8. gis16 
  | % 9
  <a e c >4 <e c > <e c > <g f b, > 
  | % 10
  <c g e > <g e > <g e > d'8. b16 
  | % 11
  <g e >4 <g e > <g e > <e' c e, g > 
  | % 12
  <d b >8. <c a >16 <b g >8. <a f >16 <g e >4 <f d > 
  | % 13
  <e c a > <c a > <c a > <c' a e c > 
  | % 14
  b8. a16 g8. r16 <e b g >4 <dis fis, b > 
  | % 15
  <c g > <c g > <b gis > <e d gis, > 
  | % 16
  <a e c > <e c > <e c > b'8. gis16 
  | % 17
  <a e c >4 <e c > <e c > <g f b, > 
  | % 18
  <c e, g > <e, g > <e g > d'8. b16 
  | % 19
  <g e >4 <e g > <g e > <c g e > 
  | % 20
  <d d, fis a > <a d, fis > <a fis d > b8. ais16 
  | % 21
  <b g d >4 <b, g > <gis e > <dis' gis, e > 
  | % 22
  <e cis g > <g c, > <c, fis > <b' c, fis > 
  | % 23
  d,, <c' e, > d dis 
  | % 24
  <g e c > g8. r16 <e c >4 <e c > 
  | % 25
  <f d a > f8. r16 <b b, >8. a16 <g b, >4*40/120 fis f 
  | % 26
  <e c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 27
  <c, fis, > <c fis, > <b f > <b f > 
  | % 28
  <c g e > c8. e16 <g e c >4 <c, g e > 
  | % 29
  <f c a > f8. a16 <f c >4 <f c > 
  | % 30
  <c' e, c > g8. r16 <b fis c >4 <b fis c > 
  | % 31
  b, <f' b, a > <e b g > <d f, b > 
  | % 32
  <g e c > g8. r16 <e c >4 <e c > 
  | % 33
  <f d a > f8. r16 <b b, >8. a16 <g b, >4*40/120 fis f 
  | % 34
  <e c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 35
  <c, fis, > <c fis, > <b f > <b f > 
  | % 36
  <c g e > c8. e16 <g e c >4 <c, g e > 
  | % 37
  <f c a > f8. a16 <f c >4 <f c > 
  | % 38
  <c' e, c > g8. r16 <g f a, >4 <g b, f' > 
  | % 39
  <c,, c, > g8. g16 c,4 <c''' c, > 
  | % 40
  <d d, >4. <c c, >8 <d d, >4. <c c, >8 
  | % 41
  <d d, >4 <d d, >2 <e e, >8. <d d, >16 
  | % 42
  d4 c e, b' 
  | % 43
  <e, c > <e c > <e c > <ais e c > 
  | % 44
  <fis d > <fis d > <fis d > <fis d > 
  | % 45
  <b dis, fis > <dis, fis > <dis fis > a'8. fis16 
  | % 46
  <g e b >4 <g b, > <a f c > <c c, a' > 
  | % 47
  <b f > <a, f' g b, > <g e' g b, > <g' b, f d' > 
  | % 48
  <g e c > g8. r16 <e c >4 <e c > 
  | % 49
  <f d a > f8. r16 <b b, >8. a16 <g b, >4*40/120 fis f 
  | % 50
  <e c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 51
  <c, fis, > <c fis, > <b f > <b f > 
  | % 52
  <c g e > c8. e16 <g e c >4 <c, g e > 
  | % 53
  <f c a > f8. a16 <f c >4 <f c > 
  | % 54
  <c' e, c > g8. c16 <a d, g,, f' >4 <b g, g, d'' > 
  | % 55
  <c c,,, e'' g c,, > <b d, f > <a c, f > <g,, f'' gis b, > 
  | % 56
  <g'' e c > g8. r16 <e c >4 <e c > 
  | % 57
  <f d a > f8. r16 <b b, >8. a16 <g b, >4*40/120 fis f 
  | % 58
  <e c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 59
  <c, fis, > <c fis, > <b f > <b f > 
  | % 60
  <c g e > c8. e16 <g e c >4 <c, g e > 
  | % 61
  <f c a > f8. a16 <f c >4 <f c > 
  | % 62
  <c' e, c > g8. r16 <b fis c >4 <b fis c > 
  | % 63
  b, <f' b, a > <e b g > <d f, b > 
  | % 64
  <g e c > g8. r16 <e c >4 <e c > 
  | % 65
  <f d a > f8. r16 <b b, >8. a16 <g b, >4*40/120 fis f 
  | % 66
  <e c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 67
  <c, fis, > <c fis, > <b f > <b f > 
  | % 68
  <c g e > c8. e16 <g e c >4 <c, g e > 
  | % 69
  <f c a > f8. a16 <f c >4 <f c > 
  | % 70
  <c' e, c > g8. r16 <g f a, >4 <g b, f' > 
  | % 71
  <c,, c, > g8. g16 c,4 <c''' c, > 
  | % 72
  <d d, >4. <c c, >8 <d d, >4. <c c, >8 
  | % 73
  <d d, >4 <d d, >2 <e e, >8. <d d, >16 
  | % 74
  d4 c e, b' 
  | % 75
  <e, c > <e c > <e c > <ais e c > 
  | % 76
  <fis d > <fis d > <fis d > <fis d > 
  | % 77
  <b dis, fis > <dis, fis > <dis fis > a'8. fis16 
  | % 78
  <g e b >4 <g b, > <a f c > <c c, a' > 
  | % 79
  <b f > <a, f' g b, > <g e' g b, > <g' b, f d' > 
  | % 80
  <g e c > g8. r16 <e c >4 <e c > 
  | % 81
  <f d a > f8. r16 <b b, >8. a16 <g b, >4*40/120 fis f 
  | % 82
  <e c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 83
  <c, fis, > <c fis, > <b f > <b f > 
  | % 84
  <c g e > c8. e16 <g e c >4 <c, g e > 
  | % 85
  <f c a > f8. a16 <f c >4 <f c > 
  | % 86
  <c' e, c > g8. c16 <a d, g,, f' >4 <b g, g, d'' > 
  | % 87
  <c,, c, > g <e' c, g'''' e c' g,,, c'' > <e' gis, e, b' d' > 
  | % 88
  <a e a,, c' a e > <a, c e a,, e' > <a a, c' e e, > b'8. gis16 
  | % 89
  <a e e, c' a a, >4 <a, a, e' c' e > <a c e a,, e' > <e' gis, e, b' d' > 
  | % 90
  <a e c > <e c > <e c > b'8. gis16 
  | % 91
  <a e c >4 <e c > <e c > <g f b, > 
  | % 92
  <c g e > <g e > <g e > d'8. b16 
  | % 93
  <g e >4 <g e > <g e > <e' c e, g > 
  | % 94
  <d b >8. <c a >16 <b g >8. <a f >16 <g e >4 <f d > 
  | % 95
  <e c a > <c a > <c a > <c' a e c > 
  | % 96
  b8. a16 g8. r16 <e b g >4 <dis fis, b > 
  | % 97
  <c g > <c g > <b gis > <e d gis, > 
  | % 98
  <a e c > <e c > <e c > b'8. gis16 
  | % 99
  <a e c >4 <e c > <e c > <g f b, > 
  | % 100
  <c e, g > <e, g > <e g > d'8. b16 
  | % 101
  <g e >4 <e g > <g e > <c g e > 
  | % 102
  <d d, fis a > <a d, fis > <a fis d > b8. ais16 
  | % 103
  <b g d >4 <b, g > <gis e > <dis' gis, e > 
  | % 104
  <e cis g > <g c, > <c, fis > <b' c, fis > 
  | % 105
  d,, <c' e, > d dis 
  | % 106
  <g e c > g8. r16 <e c >4 <e c > 
  | % 107
  <f d a > f8. r16 <b b, >8. a16 <g b, >4*40/120 fis f 
  | % 108
  <e c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 109
  <c, fis, > <c fis, > <b f > <b f > 
  | % 110
  <c g e > c8. e16 <g e c >4 <c, g e > 
  | % 111
  <f c a > f8. a16 <f c >4 <f c > 
  | % 112
  <c' e, c > g8. r16 <b fis c >4 <b fis c > 
  | % 113
  b, <f' b, a > <e b g > <d f, b > 
  | % 114
  <g e c > g8. r16 <e c >4 <e c > 
  | % 115
  <f d a > f8. r16 <b b, >8. a16 <g b, >4*40/120 fis f 
  | % 116
  <e c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 117
  <c, fis, > <c fis, > <b f > <b f > 
  | % 118
  <c g e > c8. e16 <g e c >4 <c, g e > 
  | % 119
  <f c a > f8. a16 <f c >4 <f c > 
  | % 120
  <c' e, c > g8. r16 <g f a, >4 <g b, f' > 
  | % 121
  <c,, c, > g8. g16 c,4 <c''' c, > 
  | % 122
  <d d, >4. <c c, >8 <d d, >4. <c c, >8 
  | % 123
  <d d, >4 <d d, >2 <e e, >8. <d d, >16 
  | % 124
  d4 c e, b' 
  | % 125
  <e, c > <e c > <e c > <ais e c > 
  | % 126
  <fis d > <fis d > <fis d > <fis d > 
  | % 127
  <b dis, fis > <dis, fis > <dis fis > a'8. fis16 
  | % 128
  <g e b >4 <g b, > <a f c > <c c, a' > 
  | % 129
  <b f > <a, f' g b, > <g e' g b, > <g' b, f d' > 
  | % 130
  <g e c > g8. r16 <e c >4 <e c > 
  | % 131
  <f d a > f8. r16 <b b, >8. a16 <g b, >4*40/120 fis f 
  | % 132
  <e c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 133
  <c, fis, > <c fis, > <b f > <b f > 
  | % 134
  <c g e > c8. e16 <g e c >4 <c, g e > 
  | % 135
  <f c a > f8. a16 <f c >4 <f c > 
  | % 136
  <c' e, c > g8. c16 <a d, g,, f' >4 <b g, g, d'' > 
  | % 137
  <c c,,, e'' g c,, > <b d, f > <a c, f > <g,, f'' gis b, > 
  | % 138
  <g'' e c > g8. r16 <e c >4 <e c > 
  | % 139
  <f d a > f8. r16 <b b, >8. a16 <g b, >4*40/120 fis f 
  | % 140
  <e c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 141
  <c, fis, > <c fis, > <b f > <b f > 
  | % 142
  <c g e > c8. e16 <g e c >4 <c, g e > 
  | % 143
  <f c a > f8. a16 <f c >4 <f c > 
  | % 144
  <c' e, c > g8. r16 <b fis c >4 <b fis c > 
  | % 145
  b, <f' b, a > <e b g > <d f, b > 
  | % 146
  <g e c > g8. r16 <e c >4 <e c > 
  | % 147
  <f d a > f8. r16 <b b, >8. a16 <g b, >4*40/120 fis f 
  | % 148
  <e c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 149
  <c, fis, > <c fis, > <b f > <b f > 
  | % 150
  <c g e > c8. e16 <g e c >4 <c, g e > 
  | % 151
  <f c a > f8. a16 <f c >4 <f c > 
  | % 152
  <c' e, c > g8. r16 <g f a, >4 <g b, f' > 
  | % 153
  <c,, c, > g8. g16 c,4 <c''' c, > 
  | % 154
  <d d, >4. <c c, >8 <d d, >4. <c c, >8 
  | % 155
  <d d, >4 <d d, >2 <e e, >8. <d d, >16 
  | % 156
  d4 c e, b' 
  | % 157
  <e, c > <e c > <e c > <ais e c > 
  | % 158
  <fis d > <fis d > <fis d > <fis d > 
  | % 159
  <b dis, fis > <dis, fis > <dis fis > a'8. fis16 
  | % 160
  <g e b >4 <g b, > <a f c > <c c, a' > 
  | % 161
  <b f > <a, f' g b, > <g e' g b, > <g' b, f d' > 
  | % 162
  <g e c > g8. r16 <e c >4 <e c > 
  | % 163
  <f d a > f8. r16 <b b, >8. a16 <g b, >4*40/120 fis f 
  | % 164
  <e c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 165
  <c, fis, > <c fis, > <b f > <b f > 
  | % 166
  <c g e > c8. e16 <g e c >4 <c, g e > 
  | % 167
  <f c a > f8. a16 <f c >4 <f c > 
  | % 168
  <c' e, c > g8. c16 <a d, g,, f' >4 <b g, g, d'' > 
  | % 169
  <c,, c, > g <e' c, g'''' e c' g,,, c'' > 
}

bassacc = \relative c {
  \voiceOne
  r1 
  | % 2
  c2 ais 
  | % 3
  a <gis c'' > 
  | % 4
  g d'''4. c8 
  | % 5
  <c e, g >2 r2. a16*7 a16 <e,, e' d' e b, >4 
  | % 7
  r4 a''2 r2 a16*7 a16 <e d >4 
  | % 9
  r4 a2 r2 c16*7 c16 <g f >4 
  | % 11
  c2. r1. e,2 r4 
  | % 14
  <f d,, d' >2 r2 
  | % 15
  e2. r2 a16*7 a16 <e d >4 
  | % 17
  r4 a2 r2 c16*7 c16 <g f >4 
  | % 19
  c2. r2 d16*7 c16 <fis, d >4 
  | % 21
  r4 d2 r2 a' r4 
  | % 23
  g1 
  | % 24
  r4 <e c > c'2 
  | % 25
  r4 <d, a > r2. <c g >4 r2 
  | % 27
  d2. r4*7 c'2 
  | % 30
  r4 <e, c > r2 
  | % 31
  g1 
  | % 32
  r4 <e c > c'2 
  | % 33
  r4 <d, a > r2. <c g >4 r2 
  | % 35
  d2. r4*7 c'2 
  | % 38
  r4 <e, c > g,,2 
  | % 39
  <c' g e >2. r4 
  | % 40
  a'2 a 
  | % 41
  gis gis 
  | % 42
  <g c, > c, 
  | % 43
  a'2. r4 
  | % 44
  b4. ais8 b4. ais8 
  | % 45
  r4 b2 <dis, b >4 
  | % 46
  r1 
  | % 47
  d' 
  | % 48
  r4 <e, c > c'2 
  | % 49
  r4 <d, a > r2. <c g >4 r2 
  | % 51
  d2. r4*7 c'2 
  | % 54
  r4 <e, c > d'4. c8 
  | % 55
  r4 g,,2 r2 <e'' c >4 c'2 
  | % 57
  r4 <d, a > r2. <c g >4 r2 
  | % 59
  d2. r4*7 c'2 
  | % 62
  r4 <e, c > r2 
  | % 63
  g1 
  | % 64
  r4 <e c > c'2 
  | % 65
  r4 <d, a > r2. <c g >4 r2 
  | % 67
  d2. r4*7 c'2 
  | % 70
  r4 <e, c > g,,2 
  | % 71
  <c' g e >2. r4 
  | % 72
  a'2 a 
  | % 73
  gis gis 
  | % 74
  <g c, > c, 
  | % 75
  a'2. r4 
  | % 76
  b4. ais8 b4. ais8 
  | % 77
  r4 b2 <dis, b >4 
  | % 78
  r1 
  | % 79
  d' 
  | % 80
  r4 <e, c > c'2 
  | % 81
  r4 <d, a > r2. <c g >4 r2 
  | % 83
  d2. r4*7 c'2 
  | % 86
  r4 <e, c > d'4. c8 
  | % 87
  <c e, g >2 r2. a16*7 a16 <e,, e' d' e b, >4 
  | % 89
  r4 a''2 r2 a16*7 a16 <e d >4 
  | % 91
  r4 a2 r2 c16*7 c16 <g f >4 
  | % 93
  c2. r1. e,2 r4 
  | % 96
  <f d,, d' >2 r2 
  | % 97
  e2. r2 a16*7 a16 <e d >4 
  | % 99
  r4 a2 r2 c16*7 c16 <g f >4 
  | % 101
  c2. r2 d16*7 c16 <fis, d >4 
  | % 103
  r4 d2 r2 a' r4 
  | % 105
  g1 
  | % 106
  r4 <e c > c'2 
  | % 107
  r4 <d, a > r2. <c g >4 r2 
  | % 109
  d2. r4*7 c'2 
  | % 112
  r4 <e, c > r2 
  | % 113
  g1 
  | % 114
  r4 <e c > c'2 
  | % 115
  r4 <d, a > r2. <c g >4 r2 
  | % 117
  d2. r4*7 c'2 
  | % 120
  r4 <e, c > g,,2 
  | % 121
  <c' g e >2. r4 
  | % 122
  a'2 a 
  | % 123
  gis gis 
  | % 124
  <g c, > c, 
  | % 125
  a'2. r4 
  | % 126
  b4. ais8 b4. ais8 
  | % 127
  r4 b2 <dis, b >4 
  | % 128
  r1 
  | % 129
  d' 
  | % 130
  r4 <e, c > c'2 
  | % 131
  r4 <d, a > r2. <c g >4 r2 
  | % 133
  d2. r4*7 c'2 
  | % 136
  r4 <e, c > d'4. c8 
  | % 137
  r4 g,,2 r2 <e'' c >4 c'2 
  | % 139
  r4 <d, a > r2. <c g >4 r2 
  | % 141
  d2. r4*7 c'2 
  | % 144
  r4 <e, c > r2 
  | % 145
  g1 
  | % 146
  r4 <e c > c'2 
  | % 147
  r4 <d, a > r2. <c g >4 r2 
  | % 149
  d2. r4*7 c'2 
  | % 152
  r4 <e, c > g,,2 
  | % 153
  <c' g e >2. r4 
  | % 154
  a'2 a 
  | % 155
  gis gis 
  | % 156
  <g c, > c, 
  | % 157
  a'2. r4 
  | % 158
  b4. ais8 b4. ais8 
  | % 159
  r4 b2 <dis, b >4 
  | % 160
  r1 
  | % 161
  d' 
  | % 162
  r4 <e, c > c'2 
  | % 163
  r4 <d, a > r2. <c g >4 r2 
  | % 165
  d2. r4*7 c'2 
  | % 168
  r4 <e, c > d'4. c8 
  | % 169
  <c e, g >2 
}

trackDchannelBvoiceC = \relative c {
  \voiceFour
  r4*13 <e' c >4 r1*19 f,2 
  | % 24
  r2*163 f2 
  | % 106
  
}

%trackD = <<
%  \context Voice = voiceA \trackDchannelA
%  \context Voice = voiceB \trackDchannelB
%  \context Voice = voiceC \trackDchannelBvoiceB
%  \context Voice = voiceD \trackDchannelBvoiceC
%>>


trackEchannelA = {
  
  \set Staff.instrumentName = "synth strings"
  
}

trackEchannelB = \relative c {
  \voiceThree
  r1 
  | % 2
  <c' g e >4 c8. e16 <g e c >4 <c, e, g > 
  | % 3
  <f f, a > f8. a16 <fis c >4 <fis c > 
  | % 4
  <c' c, e > g8. c16 <f,, g, d'' a' >4 <g b' d, g,, > 
  | % 5
  <c,, c' > g' <c'' g' g,,, e' c, e''' c' > <e, gis, e, d' d' > 
  | % 6
  <a e a,, c' a e > <a, c e a,, e' > <a a, c' e e, > b'8. gis16 
  | % 7
  <a e e, c' a a, >4 <a, a, e' c' e > <a c e a,, e' > <e' gis, e, b' d' > 
  | % 8
  <a e c > <e c > <e c > b'8. gis16 
  | % 9
  <a e c >4 <e c > <e c > <g f b, > 
  | % 10
  <c e, g > <g e > <g e > d'8. b16 
  | % 11
  <g e >4 <g e > <g e > <e' e, g c > 
  | % 12
  <d b >8. <c a >16 <b g >8. <a f >16 <g e >4 <f d > 
  | % 13
  <e c a > <c a > <c a > <c' c, e a > 
  | % 14
  b8. a16 g8. r16 <e b g >4 <dis fis, > 
  | % 15
  <g, c > <g c > <gis b > <e' gis, d' > 
  | % 16
  <a e c > <e c > <e c > b'8. gis16 
  | % 17
  <a e c >4 <e c > <e c > <g f b, > 
  | % 18
  <c e, g > <g e > <g e > d'8. b16 
  | % 19
  <g e >4 <g e > <g e > <c g e > 
  | % 20
  <d d, fis a > <a d, fis > <a fis d > b8. ais16 
  | % 21
  b4 d,2 dis4 
  | % 22
  e a2 b4 
  | % 23
  g1 
  | % 24
  <g e c >4 g8. r16 <e c >4 <e c > 
  | % 25
  f f8. d16 b'2 
  | % 26
  <e, c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 27
  fis, fis f f 
  | % 28
  <c' g e > c8. e16 <g e c >4 <c, g e > 
  | % 29
  <f c > f8. a16 <f c >4 <f c > 
  | % 30
  <c' e, c > g8. e16 <b' fis c >4 <b fis c > 
  | % 31
  b, <f' b, a > <e b g > <d f, b > 
  | % 32
  <g e c > g8. r16 <e c >4 <e c > 
  | % 33
  f f8. d16 b'2 
  | % 34
  <e, c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 35
  fis, fis f f 
  | % 36
  <c' g e > c8. e16 <g e c >4 <c, g e > 
  | % 37
  <f c > f8. a16 <f c >4 <f c > 
  | % 38
  <c' e, c > g8. e16 <g f a, >4 <g f b, > 
  | % 39
  <c,, c, > g8. g16 c,4 <c''' c, > 
  | % 40
  <d d, >4. <c c, >8 <d d, >4. <c c, >8 
  | % 41
  <d d, >4 <d d, >2 <e e, >8. <d d, >16 
  | % 42
  d4 c e, b' 
  | % 43
  <e, c > <e c > <e c > <ais e c > 
  | % 44
  <fis d > <fis d > <fis d > <fis d > 
  | % 45
  <b fis dis > <fis dis > <fis dis > a8. r16 
  | % 46
  <g e >4 g <a f c > <c a c, > 
  | % 47
  <b f > <a, f' g b, > <g e' g b, > <f d' g > 
  | % 48
  <g' e c > g8. r16 <e c >4 <e c > 
  | % 49
  f f8. d16 b'2 
  | % 50
  <e, c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 51
  fis, fis f f 
  | % 52
  <c' g e > c8. e16 <g e c >4 <c, g e > 
  | % 53
  <f c > f8. a16 <f c >4 <f c > 
  | % 54
  <c' e, c > g8. c16 <a d, g,, f' >4 <b g, g, d'' > 
  | % 55
  <c g c,,, e'' c, > <b d, f > <a c, f > <g,, f'' gis b, > 
  | % 56
  <g'' e c > g8. r16 <e c >4 <e c > 
  | % 57
  f f8. d16 b'2 
  | % 58
  <e, c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 59
  fis, fis f f 
  | % 60
  <c' g e > c8. e16 <g e c >4 <c, g e > 
  | % 61
  <f c > f8. a16 <f c >4 <f c > 
  | % 62
  <c' e, c > g8. e16 <b' fis c >4 <b fis c > 
  | % 63
  b, <f' b, a > <e b g > <d f, b > 
  | % 64
  <g e c > g8. r16 <e c >4 <e c > 
  | % 65
  f f8. d16 b'2 
  | % 66
  <e, c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 67
  fis, fis f f 
  | % 68
  <c' g e > c8. e16 <g e c >4 <c, g e > 
  | % 69
  <f c > f8. a16 <f c >4 <f c > 
  | % 70
  <c' e, c > g8. e16 <g f a, >4 <g f b, > 
  | % 71
  <c,, c, > g8. g16 c,4 <c''' c, > 
  | % 72
  <d d, >4. <c c, >8 <d d, >4. <c c, >8 
  | % 73
  <d d, >4 <d d, >2 <e e, >8. <d d, >16 
  | % 74
  d4 c e, b' 
  | % 75
  <e, c > <e c > <e c > <ais e c > 
  | % 76
  <fis d > <fis d > <fis d > <fis d > 
  | % 77
  <b fis dis > <fis dis > <fis dis > a8. r16 
  | % 78
  <g e >4 g <a f c > <c a c, > 
  | % 79
  <b f > <a, f' g b, > <g e' g b, > <f d' g > 
  | % 80
  <g' e c > g8. r16 <e c >4 <e c > 
  | % 81
  f f8. d16 b'2 
  | % 82
  <e, c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 83
  fis, fis f f 
  | % 84
  <c' g e > c8. e16 <g e c >4 <c, g e > 
  | % 85
  <f c > f8. a16 <f c >4 <f c > 
  | % 86
  <c' e, c > g8. c16 <a d, g,, f' >4 <b g, g, d'' > 
  | % 87
  <c c,,, c' > g,, <e' c, g'''' e c' g,,, c'' > <e' gis, e, b' d' > 
  | % 88
  <a e a,, c' a e > <a, c e a,, e' > <a a, c' e e, > b'8. gis16 
  | % 89
  <a e e, c' a a, >4 <a, a, e' c' e > <a c e a,, e' > <e' gis, e, b' d' > 
  | % 90
  <a e c > <e c > <e c > b'8. gis16 
  | % 91
  <a e c >4 <e c > <e c > <g f b, > 
  | % 92
  <c e, g > <g e > <g e > d'8. b16 
  | % 93
  <g e >4 <g e > <g e > <e' e, g c > 
  | % 94
  <d b >8. <c a >16 <b g >8. <a f >16 <g e >4 <f d > 
  | % 95
  <e c a > <c a > <c a > <c' c, e a > 
  | % 96
  b8. a16 g8. r16 <e b g >4 <dis fis, > 
  | % 97
  <g, c > <g c > <gis b > <e' gis, d' > 
  | % 98
  <a e c > <e c > <e c > b'8. gis16 
  | % 99
  <a e c >4 <e c > <e c > <g f b, > 
  | % 100
  <c e, g > <g e > <g e > d'8. b16 
  | % 101
  <g e >4 <g e > <g e > <c g e > 
  | % 102
  <d d, fis a > <a d, fis > <a fis d > b8. ais16 
  | % 103
  b4 d,2 dis4 
  | % 104
  e a2 b4 
  | % 105
  g1 
  | % 106
  <g e c >4 g8. r16 <e c >4 <e c > 
  | % 107
  f f8. d16 b'2 
  | % 108
  <e, c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 109
  fis, fis f f 
  | % 110
  <c' g e > c8. e16 <g e c >4 <c, g e > 
  | % 111
  <f c > f8. a16 <f c >4 <f c > 
  | % 112
  <c' e, c > g8. e16 <b' fis c >4 <b fis c > 
  | % 113
  b, <f' b, a > <e b g > <d f, b > 
  | % 114
  <g e c > g8. r16 <e c >4 <e c > 
  | % 115
  f f8. d16 b'2 
  | % 116
  <e, c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 117
  fis, fis f f 
  | % 118
  <c' g e > c8. e16 <g e c >4 <c, g e > 
  | % 119
  <f c > f8. a16 <f c >4 <f c > 
  | % 120
  <c' e, c > g8. e16 <g f a, >4 <g f b, > 
  | % 121
  <c,, c, > g8. g16 c,4 <c''' c, > 
  | % 122
  <d d, >4. <c c, >8 <d d, >4. <c c, >8 
  | % 123
  <d d, >4 <d d, >2 <e e, >8. <d d, >16 
  | % 124
  d4 c e, b' 
  | % 125
  <e, c > <e c > <e c > <ais e c > 
  | % 126
  <fis d > <fis d > <fis d > <fis d > 
  | % 127
  <b fis dis > <fis dis > <fis dis > a8. r16 
  | % 128
  <g e >4 g <a f c > <c a c, > 
  | % 129
  <b f > <a, f' g b, > <g e' g b, > <f d' g > 
  | % 130
  <g' e c > g8. r16 <e c >4 <e c > 
  | % 131
  f f8. d16 b'2 
  | % 132
  <e, c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 133
  fis, fis f f 
  | % 134
  <c' g e > c8. e16 <g e c >4 <c, g e > 
  | % 135
  <f c > f8. a16 <f c >4 <f c > 
  | % 136
  <c' e, c > g8. c16 <a d, g,, f' >4 <b g, g, d'' > 
  | % 137
  <c g c,,, e'' c, > <b d, f > <a c, f > <g,, f'' gis b, > 
  | % 138
  <g'' e c > g8. r16 <e c >4 <e c > 
  | % 139
  f f8. d16 b'2 
  | % 140
  <e, c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 141
  fis, fis f f 
  | % 142
  <c' g e > c8. e16 <g e c >4 <c, g e > 
  | % 143
  <f c > f8. a16 <f c >4 <f c > 
  | % 144
  <c' e, c > g8. e16 <b' fis c >4 <b fis c > 
  | % 145
  b, <f' b, a > <e b g > <d f, b > 
  | % 146
  <g e c > g8. r16 <e c >4 <e c > 
  | % 147
  f f8. d16 b'2 
  | % 148
  <e, c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 149
  fis, fis f f 
  | % 150
  <c' g e > c8. e16 <g e c >4 <c, g e > 
  | % 151
  <f c > f8. a16 <f c >4 <f c > 
  | % 152
  <c' e, c > g8. e16 <g f a, >4 <g f b, > 
  | % 153
  <c,, c, > g8. g16 c,4 <c''' c, > 
  | % 154
  <d d, >4. <c c, >8 <d d, >4. <c c, >8 
  | % 155
  <d d, >4 <d d, >2 <e e, >8. <d d, >16 
  | % 156
  d4 c e, b' 
  | % 157
  <e, c > <e c > <e c > <ais e c > 
  | % 158
  <fis d > <fis d > <fis d > <fis d > 
  | % 159
  <b fis dis > <fis dis > <fis dis > a8. r16 
  | % 160
  <g e >4 g <a f c > <c a c, > 
  | % 161
  <b f > <a, f' g b, > <g e' g b, > <f d' g > 
  | % 162
  <g' e c > g8. r16 <e c >4 <e c > 
  | % 163
  f f8. d16 b'2 
  | % 164
  <e, c g >4 e8. r16 <a g cis, >4 <a g cis, > 
  | % 165
  fis, fis f f 
  | % 166
  <c' g e > c8. e16 <g e c >4 <c, g e > 
  | % 167
  <f c > f8. a16 <f c >4 <f c > 
  | % 168
  <c' e, c > g8. c16 <a d, g,, f' >4 <b g, g, d'' > 
  | % 169
  <c c,,, c' > g,, <e' c, g'''' e c' g,,, c'' > 
}

trackEchannelBvoiceB = \relative c {
  \voiceOne
  r1 
  | % 2
  c2 ais 
  | % 3
  a <gis c'' > 
  | % 4
  g d'''4. c8 
  | % 5
  <c e, g >2 r2. a16*7 a16 <e,, e' d' e b, >4 
  | % 7
  r4 a''2 r2 a16*7 a16 <e d >4 
  | % 9
  r4 a2 r2 c16*7 c16 <g f >4 
  | % 11
  c2. r1. e,2 r4 
  | % 14
  <f d,, d' b' >2 r2 
  | % 15
  e2. r2 a16*7 a16 <d, e >4 
  | % 17
  r4 a'2 r2 c16*7 c16 <g f >4 
  | % 19
  c2. r2 d16*7 c16 <fis, d >4 
  | % 21
  r4*13 <e c >4 c'2 
  | % 25
  r2. <g b, >4*40/120 fis f 
  | % 26
  r4 <c g > r2 
  | % 27
  d2. r4*7 c'2 
  | % 30
  r1 
  | % 31
  g 
  | % 32
  r4 <e c > c'2 
  | % 33
  r2. <g b, >4*40/120 fis f 
  | % 34
  r4 <c g > r2 
  | % 35
  d2. r4*7 c'2 
  | % 38
  r2 g,, 
  | % 39
  <g' e c' >2. r4 
  | % 40
  a'2 a 
  | % 41
  gis gis 
  | % 42
  <g c, > c, 
  | % 43
  a'2. r4 
  | % 44
  b4. ais8 b4. ais8 
  | % 45
  r4 b2 <fis b, >4 
  | % 46
  r1 
  | % 47
  d' 
  | % 48
  r4 <e, c > c'2 
  | % 49
  r2. <g b, >4*40/120 fis f 
  | % 50
  r4 <c g > r2 
  | % 51
  d2. r4*7 c'2 
  | % 54
  r2 d4. c8 
  | % 55
  r4 g,,2 r2 <e'' c >4 c'2 
  | % 57
  r2. <g b, >4*40/120 fis f 
  | % 58
  r4 <c g > r2 
  | % 59
  d2. r4*7 c'2 
  | % 62
  r1 
  | % 63
  g 
  | % 64
  r4 <e c > c'2 
  | % 65
  r2. <g b, >4*40/120 fis f 
  | % 66
  r4 <c g > r2 
  | % 67
  d2. r4*7 c'2 
  | % 70
  r2 g,, 
  | % 71
  <g' e c' >2. r4 
  | % 72
  a'2 a 
  | % 73
  gis gis 
  | % 74
  <g c, > c, 
  | % 75
  a'2. r4 
  | % 76
  b4. ais8 b4. ais8 
  | % 77
  r4 b2 <fis b, >4 
  | % 78
  r1 
  | % 79
  d' 
  | % 80
  r4 <e, c > c'2 
  | % 81
  r2. <g b, >4*40/120 fis f 
  | % 82
  r4 <c g > r2 
  | % 83
  d2. r4*7 c'2 
  | % 86
  r2 d4. c8 
  | % 87
  <e, g >2 r2. a16*7 a16 <e,, e' d' e b, >4 
  | % 89
  r4 a''2 r2 a16*7 a16 <e d >4 
  | % 91
  r4 a2 r2 c16*7 c16 <g f >4 
  | % 93
  c2. r1. e,2 r4 
  | % 96
  <f d,, d' b' >2 r2 
  | % 97
  e2. r2 a16*7 a16 <d, e >4 
  | % 99
  r4 a'2 r2 c16*7 c16 <g f >4 
  | % 101
  c2. r2 d16*7 c16 <fis, d >4 
  | % 103
  r4*13 <e c >4 c'2 
  | % 107
  r2. <g b, >4*40/120 fis f 
  | % 108
  r4 <c g > r2 
  | % 109
  d2. r4*7 c'2 
  | % 112
  r1 
  | % 113
  g 
  | % 114
  r4 <e c > c'2 
  | % 115
  r2. <g b, >4*40/120 fis f 
  | % 116
  r4 <c g > r2 
  | % 117
  d2. r4*7 c'2 
  | % 120
  r2 g,, 
  | % 121
  <g' e c' >2. r4 
  | % 122
  a'2 a 
  | % 123
  gis gis 
  | % 124
  <g c, > c, 
  | % 125
  a'2. r4 
  | % 126
  b4. ais8 b4. ais8 
  | % 127
  r4 b2 <fis b, >4 
  | % 128
  r1 
  | % 129
  d' 
  | % 130
  r4 <e, c > c'2 
  | % 131
  r2. <g b, >4*40/120 fis f 
  | % 132
  r4 <c g > r2 
  | % 133
  d2. r4*7 c'2 
  | % 136
  r2 d4. c8 
  | % 137
  r4 g,,2 r2 <e'' c >4 c'2 
  | % 139
  r2. <g b, >4*40/120 fis f 
  | % 140
  r4 <c g > r2 
  | % 141
  d2. r4*7 c'2 
  | % 144
  r1 
  | % 145
  g 
  | % 146
  r4 <e c > c'2 
  | % 147
  r2. <g b, >4*40/120 fis f 
  | % 148
  r4 <c g > r2 
  | % 149
  d2. r4*7 c'2 
  | % 152
  r2 g,, 
  | % 153
  <g' e c' >2. r4 
  | % 154
  a'2 a 
  | % 155
  gis gis 
  | % 156
  <g c, > c, 
  | % 157
  a'2. r4 
  | % 158
  b4. ais8 b4. ais8 
  | % 159
  r4 b2 <fis b, >4 
  | % 160
  r1 
  | % 161
  d' 
  | % 162
  r4 <e, c > c'2 
  | % 163
  r2. <g b, >4*40/120 fis f 
  | % 164
  r4 <c g > r2 
  | % 165
  d2. r4*7 c'2 
  | % 168
  r2 d4. c8 
  | % 169
  <e, g >2 
}

trackEchannelBvoiceC = \relative c {
  \voiceFour
  r4*13 <e' c >4 
}

trackE = <<
  \context Voice = voiceA \trackEchannelA
  \context Voice = voiceB \trackEchannelB
  \context Voice = voiceC \trackEchannelBvoiceB
  \context Voice = voiceD \trackEchannelBvoiceC
>>


trackFchannelA = {
  
  \set Staff.instrumentName = "synth brass"
  
}

trackFchannelB = \relative c {
  \voiceThree
  r1 
  | % 2
  <c' g e >4 c8. e16 <g e c >4 <c, e, g > 
  | % 3
  <f f, a > f8. a16 <fis c >4 <fis c > 
  | % 4
  <c' c, e > g8. c16 <f,, g, d'' a' >4 <g b' d, g,, > 
  | % 5
  <c,, c' > g' <c'' g' g,,, e' c, e''' c' > <e, gis, e, d' d' > 
  | % 6
  <a e a,, c' a e > <a, c e a,, e' > <a a, c' e e, > b'8. gis16 
  | % 7
  <a e e, c' a a, >4 <a, a, e' c' e > <a c e a,, e' > <e' gis, e, b' d' > 
  | % 8
  <a a, e a, > <a,, e' a > <a a' e > b''8. gis16 
  | % 9
  <a e, a, a' >4 <a, e a, > <a e a, > <g' g, g, > 
  | % 10
  <c c,,, g' c > <c,, c, g' > <c g c, > d''8. b16 
  | % 11
  <c,, g c, >4 <c c, g' > <c g c, > <e'' g,,, > 
  | % 12
  <d b >8. <c a >16 <b g >8. <a f >16 <g e >4 <f d > 
  | % 13
  e e2 c'4 
  | % 14
  b8. a16 g8. r16 <e g, b g, >4 <dis fis, b g, > 
  | % 15
  <c,, c' >2 <b' e, > 
  | % 16
  <a'' a,, e' a >4 <a, a, e' > <a e a, > b'8. gis16 
  | % 17
  <a e e, c' a, a' >4 <a,, a' e c' e > <a c' e a, e > <g'' g, b f' g,, > 
  | % 18
  <c g g,, e'' c,, c' > <c,,, c' g e'' g > <c g' e'' g c,, > 
  d'''8. b16 
  | % 19
  <c,, c, g' g'' e >4 <c e' g g,, c, > <c e' g c,,, g' > <c'' g g,, e'' c, c, > 
  | % 20
  <d d,,, fis'' a d, d, a > <d,, a fis'' a d, d,, > <d fis' a d, d,, a' > 
  b''8. ais16 
  | % 21
  <b d, g >4 <b, g > <gis e > <dis' e, gis > 
  | % 22
  <e g, cis > <g c, > <fis c > <b fis > 
  | % 23
  <b, d, > <e, c' > d' dis 
  | % 24
  <g g,, e' c, > g8. e16 <a,, a' >4 <a a' > 
  | % 25
  <f'' d, d, > f8. d16 b'8. a16 <g b, >4*40/120 fis f 
  | % 26
  <e c,, c' >4 e8. c16 <a' e, a, >4 <a e, a, > 
  | % 27
  <c, fis, > <c fis, > <b f > <b f > 
  | % 28
  <c e, g > c8. e16 <g c, e >4 <c, e, g > 
  | % 29
  <f c > f8. a16 <gis,, gis' c f >4 <gis f'' c gis > 
  | % 30
  <c'' c, e > g8. e16 <b' d,, c' fis d,, >4 <b d,, c' fis d,, > 
  | % 31
  b, <f' a, b > <e b g > <d b f > 
  | % 32
  <g g,, e' c, > g8. e16 <a,, a' >4 <a a' > 
  | % 33
  <f'' d, d, > f8. d16 b'8. a16 <g b, >4*40/120 fis f 
  | % 34
  <e c,, c' >4 e8. c16 <a' e, a, >4 <a e, a, > 
  | % 35
  <c, fis, > <c fis, > <b f > <b f > 
  | % 36
  <c e, g > c8. e16 <g c, e >4 <c, e, g > 
  | % 37
  <f c > f8. a16 <gis,, gis' c f >4 <gis f'' c gis > 
  | % 38
  <c'' c, e > g8. e16 <g f a, >4 <g f b, > 
  | % 39
  <c,, c, > g8. g16 c,4 <c''' c, > 
  | % 40
  <f,,, c' > <f c' > <f c' > <f c' > 
  | % 41
  <d''' c,, f, d'' > <f,,, c' > <f c' > <e''' e, >8. <d d, >16 
  | % 42
  <c,, d'' e,,, >4 <c'' c,, e, > <e, e, g, > <b' g,, e' > 
  | % 43
  <e, c > <e c > <c, e' c c,, > <ais'' e c > 
  | % 44
  <b,, fis'' d > <fis'' d > <fis,, fis'' d > <fis'' d > 
  | % 45
  <b dis, b, fis'' > <fis dis > <b,, fis'' dis b,, > a''8. fis16 
  | % 46
  <g e >4 g <a c, f > <c c, a' > 
  | % 47
  <g,, g' f' b > <a' g' f b, > <g g' e b > <f g' b, d > 
  | % 48
  <g' g,, e' c, > g8. e16 <a,, a' >4 <a a' > 
  | % 49
  <f'' d, d, > f8. d16 b'8. a16 <g b, >4*40/120 fis f 
  | % 50
  <e c,, c' >4 e8. c16 <a' e, a, >4 <a e, a, > 
  | % 51
  <c, fis, > <c fis, > <b f > <b f > 
  | % 52
  <c e, g > c8. e16 <g c, e >4 <c, e, g > 
  | % 53
  <f c > f8. a16 <gis,, gis' c f >4 <gis f'' c gis > 
  | % 54
  <c'' c, e > g8. c16 <a d, g,, f' >4 <b g, g, d'' > 
  | % 55
  <c g c,,, e'' c, > <b d, f > <a c, f > <g,, f'' gis b, > 
  | % 56
  <g'' g,, e' c, > g8. e16 <a,, a' >4 <a a' > 
  | % 57
  <f'' d, d, > f8. d16 b'8. a16 <g b, >4*40/120 fis f 
  | % 58
  <e c,, c' >4 e8. c16 <a' e, a, >4 <a e, a, > 
  | % 59
  <c, fis, > <c fis, > <b f > <b f > 
  | % 60
  <c e, g > c8. e16 <g c, e >4 <c, e, g > 
  | % 61
  <f c > f8. a16 <gis,, gis' c f >4 <gis f'' c gis > 
  | % 62
  <c'' c, e > g8. e16 <b' d,, c' fis d,, >4 <b d,, c' fis d,, > 
  | % 63
  b, <f' a, b > <e b g > <d b f > 
  | % 64
  <g g,, e' c, > g8. e16 <a,, a' >4 <a a' > 
  | % 65
  <f'' d, d, > f8. d16 b'8. a16 <g b, >4*40/120 fis f 
  | % 66
  <e c,, c' >4 e8. c16 <a' e, a, >4 <a e, a, > 
  | % 67
  <c, fis, > <c fis, > <b f > <b f > 
  | % 68
  <c e, g > c8. e16 <g c, e >4 <c, e, g > 
  | % 69
  <f c > f8. a16 <gis,, gis' c f >4 <gis f'' c gis > 
  | % 70
  <c'' c, e > g8. e16 <g f a, >4 <g f b, > 
  | % 71
  <c,, c, > g8. g16 c,4 <c''' c, > 
  | % 72
  <f,,, c' > <f c' > <f c' > <f c' > 
  | % 73
  <d''' c,, f, d'' > <f,,, c' > <f c' > <e''' e, >8. <d d, >16 
  | % 74
  <c,, d'' e,,, >4 <c'' c,, e, > <e, e, g, > <b' g,, e' > 
  | % 75
  <e, c > <e c > <c, e' c c,, > <ais'' e c > 
  | % 76
  <b,, fis'' d > <fis'' d > <fis,, fis'' d > <fis'' d > 
  | % 77
  <b dis, b, fis'' > <fis dis > <b,, fis'' dis b,, > a''8. fis16 
  | % 78
  <g e >4 g <a c, f > <c c, a' > 
  | % 79
  <g,, g' f' b > <a' g' f b, > <g g' e b > <f g' b, d > 
  | % 80
  <g' g,, e' c, > g8. e16 <a,, a' >4 <a a' > 
  | % 81
  <f'' d, d, > f8. d16 b'8. a16 <g b, >4*40/120 fis f 
  | % 82
  <e c,, c' >4 e8. c16 <a' e, a, >4 <a e, a, > 
  | % 83
  <c, fis, > <c fis, > <b f > <b f > 
  | % 84
  <c e, g > c8. e16 <g c, e >4 <c, e, g > 
  | % 85
  <f c > f8. a16 <gis,, gis' c f >4 <gis f'' c gis > 
  | % 86
  <c'' c, e > g8. c16 <a d, g,, f' >4 <b g, g, d'' > 
  | % 87
  <c c,,, c' > g,, <e' c, g'''' e c' g,,, c'' > <e' gis, e, b' d' > 
  | % 88
  <a e a,, c' a e > <a, c e a,, e' > <a a, c' e e, > b'8. gis16 
  | % 89
  <a e e, c' a a, >4 <a, a, e' c' e > <a c e a,, e' > <e' gis, e, b' d' > 
  | % 90
  <a a, e a, > <a,, e' a > <a a' e > b''8. gis16 
  | % 91
  <a e, a, a' >4 <a, e a, > <a e a, > <g' g, g, > 
  | % 92
  <c c,,, g' c > <c,, c, g' > <c g c, > d''8. b16 
  | % 93
  <c,, g c, >4 <c c, g' > <c g c, > <e'' g,,, > 
  | % 94
  <d b >8. <c a >16 <b g >8. <a f >16 <g e >4 <f d > 
  | % 95
  e e2 c'4 
  | % 96
  b8. a16 g8. r16 <e g, b g, >4 <dis fis, b g, > 
  | % 97
  <c,, c' >2 <b' e, > 
  | % 98
  <a'' a,, e' a >4 <a, a, e' > <a e a, > b'8. gis16 
  | % 99
  <a e e, c' a, a' >4 <a,, a' e c' e > <a c' e a, e > <g'' g, b f' g,, > 
  | % 100
  <c g g,, e'' c,, c' > <c,,, c' g e'' g > <c g' e'' g c,, > 
  d'''8. b16 
  | % 101
  <c,, c, g' g'' e >4 <c e' g g,, c, > <c e' g c,,, g' > <c'' g g,, e'' c, c, > 
  | % 102
  <d d,,, fis'' a d, d, a > <d,, a fis'' a d, d,, > <d fis' a d, d,, a' > 
  b''8. ais16 
  | % 103
  <b d, g >4 <b, g > <gis e > <dis' e, gis > 
  | % 104
  <e g, cis > <g c, > <fis c > <b fis > 
  | % 105
  <b, d, > <e, c' > d' dis 
  | % 106
  <g g,, e' c, > g8. e16 <a,, a' >4 <a a' > 
  | % 107
  <f'' d, d, > f8. d16 b'8. a16 <g b, >4*40/120 fis f 
  | % 108
  <e c,, c' >4 e8. c16 <a' e, a, >4 <a e, a, > 
  | % 109
  <c, fis, > <c fis, > <b f > <b f > 
  | % 110
  <c e, g > c8. e16 <g c, e >4 <c, e, g > 
  | % 111
  <f c > f8. a16 <gis,, gis' c f >4 <gis f'' c gis > 
  | % 112
  <c'' c, e > g8. e16 <b' d,, c' fis d,, >4 <b d,, c' fis d,, > 
  | % 113
  b, <f' a, b > <e b g > <d b f > 
  | % 114
  <g g,, e' c, > g8. e16 <a,, a' >4 <a a' > 
  | % 115
  <f'' d, d, > f8. d16 b'8. a16 <g b, >4*40/120 fis f 
  | % 116
  <e c,, c' >4 e8. c16 <a' e, a, >4 <a e, a, > 
  | % 117
  <c, fis, > <c fis, > <b f > <b f > 
  | % 118
  <c e, g > c8. e16 <g c, e >4 <c, e, g > 
  | % 119
  <f c > f8. a16 <gis,, gis' c f >4 <gis f'' c gis > 
  | % 120
  <c'' c, e > g8. e16 <g f a, >4 <g f b, > 
  | % 121
  <c,, c, > g8. g16 c,4 <c''' c, > 
  | % 122
  <f,,, c' > <f c' > <f c' > <f c' > 
  | % 123
  <d''' c,, f, d'' > <f,,, c' > <f c' > <e''' e, >8. <d d, >16 
  | % 124
  <c,, d'' e,,, >4 <c'' c,, e, > <e, e, g, > <b' g,, e' > 
  | % 125
  <e, c > <e c > <c, e' c c,, > <ais'' e c > 
  | % 126
  <b,, fis'' d > <fis'' d > <fis,, fis'' d > <fis'' d > 
  | % 127
  <b dis, b, fis'' > <fis dis > <b,, fis'' dis b,, > a''8. fis16 
  | % 128
  <g e >4 g <a c, f > <c c, a' > 
  | % 129
  <g,, g' f' b > <a' g' f b, > <g g' e b > <f g' b, d > 
  | % 130
  <g' g,, e' c, > g8. e16 <a,, a' >4 <a a' > 
  | % 131
  <f'' d, d, > f8. d16 b'8. a16 <g b, >4*40/120 fis f 
  | % 132
  <e c,, c' >4 e8. c16 <a' e, a, >4 <a e, a, > 
  | % 133
  <c, fis, > <c fis, > <b f > <b f > 
  | % 134
  <c e, g > c8. e16 <g c, e >4 <c, e, g > 
  | % 135
  <f c > f8. a16 <gis,, gis' c f >4 <gis f'' c gis > 
  | % 136
  <c'' c, e > g8. c16 <a d, g,, f' >4 <b g, g, d'' > 
  | % 137
  <c g c,,, e'' c, > <b d, f > <a c, f > <g,, f'' gis b, > 
  | % 138
  <g'' g,, e' c, > g8. e16 <a,, a' >4 <a a' > 
  | % 139
  <f'' d, d, > f8. d16 b'8. a16 <g b, >4*40/120 fis f 
  | % 140
  <e c,, c' >4 e8. c16 <a' e, a, >4 <a e, a, > 
  | % 141
  <c, fis, > <c fis, > <b f > <b f > 
  | % 142
  <c e, g > c8. e16 <g c, e >4 <c, e, g > 
  | % 143
  <f c > f8. a16 <gis,, gis' c f >4 <gis f'' c gis > 
  | % 144
  <c'' c, e > g8. e16 <b' d,, c' fis d,, >4 <b d,, c' fis d,, > 
  | % 145
  b, <f' a, b > <e b g > <d b f > 
  | % 146
  <g g,, e' c, > g8. e16 <a,, a' >4 <a a' > 
  | % 147
  <f'' d, d, > f8. d16 b'8. a16 <g b, >4*40/120 fis f 
  | % 148
  <e c,, c' >4 e8. c16 <a' e, a, >4 <a e, a, > 
  | % 149
  <c, fis, > <c fis, > <b f > <b f > 
  | % 150
  <c e, g > c8. e16 <g c, e >4 <c, e, g > 
  | % 151
  <f c > f8. a16 <gis,, gis' c f >4 <gis f'' c gis > 
  | % 152
  <c'' c, e > g8. e16 <g f a, >4 <g f b, > 
  | % 153
  <c,, c, > g8. g16 c,4 <c''' c, > 
  | % 154
  <f,,, c' > <f c' > <f c' > <f c' > 
  | % 155
  <d''' c,, f, d'' > <f,,, c' > <f c' > <e''' e, >8. <d d, >16 
  | % 156
  <c,, d'' e,,, >4 <c'' c,, e, > <e, e, g, > <b' g,, e' > 
  | % 157
  <e, c > <e c > <c, e' c c,, > <ais'' e c > 
  | % 158
  <b,, fis'' d > <fis'' d > <fis,, fis'' d > <fis'' d > 
  | % 159
  <b dis, b, fis'' > <fis dis > <b,, fis'' dis b,, > a''8. fis16 
  | % 160
  <g e >4 g <a c, f > <c c, a' > 
  | % 161
  <g,, g' f' b > <a' g' f b, > <g g' e b > <f g' b, d > 
  | % 162
  <g' g,, e' c, > g8. e16 <a,, a' >4 <a a' > 
  | % 163
  <f'' d, d, > f8. d16 b'8. a16 <g b, >4*40/120 fis f 
  | % 164
  <e c,, c' >4 e8. c16 <a' e, a, >4 <a e, a, > 
  | % 165
  <c, fis, > <c fis, > <b f > <b f > 
  | % 166
  <c e, g > c8. e16 <g c, e >4 <c, e, g > 
  | % 167
  <f c > f8. a16 <gis,, gis' c f >4 <gis f'' c gis > 
  | % 168
  <c'' c, e > g8. c16 <a d, g,, f' >4 <b g, g, d'' > 
  | % 169
  <c c,,, c' > g,, <e' c, g'''' e c' g,,, c'' > 
}

trackFchannelBvoiceB = \relative c {
  \voiceFour
  r1 
  | % 2
  c2 ais 
  | % 3
  a <gis c'' > 
  | % 4
  g d'''4. c8 
  | % 5
  <c e, g >2 r2. a16*7 a16 <e,, e' d' e b, >4 
  | % 7
  r4 a''2 r2 a16*7 a16 <e,, e' b >4 
  | % 9
  r4 a''2 r2 c16*7 c16 <g, d g, >4 
  | % 11
  c'2. r4 
  | % 12
  <f,, f, >2 <f f, > 
  | % 13
  a, a 
  | % 14
  <f'' d,, b'' d, > r2 
  | % 15
  e2. <e gis, d' >4 
  | % 16
  r4 a16*7 a16 <e, b e, >4 
  | % 17
  r4 a'2 r2 c16*7 c16 <g,, d' f' g g, >4 
  | % 19
  c''2. r2 d16*7 c16 <d,, a d' fis d,, >4 
  | % 21
  <g, d' >2 <b e, > 
  | % 22
  a <a d, > 
  | % 23
  <g g'' >1 
  | % 24
  r4 <c, c' g > c'''2 
  | % 25
  r4 <d,,, d' > <f' g, >2 
  | % 26
  r1 
  | % 27
  gis,2 g 
  | % 28
  c ais 
  | % 29
  a c'' 
  | % 30
  g,, r2 
  | % 31
  <g g' > <g, g' > 
  | % 32
  r4 <c c' g > c'''2 
  | % 33
  r4 <d,,, d' > <f' g, >2 
  | % 34
  r1 
  | % 35
  gis,2 g 
  | % 36
  c ais 
  | % 37
  a c'' 
  | % 38
  g,, g 
  | % 39
  <g' e c' >2. r4 
  | % 40
  <d'' d, >4. <c c, >8 <d d, >4. <c c, >8 
  | % 41
  gis2 gis 
  | % 42
  <c, g' > c 
  | % 43
  <c, c, > r2 
  | % 44
  b''4. ais8 b4. ais8 
  | % 45
  fis,2 r4 <b, b' dis b,, > 
  | % 46
  <e, e' >2 <d' d, > 
  | % 47
  d''1 
  | % 48
  r4 <c,,, c' g > c'''2 
  | % 49
  r4 <d,,, d' > <f' g, >2 
  | % 50
  r1 
  | % 51
  gis,2 g 
  | % 52
  c ais 
  | % 53
  a c'' 
  | % 54
  g,, d'''4. c8 
  | % 55
  r4 g,,2 r2 <c, c' g >4 c'''2 
  | % 57
  r4 <d,,, d' > <f' g, >2 
  | % 58
  r1 
  | % 59
  gis,2 g 
  | % 60
  c ais 
  | % 61
  a c'' 
  | % 62
  g,, r2 
  | % 63
  <g g' > <g, g' > 
  | % 64
  r4 <c c' g > c'''2 
  | % 65
  r4 <d,,, d' > <f' g, >2 
  | % 66
  r1 
  | % 67
  gis,2 g 
  | % 68
  c ais 
  | % 69
  a c'' 
  | % 70
  g,, g 
  | % 71
  <g' e c' >2. r4 
  | % 72
  <d'' d, >4. <c c, >8 <d d, >4. <c c, >8 
  | % 73
  gis2 gis 
  | % 74
  <c, g' > c 
  | % 75
  <c, c, > r2 
  | % 76
  b''4. ais8 b4. ais8 
  | % 77
  fis,2 r4 <b, b' dis b,, > 
  | % 78
  <e, e' >2 <d' d, > 
  | % 79
  d''1 
  | % 80
  r4 <c,,, c' g > c'''2 
  | % 81
  r4 <d,,, d' > <f' g, >2 
  | % 82
  r1 
  | % 83
  gis,2 g 
  | % 84
  c ais 
  | % 85
  a c'' 
  | % 86
  g,, d'''4. c8 
  | % 87
  <e, g >2 r2. a16*7 a16 <e,, e' d' e b, >4 
  | % 89
  r4 a''2 r2 a16*7 a16 <e,, e' b >4 
  | % 91
  r4 a''2 r2 c16*7 c16 <g, d g, >4 
  | % 93
  c'2. r4 
  | % 94
  <f,, f, >2 <f f, > 
  | % 95
  a, a 
  | % 96
  <f'' d,, b'' d, > r2 
  | % 97
  e2. <e gis, d' >4 
  | % 98
  r4 a16*7 a16 <e, b e, >4 
  | % 99
  r4 a'2 r2 c16*7 c16 <g,, d' f' g g, >4 
  | % 101
  c''2. r2 d16*7 c16 <d,, a d' fis d,, >4 
  | % 103
  <g, d' >2 <b e, > 
  | % 104
  a <a d, > 
  | % 105
  <g g'' >1 
  | % 106
  r4 <c, c' g > c'''2 
  | % 107
  r4 <d,,, d' > <f' g, >2 
  | % 108
  r1 
  | % 109
  gis,2 g 
  | % 110
  c ais 
  | % 111
  a c'' 
  | % 112
  g,, r2 
  | % 113
  <g g' > <g, g' > 
  | % 114
  r4 <c c' g > c'''2 
  | % 115
  r4 <d,,, d' > <f' g, >2 
  | % 116
  r1 
  | % 117
  gis,2 g 
  | % 118
  c ais 
  | % 119
  a c'' 
  | % 120
  g,, g 
  | % 121
  <g' e c' >2. r4 
  | % 122
  <d'' d, >4. <c c, >8 <d d, >4. <c c, >8 
  | % 123
  gis2 gis 
  | % 124
  <c, g' > c 
  | % 125
  <c, c, > r2 
  | % 126
  b''4. ais8 b4. ais8 
  | % 127
  fis,2 r4 <b, b' dis b,, > 
  | % 128
  <e, e' >2 <d' d, > 
  | % 129
  d''1 
  | % 130
  r4 <c,,, c' g > c'''2 
  | % 131
  r4 <d,,, d' > <f' g, >2 
  | % 132
  r1 
  | % 133
  gis,2 g 
  | % 134
  c ais 
  | % 135
  a c'' 
  | % 136
  g,, d'''4. c8 
  | % 137
  r4 g,,2 r2 <c, c' g >4 c'''2 
  | % 139
  r4 <d,,, d' > <f' g, >2 
  | % 140
  r1 
  | % 141
  gis,2 g 
  | % 142
  c ais 
  | % 143
  a c'' 
  | % 144
  g,, r2 
  | % 145
  <g g' > <g, g' > 
  | % 146
  r4 <c c' g > c'''2 
  | % 147
  r4 <d,,, d' > <f' g, >2 
  | % 148
  r1 
  | % 149
  gis,2 g 
  | % 150
  c ais 
  | % 151
  a c'' 
  | % 152
  g,, g 
  | % 153
  <g' e c' >2. r4 
  | % 154
  <d'' d, >4. <c c, >8 <d d, >4. <c c, >8 
  | % 155
  gis2 gis 
  | % 156
  <c, g' > c 
  | % 157
  <c, c, > r2 
  | % 158
  b''4. ais8 b4. ais8 
  | % 159
  fis,2 r4 <b, b' dis b,, > 
  | % 160
  <e, e' >2 <d' d, > 
  | % 161
  d''1 
  | % 162
  r4 <c,,, c' g > c'''2 
  | % 163
  r4 <d,,, d' > <f' g, >2 
  | % 164
  r1 
  | % 165
  gis,2 g 
  | % 166
  c ais 
  | % 167
  a c'' 
  | % 168
  g,, d'''4. c8 
  | % 169
  <e, g >2 
}

trackFchannelBvoiceC = \relative c {
  \voiceOne
  r4*13 <e' c >4 r4*67 d2 r2 a' r2. f,2 
  | % 24
  r1*3 d'1 
  | % 28
  r1*3 g1 
  | % 32
  r1*3 d1 
  | % 36
  r1*4 a'2 a 
  | % 41
  r4 <d, d' >2 <f,, c' >4 
  | % 42
  r1 
  | % 43
  a''2. r4 
  | % 44
  fis,1 
  | % 45
  r4 b'2 r1. g,,2. 
  | % 48
  r1*3 d''1 
  | % 52
  r1*7 d1 
  | % 60
  r1*3 g1 
  | % 64
  r1*3 d1 
  | % 68
  r1*4 a'2 a 
  | % 73
  r4 <d, d' >2 <f,, c' >4 
  | % 74
  r1 
  | % 75
  a''2. r4 
  | % 76
  fis,1 
  | % 77
  r4 b'2 r1. g,,2. 
  | % 80
  r1*3 d''1 
  | % 84
  r4*77 d2 r2 a' r2. f,2 
  | % 106
  r1*3 d'1 
  | % 110
  r1*3 g1 
  | % 114
  r1*3 d1 
  | % 118
  r1*4 a'2 a 
  | % 123
  r4 <d, d' >2 <f,, c' >4 
  | % 124
  r1 
  | % 125
  a''2. r4 
  | % 126
  fis,1 
  | % 127
  r4 b'2 r1. g,,2. 
  | % 130
  r1*3 d''1 
  | % 134
  r1*7 d1 
  | % 142
  r1*3 g1 
  | % 146
  r1*3 d1 
  | % 150
  r1*4 a'2 a 
  | % 155
  r4 <d, d' >2 <f,, c' >4 
  | % 156
  r1 
  | % 157
  a''2. r4 
  | % 158
  fis,1 
  | % 159
  r4 b'2 r1. g,,2. 
  | % 162
  r1*3 d''1 
  | % 166
  
}

trackF = <<

  \clef bass
  
  \context Voice = voiceA \trackFchannelA
  \context Voice = voiceB \trackFchannelB
  \context Voice = voiceC \trackFchannelBvoiceB
  \context Voice = voiceD \trackFchannelBvoiceC
>>


trackGchannelA = {
  
  \set Staff.instrumentName = "Lyric-tune"
  
}

trackGchannelB = \relative c {
  r4*27 e'4 
  | % 8
  a a16*7 a16 b8. gis16 
  | % 9
  a4 a2 g4 
  | % 10
  c c16*7 c16 d8. b16 
  | % 11
  c2. e4 
  | % 12
  d8. c16 b8. a16 g4 f 
  | % 13
  e e2 c'4 
  | % 14
  b8. a16 g8. f16 e4 dis 
  | % 15
  e2. e4 
  | % 16
  a a16*7 a16 b8. gis16 
  | % 17
  a4 a2 g4 
  | % 18
  c c16*7 c16 d8. b16 
  | % 19
  c2. c4 
  | % 20
  d d16*7 c16 b8. ais16 
  | % 21
  b4 d,2 dis4 
  | % 22
  e a2 b4 
  | % 23
  g1 
  | % 24
  g4 g8. e16 c'2 
  | % 25
  f,4 f8. d16 b'2 
  | % 26
  e,4 e8. c16 a'4 a 
  | % 27
  d,2. r4 
  | % 28
  c c8. e16 g4 c, 
  | % 29
  f f8. a16 c2 
  | % 30
  c4 g8. e16 b'4 b 
  | % 31
  g1 
  | % 32
  g4 g8. e16 c'2 
  | % 33
  f,4 f8. d16 b'2 
  | % 34
  e,4 e8. c16 a'4 a 
  | % 35
  d,2. r4 
  | % 36
  c c8. e16 g4 c, 
  | % 37
  f f8. a16 c2 
  | % 38
  c4 g8. e16 g4 g 
  | % 39
  c,2. c'4 
  | % 40
  d4. c8 d4. c8 
  | % 41
  d4 d2 e8. d16 
  | % 42
  d4 c e, b' 
  | % 43
  a2. ais4 
  | % 44
  b4. ais8 b4. ais8 
  | % 45
  b4 b2 a8. fis16 
  | % 46
  g4 g a c 
  | % 47
  d1 
  | % 48
  g,4 g8. e16 c'2 
  | % 49
  f,4 f8. d16 b'2 
  | % 50
  e,4 e8. c16 a'4 a 
  | % 51
  d,2. r4 
  | % 52
  c c8. e16 g4 c, 
  | % 53
  f f8. a16 c2 
  | % 54
  c4 g8. c16 d4. c8 
  | % 55
  c4 r2. 
  | % 56
  g4 g8. e16 c'2 
  | % 57
  f,4 f8. d16 b'2 
  | % 58
  e,4 e8. c16 a'4 a 
  | % 59
  d,2. r4 
  | % 60
  c c8. e16 g4 c, 
  | % 61
  f f8. a16 c2 
  | % 62
  c4 g8. e16 b'4 b 
  | % 63
  g1 
  | % 64
  g4 g8. e16 c'2 
  | % 65
  f,4 f8. d16 b'2 
  | % 66
  e,4 e8. c16 a'4 a 
  | % 67
  d,2. r4 
  | % 68
  c c8. e16 g4 c, 
  | % 69
  f f8. a16 c2 
  | % 70
  c4 g8. e16 g4 g 
  | % 71
  c,2. c'4 
  | % 72
  d4. c8 d4. c8 
  | % 73
  d4 d2 e8. d16 
  | % 74
  d4 c e, b' 
  | % 75
  a2. ais4 
  | % 76
  b4. ais8 b4. ais8 
  | % 77
  b4 b2 a8. fis16 
  | % 78
  g4 g a c 
  | % 79
  d1 
  | % 80
  g,4 g8. e16 c'2 
  | % 81
  f,4 f8. d16 b'2 
  | % 82
  e,4 e8. c16 a'4 a 
  | % 83
  d,2. r4 
  | % 84
  c c8. e16 g4 c, 
  | % 85
  f f8. a16 c2 
  | % 86
  c4 g8. c16 d4. c8 
  | % 87
  c4 r2*5 e,4 
  | % 90
  a a16*7 a16 b8. gis16 
  | % 91
  a4 a2 g4 
  | % 92
  c c16*7 c16 d8. b16 
  | % 93
  c2. e4 
  | % 94
  d8. c16 b8. a16 g4 f 
  | % 95
  e e2 c'4 
  | % 96
  b8. a16 g8. f16 e4 dis 
  | % 97
  e2. e4 
  | % 98
  a a16*7 a16 b8. gis16 
  | % 99
  a4 a2 g4 
  | % 100
  c c16*7 c16 d8. b16 
  | % 101
  c2. c4 
  | % 102
  d d16*7 c16 b8. ais16 
  | % 103
  b4 d,2 dis4 
  | % 104
  e a2 b4 
  | % 105
  g1 
  | % 106
  g4 g8. e16 c'2 
  | % 107
  f,4 f8. d16 b'2 
  | % 108
  e,4 e8. c16 a'4 a 
  | % 109
  d,2. r4 
  | % 110
  c c8. e16 g4 c, 
  | % 111
  f f8. a16 c2 
  | % 112
  c4 g8. e16 b'4 b 
  | % 113
  g1 
  | % 114
  g4 g8. e16 c'2 
  | % 115
  f,4 f8. d16 b'2 
  | % 116
  e,4 e8. c16 a'4 a 
  | % 117
  d,2. r4 
  | % 118
  c c8. e16 g4 c, 
  | % 119
  f f8. a16 c2 
  | % 120
  c4 g8. e16 g4 g 
  | % 121
  c,2. c'4 
  | % 122
  d4. c8 d4. c8 
  | % 123
  d4 d2 e8. d16 
  | % 124
  d4 c e, b' 
  | % 125
  a2. ais4 
  | % 126
  b4. ais8 b4. ais8 
  | % 127
  b4 b2 a8. fis16 
  | % 128
  g4 g a c 
  | % 129
  d1 
  | % 130
  g,4 g8. e16 c'2 
  | % 131
  f,4 f8. d16 b'2 
  | % 132
  e,4 e8. c16 a'4 a 
  | % 133
  d,2. r4 
  | % 134
  c c8. e16 g4 c, 
  | % 135
  f f8. a16 c2 
  | % 136
  c4 g8. c16 d4. c8 
  | % 137
  c4 r2. 
  | % 138
  g4 g8. e16 c'2 
  | % 139
  f,4 f8. d16 b'2 
  | % 140
  e,4 e8. c16 a'4 a 
  | % 141
  d,2. r4 
  | % 142
  c c8. e16 g4 c, 
  | % 143
  f f8. a16 c2 
  | % 144
  c4 g8. e16 b'4 b 
  | % 145
  g1 
  | % 146
  g4 g8. e16 c'2 
  | % 147
  f,4 f8. d16 b'2 
  | % 148
  e,4 e8. c16 a'4 a 
  | % 149
  d,2. r4 
  | % 150
  c c8. e16 g4 c, 
  | % 151
  f f8. a16 c2 
  | % 152
  c4 g8. e16 g4 g 
  | % 153
  c,2. c'4 
  | % 154
  d4. c8 d4. c8 
  | % 155
  d4 d2 e8. d16 
  | % 156
  d4 c e, b' 
  | % 157
  a2. ais4 
  | % 158
  b4. ais8 b4. ais8 
  | % 159
  b4 b2 a8. fis16 
  | % 160
  g4 g a c 
  | % 161
  d1 
  | % 162
  g,4 g8. e16 c'2 
  | % 163
  f,4 f8. d16 b'2 
  | % 164
  e,4 e8. c16 a'4 a 
  | % 165
  d,2. r4 
  | % 166
  c c8. e16 g4 c, 
  | % 167
  f f8. a16 c2 
  | % 168
  c4 g8. c16 d4. c8 
  | % 169
  c4 r4 r2
}

trackG = <<
  \context Voice = voiceA \trackGchannelA
  \context Voice = voiceB \trackGchannelB
>>


trackHchannelA = {
  
  \set Staff.instrumentName = "Old Father Thames"
  
}

trackH = <<
  \context Voice = voiceA \trackHchannelA
>>


trackIchannelA = {
  
  \set Staff.instrumentName = "1933"
  
}

trackI = <<
  \context Voice = voiceA \trackIchannelA
>>


trackJchannelA = {
  
  \set Staff.instrumentName = "Music"
  
}

trackJ = <<
  \context Voice = voiceA \trackJchannelA
>>


trackKchannelA = {
  
  \set Staff.instrumentName = "by"
  
}

trackK = <<
  \context Voice = voiceA \trackKchannelA
>>


trackLchannelA = {
  
  \set Staff.instrumentName = "Betsy O'Hogan"
  
}

trackL = <<
  \context Voice = voiceA \trackLchannelA
>>


trackMchannelA = {
  
  \set Staff.instrumentName = "Words"
  
}

trackM = <<
  \context Voice = voiceA \trackMchannelA
>>


trackNchannelA = {
  
  \set Staff.instrumentName = "by"
  
}

trackN = <<
  \context Voice = voiceA \trackNchannelA
>>


trackOchannelA = {
  
  \set Staff.instrumentName = "Raymond Wallace"
  
}

trackO = <<
  \context Voice = voiceA \trackOchannelA
>>


trackPchannelA = {
  
  \set Staff.instrumentName = "MIDI"
  
}

trackP = <<
  \context Voice = voiceA \trackPchannelA
>>


trackQchannelA = {
  
  \set Staff.instrumentName = "Research"
  
}

trackQ = <<
  \context Voice = voiceA \trackQchannelA
>>


trackRchannelA = {
  
  \set Staff.instrumentName = "by"
  
}

trackR = <<
  \context Voice = voiceA \trackRchannelA
>>


trackSchannelA = {
  
  \set Staff.instrumentName = "Doug Grierson"
  
}

trackS = <<
  \context Voice = voiceA \trackSchannelA
>>


trackTchannelA = {
  
  \set Staff.instrumentName = "Sequence"
  
}

trackT = <<
  \context Voice = voiceA \trackTchannelA
>>


trackUchannelA = {
  
  \set Staff.instrumentName = "by"
  
}

trackU = <<
  \context Voice = voiceA \trackUchannelA
>>


trackVchannelA = {
  
  \set Staff.instrumentName = "Dr. James Pitt-Payne in London UK"
  
}

trackV = <<
  \context Voice = voiceA \trackVchannelA
>>


trackWchannelA = {
  
  \set Staff.instrumentName = "Karaoke"
  
}

trackW = <<
  \context Voice = voiceA \trackWchannelA
>>


trackXchannelA = {
  
  \set Staff.instrumentName = "by"
  
}

trackX = <<
  \context Voice = voiceA \trackXchannelA
>>


trackYchannelA = {
  
  \set Staff.instrumentName = "Bunty Pritchard Jones"
  
}

trackY = <<
  \context Voice = voiceA \trackYchannelA
>>


trackZchannelA = {
  
  \set Staff.instrumentName = "Old Father Thames 1933 seq Dr. Pitt-Payne in London UK 6Jul 2000"
  
}

trackZ = <<
  \context Voice = voiceA \trackZchannelA
>>


\book {
  \score {
    <<
      \context ChoirStaff <<
	\new Staff = melody  << \trackA \trackG >>
	\new Staff = strings << \trackA \trackE >>
	\new Staff = brass   << \trackA \trackF >>
	\new PianoStaff <<
	  \new Staff = treble << \trackA \trebleacc >>
	  \new Staff = bass { \clef bass << \trackA \bassacc >> }
	>>
      >>
%    \context Staff=trackD \trackA
%    \context Staff=trackD \trackD
%    \context Staff=trackE \trackA
%    \context Staff=trackE \trackE
%    \context Staff=trackF \trackA
%    \context Staff=trackF \trackF
%    \context Staff=trackG \trackA
%    \context Staff=trackG \trackG
    >>
    \layout {}
  }
}

\book {
  \score { % melody only
    <<
      \context ChoirStaff <<
	\new Staff <<
          \new Voice = melodyvoice
            <<
              \trackA
              \trackG
            >>
        >>
        \new Lyrics \lyricsto melodyvoice \words
      >>
    >>
    \layout {}
    \midi {}
  }
}
