\version "2.24.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Stout-hearted Men"
  subtitle    = "from \"The New Moon\""
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Sigmund Romberg"
  arranger    = "Arr. Walter Scotson"
%  opus        = "opus"

  poet        = "Oscar Hammerstein II"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "2a" } s1*4
  \textMark \markup { \box \bold "2b" } s1*4
  \textMark \markup { \box \bold "3a" } s1*4
  \textMark \markup { \box \bold "3b" } s1*4
  \textMark \markup { \box \bold "4a" } s1*4
  \textMark \markup { \box \bold "4b" } s1*4
  \break
  \repeat volta 2 {
    \textMark \markup { \box \bold "5a" } s1*2
    \textMark \markup { \box \bold "5b" } s1*2
    \textMark \markup { \box \bold "6a" } s1*2
    \textMark \markup { \box \bold "6b" } s1*3
    \textMark \markup { \box \bold "7a" } s1*3
    \textMark \markup { \box \bold "7b" } s2*6
    \textMark \markup { \box \bold "8a" } s2*6
    \textMark \markup { \box \bold "8b" } s2*2
    \alternative {{s2*2}{s2}}
  }
  s2
}

dynamicsTenor = {
  \dynamicUp
  s1*4 |
  s1\mf | s | s | s |
  s1*3 | s2. s4\p | % 3a
  s1*4 |
  s1\f | s | s | s2. s4\f | % 4a
  s1*4 |
  \repeat volta 2 {
    s2 s\p | s1 | % 5a
    s1*2 |
    s1*2 | % 6a
    s1 | s s4 s2.\mf |
    s1 | s4 s2.\cresc | s1 | % 7a
    s2\f | s2*5 |
    s2*6 | % 8a
    s2*2
    \alternative {
      {s2*2}
      {s2}
    }
  }
  s2
}

tenorOne = \relative {
  \global
  R1*4 |
  c'2~8 r aes8. bes16 | c2~8 r g8. aes16 | f2~8 r \tuplet 3/2 {aes8 g f} | c2~4 r |
  c'2~8 r16 c aes8. bes16 | c2~8 r ees,8. f16 | g8 r g r g r g4 | g2~8 r c,8. 16 | % 3a
  bes'4-> 4-> 4-> c8. g16 | bes4 aes2 c,8. 16 | g'4 4 4 aes8. e16 | f2~4 r |
  c'2~8 r aes8. c16 | ees2~8 r c8. ees16 | aes,2~8 r f8. aes16 | c2~8 r g8. aes16 | % 4a
  f4 4 4 g8. aes16 | c4 c, c d8. e16 | c1~ | 4 r r2 |
  \section \sectionLabel REFRAIN \key f \major \repeat volta 2 {
    r2 c'-> ~ | 8 r \tuplet 3/2 {c c c} 2~ | % 5a
    c8 r c8. 16 2~ | 8 r c8. 16 8. 16 8. 16
    d4 r d2-> ~ | 8 r d8. 16 8 r d8. 16 | % 6a
    d4 8. 16 4 8. bes16 | a4 r c2 | r4 \tuplet 3/2 {8 8 8} 4 4 |
    r4 \tuplet 3/2 {c8 8 8} 4 4 | r c8. 16 d4 c8. 16 | bes2~4 r \time 2/4 | % 7a
    e2~ | 8 d bes g | f4 e | ees4 d | e f | fis g |
    c2~ | 4 r | e2~ | 8 d bes g | f'2~ | 8 e d a | % 8a
    c4 d | a g | % 8b
    \alternative {
      {f2~ | 4 r |}
      {f2~}
    }
  }
  f4 r |
  \bar "|."
}

wordsTenor = \lyricmode {
  You __ who have dreams, __
  If you act, __
  They will come true. __
  Would __ you turn your dreams __
  to a fact, its up to you! __
  If you have the soul and the spi -- rit,
  Nev -- er fear it, you'll see it through. __
  Hearts __ can in -- spire __
  oth -- er hearts __ with their fire, __
  For the strong o -- bey when a strong man shows them the way. __

  \repeat volta 2 {
    Oh, __ give me some men __
    who will fight __ for the right
    that they a -- dore
    Start __ me with ten
    And I'll soon give you ten thou -- sand more
    Oh!
    Shoul -- der to shoul -- der
    bold -- er and bold -- er
    as they go to the fore! __
    Then __ there's no -- thing in the world
    can halt or mar a plan __
    When __ stout -- heart -- ed men __
    can stick to -- geth -- er man to
    \alternative {
      { man! __ }
      { man! __ }
    }
  }
}

wordsTenorMidi = \lyricmode {
  "You "  "who " "have " "dreams, " 
  "\nIf " "you " "act, " 
  "\nThey " "will " "come " "true. " 
  "\nWould "  "you " "turn " "your " "dreams " 
  "\nto " "a " "fact, " "its " "up " "to " "you! " 
  "\nIf " "you " "have " "the " "soul " "and " "the " spi "rit, "
  "\nNev" "er " "fear " "it, " "you'll " "see " "it " "through. " 
  "\nHearts "  "can " in "spire " 
  "\noth" "er " "hearts "  "with " "their " "fire, " 
  "\nFor " "the " "strong " o "bey " "when " "a " "strong " "man " "shows " "them " "the " "way. " 

  \repeat volta 2 {
    "\nOh, "  "give " "me " "some " "men " 
    "\nwho " "will " "fight "  "for " "the " "right "
    "\nthat " "they " a "dore "
    "\nStart "  "me " "with " "ten "
    "\nAnd " "I'll " "soon " "give " "you " "ten " thou "sand " "more "
    "\nOh! "
    "\nShoul" "der " "to " shoul "der "
    "\nbold" "er " "and " bold "er "
    "\nas " "they " "go " "to " "the " "fore! " 
    "\nThen "  "there's " no "thing " "in " "the " "world "
    "\ncan " "halt " "or " "mar " "a " "plan " 
    "\nWhen "  stout heart "ed " "men " 
    "\ncan " "stick " to geth "er " "man " "to "
    \alternative {
      { "\nman! "  }
      { "\nman! "  }
    }
  }
}

tenorTwo = \relative {
  \global
  R1*4 |
  c'2~8 r aes8. bes16 | c2~8 r g8. aes16 | f2~8 r \tuplet 3/2 {aes8 g f} | c2~4 r |
  c'2~8 r16 c aes8. bes16 | c2~8 r ees,8. f16 | g8 r g r g r g4 | g2~8 r c,8. 16 | % 3a
  bes'4-> 4-> 4-> c8. g16 | bes4 aes2 c,8. 16 | g'4 4 4 aes8. e16 | f2~4 r |
  aes2~8 r8 8. 16 | c2~8 r g8. 16 | aes2~8 r f8. aes16 | c2~8 r g8. aes16 | % 4a
  f4 4 4 g8. aes16 | c4 c, c d8. e16 | c1~ | 4 r r2 |
  \section \key f \major
  \repeat volta 2 {
    r2 a'2-> ~ | 8 r \tuplet 3/2 {8 8 8} 2~ | % 5a
    a8 r a8. 16 2( | bes8) r bes8. 16 8. 16 8. 16 |
    bes4 r bes2-> ~ | 8 r bes8. 16 8 r8 8. 16 | % 6a
    bes4 8. 16 4 8. g16 | f4 r a2 | r4 \tuplet 3/2 {a8 8 8} 4 4 |
    r4 \tuplet 3/2 {a8 8 8} 4 4 | r a8. 16 4 8. 16 | bes2~4 r | % 7a
    bes2~ | 8 d bes g | f4 e | ees d | e f | fis g |
    c2~ | 4 r | bes2~ | 8 d bes g | c2~ | 8 8 d a | % 8a
    c4 d | a g | % 8b
    \alternative {
      { f2~ | 4 r | }
      { f2~ | }
    }
  }
  f4 r |
  \bar "|."
}

dynamicsBass = {
  s1*4 |
  s1\mf | s | s | s |
  s1*4 | % 3a
  s4 s2.\p | s1 | s | s |
  s1\mf | s | s | s2. s4\f | % 4a
  s1*4 |
  \repeat volta 2 {
    s1\p | s | % 5a
    s1*2 |
    s1*2 | % 6a
    s1 | s | s\mf |
    s1 | s4 s2.\cresc | s1 | % 7a
    s2\f | s | s | s | s | s |
    s2*6 | % 8a
    s2*2
    \alternative {
      {s2*2}
      {s2}
    }
  }
  s2
}

bassOne = \relative {
  \global
  R1*4 |
  c2~8 r c8. 16 | 2~8 r8 8. 16 | des2~8 r \tuplet 3/2 {8 8 8} c2~4 r |
  c2~8 r16 16 8. 16 | 2~8 r8 8. d16 | ees8 r8 8 r8 8 r d4 | e2~8 r r4 | % 3a
  r4 f8. 16 e4 4 | f4 2 r4 | r f8. 16 e8. 16 8. 16 | f2~4 r |
  ees2~8 r8 8. 16 | g2~8 r ees8. 16 | f2~8 r8 8. 16 | aes2~8 r g8. aes16 | % 4a
  f4 4 4 8. 16 | e4 c c d8. e16 | c1~ | 4 r r2 |
  \key f \major
  \repeat volta 2 {
    f8 r e8. f16 e8 r d8. e16 | f8 r e8. f16 e8 r d8. e16 | % 5a
    f8 r e8. f16 e8 r d8. c16 | d2~4 r |
    f8 r e8. f16 e8 r d8. e16 | f8 r e8. f16 e8 r d8. e16 | % 6a
    f4 e8. f16 e4 d8. c16 | a'4 r c2 | f,4 e8. f16 e4 d8. e16 |
    f4 e8. f16 e4 d8. e16 | f4 e8. f16 fis4 ees8. d16 | g2~4 r | \time 2/4 % 7a
    g2~ | 8 bes g d | f4 e | ees e | c d | dis e |
    a2~ | 4 r | g2~ | 8 bes g g | a2~ | 8 8 8 8 | % 8a
    a4 bes | e, e |
    \alternative {
      { f2~ | 4 r | }
      { f2~ | }
    }
  }
  f4 r |
  \bar "|."
}

wordsBass = \lyricmode {
  You __ who have dreams, __
  If you act, __
  They will come true. __
  Would __ you turn your dreams __
  to a fact, its up to you! __
  If you have the spi -- rit,
  Nev -- er fear; you'll see it through. __
  Hearts __ can in -- spire __
  oth -- er hearts __ with their fire, __
  For the strong o -- bey when a strong man shows them the way. __

  \repeat volta 2 {
    Give me some men who are stout -- heart -- ed men
    who will fight __ for the right they a -- dore
    Start __ me with ten who are stout -- heart -- ed men
    And I'll soon give you ten thou -- sand more
    Oh!
    Shoul -- der to shoul -- der and
    bold -- er and bold -- er
    they grow as they go to the fore! __
    Then __ there's no -- thing in the world
    can halt or mar a plan __
    When __ stout -- heart -- ed men __
    can stick to -- geth -- er man to
    \alternative {
      { man! __ }
      { man! __ }
    }
  }
}

wordsBassMidi = \lyricmode {
  "You "  "who " "have " "dreams, " 
  "\nIf " "you " "act, " 
  "\nThey " "will " "come " "true. " 
  "\nWould "  "you " "turn " "your " "dreams " 
  "\nto " "a " "fact, " "its " "up " "to " "you! " 
  "\nIf " "you " "have " "the " spi "rit, "
  "\nNev" "er " "fear; " "you'll " "see " "it " "through. " 
  "\nHearts "  "can " in "spire " 
  "\noth" "er " "hearts "  "with " "their " "fire, " 
  "\nFor " "the " "strong " o "bey " "when " "a " "strong " "man " "shows " "them " "the " "way. " 

  \repeat volta 2 {
    "\nGive " "me " "some " "men " "who " "are " stout heart "ed " "men "
    "\nwho " "will " "fight "  "for " "the " "right " "they " a "dore "
    "\nStart "  "me " "with " "ten " "who " "are " stout heart "ed " "men "
    "\nAnd " "I'll " "soon " "give " "you " "ten " thou "sand " "more "
    "\nOh! "
    "\nShoul" "der " "to " shoul "der " "and "
    "\nbold" "er " "and " bold "er "
    "\nthey " "grow " "as " "they " "go " "to " "the " "fore! " 
    "\nThen "  "there's " no "thing " "in " "the " "world "
    "\ncan " "halt " "or " "mar " "a " "plan " 
    "\nWhen "  stout heart "ed " "men " 
    "\ncan " "stick " to geth "er " "man " "to "
    \alternative {
      { "\nman! "  }
      { "\nman! "  }
    }
  }
}

bassTwo = \relative {
  \global
  R1*4 |
  c2~8 r c8. 16 | 2~8 r8 8. 16 | des2~8 r \tuplet 3/2 {8 8 8} c2~4 r |
  c2~8 r16 16 8. 16 | 2~8 r8 8. d16 | ees8 r8 8 r8 8 r d4 | c2~8 r r4 | % 3a
  r4 des8. 16 c4 4 | 4 2 r4 | r des8. 16 c8. 16 8. 16  des2~4 r |
  aes2~8 r c8. 16 | 2~8 r8 8. 16 | d2~8 r8 8. 16 | ees2~8 r g8. aes16 | % 4a
  f4 4 4 8. 16 | e4 c c d8. e16 | c1~ | 4 r r2 \key f \major |
  \repeat volta 2 {
    f8 r e8. f16 e8 r d8. e16 | f8 r e8. f16 e8 r d8. e16 | % 5a
    f8 r e8. f16 e8 r d8. c16 | d2~4 r |
    f8 r e8. f16 e8 r d8. e16 | f8 r e8. f16 e8 r d8. e16 | % 6a
    f4 e8. f16 e4 d8. c16 | a'4 r c2 | f,4 e8. f16 e4 d8. e16 |
    f4 e8. f16 e4 d8. e16 | f4 e8. f16 fis4 ees8. d16 | g2~4 r | \time 2/4 % 7a
    e2~ | 8 d d d | f4 e | ees d | c d | dis e |
    f2~ | 4 r | e2~ | 8 d d d | f2~ | 8 8 fis fis | % 8a
    g4 4 | c, c |
    \alternative {
      { f2~ | 4 r | }
      { f2~ | }
    }
  }
  f4 r |
  \bar "|."
}

pianoRHone = \relative {
  \global
  <f aes c>4-> aes8[r16 bes] c4-> \voiceOne \showStaffSwitch \change Staff = pianolh f,8[r16 g] |
  aes4-> des,8[r16 ees] f4-> \tuplet 3/2 {aes8 g f} |
  r4 \tuplet 3/2 {des'8 c bes} aes4 <e g>-> | f1-> \section | \hideStaffSwitch \oneVoice \change Staff = pianorh
  r4 \tuplet 3/2 {<aes c>8-. q-. q-.} q4-> r | % 2b
  r4 \tuplet 3/2 {<g c>8-. 8-. 8-.} 4-> r |
  r4 \tuplet 3/2 {<f a d>8-. 8-. 8-.} 4-> r |
  \change Staff = pianolh <e g c>2-> <d f c'>4-> <e bes' c>-> |
  \change Staff = pianorh r4 \tuplet 3/2 {<aes c>8-. 8-. 8-.} 4-> r | % 3a
  r4 \tuplet 3/2 {<g c>8-. 8-. 8-.} 4-> r |
  <c ees g>4-> q-> q-> <d f g>-> |
  <c e g>2-> ~4 r |
  <bes f' g bes>8 r q r <bes e g bes> r <e g c> r | % 3b
  <c f bes>8 r <c f aes>2. |
  <bes des f g>8 r q r <bes c e g> r <bes c e> r |
  <aes b f'>1 |
  <c ees aes c>1-> | % 4a
  <ees g c ees>1-> |
  <aes, des f aes>1-> |
  <c ees aes c>1-> |
  <aes ces des f>8 r q r q r q r | % 4b
  <aes c e>8 r <a c e g> r q r <a c d f> r |
  <g c e g>1-> ~ |
  q1 \key f \major |
  \repeat volta 2 {
    \clef bass
    <a c>1-> | q-> | % 5a
    <a c>1-> | <bes c>-> |
    <bes d>1-> | <g bes>-> | % 6a
    <g bes>1-> | <f a>2-> <a c>-> \clef treble | c'1-> |
    c1-> | <c, f a c>2 a' | <bes, d g bes>1 | % 7a
    r8 <bes d g bes> r q | r q r q | r <c f a> r q | r q r q | r <c g' bes d> r q | r q r q |
    r8 <c f a c> r q | r q r q | r <d g bes d> r q | r q r q | r <f a c f> r q | r q r <fis a c fis> | % 8a
    r8 <g b d g> r q | r <g bes c e> r q |
    \alternative {
      {<f a c f>2~ | 8 r r4 |}
      {q2~ |}
    }
  }
  q8 r <f' a c f> r |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s1*24
  \repeat volta 2 {
    f8 r e r e r d r | f r e r e r d r | % 5a
    f8 r c r c r d r | f r e r e r d r |
    f8 r e r f r e r | f r e r e r d r | % 6a
    f8 r e r f r e r | s1 | <c' f a>8 r <e f a> r q r <d f a> r |
    <c f a>8 r <e f a> r q r <d f a> r | s2 <c d f>8 r <c d> r | s1 | % 7a
    s2*6 |
    s2*6 | % 8a
    s2*2
    \alternative {
      {s2 | s |}
      {s2}
    }
  }
  s2
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\ff | s1*3
  s1\mf  s | s | s |
  s1*4 | % 3a
  s1*4 |
  s1\mf  s | s | s | % 4a
  s1 | s2\< s\ff | s1 | s1\> |
  \repeat volta 2 {
    s1\p | s | % 5a
    s1*2 |
    s1*2 | % 6a
    s1 | s4 s2.\< | s1\mf |
    s1\mf | s | s4 s2.\< | % 7a
    s2\f | s | s | s | s | s |
    s2*6 | % 8a
    s2*2
    \alternative {
      {s2*2}
      {s2}
    }
  }
  s4 s\sfz
}

pianoLH = \relative {
  \global
  <f, aes c>4-> aes8[r16 bes] c4-> \voiceTwo f,8[r16 ges] |
  aes4-> des,8[r16 ees] f4-> <b, b'>4 |
  <c c'>2.-> <c g'>4 |
  <f, f'>4 \tuplet 3/2 {<f' aes c>8 q q} 4 4 | \oneVoice
  r4 \tuplet 3/2 {<f c'>8-. q-. q-.} 4-> r | % 2b
  r4 \tuplet 3/2 {<e c'>8-. 8-. 8-.} 4-> r |
  r4 \tuplet 3/2 {<b b'>8-. 8-. 8-.} 4-> r |
  \voiceTwo <c c'>4-> <bes bes'>-> <aes aes'>-> <g g'>-> |
  \oneVoice r4 \tuplet 3/2 {<f' c'>8-. 8-. 8-.} 4-> r | % 3a
  r4 \tuplet 3/2 {<ees c'>8-. 8-. 8-.} 4-> r |
  <g, g'>4-> <aes aes'>-> <a a'>-> <b b'>-> | <c c'>-. \tuplet 3/2 {<c' e g>8-. 8-. 8-.} 4-> r |
  <des, des'>8 r q r <c c'> r q r | % 3b
  <f c' f>8 r q r q r q r |
  <bes, bes'>8 r q r <c c'> r q r |
  <des des'> r q[r16 16] q8 r q r |
  r4 \tuplet 3/2 {<aes aes'>8 8 8} q r q r | % 4a
  r4 \tuplet 3/2 {<c c'>8 8 8} q r q r |
  r4 \tuplet 3/2 {<des des'>8 8 8} q r q r |
  r4 \tuplet 3/2 {<aes aes'>8 8 8} q r q r |
  <des des'>8 r q r q r q r | % 4b
  <aes aes'>8 r q r <f f'> r q r |
  <c' c'>4 \tuplet 3/2 {8 8 8} <b b'>8 r <c c'> r |
  <bes bes'>8 r <c c'> r <a a'> r <g g'> r \key f \major |
  \repeat volta 2 {
    f'8 r c r f r c r | % 5a
    f8 r c r f r c r |
    f8 r c r f r c r | % 5b
    g'8 r c, r g' r c, r |
    g'8 r c, r g' r c, r | % 6a
    g'8 r c, r g' r c, r |
    g'8 r c, r g' r c, r | % 7a
    f4-> <e e'>-> <d d'>-> <c c'>-> |
    <f f'>8 r <c c'> r <f f'> r <c c'> r |
    <f f'>8 r <c c'> r <f f'> r <c c'> r | % 7n
    <f f'>8 r <c c'> r <d d'> r <fis fis'> r |
    <g g'>4 <d d'> <bes bes'> <g g'> |
    <g g'>4 <bes bes'> | <d d'> <g g'> | <c, c'> q | <f f'> <c c'> | <g' g'> <c, c'> | <e e'> <c c'> | % 7b
    <f f'>4 <e e'> | <d d'> <c c'> | <bes bes'> <d d'> | <g g'> <bes bes'> <c c'> <a a'> | <d d'> <d, d'> | % 8a
    <g g'>4 <g, g'> | <c c'> q | % 8b
    \alternative {
      {<f f'>4 \tuplet 3/2 {c'8(d c} | f,8) [r16 c'] 8[r16 c] | }
      {<f, f'>8 b16(c cis d ees e | }
    }
  }
  f8) r <f, a c f> r |
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenor
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \tenorOne
            \addlyrics \wordsTenor
          >>
                                % Single tenor2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenor
            \new Voice \tenorTwo
            \addlyrics \wordsTenor
          >>
                                % Single bass1 staff
          \new Staff = "bass1" \with {
            instrumentName = #"Bass I"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBass
            \new Voice \bassOne
            \addlyrics \wordsBass
          >>
                                % Single bass2 staff
          \new Staff = "bass2" \with {
            instrumentName = #"Bass II"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBass
            \new Voice \bassTwo
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "acc"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Tenor staff
          \new Staff = "tenor" \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \magnifyStaff #5/7
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenor
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice {\voiceOne \tenorOne}
            \new Voice {\voiceTwo \tenorTwo}
            \addlyrics \wordsTenor
          >>
                                % Bass staff
          \new Staff = "bass" \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \magnifyStaff #5/7
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBass
            \new Voice {\voiceOne \bassOne}
            \new Voice {\voiceTwo \bassTwo}
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 19)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenor
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \tenorOne
            \addlyrics \wordsTenor
          >>
                                % Single tenor2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenor
            \new Voice \tenorTwo
            \addlyrics \wordsTenor
          >>
                                % Single bass1 staff
          \new Staff = "bass1" \with {
            instrumentName = #"Bass I"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBass
            \new Voice \bassOne
            \addlyrics \wordsBass
          >>
                                % Single bass2 staff
          \new Staff = "bass2" \with {
            instrumentName = #"Bass II"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBass
            \new Voice \bassTwo
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff
%        \RemoveAllEmptyStaves
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenor
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \tenorOne
            \addlyrics \wordsTenor
          >>
                                % Single tenor2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenor
            \new Voice \tenorTwo
            \addlyrics \wordsTenor
          >>
                                % Single bass1 staff
          \new Staff = "bass1" \with {
            instrumentName = #"Bass I"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBass
            \new Voice \bassOne
            \addlyrics \wordsBass
          >>
                                % Single bass2 staff
          \new Staff = "bass2" \with {
            instrumentName = #"Bass II"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBass
            \new Voice \bassTwo
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenor
            \new Voice \TempoTrack
            \new Voice \tenorOne
            \addlyrics \wordsTenorMidi
          >>
                                % Single tenor2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenor
            \new Voice \tenorTwo
          >>
                                % Single bass1 staff
          \new Staff = "bass1" \with {
            instrumentName = #"Bass I"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBass
            \new Voice \bassOne
          >>
                                % Single bass2 staff
          \new Staff = "bass2" \with {
            instrumentName = #"Bass II"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBass
            \new Voice \bassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor1 staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"T1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenor
            \new Voice \TempoTrack
            \new Voice \tenorOne
          >>
                                % Single tenor2 staff
          \new Staff = "tenor2" \with {
            instrumentName = #"Tenor II"
            shortInstrumentName = #"T2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenor
            \new Voice \tenorTwo
          >>
                                % Single bass1 staff
          \new Staff = "bass1" \with {
            instrumentName = #"Bass I"
            shortInstrumentName = #"B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBass
            \new Voice \bassOne
            \addlyrics \wordsBassMidi
          >>
                                % Single bass2 staff
          \new Staff = "bass2" \with {
            instrumentName = #"Bass II"
            shortInstrumentName = #"B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBass
            \new Voice \bassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
