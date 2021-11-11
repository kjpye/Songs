\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Now the Day is Over"
  subtitle    = "Sankey No. 296 (First tune)"
  subsubtitle = "Sankey 880 No. 594"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "S. Baring-Gould."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. Baring-Gould."
  meter       = \markup\smallCaps "6.5.6.5."
  piece       = \markup\smallCaps "Eudoxia."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 c des des
  ees2 c
  des4 4 c c
  bes2 r
  c4 4 bes aes % B
  des2 c
  c4 4 bes bes
  aes1
}

alto = \relative {
  \autoBeamOff
  ees'4 ees f aes
  g2 ees
  f4 4 ees ees
  ees2 r
  ees4 4 4 c % B
  f2 ees
  f4 ees f ees8[des]
  c1
}

tenor = \relative {
  \autoBeamOff
  aes4 4 4 4
  bes2 c
  aes4 4 4 4
  g2 r
  g4 4 4 aes % B
  aes2 2
  aes4 4 4 g
  aes1
}

bass = \relative {
  \autoBeamOff
  aes4 4 f f
  ees2 aes
  des,4 4 aes' aes,
  ees'2 r
  c4 4 ees f % B
  des2 aes'
  f4 c des ees
  aes,1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Now the day is o -- ver,
  Night is draw -- ing nigh,
  Sha -- dows of the ev -- 'ning
  Steal a -- cross the sky.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Je -- sus, give the wea -- ry
  Calm and sweet re -- pose;
  With Thy ten -- d'rest bless -- ing
  May our eye -- lids close.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thro' the long night- -- watch -- es
  May Thine an -- gels spread
  Their white wings a -- bove us,
  Watch -- ing round each bed.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When the morn -- ing wa -- kens
  Then may I a -- rise
  Pure, and fresh, and sin -- less,
  In Thy ho -- ly eyes.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Glo -- ry to the Fa -- ther,
  Glo -- ry to the Son,
  And to Thee, blest Spi -- rit,
  Whilst all a -- ges run.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Now " "the " "day " "is " o "ver, "
  "\nNight " "is " draw "ing " "nigh, "
  "\nSha" "dows " "of " "the " ev "'ning "
  "\nSteal " a "cross " "the " "sky. "

  \set stanza = "2."
  "\nJe" "sus, " "give " "the " wea "ry "
  "\nCalm " "and " "sweet " re "pose; "
  "\nWith " "Thy " ten "d'rest " bless "ing "
  "\nMay " "our " eye "lids " "close. "

  \set stanza = "3."
  "\nThro' " "the " "long " night- watch "es "
  "\nMay " "Thine " an "gels " "spread "
  "\nTheir " "white " "wings " a "bove " "us, "
  "\nWatch" "ing " "round " "each " "bed. "

  \set stanza = "4."
  "\nWhen " "the " morn "ing " wa "kens "
  "\nThen " "may " "I " a "rise "
  "\nPure, " "and " "fresh, " "and " sin "less, "
  "\nIn " "Thy " ho "ly " "eyes. "

  \set stanza = "5."
  "\nGlo" "ry " "to " "the " Fa "ther, "
  "\nGlo" "ry " "to " "the " "Son, "
  "\nAnd " "to " "Thee, " "blest " Spi "rit, "
  "\nWhilst " "all " a "ges " "run. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFive  \chorus
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
                                              \wordsFive  \chorus
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
