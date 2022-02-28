\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Ye Must be Born Again!"
  subtitle    = "Sankey No. 366"
  subsubtitle = "Sankey 880 No. 379"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. T. Sleeper."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*2
  \mark \markup { \box "B" }    s2.*3
  \mark \markup { \box "C" }    s2.*2 s4. s4
  \mark \markup { \box "D" } s8 s2.*4
  \mark \markup { \box "E" }    s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8
  \tag #'rep     {g8 8 8 \slurDashed g8(aes) bes \slurSolid}
  \tag #'(v1 v2) {g8 8 8             g8(aes) bes           }
  \tag #'(v3 v4) {g8 8 8             g8 aes  bes           }
  \tag #'rep        {c8 bes a bes4 \slurDashed 16(16) \slurSolid}
  \tag #'(v1 v2 v3) {c8 bes a bes4             8                }
  \tag #'v4         {c8 bes a bes4             16 16            }
  bes8 aes g f g aes % B % B
  aes8 g fis g4 ees8
  g8 8 8 8 aes bes
  c8 bes a bes4 g8 % C
  f4 bes8 4 a8
  bes4.~4\fermata \bar "|" \break 8^\markup\smallCaps Chorus.
  bes4 8 g[aes] bes % D
  c4.~4 8
  c4 8 f,8[g] aes
  bes4.~4 aes8
  g8. 16 8 aes8. 16 8 % E
  bes8 8 8 c4 ees8\fermata
  bes4 g8 4 f8
  ees4.~4\fermata
}

alto = \relative {
  \autoBeamOff
  bes8
  \tag #'rep     {ees8 8 8 \slurDashed ees8(f) g \slurSolid}
  \tag #'(v1 v2) {ees8 8 8             ees8(f) g           }
  \tag #'(v3 v4) {ees8 8 8             ees8 f  g           }
  \tag #'rep        {aes8 g fis g4 \slurDashed 16(16) \slurSolid}
  \tag #'(v1 v2 v3) {aes8 g fis g4             8                }
  \tag #'v4         {aes8 g fis g4             16 16  \slurSolid}
  g8 f ees d ees f % B
  f8 ees ees ees4 bes8
  ees8 8 8 8 f g
  aes8 g fis g4 ees8 % C
  d4 f8 ees4 8
  d4 ees8 f4\fermata aes8
  g4 8 ees8[f] g % D
  aes4 8 4 8
  aes4 8 d,8[ees] f
  g4 f8 ees4 d8
  ees8. 16 8 d8. 16 8 % E
  ees8 8 8 4 aes8\fermata
  g4 ees8 4 d8
  ees4 c8 bes4\fermata
}

tenor = \relative {
  \autoBeamOff
  g8
  \tag #'rep     {bes8 8 8 \slurDashed 8(8) ees8 \slurSolid}
  \tag #'(v1 v2) {bes8 8 8             4    ees8           }
  \tag #'(v3 v4) {bes8 8 8             8 8  ees8           }
  \tag #'rep        {ees8 8 8 4 \slurDashed 16(16) \slurSolid}
  \tag #'(v1 v2 v3) {ees8 8 8 4             8                }
  \tag #'v4         {ees8 8 8 4             16 16            }
  ees8 bes8 8 8 8 8 % B
  bes8 8 a bes4 g8
  bes8 8 8 8 8 ees
  ees8 8 8 4 bes8 % C
  bes4 d8 c4 8
  bes4 g8 aes4\fermata d8
  ees4 8 bes4 ees8 % D
  ees4 8 4 8
  d4 bes8 4 8
  bes4 aes8 f4 bes8
  bes8. 16 8 8. 16 8 % E
  bes8 8 8 aes4 c8\fermata
  ees4 bes8 4 aes8
  g4 aes8 g4\fermata
}

bass = \relative {
  \autoBeamOff
  ees8
  \tag #'rep     {ees8 8 8 \slurDashed 8(8) ees8 \slurSolid}
  \tag #'(v1 v2) {ees8 8 8             4    ees8           }
  \tag #'(v3 v4) {ees8 8 8             8 8  ees8           }
  \tag #'rep        {ees8 8 8 4 \slurDashed 16(16) \slurSolid}
  \tag #'(v1 v2 v3) {ees8 8 8 4             8                }
  \tag #'v4         {ees8 8 8 4             16 16            }
  bes8 8 8 8 8 8 % B
  ees8 8 8 4 8
  ees8 8 8 8 8 8
  ees8 8 8 4 8 % C
  f4 8 4 8
  bes,4 8 4\fermata 8
  ees4 8 4 8 % D
  aes4 8 4 aes,8
  bes4 8 4 8
  ees4 8  4 bes8
  ees8. 16 8 f8. 16 8 % E
  g8 8 8 aes4 8\fermata
  bes4 8 bes,4 8
  ees4 8 4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Ye" must be born a -- "gain!\""
  "\"Ye" must be born a -- "gain!\""
  "\"I" ve -- ri -- ly, ve -- ri -- ly say un -- to thee,
  "\"Ye" must be born a -- "gain!\""
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  A ru -- ler once came to Je -- sus by night,
  To ask Him the way of sal -- va -- tion and light;
  The mas -- ter made an -- swer in words true and plain,
  "\"Ye" must be born a -- "gain!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Ye chil -- dren of men, at -- tend to the word
  So so -- lemn -- ly ut -- tered by Je -- sus, the Lord;
  And let not this mes -- sage to you be in vain:
  "\"Ye" must be born a -- "gain!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O ye who would \nom en -- ter \yesm this glo -- ri -- ous rest,
  And sing with the ran -- som'd the song of rhe blest;
  The life e -- ver -- last -- ing if ye would ob -- tain,
  "\"Ye" must be born a -- "gain!\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  A dear one in \nom hea -- ven \yesm they heart yearns to see,
  \nom At the \yesm beau -- ti -- ful gate may be watch -- ing for thee;
  Then list to the note of this so -- lemn re -- frain:
  "\"Ye" must be born a -- "gain!\""
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  A ru -- ler once came to Je -- sus by night,
  To ask Him the way of sal -- va -- tion and light;
  The mas -- ter made an -- swer in words true and plain,
  "\"Ye" must be born a -- "gain!\""
  "\"Ye" must be born a -- "gain!\""
  "\"Ye" must be born a -- "gain!\""
  "\"I" ve -- ri -- ly, ve -- ri -- ly say un -- to thee,
  "\"Ye" must be born a -- "gain!\""

  \set stanza = "2."
  Ye chil -- dren of men, at -- tend to the word
  So so -- lemn -- ly ut -- tered by Je -- sus, the Lord;
  And let not this mes -- sage to you be in vain:
  "\"Ye" must be born a -- "gain!\""
  "\"Ye" must be born a -- "gain!\""
  "\"Ye" must be born a -- "gain!\""
  "\"I" ve -- ri -- ly, ve -- ri -- ly say un -- to thee,
  "\"Ye" must be born a -- "gain!\""

  \set stanza = "3."
  O ye who would en -- ter this glo -- ri -- ous rest,
  And sing with the ran -- som'd the song of rhe blest;
  The life e -- ver -- last -- ing if ye would ob -- tain,
  "\"Ye" must be born a -- "gain!\""
  "\"Ye" must be born a -- "gain!\""
  "\"Ye" must be born a -- "gain!\""
  "\"I" ve -- ri -- ly, ve -- ri -- ly say un -- to thee,
  "\"Ye" must be born a -- "gain!\""

  \set stanza = "4."
  A dear one in hea -- ven they heart yearns to see,
  At the beau -- ti -- ful gate may be watch -- ing for thee;
  Then list to the note of this so -- lemn re -- frain:
  "\"Ye" must be born a -- "gain!\""
  "\"Ye" must be born a -- "gain!\""
  "\"Ye" must be born a -- "gain!\""
  "\"I" ve -- ri -- ly, ve -- ri -- ly say un -- to thee,
  "\"Ye" must be born a -- "gain!\""
}
  
wordsExtra = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  "\"a" -- "gain!\""
}

wordsExtraSingle = \lyricmode {
% 1
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  "\"a" -- "gain!\""
% 2
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  "\"a" -- "gain!\""
% 3
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  "\"a" -- "gain!\""
% 4
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _
  "\"a" -- "gain!\""
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  "\"a" -- "gain!\""
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "A " ru "ler " "once " "came " "to " Je "sus " "by " "night, "
  "\nTo " "ask " "Him " "the " "way " "of " sal va "tion " "and " "light; "
  "\nThe " mas "ter " "made " an "swer " "in " "words " "true " "and " "plain, "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "
  "\n\"I " ve ri "ly, " ve ri "ly " "say " un "to " "thee, "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "

  \set stanza = "2."
  "\nYe " chil "dren " "of " "men, " at "tend " "to " "the " "word "
  "\nSo " so lemn "ly " ut "tered " "by " Je "sus, " "the " "Lord; "
  "\nAnd " "let " "not " "this " mes "sage " "to " "you " "be " "in " "vain: "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "
  "\n\"I " ve ri "ly, " ve ri "ly " "say " un "to " "thee, "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "

  \set stanza = "3."
  "\nO " "ye " "who " "would " en "ter " "this " glo ri "ous " "rest, "
  "\nAnd " "sing " "with " "the " ran "som'd " "the " "song " "of " "rhe " "blest; "
  "\nThe " "life " e ver last "ing " "if " "ye " "would " ob "tain, "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "
  "\n\"I " ve ri "ly, " ve ri "ly " "say " un "to " "thee, "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "

  \set stanza = "4."
  "\nA " "dear " "one " "in " hea "ven " "they " "heart " "yearns " "to " "see, "
  "\nAt " "the " beau ti "ful " "gate " "may " "be " watch "ing " "for " "thee; "
  "\nThen " "list " "to " "the " "note " "of " "this " so "lemn " re "frain: "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "
  "\n\"I " ve ri "ly, " ve ri "ly " "say " un "to " "thee, "
  "\n\"Ye " "must " "be " "born " a "gain, " a "gain!\" "
}

wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "A " ru "ler " "once " "came " "to " Je "sus " "by " "night, "
  "\nTo " "ask " "Him " "the " "way " "of " sal va "tion " "and " "light; "
  "\nThe " mas "ter " "made " an "swer " "in " "words " "true " "and " "plain, "
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\n\"I " ve ri "ly, " ve ri "ly " "say " un "to " "thee, "
  "\n\"Ye " "must " "be " "born " a "gain!\" "

  \set stanza = "2."
  "\nYe " chil "dren " "of " "men, " at "tend " "to " "the " "word "
  "\nSo " so lemn "ly " ut "tered " "by " Je "sus, " "the " "Lord; "
  "\nAnd " "let " "not " "this " mes "sage " "to " "you " "be " "in " "vain: "
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\n\"I " ve ri "ly, " ve ri "ly " "say " un "to " "thee, "
  "\n\"Ye " "must " "be " "born " a "gain!\" "

  \set stanza = "3."
  "\nO " "ye " "who " "would " en "ter " "this " glo ri "ous " "rest, "
  "\nAnd " "sing " "with " "the " ran "som'd " "the " "song " "of " "rhe " "blest; "
  "\nThe " "life " e ver last "ing " "if " "ye " "would " ob "tain, "
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\n\"I " ve ri "ly, " ve ri "ly " "say " un "to " "thee, "
  "\n\"Ye " "must " "be " "born " a "gain!\" "

  \set stanza = "4."
  "\nA " "dear " "one " "in " hea "ven " "they " "heart " "yearns " "to " "see, "
  "\nAt " "the " beau ti "ful " "gate " "may " "be " watch "ing " "for " "thee; "
  "\nThen " "list " "to " "the " "note " "of " "this " so "lemn " re "frain: "
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\n\"Ye " "must " "be " "born " a "gain!\" "
  "\n\"I " ve ri "ly, " ve ri "ly " "say " un "to " "thee, "
  "\n\"Ye " "must " "be " "born " a "gain!\" "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|."
                       }
            \addlyrics \wordsMidi
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
            \addlyrics \wordsMidiSop
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|."
                       }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
          >>
        >>
    \midi {}
  }
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
            \new NullVoice = "aligner" \keepWithTag #'rep \soprano
            \new NullVoice = "alignerA" \keepWithTag #'rep \alto
            \new Voice = "women" \partCombine { \global \keepWithTag #'rep \soprano \bar "|." }
                                              { \global \keepWithTag #'rep \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "alignerA"  \wordsExtra
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \keepWithTag #'rep \tenor }
                                            { \global \keepWithTag #'rep \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
                                         \keepWithTag #'v1 \soprano
                                         \keepWithTag #'v2 \soprano
                                         \keepWithTag #'v3 \soprano
                                         \keepWithTag #'v4 \soprano
                                       }
            \new NullVoice = "alignerA" {
                                          \keepWithTag #'v1 \alto
                                          \keepWithTag #'v2 \alto
                                          \keepWithTag #'v3 \alto
                                          \keepWithTag #'v4 \alto
                                        }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'v1 \soprano
                                                \keepWithTag #'v2 \soprano
                                                \keepWithTag #'v3 \soprano
                                                \keepWithTag #'v4 \soprano
                                                \bar "|."
                                              }
                                              { \global
                                                \keepWithTag #'v1 \alto \nl
                                                \keepWithTag #'v2 \alto \nl
                                                \keepWithTag #'v3 \alto \nl
                                                \keepWithTag #'v4 \alto \nl
                                                \bar "|."
                                              }
            \new Lyrics \lyricsto "aligner" \wordsSingle
            \new Lyrics \lyricsto "alignerA" \wordsExtraSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                              \keepWithTag #'v4 \tenor
                                            }
                                            { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                              \keepWithTag #'v4 \bass
                                            }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
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
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
                                         \keepWithTag #'v1 \soprano
                                         \keepWithTag #'v2 \soprano
                                         \keepWithTag #'v3 \soprano
                                         \keepWithTag #'v4 \soprano
                                       }
            \new NullVoice = "alignerA" {
                                          \keepWithTag #'v1 \alto
                                          \keepWithTag #'v2 \alto
                                          \keepWithTag #'v3 \alto
                                          \keepWithTag #'v4 \alto
                                        }
            \new Voice = "women" \partCombine { \global
                                                \keepWithTag #'v1 \soprano
                                                \keepWithTag #'v2 \soprano
                                                \keepWithTag #'v3 \soprano
                                                \keepWithTag #'v4 \soprano
                                                \bar "|."
                                              }
                                              { \global
                                                \keepWithTag #'v1 \alto \nl
                                                \keepWithTag #'v2 \alto \nl
                                                \keepWithTag #'v3 \alto \nl
                                                \keepWithTag #'v4 \alto \nl
                                                \bar "|."
                                              }
            \new Lyrics \lyricsto "aligner" \wordsSingle
            \new Lyrics \lyricsto "alignerA" \wordsExtraSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
                                              \keepWithTag #'v1 \tenor
                                              \keepWithTag #'v2 \tenor
                                              \keepWithTag #'v3 \tenor
                                              \keepWithTag #'v4 \tenor
                                            }
                                            { \global
                                              \keepWithTag #'v1 \bass
                                              \keepWithTag #'v2 \bass
                                              \keepWithTag #'v3 \bass
                                              \keepWithTag #'v4 \bass
                                            }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
