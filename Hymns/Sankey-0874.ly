\version "2.25.17"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Nothing but the Blood of Jesus!"
  subtitle    = "Sankey No. 874"
  subsubtitle = "Sankey 880 No. 338"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  g'4 4 4 a | b d b2 | g8 8 8 a b4 4 | a2 g |
  g4 4 4 a | b d b2 | g8 8 8 a b4 4 | a2 g | \break
  d'2 b4 a | b d b2 | a2 4 g | a a b(d) |
  d2 b4 a | b d b2 | g8 8 8 a b4 4 | a2 g |
}

alto = \relative {
  d'4 4 4 fis | g b g2 | d8 8 8 8 g4 4 | fis2 g |
  d4 4 4 fis | g4 b g2 | d8 8 8 8 g4 4 | fis2 g |
  g2 4 fis | g4 4 2 | fis2 4 g | fis4 4 g2 |
  g2 4 fis | g4 4 2 | d8 8 8 8 g4 4 | fis2 g |
}

tenor = \relative {
  b4 4 4 d | 4 4 2 | b8 8 8 c d4 4 | c2 b |
  b4 4 4 d | 4 4 2 | b8 8 8 c d4 4 | c2 b |
  b2 d4 4 | d b d2 | c2 4 b | d d d(b) |
  b2 d4 4 | d b d2 | b8 8 8 c d4 4 | c2 b |
}

bass = \relative {
  g4 4 4 d | g4 4 2 | 8 8 8 8 4 4 | d2 g,
  g'4 4 4 d | g4 4 2 | 8 8 8 8 4 4 | d2 g,
  g'2 4 d | g4 4 2 | d2 4 e | d d g2 |
  g2 4 d | g4 4 2 | 8 8 8 8 4 g, | d'2 g, |
}

chorus = \lyricmode {
  Oh, pre -- cious is the flow
  That makes us white as snow!
  No o -- ther fount I know,
  No -- thing but the blood of Je -- sus.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  What can wash a -- way my stain?
  No -- thing but the blood of Je -- sus!
  What can make me whole a -- gain?
  No -- thing but the blood of Je -- sus!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  For my cleans -- ing this I see—
  No -- thing but the blood of Je -- sus!
  For my par -- don this my plea—
  No -- thing but the blood of Je -- sus!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Noth -- ing can for sin a -- tone—
  No -- thing but the blood of Je -- sus!
  Naught of good that I have done—
  No -- thing but the blood of Je -- sus!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  This is all my hope and peace—
  No -- thing but the blood of Je -- sus!
  This is all my righ -- teous -- ness—
  No -- thing but the blood of Je -- sus!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "What " "can " "wash " a "way " "my " "stain? "
  "\nNo" "thing " "but " "the " "blood " "of " Je "sus! "
  "\nWhat " "can " "make " "me " "whole " a "gain? "
  "\nNo" "thing " "but " "the " "blood " "of " Je "sus! "
  "\nOh, " pre "cious " "is " "the " "flow "
  "\nThat " "makes " "us " "white " "as " "snow! "
  "\nNo " o "ther " "fount " "I " "know, "
  "\nNo" "thing " "but " "the " "blood " "of " Je "sus.\n"

  \set stanza = "2."
  "\nFor " "my " cleans "ing " "this " "I " "see— "
  "\nNo" "thing " "but " "the " "blood " "of " Je "sus! "
  "\nFor " "my " par "don " "this " "my " "plea— "
  "\nNo" "thing " "but " "the " "blood " "of " Je "sus! "
  "\nOh, " pre "cious " "is " "the " "flow "
  "\nThat " "makes " "us " "white " "as " "snow! "
  "\nNo " o "ther " "fount " "I " "know, "
  "\nNo" "thing " "but " "the " "blood " "of " Je "sus.\n"

  \set stanza = "3."
  "\nNoth" "ing " "can " "for " "sin " a "tone— "
  "\nNo" "thing " "but " "the " "blood " "of " Je "sus! "
  "\nNaught " "of " "good " "that " "I " "have " "done— "
  "\nNo" "thing " "but " "the " "blood " "of " Je "sus! "
  "\nOh, " pre "cious " "is " "the " "flow "
  "\nThat " "makes " "us " "white " "as " "snow! "
  "\nNo " o "ther " "fount " "I " "know, "
  "\nNo" "thing " "but " "the " "blood " "of " Je "sus.\n"

  \set stanza = "4."
  "\nThis " "is " "all " "my " "hope " "and " "peace— "
  "\nNo" "thing " "but " "the " "blood " "of " Je "sus! "
  "\nThis " "is " "all " "my " righ teous "ness— "
  "\nNo" "thing " "but " "the " "blood " "of " Je "sus! "
  "\nOh, " pre "cious " "is " "the " "flow "
  "\nThat " "makes " "us " "white " "as " "snow! "
  "\nNo " o "ther " "fount " "I " "know, "
  "\nNo" "thing " "but " "the " "blood " "of " Je "sus. "
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
    \midi { \context { \Staff autoBeaming = ##f } }
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
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
                                              \wordsFour  \chorus
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
