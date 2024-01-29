\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Work, for Time is Flying."
  subtitle    = "Sankey No. 799"
  subsubtitle = "N. H. No. 194"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar, D. D."
  meter       = \markup\smallCaps "6.5. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
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
  c''4 4 4 d | c2 a4 r | a4 g e c | f2. r4 | g4 g a b |
  c2 g4 r | e' d a b | c2. r4 | c c c d | c2 a4 r |
  a4 g e c | f2. r4 | g g a bes | c2 d4 r | f, f g g | f2. r4 |
}

alto = \relative {
  \autoBeamOff
  f'4 4 4 4 | 2 4 r | e e c c | 2. r4 | e e f f |
  e2 4 r | f f d d | e2. r4 | f f f f | 2 4 r |
  e4 e c c | 2. r4 | e e f f | 2 4 r | c c d e | f2. r4 |
}

tenor = \relative {
  \autoBeamOff
  a4 4 4 bes | a2 c4 r | c bes4 4 4 | a2. r4 | c c b d |
  c2 4 r | c b d d | c2. r4 | a a a b | a2 c4 r |
  c4 bes4 4 4 | a2. r4 | c c c d | c2 bes4 r | a a bes4 4 | a2. r4 |
}

bass = \relative {
  \autoBeamOff
  f4 4 4 4 | 2 4 r | c c c e | f2. r4 | c c g' g |
  c,2 4 r | g' g g g | c,2. r4 | f f f f | 2 4 r |
  c4 c c e | f2. r4 | c c f c | a2 bes4 r | c c c c | f2. r4 |
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Work, for time is fly -- ing,
  Work with hearts sin -- cere;
  Work, for souls are dy -- ing.
  Work, for night is near;
  In the Mas -- ter's vine -- yard,
  Go and work to -- day/
  Be no use -- less slug -- gard
  Stand -- ing in the way.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  In this glo -- rious call -- ing,
  Work till day is o'er;
  Work till, ev -- 'ning fall -- ing,
  You can work no more;
  Then your la -- bour bfrng -- ing
  To the King of Kings,
  Borne, with joy and sing -- ing,
  Home on an -- gel's wings.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  There, where saints a -- dore Him,
  Where the ran -- somed meet,
  Joy they show be -- fore Him,
  Bow -- ing at His feet;
  Hear the mas -- ter say -- ing,
  From His heav'n -- ly throne,
  When thy toil re -- ward -- ing,
  “La -- bour -- er, well done!”
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Work, " "for " "time " "is " fly "ing, "
  "\nWork " "with " "hearts " sin "cere; "
  "\nWork, " "for " "souls " "are " dy "ing. "
  "\nWork, " "for " "night " "is " "near; "
  "\nIn " "the " Mas "ter's " vine "yard, "
  "\nGo " "and " "work " to "day. "
  "\nBe " "no " use "less " slug "gard "
  "\nStand" "ing " "in " "the " "way.\n"

  \set stanza = "2."
  "\nIn " "this " glo "rious " call "ing, "
  "\nWork " "till " "day " "is " "o'er; "
  "\nWork " "till, " ev "'ning " fall "ing, "
  "\nYou " "can " "work " "no " "more; "
  "\nThen " "your " la "bour " bfrng "ing "
  "\nTo " "the " "King " "of " "Kings, "
  "\nBorne, " "with " "joy " "and " sing "ing, "
  "\nHome " "on " an "gel's " "wings.\n"

  \set stanza = "3."
  "\nThere, " "where " "saints " a "dore " "Him, "
  "\nWhere " "the " ran "somed " "meet, "
  "\nJoy " "they " "show " be "fore " "Him, "
  "\nBow" "ing " "at " "His " "feet; "
  "\nHear " "the " mas "ter " say "ing, "
  "\nFrom " "His " heav'n "ly " "throne, "
  "\nWhen " "thy " "toil " re ward "ing, "
  "\n“La" bour "er, " "well " "done!” "
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
