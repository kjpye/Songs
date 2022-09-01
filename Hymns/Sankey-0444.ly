\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Father's House."
  subtitle    = "Sankey No. 444"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. O. Cushing."
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
  \mark \markup { \box "A" } s8  s2.*2 s4.
  \mark \markup { \box "B" } s4. s2.*2 s4. s4
  \mark \markup { \box "C" } s8  s2.*3
  \mark \markup { \box "D" }     s2.*3 s4.
  \mark \markup { \box "E" } s4. s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'8
  \tag #'dash       {\slurDashed bes8(a) \slurSolid bes c bes g}
  \tag #'(v1 v3 v4) {            bes8(a)            bes c bes g}
  \tag #'v2         {            bes8 a             bes c bes g}
  g4 f8 ees4 8
  \tag #'dash       {\slurDashed e8(aes) \slurSolid c \bar "|" \break ees8[d] c}
  \tag #'(v1 v3 v4) {           e,8(aes)            c \bar "|" \break ees8[d] c}
  \tag #'v2         {           e,8 aes             c \bar "|" \break ees8[d] c}
  bes4.~4 8 % B
  bes8[a] bes c bes g
  g4 f8 ees4 \bar "|" \break c'16 16
  bes4. d, % C
  ees4.~4 \bar "||" 8^\markup\smallCaps Chorus.
  ees8 aes c ees[d] c
  bes4.~4 g8 % D
  f8[bes] d8 4 c8
  bes4.~4 8
  ees4 bes8 \bar "|" \break bes8 aes g
  c4 8 bes c ees % E
  g,4. f
  ees4.~4
}

alto = \relative {
  \autoBeamOff
  ees'8
  \tag #'dash       {\slurDashed ees8(8) \slurSolid 8 8 8 8}
  \tag #'(v1 v3 v4) {            ees4               8 8 8 8}
  \tag #'v2         {            ees8 8             8 8 8 8}
  ees4 d8 ees4 des8
  \tag #'dash       {\slurDashed c8(8) \slurSolid ees8 4 8}
  \tag #'(v1 v3 v4) {            c4               ees8 4 8}
  \tag #'v2         {            c8 8             ees8 4 8}
  ees4.~4 8 % B
  ees4 8 8 8 8
  ees4 d8 ees4 16 16
  ees4. bes % C
  bes4.~4 8
  c8 ees aes c[bes] aes
  g4.~4 ees8 % D
  d4 f8 4 ees8
  d8(f ees d4) f8
  ees4 8 8 8 8
  ees4 8 8 8 8 % E
  ees4. d
  ees4.~4
}

tenor = \relative {
  \autoBeamOff
  g8
  \tag #'dash       {\slurDashed g8(fis) \slurSolid g aes g bes}
  \tag #'(v1 v3 v4) {            g8(fis)            g aes g bes}
  \tag #'v2         {            g8 fis             g aes g bes}
  bes4 aes8 g4 8
  \tag #'dash       {\slurDashed aes8(8) \slurSolid 8 c[bes] aes}
  \tag #'(v1 v3 v4) {            aes4               8 c[bes] aes}
  \tag #'v2         {            aes8 8             8 c[bes] aes}
  g4.~4 8 % B
  g8[fis] g aes g bes
  bes4 aes8 g4 aes16 16
  g4. aes % C
  g4.~4 8
  aes8 c ees c[d] ees
  ees4.~4 bes8 % D
  bes8[f] bes8 4 a8
  bes8(aes g f4) aes8
  g4 8 8 c bes
  aes4 8 bes g aes % E
  bes4. aes
  g4.~4
}

bass = \relative {
  \autoBeamOff
  ees8
  \tag #'dash       {\slurDashed e8(8) \slurSolid 8 8 8 8}
  \tag #'(v1 v3 v4) {            e4               8 8 8 8}
  \tag #'v2         {            e8 8             8 8 8 8}
  bes4 8 ees4 8
  \tag #'dash       {\slurDashed aes,8(8) \slurSolid 8 4 c8}
  \tag #'(v1 v3 v4) {            aes4                8 4 c8}
  \tag #'v2         {            aes8 8              8 4 c8}
  ees4.~4 8 % B
  ees4 8 8 8 8
  bes4 8 c4 aes16 16
  bes4. 4. % C
  ees4.~4 8
  aes,8 8 8 4 c8
  ees4.~4 8 % D
  f4 8 4 8
  bes,4.~4 d8
  ees4 8 8 8 8
  aes4 8 g ees c % E
  bes4. 4.
  ees4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Then come to the Fa -- ther's home;
  No long -- er sad -- ly roam: __
  There's joy and rest for the wea -- ry breast
  In the Fa -- ther's home.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O wan -- d'rer, come to the Fa -- ther's home!
  Why wilt thou fur -- ther roam?
  There's joy and rest for the wea -- ry breast
  In the Fa -- ther's home.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Why \nom lin -- ger \yesm a -- way on the moun -- tains cold?
  Why \nom friend -- less \yesm and hope -- less roam?
  There's bread to spare, and there's room for all,
  In the Fa -- ther's home.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O come, and taste of the Fa -- ther's love!
  Re -- turn, no more to roam;
  For loved ones wait at the gol -- den gate
  Of the Fa -- ther's home.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Then come and rest in your Fa -- ther's house,
  Be -- neath its shel -- tering dome;
  There's jpy and peace that shall ne -- ver cease
  In the Fa -- ther's home.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " wan "d'rer, " "come " "to " "the " Fa "ther's " "home! "
  "\nWhy " "wilt " "thou " fur "ther " "roam? "
  "\nThere's " "joy " "and " "rest " "for " "the " wea "ry " "breast "
  "\nIn " "the " Fa "ther's " "home. "
  "\nThen " "come " "to " "the " Fa "ther's " "home; "
  "\nNo " long "er " sad "ly " "roam: " 
  "\nThere's " "joy " "and " "rest " "for " "the " wea "ry " "breast "
  "\nIn " "the " Fa "ther's " "home.\n"

  \set stanza = "2."
  "\nWhy " lin "ger " a "way " "on " "the " moun "tains " "cold? "
  "\nWhy " friend "less " "and " hope "less " "roam? "
  "\nThere's " "bread " "to " "spare, " "and " "there's " "room " "for " "all, "
  "\nIn " "the " Fa "ther's " "home. "
  "\nThen " "come " "to " "the " Fa "ther's " "home; "
  "\nNo " long "er " sad "ly " "roam: " 
  "\nThere's " "joy " "and " "rest " "for " "the " wea "ry " "breast "
  "\nIn " "the " Fa "ther's " "home.\n"

  \set stanza = "3."
  "\nO " "come, " "and " "taste " "of " "the " Fa "ther's " "love! "
  "\nRe" "turn, " "no " "more " "to " "roam; "
  "\nFor " "loved " "ones " "wait " "at " "the " gol "den " "gate "
  "\nOf " "the " Fa "ther's " "home. "
  "\nThen " "come " "to " "the " Fa "ther's " "home; "
  "\nNo " long "er " sad "ly " "roam: " 
  "\nThere's " "joy " "and " "rest " "for " "the " wea "ry " "breast "
  "\nIn " "the " Fa "ther's " "home.\n"

  \set stanza = "4."
  "\nThen " "come " "and " "rest " "in " "your " Fa "ther's " "house, "
  "\nBe" "neath " "its " shel "tering " "dome; "
  "\nThere's " "jpy " "and " "peace " "that " "shall " ne "ver " "cease "
  "\nIn " "the " Fa "ther's " "home. "
  "\nThen " "come " "to " "the " Fa "ther's " "home; "
  "\nNo " long "er " sad "ly " "roam: " 
  "\nThere's " "joy " "and " "rest " "for " "the " wea "ry " "breast "
  "\nIn " "the " Fa "ther's " "home. "
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
            \new NullVoice = "aligner" {\keepWithTag #'dash \soprano}
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
