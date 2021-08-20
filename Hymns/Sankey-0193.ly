\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Spirit Divine!"
  subtitle    = "Sankey No. 192"
  subsubtitle = "Sankey 880 No. 542"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss"
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 2/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*5
  \mark \markup { \box "B" } s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''2 b4. 8
  c1
  a2 gis4. 8
  a2. g4
  f4.(e8 f4) g
  a4 d c bes % B
  a2 g4. f8
  f1
}

alto = \relative {
  \autoBeamOff
  a'2 gis4. 8
  a1
  f2 4. 8
  f2. e4
  f4(c2) e4
  f4 4 4 g % B
  f2 e4. f8
  f1
}

tenor = \relative {
  \autoBeamOff
  c'2 d4. 8
  c1
  c2 b4. 8
  c2. 4
  c2. 4
  c4 bes a d % B
  c2 bes4. a8
  a1
}

bass = \relative {
  \autoBeamOff
  f2 4. 8
  f1
  f2 4. 8
  f2. c4
  a2. c4
  f4 4 4 bes, % B
  c2 4. f8
  f1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Spi -- rit Di -- vine,
  Spi -- rit Di -- vine—
  Be Thou __ the Day -- star on my dark -- ness to shine!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Spi -- rit of Truth,
  Spi -- rit of Truth—
  Be Thou __ the Teach -- er and the Guide of my youth!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Spi -- rit of Love,
  Spi -- rit of Love—
  Be Thou __ the Lead -- er to my man -- sion a -- bove!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Spi -- rit of Power,
  Spi -- rit of Power—
  Be Thou __ the prais -- es of my song ev -- er -- more!
  A -- men.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Spi" "rit " Di "vine, "
  "\nSpi" "rit " Di "vine— "
  "\nBe " "Thou "  "the " Day "star " "on " "my " dark "ness " "to " "shine! "

  \set stanza = "2."
  "\nSpi" "rit " "of " "Truth, "
  "\nSpi" "rit " "of " "Truth— "
  "\nBe " "Thou "  "the " Teach "er " "and " "the " "Guide " "of " "my " "youth! "

  \set stanza = "3."
  "\nSpi" "rit " "of " "Love, "
  "\nSpi" "rit " "of " "Love— "
  "\nBe " "Thou "  "the " Lead "er " "to " "my " man "sion " a "bove! "

  \set stanza = "4."
  "\nSpi" "rit " "of " "Power, "
  "\nSpi" "rit " "of " "Power— "
  "\nBe " "Thou "  "the " prais "es " "of " "my " "song " ev er "more! "
  "\nA" "men. "
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
            \new NullVoice = "aligner" {\soprano c1 c1}
            \new Voice = "women" \partCombine { \global \soprano \bar ":|." f'1 f'1\bar "|." } { \global \alto d'1 c'1 }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor f1 a1} { \global \bass bes,1 f,1}
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
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano c1 c1}
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "||" f'1 f'1 \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto d'1 c'1}
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor f1 a1}
                                            { \global \bass \bass \bass \bass bes,1 f,1}
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
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano c1 c1}
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "||" f'1 f'1 \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto d'1 c'1}
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor f1 a1}
                                            { \global \bass \bass \bass \bass bes,1 f,1}
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
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "||" f'1 f'1 \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto d'1 c'1}
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor f1 a1}
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass bes,1 f,1}
          >>
        >>
    \midi {}
  }
}
