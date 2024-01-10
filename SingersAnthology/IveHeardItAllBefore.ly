\version "2.25.12"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I've Heard it All Before"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Gary Geld"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Peter Udell"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 6/4
}

TempoTrack = {
  \tempo "Angrily = in 2" 2.=92
  s1.*51 |
  \set Score.tempoHideNote = ##t
  \tempo 2.=85 s1*4 | % 234c+
  s2. \tempo 2.=42 s4 | \tempo 2.=85 s2 \tempo 2.=42 s4 \tempo 2.=85 s |
  \tempo "Andante - rubato" 2.=80 s1.*16 |
  \tempo "Angrily (Tempo I)" 2.=92 s1.*3 | % 236a
  s1*4 | s2. \tempo 2.=80 s4 | s2.. \tempo 2.=20 s8 | \tempo 2.=92 s2 \tempo 2.=100 s | % 236bc
  \tempo 2.=184 s1 | \tempo 2.=92 s2 \tempo 2.=184 s |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "230a" } s1.*3
  \textMark \markup { \box "230b" } s1.*3
  \textMark \markup { \box "230c" } s1.*3
  \textMark \markup { \box "230d" } s1.*3
  \textMark \markup { \box "231a" } s1.*3
  \textMark \markup { \box "231b" } s1.*3
  \textMark \markup { \box "231c" } s1.*3
  \textMark \markup { \box "231d" } s1.*3
  \textMark \markup { \box "232a" } s1.*3
  \textMark \markup { \box "232b" } s1.*3
  \textMark \markup { \box "232c" } s1.*3
  \textMark \markup { \box "232d" } s1.*3
  \textMark \markup { \box "233a" } s1.*3
  \textMark \markup { \box "233b" } s1.*3
  \textMark \markup { \box "233c" } s1.*2
  \textMark \markup { \box "233d" } s1.*2
  \textMark \markup { \box "234a" } s1.*2
  \textMark \markup { \box "234b" } s1.*2
  \textMark \markup { \box "234c" } s1. s1*2
  \textMark \markup { \box "234d" } s1*4
  \textMark \markup { \box "235a" } s1.*4
  \textMark \markup { \box "235b" } s1.*4
  \textMark \markup { \box "235c" } s1.*4
  \textMark \markup { \box "235d" } s1.*4
  \textMark \markup { \box "236a" } s1.*3
  \textMark \markup { \box "236b" } s1*4
  \textMark \markup { \box "236c" } s1*3
  \textMark \markup { \box "236d" } s1*2
}

melody = \relative {
  \global
  \override DynamicTextSpanner.style = #'none
  R1.*8 | a'2^\markup CHARLIE: bes4 2 aes4 |
  a8 bes~2 r r4 | r a bes4 2 g4 | a2. r2 d,4 |
  g2 a4 2 g4 | g a2 r g4 | 2 a4 2 f4 | % 231a
  g2. r2 r4 | r4 r8 d g a bes2.| r4 r8 d, g a bes2. |
  r4 r8 d, g a bes2 g4 | a2. r2 d,4 | c'2 4 bes2 aes4 |
  g8 a bes2 r g4 | f2 g4 a f2 | g2.~4 r r |
  a2 bes4 2 a4 | a bes2 r r4 | r a bes4 2 g4 | % 232a
  a2. r2 d,4 | g2 a4 2 g4 | g a2 r g4 |
  g2 a4 2 f4 | g2. r2 r4 \section | r4 r8 d g a bes2 r4 |
  r4 r8 d, g a bes2 r4 | r r8 d, g a bes2 g4 | a2. r2 d,4 |
  c'2 4 bes2 aes4 | g8 a bes2 r g4 | f2 g4 a f2 | % 233a
  g2.~4 r r | r g g g2 b4 | a g2 r2 r4 |
  r4 g g g2 b4 | a2 r4 r2 r4 |
  r4 g g g2 b4 | a8 g g2~2 e4 |
  a2.~4 r a | 8 8~2 2 cis4 | % 234a
  b8 a a2 r a4 | 2 4 4 cis2 |
  b8 a8 2~4 r a \time 4/4 | d4^\markup Slower 2 4 | bes4 4 4 4 |
  f2. r8 f | 2. r8 f | 2. \caesura f4\fermata | fis2\fermata ~4 \caesura d4 \section \key g \major |
  \time 6/4 a'2 bes4 2 a4 | a b2 r d,4 | a'2 b4 c2 d4 | a2.~4 r d, | % 235a
  g2 a4 2 g4 | g a2 r r4 | 4 4. b8 c2 b4 | 2.~4 r g |
  d'4^\markup Stronger e2 2 d4 | d e2~4 r d | d e2 e c4 | d2.~4 r d,^\p |
  c'2^\markup Meno b4 a2 g4 | a b2 r d,4 | a'2 4 g2 f4 | g2.~4 r r \section \key bes \major |
  r4 r8 d g a bes2. | r4 r8 d, g a bes2 r4 | r4 r8 d, g a bes2 g4 \time 4/4 | % 236a
  a2~8 r r4 | r e'4 8 d4 c8 | bes c d4~8 r r4 | r8 c, f^\cresc g a2 |
  r8 d, g a bes2 | % 236c
  r8^\markup{\halign #RIGHT \italic "molto rit."} f c' d e4.\omit\f^\markup\italic ten. d8\fermata |
  \after 2 \bar ";" \after 2 ^\markup\italic accel. d1~^\markup\italic "a tempo" |
  d1~^\markup\italic "ad lib" | d2\fermata ~8 r r4 |
  \bar "|."
}

words = \lyricmode {
  Stand and show your col -- ors. __
  Let's all go to war.
  The Lord will sure -- ly bless us.
  I've heard it all be -- fore.
  I've heard it all, a hun -- dred times.
  I've heard it all be -- fore.

  They al -- ways got a ho -- ly cause
  to march you off to war. __
  Tyr -- an -- y or jus -- tice,
  an -- ar -- chy or law.
  We must de -- fend our hon -- or,
  I've heard it all be -- fore.
  I've heard it all, a hun -- dred times.
  I've heard it all be -- fore.

  They al -- ways got a ho -- ly cause
  that's worth the dy -- in' for. __
  Some -- one writes a slo -- gan,
  rais -- es up a flag.
  Some -- one finds an en -- e -- my __ to blame. __
  The trum -- pet __ sounds the call to arms
  to leave the cit -- ies and the farms. __
  And al -- ways the end -- in' is the same,
  the same, the same, the same. __

  The dream has turned to ash -- es,
  the wheat has turned to straw. __
  And some -- one asks the ques -- tion:
  “What was the dy -- in' for?” __
  The liv -- in' can't re -- mem -- ber, __
  the dead no long -- er care. __
  But next time it won't hap -- pen.
  Up -- on my soul I swear. __
  I've heard it all, a hun -- dred times.
  I've heard it all be -- fore.

  Don't tell me “It's dif -- f'rent now.” __
  I've heard it all, I've heard it all,
  I've heard it all be -- fore. __
}

midiWords = \lyricmode {
  "Stand " "and " "show " "your " col "ors. " 
  "\nLet's " "all " "go " "to " "war. "
  "\nThe " "Lord " "will " sure "ly " "bless " "us. "
  "\nI've " "heard " "it " "all " be "fore. "
  "\nI've " "heard " "it " "all, " "a " hun "dred " "times. "
  "\nI've " "heard " "it " "all " be "fore.\n"

  "\nThey " al "ways " "got " "a " ho "ly " "cause "
  "\nto " "march " "you " "off " "to " "war. " 
  "\nTyr" an "y " "or " jus "tice, "
  "\nan" ar "chy " "or " "law. "
  "\nWe " "must " de "fend " "our " hon "or, "
  "\nI've " "heard " "it " "all " be "fore. "
  "\nI've " "heard " "it " "all, " "a " hun "dred " "times. "
  "\nI've " "heard " "it " "all " be "fore.\n"

  "\nThey " al "ways " "got " "a " ho "ly " "cause "
  "\nthat's " "worth " "the " dy "in' " "for. " 
  "\nSome" "one " "writes " "a " slo "gan, "
  "\nrais" "es " "up " "a " "flag. "
  "\nSome" "one " "finds " "an " en e "my "  "to " "blame. " 
  "\nThe " trum "pet "  "sounds " "the " "call " "to " "arms "
  "\nto " "leave " "the " cit "ies " "and " "the " "farms. " 
  "\nAnd " al "ways " "the " end "in' " "is " "the " "same, "
  "\nthe " "same, " "the " "same, " "the " "same.\n" 

  "\nThe " "dream " "has " "turned " "to " ash "es, "
  "\nthe " "wheat " "has " "turned " "to " "straw. " 
  "\nAnd " some "one " "asks " "the " ques "tion: "
  "\n“What " "was " "the " dy "in' " "for?” " 
  "\nThe " liv "in' " "can't " re mem "ber, " 
  "\nthe " "dead " "no " long "er " "care. " 
  "\nBut " "next " "time " "it " "won't " hap "pen. "
  "\nUp" "on " "my " "soul " "I " "swear. " 
  "\nI've " "heard " "it " "all, " "a " hun "dred " "times. "
  "\nI've " "heard " "it " "all " be "fore. "

  "\nDon't " "tell " "me " "“It's " dif "f'rent " "now.” " 
  "\nI've " "heard " "it " "all, " "I've " "heard " "it " "all, "
  "\nI've " "heard " "it " "all " be "fore. " 
}

pianoRHone = \relative {
  \global
  \repeat unfold 16 {r8 a(bes d g a bes a g d bes a) |}
  \vo r4 r8^\markup L.H. d' g a bes2-- r4 | r4 r8 d, g a bes2-- r4 | % 231b+
  r4 r8 d, g a bes2 r4 | r4 r8 d, g a c2-> r4 | \vo <aes,, c>2-- r4^\markup\italic R.H. <aes'' ees'>2-- r4 | % 231c
  \ov <g,, bes>2-- \vo r4 <g'' d'>2-- r4 | % 231d
  \ov a,,2-- \vo r4 <a'' c>2-- r4 |
  r4 r8^\markup\italic L.H. d,8 g a bes2 r4 \ov |
  \repeat unfold 8 {r8 a,,(bes d g a bes a g d bes a) |} % 232a
  \section \vo r4 r8^\markup L.H. d' g a bes2 r4 | % 232c+
  r4 r8 d, g a bes2 r4 |
  r4 r8 d, g a bes2 r4 |
  r4 r8 d, g a c2-> r4 |
  <aes,, c>2-- r4^\markup R.H. <aes'' e'>2-- r4 | % 233a
  <g,, bes>2-- r4 <g'' d'>2-- r4 |
  a,,2 r4 <a'' c>2 r4 |
  r4 r8 d, g a bes2-> r4 \ov | % 233b
  \tuplet 3/2 {g,,8([b e]} \tuplet 3/2 {g[b e]} \tuplet 3/2 {g b e} <e g>2) r4 |
  \tuplet 3/2 {e,,,8([a cis]} \tuplet 3/2 {e[a cis]} \tuplet 3/2 {e a cis} <cis e>2) r4 |
  \tuplet 3/2 {g,,8([b e]} \tuplet 3/2 {g[b e]} \tuplet 3/2 {g b e} <e g>2->) r4 | % 233c
  \tuplet 3/2 {e,,,8([a cis]} \tuplet 3/2 {e[a cis]} \tuplet 3/2 {e a cis} <cis e>2) r4 |
  \tuplet 3/2 {g,,8([b e]} \tuplet 3/2 {g[b e]} \tuplet 3/2 {g b e} <e g>2->) r4 | % 233d
  \tuplet 3/2 {e,,,8([a cis]} \tuplet 3/2 {e[a cis]} \tuplet 3/2 {e a cis} <cis e>2->) r4 |
  \tuplet 3/2 {fis,,,8([a d]} \tuplet 3/2 {fis[a d]} \tuplet 3/2 {fis a d} <d fis>2->) r4 \clef bass | % 234a
  \tuplet 3/2 {cis,,,8([fis a]} \clef treble \tuplet 3/2 {cis[fis a]} \tuplet 3/2 {cis fis a} <a cis>2->) r4 \clef bass |
  \tuplet 3/2 {dis,,,8([fis b]} \clef treble \tuplet 3/2 {dis[fis b]} \tuplet 3/2 {dis fis b} <b dis>2->) r4 \clef bass | % 234b
  \tuplet 3/2 {fis,,,8([a cis]} \tuplet 3/2 {fis[a cis]} \clef treble \tuplet 3/2 {fis a cis} <a cis fis>2->) r4 \clef bass |
  \tuplet 3/2 {dis,,8([fis b]} \clef treble \tuplet 3/2 {dis[fis b]} \tuplet 3/2 { dis fis b} <b eis>2->) \clef bass <fis,,\laissezVibrer dis'\laissezVibrer>4 \time 4/4 | % 234c
  \tuplet 3/2 {d8[f bes]} \clef treble \tuplet 3/2 {d[f bes]} <bes d>4\arpeggio r |
  <bes, des ges bes>1\arpeggio |
  <aes des f>4 \vo <aes' des f> <aes' des f> r | % 234d
  <a,, ees' f>4-- <a' ees' f>-> <a' ees' f>-> r |
  <a,, ees' f>4 <a' ees' f>-> <a' ees' f> \caesura r\fermata |
  <c,, d fis>4\arpeggio <a' c d fis>\arpeggio <a' c d fis>\arpeggio\fermata \caesura r4 \section \key g \major |
  <c, a'>2(<d b'>4) 2(<c a'>4) | % 235a
  q4(<d b'>2~2.) |
  <c a'>2(<d b'>4 <e c'>2 <fis d'>4 |
  <c a'>2.~2) r4 |
  <b g'>2(<c a'>4) 2(<b g'>4) | % 235b
  q4(<c a'>2~2.) |
  <c a'>2(<d b'>4 <e c'>2 <d b'>4) |
  q2.~4 r r |
  \ov <e,, g d'>2.-- <g'' a c e>2-> r4 | % 235c
  <fis,, b d>2.-- <fis'' b e>2-> r4 |
  <e,, g c d>2.-- <g'' a c e>2-> r4 |
  <fis,, b d>2.-- <fis'' b d>2-> r4 |
  <e c'>2->(<d b'>4) <c a'>2->(<b g'>4) | % 235d
  <c a'>4-> <d b'>2~4 r r |
  <c, f a>4 r r r2 r4 |
  \repeat tremolo 24 {g'32(g,)} \section \key bes \major |
  \vo \repeat unfold 3 {r4 r8 d'' g a bes2-> r4 |} % 236a
  \time 4/4 \ov r4 <d, g a c d>-> q-> q-> | % 236b
  <ees aes c ees>4-> r r2 |
  r2 r4 <bes, d g>-- |
  <a c f a>4 r r q |
  <bes d g bes>4-- r r q-- | % 236c
  <c ees a c>4-- r r2 |
  r16 \ottava #1 <ees'' ees'> <d d'> <c c'> <bes bes'> <a a'> <fis fis'> \ottava #0 <ees ees'> \bar "!"
  <d d'> <c c'> <bes bes'> <a a'> <fis fis'> <ees ees'> <d d'> <bes bes'> |
  \vt a16_\markup\italic L.H. ([d e] \vo <fis bes>->^\markup\italic R.H. ) % 236d
  \vt a16([d e] \vo <fis bes>->) \ottava #1 \vt a([d e] \vo <fis bes>->) \vt a([d e] \vo <fis b>->) |
  \vt \repeat tremolo 8 {<a, d fis a>32\fermata \lh \clef treble \ottava #1 <fis bes d>\fermata} \clef bass \ottava #0 g,,,8-^ r r4 |
%  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s1.*8 \section | s1.*4 |
  s1.*4 | % 231a
  \repeat unfold 4 {r8 a(bes d g a bes a g d bes a) |}
  s1.*3 | r8 a(bes d g a bes a g d bes a) |
  s1.*8 \section | % 232a
  \repeat unfold 4 {r8 a(bes d g a bes a g d bes a) |}
  s1.*3 | % 233a
  r8 a(bes d g a bes a g d bes a) | s1.*2 | % 233b
  s1.*4 | % 233cd
  s1.*5 | s1*6 | % 234
  a'2.(g2) r4 | a2.(g2) r4 | a2.(g_\markup\italic L.H. ) | e'2.(d2) r4 | % 235a
  b2.(a2) r4 | b2.(a2) r4 | s1. | s |
  s1.*8 | % 235cd
  r8 a,(bes d g a bes a g d bes a) | % 236a
  r8 a(bes d g a bes a g d bes a) |
  r8 a(bes d g a bes a g d bes g) |
  s1*9 |
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1.\mf | s1.-\markup\italic "cresc. poco a poco" | s1. |
  s1. | s\cresc | s |
  s1. | s\dim | s\p |
  s1.*3 |
  s1.*12 | % 231
  s1.*7 | s1.\cresc | s1.\omit\f | s1.*3 |
  s1.*10 | % 233
  s1.*5 | s1 | s\f | s | s4 s2.\< | s2. s4\spp | s1 |
  s1.\pp | s1.*14 | s1.\ppp\< | % 235
  s1.\omit\f | s1.*2 | s1\ff | s1 | s2 s4 s\mp | s4 s2.\cresc | % 236ab
  s2. s4-\markup{\halign #RIGHT \italic "molto rit."} | % 236c
  s2\f s-\markup\italic ten. |
  s2-\markup\italic "a tempo" s-\markup\italic accel. |
  s1\<-\markup\italic rapidly |
  s1\omit\ff |
}

pianoLHone = \relative {
  \global
  g2.-- ~4 r r | f2.-- ~4 r r | e2.-- ~4 r r |
  d2.-- ~4 r r | <g, g'>2.-> ~4 r r | <f f'>2.-> ~4 r r |
  <ees ees'>2.-> ~4 r r | <d d'>2.-- ~2 r4 \section | <g g'>2.-- ~4 r r |
  <f f'>2.-- ~4 r r | <d d'>2.-- ~4 r r | <d d'>2.-- ~4 r r |
  <d d'>2.-- ~4 r r | q2.-- ~4 r r | q2.-- ~4 r r | % 231a
  <g g'>2.~4 r r | q2.-- ~4 r r | <f f'>2.-- ~4 r r |
  <ees ees'>2.~4 r r | <d d'>2.~4 r r | % 231c
  aes'8(ees' aes c \rh ees aes c aes ees \lh c aes ees) |
  g,8(d' g bes \rh d g bes g d \lh bes g d) | % 231d
  f,8(c' f a \rh c f a f c \lh a f c) |
  \ov <g g'>2.~4 r r |
  <g g'>2.-- ~4 r r | <f f'>2.-- ~4 r r | <ees ees'>2.-- ~4 r r | % 232a
  \repeat unfold 4 {<d d'>2.-- ~4 r r |}
  <g g'>2.~4 r r \section | q2.~4 r r | % 232c+
  <f f'>2.~4 r r | <ees ees'>2.~4 r r | <d d'>2.~4 r r |
  aes'8(e' aes c \rh ees aes c aes ees \lh c aes ees) | % 233a
  g,8(d' g bes \rh d g bes g d \lh bes g d) |
  f,8(c' f a \rh c f a f c \lh a f c) |
  <g g'>2.~4 r r | % 233b
  \tuplet 3/2 {e8([b' g']} \clef treble \tuplet 3/2 {b[e g]} \tuplet 3/2 {b e g} <e g b>2) r4 \clef bass |
  \tuplet 3/2 {a,,,8([cis e]} \tuplet 3/2 {a[cis e]} \clef treble \tuplet 3/2 {a cis e} <c e a>2->) r4 \clef bass |
  \tuplet 3/2 {a,,8([b g']} \clef treble \tuplet 3/2 {b[e g]} \tuplet 3/2 {b e g} <e g b>2->) r4 \clef bass | % 233c
  \tuplet 3/2 {a,,,8([cis e]} \tuplet 3/2 {a[cis e]} \clef treble \tuplet 3/2 {a cis e} <cis e a>2->) r4 \clef bass |
  \tuplet 3/2 {e,,,8([b' g']} \clef treble \tuplet 3/2 {b[e g]} \tuplet 3/2 {b e g} <e g b>2->) r4 \clef bass | % 233d
  \tuplet 3/2 {a,,,8([cis e]} \tuplet 3/2 {a[cis e]} \clef treble \tuplet 3/2 {a cis e} <c e a>2->) r4 \clef bass |
  \tuplet 3/2 {d,,,8([a' fis']} \clef treble \tuplet 3/2 {a8[d fis]} \tuplet 3/2 {a d fis} <d fis a>2->) r4 \clef bass | % 234a
  \tuplet 3/2 {fis,,,8([a cis]} \tuplet 3/2 {fis[a cis]} \clef treble \tuplet 3/2 {fis a cis} <a cis fis>2->) r4 \clef bass |
  \tuplet 3/2 {bes,,,8([fis' dis']} \tuplet 3/2 {fis[a dis]} \clef treble \tuplet 3/2 {fis b dis} <b dis fis>2->) r4 \clef bass | % 234b
  \tuplet 3/2 {fis,,8([a cis]} \tuplet 3/2 {fis[a cis]} \clef treble \tuplet 3/2 {fis a cis} <a cis fis>2->) r4 \clef bass |
  \tuplet 3/2 {b,,,8([ fis' dis']} \tuplet 3/2 {fis[b dis]} \clef treble \tuplet 3/2 {fis b dis} <b dis fis>2->) \clef bass b,,4( \time 4/4 | % 234c
  \vo bes2) \ov <bes' d f>4\arpeggio r4 |
  <ges, des'>1\arpeggio |
  <des aes' f'>4 \ss \rh <aes'' des f> <aes' des f> r \hs \lh | % 243d
  <c,,, c'>4 \ss \rh <c'' ees f> <c' ees f> r \ss \lh |
  <b,,, b'>4 \rh <b'' ees f> <b' ees f> \caesura r\fermata \lh \ov |
  <a,, d fis>4\arpeggio \clef treble <a' c d fis>\arpeggio <a' c d fis>\fermata\arpeggio \caesura r4 \clef bass \section \key g \major \time 6/4 |
  \repeat unfold 3 {<g,, d' b'>2.~2 r4 |} <g e' c'>2.~2 r4 | % 235a
  \vo <c' e>2.\arpeggio ~2 r4 | q2.\arpeggio ~2 \hs \rh r4 \ss \lh e2.\arpeggio(fis) \rh a2.(g4) r r |
  \hs \lh \ov <c,,, g'>2.-- \clef treble <g''' a c e>2-> r4 \clef bass | % 235c
  <b,,, fis' b>2.-- \clef treble <fis''' b e>2-> r4 \clef bass |
  <a,,, e' c'>2.-- \clef treble <g''' a c e>2-> r4 \clef bass |
  <b,,, fis' b>2.-- \clef treble <fis''' b d>2-> r4 \clef bass |
  <a,, g' c>2. ~q4 r r | <g d'>2.~4 r r | <f c'>4 r r r2 r4 | % 235d
  \repeat tremolo 24 {g32(g,)} \section \key bes \major |
  <g' g'>2.-> ~4 r r | <f f'>2.-> ~4 r r | <ees ees'>2.-> ~4 r r \time 4/4 | % 236a
  r4 <d d'>-> q-> q-> | <aes aes'>-> r r2 | r2 r4 <g' d' g>-- | <f c' f>-- r r q-- |
  <g d' g>4-- r r q-- | <f c' f>-- r r2 \clef treble | % 236c
  r16 <ees'' ees'> <d d'> <c c'> <bes bes'> <a a'> <fis fis'> \clef bass <ees ees'> \bar "!"
  <d d'>16 <c c'> <bes bes'> <a a'> <fis fis'> <ees ees'> <d d'> <bes bes'> |
  s1 \clef treble | s2 \clef bass \vt <g g'>8-^ r8 r4 |
%  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s1.*12 |
  s1.*12 | % 231
  s1.*12 |
  s1.*10 | % 233
  s1.*5 | \tuplet 3/2 {bes,,8^([f' d']} \tuplet 3/2 {f bes d)} s2 | s1*5 |
  s1. | s | \hideNotes b2. \ss \rh g'2 4 \lh c,2. s \unHideNotes | % 235a
  \vt \acciaccatura g,8 <g d'>2.\arpeggio ~2 r4 | % 235b
  \acciaccatura g8 <g d'>2.\arpeggio ~2 r4 |
  <d' fis>1.\arpeggio |
  <g, d' b'>2.~4 r r |
  s1.*8 | % 235cd
  s1.*3 | s1*9 |
%  \bar "|."
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "single")
  \score {
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
            \consists "Volta_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \words
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff =pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "singlepage")
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \addlyrics \words
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice = "melody" \melody
            \addlyrics \midiWords
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
