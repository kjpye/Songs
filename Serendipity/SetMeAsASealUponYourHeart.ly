\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Set me as a seal upon your heart"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "David N. Childs"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Song of Solomon"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 2/2
}

TempoTrack = {
  \tempo 4=112
  s1
  \set Score.tempoHideNote = ##t
  s1*4
  s4 \tempo 4=100 s2. \tempo 4=112 % 3b+
  s1*18
  \tempo 4=100 s1 \tempo 4=112 % 4b++++
  s1*8
  \tempo 4=100 s1 % 5b++
  s2 \tempo 4=50 s
  \tempo 4=90 s1*3 % 5c
  \tempo 4=50 s1 \tempo 4=112
  s1*14
  \tempo 4=100 s1
  s1
  \tempo 4=50 s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "3a" } s1*4
  \mark \markup { \box "3b" } s1*4
  \mark \markup { \box "3c" } s1*4
  \mark \markup { \box "3d" } s1*4
  \mark \markup { \box "4a" } s1*4
  \mark \markup { \box "4b" } s1*5
  \mark \markup { \box "4c" } s1*3
  \mark \markup { \box "5a" } s1*3
  \mark \markup { \box "5b" } s1*4
  \mark \markup { \box "5c" } s1*4
  \mark \markup { \box "6a" } s1*3
  \mark \markup { \box "6b" } s1*3
  \mark \markup { \box "6c" } s1*3
  \mark \markup { \box "7a" } s1*3
  \mark \markup { \box "7b" } s1*5
}

trombone = \relative {
  \global \tiny
  e4\mf fis2 e8 fis
  a4 cis,\< d cis'
  cis\!-- b2.\> ~
  b4\! cis\< e d\!
  a4. d,8 a'2~ % 3b
  a4 g-\markup\italic rit. d'4. cis8
  <<{d1-\markup\italic "a tempo" ~ | d2 r} \new Voice {s4 s2.\> | s1\!}>>
  R1*11
  r4 a\mp d e % 4a+++
  d2. cis8 d % 4b
  fis4 e b cis
  a2. a'4
  a4 g fis g
  b,2\> cis
  R1\! % 4c
  R1*7
  r4-\markup\italic rit. cis4\f(d a' % 5b++
  a2 g\fermata)
  R1*15
  r2 r4 a, % 7a++
  g4 b d cis % 7b
  d2. a4\p
  a2-\markup\italic rit. 2
  r2\pp fis4--\> fis--
  fis2\fermata\!
}

soprano = \relative {
  \global \voiceOne
  R1*8 \break
  e'4^\mf^\markup\italic unison fis2 e8 fis % 3c
  a4 d, cis' d
  b2. cis8 b
  a4 fis cis d
  e2. fis4 % 3d
  d2. e8 fis
  g2. fis4^\cresc
  e2. fis8 g
  a4(b) cis(d) % 4a
  d2.--^\f bes4
  a2^\> 2
  a1\!
  \oneVoice R1*5
  r4^\markup\italic "a tempo" \voiceOne b8^\mp cis b4 4 % 4c
  \tuplet 3/2 {fis4 4 g} a2
  \oneVoice R1
  R1 % 5a
  r4 \voiceOne d8^\mf cis b4 d
  \tuplet 3/2 {cis4 4 b} a2
  \oneVoice r4 \voiceOne b a d, % 5b
  e2^\< fis\!
  \oneVoice R1
  R1\fermata \voiceOne
  a4\omit\pp^\markup{\dynamic pp \bold Slow} 2 8 8 % 5c
  d4 g,2.\fermata
  a8 8 8 8 d4(cis8 d)
  g,2\fermata g\fermata
  e4\omit\mf^\markup{\dynamic mf \bold "Tempo I"} fis2 e8 fis % 6a
  a4^\markup\italic unison d, cis' d
  b2. cis8 b
  a4 fis cis d % 6b
  e2. fis4
  d2.^\markup\italic unison e8^\cresc fis
  g2. fis4 % 6c
  e2. fis8 g
  a4(d,) cis'(d)
  b2. 4 % 7a
  b4(cis) e(d)
  a2.->^\f 4
  a2^\markup\italic unison 2 % 7b
  a2. a,4^\p a2^\markup\italic rit. 2
  a1~
  a1\fermata
  \bar "|."
}

wordsW = \lyricmode {
  Set me as a seal u -- pon your heart,
  as a seal u -- pon your arm.
  For love is as strong,
  for love is as strong __ as __ death,
  as strong as death.

  Ma -- ny wa -- ters can -- not quench love,
  Ma -- ny wa -- ters can -- not quench love,
  floods can -- not drown it.
  Wa -- ters can -- not quench love,
  nei -- ther can the floods __ drown it.

  Set me as a seal u -- pon your heart,
  as a seal u -- pon your arm. __
  For love, is as strong,
  for love is as strong __ as __ death.
  as strong __ as __ death,
  as strong as death,
  as strong as death.
}

wordsWMidi = \lyricmode {
  "\nSet " "me " "as " "a " "seal " u "pon " "your " "heart, "
  "\nas " "a " "seal " u "pon " "your " "arm. "
  "\nFor " "love " "is " "as " "strong, "
  "\nfor " "love " "is " "as " "strong "  "as "  "death, "
  "\nas " "strong " "as " "death. "

  "\nMa" "ny " wa "ters " can "not " "quench " "love, "
  "\nMa" "ny " wa "ters " can "not " "quench " "love, "
  "\nfloods " can "not " "drown " "it. "
  "\nWa" "ters " can "not " "quench " "love, "
  "\nnei" "ther " "can " "the " "floods "  "drown " "it. "

  "\nSet " "me " "as " "a " "seal " u "pon " "your " "heart, "
  "\nas " "a " "seal " u "pon " "your " "arm. " 
  "\nFor " "love, " "is " "as " "strong, "
  "\nfor " "love " "is " "as " "strong "  "as "  "death. "
  "\nas " "strong "  "as "  "death, "
  "\nas " "strong " "as " "death, "
  "\nas " "strong " "as " "death. "
}

alto = \relative {
  \global \voiceTwo 
  R1*8
  e'4^\omit\mf fis2 e8 fis % 3c
  a4 d, cis' d
  b2. cis8 b
  a4 fis cis d
  e2. fis4 % 3d
  d2. e8 fis
  g2. fis4^\omit\cresc
  e2. fis8 g
  a4(b) cis(d) % 4a
  d2.--^\omit\f bes4
  a2^\omit\> 2
  a1\!
  s1*5
  s4 b8^\omit\mp cis b4 4 % 4c
  \tuplet 3/2 {fis4 4 g} a2
  s1
  s1 % 5a
  s4 d8^\omit\mf cis b4 d
  \tuplet 3/2 {cis4 4 b} a2
  s4 b a d, % 5b
  e2^\omit\< fis\!
  s1
  s1
  fis4\omit\pp 2 8 8 % 5c
  fis4 e2.\fermata
  fis8 8 8 8 2
  e2\fermata e\fermata
  e4\omit\mf d2 e8 fis % 6a
  a4 d, cis' d
  b2. cis8 b
  a4 cis, cis d % 6b
  b2(cis4) 4
  d2. e8^\omit\cresc fis
  g2. fis4 % 6c
  e2. fis8 g
  a4(d,) a'(fis)
  g2. 4 % 7a
  g2 2
  fis2.->^\omit\f d4
  a'2 2 % 7b
  a2. a,4^\omit\p a2 2
  a1~
  a1\fermata
  \bar "|."
}

tenor = \relative {
  \global \voiceOne
  R1*8
  e4^\mf^\markup\italic unison fis2 e8 fis % 3c
  a4 d, cis' d
  b2. cis8 b
  a4 fis cis d
  e2. fis4 % 3d
  d2. e8 fis
  g2. fis4^\cresc
  e2. fis8 g
  a4(b) cis(d) % 4a
  d2.--^\f bes4
  a2^\> 2
  a1\!
  \oneVoice R1*7
  r4 \voiceOne b8^\mp 8 a4 g % 4c++
  a2 2 % 5a
  \oneVoice r4 \voiceOne b8^\mf b fis4 4
  \tuplet 3/2 {a4 a b} a2
  \oneVoice r4 \voiceOne b a d, % 5b
  e2^\< fis\!
  \oneVoice R1
  R1\fermata \voiceOne
  d'4^\pp 2 8 8 % 5c
  d4 2.\fermata
  e8 8 d cis d2
  d2\fermata cis\fermata
  a4\omit\mf^\markup{\dynamic mf \italic unison} 2 8 8 % 6a
  a4 4 4 4
  g2. 8 8
  fis4 a b b % 6b
  g2(a4) ais
  b4 a g^\cresc fis
  e4(fis) e(d) % 6c
  cis4(a) g'2
  fis2 d
  g2. 4 % 7a
  g2 b
  a2.->^\f\> 4\!
  a2 2 % 7b
  a2. 4^\p
  a2^\markup\italic rit. 2
  a1~
  a1\fermata
  \bar "|."
}

wordsM = \lyricmode {
  Set me as a seal u -- pon your heart
  as a seal u -- pon your arm.
  For love is as strong,
  for love is as strong __ as __ death,
  as strong as death.

  nei -- ther can floods drown it.
  Ma -- ny wa -- ters can -- not quench love,
  floods can -- not drown it.
  Wa -- ters can -- not quench love,
  nei -- ther can the floods __ drown it.

  Set me as a seal u -- pon your heart,
  as a seal u -- pon your arm. __
  For love, is as strong,
  for love is as strong __ as __ death.
  as strong __ as __ death,
  as strong as death,
  as strong as death.
}

wordsMMidi = \lyricmode {
  "Set " "me " "as " "a " "seal " u "pon " "your " "heart "
  "\nas " "a " "seal " u "pon " "your " "arm. "
  "\nFor " "love " "is " "as " "strong, "
  "\nfor " "love " "is " "as " "strong "  "as "  "death, "
  "\nas " "strong " "as " "death. "

  "\nnei" "ther " "can " "floods " "drown " "it. "
  "\nMa" "ny " wa "ters " can "not " "quench " "love, "
  "\nfloods " can "not " "drown " "it. "
  "\nWa" "ters " can "not " "quench " "love, "
  "\nnei" "ther " "can " "the " "floods "  "drown " "it. "

  "\nSet " "me " "as " "a " "seal " u "pon " "your " "heart, "
  "\nas " "a " "seal " u "pon " "your " "arm. " 
  "\nFor " "love, " "is " "as " "strong, "
  "\nfor " "love " "is " "as " "strong "  "as "  "death. "
  "\nas " "strong "  "as "  "death, "
  "\nas " "strong " "as " "death, "
  "\nas " "strong " "as " "death. "
}

bass = \relative {
  \global \voiceTwo
  R1*8
  e4^\omit\mf fis2 e8 fis % 3c
  a4 d, cis' d
  b2. cis8 b
  a4 fis cis d
  e2. fis4 % 3d
  d2. e8 fis
  g2. fis4^\omit\cresc
  e2. fis8 g
  a4(b) cis(d) % 4a
  d2.--^\omit\f bes4
  a2^\omit\> 2
  a1\!
  s1*7
  s4 b8^\omit\mp 8 a4 g % 4c++
  a2 2 % 5a
  s4 b8^\omit\mf b fis4 4
  \tuplet 3/2 {a4 a b} a2
  s4 b a d, % 5b
  e2^\omit\< fis\!
  s1
  s1
  d'4^\omit\pp 2 cis8 8 % 5c
  b4 2.\fermata
  e8 8 d cis b4(a)
  a,2\fermata 2\fermata
  a'4\omit\mf 2 8 8 % 6a
  a4 4 4 4
  g2. 8 8
  fis4 a b b % 6b
  g2(a4) ais
  b4 a g^\omit\cresc fis
  e4(fis) e(d) % 6c
  cis4(a) g'2
  fis2 d
  g2. 4 % 7a
  g2 b
  a2.->^\omit\f\omit\> 4\!
  a2 2 % 7b
  a2. 4^\omit\p
  a2 2
  a1~
  a1\fermata
  \bar "|."
}

pianoRHone = \relative {
  \global
  e'4\omit\mf d2.
  a'4 a, d2
  d1~
  d1
  e4 d cis d % 3b
  <g, b d>2 e'4 e
  <d e>1
  <e fis a>1
  e4 fis2 e8 fis % 3c
  <fis a>2 <cis fis cis'>4 <d a' d>
  a'4 g2 cis8 b
  a4 fis cis d
  e2. fis4 % 3d
  d2. e8 fis
  g2. fis4
  e2. fis8 g
  <a, a'>4 <b b'> <cis cis'> <d d'> % 4a
  <d f bes d>2. <d fis b>4
  <d e a>2 <cis e a>
  <<{e4 d2 e4} \new Voice <fis a>1>>
  d2. cis8 d % 4b
  b2 e4. b8
  a4 e' d2^~
  <b d>2. b4
  d2 e4 fis
  \voiceOne r4 b d b % 4c
  cis4 a fis e
  r4 b' a g
  a4 g fis e % 5a
  r4 d' b d
  cis4 fis, a fis
  r4 b a d, % 5b
  e2 fis
  d4 fis, d' e
  fis2 <b, d e>\fermata
  R1*4 % 5c
  e4^\markup\bold "Tempo I" fis2 a8 fis % 6a
  <fis a>2 <cis a' cis>4 <cis a' d>
  a'4 g2 cis8 b
  a4 fis cis d % 6b
  e2. fis4
  d2. e8 fis
  <e g>2. fis4 % 6c
  e2. fis8 g
  d4 4 <cis cis'> <d d'>
  <d g b>2. <g b>4 % 7a
  <b, g' b>4 <cis g' cis> <e g e'> <d g d'>\omit\f
  a'8 a, d e fis a, d a'
  g8 b, d g d a cis e % 7b
  e4 fis2.
  <b, d>2\omit\p d4 cis
  <fis, d'>2\omit\> a4 4
  a1\fermata\omit\pp
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  <a a'>1\omit\mf
  s1
  cis4 b2.~
  b1
  <a a'>1 % 3b
  s1
  \voiceTwo a2 2
  a2 2
  <a a'>2. 4 % 3c
  cis4 d s2
  <d b'>2. e4
  <a, cis>2 cis4 d
  g,4 b cis cis % 3d
  s1
  fis4 e2 d4
  d4 b cis cis
  d2 a' % 4a
  s1
  s1
  r4 a,2.
  s1 % 4b
  s1
  r2 r4 a~
  a1
  b2 cis
  \tuplet 3/2 {r8 cis d} \tuplet 3/2 {b' fis d} \tuplet 3/2 {d' fis, d} \tuplet 3/2 {b' fis d} % 4c
  \tuplet 3/2 {cis'8 cis, fis} \tuplet 3/2 {a cis, fis} \tuplet 3/2 {fis a, cis} \tuplet 3/2 {e a, e'}
  \tuplet 3/2 {r8 b d} \tuplet 3/2 {b' b, d} \tuplet 3/2 {a' b, d} \tuplet 3/2 {g b, d}
  \tuplet 3/2 {r8 a e'} \tuplet 3/2 {g a, e'} \tuplet 3/2 {fis a, d} \tuplet 3/2 {e a, e'} % 5a
  \tuplet 3/2 {d8 cis d} \tuplet 3/2 {d' d, fis} \tuplet 3/2 {b d, fis} \tuplet 3/2 {d' d, fis}
  \tuplet 3/2 {cis'8 cis, a'} \tuplet 3/2 {fis a, cis} \tuplet 3/2 {a' a, cis} \tuplet 3/2 {fis a, cis}
  \tuplet 3/2 {r8 b d} \tuplet 3/2 {b' b, d} \tuplet 3/2 {cis' b, d} \tuplet 3/2 {d8 b d} % 5b
  \tuplet 3/2 {e8 g, b} \tuplet 3/2 {d g, b} \tuplet 3/2 {fis' fis, cis'} \tuplet 3/2 {e fis, cis'}
  \tuplet 3/2 {d8 cis d} \tuplet 3/2 {fis, d' cis} \tuplet 3/2 {d cis d} \tuplet 3/2 {fis, cis' d}
  r8 fis, b d s2
  R1*4 % 5c
  <a a'>2. <a e'>4 % 6a
  cis4 d s2
  <d b'>2. g4
  <a, cis>1 % 6b
  g4 b cis cis
  s1
  b4 4 e d % 6c
  cis2. 4
  <a a'>2 a'
  b,2 d % 7a
  s1
  s1
  a'1 % 7b
  <a, d a'>1
  s2 a
  s1
  s1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
  s1*4
  s4 s2.-\markup\italic rit. % 3b+
  s2.-\markup\italic "a tempo" s4\>
  s2 s\!
  s1*6
  s2. s4\cresc % 3d++
  s1*3
  s1\> % 4a++
  s1\mp
  s1*4 s1-\markup\italic rit. % 4b++++
  s1\p-\markup\italic "a tempo"
  s1*2
  s2. \tuplet 3/2 {s4 s8\<} % 5a
  s4 \tuplet 3/2 {s8 s4\!} s2
  s1*2
  \tuplet 3/2 {s4 s8\<} s2 \tuplet 3/2 {s8\! s4} % 5b+
  s4-\markup\italic rit. s2.\f
  s1*5
  s1\mf % 6a
  s1*4
  s2 s\cresc % 6b++
  s1*4
  s2. s4\f % 7a
  s4. s8\> s2
  s1\! % 7b
  s2. s4\p
  s1-\markup\italic rit.
  s1\>
  s1\!
}

pianoLHone = \relative {
  \global \oneVoice
  d,8\omit\mf a' d e fis2
  fis,8 d' fis d b fis' b a,
  g8 d' g a \voiceOne b2
  \oneVoice g,8 d' g a b4 g,
  fis8 d' fis d fis4 fis, % 3b
  a,8 e' a e' g e a, g'
  d,8 a' d e fis4. a,8
  d,8 a' d e fis4. a,8
  d,8 a' d e fis4 d % 3c
  fis,8 cis' fis d a'4 fis,
  g8 d' g a b4 g
  fis,8 cis' fis cis b fis' b fis
  e,8 b' e b a e' ais, fis' % 3d
  b,8 fis' b fis a fis a fis
  e,8 b' e fis g4 e\omit\cresc
  a,8 e' a e a, e' g e
  fis,8 d' fis d fis, d' fis d % 4a
  f,8 d' f bes c d bes f
  a,8\omit\> e' g a r g e\! a,
  d,8\omit\mp a' d e fis d cis fis,
  b8 fis' b fis a fis a fis % 4b
  g,8 d' g d g d g d
  fis,8 d' fis d fis d fis, d'
  g,8 d' g a b4 d,
  g,8 d' g d a a' ais, fis'
  r4 fis b fis % 4c
  r4 fis d cis
  r4 d g a
  r4 a, d cis % 5a
  r4 fis a fis
  r4 fis d cis
  \tuplet 3/2 {g8 d' g} a4 b g % 5b
  r4\omit\< e r fis\!
  r4 fis\omit\f b a
  \set tieWaitForNote = ##t \voiceOne
  g,8_~ d'_~ g_~ a \voiceTwo <g, d' g b>2\fermata
  \set tieWaitForNote = ##f \oneVoice
  R1*4 % 5c
  d8\omit\mf a' d e fis4 d % 6a
  fis,8 cis' fis cis a'4 fis,
  g8 d' g a b4 g
  fis,8 cis' fis cis b fis' b fis % 6b
  e,8 b' e b a e' ais, fis'
  b,8 fis' b fis b\omit\cresc fis a fis
  e,8 b' e fis g4 e % 6c
  a,8 e' a e a, e' g e
  g,8 d' fis d g, d' fis d
  g,8 d' g a b a g fis % 7a
  e,8 b' e g b g e b
  \voiceOne r8 fis'4.~2
  g2 a % 7b
  d,,8 a' d a e'-- a, fis'--\omit\p a,
  \oneVoice <a g'>2 <a e' g>
  <d, a' d>2 4 4
  q1\fermata
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s1
  s1
  s2 b4 d,
  s1
  s1*21 % 3b
  b1 % 4c
  fis1
  g1
  d1 % 5a
  b'1
  g1
  g1 % 5b
  a2 ais
  b2. a4
  s1*16
  a1
  a1 % 7b
  s1*4
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
                                % Single trombone staff
          \new Staff = trombone \with {
            instrumentName = #"Trombone"
          }
          <<
            \clef bass
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \trombone
          >>
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \new Voice \alto
            \new NullVoice \soprano
            \addlyrics \wordsW
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
            \new NullVoice \tenor
            \addlyrics \wordsM
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
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
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
                                % Single trombone staff
          \new Staff = trombone \with {
            instrumentName = #"Trombone"
          }
          <<
            \clef bass
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \trombone
          >>
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \new Voice \alto
            \new NullVoice \soprano
            \addlyrics \wordsW
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Voice \tenor
            \new Voice \bass
            \new NullVoice \tenor
            \addlyrics \wordsM
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
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
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%   \articulate
    <<
      <<
                                % Single trombone staff
          \new Staff = trombone \with {
            instrumentName = #"Trombone"
%            shortInstrumentName = #"S"
            midiInstrument = "trombone"
          }
          <<
            \clef bass
            \new Voice \TempoTrack
            \new Voice \trombone
          >>
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsWMidi
          >>
                                % Alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
  \score {
%   \articulate
    <<
      <<
                                % Single trombone staff
          \new Staff = trombone \with {
            instrumentName = #"Trombone"
%            shortInstrumentName = #"S"
            midiInstrument = "trombone"
          }
          <<
            \clef bass
            \new Voice \TempoTrack
            \new Voice \trombone
          >>
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMMidi
          >>
                                % Bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
