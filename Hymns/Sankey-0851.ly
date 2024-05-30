\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "We have a Firm Foundation."
  subtitle    = "Sankey No. 851"
  subsubtitle = "C. C. No. 124"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Lyman G. Cuyler."
  meter       = \markup\smallCaps "7.6. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*4
  \textMark \markup { \box \bold "B" }    s1*5
  \textMark \markup { \box \bold "C" }    s1*5
  \textMark \markup { \box \bold "D" }    s1*5
  \textMark \markup { \box \bold "E" }    s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  d'4 | d g g a | b4 2 4 | 4 g c b | a2. d,4 |
  d4 a' a b | c4 2 4 | 4 a d c | b2. 4 | 4 4 4 4 |
  b4 g2 4 | g c c e | d2. b4 | b d c b | a e2 g4 |
  d4 g e fis | g2.
  \section \sectionLabel \markup\smallCaps Chorus.
  d'4 | 4. a8 b4 c | c b2 4 | b g c b |
  a2. d,4 | d g b d | d c2 a4 | g b4 4. a8 | g2.
}

alto = \relative {
  \autoBeamOff
  b4 | b d d fis | g4 2 4 | 4 4 a g | fis2. d4 |
  d4 4 4 4 | fis4 2 4 | 4 4 g d | 2. g4 | g g a a |
  g4 e2 4 | 4 4 4 g | 2. 4 | 4 4 a g | e4 c2 e4 |
  d4 d c c | b2. \section g'4 | fis4. 8 g4 a | a g2 4 | g g fis g |
  fis2. d4 | d d d f | e4 2 c4 | b d d4. c8 | b2.
}

tenor = \relative {
  \autoBeamOff
  g4 | g b b d | 4 2 4 | 4 b d d | 2. fis,4 |
  fis4 4 4 g | a4 2 4 | a c b a | g2. d'4 | d d dis dis |
  e4 b2 4 | c4 4 g c | b2. d4 | d b d d | c g2 a4 |
  b4 b a a | g2. \section b4 | a4. d8 4 4 | 4 2 4 | 4 4 4 4 |
  d2. c4 | b b g g | 4 2 e4 | d g e4. fis8 | g2.
}

bass = \relative {
  \autoBeamOff
  g4 | g g g d | g4 2 4 | 4 4 fis g | d2. 4 |
  d4 d d d | 4 2 4 | d d e fis | g2. 4 | g g fis fis |
  e4 2 4 | c c c c | g'2. 4 | g g fis g | c,4 2 cis4 |
  d4 4 4 4 | g,2. \section g'4 | d4. 8 4 4 | g4 2 4 | g b a g |
  d2. fis4 | g g g b, | c4 2 4 | d4 4 4. 8 | g,2.
}

chorus = \lyricmode {
  Give praise to our Re -- deem -- er,
  Oh, mag -- ni -- fy His grace;
  Our ev -- er -- last -- ing por -- tion,
  Our sure a -- bid -- ing- place.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  We have a firm foun -- da -- tion,
  Whose hope is in the Lord;
  We have a bless -- ed ha -- ven,
  Who an -- chor in His word;
  Though sur -- ges break a -- round us,
  And clouds our sky may dim.
  He will not leave to per -- ish
  One soul that clings to Him.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  We have a strong de -- liv -- ‘rer,
  Who trust His migh -- ty arm;
  Not all the hosts of dark -- ness
  His cho -- sen ones can harm;
  Hia arm that brought sal -- va -- tion
  De -- fends them from a -- bove;
  They rest with -- in His mer -- cy,
  O’er -- sha -- dowed by His love.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O love, that stooped from hea -- ven
  To lift us up to God;
  O Love, that to re -- deem us
  The path of sor -- row trod!
  Through yon -- der land of Beu -- lah
  Glad harps with rap -- ture ring,
  And num -- bers with -- out num -- ber
  Its bound -- less tri -- umph sing.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "We " "have " "a " "firm " foun da "tion, "
  "\nWhose " "hope " "is " "in " "the " "Lord; "
  "\nWe " "have " "a " bless "ed " ha "ven, "
  "\nWho " an "chor " "in " "His " "word; "
  "\nThough " sur "ges " "break " a "round " "us, "
  "\nAnd " "clouds " "our " "sky " "may " "dim. "
  "\nHe " "will " "not " "leave " "to " per "ish "
  "\nOne " "soul " "that " "clings " "to " "Him. "
  "\nGive " "praise " "to " "our " Re deem "er, "
  "\nOh, " mag ni "fy " "His " "grace; "
  "\nOur " ev er last "ing " por "tion, "
  "\nOur " "sure " a bid ing "place.\n"

  \set stanza = "2."
  "\nWe " "have " "a " "strong " de liv "‘rer, "
  "\nWho " "trust " "His " migh "ty " "arm; "
  "\nNot " "all " "the " "hosts " "of " dark "ness "
  "\nHis " cho "sen " "ones " "can " "harm; "
  "\nHia " "arm " "that " "brought " sal va "tion "
  "\nDe" "fends " "them " "from " a "bove; "
  "\nThey " "rest " with "in " "His " mer "cy, "
  "\nO’er" sha "dowed " "by " "His " "love. "
  "\nGive " "praise " "to " "our " Re deem "er, "
  "\nOh, " mag ni "fy " "His " "grace; "
  "\nOur " ev er last "ing " por "tion, "
  "\nOur " "sure " a bid ing "place.\n"

  \set stanza = "3."
  "\nO " "love, " "that " "stooped " "from " hea "ven "
  "\nTo " "lift " "us " "up " "to " "God; "
  "\nO " "Love, " "that " "to " re "deem " "us "
  "\nThe " "path " "of " sor "row " "trod! "
  "\nThrough " yon "der " "land " "of " Beu "lah "
  "\nGlad " "harps " "with " rap "ture " "ring, "
  "\nAnd " num "bers " with "out " num "ber "
  "\nIts " bound "less " tri "umph " "sing. "
  "\nGive " "praise " "to " "our " Re deem "er, "
  "\nOh, " mag ni "fy " "His " "grace; "
  "\nOur " ev er last "ing " por "tion, "
  "\nOur " "sure " a bid ing "place. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
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
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
