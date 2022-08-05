\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Where will you spend Eternity?"
  subtitle    = "Sankey No. 439"
  subsubtitle = "C. C. No. 22"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Andrew Sherwood."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s2.*4
  \mark \markup { \box "B" }    s2.*4
  \mark \markup { \box "C" }    s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'4^\markup\italic Slowly. g16 a b4 8
  c4 8 b4 8
  a4 fis8 g4 fis8
  g4.~4.
  a4 8 8 b c % B
  c4 b8 4.
  \tag #'dash    {\slurDashed b8(8) 8 \slurSolid}
  \tag #'(v1 v2) {            b4    8           }
  \tag #'(v3 v4) {            b8 8  8           }
  \tag #'dash    {\slurDashed d8(c8) 8 \slurSolid}
  \tag #'(v1 v3) {            d8(c8) 8           }
  \tag #'(v2 v4) {            d8 c8  8           }
  b4 a8 4.
  \tag #'dash    {\slurDashed b8(8) 8 \slurSolid} % C
  \tag #'(v1 v4) {            b4    8           }
  \tag #'(v2 v3) {            b8 8  8           }
  \tag #'dash    {\slurDashed c8(b8) a8 \slurSolid}
  \tag #'(v2 v3) {            c8(b8) a8           }
  \tag #'(v1 v4) {            c8 b8  a8           }
  g4 d8 e4 g8
  b4. a
  g4.~4 \bar "||" \break b8^\markup\smallCaps Refrain.
  b4\fermata g8 4\fermata b8 % D
  b4\fermata g8 4.\fermata
  g4. 4 c8
  b4. ais
  b4.~4 g8
  g4.~4.
}

alto = \relative {
  \autoBeamOff
  g'4 d16 16 g4 8
  g4 8 4 d8
  e4 8 d4 8
  d4.~4.
  fis4 8 8 g a % B
  a4 g8 4.
  \tag #'dash    {\slurDashed g8(8) 8 \slurSolid}
  \tag #'(v1 v2) {            g4    8           }
  \tag #'(v3 v4) {            g8 8  8           }
  \tag #'dash    {\slurDashed b8(a8) g8 \slurSolid}
  \tag #'(v1 v3) {            b8(a8) g8           }
  \tag #'(v2 v4) {            b8 a8  g8           }
  g4 8 fis4.
  \tag #'dash    {\slurDashed d8(8) 8 \slurSolid} % C
  \tag #'(v1 v4) {            d4    8           }
  \tag #'(v2 v3) {            d8 8  8           }
  \tag #'dash    {\slurDashed e8(d8) d8 \slurSolid}
  \tag #'(v2 v3) {            e8(d8) d8           }
  \tag #'(v1 v4) {            e8 d8  d8           }
  d4 8 c4 e8
  d4. c
  b4.~4 g'8
  g4\fermata d8 4\fermata 8 % D
  d4\fermata b8 4.\fermata
  c4. e4 <c e>8
  d4. cis4.
  d4.~4 b8
  b4.~4.
}

tenor = \relative {
  \autoBeamOff
  d'4 b16 c d4 8
  e4 ees8 d4 8
  c4 g8 b4 c8
  b4.~4.
  b4 8 8 8 8 % B
  b4 8 4.
  \tag #'dash    {\slurDashed d8(8) 8 \slurSolid}
  \tag #'(v1 v2) {            d4    8           }
  \tag #'(v3 v4) {            d8 8  8           }
  \tag #'dash    {\slurDashed d8(8) 8 \slurSolid}
  \tag #'(v1 v3) {            d8(8) 8           }
  \tag #'(v2 v4) {            d8 8  8           }
  cis4 8 d4.
  \tag #'dash    {\slurDashed g,8(8) 8 \slurSolid} % C
  \tag #'(v1 v4) {            g4     8           }
  \tag #'(v2 v3) {            g8  8  8           }
  \tag #'dash    {\slurDashed g8(8)  fis8 \slurSolid}
  \tag #'(v2 v3) {            g8(8)  fis8           }
  \tag #'(v1 v4) {            g8 8   fis8           }
  g4 8 4 8
  g4. fis
  g4.~4 d'8
  d4\fermata b8 4\fermata g8 % D
  g4\fermata d8 4.\fermata
  e4. g4 8
  g4. 4.
  g4.~4 d8
  d4.~4.
}

bass = \relative {
  \autoBeamOff
  g4 16 16 4 8
  g4 8 4 8
  c,4 8 d4 8
  g,4.~4.
  d'4 8 8 8 8 % B
  g4 8 4.
  \tag #'dash    {\slurDashed g8(8) 8 \slurSolid}
  \tag #'(v1 v2) {            g4    8           }
  \tag #'(v3 v4) {            g8 8  8           }
  \tag #'dash    {\slurDashed g8(8) 8 \slurSolid}
  \tag #'(v1 v3) {            g8(8) 8           }
  \tag #'(v2 v4) {            g8 8  8           }
  e4 a,8 d4.
  \tag #'dash    {\slurDashed g8(8) 8 \slurSolid} % C
  \tag #'(v1 v4) {            g4     8           }
  \tag #'(v2 v3) {            g8  8  8           }
  \tag #'dash    {\slurDashed g,8(8) a8 \slurSolid}
  \tag #'(v2 v3) {            g8(8)  a8           }
  \tag #'(v1 v4) {            g8 8   a8           }
  b4 8 c4 8
  d4. 4.
  g,4.~4 g'8
  g4\fermata 8 4\fermata g,8 % D
  g4\fermata 8 4.
  c4. 4 e8
  g4. ees
  d4.~4 g,8
  g4.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  E -- ter -- ni -- ty,
  E -- ter -- ni -- ty,
  Where will you spend E -- ter -- ni -- ty?
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Where will you spend e -- ter -- ni -- ty—
  Those years that have no end?
  Will it be in that bet -- ter land?
  Will it be at God's right hand?
  Will it \nom be with \yesm the an -- gel band,
  The an -- gel hand?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Where will you spend e -- ter -- ni -- ty—
  Those years that have no end?
  Will it be where the an -- gels sing?
  Will it \nom be with \yesm the glo -- rious King?
  \nom What a \yesm sub -- lime and sol -- emn thing,
  A sol -- emn thing!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Where will you spend e -- ter -- ni -- ty—
  Those years that have no end?
  Will it be where you are de -- barred
  \nom Ev -- er \yesm to know and see the Lord?
  \nom Ev -- er \yesm to have His great re -- ward,
  His great re -- ward?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Where will you spend e -- ter -- ni -- ty—
  Those years that have no end?
  Will it be on the gold -- en shore,
  \nom Safe with the friends that have \yesm gone be -- fore?
  Safe and \nom hap -- py for ev -- \yesm er -- more,
  For ev -- er -- more?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Where " "will " "you " "spend " e ter ni "ty— "
  "\nThose " "years " "that " "have " "no " "end? "
  "\nWill " "it " "be " "in " "that " bet "ter " "land? "
  "\nWill " "it " "be " "at " "God's " "right " "hand? "
  "\nWill " "it " "be " "with " "the " an "gel " "band, "
  "\nThe " an "gel " "hand? "
  "\nE" ter ni "ty, "
  "\nE" ter ni "ty, "
  "\nWhere " "will " "you " "spend " E ter ni "ty?\n"

  \set stanza = "2."
  "\nWhere " "will " "you " "spend " e ter ni "ty— "
  "\nThose " "years " "that " "have " "no " "end? "
  "\nWill " "it " "be " "where " "the " an "gels " "sing? "
  "\nWill " "it " "be " "with " "the " glo "rious " "King? "
  "\nWhat " "a " sub "lime " "and " sol "emn " "thing, "
  "\nA " sol "emn " "thing! "
  "\nE" ter ni "ty, "
  "\nE" ter ni "ty, "
  "\nWhere " "will " "you " "spend " E ter ni "ty?\n"

  \set stanza = "3."
  "\nWhere " "will " "you " "spend " e ter ni "ty— "
  "\nThose " "years " "that " "have " "no " "end? "
  "\nWill " "it " "be " "where " "you " "are " de "barred "
  "\nEv" "er " "to " "know " "and " "see " "the " "Lord? "
  "\nEv" "er " "to " "have " "His " "great " re "ward, "
  "\nHis " "great " re "ward? "
  "\nE" ter ni "ty, "
  "\nE" ter ni "ty, "
  "\nWhere " "will " "you " "spend " E ter ni "ty?\n"

  \set stanza = "4."
  "\nWhere " "will " "you " "spend " e ter ni "ty— "
  "\nThose " "years " "that " "have " "no " "end? "
  "\nWill " "it " "be " "on " "the " gold "en " "shore, "
  "\nSafe " "with " "the " "friends " "that " "have " "gone " be "fore? "
  "\nSafe " "and " hap "py " "for " ev er "more, "
  "\nFor " ev er "more? "
  "\nE" ter ni "ty, "
  "\nE" ter ni "ty, "
  "\nWhere " "will " "you " "spend " E ter ni "ty?"
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
            \new Voice \partCombine { \global \keepWithTag #'dash \soprano \bar "|." }
            { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \keepWithTag #'dash \tenor }
            { \global \keepWithTag #'dash \bass }
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
