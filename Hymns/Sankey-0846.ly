\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Knolw He is Mine!"
  subtitle    = "Sankey No. 846"
  subsubtitle = "Sankey 880 No. 40"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "P. P. Bliss"
  meter       = \markup\smallCaps "11s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
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
  ees'4 | c' bes aes | 4. g8 f4 | f g aes | ees2 4 |
  ees4 g bes | des4. c8 bes4 | aes4 4 c |
  \tag #'dash    {bes2  \slurDashed ees,8(8) \slurSolid |}
  \tag #'(v1 v2) {bes'2             ees,4               |}
  \tag #'v3      {bes'2             ees,8 8             |}
  ees4 f g
  \tag #'dash    {\slurDashed aes4(4) ees8(8) \slurSolid |} % C
  \tag #'(v1 v2) {            aes2    ees8 8             |}
  \tag #'v3      {            aes4 4  ees4               |}
  aes4 bes c |
  \tag #'dash    {des2 \slurDashed 8(8) \slurSolid |}
  \tag #'v2      {des2             4               |}
  \tag #'(v1 v3) {des2             8 8             |}
  c4 ees4. f8 | ees4 c aes |
  c4 4 bes | aes2 % D
  \section \sectionLabel \markup\smallCaps Refrain.
  des4 | des f,4. 8 | 2 aes8 8 | 4 ees4. 8 |
  ees2 4 | aes4 bes c | des4. ees8 f4 | ees4. c8 bes4 | aes2
}

alto = \relative {
  \autoBeamOff
  c'4 | ees4 4 4 | f4. ees8 des4 | 4 4 4 | c2 4 |
  des4 bes ees | 4. 8 4 | 4 4 aes |
  \tag #'dash    {g2 \slurDashed ees8(8) \slurSolid |}
  \tag #'(v1 v2) {g2             ees4               |}
  \tag #'v3      {g2             ees8 8             |}
  ees4 d des |
  \tag #'dash    {\slurDashed c4(4) ees8(8) \slurSolid |} % C
  \tag #'(v1 v2) {            c2    ees8 8             |}
  \tag #'v3      {            c4 4  ees4               |}
  ees4 4 4 |
  \tag #'dash    {f2 \slurDashed 8(8) \slurSolid |}
  \tag #'v2      {f2             4               |}
  \tag #'(v1 v3) {f2             8 8             |}
  ees4 aes4. 8 | 4 4 4 |
  aes4 4 g | aes2 \section f4 | f des4. 8 | 2 8 8 | c4 4. 8 |
  c2 4 | ees4 4 4 | f4. aes8 4 | 4. 8 g4 | aes2
}

tenor = \relative {
  \autoBeamOff
  aes4 | 4 g aes | 4. 8 4 | 4 4 4 | 2 4 |
  g4 4 4 | bes4. aes8 g4 | aes c ees |
  \tag #'dash    {ees2 \slurDashed c8(8) \slurSolid |}
  \tag #'(v1 v2) {ees2             c4               |}
  \tag #'v3      {ees2             c8 8             |}
  c4 b bes |
  \tag #'dash    {\slurDashed aes4(4) g8(8) \slurSolid |} % C
  \tag #'(v1 v2) {            aes2    g8 8             |}
  \tag #'v3      {            aes4 4  g4               |}
  aes4 g aes |
  \tag #'dash    {aes2 \slurDashed 8(8) \slurSolid |}
  \tag #'v2      {aes2             4               |}
  \tag #'(v1 v3) {aes2             8 8             |}
  c4 4. des8 | c4 ees dis |
  ees4 4 des | c2 aes4 | 4 4. 8 | 2 f8 8 | ees4 aes4. 8 |
  aes2 4 | 4 g aes | 4. ees'8 des4 | c4. ees8 des4 | c2
}

bass = \relative {
  \autoBeamOff
  aes,4 | aes bes c | des4. 8 4 | 4 4 f | aes2 aes,4 |
  ees'4 4 4 | 4. 8 4 | c aes4 4 |
  \tag #'dash    {ees'2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v2) {ees2              4               |}
  \tag #'v3      {ees2              8 8             |}
  ees4 4 4 |
  \tag #'dash    {\slurDashed aes,4(4) ees'8(8) \slurSolid |} % C
  \tag #'(v1 v2) {            aes,2    ees'8 8             |}
  \tag #'v3      {            aes,4 4  ees'4               |}
  c4 ees aes |
  \tag #'dash    {des,2 \slurDashed 8(8) \slurSolid |}
  \tag #'v2      {des2              4               |}
  \tag #'(v1 v3) {des2              8 8             |}
  aes'4 4. 8 | 4 4 f |
  ees4 4 4 | aes,2 \section des4 | 4 4. 8 | 2 8 8 | aes4 4. 8 | % D
  aes2 4 | c ees aes | des,4. c8 des4 | ees4. 8 4 | aes,2
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  A long time I wan -- dered in dark -- ness and sin,
  And won -- dered if ev -- er the light would shine in;
  I heard Chris -- tian friends \nom speak of \yesm rap -- tures di -- vine,
  \nom And I \yesm \markup\italic wished— how I \markup\italic wished— that their Sa -- viour were mine.
  I \markup\italic wished He were mine,
  yes, I \markup\italic wished He were mine;
  I \markup\italic wished— how I \markup\italic wished— that their Sa -- viour were mine.
  
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I heard the glad gos -- pel of “good -- will to men”;
  I read “WHO -- SO -- EV -- ER” a -- gain and a -- gain;
  I said to my soul, \nom “Can that \yesm pro -- mise be thine?”
  And then be -- gan \markup\italic ho -- \markup\italic ping that Je -- sus was mine.
  I \markup\italic hoped He was mine, yes, I \markup\italic hoped He was mine;
  And then be -- gan \markup\italic ho -- \markup\italic ping that Je -- sus was mine.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, mer -- cy sur -- pri -- sing! He saves ev -- en me!
  “Thy por -- tion for ev -- er,” He says, “will I be;”
  On His word I am rest -- ing— as -- sur -- rance Di -- vine—
  I am “ho -- ping” no long -- er, I know He is mine,
  I know he is mine, yes, I know He is mine;
  I’m ho -- ping no long -- er, I know He is mine.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A " "long " "time " "I " wan "dered " "in " dark "ness " "and " "sin, "
  "\nAnd " won "dered " "if " ev "er " "the " "light " "would " "shine " "in; "
  "\nI " "heard " Chris "tian " "friends " "speak " "of " rap "tures " di "vine, "
  "\nAnd " "I " "wished— " "how " "I " "wished— " "that " "their " Sa "viour " "were " "mine. "
  "\nI " "wished " "He " "were " "mine, "
  "\nyes, " "I " "wished " "He " "were " "mine; "
  "\nI " "wished— " "how " "I " "wished— " "that " "their " Sa "viour " "were " "mine.\n"
  

  \set stanza = "2."
  "\nI " "heard " "the " "glad " gos "pel " "of " “good "will " "to " "men”; "
  "\nI " "read " “WHO SO EV "ER” " a "gain " "and " a "gain; "
  "\nI " "said " "to " "my " "soul, " "“Can " "that " pro "mise " "be " "thine?” "
  "\nAnd " "then " be "gan " ho "ping " "that " Je "sus " "was " "mine. "
  "\nI " "hoped " "He " "was " "mine, " "yes, " "I " "hoped " "He " "was " "mine; "
  "\nAnd " "then " be "gan " ho "ping " "that " Je "sus " "was " "mine.\n"

  \set stanza = "3."
  "\nOh, " mer "cy " sur pri "sing! " "He " "saves " ev "en " "me! "
  "\n“Thy " por "tion " "for " ev "er,” " "He " "says, " "“will " "I " "be;” "
  "\nOn " "His " "word " "I " "am " rest "ing— " as sur "rance " Di "vine— "
  "\nI " "am " “ho "ping” " "no " long "er, " "I " "know " "He " "is " "mine, "
  "\nI " "know " "he " "is " "mine, " "yes, " "I " "know " "He " "is " "mine; "
  "\nI’m " ho "ping " "no " long "er, " "I " "know " "He " "is " "mine. "
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
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

#(set-global-staff-size 18)

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
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
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
