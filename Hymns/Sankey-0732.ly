\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Rest in the Lord."
  subtitle    = "Sankey No. 732"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "12.10"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*5
  \textMark \markup { \box \bold "B" } s2.*5 s2
  \textMark \markup { \box \bold "C" } s4 s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 e f | g2 c4 | e4. d8 a b | a4 g2 | f4 d e |
  f2 b4 | 4. a8 g d | e2. | g4 e f | g2 c4 | e4. 8 \bar "|" \break
  f8 e | 4 d2 | c4 b a | g2 c4 | d4. a8 b g | c2. |
}

alto = \relative {
  \autoBeamOff
  e'4 c d | e2 g4 | f4. 8 8 8 | e4 2 | d4 b c |
  d2 4 | 4. c8 b b | c2. | e4 c d | e2 4 | g4. 8
  g8 8 | 4 f2 | dis4 4 4 | e2 4 | f4. 8 8 8 | e2. |
}

tenor = \relative {
  \autoBeamOff
  c'4 g g | c2 4 | b4. 8 d d | c4 2 | b4 g g |
  g2 4 | 4. 8 8 8 | 2. | c4 g g | c2 4 | cis4. 8
  cis8 8 | 4 d2 | a4 b c | 2 4 | b4. c8 d b | g2. |
}

bass = \relative {
  \autoBeamOff
  c4 c c | 2 e4 | g4. 8 8 8 | c,4 2 | g4 g g |
  g2 4 | 4. 8 8 8 | c2. | 4 4 4 | 2 c'4 | a4. 8
  a8 8 | d,4 2 | fis4 4 4 | g2 4 | 4. 8 8 8 | c,2. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Rest in the Lord, O wea -- ry, hea -- vy- la -- den!
  Look un -- to Him, your ev -- er- pres -- ent Guide;
  Rest in the Lord, whose Word is truth e -- ter -- nal;
  Leave all to Him, what -- ev -- er may be -- tide.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Rest in the Lord, and tell Him all your sor -- row;
  Trust in His love, so bound -- less, full, and free;
  He will not leave, nor will He e'er for -- sake you;
  Rest in the Lord, and sweet your rest shall be.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Rest in the Lord, and when your toil is o -- ver,
  When ev -- 'ry storm and dan -- ger you have passed—
  Lo! He has said, whose Word a -- bi -- deth ev -- er,
  You shall re -- ceive His wel -- come home at last.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Rest " "in " "the " "Lord, " "O " wea "ry, " hea vy la "den! "
  "\nLook " un "to " "Him, " "your " ev er pres "ent " "Guide; "
  "\nRest " "in " "the " "Lord, " "whose " "Word " "is " "truth " e ter "nal; "
  "\nLeave " "all " "to " "Him, " what ev "er " "may " be "tide.\n"

  \set stanza = "2."
  "\nRest " "in " "the " "Lord, " "and " "tell " "Him " "all " "your " sor "row; "
  "\nTrust " "in " "His " "love, " "so " bound "less, " "full, " "and " "free; "
  "\nHe " "will " "not " "leave, " "nor " "will " "He " "e'er " for "sake " "you; "
  "\nRest " "in " "the " "Lord, " "and " "sweet " "your " "rest " "shall " "be.\n"

  \set stanza = "3."
  "\nRest " "in " "the " "Lord, " "and " "when " "your " "toil " "is " o "ver, "
  "\nWhen " ev "'ry " "storm " "and " dan "ger " "you " "have " "passed— "
  "\nLo! " "He " "has " "said, " "whose " "Word " a bi "deth " ev "er, "
  "\nYou " "shall " re "ceive " "His " wel "come " "home " "at " "last. "
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
  \bookOutputSuffix "repeat"
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
  \bookOutputSuffix "single"
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
