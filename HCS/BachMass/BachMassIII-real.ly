globalIII = {
  \key f \major
  \time 2/2
}

TempoTrackIII = {
  \tempo 4=100
  \set Score.tempoHideNote = ##t
  s1*114
}

RehearsalTrackIII = {
  \set Score.currentBarNumber = #1
  \textMark \markup\box "24a" s1*6
  \textMark \markup\box "24b" s1*5
  \textMark \markup\box "24c" s1*6
  \textMark \markup\box "24d" s1*6
  \textMark \markup\box "24e" s1*6
  \textMark \markup\box "25a" s1*6
  \textMark \markup\box "25b" s1*6
  \textMark \markup\box "25c" s1*6
  \textMark \markup\box "25d" s1*6
  \textMark \markup\box "25e" s1*5
  \textMark \markup\box "26a" s1*6
  \textMark \markup\box "26b" s1*5
  \textMark \markup\box "26c" s1*6
  \textMark \markup\box "26d" s1*6
  \textMark \markup\box "26e" s1*5
  \textMark \markup\box "27a" s1*5
  \textMark \markup\box "27b" s1*5
  \textMark \markup\box "27c" s1*6
  \textMark \markup\box "27d" s1*6
  \textMark \markup\box "27e" s1*6
}

dynamicsSopIII = {
  \override DynamicTextSpanner.style = #'none
  s1*114 |
}

sopranoIII = \relative {
  \globalIII
  s1*114
}

wordsSopIII = \lyricmode {
}

dynamicsAltoIII = {
  \override DynamicTextSpanner.style = #'none
  s1*114
}

altoIII = \relative {
  s1*114
}

wordsAltoIII = \lyricmode {
}

dynamicsTenorIII = {
  \override DynamicTextSpanner.style = #'none
  s1*114
}

tenorIII = \relative {
  s1*114
}

wordsTenorIII = \lyricmode {
}

dynamicsBassIII = {
  \override DynamicTextSpanner.style = #'none
  s1*114
}

bassIII = \relative {
  R1*6 | % 24a
  R1*5 |
  R1*3 | r4 a(bes) a8 bes | g4 f8 g a2 | d,2 r |
  R1*3 | r4 a'(bes) a8 bes | g4 f8 g a2 | d, g |
  c,4 e(f) e8 f | d4 cis8 d e2 | a, r | R1*2 | r4 e'(f) d8 f |
  
}

wordsBassIII = \lyricmode {
  Gra -- ti -- as a -- gi -- mus ti -- bi,
  Gra -- ti -- as a -- gi -- mus ti -- bi, ti -- bi,
  Gra -- ti -- as a -- gi -- mus ti -- bi,
  gra -- ti -- as
}

pianoRHoneIII = \relative {
  \globalIII
  \vo r4 a''(bes) a8 bes | % 24a
  g4 f8 g a4 g8 a |
  \ov d,2 <c f a>~ |
  <b f' a>(<b e gis>) |
  <c e a>4 \vo e(f) e8 f |
  d4 c8 d e4 d8 e |
  a,2 \ov <a d f>~ | <g d' f> <g c e>~ | <f a c e> <f bes d>~ | <e bes' d> <e a cis> | r8 \vo d' cis d e d f d | % 24b
  g8 d cis d f d g d | \ov <a a'> d cis d g d a' d, | % 24c
  <d e bes'>4 <bes d> <cis, e a> <e a cis> |
  <d f a d>2 <f bes>~ | <e g bes> <e a>~ | <f a>4 r <c f a>2~ |
  <b f' a>2 <b e gis> | \vo <c e a>4 e(f) e8 f | d4 cis8 d e4 d8 e | % 24d
  \ov a,4 <cis a'> <d bes'>2~ | q <cis a'>~ | <d a'>4 f \vo bes a8 bes |
  g4 f8 g a4 g8 a | f4 e8 f <e g>4 f8 g | <a, cis>4 cis'(d) c8 d | % 24e
  b4 a8 b c4 b8 c | a4 gis8 a b4 a8 b | gis4 fis8 gis a2~ |
}

pianoRHtwoIII = \relative {
  \globalIII \vt
  r2 <d'' f>~ | <d e> <cis e> | s1*2 | s2 <f, c'>~ | <f b> <e b'> | % 24a
  a2 s | s1*3 | s4 a bes a |
  g4 g a bes | s1*5 |
  s1 | s2 c, | b bes | s1*2 | s2 d |
  <c e>2 <c f> | <bes d> bes | s4 <e a> <d a'>2 | <d g> <c g'>~ | <c f> <b f'>~ | % 24e
  <b e> <<{\vf f'4 e8 f~} \new Voice {\vt a,2}>> |
  \vt <d f>2
}

dynamicsPianoIII = {
  \override DynamicTextSpanner.style = #'none
  s1*114
}

pianoLHoneIII = \relative {
  \globalIII
  <d, d'>2 r | R1 | r4 d'8(e f4) e8 f | % 24a
  d4 c8 d e4 d8 e | a,2 <a a'>~ | q <gis gis'> |
  <a a'>4 b'8(cis d4) c8 d | bes4 a8 bes c4 bes8 c | % 24b
  f,4 g8(a bes4) a8 bes | g4 f8 g a4 g8 a | d,4 f g a |
  bes4 <bes, g'> <a f'> <g e'> | <f d'> <d d'> <e e'> <f f'> | % 24c
  <g g'>4 <f f'>8 <g g'> <a a'>4 <g g'>8 <a a'> |
  <d, d'>2 d''~ | d cis | d4 d,8(e f4) e8 f |
  d4 c8 d e4 d8 e | a,2 <a a'>~ | q <g g'>~ | q <f f'> | % 24d
  <e e'>2 <a, a'>4 <g g'>8 <a a'> | <bes bes'>1~ |
  q2 <a a'>~ | q <g g'>~ | q <f f'>4 f''( | g4) f8 g e4 d8 e | % 24e
  f4 e8 f d2~ | d c |
}

pianoLHtwoIII = \relative {
  \globalIII \vt
}
