\version "2.25.17"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Will youy Anchor Hold?"
  subtitle    = "Sankey No. 879"
  subsubtitle = "N. H. No. 128"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Priscilla J. Owens."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*3
  \textMark \markup { \box \bold "D" }    s1*4
  \textMark \markup { \box \bold "E" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  f'8. g16 | a4 f d g8. 16 |
  \tag #'dash       {f4 e f \slurDashed a8.(16) \slurSolid | }
  \tag #'v4         {f4 e f             a                  | }
  \tag #'(v1 v2 v3) {f4 e f             a8. 16             | }
  \tag #'dash    {\slurDashed g8(8) 4 c e,8(f) \slurSolid | }
  \tag #'v1      {            g4    4 c e,8(f)            | }
  \tag #'(v2 v3) {            g4    4 c e,8 f             | }
  \tag #'v4      {            g8 8  4 c e,8 f             | }
  e4 d c4 8. 16 | f4 a g c,8. 16 |
  g'4 bes a f8. a16 |
  \tag #'dash       {c4 4 8[bes] \slurDashed f8(g) \slurSolid | }
  \tag #'(v1 v3 v4) {c4 4 8[bes]             f8(g)            | }
  \tag #'v2         {c4 4 8[bes]             f8 g             | }
  a4 g f2 |
  \section \sectionLabel \markup\smallCaps Chorus.
  c'4 8. 16 8 4 8 | d4 c4 2 | a4 8 8 c4 8. a16 | f4 a g2 |
  c8 8 8. 16 4 a | bes c d2 | c8 8 a f c4 bes'8. 16 | a4 g f\fermata
}

alto = \relative {
  c'8. 16 | f4 c d4 8. 16 |
  \tag #'dash       {c4 4 4 \slurDashed f8.(16) \slurSolid | }
  \tag #'v4         {c4 4 4             f4                 | }
  \tag #'(v1 v2 v3) {c4 4 4             f8. 16             | }
  \tag #'dash    {\slurDashed e8(8) 4 4 c8(d) \slurSolid | }
  \tag #'v1      {            e4    4 4 c8(d)            | }
  \tag #'(v2 v3) {            e4    4 4 c8 d             | }
  \tag #'v4      {            e8 8  4 4 c8 d             | }
  c4 b c4 8. 16 | c4 f e c8. 16 |
  e4 g f c8. f16 |
  \tag #'dash       {f4 ees d \slurDashed f8(8) \slurSolid |}
  \tag #'(v1 v3 v4) {f4 ees d             f4               |}
  \tag #'v2         {f4 ees d             f8 8             |}
  f4 e c2 \section
  f4 8. 16 8 4 8 | 4 4 2 | 4 8 8 g4 8. f16 | 4 4 e2 |
  f8 8 8. 16 4 4 | 4 4 2 | c8 8 a' f c4 f8. 16 | 4 e c
}

tenor = \relative {
  a8. bes16 | c4 a f bes8. 16 |
  \tag #'dash       {a4 g a \slurDashed c8.(16) \slurSolid | }
  \tag #'v4         {a4 g a             c4                 | }
  \tag #'(v1 v2 v3) {a4 g a             c8. 16             | }
  \tag #'dash    {\slurDashed c8(8) 4 g4 8(a) \slurSolid | }
  \tag #'v1      {            c4    4 g4 8(a)            | }
  \tag #'(v2 v3) {            c4    4 g4 8 a             | }
  \tag #'v4      {            c8 8  4 g4 8 a             | }
  g4 f e bes'8. 16 | a4 c4 4 8. 16 |
  c4 4 4 a8. c16 |
  \tag #'dash       {a4 4 f \slurDashed d'8(8) \slurSolid | }
  \tag #'(v1 v3 v4) {a4 4 f             d'4               | }
  \tag #'v2         {a4 4 f             d'8 8             | }
  c4 bes a2 | \section
  a4 8. 16 8 4 8 | bes4 a4 2 | c4 8 8 a4 c8. 16 | c4 4 2 |
  a8 8 8. 16 4 c | bes a bes2 | c8 8 a f c4 d'8. 16 | c4 bes a 
}

bass = \relative {
  f8. 16 | 4 4 bes,4 8. 16 |
  \tag #'dash       {c4 c f4 \slurDashed 8.(16) \slurSolid | }
  \tag #'v4         {c4 c f4             4                 | }
  \tag #'(v1 v2 v3) {c4 c f4             8. 16             | }
  \tag #'dash    { \slurDashed c8(8) 4 4 8(f) \slurSolid | }
  \tag #'v1      {             c4    4 4 8(f)            | }
  \tag #'(v2 v3) {             c4    4 4 8 f             | }
  \tag #'v4      {             c8 8  4 4 8 f             | }
  g4 g, c e8. 16 | f4 4 c4 8. 16 |
  c4 4 f4 8. 16 |
  \tag #'dash       {f4  4 bes,4 \slurDashed 8(8) \slurSolid | }
  \tag #'(v1 v3 v4) {f'4 4 bes,4             8(8)            | }
  \tag #'v2         {f'4 4 bes,4             8(8)            | }
  c4 4 f2 \section |
  f4 8. 16 8 4 8 | 4 4 2 | 4 8 8 4 8. 16 | a4 f c2 |
  f8 8 8. 16 4 ees | d c bes2 | <<{c'8 8 a f} \new Voice {\tiny \vf c8 8 a f}>> c'4 bes8. 16 | c4 4 \chord <f, f'>_\fermata
}

chorus = \lyricmode {
  We have an an -- chor that keeps the soul
  Stead -- fast and sure while the bil -- lows roll;
  Fas -- ten’d to the Rock which can -- not move,
  Groun -- ded firm and deep in the Sa -- viour’s love!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Will your an -- chor hold in the storms of life?—
  \nom When the \yesm clouds un -- fold their wings of strife;
  When the strong tides lift and the ca -- bles strain,
  Will your an -- chor drift, or __ firm re -- main?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Will your an -- chor hold in the straits of fear?—
  \nom When the \yesm break -- ers roar \nom and the \yesm reef is near;
  While the sur -- ges rave, and the wild winds blow,
  Shall the an -- gry waves \nom then your \yesm bark o’er -- flow?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Will your an -- chor hold in the floods of death.
  \nom When the \yesm wa -- ters cold \nom chill your \yesm la -- test breath?
  on the ris -- ing tide you can nev -- er fail,
  While your an -- chor holds with -- in the vail.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Will your eyes be -- hold thro’ the morn -- ing light
  The \nom ci -- ty \yesm of gold, \nom and the \yesm har -- bour bright?—
  Will you an -- chor safe by the heav’n -- ly shore,
  When life’s storms are past for ev -- er -- more.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Will " "your " an "chor " "hold " "in " "the " "storms " "of " "life?— "
  "\nWhen " "the " "clouds " un "fold " "their " "wings " "of " "strife; "
  "\nWhen " "the " "strong " "tides " "lift " "and " "the " ca "bles " "strain, "
  "\nWill " "your " an "chor " "drift, " "or "  "firm " re "main? "
  "\nWe " "have " "an " an "chor " "that " "keeps " "the " "soul "
  "\nStead" "fast " "and " "sure " "while " "the " bil "lows " "roll; "
  "\nFas" "ten’d " "to " "the " "Rock " "which " can "not " "move, "
  "\nGroun" "ded " "firm " "and " "deep " "in " "the " Sa "viour’s " "love!\n"

  \set stanza = "2."
  "\nWill " "your " an "chor " "hold " "in " "the " "straits " "of " "fear?— "
  "\nWhen " "the " break "ers " "roar " "and " "the " "reef " "is " "near; "
  "\nWhile " "the " sur "ges " "rave, " "and " "the " "wild " "winds " "blow, "
  "\nShall " "the " an "gry " "waves " "then " "your " "bark " o’er "flow? "
  "\nWe " "have " "an " an "chor " "that " "keeps " "the " "soul "
  "\nStead" "fast " "and " "sure " "while " "the " bil "lows " "roll; "
  "\nFas" "ten’d " "to " "the " "Rock " "which " can "not " "move, "
  "\nGroun" "ded " "firm " "and " "deep " "in " "the " Sa "viour’s " "love!\n"

  \set stanza = "3."
  "\nWill " "your " an "chor " "hold " "in " "the " "floods " "of " "death. "
  "\nWhen " "the " wa "ters " "cold " "chill " "your " la "test " "breath? "
  "\non " "the " ris "ing " "tide " "you " "can " nev "er " "fail, "
  "\nWhile " "your " an "chor " "holds " with "in " "the " "vail. "
  "\nWe " "have " "an " an "chor " "that " "keeps " "the " "soul "
  "\nStead" "fast " "and " "sure " "while " "the " bil "lows " "roll; "
  "\nFas" "ten’d " "to " "the " "Rock " "which " can "not " "move, "
  "\nGroun" "ded " "firm " "and " "deep " "in " "the " Sa "viour’s " "love!\n"

  \set stanza = "4."
  "\nWill " "your " "eyes " be "hold " "thro’ " "the " morn "ing " "light "
  "\nThe " ci "ty " "of " "gold, " "and " "the " har "bour " "bright?— "
  "\nWill " "you " an "chor " "safe " "by " "the " heav’n "ly " "shore, "
  "\nWhen " "life’s " "storms " "are " "past " "for " ev er "more. "
  "\nWe " "have " "an " an "chor " "that " "keeps " "the " "soul "
  "\nStead" "fast " "and " "sure " "while " "the " bil "lows " "roll; "
  "\nFas" "ten’d " "to " "the " "Rock " "which " can "not " "move, "
  "\nGroun" "ded " "firm " "and " "deep " "in " "the " Sa "viour’s " "love! "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
