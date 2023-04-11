\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Full Fathom Five"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Charles Wood"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "William Shakespeare"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Allegro Moderato" 4=115
  s1*49
  \tempo "rall." 4=105 s1*3
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*4
  \textMark \markup { \box "1b" } s1*4
  \textMark \markup { \box "1c" } s1*5
  \textMark \markup { \box "2a" } s1*4
  \textMark \markup { \box "2b" } s1*5
  \textMark \markup { \box "2c" } s1*5
  \textMark \markup { \box "3a" } s1*5
  \textMark \markup { \box "3b" } s1*4
  \textMark \markup { \box "3c" } s1*4
  \textMark \markup { \box "4a" } s1*4
  \textMark \markup { \box "4b" } s1*4
  \textMark \markup { \box "4c" } s1*4
}

dynamicsSop = {
  s1 | s | s\mf | s |
  s1 | s | s\dim | s |
  s1 | s\pp | s2 s\mp | s1 | s4. s8\< s2 |
  s1\f | s\dim | s2 s\p | s1 | % 2a
  s1 | s | s | s\cresc | s |
  s2 s\f | s\p s\cresc | s1 | s | s\f |
  s1 | s | s | s | s | % 3a
  s1\dim | s | s\p | s\f |
  s1 | s | s | s |
  s1 | s | s | s4 s2.\p | % 4a
  s2\< s\> | s1\! | s2\< s\> | s4\! s2.\cresc |
  s1 | s | s\f\< | s\ff |
}

soprano = \relative {
  \global
  R1 | R | d''2 a4. fis8 | d4 d e fis |
  fis4(a2.~ | 4) a e fis | 2(a2~ | 4) a e fis |
  fis1( | a~ | 4) r fis gis | a4. cis8 8(b) a(gis) | a4. cis8 8(b) a(gis) |
  a1~ | a~ | 2 d4. cis8 | b4 b b d8(b) | % 2a
  a2. cis8(b) | g4 g g b8(g) | fis1 | d2 e | fis g |
  a4 d cis2 | d,2 e | fis g4 g | a(d) cis2 | d c |
  f2 ees | ees4 d c2 | bes d | g f | 4(ees) d2 | % 3a
  cis1~ | 1~ | 4 r r2 | d2-> a-> |
  d2-> a-> | fis-> a-> | d,1-> | fis'2-> e-> |
  d2-> a-> | fis'-> e-> | d->(a) | r4 d,2 e8 fis | % 4a
  g4(a fis) e | r d2 e8 fis | g4(a fis) e | r d2-> e4-> ~ |
  e4 fis2-> a4-> ~ | a d2.-> | <<{\voiceOne d2-> e-> | fis1\fermata} \new Voice {\voiceTwo d2. cis4 | d1\fermata} >>
  
  \bar "|."
}

wordsSop = \lyricmode {
  Full fa -- thom five thy fa -- ther lies, __
  thy fa -- ther lies, __ thy fa -- ther lies, __
  Of his bones are co -- ral __ made,
  are co -- ral __ made;
  Those are pearls that were his __ eyes,
  are __ pearls that were his __ eyes;
  No -- thing of him that doth fade,
  But doth suf -- fer a sea -- change
  In -- to some -- thing rich and strangem
  in -- to some -- thing rich __ and strange. __
  Sea -- nymphs hour -- ly ring his knell,
  sea -- nymphs hour -- ly ring his knell, __
  Hark! now I hear __ them,
  hark! now I hear __ them,
  Ding -- dong, __ ding -- dong __ bell,
  ding -- dong bell.
}

wordsSopMidi = \lyricmode {
  "Full " fa "thom " "five " "thy " fa "ther " "lies, " 
  "\nthy " fa "ther " "lies, "  "thy " fa "ther " "lies, " 
  "\nOf " "his " "bones " "are " co "ral "  "made, "
  "\nare " co "ral "  "made; "
  "\nThose " "are " "pearls " "that " "were " "his "  "eyes, "
  "\nare "  "pearls " "that " "were " "his "  "eyes; "
  "\nNo" "thing " "of " "him " "that " "doth " "fade, "
  "\nBut " "doth " suf "fer " "a " sea "change "
  "\nIn" "to " some "thing " "rich " "and " "strangem "
  "\nin" "to " some "thing " "rich "  "and " "strange. " 
  "\nSea" "nymphs " hour "ly " "ring " "his " "knell, "
  "\nsea" "nymphs " hour "ly " "ring " "his " "knell, " 
  "\nHark! " "now " "I " "hear "  "them, "
  "\nhark! " "now " "I " "hear "  "them, "
  "\nDing" "dong, "  ding "dong "  "bell, "
  "\nding" "dong " "bell. "
}

dynamicsAlto = {
  s1 | s | s\mf | s |
  s1 | s | s\dim | s |
  s1 | s\pp | s2 s\mp | s1 | s4. s8\< s2 |
  s1\f | s\dim | s2 s\p | s1 | % 2a
  s1 | s | s | s\cresc | s |
  s2 s\f | s\p s\cresc | s1 | s | s4 s2.\f |
  s1 | s | s | s | s | % 3a
  s1\dim | s | s4\p s2.\< | s1\f |
  s1 | s | s | s |
  s1 | s | s | s4 s2.\p | % 4a
  s2\< s\> | s1\! | s2\< s\> | s1\! |
  s1 | s | s | s\ff |
}

alto = \relative {
  \global
  R1 | R | fis'2 e4 cis | d a b cis |
  d4(fis2.~  4) d d cis | d2(fis~ | 4) d b cis |
  d1( | fis1~ | 4) r d d | fis a fis d | cis a' fis d |
  cis4 a'^\markup\italic marcato gis e | fis cis d e | a,2 a'4. 8 | 4 4 g g | % 2a
  g2 fis | 4 4 e e | 2(d)  2. cis4 | 4(d2) e4 |
  e4 fis e2  d2. cis4  c d2 e4 | e(fis) e2  r4 f(g) a |
  bes4(f) g(a) | c(bes2) a4 | a(g) a bes | c(g) a(bes) | d(c) bes2 | % 3a
  a1~ | a~  4 a-> g-> e-> | d1~ |
  d1~ | d  d'2-> a-> | d-> a-> |
  fis2-> e-> | d'-> a-> | f-> (e) | r4 d2 8 8 | % 4a
  d2. cis4 | r d2 8 8 | 2. cis4 | R1 |
  <<
    {\voiceTwo d2-> e-> | fis-> a-> | d,-> g-> | fis1\fermata |}
    \new Voice {\voiceOne R1 | d2 e4(fis) | b2. a4 | a1\fermata}
  >>
  \bar "|."
}

wordsAlto = \lyricmode {
  Full fa -- thom five thy fa -- ther lies, __
  thy fa -- ther lies, __ thy fa -- ther lies, __
  Of his bones are co -- ral __ made,
  are co -- ral __ made;
  Ding -- dong, ding -- dong, ding -- dong, ding -- dong.
  Those are pearls that were his __ eyes,
  are __ pearls that were his __ eyes;
  No -- thing of him that doth fade,
  But doth suf -- fer a sea -- change
  In -- to some -- thing rich and strange,
  in -- to some -- thing rich __ and strange. __
  Ding -- dong, ding -- dong. __
  Sea -- nymphs,
  sea -- nymphs hour -- ly ring his knell, __
  Hark! now I hear __ them,
  hark! now I hear __ them,
  Ding -- dong, __ ding -- dong,
  ding -- dong bell.
}

wordsAltoMidi = \lyricmode {
  "Full " fa "thom " "five " "thy " fa "ther " "lies, " 
  "\nthy " fa "ther " "lies, "  "thy " fa "ther " "lies, " 
  "\nOf " "his " "bones " "are " co "ral "  "made, "
  "\nare " co "ral "  "made; "
  "\nDing" "dong, " ding "dong, " ding "dong, " ding "dong. "
  "\nThose " "are " "pearls " "that " "were " "his "  "eyes, "
  "\nare "  "pearls " "that " "were " "his "  "eyes; "
  "\nNo" "thing " "of " "him " "that " "doth " "fade, "
  "\nBut " "doth " suf "fer " "a " sea "change "
  "\nIn" "to " some "thing " "rich " "and " "strange, "
  "\nin" "to " some "thing " "rich "  "and " "strange. " 
  "\nDing" "dong, " ding "dong. " 
  "\nSea" "nymphs, "
  "\nsea" "nymphs " hour "ly " "ring " "his " "knell, " 
  "\nHark! " "now " "I " "hear "  "them, "
  "\nhark! " "now " "I " "hear "  "them, "
  "\nDing" "dong, "  ding "dong, "
  "\nding" "dong " "bell. "
}

dynamicsTenor = {
  s1 | s | s4^\markup\italic marcato s2.\mf | s1 |
  s1 | s | s\dim | s |
  s1 | s\pp | s2 s\mp | s1 | s4. s8\< s2 |
  s1\f | s\dim | s2 s\p | s1 | % 2a
  s1 | s | s | s\cresc | s |
  s2 s\f | s\p s\cresc | s1 | s | s4 s2.\f |
  s1 | s | s | s | s | % 3a
  s1\dim | s | s1\p | s4 s2.\f |
  s1 | s | s | s |
  s1 | s | s | s4 s2.\p | % 4a
  s2\< s\> | s1\! | s2\< s\> | s4\! s2.\cresc |
  s1 | s | s\< | s\ff |
}

tenor = \relative {
  \global
  R1 | R | r4 d' cis a | b fis g a |
  d,1~ | d~ | 4 d' cis a | b fis g a |
  d,1~ | d~ | 4 r b' b | cis e d b | a e' d b |
  a2 b4(cis) | d(e) fis,(gis) | a2 4. d8 | 4 4 e2~ | % 2a
  e4 4 4. d8 | b4 b cis2~ | 4 e8(cis) b2 | 2. a4 | a(fis2) e4 |
  g4 fis8(a) 2 | b2. a4 | a fis2 e4 | g(fis8 a) 2 | r4 f'(ees) c |
  d4(a) bes(c) | f, f' ees2~ | 4 g(f) d | ees(bes) c(d) | g,(g') f2 | % 3a
  e1~ | e~ | 4 r r2 | r4 d^\markup\italic marcato cis a |
  b4 fis g a | d,1~ | d~ | 4 d' cis a |
  b4 fis g a | d,1~ | d | r4 d2 8 8 | % 4a
  d2(b'4) g | r4 d2 8 8 | d2(b'4) g | r d' cis a |
  b4 fis g a | d,1~  d | d'\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  Ding -- dong, ding -- dong, ding -- dong, ding -- dong, __
  ding -- dong, ding -- dong, ding -- dong, ding -- dong. __
  Of his bones are co -- ral __ made,
  are co -- ral __ made,
  are co -- ral __ made;
  Those are pearls that were __ his eyes,
  are __ pearls that were __ his __ eyes;
  No -- thing of him that doth fade,
  But doth suf -- fer a sea -- change
  In -- to some -- thing rich and strange,
  in -- to some -- thing rich __ and strange. __
  Ding -- dong, ding -- dong, ding -- dong, ding -- dong,
  Ding -- dong, ding -- dong, ding -- dong, ding -- dong.

  
  Hark! now I hear __ them,
  hark! now I hear __ them,
  Ding -- dong, __ ding -- dong,
  ding -- dong, ding -- dong bell.
}

wordsTenorMidi = \lyricmode {
  "Ding" "dong, " ding "dong, " ding "dong, " ding "dong, " 
  "\nding" "dong, " ding "dong, " ding "dong, " ding "dong. " 
  "\nOf " "his " "bones " "are " co "ral "  "made, "
  "\nare " co "ral "  "made, "
  "\nare " co "ral "  "made; "
  "\nThose " "are " "pearls " "that " "were "  "his " "eyes, "
  "\nare "  "pearls " "that " "were "  "his "  "eyes; "
  "\nNo" "thing " "of " "him " "that " "doth " "fade, "
  "\nBut " "doth " suf "fer " "a " sea "change "
  "\nIn" "to " some "thing " "rich " "and " "strange, "
  "\nin" "to " some "thing " "rich "  "and " "strange. " 
  "\nDing" "dong, " ding "dong, " ding "dong, " ding "dong, "
  "\nDing" "dong, " ding "dong, " ding "dong, " ding "dong. "

  
  "\nHark! " "now " "I " "hear "  "them, "
  "\nhark! " "now " "I " "hear "  "them, "
  "\nDing" "dong, "  ding "dong, "
  "\nding" "dong, " ding "dong " "bell. "
}

dynamicsBass = {
  s4 s2.\mf | s1 | s1 | s1 |
  s1 | s | s\dim | s |
  s1 | s\pp | s2 s\mp | s1 | s4. s8\< s2 |
  s1\f | s\dim | s2 s\p | s1 | % 2a
  s1 | s | s | s4 s2.\cresc | s1 |
  s2 s\f | s4 s2\p s4\cresc | s1 | s | s\f |
  s1 | s | s | s | s | % 3a
  s4 s2.\dim | s1 | s4\p s2.\<| s1\f |
  s1 | s | s | s |
  s1 | s | s | s4 s2.\p | % 4a
  s1 | s | s2\< s\> | s4\! s2.\cresc |
  s1 | s | s | s\ff |
}

bass = \relative {
  \global
  r4 d'4^\markup\italic marcato cis a | b fis g a | d,1~ | d ~ |
  d4 d' cis a | b fis g a | d,1~ | d~ |
  d4 fis g a | d,1~ | 4 r b b | fis' cis d e | fis cis d e |
  a,1~ | a~ | 2 fis'4. 8 | g4 fis e d | % 2a
  cis2 d | e4 d cis b | ais2(b4 a) | r4 g2 a4~ | a b2 cis4~ |
  cis4 d8 fis a2 | r4 g,2 a4~ | a b2 cis4~ | cis d8(fis) a4 g | f1~ |
  f2 f | 2. fis4 | g1~ | g~ | 2. gis4 | % 3a
  a4 a gis e | fis cis d e | a, a'-> g-> e-> | d1~ |
  d1~ | 4 d'^\markup\italic marcato cis a | b fis g a | d,1~ |
  d1~ | 4 d' cis a | b fis g a | d, d cis a | % 4a
  b4 fis g a | d d cis a | b fis g(a) <d, d'>1~ |
  q1~ | 4 d''-> cis-> a-> | b-> fis-> g-> a-> | d,1\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  Ding -- dong, ding -- dong, ding -- dong, ding -- dong, __
  Ding -- dong, ding -- dong, ding -- dong, ding -- dong, __
  ding -- dong, ding -- dong. __
  Of his bones are co -- ral __ made,
  are co -- ral __ made;
  Those are pearls that were __ his eyes,
  are __ pearls that were __ his __ eyes;
  No -- thing of him that doth fade,
  But doth suf -- fer a sea -- change
  In -- to some -- thing rich and strange.
  Ding -- dong, ding -- dong, ding -- dong, ding -- dong,
  ding -- dong, ding -- dong, __
  Ding -- dong, ding -- dong, ding -- dong, ding -- dong.
  ding -- dong, ding -- dong, ding -- dong, ding -- dong,
  ding -- dong, ding -- dong, ding -- dong, ding -- dong,
  ding -- dong, ding -- dong, ding -- dong __ bell, __
  ding -- dong, ding -- dong, ding, ding -- dong bell.
}

wordsBassMidi = \lyricmode {
  "Ding" "dong, " ding "dong, " ding "dong, " ding "dong, " 
  "\nDing" "dong, " ding "dong, " ding "dong, " ding "dong, " 
  "\nding" "dong, " ding "dong. " 
  "\nOf " "his " "bones " "are " co "ral "  "made, "
  "\nare " co "ral "  "made; "
  "\nThose " "are " "pearls " "that " "were "  "his " "eyes, "
  "\nare "  "pearls " "that " "were "  "his "  "eyes; "
  "\nNo" "thing " "of " "him " "that " "doth " "fade, "
  "\nBut " "doth " suf "fer " "a " sea "change "
  "\nIn" "to " some "thing " "rich " "and " "strange. "
  "\nDing" "dong, " ding "dong, " ding "dong, " ding "dong, "
  "\nding" "dong, " ding "dong, " 
  "\nDing" "dong, " ding "dong, " ding "dong, " ding "dong. "
  "\nding" "dong, " ding "dong, " ding "dong, " ding "dong, "
  "\nding" "dong, " ding "dong, " ding "dong, " ding "dong, "
  "\nding" "dong, " ding "dong, " ding "dong "  "bell, " 
  "\nding" "dong, " ding "dong, " "ding, " ding "dong " "bell. "
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 19)
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 19)
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
  \bookOutputSuffix "singlepage-bass"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 19)
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
  \bookOutputSuffix "midi-sop"
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
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
  \bookOutputSuffix "midi-alto"
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
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
  \bookOutputSuffix "midi-tenor"
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
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
  \bookOutputSuffix "midi-bass"
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef "treble_8"
            \new Voice \tenor

          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
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
