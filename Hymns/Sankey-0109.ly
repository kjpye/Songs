\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Rest of the Weary"
  subtitle    = "Sankey No. 109"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "A. Legge."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. S. B. Monsell."
  meter       = "9.9.9.9."
  piece       = \markup\smallCaps "Theodora."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% (set-global-staff-size 16)

global = {
  \key e \major
  \time 3/2
  \tempo 2=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s1.*8
  \mark \markup { \box "B" } s1.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  e'2 fis gis
  a1 gis2
  fis2 gis a
  gis1.
  b2 2 e,
  cis'1 b2
  dis2 cis fis,
  b1. \break
  fis2 gis fis % B
  fis1 e2
  a2 gis fis
  b1.
  e2 dis cis
  b2(a) gis
  fis2 e dis
  e1.
}

alto = \relative {
  e'2 e e
  e1 2
  e2 e dis
  e1.
  e2 dis e
  dis1 2
  fis2 2 e
  dis1.
  dis2 2 2 % B
  dis1 e2
  e2 e dis
  e1.
  e2 2 2
  e2.(dis4) e2
  cis2 b b
  b1.
}

tenor = \relative {
  gis2 a b
  cis1 b2
  cis2 b b
  b1.
  gis2 a b
  a1 b2
  b2 ais ais
  b1.
  a2 b a % B
  a1 gis2
  a2 b b
  b1.
  b2 2 a
  b1 2
  a2 gis fis
  gis1.
}

bass= \relative {
  e2 e e
  e1 2
  a,2 b b
  e1.
  e2 fis gis
  a1 gis2
  fis2 2 2
  b,1.
  b2 2 2 % B
  e1 2
  cis2 b a
  gis1.
  gis'2 2 a
  gis2(fis) e
  a,2 b b
  e1.
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Rest of the wea -- ry, joy of the sad;
  Hope of the drea -- ry, light of the glad;
  Home of the stran -- ger, strength to the end;
  Re -- fuge from dan -- ger, Sa -- viour and Friend.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Pil -- low where, ly -- ing, love rests its head;
  Peace of the dy -- ing, life of the dead;
  Path of the low -- ly, prize at the end;
  Breath of the ho -- ly, Sa -- viour and Friend.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When my feet stum -- ble to Thee I'll cry,
  Crown of the hum -- ble, cross of the high;
  When my steps wan -- der, o -- ver me bend,
  Tru -- er and fond -- er, Sa -- viour and Friend.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ev -- er con -- fess -- ing Thee, I will raise
  Un -- to Thee bless -- ing, glo -- ry, and praise;
  All my en -- dea -- vour, world with -- out end,
  Thine to be ev -- er, Sa -- viour and Friend.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Rest " "of " "the " wea "ry, " "joy " "of " "the " "sad; "
  "\nHope " "of " "the " drea "ry, " "light " "of " "the " "glad; "
  "\nHome " "of " "the " stran "ger, " "strength " "to " "the " "end; "
  "\nRe" "fuge " "from " dan "ger, " Sa "viour " "and " "Friend. "

  \set stanza = "2."
  "\nPil" "low " "where, " ly "ing, " "love " "rests " "its " "head; "
  "\nPeace " "of " "the " dy "ing, " "life " "of " "the " "dead; "
  "\nPath " "of " "the " low "ly, " "prize " "at " "the " "end; "
  "\nBreath " "of " "the " ho "ly, " Sa "viour " "and " "Friend. "

  \set stanza = "3."
  "\nWhen " "my " "feet " stum "ble " "to " "Thee " "I'll " "cry, "
  "\nCrown " "of " "the " hum "ble, " "cross " "of " "the " "high; "
  "\nWhen " "my " "steps " wan "der, " o "ver " "me " "bend, "
  "\nTru" "er " "and " fond "er, " Sa "viour " "and " "Friend. "

  \set stanza = "4."
  "\nEv" "er " con fess "ing " "Thee, " "I " "will " "raise "
  "\nUn" "to " "Thee " bless "ing, " glo "ry, " "and " "praise; "
  "\nAll " "my " en dea "vour, " "world " with "out " "end, "
  "\nThine " "to " "be " ev "er, " Sa "viour " "and " "Friend. "
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
