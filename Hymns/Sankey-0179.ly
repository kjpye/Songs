\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Surely I Come Quickly."
  subtitle    = "Sankey No. 179"
  subsubtitle = "C.C. No. 260"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "F. M. Lamb."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. S. McKenzie, D. D."
  meter       = \markup\smallCaps "8.7.d."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key des \major
  \time 2/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2*3 s4.
  \mark \markup { \box "B" } s8 s2*3 s4.
  \mark \markup { \box "C" } s8 s2*3 s4.
  \mark \markup { \box "D" } s8 s2*3 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s8
  s2*13
  s8 \tempo 4=40 s4 \tempo 4=120 s8
  s2
  s4.
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  aes'16 16
  aes8 ges ees c
  des8 f4 aes16 16
  aes8 ges ees f
  des4. \bar "|" \break aes'16 16
  bes8 8 8 8 % B
  aes8 4 16 16
  bes8 aes8 8. ges16
  f4. \bar "|" \break aes16 16
  des8 8 8 ees % C
  f8 des4 16 16
  des8 8 c bes
  aes4. \bar "|" \break f16 ges
  aes8 f ees des % D
  ges8 4\fermata f16 ees
  f8 des ees8. des16
  des4.
}

alto = \relative {
  \autoBeamOff
  des'16 16
  c8 8 8 aes
  aes8 des4 16 16
  c8 8 8 8
  aes4. f'16 16
  ges8 8 8 8 % B
  ges8 4 16 16
  ees8 8 8. 16
  des4. f16 16
  f8 8 8 ges % C
  aes8 f4 16 16
  bes8 8 aes ges
  f4. des16 16
  des8 8 8 8 % D
  des8 4\fermata 16 16
  des8 8 c8. des16
  des4.
}

tenor = \relative {
  \autoBeamOff
  f16 16
  aes8 8 8 ees
  f8 aes4 f16 16
  aes8 8 ges aes
  f4. des'16 16
  des8 8 8 8 % B
  ees8 4 16 16
  c8 8 8. aes16
  aes4. des16 16
  des8 8 8 8 % C
  des8 4 16 16
  des8 8 8 8
  des4. aes16 ges
  f8 aes ces ces % D
  bes8 4\fermata 16 16
  aes8 f ges8. f16
  f4.
}

bass = \relative {
  \autoBeamOff
  des16 16
  aes8 8 8 8
  des8 4 16 16
  aes8 8 8 8
  des4. 16 16
  ges8 8 8 8 % B
  ees8 4 16 16
  aes,8 8 8. 16
  des4. 16 16
  des8 8 8 8 % C
  des8 4 16 16
  ges8 8 8 8
  des4. 16 16
  des8 8 8 8 % D
  ges,8 4\fermata 16 16
  aes8 8 8. des16
  des4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  In the crim -- son blush of morn -- ing,
  In the glit -- ter of the noon,
  In the mid -- night's gloom -- y dark -- ness,
  Or the gleam -- ing of the moon,
  In the still -- ness of the twi -- light,
  As it shim -- mers in the sky,
  We are watch -- ing, we are wait -- ing,
  For the end that draw -- eth nigh.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  We shall see our Lord in splen -- dour,
  And a -- mid a count -- less throng,
  On the clouds to earth de -- scend -- ing,
  With a move -- men swift and strong;
  And the an -- gels round a -- bout Him,
  In their daz -- zling white ar -- ray,
  While be -- fore Him sounds the sum -- mons
  For the fin -- al Judg -- ment day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He will wel -- come all His peo -- ple,
  He will di -- a -- dem His own;
  He will show to them His glo -- ry,
  And will share with them His throne;
  And for ev -- er in His pre -- sence
  They shall see Him face to face,
  While they chant His match -- less wis -- dom,
  And ex -- tol His won -- drous grace.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  He is com -- ing, sure -- ly com -- ing,
  For His pro -- mise can -- not fail;
  And the scof -- fers shall be -- hold Him,
  And be -- fore Him they shall quail!
  He is com -- ing, quick -- ly com -- ing;
  But His com -- ing we shall greet:
  We have wait -- ed for His ad -- vent,
  And have lis -- tened for His feet.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "the " crim "son " "blush " "of " morn "ing, "
  "\nIn " "the " glit "ter " "of " "the " "noon, "
  "\nIn " "the " mid "night's " gloom "y " dark "ness, "
  "\nOr " "the " gleam "ing " "of " "the " "moon, "
  "\nIn " "the " still "ness " "of " "the " twi "light, "
  "\nAs " "it " shim "mers " "in " "the " "sky, "
  "\nWe " "are " watch "ing, " "we " "are " wait "ing, "
  "\nFor " "the " "end " "that " draw "eth " "nigh. "

  \set stanza = "2."
  "\nWe " "shall " "see " "our " "Lord " "in " splen "dour, "
  "\nAnd " a "mid " "a " count "less " "throng, "
  "\nOn " "the " "clouds " "to " "earth " de scend "ing, "
  "\nWith " "a " move "men " "swift " "and " "strong; "
  "\nAnd " "the " an "gels " "round " a "bout " "Him, "
  "\nIn " "their " daz "zling " "white " ar "ray, "
  "\nWhile " be "fore " "Him " "sounds " "the " sum "mons "
  "\nFor " "the " fin "al " Judg "ment " "day. "

  \set stanza = "3."
  "\nHe " "will " wel "come " "all " "His " peo "ple, "
  "\nHe " "will " di a "dem " "His " "own; "
  "\nHe " "will " "show " "to " "them " "His " glo "ry, "
  "\nAnd " "will " "share " "with " "them " "His " "throne; "
  "\nAnd " "for " ev "er " "in " "His " pre "sence "
  "\nThey " "shall " "see " "Him " "face " "to " "face, "
  "\nWhile " "they " "chant " "His " match "less " wis "dom, "
  "\nAnd " ex "tol " "His " won "drous " "grace. "

  \set stanza = "4."
  "\nHe " "is " com "ing, " sure "ly " com "ing, "
  "\nFor " "His " pro "mise " can "not " "fail; "
  "\nAnd " "the " scof "fers " "shall " be "hold " "Him, "
  "\nAnd " be "fore " "Him " "they " "shall " "quail! "
  "\nHe " "is " com "ing, " quick "ly " com "ing; "
  "\nBut " "His " com "ing " "we " "shall " "greet: "
  "\nWe " "have " wait "ed " "for " "His " ad "vent, "
  "\nAnd " "have " lis "tened " "for " "His " "feet. "
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
