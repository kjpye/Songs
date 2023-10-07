\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Murmuring Stream."
  subtitle    = "Sankey No. 701"
  subsubtitle = "C.C. No. 273"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "L. H. Edmunds."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*3
  \textMark \markup { \box \bold "B" } s2.*3
  \textMark \markup { \box \bold "C" } s2.*3
  \textMark \markup { \box \bold "D" } s2.*3
  \textMark \markup { \box \bold "E" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8 b d g d g |b8 g b d4. | b8 d b g4. |
  g8 b g d4. | 8 b d g d g | b g b d4. |
  b8 d b a4 d,8 | g4.~4 r8 |
  \section \sectionLabel \markup\smallCaps Chorus.
  a8 d, b' g4. |
  a8 d, b' g4. | d8 g b d4 8 | d4.~4 r8 |
  b8 d b g4. | 8 b g d4. | e8 g c b4 a8 | g4.~4 r8 |
}

alto = \relative {
  \autoBeamOff
  d'8 b d g d g | b g b d4. | g,8 g g d4. |
  d8 g d b4. | d8 b d g d g | b g b d4. |
  g,8 g g fis4 d8 |4.~4 r8 \section | c8 8 d b4. |
  c8 8 8 b4. | d8 g b fis4 g8 | <<{fis4.~4 s8} \new Voice {\voiceFour \teeny fis8 d e fis g a}>> |
  d,8 g g d4. | 8 g d b4. | c8 e e d4 8 | 4.~4 r8 |
}

tenor = \relative {
  \autoBeamOff
  d8 b d g d g | b8 g b d4. | 8 b d b4. |
  b8 d b g4. | d8 b d g d g | b g b d4. |
  d8 b d c4 8 | b4.~4 r8 \section | fis8 8 8 g4. |
  fis8 8 8 g4. | d8 g b c4 b8 | a4.~4 r8 |
  g8 b d b4. | 8 d b g4. | 8 8 8 4 c8 | b4.~4 r8 |
}

bass = \relative {
  \autoBeamOff
  d8 b d g d g | b8 g b d4. | g,8 8 8 4. |
  g,8 8 8 4. | d'8 b d g d g | b g b d4. |
  g,8 8 8 d4 8 | g,4.~4 r8 \section | d'8 8 8 g,4. |
  d'8 d d g,4. | d'8 g b a4 g8 | d4.~4 r8 |
  g8 8 8 4. | g,8 8 8 4. | c8 8 8 d4 8 | g,4.~4 r8 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Mur -- mur -- ing stream, mur -- mur -- ing stream,
  Flow to the roll -- ing sea; __
  Mur -- mur -- ing stream, mur -- mur -- ing stream,
  Sing -- ing of pu -- ri -- ty. __
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Down from the moun -- tains a gay lit -- tle stream,
  Leap -- ing a -- long, leap -- ing a -- lone,
  Sang a sweet tune to the sun's mer -- ry beam.
  Leap -- ing a -- long, a -- long. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Cool -- ing the grass in the long sum -- mer hours,
  Smi -- ling a -- long, smi -- ling a -- long;
  Giv -- ing a drink to the birds and the flowers,
  Smi -- ling a -- long, a -- long. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Wid -- er and wid -- er as on -- ward you flow,
  Rip -- pling a -- long, rip -- pling a -- long;
  Car -- ry a bless -- ing wher -- ev -- er you go,
  Rip -- pling a -- long, a -- long. __
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Bright lit -- tle stream -- lets we child -- ren may be,
  Sing -- ing a -- long, sing -- ing a -- long;
  Lov -- ing and help -- ful, pure- heart -- ed and free,
  Sing -- ing a -- long, a -- long. __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Down " "from " "the " moun "tains " "a " "gay " lit "tle " "stream, "
  "\nLeap" "ing " a "long, " leap "ing " a "lone, "
  "\nSang " "a " "sweet " "tune " "to " "the " "sun's " mer "ry " "beam. "
  "\nLeap" "ing " a "long, " a "long. " 
  "\nMur" mur "ing " "stream, " mur mur "ing " "stream, "
  "\nFlow " "to " "the " roll "ing " "sea; " 
  "\nMur" mur "ing " "stream, " mur mur "ing " "stream, "
  "\nSing" "ing " "of " pu ri "ty.\n" 

  \set stanza = "2."
  "\nCool" "ing " "the " "grass " "in " "the " "long " sum "mer " "hours, "
  "\nSmi" "ling " a "long, " smi "ling " a "long; "
  "\nGiv" "ing " "a " "drink " "to " "the " "birds " "and " "the " "flowers, "
  "\nSmi" "ling " a "long, " a "long. " 
  "\nMur" mur "ing " "stream, " mur mur "ing " "stream, "
  "\nFlow " "to " "the " roll "ing " "sea; " 
  "\nMur" mur "ing " "stream, " mur mur "ing " "stream, "
  "\nSing" "ing " "of " pu ri "ty.\n" 

  \set stanza = "3."
  "\nWid" "er " "and " wid "er " "as " on "ward " "you " "flow, "
  "\nRip" "pling " a "long, " rip "pling " a "long; "
  "\nCar" "ry " "a " bless "ing " wher ev "er " "you " "go, "
  "\nRip" "pling " a "long, " a "long. " 
  "\nMur" mur "ing " "stream, " mur mur "ing " "stream, "
  "\nFlow " "to " "the " roll "ing " "sea; " 
  "\nMur" mur "ing " "stream, " mur mur "ing " "stream, "
  "\nSing" "ing " "of " pu ri "ty.\n" 

  \set stanza = "4."
  "\nBright " lit "tle " stream "lets " "we " child "ren " "may " "be, "
  "\nSing" "ing " a "long, " sing "ing " a "long; "
  "\nLov" "ing " "and " help "ful, " pure heart "ed " "and " "free, "
  "\nSing" "ing " a "long, " a "long. " 
  "\nMur" mur "ing " "stream, " mur mur "ing " "stream, "
  "\nFlow " "to " "the " roll "ing " "sea; " 
  "\nMur" mur "ing " "stream, " mur mur "ing " "stream, "
  "\nSing" "ing " "of " pu ri "ty. " 
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
