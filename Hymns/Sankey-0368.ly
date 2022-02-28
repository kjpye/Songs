\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "We never grow Weary of Telling"
  subtitle    = "Sankey No. 368"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Grace J. Frances."
  meter       = \markup\smallCaps "9.8."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8
  ees8. f16 g8 aes bes aes
  aes4. g4 f8
  ees8. f16 ees8 aes bes c
  bes4.~4 \bar "|" \break ees8
  c8. bes16 aes8 8 g f % B
  bes4. ees,4 f8
  g8 c bes aes8. g16 f8
  ees4.~4 \bar "||" \break ees8^\markup\smallCaps Chorus.
  ees8 g aes des8. c16 bes8 % C
  c4. aes4 c8
  c8. bes16 aes8 f g aes
  bes4.~4 \bar "|" \break ees,8
  ees8 f g aes bes c % D
  ees4. des4 f,8
  ees8 aes c bes f g
  aes4.~4
}

alto = \relative {
  \autoBeamOff
  c'8
  c8. 16 8 8 8 ees
  des4. 4 8
  des8. 16 8 c des ees
  ees4.~4 8
  ees8. c16 8 d d d % B
  ees4. 4 8
  ees8 8 8 d8. 16 8
  ees4.~4 8
  ees8 8 g g8. 16 ees8 % C
  ees4. 4 c8
  c8. 16 8 d d d
  ees4.~4 des8
  c8 8 e f ges ges % D
  f4. 4 des8
  c8 ees ees des des des
  c4.~4
}

tenor = \relative {
  \autoBeamOff
  aes8
  aes8. 16 8 8 8 8
  bes4. 4 aes8
  bes8. 16 8 aes8 8 8
  g4.~4 bes8
  aes8. 16 8 bes8 8 8 % B
  bes4. g4 c8
  bes8 g g c8. bes16 aes8
  g4.~4 8
  g8 bes des f8. ees16 des8 % C
  c4. 4 aes8
  aes8. 16 8 8 g f
  g4.~4 bes8
  aes8 8 c c c ees % D
  aes,4. 4 8
  aes8 c aes g bes ees,
  ees4.~4
}

bass = \relative {
  \autoBeamOff
  aes,8
  aes8. 16 8 8 8 c
  ees4. 4 f8
  g8. 16 8 aes aes aes,
  ees'4.~4 g8
  aes8. 16 f8 bes,8 8 aes % B
  g4. c4 aes8
  bes8 8 8 8. 16 8
  ees4.~4 8
  ees8 8 8 8. 16 8 % C
  aes4. 4 8
  f8. 16 8 bes,8 8 8
  ees4.~4 g8
  aes8 8 g f ees aes, % D
  des4. 4 8
  ees8 8 8 8 8 8
  aes,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, won -- der -- ful gift of the Gos -- pel,
  That each in our hearts may re -- ceive!
  It of -- fers to all free sal -- va -- tion,
  And hap -- py are they that be -- lieve.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  We nev -- er gro wea -- ry of tell -- ing
  The sto -- ry of Je -- sus our King;
  Who left the bright throne of His glo -- ry,
  And came with great trea -- sures to bring.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  We nev -- er gro wea -- ry of tell -- ing
  His love to the poor and op -- pressed;
  And still He is ten -- der -- ly call -- ing,
  "\"Come" hi -- ther, ye wea -- ry and "rest!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  We nev -- er gro wea -- ry of tell -- ing
  Of yon -- der bright man -- sions a -- bove;
  Where we shall be -- hold our Re -- deem -- er,
  And dwell in the smile of His love.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "We " nev "er " "gro " wea "ry " "of " tell "ing "
  "\nThe " sto "ry " "of " Je "sus " "our " "King; "
  "\nWho " "left " "the " "bright " "throne " "of " "His " glo "ry, "
  "\nAnd " "came " "with " "great " trea "sures " "to " "bring. "
  "\nOh, " won der "ful " "gift " "of " "the " Gos "pel, "
  "\nThat " "each " "in " "our " "hearts " "may " re "ceive! "
  "\nIt " of "fers " "to " "all " "free " sal va "tion, "
  "\nAnd " hap "py " "are " "they " "that " be "lieve. "

  \set stanza = "2."
  "\nWe " nev "er " "gro " wea "ry " "of " tell "ing "
  "\nHis " "love " "to " "the " "poor " "and " op "pressed; "
  "\nAnd " "still " "He " "is " ten der "ly " call "ing, "
  "\n\"Come " hi "ther, " "ye " wea "ry " "and " "rest!\" "
  "\nOh, " won der "ful " "gift " "of " "the " Gos "pel, "
  "\nThat " "each " "in " "our " "hearts " "may " re "ceive! "
  "\nIt " of "fers " "to " "all " "free " sal va "tion, "
  "\nAnd " hap "py " "are " "they " "that " be "lieve. "

  \set stanza = "3."
  "\nWe " nev "er " "gro " wea "ry " "of " tell "ing "
  "\nOf " yon "der " "bright " man "sions " a "bove; "
  "\nWhere " "we " "shall " be "hold " "our " Re deem "er, "
  "\nAnd " "dwell " "in " "the " "smile " "of " "His " "love. "
  "\nOh, " won der "ful " "gift " "of " "the " Gos "pel, "
  "\nThat " "each " "in " "our " "hearts " "may " re "ceive! "
  "\nIt " of "fers " "to " "all " "free " sal va "tion, "
  "\nAnd " hap "py " "are " "they " "that " be "lieve. "
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
      \pointAndClickOff
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
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
