\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "How Sweet the Name!"
  subtitle    = "Sankey No. 112"
  subsubtitle = "Sankey 880 No. 145"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "A. R. Reinagle."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John Newton."
  meter       = "C.M."
  piece       = \markup\smallCaps "St. Peter."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  bes'4
  ees4 d c bes
  bes4 aes g g
  f4 ees aes g
  f2. \bar "|" \break \partial 4 g4
  aes4 g c bes % B
  bes4 aes g ees
  g4 f ees d
  ees2.
}

alto = \relative {
  ees'4
  g4 g ees ees
  f4 d ees ees
  c4 bes d ees
  d2. ees4
  ees4 4 4 4 % B
  c4 d ees c
  ees4 c bes bes
  bes2.
}

tenor = \relative {
  \autoBeamOff
  g4
  bes4 4 aes bes
  bes4 4 4 4
  c4 bes aes bes
  bes2. 4
  aes4 bes c ees, % B
  f4 f ees g
  bes4 aes g f8[aes]
  g2.
}

bass= \relative {
  \autoBeamOff
  ees4
  ees4 g aes g
  d4 bes ees ees
  aes4 g f ees
  bes2. ees8[des]
  c4 bes aes g
  f4 bes c c
  g4 aes bes bes
  ees2.
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  How sweet the name of Je -- sus sounds
  In a be -- liev -- er's ear!
  It soothes his sor -- rows, heals his wounds,
  And drives a -- way his fear.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  It makes the wound -- ed spi -- rit whole,
  And calms the troub -- led breast;
  'Tis man -- na to the hun -- gry soul,
  And to the wea -- ry rest.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Dear Name, the Rock on which I build,
  My Shield and Hi -- ding -- place,
  My nev -- er -- fail -- ing Trea -- sury, fill'd
  With bound -- less stores of grace.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Je -- sus my Shep -- herd, Sa -- viour, Friend,
  My Proph -- et, Priest, and King,
  My Lord, my Life, my Way, my End,
  Ac -- cept the praise I bring.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  I would Thy bound -- less love pro -- claim
  With ev -- 'ry fleet -- ing breath;
  So shall the mu -- sic of Thy Name
  Re -- fresh my soul in death.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "How " "sweet " "the " "name " "of " Je "sus " "sounds "
  "\nIn " "a " be liev "er's " "ear! "
  "\nIt " "soothes " "his " sor "rows, " "heals " "his " "wounds, "
  "\nAnd " "drives " a "way " "his " "fear. "

  \set stanza = "2."
  "\nIt " "makes " "the " wound "ed " spi "rit " "whole, "
  "\nAnd " "calms " "the " troub "led " "breast; "
  "\n'Tis " man "na " "to " "the " hun "gry " "soul, "
  "\nAnd " "to " "the " wea "ry " "rest. "

  \set stanza = "3."
  "\nDear " "Name, " "the " "Rock " "on " "which " "I " "build, "
  "\nMy " "Shield " "and " Hi ding "place, "
  "\nMy " nev er fail "ing " Trea "sury, " "fill'd "
  "\nWith " bound "less " "stores " "of " "grace. "

  \set stanza = "4."
  "\nJe" "sus " "my " Shep "herd, " Sa "viour, " "Friend, "
  "\nMy " Proph "et, " "Priest, " "and " "King, "
  "\nMy " "Lord, " "my " "Life, " "my " "Way, " "my " "End, "
  "\nAc" "cept " "the " "praise " "I " "bring. "

  \set stanza = "5."
  "\nI " "would " "Thy " bound "less " "love " pro "claim "
  "\nWith " ev "'ry " fleet "ing " "breath; "
  "\nSo " "shall " "the " mu "sic " "of " "Thy " "Name "
  "\nRe" "fresh " "my " "soul " "in " "death. "
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
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
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
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
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
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
               \RehearsalTrack
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
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
