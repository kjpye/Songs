\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lord God, the Holy Ghost."
  subtitle    = "Sankey No. 323"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{ Attributed to \smallCaps "P. Abelard."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "James Montgomery."
  meter       = \markup\smallCaps "S.M."
  piece       = \markup\smallCaps "Gildas."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4
  g4 a b a
  g2. b4
  d4 4 c b
  a2. \bar "|" \break
  b4
  g4 c b a % B
  g4 4 a a
  b4 c b a
  g2.
}

alto = \relative {
  \autoBeamOff
  \once\partCombineApart d'4
  e4 g g fis
  \once\partCombineApart g2. 4
  g4 4 a g
  fis2. g4
  \once\partCombineApart g4 4 4 fis % B
  e4 cis d fis
  g4 4 4 fis
  \once\partCombineApart g2.
}

tenor = \relative {
  \autoBeamOff
  b4
  b4 e d4. c8
  b2. d4
  d4 4 4 4
  d2. 4
  e4 4 d c % B
  b4 g fis d'
  d4 e d4. c8 b2.
}

bass = \relative {
  \autoBeamOff
  g4
  e4 c d d
  g2. 4
  b4 4 fis g
  d2. g,4
  c4 a d d % B
  e4 4 d d
  g4 c, d d
  g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Lord God, the Ho -- ly Ghost,
  In this ac -- cept -- ed hour,
  As on the day of Pen -- te -- cost,
  Des -- cend in all Thy power.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  We meet with one ac -- cord
  In one ap -- point -- ed place,
  And wait the prom -- ise of our Lord,
  The Spi -- rit of all grace.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The young, the old, in -- spire
  With wis -- dom from a -- bove,
  And give us hearts and tongues of fire
  To pray, and praise, and love.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Spi -- rit of Light, ex -- plore
  And chase our gloom a -- way,
  With lus -- tre shin -- ing more and more
  Un -- to the pre -- fect day!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lord " "God, " "the " Ho "ly " "Ghost, "
  "\nIn " "this " ac cept "ed " "hour, "
  "\nAs " "on " "the " "day " "of " Pen te "cost, "
  "\nDes" "cend " "in " "all " "Thy " "power. "

  \set stanza = "2."
  "\nWe " "meet " "with " "one " ac "cord "
  "\nIn " "one " ap point "ed " "place, "
  "\nAnd " "wait " "the " prom "ise " "of " "our " "Lord, "
  "\nThe " Spi "rit " "of " "all " "grace. "

  \set stanza = "3."
  "\nThe " "young, " "the " "old, " in "spire "
  "\nWith " wis "dom " "from " a "bove, "
  "\nAnd " "give " "us " "hearts " "and " "tongues " "of " "fire "
  "\nTo " "pray, " "and " "praise, " "and " "love. "

  \set stanza = "4."
  "\nSpi" "rit " "of " "Light, " ex "plore "
  "\nAnd " "chase " "our " "gloom " a "way, "
  "\nWith " lus "tre " shin "ing " "more " "and " "more "
  "\nUn" "to " "the " pre "fect " "day! "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
