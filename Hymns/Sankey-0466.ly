\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Over the Line!"
  subtitle    = "Sankey No. 466"
  subsubtitle = "Sankey 880 No. 338"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. H. Phelps."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Ellen K. Bradford."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8  s2.*2
  \mark \markup { \box "B" }     s2.*3
  \mark \markup { \box "C" }     s2.*3
  \mark \markup { \box "D" }     s2.*2 s4.
  \mark \markup { \box "E" } s4. s2.*2
  \mark \markup { \box "F" }     s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative { 
  \autoBeamOff
  \tag #'dash       {\slurDashed ees'16(16) \slurSolid}
  \tag #'v1         {            ees8                 }
  \tag #'(v2 v3 v4) {            ees16  16            }
  \tag #'dash       {\slurDashed c'8.(bes16) \slurSolid aes8 }
  \tag #'(v2 v3 v4) {            c8. (bes16)            aes8 }
  \tag #'v1         {            c8.  bes16             aes8 }
  \tag #'dash    {\slurDashed ees8(d) \slurSolid}
  \tag #'(v3 v4) {            ees8(d)           }
  \tag #'(v1 v2) {            ees8 d            }
  \tag #'dash       {\slurDashed ees16(16) \slurSolid}
  \tag #'(v1 v2 v3) {            ees8                }
  \tag #'v4         {            ees16 16            }
  \tag #'dash    {\slurDashed f8. (16) \slurSolid des'8 c4}
  \tag #'(v1 v2) {            f,4                 des'8 c4}
  \tag #'(v3 v4) {            f,8. 16             des'8 c4}
  \tag #'dash       {\slurDashed ees,16(16) \slurSolid}
  \tag #'v4         {            ees8                 }
  \tag #'(v1 v2 v3) {            ees16  16            }
  \tag #'dash       {\slurDashed f8. (g16) \slurSolid aes8 bes4 c8} % B
  \tag #'v3         {            f,8.(g16)            aes8 bes4 c8}
  \tag #'(v1 v2 v4) {            f,8. g16             aes8 bes4 c8}
  \tag #'dash       {aes4.~4 \slurDashed ees16(16) \slurSolid}
  \tag #'(v1 v2 v3) {aes4.~4             ees8                }
  \tag #'v4         {aes4.~4             ees16 16            }
  \tag #'dash       {\slurDashed c'8.(bes16) \slurSolid aes8 ees d ees}
  \tag #'v4         {            c'8.(bes16)            aes8 ees d ees}
  \tag #'(v1 v2 v3) {            c'8. bes16             aes8 ees d ees}
  \tag #'dash       {\slurDashed f8(8) des'8 c4 16(16) \slurSolid} % C
  \tag #'(v2 v3 v4) {            f,4   des'8 c4 8                }
  \tag #'v1         {            f,8 8 des'8 c4 16 16            }
  \tag #'dash       {c8 bes c \slurDashed d(c) \slurSolid d}
  \tag #'(v1 v3 v4) {c8 bes c             d(c)            d}
  \tag #'v2         {c8 bes c             d c             d}
  ees4.~4 r8 \bar "||"
  ees,8.^\markup\smallCaps Refrain. f16 g8 aes bes c
  des8[ees] des c4 r8 |
  c8. bes16 aes8 \bar "|" \break 8 g aes |
  bes8 aes bes c4 r8 | c8. bes16 aes8 ees4 8 | % E
  \tag #'dash       {f8 8 des' c4 \slurDashed ees,16(16) \slurSolid} % F
  \tag #'v4         {f8 8 des' c4             ees,8                }
  \tag #'(v1 v2 v3) {f8 8 des' c4             ees,16 16            }
  f8. g16 aes8 bes4 c8 | aes4. 4
}

alto = \relative {
  \autoBeamOff \partial 8
  \tag #'dash       {\slurDashed ees'16(16) \slurSolid}
  \tag #'v1         {            ees8                 }
  \tag #'(v2 v3 v4) {            ees16 16             }
  \tag #'dash       {\slurDashed aes8.(ees16) \slurSolid 8}
  \tag #'(v2 v3 v4) {            aes8.(ees16)            8}
  \tag #'v1         {            aes8. ees16             8}
  \tag #'dash    {\slurDashed c(b) \slurSolid}
  \tag #'(v3 v4) {            c(b)           }
  \tag #'(v1 v2) {            c b            }
  \tag #'dash       {\slurDashed c16(16) \slurSolid}
  \tag #'(v1 v2 v3) {            c8                }
  \tag #'v4         {            c16 16            }
  \tag #'dash    {\slurDashed des8.(16) \slurSolid f8 ees4}
  \tag #'(v1 v2) {            des4                 f8 ees4}
  \tag #'(v3 v4) {            des8. 16             f8 ees4}
  \tag #'dash       {\slurDashed 16(16) \slurSolid}
  \tag #'v4         {            8                }
  \tag #'(v1 v2 v3) {            16 16            }
  \tag #'dash       {\slurDashed des8.(16) \slurSolid ees8 des4 ees8} % B
  \tag #'v3         {            des4      \slurSolid ees8 des4 ees8}
  \tag #'(v1 v2 v4) {            des8. 16             ees8 des4 ees8}
  \tag #'dash       {c4.~4 \slurDashed 16(16) \slurSolid}
  \tag #'(v1 v2 v3) {c4.~4             8                }
  \tag #'v4         {c4.~4             16 16            }
  \tag #'dash       {\slurDashed ees8.(des16) \slurSolid c8 8 b c}
  \tag #'v4         {            ees8.(des16)            c8 8 b c}
  \tag #'(v1 v2 v3) {            ees8. des16             c8 8 b c}
  \tag #'dash       {\slurDashed des8(8) \slurSolid f8 ees4} % C
  \tag #'(v2 v3 v4) {            des4               f8 ees4}
  \tag #'v1         {            des8 8             f8 ees4}
  \tag #'dash       {\slurDashed 16(16) \slurSolid}
  \tag #'(v2 v3 v4) {            8                }
  \tag #'v1         {            16 16            }
  \tag #'dash       {aes8 g aes8 \slurDashed 8(8) \slurSolid f8}
  \tag #'(v1 v3 v4) {aes8 g aes8             4    \slurSolid f8}
  \tag #'v2         {aes8 g aes8             8 8  \slurSolid f8}
  g4.~4 r8 |
  ees8. 16 des8 c ees ees | % D
  ees4 8 4 r8 |
  aes8. g16 f8 8 e f |
  f8 8 8 e4 r8 | % E
  ees8. des16 c8 4 8 |
  \tag #'dash       {des8 8 f ees4 \slurDashed 16(16) \slurSolid} % F
  \tag #'v4         {des8 8 f ees4             8                }
  \tag #'(v1 v2 v3) {des8 8 f ees4             16 16            }
  des8. 16 ees8 des4 ees8 |
  c4. 4
}

tenor = \relative {
  \autoBeamOff \partial 8
  \tag #'dash       {\slurDashed c'16(16) \slurSolid} % bar 0
  \tag #'v1         {            c8                 }
  \tag #'(v2 v3 v4) {            c16 16             }
  \tag #'dash       {\slurDashed ees8.(des16) \slurSolid} % bar 1
  \tag #'(v2 v3 v4) {            ees8.(des16)           }
  \tag #'v1         {            ees8. des16            }
  \tag #'dash    {c8 \slurDashed aes(aes) \slurSolid}
  \tag #'(v3 v4) {c8             aes4               }
  \tag #'(v1 v2) {c8             aes aes            }
  \tag #'dash       {\slurDashed aes16(aes) \slurSolid}
  \tag #'(v1 v2 v3) {            aes8                 }
  \tag #'v4         {            aes16 aes            }
  \tag #'dash    {\slurDashed aes8.(16) \slurSolid} % bar 2
  \tag #'(v1 v2) {            aes4                }
  \tag #'(v3 v4) {            aes8. 16            }
  \tag #'dash       {8 4 \slurDashed 16(16) \slurSolid}
  \tag #'v4         {8 4             8                }
  \tag #'(v1 v2 v3) {8 4             16 16            }
  \tag #'dash       {\slurDashed aes8.(bes16) \slurSolid aes8 f4 ees8} % B (bar 3)
  \tag #'v3         {            aes8.(bes16)            aes8 f4 ees8}
  \tag #'(v1 v2 v4) {            aes8. bes16             aes8 f4 ees8}
  \tag #'dash       {ees4.~4 \slurDashed aes16(16) \slurSolid} % bar 4
  \tag #'(v1 v2 v3) {ees4.~4             aes8                }
  \tag #'v4         {ees4.~4             aes16 16            }
  \tag #'dash       {\slurDashed aes8.(ees16) \slurSolid 8 aes8 8 8} % bar 5
  \tag #'v4         {            aes8.(ees16)            8 aes8 8 8}
  \tag #'(v1 v2 v3) {            aes8. ees16             8 aes8 8 8}
  \tag #'dash       {\slurDashed aes8(8) \slurSolid 8 4} % C (bar 6)
  \tag #'(v2 v3 v4) {            aes4               8 4}
  \tag #'v1         {            aes8 8             8 4}
  \tag #'dash       {\slurDashed 16(16) \slurSolid}
  \tag #'(v2 v3 v4) {            8                }
  \tag #'v1         {            16 16            }
  \tag #'dash       {c8 8 8 \slurDashed bes(bes) \slurSolid 8} % bar 7
  \tag #'(v1 v3 v4) {c8 8 8             bes4                8}
  \tag #'v2         {c8 8 8             bes bes8            8}
  bes4.~4 r8 |
  g8. aes16 bes8 aes g aes | % D
  bes8[c] bes aes4 r8 | c8. 16 8 8 8 8 |
  des8 aes f g4 r8 | % E
  aes8. ees16 8 aes4 8 |
  \tag #'dash       {aes8 8 8 4 \slurDashed 16(16) \slurSolid} % F
  \tag #'v4         {aes8 8 8 4             8                }
  \tag #'(v1 v2 v3) {aes8 8 8 4             16 16            }
  aes8. bes16 aes8 f4 ees8 |
  ees4. 4
}

bass = \relative {
  \autoBeamOff \partial 8
  \tag #'dash       {\slurDashed aes,16(16) \slurSolid} % bar 0
  \tag #'v1         {            aes8                 }
  \tag #'(v2 v3 v4) {            aes16  16            }
  \tag #'dash       {\slurDashed aes8.(16) \slurSolid 8} % bar 1
  \tag #'(v2 v3 v4) {            aes4                 8}
  \tag #'v1         {            aes8. 16             8}
  \tag #'dash    {\slurDashed 8(8) \slurSolid}
  \tag #'(v3 v4) {            4              }
  \tag #'(v1 v2) {            8 8            }
  \tag #'dash       {\slurDashed 16(16) \slurSolid}
  \tag #'(v1 v2 v3) {            8                }
  \tag #'v4         {            16 16            }
  \tag #'dash    {\slurDashed des8.(16) \slurSolid 8 aes4} % bar 2
  \tag #'(v1 v2) {            des4                 8 aes4}
  \tag #'(v3 v4) {            des8. 16             8 aes4}
  \tag #'dash       {\slurDashed c16(16) \slurSolid}
  \tag #'v4         {            c8                }
  \tag #'(v1 v2 v3) {            c16 16            }
  \tag #'dash       {\slurDashed des8.(16) \slurSolid c8 bes4 ees8} % B (bar 3)
  \tag #'v3         {            des4                 c8 bes4 ees8}
  \tag #'(v1 v2 v4) {            des8. 16             c8 bes4 ees8}
  \tag #'dash       {aes,4.~4 \slurDashed 16(16) \slurSolid} % bar 4
  \tag #'(v1 v2 v3) {aes 4.~4             8                }
  \tag #'v4         {aes 4.~4             16 16            }
  \tag #'dash       {\slurDashed aes8.(16) \slurSolid 8 8 8 8} % bar 5
  \tag #'v4         {            aes4                 8 8 8 8}
  \tag #'(v1 v2 v3) {            aes8. 16             8 8 8 8}
  \tag #'dash       {\slurDashed des8(8) \slurSolid 8 aes4} % C (bar 6)
  \tag #'(v2 v3 v4) {            des4               8 aes4}
  \tag #'v1         {            des8 8             8 aes4}
  \tag #'dash       {\slurDashed aes'16(16) \slurSolid}
  \tag #'(v2 v3 v4) {            aes 8                }
  \tag #'v1         {            aes 16 16            }
  \tag #'dash       {f8 8 8 \slurDashed bes,8(8) \slurSolid 8} % bar 7
  \tag #'(v1 v3 v4) {f8 8 8             bes4                8}
  \tag #'v2         {f8 8 8             bes8  8             8}
  ees4.~4 r8 |
  ees8. 16 8 8 8 8 | % D
  ees4 8 aes4 r8 |
  f8. 16 8 8 8 8 |
  des8 8 8 c4 r8 | % E
  aes8. 16 8 4 8
  \tag #'dash       {aes8 8 8 4 \slurDashed c16(16) \slurSolid} % F
  \tag #'v4         {aes8 8 8 4             c8                }
  \tag #'(v1 v2 v3) {aes8 8 8 4             c16 16            }
  des8. 16 c8 bes4 ees8 |
  aes,4. 4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"O" -- ver the "line!\"" hear the sweet re -- frain!
  An -- gels are chant -- ing the hea -- ven -- ly strain:
  "\"O" -- ver the "line\"—" Why should I re -- main,
  \nom With a \yesm step be -- tween me and Je -- sus!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, \nom ten -- der \yesm and \nom sweet was \yesm the Mas -- ter's voice
  \nom As He lov -- ing -- ly \yesm called to me:
  "\"Come" \nom o -- ver \yesm the line! it is \nom on -- ly \yesm a step—
  \nom I am \yesm wait -- ing, My child, for "thee!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  \nom "\"But" my \yesm sins are \nom ma -- ny, \yesm my faith is "small:\""
  \nom And the an -- swer \yesm came quick and clear:
  "\"Thou" \nom need -- est \yesm not trust in thy -- self at all;
  Step o -- ver the \nom line: I \yesm am "here!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  \nom "\"But" my \yesm flesh is "weak,\"" I \nom tear -- ful -- ly \yesm said,
  \nom "\"And" the \yesm way I can -- not see;
  I \nom fear if \yesm I try I may sad -- ly fail,
  And thus may dis -- hon -- our "Thee.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  \nom Ah, the \yesm world is cold, \nom And I can -- not \yesm go back;
  Press \nom for -- ward \yesm O sure -- ly must:
  \nom I will \yesm place my hand in His wound -- ed palm,
  Step o -- ver the line, and \markup\italic trust.
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  \set stanza = "4."
  "\"O" -- ver the "line\"" I \markup\italic will \markup\italic not re -- main,
  I'll cross it and go to Je -- sus!
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Oh, ten -- der and sweet was the Mas -- ter's voice
  As He lov -- ing -- ly called to me:
  "\"Come" o -- ver the line! it is on -- ly a step—
  I am wait -- ing, My child, for "thee!\""
  "\"O" -- ver the "line!\"" hear the sweet re -- frain!
  An -- gels are chant -- ing the hea -- ven -- ly strain:
  "\"O" -- ver the "line\"—" Why should I re -- main,
  With a step be -- tween me and Je -- sus!

  \set stanza = "2."
  "\"But" my sins are ma -- ny, my faith is "small:\""
  And the an -- swer came quick and clear:
  "\"Thou" need -- est not trust in thy -- self at all;
  Step o -- ver the line: I am "here!\""
  "\"O" -- ver the "line!\"" hear the sweet re -- frain!
  An -- gels are chant -- ing the hea -- ven -- ly strain:
  "\"O" -- ver the "line\"—" Why should I re -- main,
  With a step be -- tween me and Je -- sus!

  \set stanza = "3."
  "\"But" my flesh is "weak,\"" I tear -- ful -- ly said,
  "\"And" the way I can -- not see;
  I fear if I try I may sad -- ly fail,
  And thus may dis -- hon -- our "Thee.\""
  "\"O" -- ver the "line!\"" hear the sweet re -- frain!
  An -- gels are chant -- ing the hea -- ven -- ly strain:
  "\"O" -- ver the "line\"—" Why should I re -- main,
  With a step be -- tween me and Je -- sus!

  \set stanza = "4."
  Ah, the world is cold, And I can -- not go back;
  Press for -- ward O sure -- ly must:
  I will place my hand in His wound -- ed palm,
  Step o -- ver the line, and \markup\italic trust.
  "\"O" -- ver the "line!\"" hear the sweet re -- frain!
  An -- gels are chant -- ing the hea -- ven -- ly strain:
  "\"O" -- ver the "line\"" I \markup\italic will \markup\italic not re -- main,
  I'll cross it and go to Je -- sus!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " ten "der " "and " "sweet " "was " "the " Mas "ter's " "voice "
  "\nAs " "He " lov ing "ly " "called " "to " "me: "
  "\n\"Come " o "ver " "the " "line! " "it " "is " on "ly " "a " "step— "
  "\nI " "am " wait "ing, " "My " "child, " "for " "thee!\" "
  "\n\"O" "ver " "the " "line!\" " "hear " "the " "sweet " re "frain! "
  "\nAn" "gels " "are " chant "ing " "the " hea ven "ly " "strain: "
  "\n\"O" "ver " "the " "line\"— " "Why " "should " "I " re "main, "
  "\nWith " "a " "step " be "tween " "me " "and " Je "sus!\n"

  \set stanza = "2."
  "\n\"But " "my " "sins " "are " ma "ny, " "my " "faith " "is " "small:\" "
  "\nAnd " "the " an "swer " "came " "quick " "and " "clear: "
  "\n\"Thou " need "est " "not " "trust " "in " thy "self " "at " "all; "
  "\nStep " o "ver " "the " "line: " "I " "am " "here!\" "
  "\n\"O" "ver " "the " "line!\" " "hear " "the " "sweet " re "frain! "
  "\nAn" "gels " "are " chant "ing " "the " hea ven "ly " "strain: "
  "\n\"O" "ver " "the " "line\"— " "Why " "should " "I " re "main, "
  "\nWith " "a " "step " be "tween " "me " "and " Je "sus!\n"

  \set stanza = "3."
  "\n\"But " "my " "flesh " "is " "weak,\" " "I " tear ful "ly " "said, "
  "\n\"And " "the " "way " "I " can "not " "see; "
  "\nI " "fear " "if " "I " "try " "I " "may " sad "ly " "fail, "
  "\nAnd " "thus " "may " dis hon "our " "Thee.\" "
  "\n\"O" "ver " "the " "line!\" " "hear " "the " "sweet " re "frain! "
  "\nAn" "gels " "are " chant "ing " "the " hea ven "ly " "strain: "
  "\n\"O" "ver " "the " "line\"— " "Why " "should " "I " re "main, "
  "\nWith " "a " "step " be "tween " "me " "and " Je "sus!\n"

  \set stanza = "4."
  "\nAh, " "the " "world " "is " "cold, " "And " "I " can "not " "go " "back; "
  "\nPress " for "ward " "O " sure "ly " "must: "
  "\nI " "will " "place " "my " "hand " "in " "His " wound "ed " "palm, "
  "\nStep " o "ver " "the " "line, " "and " "trust. "
  "\n\"O" "ver " "the " "line!\" " "hear " "the " "sweet " re "frain! "
  "\nAn" "gels " "are " chant "ing " "the " hea ven "ly " "strain: "
  "\n\"O" "ver " "the " "line\" " "I " "will " "not " re "main, "
  "\nI'll " "cross " "it " "and " "go " "to " Je "sus!\n"
}
  
wordsMidiMen = \lyricmode {
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
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|." }
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
            \addlyrics \wordsMidiMen
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
              \keepWithTag #'v4 \soprano
            }
            \new Voice \partCombine { \global
                                      \keepWithTag #'v1 \soprano
                                      \keepWithTag #'v2 \soprano
                                      \keepWithTag #'v3 \soprano
                                      \keepWithTag #'v4 \soprano
                                      \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \keepWithTag #'v4 \alto \nl
              \bar "|." }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global
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
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
              \keepWithTag #'v4 \tenor
            }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
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
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
