\version "2.25.18"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Humpty Dumpty"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Alfred Wheeler"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 6/8
  \partial 4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup\italic "Time and expression to suit words" 4=120
  s4. s2.*7 \tempo \markup\italic rit. 4=120
  s2. \tempo 4=120
  s2.*17 \tempo \markup\italic rit. 4=120
  s2. \tempo 4=120
  s2.*4 \tempo \markup\italic "a la Militaire" 4=120
  s2.*8 \tempo \markup\italic "Slow and sad" 4=120
  s2.*4 \tempo \markup\italic "Tempo but still sadly" 4=120
  s2.*10 | s4. | s2.*3 s4 \tempo \markup\italic "cresc. e accel." 4=120 s2
  s2.*5
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup\box "1a" s4. s2.*4
  \textMark \markup\box "1b"     s2.*4
  \textMark \markup\box "1c"     s2.*4
  \textMark \markup\box "2a"     s2.*4
  \textMark \markup\box "2b"     s2.*4
  \textMark \markup\box "2c"     s2.*4
  \textMark \markup\box "2d"     s2.*4
  \textMark \markup\box "3a"     s2.*4
  \textMark \markup\box "3b"     s2.*4
  \textMark \markup\box "3c"     s2.*5
  \textMark \markup\box "3d"     s2.*3
  \textMark \markup\box "4a"     s2.*4
  \textMark \markup\box "4b"     s2.*4
  \textMark \markup\box "4c" s4. s2.*4
  \textMark \markup\box "4d"     s2.*5
}

sob = \absolute {
  \vo
  \once\override NoteHead.style = #'cross c''8 ^\markup\italic Sob
  \ov
}

soprano = \relative {
  \global
  r4 r8 | R2. | R | g'4 bes8 aes4 c8 | bes8 c d ees4. |
  g,4 bes8 aes4 c8 | bes8 aes g f4. | g8 8 bes aes aes c | bes-> c-> d-> ees4.-> |
  R2. | R \section \key g \major | R | R |
  d4. 4. | 8 b <g g'> d' b g | c4. c | 8 a b c b a | % 2a
  d4. 4. | 8 b <g g'> d' b g | a c b a g fis | g4.~4. \section \key ees \major
  g4 bes8 aes4 c8 | bes c d ees4. | g,4 bes8 aes4 c8 | bes aes g f4. |
  g8 g bes aes aes c | bes-> c-> d-> ees4.-> | R2. | R \section \key g \major
  R2. | R | d4.-> 4-> 8 | 8-> b <g g'> d' b g | % 3a
  c4.-> 4-> 8 | 8-> a8 b c b a | d d d d d d | d b <g g'> d' b g |
  a8 c b a g fis | g4.~4. \section \key bes \major | % 3c
  d'4 \sob 4 8 | 8. bes16 <g g'>8 d' bes g | c4 \sob c4 \sob
  c8 a bes c bes \breathe a | d d d d d d | d bes <g g'> d' bes g | % 3d
  a8 c bes a g fis | g4.~4. \section \key ees \major | g4 bes8 aes4 c8 | bes c d ees4. | % 4a
  g,4 bes8 aes4 c8 | bes aes g f4. | g4-> bes8-> aes-> \breathe aes-> c-> | bes-> c-> d-> ees4.-> |
  \time 3/8 R4. \time 6/8 | ees4-> g,8 4. | R2. | r8 r ees-> ees-> g-> bes-> | ees8-> r bes-> bes-> bes-> bes-> |
  <g g'>8-> r r r4 r8 | R2. | R | r4 r8 r bes-> bes-> | ees-> r r r4 r8 |
  \bar "|."
}

hd  = \lyricmode { Hump -- ty Dump -- ty  }
hdc = \lyricmode { Hump -- ty Dump -- ty, }

wordsSop = \lyricmode {
  \hd sat on a wall.
  \hd had a great fall.
  All the King’s hors -- es and all the King’s men

  Oh! dear! What can the mat -- ter be?
  Oh! dear! What can the mat -- ter be?
  Oh! dear! What can the mat -- ter be?
  Pi -- ty the poor lit -- tle boy. __

  Far too fat to sit on a wall,
  \hd had a great fall,
  All the King’s hors -- es and all the King’s men

  Up rode the King with his for -- ces,
  and up rode the men on their hor -- ses.
  He’d come such a crop -- per,
  they thought it was pro -- per
  to put him to -- geh -- er a -- gain. __

  Oh! _ When they found the boy’s tra -- ces,
  So sad, _ sad, _ sad were their fa -- ces,
  The poor lit -- tle fel -- low had bust -- ed his bra -- ces
  and can’t come to -- geth -- er a -- gain. __

  If you’re fat, don’t sit on a wall.
  If you do you’ll have a great fall,
  When you fall, as you cer -- tain -- ly must,
  Down you’ll come, you cer -- tain -- ly must,
  your brac -- es ’ll bust,
  And you’re done.
}

hdm  = \lyricmode {  "Hump" "ty " Dump "ty "  }

hdcm = \lyricmode { "Hump" "ty " Dump "ty, " }


wordsSopMidi = \lyricmode {
  \hdm "sat " "on " "a " "wall. "

  \hdm "\nhad " "a " "great " "fall. "

  "\nAll " "the " "King’s " hors "es " "and " "all " "the " "King’s " "men "

  "\nOh! " "dear! " "What " "can " "the " mat "ter " "be? "
  "\nOh! " "dear! " "What " "can " "the " mat "ter " "be? "
  "\nOh! " "dear! " "What " "can " "the " mat "ter " "be? "
  "\nPi" "ty " "the " "poor " lit "tle " "boy. " 

  "\nFar " "too " "fat " "to " "sit " "on " "a " "wall, "
  \hdm "had " "a " "great " "fall, "

  "\nAll " "the " "King’s " hors "es " "and " "all " "the " "King’s " "men "

  "\nUp " "rode " "the " "King " "with " "his " for "ces, "
  "\nand " "up " "rode " "the " "men " "on " "their " hor "ses. "
  "\nHe’d " "come " "such " "a " crop "per, "
  "\nthey " "thought " "it " "was " pro "per "
  "\nto " "put " "him " to geth "er " a "gain. " 

  "\nOh! " "(sob) " "When " "they " "found " "the " "boy’s " tra "ces, "
  "\nSo " "sad, " "(sob) " "sad, " "(sob) " "sad " "were " "their " fa "ces, "
  "\nThe " "poor " lit "tle " fel "low " "had " bust "ed " "his " bra "ces "
  "\nand " "can’t " "come " to geth "er " a "gain. " 

  "\nIf " "you’re " "fat, " "don’t " "sit " "on " "a " "wall. "
  "\nIf " "you " "do " "you’ll " "have " "a " "great " "fall, "
  "\nWhen " "you " "fall, " "as " "you " cer tain "ly " "must, "
  "\nDown " "you’ll " "come, " "you " cer tain "ly " "must, "
  "\nyour " brac "es " "’ll " "bust, "
  "\nAnd " "you’re " "done. "
}

alto = \relative {
  \global
  r4 r8 | ees'4 bes'8 bes,4 bes'8 | ees,4 bes'8 bes,4 bes'8 | ees,4 8 4 8 | f8 8 8 ees4. |
  ees4 8 4 8 | 8 f ees d4. | ees8 8 8 8 8 8 | f f f ees4. |
  r8^\markup\bold\italic "Tempo. Darkly." ees8 8 8 f ees | d d d d e fis \section \key g \major | g4 d'8 d,4 d'8 | g,4 d'8 d,4 d'8 |
  g,4 8 4 8 | 4 8 4 8 | d4 8 4 8 | 4 8 4 8 | % 2a
  g4 8 fis4 8 | g4 8 4 8 | e e d c b a | b4.~4. \section \key ees \major
  bes4 8 ees4 8 | f f f ees4. | 4 8 4 8 | 8 f ees d4. |
  ees8 8 8 8 8 8 | f f f ees4. | r8^\markup\bold\italic "Tempo. Darkly." ees8 8 8 f ees | d d d d e fis \section \key g \major |
  g8^\markup\italic "With appropriate movement" 8 d' d, d d' | g, g d' d, d d' | R2. | d8->^\markup\italic "Imitate trumpets arms raised" b g d'-> b g | % 3a
  d8-> d' d d4.->~ | 4. r4 d,8 | d d d d d d | g g g g g g |
  e8 e d c b a | b4.~4. \section \key bes \major |
  d4 \sob d4 8 | d'8. bes16 g8 d' bes g | c4 \sob 4 \sob |
  c8 a bes c bes \breathe a | d d d d d d | d bes g d' bes g |
  a8 c bes a g fis | g4.~4. \section \key ees \major | ees4 8 4 8 f f f ees4. % 4a
  ees4 8 4 8 | ees f ees d4.  ees4-> 8-> 8-> \breathe 8-> 8-> | bes'8-> 8-> aes-> g4.-> | \time 3/8 R4. \time 6/8 | ees4-> g8 4. | r8 r bes,-> 8-> ees-> g-> | bes-> r r r4 r8 | r r bes8 8 8 8 |
  g8-> r r r4 r8 | R2. | R | r4 r8 r bes-> bes-> | ees,-> r r r4 r8 |
  \bar "|."
}

wordsAlto = \lyricmode {
  \hdc \hdc \hd sat on a wall.
  \hd had a great fall.
  All the King's hors -- es and all the King's men
  Could -- n't put him to -- geth -- er a -- gain;
  Lit -- tle \hdc \hdc \hdc \hdc \hdc \hdc
  \hdc \hdc  Pi -- ty the poor lit -- tle boy. __

  Far too fat to sit on a wall,
  \hd had a great fall,
  All the King's hors -- es and all the King's men
  Could -- n't put him to -- geth -- er a -- gain;

  They are gal -- lop -- ing, gal -- lop -- ing,
  gal -- lop -- ing, gal -- lop -- ing,
  ta -- ta -- ta -- ta -- ta -- ta -- ta -- ta -- ta -- ta __
  He'd come such a crop -- per,
  they thought it was pro -- per
  to put him to -- geth -- er a -- gain. __

  Oh! _ When they found the boy's tra -- ces,
  So sad, _ sad, _ sad were their fa -- ces,
  The poor lit -- tle fel -- low had bust -- ed his bra -- ces
  and can't come to -- geth -- er a -- gain. __

  If you're fat, don't sit on a wall.
  If you do you'll have a great fall,
  When you fall, as you cer -- tain -- ly must,
  Down you'll come, you cer -- tain -- ly must,
  your brac -- es 'll bust,
  And you're done.
}

wordsAltoMidi = \lyricmode {
  \hdcm \hdcm \hdm  "\nsat " "on " "a " "wall. "
  \hdm "had " "a " "great " "fall. "

  "\nAll " "the " "King's " hors "es " "and " "all " "the " "King's " "men "
  "\nCould" "n't " "put " "him " to geth "er " a "gain; "
  "\nLit" "tle " \hdcm \hdcm \hdcm \hdcm \hdcm \hdcm
  \hdcm \hdcm   "\nPi" "ty " "the " "poor " lit "tle " "boy. " 


  "\nFar " "too " "fat " "to " "sit " "on " "a " "wall, "
  \hdm "had " "a " "great " "fall, "

  "\nAll " "the " "King's " hors "es " "and " "all " "the " "King's " "men "
  "\nCould" "n't " "put " "him " to geth "er " a "gain; "

  "\nThey " "are " gal lop "ing, " gal lop "ing, "
  "\ngal" lop "ing, " gal lop "ing, "
  "\nta" ta ta ta ta ta ta ta ta "ta " 
  "\nHe'd " "come " "such " "a " crop "per, "
  "\nthey " "thought " "it " "was " pro "per "
  "\nto " "put " "him " to geth "er " a "gain. " 

  "\nOh! " "(sob) " "When " "they " "found " "the " "boy's " tra "ces, "
  "\nSo " "sad, " "(sob) " "sad, " "(sob) " "sad " "were " "their " fa "ces, "
  "\nThe " "poor " lit "tle " fel "low " "had " bust "ed " "his " bra "ces "
  "\nand " "can't " "come " to geth "er " a "gain. " 

  "\nIf " "you're " "fat, " "don't " "sit " "on " "a " "wall. "
  "\nIf " "you " "do " "you'll " "have " "a " "great " "fall, "
  "\nWhen " "you " "fall, " "as " "you " cer tain "ly " "must, "
  "\nDown " "you'll " "come, " "you " cer tain "ly " "must, "
  "\nyour " brac "es " "'ll " "bust, "
  "\nAnd " "you're " "done. "
}

pianoRH = \relative {
  \global
  <bes d aes' bes>4. |
  <bes ees g bes>4 8 <bes d aes' bes>4 8 |
  <bes ees g bes>4 8 <bes d aes' bes>4 8 |
  <bes ees g>4 8 <c ees aes>4 8 |
  <d f bes>4 8 <ees bes'>4. |
  <bes ees g>4 8 <c ees aes>4 8 | % 1b
  <bes ees g>4 8 <bes d f>4. |
  <bes ees g>4 8 <c ees aes>4 8 |
  <bes f' aes>4 8 <c ees g>4. |
  <c ees>4.~4. | % 1c
  <c d>4.~4. \section \key g \major |
  <d g b d>4 8 <d fis c' d>4 8 |
  <d g b d>4 8 <d fis c' d>4 8 |
  <d g b>4 8 4 8 | % 2a
  q4 8 4 8 |
  <d fis c'>4 8 4 8 |
  q4 8 4 8 |
  <d g b>4 8 <d fis c'>4 8 | % 2b
  <d g d'>4 8 <d g>4 8 |
  <e g>4. <c d fis> |
  <b d g>4.~4. \section \key ees \major |
  <bes ees g>4 8 <c ees aes>4 8 | % 2c
  <d f bes>4 8 <ees bes'>4. |
  <bes ees g>4 8 <c ees aes>4 8 |
  <bes ees g>4 8 <bes d f>4. |
  <bes ees g>4 8 <c ees aes>4 8 | % 2d
  <bes f' aes>4 8 <c ees g>4. |
  <c ees>4.~4. |
  <c d>4.~4. \section \key g \major |
  <d g b d>4 8 <d fis c' d>4 8 | % 3a
  <d g b d>4 8 <d fis c' d>4 8 |
  <d g b d>4 8 4 8 |
  q4 8 4 8 |
  <d a' c>4 8 <d fis c'>4 8 | % 3b
  <d a' c>4 8 <d fis c'>4 8 |
  <d g b>4 8 <d fis c'>4 8 |
  <d g d'>4 8 4 <d g>8 |
  <e g>4. <c d fis> | % 3c
  <b d g>4.~4. \section \key bes \major |
  <bes d g>4.~4. |
  q4.~4. |
  <c ees>4.~4. |
  <c d>4.~4. | % 3d
  <bes d g>4 8 <c d fis>4 8 |
  <d g>4 8 4 8 |
  <ees g>4. <c d fis> | % 4a
  <bes d g>4.~4. \section \key ees \major |
  <bes ees g>4 8 <c ees aes>4 8 |
  <d f bes>4 8 <ees bes'>4. |
  <bes ees g>4 8 <c ees aes>4 8 | % 4b
  <bes ees g>4 8 <bes d f>4. |
  <ees g>4 8 <c ees aes>4. |
  <d aes'>4. <ees g> |
  \time 3/8 s4. \time 6/8 | % 4c
  <g c g'>4.-> ~4. |
  <g bes ees g>4. r4 r8 |
  <ees bes'>4. r4 r8 |
  <ees g bes ees>4. r4 r8 |
  r4 r8 <g d' g>4.-> | % 4d
  <g c ees>4.-> <ees aes c>-> |
  <ees g bes>4.-> r4 r8 |
  <d aes' bes>4.-> r4 r8 |
  <ees g bes ees>8-> r r r4 r8 |
  \bar "|."
}

pianoLH = \relative {
  \global
  <bes,, bes'>4. |
  <ees ees'>4. <bes bes'> |
  <ees ees'>4. <bes bes'> |
  <ees ees'>4. <aes aes'> |
  q4. <g g'> |
  <ees ees'>4. 4. | % 1b
  <ees ees'>4. <bes bes'> |
  <ees ees'>4. 4. |
  <d d'>4. <c c'>4. |
  <a' g'>4.~4. | % 1c
  <d fis>4.~4. \section \key g \major |
  <g, g'>4. <d d'> |
  <g g'> <d d'> |
  <g g'> <d d'> | % 2a
  <g g'> <d d'> |
  <a' a'>4. <d, d'> |
  <a' a'>4. <d, d'> |
  g4. a | % 2b
  b4. <b g'> |
  <c a'>4. <d a'> |
  g,4.~4. \section \key ees \major |
  <ees ees'>4. <aes aes'> | % 2c
  q4. <g g'> |
  <ees ees'>4. 4. |
  q4. <bes bes'> |
  <ees ees'>4. 4. | % 2d
  <d d'>4. <c c'> |
  <a' g'>4.~4. |
  <d fis>4.~4. \section \key g \major |
  <g, g'>4. <d d'> | % 3a
  <g g'>4. <d d'> |
  <g g'>4. <d d'> |
  <g g'>4. <d d'> |
  <fis fis'>4. <d d'> | % 3b
  <fis fis'>4. <d d'> |
  g4. a |
  b4. <b g'> |
  <c a'>4. <d a'> | % 3c
  <g, g'>4.~4. \section \key bes \major |
  q4.~4. |
  q4.~4. |
  <a g'>4.~4. |
  <d fis>4.~4. | % 3d
  g,4. a |
  <bes g'>4. 4. |
  <c a'>4. <d a'> | % 4a
  g4. g, \section \key ees \major |
  <ees ees'>4. <aes aes'> |
  q4. <g g'> |
  <ees ees'>4. 4. | % 4b
  q4. <bes bes'> |
  <ees' bes'>4. <aes, aes'> |
  <bes bes'>4. <c c'> |
  \time 3/8 <a, a'>4.-> \time 6/8 | % 4c
  <ees'' g a c>4.-> ~4. |
  <bes, bes'>4. r4 r8 |
  g''4. r4 r8 |
  ees4. r4 r8 |
  r4 r8 <b, b'>4.^\markup\bold\italic accel. | % 4d
  <c c'>4. <f f'> |
  <bes bes'>4. r4 r8 |
  q4. r4 r8 |
  <ees, ees'>8-> r r r4 r8 |
  \bar "|."
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
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
    output-suffix = single-bass
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef bass
            \new Voice \transpose c c, \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
%            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
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
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
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
            instrumentName = Bass
            shortInstrumentName = B
          }
          <<
            \clef bass
            \new Voice \transpose c c, \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
%            \new Voice \TempoTrack
            \new Voice \pianoRH
          >>
          \new Staff = pianolh \with {
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
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
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
          }
          <<
            \new Voice \alto
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
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
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
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
