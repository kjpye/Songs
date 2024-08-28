\version "2.25.18"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Summertime"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "George Gershwin"
  arranger    = "Arr. William Stickles"
%  opus        = "opus"

  poet        = "du Bose Heyward"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key a \minor
  \time 2/2
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

TempoTrack = {
  \tempo 4=105
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \textMark \markup { \box 5 }
  \textMark \markup\box "2a" s1*5
  \textMark \markup\box "2b" s1*4
  \textMark \markup\box "3a" s1*4
  \textMark \markup\box "3b" s1*3
  \textMark \markup\box "4a" s1*3
  \textMark \markup\box "4b" s1*3
  \textMark \markup\box "5a" s1*4
  \textMark \markup\box "5b" s1*3
  \textMark \markup\box "6a" s1*3
  \textMark \markup\box "6b" s1*3
  \textMark \markup\box "7a" s1*3
  \textMark \markup\box "7b" s1*4
}

soprano = \relative {
  \global
  \dynamicUp \phrasingSlurUp \slurUp
  R1 * 5
  R1 % 2b
  r2 e''4^\p c \section
  e1~
  e8 r d8. c16 d8. e16 c4
  a2 e~ % 3a
  e4 r r2
  r2 d'8^\mf d4.
  r4 c8.^\mp^\markup{\italic{un poco rit.}} a16\< c8. a16\! c4
  b1^\mf^\markup{\italic{a tempo}} ~ % 3b
  b2 r8 e4 c8
  e8 e4 e8~e2~
  e8 r d8. c16 d8. e16 c4 % 4a
  a2 e2~
  e2 r4 e
  g4 e8 g a4 c % 4b
  e8^>(d4.) c2
  c16^>(a8.)~a2.~
  a2 r % 5a
  r1
  r2 \times 2/3 {e'4^\markup{\italic{poco rit}} e c}
  e4^\markup{\italic{a tempo}} e2.~
  e8. e16 d8. c16 d8.(e16) c4 % 5b
  a2 e2~
  e2 e'4^\mf c4
  d8 d4 d8(d2) % 6a
  r4 c8. a16 c8.(a16) c4
  b1~
  b2 r8 e e c % 6b
  e8 e4.~e2~
  e8 r d8. c16 d8. e16 c4
  a2 e2~ % 7a
  e2 r4 e
  f4 e8 g a4 c
  e8(d4.) c2 % 7b
  c16^>(a8.)~a2.~
  a1\>~
  a2.^\pp r4
  \bar "|."
}

wordsSop = \lyricmode {
  Sum -- mer time __
  an' the liv- in' is eas- y
  jump- in', an' the cot- ton is high.
  Oh, yo dad- dy's rich,
  an' yo ma is good- look- in',
  So hush, lit- tle ba- by, don' yo' cry.
  One of these morn- in's __
  You goin' to rise up sing- in',
  then you'll spread yo' wings an' you'll take the sky.
  But till that morn -- in' __ there's a noth- in' can harm you __
  With Dad- dy an' Mam- my stand- in' by.
}

wordsSopMidi = \lyricmode {
  "Sum" "mer " "time " 
  "\nan' " "the " liv "in' " "is " eas "y "
  "\njump" "in', " "an' " "the " cot "ton " "is " "high. "
  "\nOh, " "yo " dad "dy's " "rich, "
  "\nan' " "yo " "ma " "is " good look "in', "
  "\nSo " "hush, " lit "tle " ba "by, " "don' " "yo' " "cry. "
  "\nOne " "of " "these " morn "in's " 
  "\nYou " "goin' " "to " "rise " "up " sing "in', "
  "\nthen " "you'll " "spread " "yo' " "wings " "an' " "you'll " "take " "the " "sky. "
  "\nBut " "till " "that " "morn" "in' "  "there's " "a " noth "in' " "can " "harm " "you " 
  "\nWith " Dad "dy " "an' " Mam "my " stand "in' " "by. "
}

alto = \relative {
  \global
  \dynamicUp \phrasingSlurUp \slurUp
  R1*5
  fis'2^\p^\<(gis)\! % 2b
  fis2^\<(fis\!) \section
  fis2^\<(gis\!
  a8) r b8. a16 gis8. gis16 gis4
  e2 d( % 3a
  c4) r r2
  r2 d8\mf d4.
  r4 a'8.\mp^\markup \italic "un poco rit." e16\< a8. e16\! dis4
  e1~\mf^\markup \italic "a tempo" % 3b
  e2 r
  fis2\<(gis\!
  a8) r b8. a16 gis8. gis16 gis4 % 4a
  e2 d(
  c2) r4 c
  c4 c8 c e4 a % 4b
  fis2 f
  e1->~
  e2 r % 5a
  fis2\<(gis\!)
  fis2\<(gis)\!^\markup \italic "poco rit."
  fis2(^\markup \italic "a tempo" gis
  a8.) c16 b8. a16 gis4 gis % 5b
  e2 d(
  c2) e4\mf c
  d8 d4 d8~2 % 6a
  r4 a'8. e16 a8.(e16) dis4
  e1~
  e2 r % 6b
  fis2(gis
  a8) r b8. a16 gis8. gis16 gis4
  e2 d( % 7a
  c2) r4 c
  c4 c8 c e4 a
  fis2 f % 7b
  e1->~
  e1~\>
  e2.\pp r4
  \bar "|."
}

wordsAlto = \lyricmode {
  oo __ oo __ oo __
  an' the liv- in' is eas- y
  jump- in', an' the cot- ton is high.
  oo __
  an' yo ma is good- look- in',
  So hush, lit- tle ba- by, don' yo' cry.
  oo __ oo __ oo __
  You goin' to rise up sing- in',
  then you'll spread yo' wings an' you'll take the sky.
  oo __ there's a noth- in' can harm you __
  With Dad- dy an' Mam- my stand- in' by.
}

wordsAltoMidi = \lyricmode {
  "oo "  "oo "  "oo " 
  "\nan' " "the " liv "in' " "is " eas "y "
  "\njump" "in', " "an' " "the " cot "ton " "is " "high. "
  "\noo " 
  "\nan' " "yo " "ma " "is " good look "in', "
  "\nSo " "hush, " lit "tle " ba "by, " "don' " "yo' " "cry. "
  "\noo "  "oo "  "oo " 
  "\nYou " "goin' " "to " "rise " "up " sing "in', "
  "\nthen " "you'll " "spread " "yo' " "wings " "an' " "you'll " "take " "the " "sky. "
  "\noo "  "there's " "a " noth "in' " "can " "harm " "you " 
  "\nWith " Dad "dy " "an' " Mam "my " stand "in' " "by. "
}

tenor = \relative {
  \global
  \dynamicUp \phrasingSlurUp \slurUp
  R1*5
  c'2^\p^\<(d\!) % 2b
  c2^\<(d\!) \section
  c2^\<(d\!
  c8) r e8. e16 e8. e16 e4
  c2 gis( % 3a
  f4) r e'\mf c
  d8 d4.~2
  r4 e8.\mp^\markup \italic "un poco rit" c16\< e8. c16\! a4
  b1~\mf^\markup \italic "a tempo" % 3b
  b2 r
  c2\<( d\!
  c8) r e8. e16 e8. e16 e4 % 4a
  c2 gis(
  a2) r4 fis
  e4 g8 g c4 e % 4b
  c2 a
  a16->(c8.)~2.~
  c2 r % 5a
  c2\<( d\!)
  c2\<( d\!)^\markup \italic "poco rit."
  c2(^\markup \italic "a tempo" d
  c8.) e16 e8. e16 e4 e % 5b
  c2 gis(
  a2) e'4\mf c
  d8 d4 d8~2 % 6a
  r4 e8. c16 e8.(c16) a4
  b1~
  b2 r % 6b
  c2(d
  c8) r e8. e16 e8. e16 e4
  c2 gis( % 7a
  a2) r4 fis
  e4 g8 g c4 e
  c2 a % 7b
  a16->(c8.)~c2.~
  c1~\>
  c2.\pp r4
  \bar "|."
}

wordsTenor = \lyricmode {
  oo __ oo __ oo __
  an' the liv- in' is eas- y
  Fish are jump- in', an' the cot- ton is high.
  oo __
  an' yo ma is good- look- in',
  So hush, lit- tle ba- by, don' yo' cry.
  oo __ oo __ oo __
  You goin' to rise up sing- in',
  then you'll spread yo' wings an' you'll take the sky.
  oo __ there's a noth- in' can harm you __
  With Dad- dy an' Mam- my stand- in' by.
}

wordsMenMidi = \lyricmode {
  "oo "  "oo "  "oo " 
  "\nan' " "the " liv "in' " "is " eas "y "
  "\nFish " "are " jump "in', " "an' " "the " cot "ton " "is " "high. "
  "\noo " 
  "\nan' " "yo " "ma " "is " good look "in', "
  "\nSo " "hush, " lit "tle " ba "by, " "don' " "yo' " "cry. "
  "\noo "  "oo "  "oo " 
  "\nYou " "goin' " "to " "rise " "up " sing "in', "
  "\nthen " "you'll " "spread " "yo' " "wings " "an' " "you'll " "take " "the " "sky. "
  "\noo "  "there's " "a " noth "in' " "can " "harm " "you " 
  "\nWith " Dad "dy " "an' " Mam "my " stand "in' " "by. "
}

bass= \relative {
  \global
  \dynamicUp \phrasingSlurUp \slurUp
  R1*5
  a,2^\p^\<(b\!) % 2b
  a2^\<(b\!) \section
  a2^\<(b\!
  a8) r a8. a16 b8. b16 e4
  a,2 b( % 3a
  a4) r e' c
  d8 d4.~2
  r4 a'8.\mp^\markup \italic "un poco rit" a16\< a8. a16\! fis4
  gis1~\mf^\markup \italic "a tempo" % 3b
  gis2 r
  a,2(\< b\!
  a8) r a8. a16 b8. b16 e4 % 4a
  a,2 b(
  a2) r4 a
  g4 g8 e' c4 a % 4b
  d2 g,
  a1->~
  a2 r % 5a
  a2\<(b\!)
  a2\<(b\!)^\markup \italic "poco rit."
  a2(^\markup \italic "a tempo" b
  a8.) a16 a8. a16 b4 e % 5b
  a,2 b(
  a2) e'4 c
  d8 d4 d8~2 % 6a
  r4 a'8. a16 a4 fis
  gis1~
  gis2 r % 6n
  a,2(b
  a8) r a8. a16 b8. b16 e4
  a,2 b( % 7a
  a2) r4 a
  g4 g8 e' c4 a
  d2 g, % 7b
  a1->~
  a1\>~
  a2.\pp r4
  \bar "|."
}

wordsBass = \lyricmode {
  oo __ oo __ oo __
  an' the liv- in' is eas- y
  Fish are jump- in', an' the cot- ton is high.
  oo __
  an' yo ma is good- look- in',
  So hush, lit- tle ba- by, don' yo' cry.
  oo __ oo __ oo __ 
  You goin' to rise up sing- in',
  then you'll spread yo' wings an' you'll take the sky.
  oo __ there's a noth- in' can harm you __
  With Dad- dy an' Mam- my stand- in' by.
}

pianoRHone = \relative {
  \global
  \vo
  s1
  s1
  r2 a''8(f d b
  g e c a) \ss \lh fis4(gis) \hs
  fis4(gis) fis(gis) \rh \vo
  r4 \ottava #1 <fis'' fis'>\arpeggio r <gis gis'>\arpeggio
  r4 <fis fis'> \ottava #0 e4(c \section
  e1)~
  e8 r d8.(c16 d8. e16 c4
  a2 e)~ % 3a
  e e'4(c)
  d8-- d4.--~2
  r4 c8.(a16 c8. a16 c4
  b8) c,(e ees d) b( fis' f % 3b
  e2)~8 e'4 d8
  e8 e4 e8~2
  r4 d8.(c16 d8. e16 c4 % 4a
  a2 e)
  c8.(d16 \tuplet 3/2 {e8 fis g->~}4 a
  g4) e8(g a4 c % 4b
  e8 d4. c2)
  r4 g'8(fis g a fis4
  e4) r r2 % 5a
  r4 \set Staff.ottavation = #"8va" \set Voice.middleCPosition = #-13 <fis fis'> r <gis gis'>
  r4 <fis fis'> \unset Staff.ottavation \unset Voice.middleCPosition \tuplet 3/2 {e4 e c}
  e4 e2.
  r8. e16( d8. c16 d8. e16 c4 % 5b
  a2 e)~
  e2 e'4(c)
  d8 d4 d8~2 % 6a
  r4 c8.(a16 c8. a16 c4
  b8) b,(e ees d) b( fis' f
  e2)~8 e'8-- e-- c-- % 6b
  e8 e4.~2
  r4 d8.(c16 d8. e16 c4
  a2 e) % 7a
  c8.(d16 \tuplet 3/2 {e8 fis gis~} gis4 a
  g4) e8( g a4 c
  e8 d4. c2 % 7b
  a1)~
  a1~
  a2 s
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \vt
  ees'8(c ees d c) a(c d
  e2)~8 a,(c d
  e1)~
  e1~
  e1~
  e1~
  e2 r \section
  fis2(gis)
  fis2(gis)
  <c, e>( d % 3a
  c) gis'4(fis)
  f4~\tuplet 3/2 {f8 g gis} a4~\tuplet 3/2 {a8 bes b}
  <c, f>2(e4 dis)
  r8 b4.(a2) % 3b
  <gis b>2~<gis cis>8 r4 r8
  fis'2(gis)
  fis2(gis) % 4a
  <c, e>2(<d e>)
  c2 <c f>
  c2 <c e>4 <e a> % 4b
  <fis a>2 <c f a>
  <c e a>1~
  q2 gis % 5a
  <c e>1~
  q2 r
  fis2(gis)
  fis2(gis) % 5b
  <c, e>2(d
  c2) gis'4(fis)
  f8(fis g gis) \tuplet 3/2 {a4 bes b} % 6a
  <c, f>2(e4 dis)
  r8 b4.(a2)
  <gis b>2(<g cis>8) r8 r4 % 6b
  fis'2(gis)
  fis2(gis)
  <c, e>2(d % 7a
  c2) <c f>
  c2 <c e>4 <e a>
  <fis a>2 <c f a> % 7b
  <c e>1~
  q1~
  q2 \ottava 1 <fis' c' e a>4\arpeggio \ottava 0 \ov r4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1-\markup \bold \italic {\dynamic mf espr.}
  s1
  s1\pp
  s2 s\mp
  s1-\markup \bold \italic tranquillo
  s1 % 2b
  s2 s\p
  s1-\markup\bold\italic{\dynamic pp molto legato}\<
  s4\! s\< s2\!
  s2\< s\! % 3a
  s1
  s1
  s2-\markup\bold\italic "poco rit." s\<
  s1\omit\mf-\markup\bold\italic {\dynamic mf a tempo} % 3b
  s2. s4\>
  s2\< s\!
  s4 s\< s2\! % 4a
  s2\< s\!
  s1
  s1 % 4b
  s1
  s4 s2.-\markup\bold\italic "poco animato"
  s1 % 5a
  s1
  s2 s-\markup\bold\italic "poco rit."
  s2-\markup\bold\italic "a tempo" s\<
  s4\! s2.\< % 5b
  s2\< s\!
  s1
  s1 % 6a
  s1
  s1
  s1 % 6b
  s4 s2.\<
  s4\! s2.\<
  s2\< s\! % 7a
  s1
  s1
  s1 % 7b
  s1
  s1\>
  s2 s\pp
}

pianoLH = \relative {
  \global
  \ov
  ees8(c ees d c) a(c d
  e2)~8 a,(c d
  \vt e1)~
  e1~
  e1~
  e1~ % 2b
  e1 \section
  <a, e' c'>2\arpeggio <b e d'>\arpeggio
  <a e' c'>2\arpeggio
  <b e d'>\arpeggio
  <a fis'>2(<b gis'> % 3a
  <a fis'>2) <b e d'>4\arpeggio <a e' c'>\arpeggio
  s1
  s1
  <gis e'>2(<b dis>) % 3b
  e8 (e, cis' c b) <bes gis' d>4.\arpeggio
  <a e' c'>2\arpeggio <b e d'>\arpeggio
  <a e' c'>2\arpeggio <b e d'>\arpeggio % 4a
  <a fis'>2(<b fis'>)
  <a e'>2(<d, a'>)
  <g e'>4. e'8(c4 a) % 4b
  <d, a'>2(<g d'>)
  s1
  s1 % 5a
  s1
  s1
  <a e' c'>2\arpeggio <b e d'>\arpeggio
  <a e' c'>2\arpeggio <b e d'>\arpeggio % 5b
  <a fis'>2( <b eis'>
  <a fis'>2) <b e d'>4\arpeggio <a e' c'>\arpeggio
  s1 % 6a
  s1
  <gis e'>2(<b dis>)
  e8 e, cis' c b r <bes gis' d>4\arpeggio % 6b %%%
  <a e' c'>2\arpeggio <b e d'>\arpeggio %%%
  <a e' c'>2\arpeggio <b e d'>\arpeggio %%%
  <a f'>2(<b gis'>) % 7a
  <a e'>2(<d, a'>)
  <g e'>4. e'8(c4 a)
  <d, a'>2(<g d'>) % 7b
  c4(d8. c16 d8. e16 c4)
  a4(fis e gis
  a2) \clef treble <a' e' c'>4\arpeggio r
  \bar "|."
}

pianoLHone = \relative {
  \global
  \vo
  s1*5
  fis2(gis)
  fis2(gis)
  s1*4
  a4~\tuplet 3/2 {a8 bes b} c4. cis8 % 3a++
  d,4(e f fis)
  s1*8
  e2 e~ % 4b++
  e4 d8(c d e c4) % 5a
  fis2(gis)
  fis2(gis)
  s1*4
  a4(bes8 b c2) % 6a
  d,4(e f fis)
  s1*11
}

pianoLHtwo = \relative {
  \global
  \vt
  s1*11
  d2(f) % 3a++
  a,1
  s1*8
  a1~ % 4b++
  a4 r r2 % 5a
  a1
  d,1
  s1*4
  d'2(\tuplet 3/2 {f4 g gis}) % 6a
  a,1
  s1*11
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          } <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff \with {
          instrumentName = Piano
        }
        <<
          \new Staff = pianorh <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    output-suffix = singlepage-bass
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Alto
            shortInstrumentName = A
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = Tenor
            shortInstrumentName = T
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh <<
            \clef "bass"
            \magnifyStaff #4/7
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    output-suffix = single-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = Soprano
            shortInstrumentName = S
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    output-suffix = midi-sop
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice = "tenor" \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
    output-suffix = midi-men
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \tenor
            \addlyrics \wordsMenMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
