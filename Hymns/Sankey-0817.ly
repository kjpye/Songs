\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Seeking the Lost."
  subtitle    = "Sankey No. 817"
  subsubtitle = "C. C. No. 192"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. A. Ogden."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 9/8
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4.*7
  \textMark \markup { \box \bold "B" } s4.*9
  \textMark \markup { \box \bold "C" } s4.*8
  \textMark \markup { \box \bold "D" } s4.*9
  \textMark \markup { \box \bold "E" } s4.*8
  \textMark \markup { \box \bold "F" } s4.*8
  \textMark \markup { \box \bold "G" } s4.*7
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \time 9/8 \partial 4.
  f'8 e f | bes4. 4. d8 c bes | g4. g bes8 a g |
  \tag #'dash    {f4.  f \slurDashed bes8(c) \slurSolid d |}
  \tag #'v3      {f,4. f             bes8(c)            d |}
  \tag #'(v1 v2) {f,4. f             bes8 c             d |}
  c4.~4 r8 c b c | ees4. 4. d8 cis d |
  f4. d bes8 a g | f4. d' c8 bes c | bes4.~4 r8
  \section \sectionLabel \markup\smallCaps Chorus. \break \time 12/8 \partial 4.
  r4. | r g8 8 8 4 r8 r4. | r4 f8 4 8 4 8 r4. |
  r4. f8 8 8 4 8 4 8 | 4. 4 8 4 r8 r4. |
  r4. g8 8 8 4 r8 r4. | r4 f8 4 8 4 8 r4. |
  r4. | f8 8 8 4 8 c[d] ees | d4 8 ees4 8 d4.\fermata 
}

alto = \relative {
  \autoBeamOff
  d'8 cis d | 4. 4. f8 8 8 | ees4. 4. g8 f ees |
  \tag #'dash    {d4. d \slurDashed f8(8) \slurSolid f8 |}
  \tag #'v3      {d4. d             f4               f8 |}
  \tag #'(v1 v2) {d4. d             f8 8             f8 |}
  f4.~4 r8 8 8 8 | 4. 4. 8 e f |
  f4. f g8 f ees | d4. f ees8 d ees | d4.~4 r8 \section
  r4. | r ees8 8 8 4 r8 r4. | r4 d8 4 8 4 8 r4. |
  r4. ees8 8 8 4 8 c[bes] a | bes4. 4 8 4 r8 r4. |
  r4. ees8 8 8 4 r8 r4. | r4 d8 4 8 4 8 r4. |
  r4. c8 8 8 4 8 c[bes] a8 | bes4 8 4 8 4.\fermata
}

tenor = \relative {
  \autoBeamOff
  bes8 8 8 | f4. f bes8 a bes | 4. 4. 8 8 8 |
  \tag #'dash    {bes4. 4. \slurDashed f8(8) \slurSolid 8 |}
  \tag #'v3      {bes4. 4.             f4               8 |}
  \tag #'(v1 v2) {bes4. 4.             f8 8             8 |}
  f4.~4 r8 8 8 8 | 4. 4. 8 e f |
  f4. f g8 f ees | d4. f ees8 d ees | d4.~4 r8 \section
  r4. | r ees'8 8 8 4 r8 r4. | r4 d8 4 8 4 8 r4. |
  r4. ees8 8 8 4 8 c[bes] a | bes4. 4 8 4 r8 r4. |
  r4. ees8 8 8 4 r8 r4. | r4 d8 4 8 4 8 r4. |
  r4. a8 8 8 4 f8 4 8 | 4 8 g4 8 f4.
}

bass = \relative {
  \autoBeamOff
  bes,8 8 8 | 4. 4. 8 c d | ees4. 4. 8 8 8 |
  \tag #'dash    {bes4. 4. \slurDashed d8(c) \slurSolid bes |}
  \tag #'v3      {bes4. 4.             d8(c)            bes |}
  \tag #'(v1 v2) {bes4. 4.             d8 c             bes |}
  f'4.~4 r8 8 8 8 | 4. 4. bes,8 8 8 |
  bes4. 4. ees8 8 8 | f4. 4. 8 8 8 | bes,4.~4 r8 \section
  \apart bes8 c d | ees4.~4.~4 8 8[f] g | bes4. bes,~4 r8 d c bes |
  f'4.~4.~8[g] f ees[d] c | d4.~4.~4 r8 bes c d |
  ees4.~4.~4 8 8[f] g | bes4. bes,~4 r8 d c bes |
  f'4.~4.~8[g] f ees[d] c | bes4.~4.~4.\fermata \auto
}

chorus = \lyricmode {
  Go -- ing a -- far up -- on the moun -- tain,
  Bring -- ing the wan -- d'rer back a -- gain,
  back a -- gain
  In -- to the fold
  Of our re -- deem -- er.
  Je -- sus, the Lamb for sin -- ners slain,
  for sin -- ners slain.
}

chorusMen = \lyricmode {
  \repeat unfold 37 ""
  Go -- ing a -- far __ up -- on the moun -- tain, __
  Bring -- ing the wan -- d'rer back a -- gain __
  In -- to the fold __ of our Re -- deem -- er, __
  Je -- sus, the Lamb __ for sin -- ners slain. __
}

chorusMenSingle = \lyricmode {
  \repeat unfold 38 ""
  Go -- ing a -- far __ up -- on the moun -- tain, __
  Bring -- ing the wan -- d'rer back a -- gain __
  In -- to the fold __ of our Re -- deem -- er, __
  Je -- sus, the Lamb __ for sin -- ners slain. __
  \repeat unfold 38 ""
  Go -- ing a -- far __ up -- on the moun -- tain, __
  Bring -- ing the wan -- d'rer back a -- gain __
  In -- to the fold __ of our Re -- deem -- er, __
  Je -- sus, the Lamb __ for sin -- ners slain. __
  \repeat unfold 37 ""
  Go -- ing a -- far __ up -- on the moun -- tain, __
  Bring -- ing the wan -- d'rer back a -- gain __
  In -- to the fold __ of our Re -- deem -- er, __
  Je -- sus, the Lamb __ for sin -- ners slain. __
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Seek -- ing the lost, yes, kind -- ly en -- treat -- ing
  Wan -- der -- ers on the \nom moun -- tain \yesm a -- stray;
  “Come un -- to Me,” His mes -- sage re -- peat -- ing,
  Words of the Mas -- ter speak -- ing to day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Seek -- ing the lost, and point -- ing to Je -- sus
  Souls that are weak, and \nom hearts that \yesm are sore;
  Lead -- ing them forth in ways of sal -- va -- tion,
  Show -- ing the path to life ev -- er -- more.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thus would we go on mis -- sions of mer -- cy,
  Fol -- low -- ing Christ from day to day;
  Cheer -- ing the faint, and rais -- ing the fal -- len,
  Point -- ing the lost to Je -- sus the Way.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Seek" "ing " "the " "lost, " "yes, " kind "ly " en treat "ing "
  "\nWan" der "ers " "on " "the " \nom moun "tain " \yesm a "stray; "
  "\n“Come " un "to " "Me,” " "His " mes "sage " re peat "ing, "
  "\nWords " "of " "the " Mas "ter " speak "ing " "to " "day. "
  "\nGo" "ing " a "far " up "on " "the " moun "tain, "
  "\nBring" "ing " "the " wan "d'rer " "back " a "gain, "
  "\nback " a "gain "
  "\nIn" "to " "the " "fold "
  "\nOf " "our " re deem "er. "
  "\nJe" "sus, " "the " "Lamb " "for " sin "ners " "slain, "
  "\nfor " sin "ners " "slain.\n"

  \set stanza = "2."
  "\nSeek" "ing " "the " "lost, " "and " point "ing " "to " Je "sus "
  "\nSouls " "that " "are " "weak, " "and " \nom "hearts " "that " \yesm "are " "sore; "
  "\nLead" "ing " "them " "forth " "in " "ways " "of " sal va "tion, "
  "\nShow" "ing " "the " "path " "to " "life " ev er "more. "
  "\nGo" "ing " a "far " up "on " "the " moun "tain, "
  "\nBring" "ing " "the " wan "d'rer " "back " a "gain, "
  "\nback " a "gain "
  "\nIn" "to " "the " "fold "
  "\nOf " "our " re deem "er. "
  "\nJe" "sus, " "the " "Lamb " "for " sin "ners " "slain, "
  "\nfor " sin "ners " "slain.\n"

  \set stanza = "3."
  "\nThus " "would " "we " "go " "on " mis "sions " "of " mer "cy, "
  "\nFol" low "ing " "Christ " "from " "day " "to " "day; "
  "\nCheer" "ing " "the " "faint, " "and " rais "ing " "the " fal "len, "
  "\nPoint" "ing " "the " "lost " "to " Je "sus " "the " "Way. "
  "\nGo" "ing " a "far " up "on " "the " moun "tain, "
  "\nBring" "ing " "the " wan "d'rer " "back " a "gain, "
  "\nback " a "gain "
  "\nIn" "to " "the " "fold "
  "\nOf " "our " re deem "er. "
  "\nJe" "sus, " "the " "Lamb " "for " sin "ners " "slain, "
  "\nfor " sin "ners " "slain. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Seek" "ing " "the " "lost, " "yes, " kind "ly " en treat "ing "
  "\nWan" der "ers " "on " "the " \nom moun "tain " \yesm a "stray; "
  "\n“Come " un "to " "Me,” " "His " mes "sage " re peat "ing, "
  "\nWords " "of " "the " Mas "ter " speak "ing " "to " "day. "
  "\nGo" "ing " a "far "  up "on " "the " moun "tain, " 
  "\nBring" "ing " "the " wan "d'rer " "back " a "gain " 
  "\nIn" "to " "the " "fold "  "of " "our " Re deem "er, " 
  "\nJe" "sus, " "the " "Lamb "  "for " sin "ners " "slain.\n" 

  \set stanza = "2."
  "\nSeek" "ing " "the " "lost, " "and " point "ing " "to " Je "sus "
  "\nSouls " "that " "are " "weak, " "and " \nom "hearts " "that " \yesm "are " "sore; "
  "\nLead" "ing " "them " "forth " "in " "ways " "of " sal va "tion, "
  "\nShow" "ing " "the " "path " "to " "life " ev er "more. "
  "\nGo" "ing " a "far "  up "on " "the " moun "tain, " 
  "\nBring" "ing " "the " wan "d'rer " "back " a "gain " 
  "\nIn" "to " "the " "fold "  "of " "our " Re deem "er, " 
  "\nJe" "sus, " "the " "Lamb "  "for " sin "ners " "slain.\n" 

  \set stanza = "3."
  "\nThus " "would " "we " "go " "on " mis "sions " "of " mer "cy, "
  "\nFol" low "ing " "Christ " "from " "day " "to " "day; "
  "\nCheer" "ing " "the " "faint, " "and " rais "ing " "the " fal "len, "
  "\nPoint" "ing " "the " "lost " "to " Je "sus " "the " "Way. "
  "\nGo" "ing " a "far "  up "on " "the " moun "tain, " 
  "\nBring" "ing " "the " wan "d'rer " "back " a "gain " 
  "\nIn" "to " "the " "fold "  "of " "our " Re deem "er, " 
  "\nJe" "sus, " "the " "Lamb "  "for " sin "ners " "slain. " 
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
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                       }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                       }
            \addlyrics \wordsMidiMen
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \bass }
            \addlyrics \chorusMen
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
            }
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \soprano
                                                 \keepWithTag #'v2 \soprano
                                                 \keepWithTag #'v3 \soprano
                                                 \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \tenor
                                                 \keepWithTag #'v2 \tenor
                                                 \keepWithTag #'v3 \tenor
                                               }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
            }
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
            }
            \addlyrics \chorusMenSingle
          >>
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
