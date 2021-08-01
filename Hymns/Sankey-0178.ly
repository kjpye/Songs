\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus is Coming."
  subtitle    = "Sankey No. 178"
  subsubtitle = "Sankey 880 No. 308"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El Nathan."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*3
  \mark \markup { \box "B" } s2.*3
  \mark \markup { \box "C" } s2.*3
  \mark \markup { \box "D" } s2.*3
  \mark \markup { \box "E" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4.=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8 d ees f16
    \tag #'dash  { \slurDashed bes8.(8) \slurSolid }
    \tag #'solid {             bes8.~8             }
    \tag #'none  {             bes8. 8             }
  a8. bes16 c8 bes4.
  f8 d ees f bes c \break
  d8. ees16 d8 c4. % B
  d8. c16 bes8 8 a g
  f8 d f bes4. \break
  a8. 16 8 8 bes c % C
  bes2. \bar "||"
  ees8.^\markup\smallCaps Chorus. 16 8 8 8 8 \break
  d8 8 8 4. % D
  d8. c16 d8 f ees d
  c2. \break
  f,8. d16 ees8 f bes c % E
  d8. c16 d8 ees4.\fermata
  ees8. d16 c8 8 bes a
  bes2.
}

alto = \relative {
  \autoBeamOff
  d'8 bes c d16
    \tag #'dash  { \slurDashed d8.(8) \slurSolid }
    \tag #'solid {             d8.~8             }
    \tag #'none  {             d8. 8             }
  ees8. 16 8 d4.
  d8 bes c d f f
  f8. 16 8 4. % B
  f8. g16 aes8 g f ees
  d8 bes d d4(f8)
  ees8. 16 8 8 8 8 % C
  d2.
  g8. 16 8 8 8 8
  f8 8 8 4. % D
  f8. 16 8 8 8 8
  f8 a g f f ees
  d8. bes16 c8 d f f % E
  f8. 16 8 g4.\fermata
  f8. 16 8 8 8 ees
  d2.
}

tenor= \relative {
  \autoBeamOff
  bes8 f8 8 16
    \tag #'dash  { \slurDashed 8.(8) \slurSolid }
    \tag #'solid {             8.~8             }
    \tag #'none  {             8. 8             }
  f8. 16 8 4.
  bes8 f8 8 8 8 a
  bes8. c16 bes8 a4. % B
  bes8. ees16 d8 ees bes bes
  bes8 f f f4(d'8)
  c8. 16 8 8 bes a % C
  bes2.
  bes8. 16 8 8 8 8
  bes8 8 8 4. % D
  bes8. a16 bes8 d c bes
  a8 c bes a a a
  bes8. 16 8 8 8 a % E
  bes8. 16 8 4.\fermata
  a8. bes16 c8 ees d c
  bes2.
}

bass = \relative {
  \autoBeamOff
  bes,8 8 8 16
    \tag #'dash  { \slurDashed 8.(8) \slurSolid }
    \tag #'solid {             8.~8             }
    \tag #'none  {             8. 8             }
  f'8. 16 8 bes,4.
  bes8 8 8 8 d f
  bes8. a16 bes8 f4. % B
  bes8. 16 8 ees,8 8 8
  bes8 8 8 4.
  f'8. 16 8 8 8 8 % C
  bes2.
  ees,8. 16 8 8 8 8
  bes8 8 8 4. % D
  bes8. 16 8 8 c d
  f8 8 8 8 ees c
  bes8. 16 8 8 d f % E
  bes8. 16 8 ees,4.\fermata
  f8. 16 8 8 8 8
  bes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Je -- sus is com -- ing a -- gain!
  Je -- sus is com -- ing, is com -- ing a -- gain!
  Je -- sus is com -- ing a -- gain!
  shout the glad tid -- ings o'er moun -- tain and plain!
  Je -- sus is com -- ing a -- gain!
}

chorusB = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  Yes, Je -- sus is com -- ing! Oh,
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus is com -- ing! sing the glad word!
  Com -- ing for those He re -- deemed by His blood,
  Com -- ing to reign as the glo -- ri -- fied Lord!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Je -- sus is \nom com -- ing! the \yesm dead shall a -- rise,
  Loved ones shall meet in a joy -- ful sur -- prise,
  Caught up to -- ge -- ther to Him in the skies.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus is \nom com -- ing! His \yesm saints to re -- lease;
  Com -- ing to give to the war -- ring earth peace:
  Sin -- ning, and sigh -- ing, and sor -- row, shall cease.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Je -- sus is \nom com -- ing! the \yesm pro -- mise is true;
  Who are the cho -- sen, the faith -- ful, the few,
  Wait -- ing and watch -- ing, pre -- pared for re -- view?
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "is " com "ing! " "sing " "the " "glad " "word! "
  "\nCom" "ing " "for " "those " "He " re "deemed " "by " "His " "blood, "
  "\nCom" "ing " "to " "reign " "as " "the " glo ri "fied " "Lord! "
  "\nJe" "sus " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing, " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing " a "gain! "
  "\nshout " "the " "glad " tid "ings " "o'er " moun "tain " "and " "plain! "
  "\nJe" "sus " "is " com "ing " a "gain! "

  \set stanza = "2."
  "\nJe" "sus " "is " "\nom " com "ing! " "the " "\yesm " "dead " "shall " a "rise, "
  "\nLoved " "ones " "shall " "meet " "in " "a " joy "ful " sur "prise, "
  "\nCaught " "up " to ge "ther " "to " "Him " "in " "the " "skies. "
  "\nJe" "sus " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing, " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing " a "gain! "
  "\nshout " "the " "glad " tid "ings " "o'er " moun "tain " "and " "plain! "
  "\nJe" "sus " "is " com "ing " a "gain! "

  \set stanza = "3."
  "\nJe" "sus " "is " "\nom " com "ing! " "His " "\yesm " "saints " "to " re "lease; "
  "\nCom" "ing " "to " "give " "to " "the " war "ring " "earth " "peace: "
  "\nSin" "ning, " "and " sigh "ing, " "and " sor "row, " "shall " "cease. "
  "\nJe" "sus " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing, " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing " a "gain! "
  "\nshout " "the " "glad " tid "ings " "o'er " moun "tain " "and " "plain! "
  "\nJe" "sus " "is " com "ing " a "gain! "

  \set stanza = "4."
  "\nJe" "sus " "is " "\nom " com "ing! " "the " "\yesm " pro "mise " "is " "true; "
  "\nWho " "are " "the " cho "sen, " "the " faith "ful, " "the " "few, "
  "\nWait" "ing " "and " watch "ing, " pre "pared " "for " re "view? "
  "\nJe" "sus " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing, " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing " a "gain! "
  "\nshout " "the " "glad " tid "ings " "o'er " moun "tain " "and " "plain! "
  "\nJe" "sus " "is " com "ing " a "gain! "
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "is " com "ing! " "sing " "the " "glad " "word! "
  "\nCom" "ing " "for " "those " "He " re "deemed " "by " "His " "blood, "
  "\nCom" "ing " "to " "reign " "as " "the " glo ri "fied " "Lord! "
  "\nJe" "sus " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing, " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing "
  "\nYes, " Je "sus " "is " com "ing! "
  "\nOh, " "shout " "the " "glad " tid "ings " "o'er " moun "tain " "and " "plain! "
  "\nJe" "sus " "is " com "ing " a "gain! "

  \set stanza = "2."
  "\nJe" "sus " "is " com "ing! " "the " "dead " "shall " a "rise, "
  "\nLoved " "ones " "shall " "meet " "in " "a " joy "ful " sur "prise, "
  "\nCaught " "up " to ge "ther " "to " "Him " "in " "the " "skies. "
  "\nJe" "sus " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing, " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing "
  "\nYes, " Je "sus " "is " com "ing! "
  "\nOh, " "shout " "the " "glad " tid "ings " "o'er " moun "tain " "and " "plain! "
  "\nJe" "sus " "is " com "ing " a "gain! "

  \set stanza = "3."
  "\nJe" "sus " "is " com "ing! " "His " "saints " "to " re "lease; "
  "\nCom" "ing " "to " "give " "to " "the " war "ring " "earth " "peace: "
  "\nSin" "ning, " "and " sigh "ing, " "and " sor "row, " "shall " "cease. "
  "\nJe" "sus " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing, " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing "
  "\nYes, " Je "sus " "is " com "ing! "
  "\nOh, " "shout " "the " "glad " tid "ings " "o'er " moun "tain " "and " "plain! "
  "\nJe" "sus " "is " com "ing " a "gain! "

  \set stanza = "4."
  "\nJe" "sus " "is " com "ing! " "the " pro "mise " "is " "true; "
  "\nWho " "are " "the " cho "sen, " "the " faith "ful, " "the " "few, "
  "\nWait" "ing " "and " watch "ing, " pre "pared " "for " re "view? "
  "\nJe" "sus " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing, " "is " com "ing " a "gain! "
  "\nJe" "sus " "is " com "ing "
  "\nYes, " Je "sus " "is " com "ing! "
  "\nOh, " "shout " "the " "glad " tid "ings " "o'er " moun "tain " "and " "plain! "
  "\nJe" "sus " "is " com "ing " a "gain! "
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new NullVoice = "alignerA" \keepWithTag #'dash \alto
            \new Voice = "women" \partCombine { \global \keepWithTag #'dash \soprano \bar "|." }
            { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto alignerA \chorusB
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \keepWithTag #'dash \tenor }
                                            { \global \keepWithTag #'dash \bass }
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
            \new NullVoice = "aligner" { \keepWithTag #'solid \soprano
                                         \keepWithTag #'none  \soprano
                                         \keepWithTag #'none  \soprano
                                         \keepWithTag #'none  \soprano
                                       }
            \new NullVoice = "alignerA" { \keepWithTag #'solid \alto
                                          \keepWithTag #'none  \alto
                                          \keepWithTag #'none  \alto
                                          \keepWithTag #'none  \alto
                                       }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'solid \soprano
                                                \keepWithTag #'none  \soprano
                                                \keepWithTag #'none  \soprano
                                                \keepWithTag #'none  \soprano
                                                \bar "|." }
                                              { \global
                                                \keepWithTag #'solid \alto \nl
                                                \keepWithTag #'none  \alto \nl
                                                \keepWithTag #'none  \alto \nl
                                                \keepWithTag #'none  \alto
                                              }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
            \new Lyrics \lyricsto alignerA { \chorusB \chorusB \chorusB \chorusB }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'solid \tenor
                                              \keepWithTag #'none  \tenor
                                              \keepWithTag #'none  \tenor
                                              \keepWithTag #'none  \tenor
                                            }
                                            { \global
                                              \keepWithTag #'solid \bass
                                              \keepWithTag #'none  \bass
                                              \keepWithTag #'none  \bass
                                              \keepWithTag #'none  \bass
                                            }
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
            \new NullVoice = "aligner" { \keepWithTag #'solid \soprano
                                         \keepWithTag #'none  \soprano
                                         \keepWithTag #'none  \soprano
                                         \keepWithTag #'none  \soprano
                                       }
            \new NullVoice = "alignerA" { \keepWithTag #'solid \alto
                                          \keepWithTag #'none  \alto
                                          \keepWithTag #'none  \alto
                                          \keepWithTag #'none  \alto
                                       }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'solid \soprano
                                                \keepWithTag #'none  \soprano
                                                \keepWithTag #'none  \soprano
                                                \keepWithTag #'none  \soprano
                                                \bar "|." }
                                              { \global
                                                \keepWithTag #'solid \alto \nl
                                                \keepWithTag #'none  \alto \nl
                                                \keepWithTag #'none  \alto \nl
                                                \keepWithTag #'none  \alto
                                              }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
            \new Lyrics \lyricsto alignerA { \chorusB \chorusB \chorusB \chorusB }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'solid \tenor
                                              \keepWithTag #'none  \tenor
                                              \keepWithTag #'none  \tenor
                                              \keepWithTag #'none  \tenor
                                            }
                                            { \global
                                              \keepWithTag #'solid \bass
                                              \keepWithTag #'none  \bass
                                              \keepWithTag #'none  \bass
                                              \keepWithTag #'none  \bass
                                            }
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
          \new Staff =soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global
                         \keepWithTag #'solid \soprano
                         \keepWithTag #'none  \soprano
                         \keepWithTag #'none  \soprano
                         \keepWithTag #'none  \soprano
                         \bar "|."
                       }
            \addlyrics \wordsMidiSop
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'solid \alto \nl
                         \keepWithTag #'none  \alto \nl
                         \keepWithTag #'none  \alto \nl
                         \keepWithTag #'none  \alto
                       }
            \addlyrics \wordsMidi
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'solid \tenor
                         \keepWithTag #'none  \tenor
                         \keepWithTag #'none  \tenor
                         \keepWithTag #'none  \tenor
                       }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'solid \bass
                         \keepWithTag #'none  \bass
                         \keepWithTag #'none  \bass
                         \keepWithTag #'none  \bass
                       }
          >>
        >>
    \midi {}
  }
}
