\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lead me On."
  subtitle    = "Sankey No. 828"
  subsubtitle = "N. H. No. 45"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Words arranged"
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
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4. 8 4 a | b d4 2 | e4 d b g | a b a2 |
  g4. 8 4 a | b d d g,8[a] | b4. a8 g4 fis | g2. r4 |
}

alto = \relative {
  \autoBeamOff
  d'4. 8 4 4 | 4 fis g2 | 4 4 4 4 | fis g fis2 |
  g4. d8 4 4 | 4 fis g g | 4. fis8 g4 d | 2. r4 |
}

tenor = \relative {
  \autoBeamOff
  b4. 8 4 fis | g a b2 | c4 d d d | d4 4 2 |
  b4. 8 4 fis | g a b4 8[cis] | d4. c8 b4 a | b2. r4 |
}

bass = \relative {
  \autoBeamOff
  g4. 8 4 d | g d g2 | c4 b g b, | d4 4 2 |
  g4. 8 4 d | g d g g8[e] | d4. 8 4 4 | g,2. r4 |
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Trav -- 'lling to the bet -- ter land,
  O'er the des -- ert's scorch -- ing sand,
  Fa -- ther, do Thou hold my hand,
  And lead me, lead me on.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When at Ma -- rah, parched with heat,
  I the spark -- ling foun -- tain greet,
  Make the bit -- ter wa -- ters sweet,
  And lead me, lead me on.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When the wil -- der -- ness is drear,
  Show me E -- lim's palm -- groves near,
  With its wells, as crys -- tal clear,
  And lead me, lead me on.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Through the wa -- ter and the fire,
  This, O Lord, my one de -- sire,
  With Thy love me heart in -- spire,
  And lead me, lead me on.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  When I stand on Jor -- dan's brink,
  Do not let me fear or shrink;
  Hold me, Fa -- ther, lest I sink,
  And lead me, lead me on.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Trav" "'lling " "to " "the " bet "ter " "land, "
  "\nO'er " "the " des "ert's " scorch "ing " "sand, "
  "\nFa" "ther, " "do " "Thou " "hold " "my " "hand, "
  "\nAnd " "lead " "me, " "lead " "me " "on.\n"

  \set stanza = "2."
  "\nWhen " "at " Ma "rah, " "parched " "with " "heat, "
  "\nI " "the " spark "ling " foun "tain " "greet, "
  "\nMake " "the " bit "ter " wa "ters " "sweet, "
  "\nAnd " "lead " "me, " "lead " "me " "on.\n"

  \set stanza = "3."
  "\nWhen " "the " wil der "ness " "is " "drear, "
  "\nShow " "me " E "lim's " palm "groves " "near, "
  "\nWith " "its " "wells, " "as " crys "tal " "clear, "
  "\nAnd " "lead " "me, " "lead " "me " "on.\n"

  \set stanza = "4."
  "\nThrough " "the " wa "ter " "and " "the " "fire, "
  "\nThis, " "O " "Lord, " "my " "one " de "sire, "
  "\nWith " "Thy " "love " "me " "heart " in "spire, "
  "\nAnd " "lead " "me, " "lead " "me " "on.\n"

  \set stanza = "5."
  "\nWhen " "I " "stand " "on " Jor "dan's " "brink, "
  "\nDo " "not " "let " "me " "fear " "or " "shrink; "
  "\nHold " "me, " Fa "ther, " "lest " "I " "sink, "
  "\nAnd " "lead " "me, " "lead " "me " "on. "
}

wordsMidiMen = \lyricmode {
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
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
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
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
    output-suffix                        = singlepage
    top-margin                           = 0
    left-margin                          = 7
    right-margin                         = 1
    paper-width                          = 190\mm
    page-breaking                        = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup              = \slashSeparator
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
