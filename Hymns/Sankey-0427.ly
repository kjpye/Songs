\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Look, and thou shalt Live!"
  subtitle    = "Sankey No. 427"
  subsubtitle = "Sankey 880 No. 566"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Stockton."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
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
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s1*2 s2
  \mark \markup { \box "B" } s2 s1*2
  \mark \markup { \box "C" }    s1*4
  \mark \markup { \box "D" }    s1*3 s2
  \mark \markup { \box "E" } s2 s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 8. bes16 aes4 8. g16
  \tag #'dash    {f4 \slurDashed aes8(8) \slurSolid ees2}
  \tag #'(v2 v4) {f4             aes4               ees2}
  \tag #'(v1 v3) {f4             aes8 8             ees2}
  \tag #'dash    {c'4 8. des16 \bar "|" \break ees4 \slurDashed 8.(c16) \slurSolid}
  \tag #'(v2 v4) {c4  8. des16 \bar "|" \break ees4             8.(c16)           }
  \tag #'(v1 v3) {c4  8. des16 \bar "|" \break ees4             8. c16            }
  aes4 c bes2 % B
  \tag #'dash    {c4 8. bes16 aes4 \slurDashed aes8.(g16) \slurSolid}
  \tag #'(v2 v4) {c4 8. bes16 aes4             aes8.(g16)           }
  \tag #'(v1 v3) {c4 8. bes16 aes4             aes8. g16            }
  f4 aes ees2 % C
  c'4. aes8 c4 bes
  aes2. r4 \bar "||"
  aes4.^\markup\smallCaps Refrain. bes8 aes4 f
  ees4.(f8 aes4) r % D
  c4. des8 c4 aes
  bes4.(c8 bes4) r
  c4 8. bes16 \bar "|" \break aes4 8. g16
  f4 aes ees2
  c'4. aes8 c4 bes
  aes2. r4
}

alto = \relative {
  \autoBeamOff
  ees'4 8. des16 c4 ees8. 16
  \tag #'dash    {des4 \slurDashed 8(8) \slurSolid c2}
  \tag #'(v2 v4) {des4             4               c2}
  \tag #'(v1 v3) {des4             8 8             c2}
  \tag #'dash    {ees4 8. f16 ees4 \slurDashed 8.(16) \slurSolid}
  \tag #'(v2 v4) {ees4 8. f16 ees4             4                }
  \tag #'(v1 v3) {ees4 8. f16 ees4             8. 16            }
  ees4 4 2
  \tag #'dash    {ees4 8. des16 c4 \slurDashed ees8.(16) \slurSolid }
  \tag #'(v2 v4) {ees4 8. des16 c4 \slurDashed ees8.(16) \slurSolid }
  \tag #'(v1 v3) {ees4 8. des16 c4 \slurDashed ees8.(16) \slurSolid }
  des4 4 c2 % C
  ees4. c8 ees4 des
  c2. r4
  f4. 8 4 des
  c4.(des8 c4) r % D
  ees4. f8 ees4 4
  ees2. r4
  ees4 8. des16 c4 ees8. 16
  des4 4 c2 % E
  ees4. c8 ees4 des
  c2. r4
}

tenor = \relative {
  \autoBeamOff
  aes4 8. 16 4 8. 16
  \tag #'dash    {aes4 \slurDashed 8(8) \slurSolid 2}
  \tag #'(v2 v4) {aes4             4               2}
  \tag #'(v1 v3) {aes4             8 8             2}
  \tag #'dash    {aes4  8. bes16 c4 \slurDashed 8.(ees16) \slurSolid}
  \tag #'(v2 v4) {aes,4 8. bes16 c4             8.(ees16)           }
  \tag #'(v1 v3) {aes,4 8. bes16 c4             8. ees16            }
  c4 aes g2 % B
  \tag #'dash    {aes4 8. 16 4 \slurDashed 8.(16) \slurSolid}
  \tag #'(v2 v4) {aes4 8. 16 4             4                }
  \tag #'(v1 v3) {aes4 8. 16 4             8. 16            }
  aes4 4 2 % C
  aes4. 8 4 g
  aes2. r4
  aes4. 8 4 4
  aes2. r4 % D
  aes4. 8 4 4
  g4.(aes8 g4) r
  aes4 8. 16 4 8. 16
  aes4 4 2 % E
  aes4. 8 4 g
  aes2. r4
}

bass = \relative {
  \autoBeamOff
  aes,4 8. 16 4 c8. 16
  \tag #'dash    {d4  \slurDashed f8(8) \slurSolid aes2}
  \tag #'(v2 v4) {d,4             f                aes2}
  \tag #'(v1 v3) {d,4             f8 8             aes2}
  \tag #'dash    {aes4 8. 16 4 \slurDashed 8.(16) \slurSolid}
  \tag #'(v2 v4) {aes4 8. 16 4             4                }
  \tag #'(v1 v3) {aes4 8. 16 4             8. 16            }
  aes4 4 ees2 % B
  \tag #'dash    {aes,4 8. 16 4 \slurDashed c8.(16) \slurSolid}
  \tag #'(v2 v4) {aes4  8. 16 4             c                 }
  \tag #'(v1 v3) {aes4  8. 16 4             c8. 16            }
  d4 f aes2 % C
  ees4. 8 4 4
  aes,2. r4
  des4. 8 4 4
  aes2. r4 % D
  aes'4. 8 4 c,
  ees2. r4
  aes,4 8. 16 4 c8. 16
  des4 f aes2 % E
  ees4. 8 4 4
  aes,2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Look, and thou shalt live! __
  Look, and thou shalt live! __
  Look, to the cross where He died for thee:
  Look, and thou shalt live!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Look to the Sa -- viour, on Cal -- \nom va -- ry's \yesm tree—
  See how He suf -- \nom fered for \yesm you and me:
  Hark while He lov -- \nom ing -- ly \yesm calls to thee,
  "\"Look," and thou shalt "live!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Hast thou a sin -- bur -- dened soul to save?
  Life ev -- er last -- ing wouldst thou have?
  Je -- sus Him -- self a ran -- som gave:
  Look, and thou shalt live!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Look to the Sa -- viour who rose \nom from the \yesm tomb;
  Haste now to Him, \nom while there \yesm yet is room;
  His shin -- ing face \nom will dis -- \yesm pel thy gloom:
  Look, and thou shalt live!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Je -- sus on high lives to in -- ter -- cede,
  He knows the wea -- ry sin -- ner's need;
  Sure -- ly thy foot -- steps He will lead:
  Look, and thou shalt live!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Look " "to " "the " Sa "viour, " "on " Cal va "ry's " "tree— "
  "\nSee " "how " "He " suf "fered " "for " "you " "and " "me: "
  "\nHark " "while " "He " lov ing "ly " "calls " "to " "thee, "
  "\n\"Look, " "and " "thou " "shalt " "live!\" "
  "\nLook, " "and " "thou " "shalt " "live! " 
  "\nLook, " "and " "thou " "shalt " "live! " 
  "\nLook, " "to " "the " "cross " "where " "He " "died " "for " "thee: "
  "\nLook, " "and " "thou " "shalt " "live! "

  \set stanza = "2."
  "\nHast " "thou " "a " sin bur "dened " "soul " "to " "save? "
  "\nLife " ev "er " last "ing " "wouldst " "thou " "have? "
  "\nJe" "sus " Him "self " "a " ran "som " "gave: "
  "\nLook, " "and " "thou " "shalt " "live! "
  "\nLook, " "and " "thou " "shalt " "live! " 
  "\nLook, " "and " "thou " "shalt " "live! " 
  "\nLook, " "to " "the " "cross " "where " "He " "died " "for " "thee: "
  "\nLook, " "and " "thou " "shalt " "live! "

  \set stanza = "3."
  "\nLook " "to " "the " Sa "viour " "who " "rose " "from " "the " "tomb; "
  "\nHaste " "now " "to " "Him, " "while " "there " "yet " "is " "room; "
  "\nHis " shin "ing " "face " "will " dis "pel " "thy " "gloom: "
  "\nLook, " "and " "thou " "shalt " "live! "
  "\nLook, " "and " "thou " "shalt " "live! " 
  "\nLook, " "and " "thou " "shalt " "live! " 
  "\nLook, " "to " "the " "cross " "where " "He " "died " "for " "thee: "
  "\nLook, " "and " "thou " "shalt " "live! "

  \set stanza = "4."
  "\nJe" "sus " "on " "high " "lives " "to " in ter "cede, "
  "\nHe " "knows " "the " wea "ry " sin "ner's " "need; "
  "\nSure" "ly " "thy " foot "steps " "He " "will " "lead: "
  "\nLook, " "and " "thou " "shalt " "live! "
  "\nLook, " "and " "thou " "shalt " "live! " 
  "\nLook, " "and " "thou " "shalt " "live! " 
  "\nLook, " "to " "the " "cross " "where " "He " "died " "for " "thee: "
  "\nLook, " "and " "thou " "shalt " "live! "
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
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
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
