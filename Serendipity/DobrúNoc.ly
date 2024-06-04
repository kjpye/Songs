\version "2.25.16"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Dobrú Noc"
  subtitle    = "(Good Night)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Slovakian Folk Song"
  arranger    = "Arr. Victor V. Johnson"
%  opus        = "opus"

  poet        = "English text by V. J."
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

TempoTrack = {
  \tempo Peacefully 4=80
%  \set Score.tempoHideNote = ##t
  s1*7
  s2
  s1*2
  s2
  s1*5
  s2 \tempo 4=75 s2 \tempo 4=80 % 5b++
  s1*6
  s2
  s1*2
  s2
  s1*7
  s2
  s1*2
  s2
  s1*7
  s2 \tempo 4=70 s2 % 10b++
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box \circle "1" } s1*2
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "4a" } s1*2 s2
  \textMark \markup { \box "4b" } s1*2 s2
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" } s1
  \mark \markup { \box \circle "2" } s1*2
  \textMark \markup { \box "6a" } s1*2
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "7a" } s2 s1*2
  \textMark \markup { \box "7b" } s2
  \mark \markup { \box \circle "3" } s1*2
  \textMark \markup { \box "8a" } s1*3
  \textMark \markup { \box "8b" } s1*2 s2
  \textMark \markup { \box "9a" } s1*2
  \mark \markup { \box \circle "4" } s2
  \textMark \markup { \box "9b" } s1*3
  \textMark \markup { \box "10a" } s1*3
  \textMark \markup { \box "10b" } s1*4
}

sopranoI = \relative {
  \global
  R1*2
  b'4^\p^\markup "SI, SII"
  c8(b) a4 b8(a) % 3b
  g4(fis) e2
  R1
  R1 % 4a
  g4^\< a b2
  \time 2/4 d4\! c \time 4/4
  b2.^\> r4\! % 4b
  b4 c8 b a4 b8 a
  \time 2/4 g4 fis \time 4/4
  e2. r4 % 5a
  c'2.^\< b8\!(a)
  b2.^\> r4\!
  a2. g8(fis) % 5b
  e1
  R1^\markup\italic rit.
  b'4\omit\mp^\markup{\dynamic mp \italic "a tempo"} c8(b) a4 b8 a % 6a
  g4 fis e2
  b'4 c8(b) a4 b8 a % 6b
  g4 fis e4. r8
  g4^\< a b2\!
  \time 2/4 d4 c \time 4/4 % 7a
  b2.^\> r4\!
  b4 c8(b) a4 b8 c
  \time 2/4 b4 4 \time 4/4 % 7b
  b1 \bar "||" \key aes \major
  R1
  c4^\mf des8(c) bes4 c8(bes) % 8a
  aes4(g) f2
  c'4 des8(c) bes4 c8(bes)
  aes4(g) f4. r8 % 8b
  aes4 bes c2
  \time 2/4 ees4 des \time 4/4
  c2. r4 % 9a
  c4 des8 c bes4 c8 bes
  \time 2/4 aes4 g \time 4/4
  f2.^\< r4\! % 9b
  des'2. c8(bes)
  c2. r4
  bes2. aes8(g) % 10a
  f2.^\> r4\!
  bes1^\mp
  aes2(g) % 10b
  f1
  R1^\markup\italic "molto rit."
  c'1^\p
  \bar "|."
}

sopranoII = \relative {
  \global
  R1*2
  b'4^\p^\markup "SI, SII"
  c8(b) a4 b8(a) % 3b
  g4(fis) e2
  R1
  R1 % 4a
  g4^\< a b2
  \time 2/4 d4\! c \time 4/4
  b2.^\> r4\! % 4b
  b4 c8 b a4 b8 a
  \time 2/4 g4 fis \time 4/4
  e2. r4 % 5a
  a2.^\< g8\!(fis)
  g2.^\> r4\!
  e2. dis4 % 5b
  b1
  R1
  g'4\omit\mp 4 e4 8 8 % 6a
  b8(e) fis(dis) e4 d8(c)
  b4 \breathe e8 g e4 e8 fis % 6b
  e4 dis e4. r8
  g4\omit\< fis a\! (g)
  \time 2/4 g4 4 \time 4/4 % 7a
  fis2.^\> r4\!
  g4 4 e4 8 a
  \time 2/4 g4 a \time 4/4 % 7b
  g1 \bar "||" \key aes \major
  R1
  aes4^\mf 4 f f % 8a
  f4(e) f2
  aes4 4 f f
  f4(e) f4. r8 % 8b
  f4 g bes(aes)
  \time 2/4 aes4 4 \time 4/4
  g2. r4 % 9a
  aes4 8 8 f4 8 8
  \time 2/4 f4 e \time 4/4
  f2.^\< r4\! % 9b
  es2. aes8(g)
  aes2. r4
  f2. e4 % 10a
  c2.^\> r4\!
  des4.^\mp(ees8 f2)
  f2(e) % 10b
  f1
  R1
  aes1^\p
  \bar "|."
}

wordsSop = \lyricmode {
  Do -- brú __ noc má __ mi -- iá,
  do -- brú noc, do -- bre spi,
  nech sa -- ti sni -- va -- jú o mne sny.
  Do -- brú __ noc, do -- brú __ noc,
  
  Sleep, my __ dear one, \set associatedVoice = alignerII sleep on, __
  my __ child, my __ child.
  May the an -- gels bring slum -- ber mild.
  Close your eyes, __ do not cry;
  Sleep, my __ dear one, sleep on, my child.

  Do -- brú __ noc má __ mi -- lá,
  do -- brú __ noc má __ mi -- lá,
  do -- brú noc __ do -- bre spi,
  nech sa ti sno -- va -- jú o mne sny.
  Do -- brú __ noc, do -- brú __ noc,
  do -- brú __ noc.
  Oo
  
}

wordsSopOneSep = \lyricmode {
  Do -- brú __ noc má __ mi -- iá,
  do -- brú noc, do -- bre spi,
  nech sa -- ti sni -- va -- jú o mne sny.
  Do -- brú __ noc, do -- brú __ noc,
  
  Sleep, my __ dear one, sleep on, __
  my __ child.
  May the an -- gels bring slum -- ber mild.
  Close your eyes, __ do not cry;
  Sleep, my __ dear one, sleep on, my child.

  Do -- brú __ noc má __ mi -- lá,
  do -- brú __ noc má __ mi -- lá,
  do -- brú noc __ do -- bre spi,
  nech sa ti sno -- va -- jú o mne sny.
  Do -- brú __ noc, do -- brú __ noc,
  do -- brú __ noc.
  Oo
  
}

wordsSopTwoSep = \lyricmode {
  Do -- brú __ noc má __ mi -- iá,
  do -- brú noc, do -- bre spi,
  nech sa -- ti sni -- va -- jú o mne sny.
  Do -- brú __ noc, do -- brú __ noc,
  
  Sleep, my __ dear one, sleep on, __
  my __ child, my __ child.
  May the an -- gels bring slum -- ber mild.
  Close your eyes, __ do not cry;
  Sleep, my __ dear one, sleep on, my child.

  Do -- brú __ noc má __ mi -- lá,
  do -- brú __ noc má __ mi -- lá,
  do -- brú noc __ do -- bre spi,
  nech sa ti sno -- va -- jú o mne sny.
  Do -- brú __ noc, do -- brú __ noc,
  do -- brú __ noc.
  Oo
  
}

wordsSopIMidi = \lyricmode {
  "Do" "brú "  "noc " "má "  mi "iá, "
  "\ndo" "brú " "noc, " do "bre " "spi, "
  "\nnech " sa "ti " sni va "jú " "o " "mne " "sny. "
  "\nDo" "brú "  "noc, " do "brú "  "noc, "
  
  "\nSleep, " "my "  "dear " "one, " "sleep " "on, "
  "\nmy "  "child. "
  "\nMay " "the " an "gels " "bring " slum "ber " "mild. "
  "\nClose " "your " "eyes, "  "do " "not " "cry; "
  "\nSleep, " "my "  "dear " "one, " "sleep " "on, " "my " "child. "

  "\nDo" "brú "  "noc " "má "  mi "lá, "
  "\ndo" "brú "  "noc " "má "  mi "lá, "
  "\ndo" "brú " "noc "  do "bre " "spi, "
  "\nnech " "sa " "ti " sno va "jú " "o " "mne " "sny. "
  "\nDo" "brú "  "noc, " do "brú "  "noc, "
  "\ndo" "brú "  "noc. "
  "\nOo "
}

wordsSopAbove = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  on, my child.
  May the __ an -- gels bring
}

wordsSopIIMidi = \lyricmode {
  "Do" "brú "  "noc " "má "  mi "iá, "
  "\ndo" "brú " "noc, " do "bre " "spi, "
  "\nnech " sa "ti " sni va "jú " "o " "mne " "sny. "
  "\nDo" "brú "  "noc, " do "brú "  "noc, "
  
  "\nSleep, " "my "  "dear " "one, " "sleep " "on, "
  "\nmy " "child, " "my "  "child. "
  "\nMay " "the " an "gels " "bring " slum "ber " "mild. "
  "\nClose " "your " "eyes, "  "do " "not " "cry; "
  "\nSleep, " "my "  "dear " "one, " "sleep " "on, " "my " "child. "

  "\nDo" "brú "  "noc " "má "  mi "lá, "
  "\ndo" "brú "  "noc " "má "  mi "lá, "
  "\ndo" "brú " "noc "  do "bre " "spi, "
  "\nnech " "sa " "ti " sno va "jú " "o " "mne " "sny. "
  "\nDo" "brú "  "noc, " do "brú "  "noc, "
  "\ndo" "brú "  "noc. "
  "\nOo "
}

alto = \relative {
  \global
  R1*4
  b'4^\p^\markup A c8(b) a4 b8(a)
  g4(fis) e4. r8 % 4a
  e4^\< fis g2
  \time 2/4 g4\! a \time 4/4
  b2.^\> r4\! % 4b
  e,4 8 8 c4 8 8
  \time 2/4 b4 dis \time 4/4
  e2. r4 % 5a
  e2.^\< 4\!
  fis2^\> (e4) r\!
  c2(b4) 8(a) % 5b
  g1
  R1^\markup\italic rit.
  e'4\omit\mp^\markup{\dynamic mp \italic "a tempo"} 8(d) c4 8 8 % 6a
  b4 4 c b8(a)
  g4 \breathe 8 b c4 8 8 % 6b
  b4 4 e4. r8
  e4^\< d d2
  \time 2/4 e4\! 4 \time 4/4 % 7a
  e2^\> (dis4) r\!
  e4 8(d) c4 8 8
  \time 2/4 b4 dis \time 4/4 % 7b
  fis4(e2.) \bar "||" \key aes \major
  R1
  f4^\mf 4 des des % 8a
  c2 des4 c8(bes)
  aes4 \breathe 8 c des4 des
  c2 f4. r8 % 8b
  des4 ees ees2
  \time 2/4 f4 4 \time 4/4
  e2. r4 % 9a
  f4 8 8 des4 8 8
  \time 2/4 c4 e \time 4/4
  f2.^\< r4\! % 9b
  f2. 4
  g2(f4) r
  des2(c4) 8(bes) % 10a
  a2.^\> r4\!
  bes4.^\mp (c8 des2)
  c1 % 10b
  f1
  R1^\markup\italic "molto rit."
  aes1^\p
  \bar "|."
}

wordsAlto = \lyricmode {
  Do -- brú __ noc má __ mi lá,
  do -- brú noc, do -- bre spi,
  nech sa -- ti sni -- va -- jú o mne sny.
  Do -- brú __ noc, do -- brú __ noc,
  
  Sleep, my __ dear one, sleep on, __
  my __ child, my __ child.
  May the an -- gels bring slum -- ber mild.
  Close your eyes, __ do not cry;
  Sleep, my __ dear one, sleep on, my child.

  Do -- brú __ noc má __ mi -- lá, mi -- lá,
  do -- brú __ noc má __ mi -- lá,
  do -- brú noc do -- bre spi,
  nech sa ti sno -- va -- jú o mne sny.
  Do -- brú __ noc, __ do -- brú __ noc,
  do -- brú __ noc.
  Oo
  
}

wordsAltoMidi = \lyricmode {
  "Do" "brú "  "noc " "má "  "mi " "lá, "
  "\ndo" "brú " "noc, " do "bre " "spi, "
  "\nnech " sa "ti " sni va "jú " "o " "mne " "sny. "
  "\nDo" "brú "  "noc, " do "brú "  "noc, "
  
  "\nSleep, " "my "  "dear " "one, " "sleep " "on, " 
  "\nmy "  "child, " "my "  "child. "
  "\nMay " "the " an "gels " "bring " slum "ber " "mild. "
  "\nClose " "your " "eyes, "  "do " "not " "cry; "
  "\nSleep, " "my "  "dear " "one, " "sleep " "on, " "my " "child. "

  "\nDo" "brú "  "noc " "má "  mi "lá, " mi "lá, "
  "\ndo" "brú "  "noc " "má "  mi "lá, "
  "\ndo" "brú " "noc " do "bre " "spi, "
  "\nnech " "sa " "ti " sno va "jú " "o " "mne " "sny. "
  "\nDo" "brú "  "noc, "  do "brú "  "noc, "
  "\ndo" "brú "  "noc. "
  "\nOo "
}

violin = \relative {
  \global
  e''4\downbow b8(g') fis4 c(
  b4) b8(g') a4 g8(fis)
  e1 % 3b
  r2 g8\downbow(fis) e(fis)
  g2 e
  b4 dis e2 % 4a
  R1
  \time 2/4 R2 \time 4/4
  b4.\downbow c8 b\> e( g fis % 4b
  e2\!) c
  \time 2/4 b2~ \time 4/4
  b4 e, g b % 5a
  c2 e4(d8 c
  b4.) a8 g4 b8(d)
  c4. a8 b4 g'8(fis) % 5b
  a4. fis8 g4 b
  a4. g8 fis^\markup\italic rit. (e) cis(fis)
  e2.^\markup\italic "a tempo" r4 % 6a
  R1
  R1 % 6b
  R1
  R1
  \time 2/4 R2 \time 4/4 % 7a
  R1
  R1
  \time 2/4 R2 \time 4/4 % 7b
  R1 \bar "||" \key aes \major
  r4 c\mf\upbow f8(g) aes(bes)
  c2 bes % 8a
  aes4(g) f ees8(des
  c4) f\upbow f f8(g)
  aes4 g f2 % 8b
  des8(ees f g aes2)
  \time 2/4 f8 (g aes bes \time 4/4
  c4.) des8 c(bes) aes(g) % 9a
  f2 des4 bes(
  \time 2/4 c4) e\upbow \time 4/4
  f4. g8 aes4 f % 9b
  des2. f4\upbow
  c4.(f8) aes4(f)
  d4 f2 aes8(g) % 10a
  f2 c4(ees)
  des4. c8 bes4 des
  c4.(des8) c4 e\upbow % 10b
  f4. g8(aes4) c
  bes4.^\markup\italic "molto rit." aes8(g4) c,\upbow
  \acciaccatura c8 c'1\downbow
  \bar "|."
}

pianoRHone = \relative {
  \global
  <b' e g b>4 b16 e g b <c, e a>2
  <b e g>4 g16 b e g <c, e a>2
  <b e g b>2 <c e a> % 3b
  <b g'>4 <a fis'> <g e'> <b d>8 <a c>
  <fis g b>2 <e c'>
  <e b'>4 <dis b'> <fis g b>2 % 4a
  <e g>8 b' <f a> d' <d, b'>2
  \time 2/4 d'4 c \time 4/4
  <dis, fis b>2 <dis' b>8 <e c'> <dis b'> <fis a> % 4b
  <b, e f b>2 <c a'>
  \time 2/4 <b g'>4 <a fis'>
  <g e'>2~8 b, e g % 5a
  <a c>2 <c e>4 <b d>8 <a c>
  <g b>2. g8 b
  <c, a'>4 <e c'> b'2 % 5b
  <e, g b>2 b'8 e g b
  c4 d8 c b2
  <b, e g b>2\arpeggio r % 6a
  R1
  R1 % 6b
  R1
  R1
  \time 2/4 R2 \time 4/4 % 7a
  R1
  R1
  \time 2/4 R2 \time 4/4 % 7b
  <fis g b>4 e g8 a b d \bar "||" \key aes \major
  <f, g c>4. <bes des>8 <aes c> <g bes> <f aes> <e g>
  <c f aes c>2 <des f bes> % 8a
  <c f aes c>4 <e g bes c> <f aes c> ees'8 des
  <c, g' aes c>2 <f bes des>
  <f aes c>4 <e g c> <c g' aes c>2 % 8b
  <des f aes>4 <ees g bes> <ees bes' c> <c aes'>8 <ees c'>
  \time 2/4 <f aes ees'>4 <f aes des> \time 4/4
  <e g c>4. <f' des'>8 <e c'> <f des'> <e c'> <g bes> % 9a
  <c, g' aes c>2 <des bes'>
  \time 2/4 <c aes'>4 <bes g'> \time 4/4
  <aes f'>2~8 c, f c' % 9b
  <bes des>2 <des f>4 <c ees>8 <bes des>
  <aes c>2. aes8 c
  <des, bes'>4 <f des'> c'2 % 10a
  <f, aes c>2 c'8 f aes c
  <des, bes'>4. <ees c'>8 <f des'>4 <des bes'>
  <c aes'>4 <aes f'> <bes g'> <g e'> % 10b
  <aes f'>4. <bes g'>8 <c aes'>2
  <des bes'>4. <ees c'>8 <f des'>2
  <f g c>1
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s1*7
  \time 2/4 <e' g>2 \time 4/4 % 4a++
  s1*2
  \time 2/4 s2 \time 4/4
  s1 % 5a
  s1
  fis4 b, e2
  s2 a4 g8 fis % 5b
  s1
  <c' e>2 fis8 e dis4
  s1*5 % 6a
  \time 2/4 s2 \time 4/4 % 7a
  s1
  s1
  \time 2/4 s2 \time 4/4 % 7b
  s1
  s1
  s1 % 8a
  s2. <f, bes>4
  s1*3
  s2
  s1 % 9a
  s1
  s2
  s1 % 9b
  s1
  g4 c, f2
  s2 bes4 aes8 g % 10a
  s1*6
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p
  s1*5
  s2\< s\!
  \time 2/4 s2 \time 4/4
  s2 s\> % 4b
  s1\!
  \time 2/4 s2 \time 4/4
  s1 % 5a
  s2\< s\!
  s4 s2\> s4\!
  s1 % 5b
  s1
  s2 s-\markup\italic rit.
  s1-\markup\italic "a tempo" % 6a
  s1*4
  s2 s1*2 % 7a
  s2 % 7b
  s2\mp s\<
  s1\mf
  s1*5 % 8a
  s2
  s1*2 s2 % 9a
  s2.\< s4\! % 9b
  s1*2
  s1 % 10a
  s1\>
  s1\mp
  s1 % 10b
  s1
  s1-\markup\italic "molto rit."
  s1\p
}

pianoLHone = \relative {
  \global
  e8 b' e b e, a c4
  e,8 b' e b e, a c4
  e,8 b' e b e, a c4 % 3b
  b,8 b'4. <c, g'>4 <d a'>
  e8 b' e g,, a e a4
  b8 g' fis4 e8 b' e b % 4a
  <e, b'>4 <d d'> g,8 d' g4
  \time 2/4 c,,8 g' c4 \time 4/4
  b,8 b' dis fis b2 % 4b
  e,,8 b' e g, a e' a4
  \time 2/4 b,8 b' b,4 \time 4/4
  e,8 b' e f g2 % 5a
  a,8 e' a b c2
  e,,8 b' e f g2
  a,8 e' fis4 <b, a'>2 % 5b
  e,8 b' e f g2
  a,8 e' a4 b,8 fis' b4
  <e,, e'>2\arpeggio r % 6a
  R1*4
  \time 2/4 R2 \time 4/4 % 7a
  R1
  R1
  \time 2/4 r2 \time 4/4 % 7b
  e8 b' e f g2 \bar "||" \key aes \major
  c,,8 g' c4 <g fis'> <c, g' e'>
  f8 c' f4 bes,,8 f' des'4 % 8a
  c,8 c'4. <des, des'>4 <ees ees'>
  f8 c' f c, bes f' bes4
  c,8 des' c4 f,8 c' f c % 8b
  <bes, bes'>4 <ees ees'> aes8 ees' aes4
  \time 2/4 des,,8 aes' des4 \time 4/4
  c,8 c' e g c2 % 9a
  f,,8 c' f aes, bes f' bes4
  \time 2/4 c,8 c' c,4 \time 4/4
  f,8 c' f g aes2 % 9b
  es,8 f' bes c des2
  f,,8 c' f g aes2
  bes,8 f' g4 <c, bes'>2 % 10a
  f,8 c' f g aes2
  bes,,8 bes' des f bes4 g
  <c,, c'>2 c8 g' c4 % 10b
  f,8 c' f g aes2
  f,8 des' f bes des2
  \ss \rh
  \after 2 {\lh <f,, c'>2} <f'' aes c>1
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s1*5
  b,2 s % 4a
  s1
  \time 2/4 s2 \time 4/4
  s1*6
  s1*5 % 7
  s1*5 % 8
  s2
  s1*2 s2 % 9a
  s1*3 % 9b
%  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \sopranoI \sopranoII
            \new NullVoice = alignerII \sopranoII
            \new NullVoice = alignerI  \sopranoI
            \addlyrics \wordsSop
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto alignerI \wordsSopAbove
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new Staff = violin \with {
          instrumentName = #"Violin"
          shortInstrumentName = #"V"
        }
        <<
          \new Voice \violin
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \sopranoI \sopranoII
            \new NullVoice = alignerII \sopranoII
            \new NullVoice = alignerI  \sopranoI
            \addlyrics \wordsSop
            \new Lyrics \with {alignAboveContext = soprano} \lyricsto alignerI \wordsSopAbove
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new Staff = violin \with {
          instrumentName = #"Violin"
          shortInstrumentName = #"V"
        }
        <<
          \new Voice \violin
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopOneSep
          >>
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
          }
          <<
            \new Voice \sopranoII
            \addlyrics \wordsSopTwoSep
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new Staff = violin \with {
          instrumentName = #"Violin"
          shortInstrumentName = #"V"
        }
        <<
          \new Voice \violin
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-sop1"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopOneSep
          >>
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopTwoSep}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
        >>
        \new Staff = violin \with {
          instrumentName = #"Violin"
          shortInstrumentName = #"V"
        }
        <<
            \magnifyStaff #4/7
          \new Voice \violin
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-sop2"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopOneSep}
          >>
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
          }
          <<
            \new Voice \sopranoII
            \addlyrics \wordsSopTwoSep
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
        >>
        \new Staff = violin \with {
          instrumentName = #"Violin"
          shortInstrumentName = #"V"
        }
        <<
            \magnifyStaff #4/7
          \new Voice \violin
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"S1"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopOneSep}
          >>
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"S2"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopTwoSep}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new Staff = violin \with {
          instrumentName = #"Violin"
          shortInstrumentName = #"V"
        }
        <<
            \magnifyStaff #4/7
          \new Voice \violin
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = "midi-sop1"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopIMidi
          >>
                                % Soprano II staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \sopranoII
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
        >>
        \new Staff = violin \with {
          instrumentName = #"Violin"
          shortInstrumentName = #"V"
          midiInstrument = "violin"
        }
        <<
          \new Voice \violin
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = "midi-sop2"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \sopranoI
          >>
                                % Soprano II staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \sopranoII
            \addlyrics \wordsSopIIMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
        >>
        \new Staff = violin \with {
          instrumentName = #"Violin"
          shortInstrumentName = #"V"
          midiInstrument = "violin"
        }
        <<
          \new Voice \violin
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-alto
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \sopranoI
          >>
                                % Soprano II staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"II"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \sopranoII
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
        >>
        \new Staff = violin \with {
          instrumentName = #"Violin"
          shortInstrumentName = #"V"
          midiInstrument = "violin"
        }
        <<
          \new Voice \violin
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \set PianoStaff.connectArpeggios = ##t
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
