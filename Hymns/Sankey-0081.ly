\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sing the Love of Jesus."
  subtitle    = "Sankey No. 81"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Chas. H. Gabriel."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. Harriet E. Jones."
  meter       = \markup\smallCaps "8.7."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 9/8
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4.*12
  \mark \markup { \box "B" } s4.*12
  \mark \markup { \box "C" } s4.*7
  \mark \markup { \box "D" } s4.*8
  \mark \markup { \box "E" } s4.*9
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4.*44
  \tempo 4=100
  s4.*4
}

soprano = \relative {
  ees'4 8
  aes4.~4 8 c(bes) aes
  bes4. 4. 8(c) des
  c4 bes8 aes4. g
  aes4.~4 r8 \bar "|" \break \partial 4. ees4 8
  aes4.~4 8 c(bes) aes % B
  bes4. 4. 8(c) des
  c4 bes8 aes4. g
  aes4.~4 r8 \bar "|" \break \partial 4. ees'4^\markup\smallCaps Chorus 8
  ees4.(~8 bes) c des(c) bes % C
  c4. aes ees'4 8 \break
  ees4.(~8 bes) c des(c) bes % D
  c4.~4 r8 c4 8
  aes4.~4 bes8 \bar "|" \break \partial 4. aes4 f8
  ees4. aes c4 des8 % E
  ees4.~4^\markup\italic rit. des8 c4 bes8
  aes4.~4 r8
}

alto = \relative {
  c'4 8
  c4.(4) 8 ees4 8
  ees4. 4. 4 8
  ees4 f8 ees4. des
  c4.~4 r8 4 8
  c4.~4 8 ees4 8 % B
  ees4. 4. 4 8
  ees4 f8 ees4. des
  c4.~4 r8 \once\partCombineApart r4 \once\partCombineApart r8
  g'4 8 4 aes8 bes(aes) g % C
  aes4 8 ees4 8 \once\partCombineApart r4 \once\partCombineApart r8
  4 8 4 aes8 bes(aes) g % D
  aes4 8 4 r8 \once\partCombineApart r4 \once\partCombineApart r8
  f4 8 4 8 4 des8
  c4. ees \once\partCombineApart r4 \once\partCombineApart r8
  a4 8 4 bes8 aes4 ees8
  ees4.~4 r8
}

tenor = \relative {
  aes4 8
  ees4.~4 8 aes g aes
  g4. 4. 8 aes bes
  aes4 des8 c4. bes
  aes4.~4 r8 4 8
  ees4.~4 8 aes g aes % B
  g4. 4. 8 aes bes
  aes4 des8 c4. bes
  aes4.~4 r8 r4 r8
  bes4 8 4 ees8 4 8 % C
  ees4 8 c4 8 r4 r8
  bes4 8 4 ees8 4 8 % D
  ees4 8 4 r8 r4 r8
  des4 8 4 8 4 aes8
  aes4. ces r4 r8 % E
  c4 8 4 ees8 4 des8
  c4.~4 r8
}

bass= \relative {
  aes,4 8
  aes4.~4 8 8(bes) c
  ees4. 4. 4 8
  aes4 des,8 ees4. 4.
  aes,4.~4 r8 4 8
  aes4.~4 8 8(bes) c % B
  ees4. 4. 4 8
  aes4 des,8 ees4. 4.
  aes,4.~4 r8 r4 r8
  ees'4 8 4 8 4 8 % C
  aes4 8 4 8 r4 r8
  ees4 8 4 8 4 8 % D
  aes,4 8 4 r8 r4 r8
  des4 8 4 8 4 8
  aes4. 4. r4 r8 % E
  ees'4 8 4 8 4 8
  aes,4.~4 r8
}

chorus = \lyricmode {
  Sing, oh sing the love, the love of Je -- sus!
  Sound His prais -- es, prais -- es far and near! __
  Sing the won -- drous sto -- ry o -- ver,
  Till the whole __ wide world shall hear!
}

chorusSop = \lyricmode {
  Sing, oh sing __ the love of Je -- sus!
  Sound His prais -- es far and near! __
  Sing the won -- drous sto -- ry o -- ver,
  Till the whole __ wide world shall hear!
}

wordsNone = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Sing, oh sing the old, old sto -- ry
  Of our Sa -- viour's match -- less love!
  Sing of Je -- sus and His glo -- ry
  With the ran -- som'd host a -- bove!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sing of love, to you so pre -- cious—
  Tell in song how Je -- sus died;
  Let sweet mu -- sic draw the na -- tions
  To the dear Re -- deem -- er's side.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ye re -- deem'd once, sing the sto -- ry!
  Sing it o'er and o'er a -- gain!
  Till from ev -- 'ry land the peo -- ple
  Join to sing the glad re -- frain.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sing, " "oh " "sing " "the " "old, " "old " sto "ry "
  "\nOf " "our " Sa "viour's " match "less " "love! "
  "\nSing " "of " Je "sus " "and " "His " glo "ry "
  "\nWith " "the " ran "som'd " "host " a "bove! "
  "\nSing, " "oh " "sing " "the " "love, " "the " "love " "of " Je "sus! "
  "\nSound " "His " prais "es, " prais "es " "far " "and " "near! " 
  "\nSing " "the " won "drous " sto "ry " o "ver, "
  "\nTill " "the " "whole "  "wide " "world " "shall " "hear! "

  \set stanza = "2."
  "\nSing " "of " "love, " "to " "you " "so " pre "cious— "
  "\nTell " "in " "song " "how " Je "sus " "died; "
  "\nLet " "sweet " mu "sic " "draw " "the " na "tions "
  "\nTo " "the " "dear " Re deem "er's " "side. "
  "\nSing, " "oh " "sing " "the " "love, " "the " "love " "of " Je "sus! "
  "\nSound " "His " prais "es, " prais "es " "far " "and " "near! " 
  "\nSing " "the " won "drous " sto "ry " o "ver, "
  "\nTill " "the " "whole "  "wide " "world " "shall " "hear! "

  \set stanza = "3."
  "\nYe " re "deem'd " "once, " "sing " "the " sto "ry! "
  "\nSing " "it " "o'er " "and " "o'er " a "gain! "
  "\nTill " "from " ev "'ry " "land " "the " peo "ple "
  "\nJoin " "to " "sing " "the " "glad " re "frain. "
  "\nSing, " "oh " "sing " "the " "love, " "the " "love " "of " Je "sus! "
  "\nSound " "His " prais "es, " prais "es " "far " "and " "near! " 
  "\nSing " "the " won "drous " sto "ry " o "ver, "
  "\nTill " "the " "whole "  "wide " "world " "shall " "hear! "
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Sing, " "oh " "sing " "the " "old, " "old " sto "ry "
  "\nOf " "our " Sa "viour's " match "less " "love! "
  "\nSing " "of " Je "sus " "and " "His " glo "ry "
  "\nWith " "the " ran "som'd " "host " a "bove! "
  "\nSing, " "oh " "sing "  "the " "love " "of " Je "sus! "
  "\nSound " "His " prais "es " "far " "and " "near! " 
  "\nSing " "the " won "drous " sto "ry " o "ver, "
  "\nTill " "the " "whole "  "wide " "world " "shall " "hear! "

  \set stanza = "2."
  "\nSing " "of " "love, " "to " "you " "so " pre "cious— "
  "\nTell " "in " "song " "how " Je "sus " "died; "
  "\nLet " "sweet " mu "sic " "draw " "the " na "tions "
  "\nTo " "the " "dear " Re deem "er's " "side. "
  "\nSing, " "oh " "sing "  "the " "love " "of " Je "sus! "
  "\nSound " "His " prais "es " "far " "and " "near! " 
  "\nSing " "the " won "drous " sto "ry " o "ver, "
  "\nTill " "the " "whole "  "wide " "world " "shall " "hear! "

  \set stanza = "3."
  "\nYe " re "deem'd " "once, " "sing " "the " sto "ry! "
  "\nSing " "it " "o'er " "and " "o'er " a "gain! "
  "\nTill " "from " ev "'ry " "land " "the " peo "ple "
  "\nJoin " "to " "sing " "the " "glad " re "frain. "
  "\nSing, " "oh " "sing "  "the " "love " "of " Je "sus! "
  "\nSound " "His " prais "es " "far " "and " "near! " 
  "\nSing " "the " won "drous " sto "ry " o "ver, "
  "\nTill " "the " "whole "  "wide " "world " "shall " "hear! "
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
            \new Voice \TempoTrack
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "aligner" \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "alignerS" { \wordsOne \chorusSop }
            \new Lyrics \lyricsto "aligner"   \wordsTwo \chorus
            \new Lyrics \lyricsto "aligner"   \wordsThree
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \alto \alto \alto }
            \new NullVoice = "alignerS" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "alignerS" { \wordsOne   \chorusSop
                                               \wordsTwo   \chorusSop
                                               \wordsThree \chorusSop
                                             }
            \new Lyrics \lyricsto "aligner"  { \wordsNone   \chorus
                                               \wordsNone   \chorus
                                               \wordsNone   \chorus
                                             }
%            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \alto \alto \alto }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidiSop
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
