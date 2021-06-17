\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Sweeetest Name"
  subtitle    = "Sankey No. 108"
  subsubtitle = "Sankey 880 No. 538"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. B. Bradbury."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. Roberts,"
  meter       = "C.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  d'4
  g8 g b4 g
  e8 e g4 e
  d8 g b4 g
  b4 a \bar "|" \break \partial 4
  d,4 % B
  g8 8 b4 g
  e8 e g4 e
  d8 g b4 g
  a4 g \bar "|" \break \partial 4
  d'4^\markup\smallCaps Refrain. % C
  e8 8 4 4
  d8 b d4 d
  e8 e d4 b
  b4 a \bar "|" \break \partial 4
  d,4 % B
  g8 8 b4 g
  e8 e g4 e
  d8 g b4 g
  a4 g
}

alto = \relative {
  d'4 b8 b d4 d
  c8 c e4 c
  d8 8 4 4
  d4 fis
  d4 % B
  b8 b d4 d
  c8 c e4 c
  d8 8 4 4
  c4 b
  g'4 % C
  g8 8 4 4
  g8 8 4 4
  g8 8 4 4
  g4 fis
  d4 % B
  b8 b d4 d
  c8 c e4 c
  d8 8 4 4
  c4 b
}

tenor = \relative {
  d4
  g8 8 4 4
  g8 8 4 4
  g8 8 4 4
  g4 fis
  d4 % B
  g8 8 4 4
  g8 8 4 4
  g8 8 4 4
  fis4 g
  b % C
  c8 8 4 4
  b8 g b4 4
  c8 8 b4 d
  d4 d
  d,4 % B
  g8 8 4 4
  g8 8 4 4
  g8 8 4 4
  fis4 g
 }

bass= \relative {
  d4 g8 8 4 b,
  c8 8 4 4
  b8 8 g4 b
  d4 4
  d4 % B
  g8 8 4 b,
  c8 8 4 4
  b8 8 g4 b
  d4 g,
  g'4 % C
  c,8 8 4 4
  g'8 8 4 4
  c,8 e g4 g
  d4 4
  d4 % B
  g8 8 4 b,
  c8 8 4 4
  b8 8 g4 b
  d4 g,
}

chorus = \lyricmode {
  We love to sing of Christ our King,
  And Hail Him bless -- ed Je -- sus!
  For there's no word ear ev -- er heard
  So dear, so sweet as \markup\smallCaps "\"Je" -- \markup\smallCaps "sus!\""
}

wordsOne = \lyricmode {
  \set stanza = "1."
  There is no name so sweet on earth,
  No name so sweet in hea -- ven.
  The name be -- fore His won -- drous birth,
  To Christ the Sa -- viour giv -- en.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  And when He hung up -- on the tree,
  They wrote this name a -- bove Him;
  That all might see the rea -- son we
  For ev -- er more must love Him.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  So now, up -- on His Fath -- er's throne—
  Al -- migh -- ty to re -- lease us
  From sin and pains— He ev -- er reigns
  The Prince and Sa -- viour, Je -- sus.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O Je -- sus, by that match -- less name
  Thy grace shall fail us ne -- ver;
  To -- day as yes -- ter -- day the same,
  Thou art the same for -- ev -- er!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "is " "no " "name " "so " "sweet " "on " "earth, "
  "\nNo " "name " "so " "sweet " "in " hea "ven. "
  "\nThe " "name " be "fore " "His " won "drous " "birth, "
  "\nTo " "Christ " "the " Sa "viour " giv "en. "
  "\nWe " "love " "to " "sing " "of " "Christ " "our " "King, "
  "\nAnd " "Hail " "Him " bless "ed " Je "sus! "
  "\nFor " "there's " "no " "word " "ear " ev "er " "heard "
  "\nSo " "dear, " "so " "sweet " "as " "\"JE" "SUS!\" "

  \set stanza = "2."
  "\nAnd " "when " "He " "hung " up "on " "the " "tree, "
  "\nThey " "wrote " "this " "name " a "bove " "Him; "
  "\nThat " "all " "might " "see " "the " rea "son " "we "
  "\nFor " ev "er " "more " "must " "love " "Him. "
  "\nWe " "love " "to " "sing " "of " "Christ " "our " "King, "
  "\nAnd " "Hail " "Him " bless "ed " Je "sus! "
  "\nFor " "there's " "no " "word " "ear " ev "er " "heard "
  "\nSo " "dear, " "so " "sweet " "as " "\"JE" "SUS!\" "

  \set stanza = "3."
  "\nSo " "now, " up "on " "His " Fath "er's " "throne— "
  "\nAl" migh "ty " "to " re "lease " "us "
  "\nFrom " "sin " "and " "pains— " "He " ev "er " "reigns "
  "\nThe " "Prince " "and " Sa "viour, " Je "sus. "
  "\nWe " "love " "to " "sing " "of " "Christ " "our " "King, "
  "\nAnd " "Hail " "Him " bless "ed " Je "sus! "
  "\nFor " "there's " "no " "word " "ear " ev "er " "heard "
  "\nSo " "dear, " "so " "sweet " "as " "\"JE" "SUS!\" "

  \set stanza = "4."
  "\nO " Je "sus, " "by " "that " match "less " "name "
  "\nThy " "grace " "shall " "fail " "us " ne "ver; "
  "\nTo" "day " "as " yes ter "day " "the " "same, "
  "\nThou " "art " "the " "same " for ev "er! "
  "\nWe " "love " "to " "sing " "of " "Christ " "our " "King, "
  "\nAnd " "Hail " "Him " bless "ed " Je "sus! "
  "\nFor " "there's " "no " "word " "ear " ev "er " "heard "
  "\nSo " "dear, " "so " "sweet " "as " "\"JE" "SUS!\" "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
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
               \RehearsalTrack
            }

%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
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
               \RehearsalTrack
            }

%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
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
      >>
    >>
    \midi {}
  }
}
