\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Arise, my Soul, Arise!"
  subtitle    = "Sankey No. 154"
  subsubtitle = "Sankey 880 No. 163"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "John Darwell."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = \markup\smallCaps "6.6.6.6.8.8."
  piece       = \markup\smallCaps "Darwell's 148th."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2 s1*4
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*4 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'2
  fis4 d a' fis
  d'2. cis4
  b4 a g fis
  e2 2
  fis4 d b' a % B
  gis4 e e' d
  cis2 b
  a2. 4
  b2 cis
  d2. d,4 % C
  e4 fis g a
  b4 cis d e
  d2 cis
  d2
}

alto = \relative {
  \autoBeamOff
  d'2
  fis4 d a' fis
  fis2. 4
  d4 fis e d
  cis2 2
  d4 4 4 fis % B
  e4 4 4 fis
  e2 2
  cis2. fis4
  d2 e
  fis2. d4 % E
  cis4 d d fis
  g4 4 fis g
  fis2 e
  fis2
}

tenor = \relative {
  \autoBeamOff
  d2
  fis4 d a' fis
  b2. a4
  g4 a a a
  a2 2
  a4 fis b b % B
  b4 gis a a
  a2 gis
  a2. 4
  g2 2
  a2. fis4 % C
  a4 4 d d
  d4 e d b
  a2 2
  a2
}

bass = \relative {
  \autoBeamOff
  d2
  fis4 d a' fis
  b,2. fis'4
  g4 d cis d
  a2 2
  d4 4 b d % B
  e4 d cis d
  e2 2
  a,2. d4
  g2 e
  d2. 4 % C
  a4 d b d
  g4 e b' g
  a2 a,
  d2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- rise, my soul, a -- rise!
  Shake off thy guil -- ty fears;
  The bleed -- ing Sac -- ri -- fice
  In my be -- half ap -- pears.
  Be -- fore the throne my Sure -- ty stands;
  My name is writ -- ten on His hands.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He ev -- er lives a -- bove,
  For me to in -- ter -- cede,
  His all- -- re -- deem -- ing love,
  His pre -- cious blood to plead;
  His blood a -- toned for all our race,
  And sprin -- kles now the throne of grace.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Five bleed -- ing wounds He bears,
  Re -- ceived on Cal -- va -- ry;
  They pour ef -- fect -- ual prayers,
  They strong -- ly plead for me:
  "\"For" -- give him, oh, for -- "give!\"" they cry,
  "\"Nor" let that ran -- somed sin -- ner "die.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  My God is re -- con -- ciled;
  His par -- doning voice I hear:
  He owns me for His child;
  I can no long -- er fear:
  With con -- fid -- ence I now draw nigh,
  And "\"Fa" -- ther, Ab -- ba Fa -- "ther!\"" cry.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A" "rise, " "my " "soul, " a "rise! "
  "\nShake " "off " "thy " guil "ty " "fears; "
  "\nThe " bleed "ing " Sac ri "fice "
  "\nIn " "my " be "half " ap "pears. "
  "\nBe" "fore " "the " "throne " "my " Sure "ty " "stands; "
  "\nMy " "name " "is " writ "ten " "on " "His " "hands. "

  \set stanza = "2."
  "\nHe " ev "er " "lives " a "bove, "
  "\nFor " "me " "to " in ter "cede, "
  "\nHis " all- re deem "ing " "love, "
  "\nHis " pre "cious " "blood " "to " "plead; "
  "\nHis " "blood " a "toned " "for " "all " "our " "race, "
  "\nAnd " sprin "kles " "now " "the " "throne " "of " "grace. "

  \set stanza = "3."
  "\nFive " bleed "ing " "wounds " "He " "bears, "
  "\nRe" "ceived " "on " Cal va "ry; "
  "\nThey " "pour " ef fect "ual " "prayers, "
  "\nThey " strong "ly " "plead " "for " "me: "
  "\n\"For" "give " "him, " "oh, " for "give!\" " "they " "cry, "
  "\n\"Nor " "let " "that " ran "somed " sin "ner " "die.\" "

  \set stanza = "4."
  "\nMy " "God " "is " re con "ciled; "
  "\nHis " par "doning " "voice " "I " "hear: "
  "\nHe " "owns " "me " "for " "His " "child; "
  "\nI " "can " "no " long "er " "fear: "
  "\nWith " con fid "ence " "I " "now " "draw " "nigh, "
  "\nAnd " "\"Fa" "ther, " Ab "ba " Fa "ther!\" " "cry. "
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
    system-system-spacing.basic-distance = #22
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
