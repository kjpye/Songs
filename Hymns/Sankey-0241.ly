\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Every Day will I Bless Thee."
  subtitle    = "Sankey No. 241"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "Cæsar Malan, D. D." "(Tr. " \smallCaps "J. E. Arnold" ")"}
  meter       = \markup\smallCaps "c.m."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*5
  \mark \markup { \box "B" }    s1*5
  \mark \markup { \box "C" }    s1*5 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4 s1*13
  s2 \tempo 4=40 s4 \tempo 4=120 s
  s1 s2.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4
  c4 f a c
  c4 bes g bes
  a4 f e f
  g2. c,4
  c4 f a c
  c4 bes g bes % B
  a4 f g4. f8
  f2. \bar "||" \break a8.^\markup\smallCaps Chorus. 16
  a2 e4 g
  f4 d2 c'8. 16
  c2 g4 bes % C
  bes4 a2 c,4
  c4 f a c
  c4 bes d\fermata bes
  a2 bes4 g
  g4 f2
}

alto = \relative {
  \autoBeamOff
  c'4
  c4 4 f f
  e4 4 4 g
  f4 c c f
  e2. c4
  c4 4 f f
  e4 4 4 g % B
  f4 4 e4. c8
  c2. a'8. 16
  a2 cis,4 e
  d4 2 c'8. 16
  c2 e,4 g % C
  g4 f2 c4
  c4 4 f f
  f4 4 4\fermata 4
  f2 e4 c
  c4 2
}

tenor = \relative {
  \autoBeamOff
  a4
  a4 4 c a
  g4 4 c c
  c4 4 bes a
  c2. bes4
  a4 4 c a
  g4 4 c c % B
  c4 a bes4. a8
  a2. 8. 16
  a2 4 4
  a4 f2 c'8. 16
  c2 4 4 % C
  c4 2 a4
  a4 4 c ees
  d4 4 bes\fermata d
  c2 g4 bes
  bes4 a2
}

bass = \relative {
  \autoBeamOff
  f4
  f4 4 4 4
  c4 4 4 4
  f4 a g f
  c2. 4
  f4 4 4 4
  c4 4 4 4 % B
  f4 4 c4. f8
  f2. a8. 16
  a2 a,4 4
  d4 2 c'8. 16
  c2 c,4 4 % C
  f4 2 4
  f4 4 4 a
  bes4 bes,4 4\fermata 4
  c2 4 4
  f4 2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Ev" -- 'ry day will I bless Thee!
  Ev -- 'ry day will I bless Thee!
  And I will praise, will praise Thy name
  for ev -- er and ev -- "er!\""
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  My Sa -- viour's prais -- es I will sing,
  And all His love ex -- press,
  Whose mer -- cies each r -- turn -- ing day
  Pro -- claim His faith -- ful -- ness.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Re -- deemed by His al -- migh -- ty powerm
  My Sa -- viour and my King;
  My con -- fi -- dence in Him I place,
  To Him my soul would cling.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On Thee a -- lone, my Sa -- viour God,
  My stead -- fast hopes de -- pend;
  And to Thy ho -- ly will my soul
  Sub -- miss -- ive -- ly would bend.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, grant Thy Ho -- ly Spi -- rit's grace,
  And aid my fee -- ble powers,
  That glad -- ly I may fol -- low Thee
  Through all my fu -- ture hours.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " Sa "viour's " prais "es " "I " "will " "sing, "
  "\nAnd " "all " "His " "love " ex "press, "
  "\nWhose " mer "cies " "each " r turn "ing " "day "
  "\nPro" "claim " "His " faith ful "ness. "
  "\n\"Ev" "'ry " "day " "will " "I " "bless " "Thee! "
  "\nEv" "'ry " "day " "will " "I " "bless " "Thee! "
  "\nAnd " "I " "will " "praise, " "will " "praise " "Thy " "name "
  "\nfor " ev "er " "and " ev "er!\" "

  \set stanza = "2."
  "\nRe" "deemed " "by " "His " al migh "ty " "powerm "
  "\nMy " Sa "viour " "and " "my " "King; "
  "\nMy " con fi "dence " "in " "Him " "I " "place, "
  "\nTo " "Him " "my " "soul " "would " "cling. "
  "\n\"Ev" "'ry " "day " "will " "I " "bless " "Thee! "
  "\nEv" "'ry " "day " "will " "I " "bless " "Thee! "
  "\nAnd " "I " "will " "praise, " "will " "praise " "Thy " "name "
  "\nfor " ev "er " "and " ev "er!\" "

  \set stanza = "3."
  "\nOn " "Thee " a "lone, " "my " Sa "viour " "God, "
  "\nMy " stead "fast " "hopes " de "pend; "
  "\nAnd " "to " "Thy " ho "ly " "will " "my " "soul "
  "\nSub" miss ive "ly " "would " "bend. "
  "\n\"Ev" "'ry " "day " "will " "I " "bless " "Thee! "
  "\nEv" "'ry " "day " "will " "I " "bless " "Thee! "
  "\nAnd " "I " "will " "praise, " "will " "praise " "Thy " "name "
  "\nfor " ev "er " "and " ev "er!\" "

  \set stanza = "4."
  "\nOh, " "grant " "Thy " Ho "ly " Spi "rit's " "grace, "
  "\nAnd " "aid " "my " fee "ble " "powers, "
  "\nThat " glad "ly " "I " "may " fol "low " "Thee "
  "\nThrough " "all " "my " fu "ture " "hours. "
  "\n\"Ev" "'ry " "day " "will " "I " "bless " "Thee! "
  "\nEv" "'ry " "day " "will " "I " "bless " "Thee! "
  "\nAnd " "I " "will " "praise, " "will " "praise " "Thy " "name "
  "\nfor " ev "er " "and " ev "er!\" "
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
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

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack }
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
