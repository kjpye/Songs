\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Join All the Glorious Names."
  subtitle    = "Sankey No. 86"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "John Darwell."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts, D. D."
  meter       = "6.6.6.6.8.8."
  piece       = \markup {\smallCaps Darwell's 148th.}

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
  \tempo 4=120
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2 s1*4
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*4 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  d'2
  fis4 d a' fis
  d'2. cis4
  b4 a g fis
  e2 e
  fis4 d b' a % B
  gis4 e e' d
  cis2 b
  a2. 4
  b2 cis
  d2. d,4
  e4 fis g a
  b4 cis d e
  d2 cis
  d2
}

alto = \relative {
  d'2
  fis4 d a' fis
  fis2. 4
  d4 fis e d
  cis2 2
  d4 d d fis % B
  e4 e e fis
  e2 e
  cis2. fis4
  d2 e
  fis2. d4 % C

  cis4 d d fis
  g4 g fis g
  fis2 e
  fis2
}

tenor = \relative {
  d2
  fis4 d a' fis
  b2. a4
  g4 a a a
  a2 a
  a4 fis b b % B
  b4 gis a a
  a2 fis
  a2. 4
  g2 g
  a2. fis4 % B
  a4 a d d
  d4 e d b
  a2 a
  a2
}

bass= \relative {
  d2
  fis4 d a' fis
  b,2. fis'4
  g4 d cis d
  a2 a
  d4 d b d % B
  e4 d cis d
  e2 e
  a,2. d4
  g2 e
  d2. 4 % C
  a4 d b d
  g4 e b' g
  a2 a,
  d2
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Join all the glo -- rious names
  Of wis -- dom, love, and pow'r,
  That mor -- tals ev -- er knew,
  That an -- gels ev -- er bore:
  All are too mean to speak His worth,
  Too mean to set my Sa -- viour forth.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Great Pro -- phet of my God,
  My tongue would bless Thy name;
  By Thee the joy -- ful news
  Of our sal -- va -- tion came:
  The joy -- ful news of sins for -- giv'n,
  Of hell sub -- dued, and peace with heav'n.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus, my great High Priest,
  Of -- fered His blood and died;
  My guil -- ty con -- science seeks
  No sac -- ri --fice be -- side:
  His power -- ful blood did once a -- tone—
  And now it pleads be -- fore the throne.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  My dear Al -- migh -- ty Lord,
  My Con -- queror and my King!
  They match -- less power and love,
  Thy sav -- ing grace, I sing:
  Thine is the power— oh, may I sit
  In wil -- ling bonds be -- neath Thy feet.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Then let my soul a -- rise,
  And tread the temp -- ter down;
  My Cap -- tain leads me forth
  To con -- quest and a crown.
  The feeb -- lest saint shall win the day.
  Though death and hell ob -- struct the way.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Should all the hosts of death,
  And powers of hell un -- known,
  Put their most dread -- ful forms
  Of rage and mid -- chief on,
  I shall be safe; for Christ dis -- plays
  Sup -- er -- ior power and guar -- dian grace.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Join " "all " "the " glo "rious " "names "
  "\nOf " wis "dom, " "love, " "and " "pow'r, "
  "\nThat " mor "tals " ev "er " "knew, "
  "\nThat " an "gels " ev "er " "bore: "
  "\nAll " "are " "too " "mean " "to " "speak " "His " "worth, "
  "\nToo " "mean " "to " "set " "my " Sa "viour " "forth. "

  \set stanza = "2."
  "\nGreat " Pro "phet " "of " "my " "God, "
  "\nMy " "tongue " "would " "bless " "Thy " "name; "
  "\nBy " "Thee " "the " joy "ful " "news "
  "\nOf " "our " sal va "tion " "came: "
  "\nThe " joy "ful " "news " "of " "sins " for "giv'n, "
  "\nOf " "hell " sub "dued, " "and " "peace " "with " "heav'n. "

  \set stanza = "3."
  "\nJe" "sus, " "my " "great " "High " "Priest, "
  "\nOf" "fered " "His " "blood " "and " "died; "
  "\nMy " guil "ty " con "science " "seeks "
  "\nNo " sac ri"fice " be "side: "
  "\nHis " power "ful " "blood " "did " "once " a "tone— "
  "\nAnd " "now " "it " "pleads " be "fore " "the " "throne. "

  \set stanza = "4."
  "\nMy " "dear " Al migh "ty " "Lord, "
  "\nMy " Con "queror " "and " "my " "King! "
  "\nThey " match "less " "power " "and " "love, "
  "\nThy " sav "ing " "grace, " "I " "sing: "
  "\nThine " "is " "the " "power— " "oh, " "may " "I " "sit "
  "\nIn " wil "ling " "bonds " be "neath " "Thy " "feet. "

  \set stanza = "5."
  "\nThen " "let " "my " "soul " a "rise, "
  "\nAnd " "tread " "the " temp "ter " "down; "
  "\nMy " Cap "tain " "leads " "me " "forth "
  "\nTo " con "quest " "and " "a " "crown. "
  "\nThe " feeb "lest " "saint " "shall " "win " "the " "day. "
  "\nThough " "death " "and " "hell " ob "struct " "the " "way. "

  \set stanza = "6."
  "\nShould " "all " "the " "hosts " "of " "death, "
  "\nAnd " "powers " "of " "hell " un "known, "
  "\nPut " "their " "most " dread "ful " "forms "
  "\nOf " "rage " "and " mid "chief " "on, "
  "\nI " "shall " "be " "safe; " "for " "Christ " dis "plays "
  "\nSup" er "ior " "power " "and " guar "dian " "grace. "
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
    \unfoldRepeats
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
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
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
    \unfoldRepeats
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
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
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
    \unfoldRepeats
%    \articulate
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
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" \wordsMidi
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
