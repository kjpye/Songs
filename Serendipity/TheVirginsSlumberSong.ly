\version "2.27.3"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Virgin’s Slumber Song"
  subtitle    = "Mariä Wiegenlied"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Max Reger"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "E. Teschemacher (Edward Frederick Lockton)"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 6/8
}

TempoTrack = {
% \set Score.tempoHideNote = ##t
  \tempo Allegretto 4=120 s2.*8 | s4.*3 | s2.*10 s2 s8
  \tempo 4=110 s8 s2.*2 s4.
  \tempo 4=120 s4. s2.*9
  \tempo 4=110 s2.*6 |
  \tempo 4=100 s2.*5 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1b" } s2.*4 \time 9/8
  \textMark \markup { \box "2a" } s4.*3 \time 6/8 s2.*2
  \textMark \markup { \box "2b" } s2.*4
  \textMark \markup { \box "3a" } s2.*4
  \textMark \markup { \box "3b" } s2.*5
  \textMark \markup { \box "4a" } s2.*4
  \textMark \markup { \box "4b" } s2.*5
  \textMark \markup { \box "5a" } s2.*5
  \textMark \markup { \box "5b" } s2.*5
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2. s2 s8 s\p s2. s2 s8 s\< | s4. s\> s2.\! s\pp s |
  s4.\< s16*9\! s8.\> | s4. s4 s8\! s2. | s4 s2\p | s2. | s4.\< s4\! s8\> | s2. | % 2
  s2.\pp s2.*2 s4.\> s\! | s2 s4-\markup\italic rit. s2.^\markup\italic dolciss. s2.\> s4.\! s^\markup\italic "a tempo" s2. |
  s2.*2\p s2\< s4\! s4.\> s\! | s2.*2\pp s4.\< s\! s\> s\! s2. |
  s2.*5\pp | s2.-\markup\italic "rit. dolciss." s2.\> s4. s\! s2.\pp s | % 5
}

soprano = \relative {
  \global
  R2. | r4 r8 r4 b'8 | d4 b8 g4 b8 | d4 e8 d4 8 |
  a4 b8 c8.(b16) a8 | b4. r4 r8 | e4 b8 gis4 a8 | b4(c8) b4 r8 \section |
  d4 8 cis4 b8 ais8.(b16) c8 \section | b4.~4 r8 | R2. | % 2a
  r4 b8 g4 b8 | d4(e8) d4. | a4 b8 c8.(b16) a8 | b4 e8 d4. |
  g2. | fis4. b, | e2. | d4. g, | % 3a
  R2. | c2.( | b4.) a | g r4 r8 | R2. |
  d'4 b8 g4 b8 | d4(e8) d4 r8 | a4 b8 c8.(b16) a8 | b4 e8 d4. | % 4a
  ees4 bes8 g4 aes8 | bes4(c8) bes4. | d4 8 c4 8 | a4 bes8 g4. | R2. |
  g'2. | fis4. b, | e2. | d4. g, | R2. | % 5a
  c2.( | b4.) a | g2.~ | g~ | g |
  \bar "|."
}

wordsSop = \lyricmode {
  A -- mid the ros -- es Ma -- ry sits
  And rocks her Je -- sus child,
  While a -- mid the tree tops
  Sighs the breeze so warm and mild, % 2a
  And soft and sweet -- ly sings a bird up -- on the bough,
  Ah ba -- by, sleep, dear one, % 3a
  Slum -- ber now!
  Hap -- py is Thy laugh -- ter, % 4a
  Ho -- ly is Thy si -- lent rest,
  lay Thy head in slum -- ber
  Fond -- ly on Thy mo -- ther’s breast!
  Ah! ba -- by, sleep, dear one, % 5a
  Slum -- ber now!
}

wordsSopMidi = \lyricmode {
  "A" "mid " "the " ros "es " Ma "ry " "sits "
  "\nAnd " "rocks " "her " Je "sus " "child, "
  "\nWhile " a "mid " "the " "tree " "tops "
  "\nSighs " "the " "breeze " "so " "warm " "and " "mild, " % 2a
  "\nAnd " "soft " "and " sweet "ly " "sings " "a " "bird " up "on " "the " "bough, "
  "\nAh " ba "by, " "sleep, " "dear " "one, " % 3a
  "\nSlum" "ber " "now! "
  "\nHap" "py " "is " "Thy " laugh "ter, " % 4a
  "\nHo" "ly " "is " "Thy " si "lent " "rest, "
  "\nlay " "Thy " "head " "in " slum "ber "
  "\nFond" "ly " "on " "Thy " mo "ther’s " "breast! "
  "\nAh! " ba "by, " "sleep, " "dear " "one, " % 5a
  "\nSlum" "ber " "now! "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2. s2 s8 s\p s2. s2 s8 s\< | s4. s\> s2.\! s\pp s |
  s4.\< s16*9\! s8.\> | s4. s4 s8\< s4 s\! s8 s\p | s2.*2 | s4.\< s4\! s8\> | s2. | % 2
  s2.\pp s2.*2 s4.\> s\! | s2 s4-\markup\italic rit. s2.^\markup\italic dolciss. s2.\> s4.\! s\omit\ppp^\markup{\dynamic ppp \italic "a tempo"} s2. |
  s2.*2\p s2\< s4\! s4.\> s\! | s2.*2\pp s4.\< s\! s\> s\!-\markup\italic rit. s2.-\markup\italic espress. |
  s2.*5\pp | s2.-\markup\italic "rit. dolciss." s2.\> s4. s\! s2.\pp s | % 5
}

alto = \relative {
  \global
  R2. | r4 r8 r4 d'8 | 4 8 4 g8 | 4 8 4 8 |
  fis4 8 e4 fis8 | g4. r4 r8 | gis4 fis8 e4 fis8 | gis4(a8) gis4 r8 \section |
  fis4 b8 g4 8 fis4 8 \section | 4.~4 b,8 | d4.~4 b8 | % 2a
  d4. 4(g8) | 4. 4. | fis4 8 e4 fis8 | g4 8 4. |
  b4(e8 g,4 b8) | 4. 4. | g4(c8 e,4 g8) | 4. 4. | % 3a
  R2. | g2.( | fis4.) 4. | d b | d4(e8 d4.) |
  d4 8 4 g8 | 4. g | fis4 8 e4 fis8 | g4 c8 b4(g8) | % 4a
  g4 8 ees4 f8 | g4. g | 4 8 4 8 | fis4 8 d4 bes'8 | a4 b8 g4. |
  b4(e8 g,4 b8) | 4. 4. | g4(c8 e,4 g8) | 2. | d4(e8) d4. | % 5a
  g2.( | fis4.) 4. | d2. | d | b |
}

wordsAlto = \lyricmode {
  A -- mid the ros -- es Ma -- ry sits
  And rocks her Je -- sus child,
  While a -- mid the tree tops
  Sighs the breeze so warm and mild, so mild, % 2a
  And soft and sweet -- ly sings a bird up -- on the bough,
  Ah ba -- by, sleep, dear one, % 3a
  Slum -- ber now, sleep now!
  Hap -- py is Thy laugh -- ter, % 4a
  Ho -- ly is Thy si -- lent rest,
  lay Thy head in slum -- ber
  Fond -- ly on Thy mo -- ther’s breast, Thy mo -- ther’s breast!
  Ah! ba -- by, sleep, dear, dear one, % 5a
  Slum -- ber now, sleep now!
}

wordsAltoMidi = \lyricmode {
  "A" "mid " "the " ros "es " Ma "ry " "sits "
  "\nAnd " "rocks " "her " Je "sus " "child, "
  "\nWhile " a "mid " "the " "tree " "tops "
  "\nSighs " "the " "breeze " "so " "warm " "and " "mild, " "so " "mild, " % 2a
  "\nAnd " "soft " "and " sweet "ly " "sings " "a " "bird " up "on " "the " "bough, "
  "\nAh " ba "by, " "sleep, " "dear " "one, " % 3a
  "\nSlum" "ber " "now, " "sleep " "now! "
  "\nHap" "py " "is " "Thy " laugh "ter, " % 4a
  "\nHo" "ly " "is " "Thy " si "lent " "rest, "
  "\nlay " "Thy " "head " "in " slum "ber "
  "\nFond" "ly " "on " "Thy " mo "ther’s " "breast, " "Thy " mo "ther’s " "breast! "
  "\nAh! " ba "by, " "sleep, " "dear, " "dear " "one, " % 5a
  "\nSlum" "ber " "now, " "sleep " "now! "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2. s2 s8 s\p s2. s2 s8 s\< | s4. s\> s2.\! s\pp s |
  s4.\< s16*9\! s8.\> | s4. s4 s8\< s4 s\! s8 s\p | s2.*2 | s4.\< s4\! s8\> | s2. | % 2
  s2.\pp s2.*2 s4.\> s\! | s2 s4-\markup\italic rit. s2.^\markup\italic dolciss. s2.\> s4.\! s^\markup\italic "a tempo" s2. |
  s2.*2\p s2\< s4\! s4.\> s\! | s2.*2\pp s4.\< s\! s\> s\! s2. |
  s2.*5\pp | s2.-\markup\italic "rit. dolciss." s2.\> s4. s\! s2.\pp s | % 5
}

tenor = \relative {
  \global
  R2. | r4 r8 r4 g8 |b4 g8 b4 d8 | b4 8 4 8 |
  d4. c4(d8) | 4 <b e>8 <b d>4. | b4. b | b b \section |
  b4 d8 e4 d8 cis8.(d16) e8 \section | d4.~4 b8 <fis c'>4.(<a c>4) b8 | % 2a
  b4(g8) b4(d8) | b4. b | d4 8 c4 d8 | 4 b8 4. |
  b4.(e) | d d | c2. | b4. b | % 3a
  R2. | e2.( | d4.) c | b d,4(g8) | b2. |
  b4 g8 b4 d8 | b4. b | d4 8 c4 d8 | 4 8 4(b8) | % 4a
  bes4 8 4 8 | 4. 4. | 4 d8 ees4 8 | c4 8 bes4 d8 | c4 8 b4. |
  b4.(e) | d d | c2. | b | 4. 4. | % 5a
  e2.( | d4.) c | b2. | b | g |
}

wordsTenor = \lyricmode {
  A -- mid the ros -- es Ma -- ry sits
  And rocks her Je -- sus child,
  While ’mid tree tops
  Sighs the breeze so warm and mild, so mild, % 2a
  And soft and sweet -- ly sings a bird up -- on the bough,
  Ah ba -- by, sleep, dear one, % 3a
  Slum -- ber now, sleep now!
  Hap -- py is Thy laugh -- ter, % 4a
  Ho -- ly is Thy si -- lent rest,
  lay Thy head in slum -- ber
  Fond -- ly on Thy mo -- ther’s breast, Thy mo -- ther’s breast!
  Ah! ba -- by, sleep, dear, dear one, % 5a
  Slum -- ber now, sleep now!
}

wordsTenorMidi = \lyricmode {
  "A" "mid " "the " ros "es " Ma "ry " "sits "
  "\nAnd " "rocks " "her " Je "sus " "child, "
  "\nWhile " "’mid " "tree " "tops "
  "\nSighs " "the " "breeze " "so " "warm " "and " "mild, " "so " "mild, " % 2a
  "\nAnd " "soft " "and " sweet "ly " "sings " "a " "bird " up "on " "the " "bough, "
  "\nAh " ba "by, " "sleep, " "dear " "one, " % 3a
  "\nSlum" "ber " "now, " "sleep " "now! "
  "\nHap" "py " "is " "Thy " laugh "ter, " % 4a
  "\nHo" "ly " "is " "Thy " si "lent " "rest, "
  "\nlay " "Thy " "head " "in " slum "ber "
  "\nFond" "ly " "on " "Thy " mo "ther’s " "breast, " "Thy " mo "ther’s " "breast! "
  "\nAh! " ba "by, " "sleep, " "dear, " "dear " "one, " % 5a
  "\nSlum" "ber " "now, " "sleep " "now! "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2. s2 s8 s\p s2. s2 s8 s\< | s4. s\> s2.\! s\pp s |
  s4.\< s16*9\! s8.\> | s4. s4 s8\< s4 s\! s8 s\p | s2.*2 | s4.\< s4\! s8\> | s2. | % 2
  s2.\pp s2.*2 s4.\> s\! | s2 s4-\markup\italic rit. s2.^\markup\italic dolciss. s2.\> s4.\! s^\markup\italic "a tempo" s2. |
  s2.*2\p s2\< s4\! s4.\> s\! | s2.*2\pp s4.\< s\! s\> s\! s2. |
  s2.*5\pp | s2.-\markup\italic "rit. dolciss." s2.\> s4. s\! s2.\pp s | % 5
}

bassOne = \relative {
  \global
  R2. | r4 r8 r4 g,8 | 4 d'8 g4 f8 | g,4 d'8 g4 d8 |
  g,4(d'8) a'4(d,8) | g,4 d'8 g4(d8) | \*4{e4(b8)} |
  b4 8 e4 8 g4 8 \section | b,4(fis'8 b4) d,8 | a4(d8 fis4) d8 | % 2a
  g,4(d'8) g4(d8) | g,4(d'8) g4(d8) | g,4 d'8 a'4 d,8 | g,4 d'8 g4(d8) |
  e4(b8 g'4 e8) | b4(g'8) b4(fis8) | c4(g'8 c4 g8) | g,4(d'8) g4(d8) | % 3a
  R2. | a4(e'8 a4 e8 | d4.) d | g,4(d'8) g4(d8) | g,4(d'8 g4 d8) |
  g,4 d'8 g4 d8 | g,4(d'8) g4(d8) | g,4 d'8 a'4 d,8 | g,4 d'8 g4. | % 4a
  ees4 8 bes'4 bes,8 | ees4(bes8) ees4(bes8) | 4 8 c4 8 | d4 8 g,4 g'8 | d4 8 g4(g,8) |
  e'4(b8 g'4 e8) | b4(fis'8) b4(fis8) | c4(g'8 c4 g8) | g,4(d'8) g4(d8) | g,4(d'8) g4(d8) | % 5a
  a4(e'8 a4 e8 | d4.) d | 2. | d | d |
}

bassTwo = \relative {
  \global
  R2. | r4 r8 r4 g,8 | 4. 4. | 4. 4. |
  g4. g | 2. | \*4 <e \tweak font-size #-2 e'>4. |
  b'4 8 e4 8 fis4 fis,8 \section | b4.~4 8 | a4.~4 g8 | % 2a
  g4. g | g g | 4 8 4 8 | 4 8 4. |
  e2. | b'4. b | c2. | g4. g | % 3a
  R2. | a2.( | d4.) d | g,4. g | 2. |
  g4 8 4 8 | 4. 4. | 4 8 4 8 | 4 8 4. | % 4a
  <ees \tweak font-size #-2 ees'>4 8 4 <ees \tweak font-size #-2 bes'>8 | % 4b
  <ees \tweak font-size #-2 ees'>4. q | bes'4 8 c4 8 | d4 8 g,4 r8 | R2. |
  q2. | b4. b | c2. | g | 4. 4. | % 5a
  a2.( | d4.) <d, \tweak font-size #-2 d'> | g2.~ | g~ | g |
}

wordsBassOne = \lyricmode {
  A -- mid the ros -- es Ma -- ry sits
  And rocks her Je -- sus child,
  While ’mid tree tops
  Sighs the breeze so warm and mild, so mild, % 2a
  And soft and sweet -- ly sings a bird up -- on the bough,
  Ah ba -- by, sleep, dear one, % 3a
  Slum -- ber now, sleep now!
  Hap -- py is Thy laugh -- ter, % 4a
  Ho -- ly is Thy si -- lent rest,
  lay Thy head in slum -- ber
  Fond -- ly on Thy mo -- ther’s breast, Thy mo -- ther’s breast!
  Ah! ba -- by, sleep, dear one, dear one, % 5a
  Slum -- ber now, sleep now!
}

wordsBassOneMidi = \lyricmode {
  A "mid " "the " ros "es " Ma "ry " "sits "
  "\nAnd " "rocks " "her " Je "sus " "child, "
  "\nWhile " "’mid " "tree " "tops "
  "\nSighs " "the " "breeze " "so " "warm " "and " "mild, " "so " "mild, " % 2a
  "\nAnd " "soft " "and " sweet "ly " "sings " "a " "bird " up "on " "the " "bough, "
  "\nAh " ba "by, " "sleep, " "dear " "one, " % 3a
  "\nSlum" "ber " "now, " "sleep " "now! "
  "\nHap" "py " "is " "Thy " laugh "ter, " % 4a
  "\nHo" "ly " "is " "Thy " si "lent " "rest, "
  "\nlay " "Thy " "head " "in " slum "ber "
  "\nFond" "ly " "on " "Thy " mo "ther’s " "breast, " "Thy " mo "ther’s " "breast! "
  "\nAh! " ba "by, " "sleep, " "dear " "one, " "dear " "one, " % 5a
  "\nSlum" "ber " "now, " "sleep " "now! "
}

wordsBassTwo = \lyricmode {
  A -- mid the ros -- es Ma -- ry sits
  While ’mid tree tops
  Sighs the breeze so warm and mild, so mild, % 2a
  And soft and sweet -- ly sings a bird up -- on the bough,
  Ah ba -- by, sleep, dear one, % 3a
  Slum -- ber now, sleep now!
  Hap -- py is Thy laugh -- ter, % 4a
  Ho -- ly is Thy si -- lent rest,
  lay Thy head in slum -- ber
  Fond -- oly on Thy mo -- ther’s breast!
  Ah! ba -- by, sleep, dear, dear one, % 5a
  Slum -- ber now!
}

wordsBassTwoMidi = \lyricmode {
  A "mid " "the " ros "es " Ma "ry " "sits "
  "\nWhile " "’mid " "tree " "tops "
  "\nSighs " "the " "breeze " "so " "warm " "and " "mild, " "so " "mild, " % 2a
  "\nAnd " "soft " "and " sweet "ly " "sings " "a " "bird " up "on " "the " "bough, "
  "\nAh " ba "by, " "sleep, " "dear " "one, " % 3a
  "\nSlum" "ber " "now, " "sleep " "now! "
  "\nHap" "py " "is " "Thy " laugh "ter, " % 4a
  "\nHo" "ly " "is " "Thy " si "lent " "rest, "
  "\nlay " "Thy " "head " "in " slum "ber "
  "\nFond" "ly " "on " "Thy " mo "ther’s " "breast! "
  "\nAh! " ba "by, " "sleep, " "dear, " "dear " "one, " % 5a
  "\nSlum" "ber " "now! "
}

pianoRHone = \relative {
  \global
  r4 r8 r4 b''8( | <d, d'>4) r8 r4 b8( | q4) b8(g4) b8 | % 1a
  d4 <e b' e>8\arpeggio ~4 d8( |
  \vo a4 b8 c8. b16 a8 | \ov <g b>4) <e' b d>8\arpeggio ~ <d b' d>4 r8 | % 1b
  <gis, e'>4(<fis b>8 <e gis>4 <fis a>8 |
  <gis b>4 <a cis>8 <gis b>4) <cis cis'>8 \section |
  <d fis d'>4(<fis, d'>8 <e g cis>4~<d g b>8 <cis fis ais>8. <d b'>16 <e ais cis>8 | % 2a
  <d fis b>4.~4 <b' b'>8 | <d fis d'>4.\arpeggio ~4) b8(~ |
  <d, b' d>4) b''8 <d, d'>4( b'8 | <b, g'>4 b'8 <d, d'>4 <e e'>8 | % 2b
  <d fis d'>4) <fis, b>8^(\vo c'8. b16 a8 | \ov <g b>4) <e' b' e>8\arpeggio~4. |
  <g, b g'>4\arpeggio(e'8 <g, b>4 e'8 | <fis, d' fis>4 d'8 b4 d8) | % 3a
  <e g e'>4(c'8 g4 c8 | <b, g' d'>4\arpeggio b'8 g4 b8 |
  <d, g d'>4\arpeggio <e e'>8 <d d'>4.) | <e, g c>2. \( | % 3b
  <d fis b>4.(<c fis a>) \) |
  <b' g' d'>4\arpeggio(b'8 g4 b8 | <d, g d'>4\arpeggio <e e'>8 <d g d'>4) b8( |
  <d, g d'>4\arpeggio b'8) <d g d'>4(b'8 | % 4a
  <b, g'>4 b'8 <d, g d'>4 <e e'>8 |
  <d fis d'>4) <fis, b>8^(\vo c'8. b16 a8 | b4 e8 <b d>4.\arpeggio |
  \ov <ees, g ees'>4) bes''8 <ees, g ees'>4 <bes bes'>8 | % 4b
  <g ees' g>4(<aes aes'>8 <bes ees bes'>4.) |
  \vo d4(bes8 g4 c8 | a4 bes8 g4) bes8( |
  a4^\markup\italic espress.  b8 g4) \ov d'8 |
  <g g'>4(e'8 \vo b4 e8 | fis4\arpeggio d8 b4 d8 | % 5a
  e4\arpeggio c8 g4 c8 | d4\arpeggio b8 g4 b8 | d4\arpeggio e8 d4.) |
  g,4(e8 c4 e8 | fis4 e8 fis4.) | d4(b8 g4 b8 | % 5b
  d4 e8 g4 d'8) | \ov <g, b g'>2.\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s2.*4 | fis'4. e4 fis8 | s2.*3 |
  s4.*3 s2.*2 | s2.*2 s4. e4 fis8 s2. | % 2
  s2.*9 |
  \set Staff.connectArpeggios = ##t
  s2.*2 | s4. e4 fis8 | g4 c8 d,4.\arpeggio | % 4a
  s2.*2 | <d g>4. ees | <c fis> <bes d> | <c fis> <b d> |
  s4. g''4(e8 | d4\arpeggio) r8 fis4 d8 | e4\arpeggio r8 e4 c8 | % 5a
  b4\arpeggio r8 d4 b8 | <d g>4\arpeggio e8 d4. |
  g,2. | <fis b>4.(<fis a>) | <d g>4. r4 r8 | 4 r8 <g b>4 r8 | s2. | % 5b
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.*3\pp s2 s8 s\< | s4. s\> | s2.\> s2.*2\ppp |
  s4.\< s\! s\> s4. s4\! s8\< s4 s\! s\> | s2.\pp s s4.\< s4\! s8\> s4. s\! | % 2
  s2.*3\ppp s4 s2-\markup\italic espress. | s2 s8 s-\markup\italic rit. s2.-\markup\italic dolciss. s2.\> s4 s8\< s4.-\markup\italic\column{ "a tempo" "espress."} s2\> s8 s\p |
  s2. s-\markup\italic espress. s4.\< s\! s\> s\! | s2.*4 | s2.-\markup\italic rit. |
  s2.*3\ppp s4. s\< s2\> s8 s\! | s2.*2-\markup\italic\column{"dolciss." "rit."} s\> s2.\ppp |
}

pianoLH = \relative {
  \global
  \*2{g,4(d'8 b'4 d,8)} | \*2{g,4(d'8 <g b>4 d8)} |
  g,4(d'8 a'4 d,8) | g,4(d'8 <g b>4 d8) | \*2{e,4(b'8 <e gis>4 b8) |} \section
  b,4(b'8 e,4 e'8 fis,4 fis'8 \section | b,4 fis'8 <b d>4) fis8 | % 2a
  a,4(d8 <fis c'>4 d8) |
  \*2{g,4(d'8 <g b>4 d8)} | g,4(d'8 a'4 d,8) | g,4(d'8 <g b>4 d8) | % 2b
  e,4(b'8 g'4 e8) | b4(fis'8 <b d>4 fis8) | c4(g'8 <c e>4 g8) | % 3a
  g,4(d'8 <g b>4 d8) |
  g,4(d'8 b'4 d,8) | a,4(a'8 <e' a>4 a,8 | d,4 d'8~4 d,8) | % 3b
  \*2{g4(d'8 b'4 d,8) |}
  \*2{g,4(d'8 <g b>4 d8) |} g,4(d'8 a'4 d,8) | g,4(d'8 <g b>4 d8) | % 4a
  ees,4(bes'8 g'4 bes,8) | ees,4(bes'8 <e g>4 bes8) | % 4b
  <bes, bes'>4.(<c c'> | <d d'> <g d'>) | <d d'>4.^~(<g d'>) |
  e4(b'8 g'4) r8 | b,4(fis'8 <b d>4) r8 | c,4(g'8 <c e>4) r8 | % 5a
  g,4(d'8 <g b>4 d8 | g,4 d'8 q4 d8) |
  a,4(a'8 <e' a>4 a,8 | d,4 d'8 c'4) d,8 | % 5b
  g,4(d'8 b'4 d,8 | g,4 d'8 b'4 d,8)~ | <g, d' g>2.\fermata |
}

#(set-global-staff-size 15)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \dynamicsBass
            \new Voice \bassOne
            \addlyrics \wordsBassOne
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \dynamicsBass
            \new Voice \bassTwo
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
        \consists Span_arpeggio_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-sop
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \teeny \dynamicsBass
            \new Voice \bassOne
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \teeny \dynamicsBass
            \new Voice \bassTwo
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
        \consists Span_arpeggio_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-alto
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \teeny \dynamicsBass
            \new Voice \bassOne
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \teeny \dynamicsBass
            \new Voice \bassTwo
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
        \consists Span_arpeggio_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-tenor
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \teeny \dynamicsBass
            \new Voice \bassOne
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \teeny \dynamicsBass
            \new Voice \bassTwo
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
        \consists Span_arpeggio_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "single-bass1"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \dynamicsBass
            \new Voice \bassOne
            \addlyrics \wordsBassOne
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \teeny \dynamicsBass
            \new Voice \bassTwo
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
        \consists Span_arpeggio_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "single-bass2"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \teeny \dynamicsBass
            \new Voice \bassOne
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \dynamicsBass
            \new Voice \bassTwo
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
        \consists Span_arpeggio_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-acc
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \teeny \dynamicsBass
            \new Voice \bassOne
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \teeny \dynamicsBass
            \new Voice \bassTwo
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
        \consists Span_arpeggio_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sop
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \teeny \dynamicsBass
            \new Voice \bassOne
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \teeny \dynamicsBass
            \new Voice \bassTwo
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
        \consists Span_arpeggio_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
        autoExtenders = ##t
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \teeny \dynamicsBass
            \new Voice \bassOne
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \teeny \dynamicsBass
            \new Voice \bassTwo
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
        \consists Span_arpeggio_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-tenor
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \teeny \dynamicsBass
            \new Voice \bassOne
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \teeny \dynamicsBass
            \new Voice \bassTwo
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
        \consists Span_arpeggio_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-bass1"
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \dynamicsBass
            \new Voice \bassOne
            \addlyrics \wordsBassOne
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \teeny \dynamicsBass
            \new Voice \bassTwo
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
        \consists Span_arpeggio_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-bass2"
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \teeny \dynamicsBass
            \new Voice \bassOne
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \dynamicsBass
            \new Voice \bassTwo
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
        \consists Span_arpeggio_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \dynamicsBass
            \new Voice \bassOne
%            \addlyrics \wordsBassOneMidi
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \dynamicsBass
            \new Voice \bassTwo
%            \addlyrics \wordsBassTwoMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \dynamicsBass
            \new Voice \bassOne
%            \addlyrics \wordsBassOneMidi
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \dynamicsBass
            \new Voice \bassTwo
%            \addlyrics \wordsBassTwoMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
    output-suffix = midi-tenor
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \dynamicsBass
            \new Voice \bassOne
%            \addlyrics \wordsBassOneMidi
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \dynamicsBass
            \new Voice \bassTwo
%            \addlyrics \wordsBassTwoMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
    output-suffix = "midi-bass1"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \dynamicsBass
            \new Voice \bassOne
            \addlyrics \wordsBassOneMidi
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \dynamicsBass
            \new Voice \bassTwo
%            \addlyrics \wordsBassTwoMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
    output-suffix = "midi-bass2"
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass one staff
          \new Staff = bassone \with {
            instrumentName = #"Opt Bass 1"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bassone} \dynamicsBass
            \new Voice \bassOne
%            \addlyrics \wordsBassOneMidi
          >>
                                % Single bass two staff
          \new Staff = basstwo \with {
            instrumentName = "Bass 2"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = basstwo} \dynamicsBass
            \new Voice \bassTwo
            \addlyrics \wordsBassTwoMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
