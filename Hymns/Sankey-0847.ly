\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lion of Judah."
  subtitle    = "Sankey No. 847"
  subsubtitle = "C. C. No. 157"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Henry Tucker."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Henry Q. Wilson."
  meter       = \markup\smallCaps "11s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*4
  \textMark \markup { \box \bold "B" }    s2.*5
  \textMark \markup { \box \bold "C" }    s2.*5
  \textMark \markup { \box \bold "D" }    s2.*5
  \textMark \markup { \box \bold "E" }    s2.*4 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  a'8.[g16] | fis4 g a | b a a | d cis b |
  \tag #'dash       {b4(a) \slurDashed a8(b) \slurSolid |}
  \tag #'(v1 v2 v4) {b4(a)             a8(b)            |}
  \tag #'v3         {b4(a)             a8 b             |}
  a4 g4 8.[a16] | g4 fis4 4 | 4 e e | e2 fis8.[e16] | d4 fis a |
  b4 a a | d cis b |
  \tag #'dash       {b4(a) \slurDashed 8(8) \slurSolid | }
  \tag #'(v1 v3 v4) {b4(a)             4               | }
  \tag #'v2         {b4(a)             8 8             | }
  d4. cis8 d4 | b e d |
  cis4. b8 cis4 | d2
  \section \sectionLabel \markup\smallCaps Chorus.
  fis,8. e16 | d4 fis a | b a a | d cis b |
  b4(a) a | d4. cis8 d4 | b4 e d | cis4. b8 cis4 | d2
}

alto = \relative {
  \autoBeamOff
  fis'8.[e16] | d4 e fis | g fis4 4 | a a g |
  \tag #'dash       {g4(fis) \slurDashed fis8(g) \slurSolid | }
  \tag #'(v1 v2 v4) {g4(fis)             fis8(g)            | }
  \tag #'v3         {g4(fis)             fis8 g             | }
  ees4 4 8.[fis16] | e4 d d | d cis4 4 | 2 4 | d4 d fis |
  g4 fis4 4 | a a g |
  \tag #'dash       {g4(fis) \slurDashed fis8(8) \slurSolid | }
  \tag #'(v1 v3 v4) {g4(fis)             fis4               | }
  \tag #'v2         {g4(fis)             fis8 8             | }
  fis4. g8 a4 | g g e |
  g4. 8 4 | fis2 \section d8. cis16 | d4 d fis | g fis4 4 | 4 a g |
  g4(fis) 4 | 4. g8 a4 | g g b | g4. 8 4 | fis2
}

tenor = \relative {
  \autoBeamOff
  a4 | a a d | d d d | d d d |
  \tag #'dash       {d2 \slurDashed 8(8) \slurSolid | }
  \tag #'(v1 v2 v4) {d2             4               | }
  \tag #'v3         {d2             8 8             | }
  a4 a a | a a a | a a a | 2 8.[g16] | fis4 a d |
  d4 4 4 | d d d |
  \tag #'dash       {d2 \slurDashed 8(8) \slurSolid | }
  \tag #'(v1 v3 v4) {d2             4               | }
  \tag #'v2         {d2             8 8             | }
  a4. 8 d4 | d b b |
  a4. 8 4 | 2 \section 8. g16 | fis4 a d | d d d | a a b8[cis] |
  d2 4 | a4. 8 d4 | d b e | 4. 8 a,4 | 2
}

bass = \relative {
  \autoBeamOff
  d4 | d d d | d d d | fis4 4 g |
  \tag #'dash       {d2 \slurDashed 8(8) \slurSolid | }
  \tag #'(v1 v2 v4) {d2             4               | }
  \tag #'v3         {d2             8 8             | }
  cis4 4 a | d d d | a a a | 2 4 | d d d |
  d4 d d | fis4 4 g |
  \tag #'dash       {d2 \slurDashed 8(8) \slurSolid | }
  \tag #'(v1 v3 v4) {d2             4               | }
  \tag #'v2         {d2             8 8             | }
  d4. e8 fis4 | f f fis |
  a4. 8 a,4 | d2 \section 8. 16 | 4 4 4 | 4 4 4 | 4 4 4 |
  d2 4 | 4. e8 fis4 | g g gis | a4. 8 a,4 | d2
}

chorus = \lyricmode {
  For the Li -- on of Ju -- dah shall break ev -- ’ry chain,
  And give us the vic -- t’ry a -- gain and a -- gain.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  ’Twas Je -- sus, my Sa -- viour, who died on the tree,
  To o -- pen a foun -- tain for sin -- ners like me;
  His blood is that foun -- tain which par -- don be -- stows,
  And cleans -- es the foul -- est wher -- ev -- er it flows.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  And when I was will -- ing with all things to part,
  He gave me His bless -- ing, His love in my heart;
  So now I am joined with the con -- quer -- ing band
  \nom Who are \yesm march -- ing to glo -- ry at Je -- sus’ com -- mand.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Though round me the storms of ad -- ver -- si -- ty roll,
  \nom And the \yesm waves of de -- struc -- tion en -- com -- pass my soul;
  In vain this frail ves -- sel the tem -- pest shall toss—
  My hope is se -- cure through the blood of the cross.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And when with the ran -- somed, by Je -- sus, my Head,
  From foun -- tain to foun -- tain I then shall be led;
  I’ll fall at His feet amd His mer -- cy a -- dore,
  And sing Hal -- le -- lu -- jah to God ev -- er -- more.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "’Twas " Je "sus, " "my " Sa "viour, " "who " "died " "on " "the " "tree, "
  "\nTo " o "pen " "a " foun "tain " "for " sin "ners " "like " "me; "
  "\nHis " "blood " "is " "that " foun "tain " "which " par "don " be "stows, "
  "\nAnd " cleans "es " "the " foul "est " wher ev "er " "it " "flows. "
  "\nFor " "the " Li "on " "of " Ju "dah " "shall " "break " ev "’ry " "chain, "
  "\nAnd " "give " "us " "the " vic "t’ry " a "gain " "and " a "gain.\n"

  \set stanza = "2."
  "\nAnd " "when " "I " "was " will "ing " "with " "all " "things " "to " "part, "
  "\nHe " "gave " "me " "His " bless "ing, " "His " "love " "in " "my " "heart; "
  "\nSo " "now " "I " "am " "joined " "with " "the " con quer "ing " "band "
  "\nWho " "are " march "ing " "to " glo "ry " "at " Je "sus’ " com "mand. "
  "\nFor " "the " Li "on " "of " Ju "dah " "shall " "break " ev "’ry " "chain, "
  "\nAnd " "give " "us " "the " vic "t’ry " a "gain " "and " a "gain.\n"

  \set stanza = "3."
  "\nThough " "round " "me " "the " "storms " "of " ad ver si "ty " "roll, "
  "\nAnd " "the " "waves " "of " de struc "tion " en com "pass " "my " "soul; "
  "\nIn " "vain " "this " "frail " ves "sel " "the " tem "pest " "shall " "toss— "
  "\nMy " "hope " "is " se "cure " "through " "the " "blood " "of " "the " "cross. "
  "\nFor " "the " Li "on " "of " Ju "dah " "shall " "break " ev "’ry " "chain, "
  "\nAnd " "give " "us " "the " vic "t’ry " a "gain " "and " a "gain.\n"

  \set stanza = "4."
  "\nAnd " "when " "with " "the " ran "somed, " "by " Je "sus, " "my " "Head, "
  "\nFrom " foun "tain " "to " foun "tain " "I " "then " "shall " "be " "led; "
  "\nI’ll " "fall " "at " "His " "feet " "amd " "His " mer "cy " a "dore, "
  "\nAnd " "sing " Hal le lu "jah " "to " "God " ev er "more. "
  "\nFor " "the " Li "on " "of " Ju "dah " "shall " "break " ev "’ry " "chain, "
  "\nAnd " "give " "us " "the " vic "t’ry " a "gain " "and " a "gain. "
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
    \midi {}
  }
}

#(set-global-staff-size 19)

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
      \context {
        \Staff \RemoveAllEmptyStaves
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
