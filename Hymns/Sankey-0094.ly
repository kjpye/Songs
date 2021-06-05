\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Crown Him King!"
  subtitle    = "Sankey No. 94"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. C. Ward."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Ida A. Hushower."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1*3 s2
  \mark \markup { \box "B" } s2 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3
  \mark \markup { \box "D" } s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  g'4 d b' g
  d'8. cis16 d8. e16 d2
  c4 a b g
  a8. gis16 a8. b16 \bar "|" \break \partial 2 a4. r8
  g4 d b' g % B
  d'8. cis16 d8. e16 d2
  c4 b8. a16 g4 fis
  g2. \bar "|" \break \partial 4 b8.^\markup\smallCaps Chorus. c16
  d2 b4 g8. e'16 % C
  d2 b4. r8
  c8. 16 8. b16 a4 a \break
  b4 d d4. r8 % D
  d2 b4 g8. e'16
  d2 b4. r8
  c4 b8. a16 g4 fis
  g2. r4
}

alto = \relative {
  g'4 d b' g
  g8. 16 8. 16 2
  a4 fis g g
  fis8. dis16 fis8. g16 fis4. r8
  g4 d b' g % B
  g8. 16 8. 16 2
  a4 g8. e16 d4 d
  d2. g8. a16
  b2 g4 8. c16 % C
  b2 g4. r8
  a8. 16  8. g16 fis4 4
  g4 4 4. r8 % D
  b2 g4 8. c16
  b2 g4. r8
  e4 8. 16 d4 d
  d2. r4
}

tenor = \relative {
  g4 d b' g
  b8. ais16 b8. c16 b2
  d4 d d b
  d8. 16 8. 16 4. \partCombineApart r8 \partCombineApart
  g,4 d b' g % B
  b8. ais16 b8. c16 b2
  e4 d8. c16 b4 a
  b2. r4
  d4 d d b % C
  d4 d d b
  d8. 16 8. 16 4 4
  d4 b b4. \partCombineApart r8 \partCombineChords % D
  d4 4 4 b
  d4 4 4 b
  a4 gis8. a16 b4 c
  b2. r4
}

bass= \relative {
  \autoBeamOff
  g4 d b' g
  g8. 16 8. 16 2
  d4 d g g
  d8. 16 8. 16 4. \tuplet 3/2 {d16 e fis}
  g4 d b' g % B
  g8. 16 8. 16 2
  a,4 b8. c16 d4 d
  g,2. r4
  g'4 4 4 4 % C
  g4 g g, g
  d'8. 16 8. 16 4 4
  g4 g g4. \tuplet 3/2 {d16 e fis} % D
  g4 g g g
  g4 g g, g
  a4 b8. c16 d4 d
  g,2. r4
}

emptyVerse = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
}

chorusMen = \lyricmode {
  crown Him, crown Him,
  crown Him, crown Him;
  _ _ _ _ _ _ _ _ _
  Crown Him, crown Him,
  we will crown Him—
  _ _ _ _ _ _
}

chorus = \lyricmode {
  We will crown Him, we will crown Him;
  In the glo -- ry -- land we'll crown Him King!
  Crown Him, we will crown Him—
  Loud let His prais -- es ring!
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Crown Him, crown Him, Christ our Lord and King!
  Thro' all a -- ges Let His prais -- es ring!
  Glo -- ry, hon -- our to His name we'll bring
  Now and for ev -- er -- more.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Hail Him, hail Him, an -- gel -- hosts on high,
  To His throne with harps and songs draw nigh;
  Let all na -- tions join the joy -- ful cry:
  "\"Crown" Him, the King if "kings!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He is Vic -- tor, He has con -- quer'd sin,
  Let His Spi -- rit rule our hearts with -- in;
  In His name the vic -- t'ry we shall win:
  Crown Him for ev -- er -- more.
}
  
wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "Crown " "Him, " "crown " "Him, " "Christ " "our " "Lord " "and " "King! "
  "\nThro' " "all " a "ges " "Let " "His " prais "es " "ring! "
  "\nGlo" "ry, " hon "our " "to " "His " "name " "we'll " "bring "
  "\nNow " "and " "for " ev er "more. "
  "\nWe " "will " "crown " "Him, " "we " "will " "crown " "Him; "
  "\nIn " "the " glo ry "land " "we'll " "crown " "Him " "King! "
  "\nCrown " "Him, " "we " "will " "crown " "Him— "
  "\nLoud " "let " "His " prais "es " "ring! "

  \set stanza = "2."
  "\nHail " "Him, " "hail " "Him, " an gel "hosts " "on " "high, "
  "\nTo " "His " "throne " "with " "harps " "and " "songs " "draw " "nigh; "
  "\nLet " "all " na "tions " "join " "the " joy "ful " "cry: "
  "\n\"Crown " "Him, " "the " "King " "if " "kings!\" "
  "\nWe " "will " "crown " "Him, " "we " "will " "crown " "Him; "
  "\nIn " "the " glo ry "land " "we'll " "crown " "Him " "King! "
  "\nCrown " "Him, " "we " "will " "crown " "Him— "
  "\nLoud " "let " "His " prais "es " "ring! "

  \set stanza = "3."
  "\nHe " "is " Vic "tor, " "He " "has " con "quer'd " "sin, "
  "\nLet " "His " Spi "rit " "rule " "our " "hearts " with "in; "
  "\nIn " "His " "name " "the " vic "t'ry " "we " "shall " "win: "
  "\nCrown " "Him " "for " ev er "more. "
  "\nWe " "will " "crown " "Him, " "we " "will " "crown " "Him; "
  "\nIn " "the " glo ry "land " "we'll " "crown " "Him " "King! "
  "\nCrown " "Him, " "we " "will " "crown " "Him— "
  "\nLoud " "let " "His " prais "es " "ring! "
}
  
wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Crown " "Him, " "crown " "Him, " "Christ " "our " "Lord " "and " "King! "
  "\nThro' " "all " a "ges " "Let " "His " prais "es " "ring! "
  "\nGlo" "ry, " hon "our " "to " "His " "name " "we'll " "bring "
  "\nNow " "and " "for " ev er "more. "
  "\ncrown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "crown " "Him; "
  "\nIn " "the " glo ry "land " "we'll " "crown " "Him " "King! "
  "\nCrown " "Him, " "crown " "Him, "
  "\nwe " "will " "crown " "Him— "
  "\nLoud " "let " "His " prais "es " "ring! "

  \set stanza = "2."
  "\nHail " "Him, " "hail " "Him, " an gel "hosts " "on " "high, "
  "\nTo " "His " "throne " "with " "harps " "and " "songs " "draw " "nigh; "
  "\nLet " "all " na "tions " "join " "the " joy "ful " "cry: "
  "\n\"Crown " "Him, " "the " "King " "if " "kings!\" "
  "\ncrown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "crown " "Him; "
  "\nIn " "the " glo ry "land " "we'll " "crown " "Him " "King! "
  "\nCrown " "Him, " "crown " "Him, "
  "\nwe " "will " "crown " "Him— "
  "\nLoud " "let " "His " prais "es " "ring! "

  \set stanza = "3."
  "\nHe " "is " Vic "tor, " "He " "has " con "quer'd " "sin, "
  "\nLet " "His " Spi "rit " "rule " "our " "hearts " with "in; "
  "\nIn " "His " "name " "the " vic "t'ry " "we " "shall " "win: "
  "\nCrown " "Him " "for " ev er "more. "
  "\ncrown " "Him, " "crown " "Him, "
  "\ncrown " "Him, " "crown " "Him; "
  "\nIn " "the " glo ry "land " "we'll " "crown " "Him " "King! "
  "\nCrown " "Him, " "crown " "Him, "
  "\nwe " "will " "crown " "Him— "
  "\nLoud " "let " "His " prais "es " "ring! "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
%            \new Voice \TempoTrack
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
            \new NullVoice = alignerMen \tenor
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
            \new Lyrics \lyricsto alignerMen { \emptyVerse \chorusMen }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerMen { \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new Lyrics \lyricsto alignerMen { \emptyVerse \chorusMen
                                               \emptyVerse \chorusMen
                                               \emptyVerse \chorusMen
                                             }
          >>
        >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new NullVoice = alignerMen { \tenor \tenor \tenor }
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
            \new Lyrics \lyricsto alignerMen { \emptyVerse \chorusMen
                                               \emptyVerse \chorusMen
                                               \emptyVerse \chorusMen
                                             }
          >>
        >>
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
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidiWomen
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Teno staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Teno staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
            \addlyrics \wordsMidiMen
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
