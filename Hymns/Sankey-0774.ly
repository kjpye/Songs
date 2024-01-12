\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Can ye not Watch One Little Hour?"
  subtitle    = "Sankey No. 774"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Jessie H. Brown."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4. s1*2 s2
  \textMark \markup { \box \bold "B" } s2  s1*2 s2 s8
  \textMark \markup { \box \bold "C" } s4. s1*3
  \textMark \markup { \box \bold "D" }     s1*3
  \textMark \markup { \box \bold "E" }     s1*3 s2 s8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8 g a | f4. c8 f a c bes | a4 g r8 g f g | a4. 8 \bar "|" \break
  b8 8 a g | c2 r8 c d c | a4. 8 bes a g d | f4 e r8 \bar "|" \break
  e8 f g | a c c bes a4 g | f2 r8
  \section \sectionLabel \markup\smallCaps Chorus.
  g8 e g | c4. d8 c b a b |
  a4 g r8 g c d | e4. c8 e d c b | c2 r8 c d c |
  a4. 8 b a g d | f4 e r8 e f g | a c c bes a4 g | f2 r8
}

alto = \relative {
  \autoBeamOff
  f'8 8 8 | c4. 8 8 8 f f | 4 e r8 c c e | f4. 8
  f8 8 8 8 | e2 r8 e e e | f4. 8 8 c d d | c4 c r8
  c8 8 e | f f f f f4 e | f2 r8 \section e8 c e | 4. 8 f f f f |
  f4 e r8 e e f | g4. e8 g f e f | e2 r8 e e e |
  f4. 8 8 c d d | c4 c r8 c c e | f f f f f4 e | f2 r8
}

tenor = \relative {
  \autoBeamOff
  c'8 bes c | a4. 8 8 c c d |c4 4 r8 bes a bes | c4. d8
  d8 8 c b | c2 r8 bes8 8 8 | a4. c8 d c bes g | a4 g r8
  g8 a c | c ees d d c4 bes | a2 r8 \section c8 g g | 4. c8 d d d d |
  c4 4 r8 c g g | c4. 8 a a g g | 2 r8 bes8 8 8 |
  a4. c8 d c bes g | a4 g r8 g a c | c ees d d c4 bes | a2 r8
}

bass = \relative {
  \autoBeamOff
  f8 8 8 | 4. 8 8 8 a, bes |c4 4 r8 c c c | f4. 8
  g8 8 8 8 | c,2 r8 c c c | f4. 8 8 8 bes,8 8 | c4 c r8
  c8 8 8 | f f bes,8 8 c4 4 | g2 r8 \section c8 8 8 | 4. 8 g' g g g |
  c,4 4 r8 c c c | 4. 8 f f g g | c,2 r8 c c c |
  f4. 8 8 8 bes,8 8 | c4 4 r8 c c c | f a, bes bes c4 c | f2 r8
}

chorus = \lyricmode {
  Then souls, be brave, and watch un -- til the mor -- row!
  A -- wake! a -- rise! your lamps of pur -- pose trim;
  Your Sa -- viour speaks a -- cross the night of sor -- row;
  Can ye not watch one lit -- tle hour with Him?
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  One lit -- tle hour for watch -- ing with the Mas -- ter,
  E -- ter -- nal years to walk with Him in white;
  One lit -- tle hour to brave -- ly meet dis -- as -- ter,
  E -- ter -- nal years to reign with Him in light.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  One lit -- tle hour to suf -- fer scorn and loss -- es,
  E -- ter -- nal years be -- yond earth's cru -- el frowns;
  One lit -- tle hour to car -- ry hea -- vy cross -- es,
  E -- ter -- nal years to wear un -- fa -- ding crowns.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  One lit -- tle hour for wea -- ry toils and tri -- als,
  E -- ter -- nal years for calm and peace -- ful rest;
  One lit -- tle hour for pa -- tient self- de -- ni -- als,
  E -- ter -- nal years of life where life is blest.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "One " lit "tle " "hour " "for " watch "ing " "with " "the " Mas "ter, "
  "\nE" ter "nal " "years " "to " "walk " "with " "Him " "in " "white; "
  "\nOne " lit "tle " "hour " "to " brave "ly " "meet " dis as "ter, "
  "\nE" ter "nal " "years " "to " "reign " "with " "Him " "in " "light. "
  "\nThen " "souls, " "be " "brave, " "and " "watch " un "til " "the " mor "row! "
  "\nA" "wake! " a "rise! " "your " "lamps " "of " pur "pose " "trim; "
  "\nYour " Sa "viour " "speaks " a "cross " "the " "night " "of " sor "row; "
  "\nCan " "ye " "not " "watch " "one " lit "tle " "hour " "with " "Him?\n"

  \set stanza = "2."
  "\nOne " lit "tle " "hour " "to " suf "fer " "scorn " "and " loss "es, "
  "\nE" ter "nal " "years " be "yond " "earth's " cru "el " "frowns; "
  "\nOne " lit "tle " "hour " "to " car "ry " hea "vy " cross "es, "
  "\nE" ter "nal " "years " "to " "wear " un fa "ding " "crowns. "
  "\nThen " "souls, " "be " "brave, " "and " "watch " un "til " "the " mor "row! "
  "\nA" "wake! " a "rise! " "your " "lamps " "of " pur "pose " "trim; "
  "\nYour " Sa "viour " "speaks " a "cross " "the " "night " "of " sor "row; "
  "\nCan " "ye " "not " "watch " "one " lit "tle " "hour " "with " "Him?\n"

  \set stanza = "3."
  "\nOne " lit "tle " "hour " "for " wea "ry " "toils " "and " tri "als, "
  "\nE" ter "nal " "years " "for " "calm " "and " peace "ful " "rest; "
  "\nOne " lit "tle " "hour " "for " pa "tient " self de ni "als, "
  "\nE" ter "nal " "years " "of " "life " "where " "life " "is " "blest. "
  "\nThen " "souls, " "be " "brave, " "and " "watch " un "til " "the " mor "row! "
  "\nA" "wake! " a "rise! " "your " "lamps " "of " pur "pose " "trim; "
  "\nYour " Sa "viour " "speaks " a "cross " "the " "night " "of " sor "row; "
  "\nCan " "ye " "not " "watch " "one " lit "tle " "hour " "with " "Him? "
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
