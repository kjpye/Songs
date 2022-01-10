\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "To-day the Saviour Calls."
  subtitle    = "Sankey No. 349"
  subsubtitle = "Sankey 880 No. 71"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. L. Mason."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Dr. T. hastings."
  meter       = \markup\smallCaps "6.4."
  piece       = \markup\smallCaps "Nain."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 2/2
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2 s1*3 s2
  \mark \markup { \box "B" } s2 s1*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''2
  c4 a a f
  g1
  c2 d4 b
  c2 \bar "|" \break 2
  c4 a a c % B
  d1
  g,2 a4 g
  f2
}

alto = \relative {
  \autoBeamOff
  f'2
  f4 4 4 4
  e1
  e2 f4 d
  e2 f
  f4 4 4 4 % B
  f1
  e2 f4 e
  f2
}

tenor = \relative {
  \autoBeamOff
  a2
  a4 c c c
  c1
  g2 a4 g
  g2 a
  a4 c c c % B
  bes1
  g2 c4 bes
  a2
}

bass = \relative {
  \autoBeamOff
  f2
  f4 4 4 a,
  c1
  c2 f4 g
  c,2 f
  f4 4 4 a, % B
  bes1
  c2 4 4
  f2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  To -- day the Sa -- viour calls:
  Ye wan -- d'rers, come;
  O ye be -- night -- ed souls,
  Why long -- er roam?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  To -- day the Sa -- viour calls;
  Oh, list -- en now!
  With -- in these sac -- red walls
  To Je -- sus bow.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  To -- day the Sa -- viour calls;
  For ref -- uge fly;
  The storm of jus -- tice falls,
  And death is nigh.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The Spi -- rit calls to -- day:
  Yield to His power;
  Oh, grieve Him not a -- way!
  'Tis mer -- cy's hour.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "To" "day " "the " Sa "viour " "calls: "
  "\nYe " wan "d'rers, " "come; "
  "\nO " "ye " be night "ed " "souls, "
  "\nWhy " long "er " "roam? "

  \set stanza = "2."
  "\nTo" "day " "the " Sa "viour " "calls; "
  "\nOh, " list "en " "now! "
  "\nWith" "in " "these " sac "red " "walls "
  "\nTo " Je "sus " "bow. "

  \set stanza = "3."
  "\nTo" "day " "the " Sa "viour " "calls; "
  "\nFor " ref "uge " "fly; "
  "\nThe " "storm " "of " jus "tice " "falls, "
  "\nAnd " "death " "is " "nigh. "

  \set stanza = "4."
  "\nThe " Spi "rit " "calls " to "day: "
  "\nYield " "to " "His " "power; "
  "\nOh, " "grieve " "Him " "not " a "way! "
  "\n'Tis " mer "cy's " "hour. "
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
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
