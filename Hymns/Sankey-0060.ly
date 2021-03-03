\version "2.22.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, the very Thought of Thee."
  subtitle    = "Sankey No. 60"
  subsubtitle = "Sankey 880 No. 657"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. J. B. Dykes"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Bernard of Clairvaux — Tr. E. Caswell."
  meter       = \markup\smallCaps "c.m."
  piece       = \markup\smallCaps "St. Agnes."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2.*7
  \mark \markup { \box "B" } s2.*7
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  cis''4 cis cis
  b2 cis4
  d2 gis,4
  a2.
  e4 e e
  cis'2 b4
  b2.
  d4 d d % B
  b2 a4
  gis2 fis4
  e2.
  e4 fis a
  cis2 b4
  a2.
}

alto = \relative {
  e'4 e e
  fis2 e4
  d4(fis) e
  e2.
  e4 e e
  e2 dis4
  e2.
  fis4 fis e % B
  d2 dis4
  e2 dis4
  e2.
  e4 e d
  cis4(e) d
  cis2.
}

tenor = \relative {
  cis'4 cis a
  d2 a4
  b2 4
  cis2.
  d4 cis b
  a2 4
  gis2.
  fis4 gis ais % B
  b2 4
  b2 a4
  gis2.
  a4 a a
  a2 gis4
  a2.
}

bass= \relative {
  a4 a cis, d2 cis4
  b2 e4
  a2.
  b4 a gis
  a2 fis4
  e2.
  b4 b b % B
  b2 b4
  e2 e4
  e2(d4)
  cis4 d fis
  e2 4
  a,2.
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, the ve -- ry thought of Thee
  With sweet -- ness fills my breast;
  But sweet -- er far Thy face to see,
  And in Thy pres -- ence rest.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Nor voiec can sing, nor heart can frame,
  Nor can the mem -- 'ry find
  A sweet -- er sound  that Thy blest name,
  O Sa -- viour of man -- kind!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, hope of ev -- 'ry con -- trite heart!
  Oh! joy of all the meek!
  To those who fall, how kinf thou art!
  How good to those who seek!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And those who find Thee, find a bliss
  Nor tongue nor pen can show;
  The love of Je -- sus, what it is
  Nione but His loved ones know.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Je -- sus! our on -- ly joy be Thou,
  As Thou our peize will be;
  Je -- sus! be thou our glo -- ry now,
  And through e -- ter -- ni -- ty.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " "the " ve "ry " "thought " "of " "Thee "
  "\nWith " sweet "ness " "fills " "my " "breast; "
  "\nBut " sweet "er " "far " "Thy " "face " "to " "see, "
  "\nAnd " "in " "Thy " pres "ence " "rest. "

  \set stanza = "2."
  "\nNor " "voiec " "can " "sing, " "nor " "heart " "can " "frame, "
  "\nNor " "can " "the " mem "'ry " "find "
  "\nA " sweet "er " "sound "  "that " "Thy " "blest " "name, "
  "\nO " Sa "viour " "of " man "kind! "

  \set stanza = "3."
  "\nOh, " "hope " "of " ev "'ry " con "trite " "heart! "
  "\nOh! " "joy " "of " "all " "the " "meek! "
  "\nTo " "those " "who " "fall, " "how " "kinf " "thou " "art! "
  "\nHow " "good " "to " "those " "who " "seek! "

  \set stanza = "4."
  "\nAnd " "those " "who " "find " "Thee, " "find " "a " "bliss "
  "\nNor " "tongue " "nor " "pen " "can " "show; "
  "\nThe " "love " "of " Je "sus, " "what " "it " "is "
  "\nNione " "but " "His " "loved " "ones " "know. "

  \set stanza = "5."
  "\nJe" "sus! " "our " on "ly " "joy " "be " "Thou, "
  "\nAs " "Thou " "our " "peize " "will " "be; "
  "\nJe" "sus! " "be " "thou " "our " glo "ry " "now, "
  "\nAnd " "through " e ter ni "ty. "
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
               \RehearsalTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
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
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
            \new Voice \TempoTrack
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
