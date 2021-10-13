\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Glory Gilds the Sacred Page."
  subtitle    = "Sankey No. 261"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Croft."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. Cowper."
  meter       = \markup\smallCaps "C.M."
  piece       = \markup\smallCaps "London New."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
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
  ees'4
  bes' g ees' bes
  c4 ees d bes
  ees4 g, bes f
  ees2. \bar "|" \break bes'4
  ees4 c d bes % B
  c4 4 bes g
  bes4 ees g, f
  ees2.
}

alto = \relative {
  \autoBeamOff
  bes4
  bes4 ees ees ees
  ees4 g f ees
  g4 ees ees d
  ees2. 4
  ees4 f f d % B
  g4 f8[ees] d4 ees
  f4 ees ees d
  ees2.
}

tenor = \relative {
  \autoBeamOff
  g4
  f4 g ees g
  aes4 bes bes g
  g4 4 8[f] bes[aes]
  g2. 4
  g4 a a bes % B
  bes4 a bes bes
  bes4 g8[aes] bes4 aes8[bes]
  g2.
}

bass = \relative {
  \autoBeamOff
  ees4
  d4 ees c ees
  aes4 ees bes ees
  c4 4 bes bes
  ees2. 4
  c4 f d g % B
  ees4 f bes, ees
  d4 c bes bes
  ees2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  A Glo -- ry gilds the sac -- red page,
  Ma -- jes -- tic, like the sun:
  It gives a light to ev -- ery age;
  It gives, but bor -- rows none.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  The hand that gave it still sup -- plies
  The gra -- cious light and heat;
  Its truths up -- on the nat -- ions rise;
  They rise, but ne -- ver set.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Let ev -- er -- last -- ing thanks be Thine
  For such a bright dis -- play,
  As makes a world of dark -- ness shine
  With beams of heaven -- ly day.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  My soul re -- joic -- es to pur -- sue
  The steps of Him I love,
  Till glo -- ry breaks up -- on my view
  In bright -- er worlds a -- bove!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A " Glo "ry " "gilds " "the " sac "red " "page, "
  "\nMa" jes "tic, " "like " "the " "sun: "
  "\nIt " "gives " "a " "light " "to " ev "ery " "age; "
  "\nIt " "gives, " "but " bor "rows " "none. "

  \set stanza = "2."
  "\nThe " "hand " "that " "gave " "it " "still " sup "plies "
  "\nThe " gra "cious " "light " "and " "heat; "
  "\nIts " "truths " up "on " "the " nat "ions " "rise; "
  "\nThey " "rise, " "but " ne "ver " "set. "

  \set stanza = "3."
  "\nLet " ev er last "ing " "thanks " "be " "Thine "
  "\nFor " "such " "a " "bright " dis "play, "
  "\nAs " "makes " "a " "world " "of " dark "ness " "shine "
  "\nWith " "beams " "of " heaven "ly " "day. "

  \set stanza = "4."
  "\nMy " "soul " re joic "es " "to " pur "sue "
  "\nThe " "steps " "of " "Him " "I " "love, "
  "\nTill " glo "ry " "breaks " up "on " "my " "view "
  "\nIn " bright "er " "worlds " a "bove! "
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
