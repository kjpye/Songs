\version "2.20.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Heartbreak Hotel"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
%  arranger    = "arranger"
%  opus        = "opus"

  composer        = "Mae Boren Axton, Tommy Durden and Elvis Presley"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key cis \minor
  \time 4/4
  \tempo "Blues Tempo" 4=120
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \circle "18a" }
  \mark \markup { \box "18a" } s1*4
  \mark \markup { \box "18b" } s1*4
  \mark \markup { \box "18c" } s1*4
  \mark \markup { \box "18d" } s1*5
  \mark \markup { \box "19a" } s1*5
  \mark \markup { \box "19b" } s1*4
  \mark \markup { \box "19c" } s1*4
  \mark \markup { \box "19d" } s1*4
  \mark \markup { \box "19e" } s1*4
  \mark \markup { \box "19b" } s1*4
  \mark \markup { \box "19c" } s1*4
  \mark \markup { \box "19d" } s1*4
  \mark \markup { \box "19e" } s1*4
  \mark \markup { \box "18b" } s1*4
  \mark \markup { \box "18c" } s1*4
  \mark \markup { \box "18d" } s1*5
  \mark \markup { \box "19a" } s1
}

ChordTrack = \chordmode {
  s1*4 | e1*6 | e1*2:7 | a1*4:7 | b1:7 |
  s1 | e1*4 | | e1*8 | a1*4:7 | b1*2:7 | e |
  | e1*8 | a1*4:7 | b1*2:7 | e |
  e1*6 | e1*2:7 | a1*4:7 | b1*2:7 | e1 |
}

melody = \relative c'' {
%  \clef bass
  \global
  R1*4
  e4 e e b % 18b
  e4 b2 r4
  e4 g e b
  gis2 r
  e'2. e8 e % 18c
  e4 e e e
  e4 e e b
  b4(g) g(fis)
  e2 e4 e % 18d
  g4 e cis8 e r4
  e2 e4 e
  g4 e2.
  r4 g g g
  g4 e e cis % 19a
  e1
  r1
  r1
  r2 r4 e' \section
  e4 g e e % 19b
  e4 e2.
  e4 e dis8(b) g4
  gis1
  e'4 e e e % 19c
  e4 e e e
  r4 e2 cis4
  dis4 b b b
  g2 g4 g % 19d
  a4 e2.
  r2 a4 a8 a
  a4 e2.
  r2 r4 fis8 fis % 19e
  fis4 e2 e8 e
  e1
  r1 \section
  e'4 g e e % 19b
  e4 e2.
  e4 e dis8(b) g4
  gis1
  r2 e'4 e8 e % 19c
  e4 e e e
  e4 e8 e e4 e
  e4 b b b
  g2 g4 g % 19d
  a4 e2.
  r2 a4 a8 a
  a4 e2.
  r2 r4 fis8 fis % 19e
  fis4 e2 e8 e
  e1
  r1 \section
  e'4 e e b % 18b
  e4 b2 b8 b
  e4 g e b
  gis2 r
  e'2. e8 e % 18c
  e4 e e e
  e4 e e b
  b4(g) g(fis)
  e2^\markup \italic {Fade from here to end} e4 e % 18d
  g4 e cis8 e r4
  e2 e4 e
  g4 e2.
  r4 g g g
  g4 e e cis % 19a
  e1
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

words = \lyricmode {
  \set stanza = "1."
  Since my ba- by left me
  "found a" new place to dwell,
  Down at the end of Lone- ly Street at Heart- break Ho- tel. __
  I get so lone- ly ba- by,
  I get so lone- ly.
  I get so lone- ly I could die.

  \set stanza = "2."
  Al- though it's al- ways crowd- ed, __
  still can find __ some room,
  where those bro- ken heart- ed lov- ers
  cry a- way their gloom,
  oh! I get so lone- ly,
  I get so lone- ly
  get so lone- ly I could die.

  \set stanza = "3."
  Bell- hop's tears keep flow- ing __
  desk clerks dressed in black.
  They been so long on Lone- ly Street
  they ain't nev- er gonn' come back.
  oh! I get so lone- ly,
  I get so lone- ly
  get so lone- ly I could die.

  \set stanza = "4."
  If your ba- by leaves you
  and you have a tale to tell,
  just take a walk down Lone- ly Street to Heart- break Ho- tel, __
  I get so lone- ly ba- by,
  I get so lone- ly.
  I get so lone- ly I could die.
}

midiWords = \lyricmode {
  "1. Since " "my " ba "by " "left " "me\n"
  "found a " "new " "place " "to " "dwell,\n"
  "Down " "at " "the " "end " "of " Lone "ly\n"
  "Street " "at " Heart "break " Ho "tel.\n" 
  "I " "get " "so " lone "ly " ba "by,\n"
  "I " "get " "so " lone "ly.\n"
  "I " "get " "so " lone "ly " "I " "could " "die.\n"

  "\n2. Al" "though " "it's " al "ways " crowd "ed,\n" 
  "still " "can " "find "  "some " "room,\n"
  "where " "those " bro "ken " heart "ed " lov "ers\n"
  "cry " a "way " "their " "gloom,\n"
  "oh! " "I " "get " "so " lone "ly,\n"
  "I " "get " "so " lone "ly\n"
  "get " "so " lone "ly " "I " "could " "die.\n"

  "\n3. Bell" "hop's " "tears " "keep " flow "ing\n" 
  "desk " "clerks " "dressed " "in " "black.\n"
  "They " "been " "so " "long " "on " Lone "ly " "Street\n"
  "they " "ain't " nev "er " "gonn' " "come " "back.\n"
  "oh! " "I " "get " "so " lone "ly,\n"
  "I " "get " "so " lone "ly\n"
  "get " "so " lone "ly " "I " "could " "die.\n"

  "\n4. If " "your " ba "by " "leaves " "you\n"
  "and " "you " "have " "a " "tale " "to " "tell,\n"
  "just " "take " "a " "walk " "down " Lone "ly " "Street\n"
  "to " Heart "break " Ho "tel,\n" 
  "I " "get " "so " lone "ly " ba "by,\n"
  "I " "get " "so " lone "ly.\n"
  "I " "get " "so " lone "ly " "I " "could " "die.\n"
}

pianoRH = \relative c' {
  \global
  <e gis b>4 q <e gis cis> q % 18a
  <e gis d'>4 q <e gis cis> q
  <e gis b> 4 q <e gis cis> q
  <e gis dis'>4 q <e gis cis> q
  <gis b e>4 q q <e gis b> % 18b
  <gis b e>4 s2 q4
  q4 <gis b g'> <gis b e> s
  s1
  s1 % 18c
  <gis b e>4 q q q
  e'4 e e b
  b4(g) g(fis)
  s1 % 18d
  <cis e g>4 e s4 r
  s2 <g, cis e>4 q
  <cis e g>4 s2.
  s1
  <a dis g>4 <a b e> q <a cis> % 19a
  s1
  <e' gis d'>4 q <e gis cis> q
  <e gis b>4 q <e gis cis> q
  <e gis d'>4 q <e gis cis> <e gis cis e> \section
  <gis b e>4 <gis b g'> <gis b e> q % 19b
  q4 q2.
  q4 q <gis b dis>8(b) g4
  s1
  <gis b e>4 q q q % 19c
  q4 q q q
  q4 q2 cis4
  <gis b dis>4 b <e, gis b> b'
  s1 % 19d
  s1
  s2 <cis, g' a>4 q8 a'
  <cis, g' a>4 s2.
  s1 % 19e
  s1
  s1
  <gis b>4 <gis' b e> q q \section
  <gis b e>4 <gis b g'> <gis b e> q % 19b
  q4 q2.
  q4 q <gis b dis>8(b) g4
  s1
  <gis b e>4 q q q % 19c
  q4 q q q
  q4 q2 cis4
  <gis b dis>4 b <e, gis b> b'
  s1 % 19d
  s1
  s2 <cis, g' a>4 q8 a'
  <cis, g' a>4 s2.
  s1 % 19e
  s1
  s1
  <gis b>4 <gis' b e> q q
  \section
  <gis b e>4 q q <e gis b> % 18b
  <gis b e>4 s2 q4
  q4 <gis b g'> <gis b e> s
  s1
  s1 % 18c
  <gis b e>4 q q q
  e'4 e e b
  b4(g) g(fis)
  s1 % 18d
  <cis e g>4 e s4 r
  s2 <g, cis e>4 q
  <cis e g>4 s2.
  s1
  <a dis g>4 <a b e> q <a cis> % 19a
  s1
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
  s1*4
  s1 % 18b
  s4 b2 s4
  s2. b4
  gis2 r
  e'2. e8 e % 18c
  s1*3
  e,2 e4 e % 18d
  s2 cis8 e s4
  e2 s
  s4 e2.
  r4 g g g
  s1 % 19a
  e1
  s1*3
  s1*3 % 19b
  gis1
  s1*4
  g2 g4 g % 19d
  a4 e2.
  r2 s
  s4 e2.
  r2 r4 fis8 fis % 19e
  fis4 e2 e8 e
  e1
  s1
  s1*3 % 19b
  gis1
  s1*4
  g2 g4 g % 19d
  a4 e2.
  r2 s
  s4 e2.
  r2 r4 fis8 fis % 19e
  fis4 e2 e8 e
  e1
  s1
  s1 % 18b
  s4 b'2 s4
  s2. b4
  gis2 r
  e'2. e8 e % 18c
  s1*3
  e,2 e4 e % 18d
  s2 cis8 e s4
  e2 s
  s4 e2.
  r4 g g g
  s1 % 19a
  e1
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  s1*4
  s1 % 18b
  s4 <e gis> q s
  s2. r4
  <b e>4 q q q
  <gis' b>4 q q2 % 18c
  s1*3
  <g, cis>4 q q q % 18d
  s2 g4 s
  q4 q s2
  s4 q q q
  q4 q q q
  s1 % 19a
  <gis b>4 <e' gis b> <e gis cis> q
  s1*3
  s1*3 % 19b
  <b e>4 q q q
  s1*4
  <cis e>4 q q q % 19d
  <cis g'>4 <g cis> q q
  q4 <cis e g> s2
  s4 q q q
  <a dis>4 q q q % 19e
  q4 <a b>2 q4
  <gis b>4 q q q
  s1
  s1*3 % 19b
  <b e>4 q q q
  s1*4
  <cis e>4 q q q % 19d
  <cis g'>4 <g cis> q q
  q4 <cis e g> s2
  s4 q q q
  <a dis>4 q q q % 19e
  q4 <a b>2 q4
  <gis b>4 q q q
  s1
  s1 % 18b
  s4 <e' gis> q s
  s2. r4
  <b e>4 q q q
  <gis' b>4 q q2 % 18c
  s1*3
  <g, cis>4 q q q % 18d
  s2 g4 s
  q4 q s2
  s4 q q q
  q4 q q q
  s1 % 19a
  <gis b>1
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLH = \relative c {
  \global
  \oneVoice
  b4 b cis cis % 18a
  d4 d cis cis
  b4 b cis cis
  dis4 dis cis cis
  e4 e e e % 18b
  e4 e e e
  e4 e e e
  e4 e e e
  e4 e e e % 18c
  e4 e e e
  e4 r r2
  e4 e e e
  a,4 a a a % 18d
  a4 a a a
  a4 a a a
  a4 a a a
  b4 b b b
  b4 b b b % 19a
  b4 b cis cis
  d4 d cis cis
  b4 b cis cis
  d4 d cis cis \section
  e4 e e e % 19b
  e4 e e e
  e4 e e e
  e4 e e e
  e4 e e e % 19c
  e4 e e e
  e4 e e e
  e4 e e e
  a,4 a a a % 19d
  a4 a a a
  a4 a a a
  a4 a a a
  b4 b b b % 19e
  b4 b b b
  e4 e e e
  e4 e e e \section
  e4 e e e % 19b
  e4 e e e
  e4 e e e
  e4 e e e
  e4 e e e % 19c
  e4 e e e
  e4 e e e
  e4 e e e
  a,4 a a a % 19d
  a4 a a a
  a4 a a a
  a4 a a a
  b4 b b b % 19e
  b4 b b b
  e4 e e e
  e4 e e e \section
  e4 e e e % 18b
  e4 e e e
  e4 e e e
  e4 e e e
  e4 e e e % 18c
  e4 e e e
  e4 r r2
  e4 e e e
  a,4 a a a % 18d
  a4 a a a
  a4 a a a
  a4 a a a
  b4 b b b
  b4 b b b % 19a
  b1
  \bar "|."
}

\book {
  #(define output-suffix "repeat")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \words
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "single")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \unfoldRepeats \ChordTrack }
        \new FretBoards { \unfoldRepeats \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" \words
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \unfoldRepeats \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody
          <<
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice = "melody" \unfoldRepeats \melody
            \new Lyrics \lyricsto "melody" \midiWords
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
            \new Dynamics \unfoldRepeats \dynamicsPiano
            \new Voice \unfoldRepeats \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
