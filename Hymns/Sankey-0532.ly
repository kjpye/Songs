\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Take Thou My Hand."
  subtitle    = "Sankey No. 532"
  subsubtitle = "Sankey 880 No. 576"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Julia Sterling."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 2/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*5
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'2 c4 b | a g fis e | d2 b'4 g | a2. r4 | b2 c4 b |
  a4 g fis e | d(g) g a | g2. r4 | a2 4 d, | g a b d |
  d2 cis4 4 | d2. r4 | b2 d4 c | b a g e | d2 g4 a | g2. r4 |
}

alto = \relative {
  \autoBeamOff
  d'2 e4 d | e e d c | b2 d4 4 | 2. r4 2 e4 d |
  e4 4 d c | b(d) d fis | g2. r4 | d2 4 4 | 4 4 4 g |
  g2 e4 4 f2. r4 | g2 f4 e | d b b c | d(b) b c | b2. r4 |
}

tenor = \relative {
  \autoBeamOff
  g2 4 4 | 4 4 4 4 | 2 4 4 | fis2. r4 | g2 4 4 |
  g4 4 4 4 | g(b) b c | b2. r4 | fis2 4 a | g4 fis g b |
  b2 a4 4 | 2. r4 | g2 4 4 | 4 fis g g | b(g) g fis | g2. r4 |
}

bass = \relative {
  \autoBeamOff
  g2 4 4 | c,4 4 4 4 | g2 4 b | d2. r4 | g2 4 4 |
  c,4 4 4 4 | d2 4 4 | g,2. r4 | d'2 4 c | b d g g |
  e2 a4 a, | d2. r4 | g,2 b4 c | d dis e c | d2 e4 d | g,2. r4 |
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
  Take Thou my hand, and lead me---
  Choose Thou my way!
  "\"Not" as I "will,\"" O Fa -- ther,
  Teach me to say,
  What though the storms may ga -- ther,
  Thou know -- est best;
  Safe in Thy ho -- ly keep -- ing,
  There would I rest.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Take Thou my hand, and lead me---
  Lord, I am Thine!
  Fill with Thy Ho -- ly Spi -- rit
  This heart of mine:
  The in the hour of tri -- al
  Strong shall I be---
  Rea -- dy to do, or suf -- fer,
  Dear Lord, for Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Take Thou my hand, and lead me,
  Lord, as I go;
  In -- to Thy per -- fect im -- age
  Help me to grow.
  Still in Thine own pa -- vil -- ion
  Shel -- ter Thou me;
  Keep me, O Fa -- ther, keep me,
  Close, close to Thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Take " "Thou " "my " "hand, " "and " "lead " me-
  "\nChoose " "Thou " "my " "way! "
  "\n\"Not " "as " "I " "will,\" " "O " Fa "ther, "
  "\nTeach " "me " "to " "say, "
  "\nWhat " "though " "the " "storms " "may " ga "ther, "
  "\nThou " know "est " "best; "
  "\nSafe " "in " "Thy " ho "ly " keep "ing, "
  "\nThere " "would " "I " "rest.\n"

  \set stanza = "2."
  "\nTake " "Thou " "my " "hand, " "and " "lead " me-
  "\nLord, " "I " "am " "Thine! "
  "\nFill " "with " "Thy " Ho "ly " Spi "rit "
  "\nThis " "heart " "of " "mine: "
  "\nThe " "in " "the " "hour " "of " tri "al "
  "\nStrong " "shall " "I " be-
  "\nRea" "dy " "to " "do, " "or " suf "fer, "
  "\nDear " "Lord, " "for " "Thee.\n"

  \set stanza = "3."
  "\nTake " "Thou " "my " "hand, " "and " "lead " "me, "
  "\nLord, " "as " "I " "go; "
  "\nIn" "to " "Thy " per "fect " im "age "
  "\nHelp " "me " "to " "grow. "
  "\nStill " "in " "Thine " "own " pa vil "ion "
  "\nShel" "ter " "Thou " "me; "
  "\nKeep " "me, " "O " Fa "ther, " "keep " "me, "
  "\nClose, " "close " "to " "Thee! "
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
