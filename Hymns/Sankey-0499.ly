\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Shepherd True."
  subtitle    = "Sankey No. 499"
% subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "F. W. Gaber," alt.}
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
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
  \mark \markup { \box "E" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed aes'8(bes) \slurSolid |}
  \tag #'(v2 v3 v4) {            aes8 (bes)            |}
  \tag #'v1         {            aes8  bes             |}
  c4 4 4 4 |
  \tag #'dash       {4 2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v2 v3 v4) {4 2             4               |}
  \tag #'v1         {4 2             8 8             |}
  4 bes aes bes |
  \tag #'dash    {c  aes2 \bar "|" \break \slurDashed 8(8) \slurSolid |}
  \tag #'(v2 v3) {c4 aes2 \bar "|" \break             4               |}
  \tag #'(v1 v4) {c  aes2 \bar "|" \break             8 8             |}
  aes4 4 des aes | % B
  \tag #'dash    {c4 2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v2 v3) {c4 2             4               |}
  \tag #'(v1 v4) {c4 2             8 8             |}
  c4 bes4 4. f8 | bes4 2 \bar "|" \break ees,8 8 |
  ees4 f g bes | aes2. f8 8 | 4 g aes c | bes2. \bar "|" \break c8^\markup\smallCaps Refrain. 8 | % C
  c4 4 4 4 | des4 2 4 | 4 4 4 4 | c4 2 \bar "|" \break 4 |
  c4 4 aes bes | c2. aes4 | 4 4 f g | aes2.
}

alto = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed c'8(des) \slurSolid |}
  \tag #'(v2 v3 v4) {            c 8(des)            |}
  \tag #'v1         {            c 8 des             |}
  ees4 4 4 4 |
  \tag #'dash       {f4 ees2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v2 v3 v4) {f4 ees2             4               |}
  \tag #'v1         {f4 ees2             8 8             |}
  ees4 des c ees |
  \tag #'dash    {4 c2 \slurDashed 8(ees) \slurSolid |}
  \tag #'(v2 v3) {4 c2             8(ees)            |}
  \tag #'(v1 v4) {4 c2             8 ees             |}
  f4 4 4 fes | % B
  \tag #'dash    {ees4 2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v2 v3) {ees4 2             4               |}
  \tag #'(v1 v4) {ees4 2             8 8             |}
  4 4 d4. f8 | ees4 2 des8 8 |
  c4 4 des4 4 | ees2. 8 8 | d4 4 4 4 | ees2. 8 8 | % C
  ees4 f g aes | aes g2 f4 | bes aes g f | f ees2 4 |
  ees4 4 f fes | ees2. c4 | 4 ees f fes | ees2.
}

tenor = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed aes8(8) \slurSolid |}
  \tag #'(v2 v3 v4) {            aes4               |}
  \tag #'v1         {            aes8 8             |}
  4 4 4 4 |
  \tag #'dash       {4 2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v2 v3 v4) {4 2             4               |}
  \tag #'v1         {4 2             8 8             |}
  g4 4 aes g |
  \tag #'dash    {aes  ees2 \slurDashed aes8(8) \slurSolid |}
  \tag #'(v2 v3) {aes4 ees2             aes4               |}
  \tag #'(v1 v4) {aes  ees2             aes8 8             |}
  des4 4 aes aes | % B
  \tag #'dash    {4 2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v2 v3) {4 2             4               |}
  \tag #'(v1 v4) {4 2             8 8             |}
  4 g f4. aes8 | 4 g2 8 8 |
  aes4 4 ees4 4 | 4(aes2) 8 8 | 4 g f aes | aes(g2) aes8 8 | % C
  aes4 c ees ees | 4 2 4 | 4 4 bes bes | aes4 2 4 |
  aes4 4 4 4 | 2. ees4 | 4 aes aes bes | c2.
}

bass = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed aes,8(8) \slurSolid |}
  \tag #'(v2 v3 v4) {            aes 4               |}
  \tag #'v1         {            aes 8 8             |}
  4 4 4 4 |
  \tag #'dash       {4 2 \slurDashed 8(c) \slurSolid |}
  \tag #'(v2 v3 v4) {4 2             8(c)            |}
  \tag #'v1         {4 2             8 c             |}
  ees4 4 4 4 |
  \tag #'dash    {aes,4 2 \slurDashed 8(c) \slurSolid |}
  \tag #'(v2 v3) {aes 4 2             8(c)            |}
  \tag #'(v1 v4) {aes 4 2             8 c             |}
  des4 4 4 4 | % B
  \tag #'dash    {aes4 2 \slurDashed 8(8) \slurSolid |}
  \tag #'(v2 v3) {aes4 2             4               |}
  \tag #'(v1 v4) {aes4 2             8 8             |}
  bes4 4 4. d8 | ees4 2 8 8 |
  aes,4 4 bes bes | c2. ces8 8 | bes4 4 4 4 | ees2. aes8 8 | % C
  aes4 4 4 4 | bes4 2 aes4 | g des ees g | aes4 2 aes,4 |
  aes4 c des des | aes2. 4 | 4 c des des | aes2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Wand" -- 'ring souls, oh, \markup\italic do come near me:
  My sheep should nev -- er fear Me:
  I am the Shep -- herd true,
  I am the Shep -- herd "true!\""
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  \nom I was \yesm wand -- 'ring, sad and wea -- ry,
  \nom When the \yesm Sa -- viour came un -- to me;
  \nom For the \yesm paths of sin were drea -- ry,
  \nom And the \yesm world had ceased to woo me;
  And I thought I heard Him say,
  As He came a -- long His way:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  At first I would not heark -- en,
  But put off till the mor -- row,
  Till life be -- gan to dark -- en,
  And I grew sick with sor -- row;
  Then I thought I heard Him say,
  As He came a -- long His way:
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  At last I stopped to lis -- ten—
  \markup\italic His voice could ne'er de -- ceive me—
  I saw His kind eye glis -- ten
  So an -- xious to re -- lieve me:
  Then I \markup\italic knew I heard Him say,
  As He came a -- long His way:
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I thought His love would weak -- en
  As more and more He knew me,
  \nom But it \yesm burn -- eth like a bea -- con,
  \nom And its \yesm light and heat go through me:
  And I ev -- er hear Him say,
  As He goes a -- long His way:
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "was " wand "'ring, " "sad " "and " wea "ry, "
  "\nWhen " "the " Sa "viour " "came " un "to " "me; "
  "\nFor " "the " "paths " "of " "sin " "were " drea "ry, "
  "\nAnd " "the " "world " "had " "ceased " "to " "woo " "me; "
  "\nAnd " "I " "thought " "I " "heard " "Him " "say, "
  "\nAs " "He " "came " a "long " "His " "way: "
  "\n\"Wand" "'ring " "souls, " "oh, " "do " "come " "near " "me: "
  "\nMy " "sheep " "should " nev "er " "fear " "Me: "
  "\nI " "am " "the " Shep "herd " "true, "
  "\nI " "am " "the " Shep "herd " "true!\"\n"

  \set stanza = "2."
  "\nAt " "first " "I " "would " "not " heark "en, "
  "\nBut " "put " "off " "till " "the " mor "row, "
  "\nTill " "life " be "gan " "to " dark "en, "
  "\nAnd " "I " "grew " "sick " "with " sor "row; "
  "\nThen " "I " "thought " "I " "heard " "Him " "say, "
  "\nAs " "He " "came " a "long " "His " "way: "
  "\n\"Wand" "'ring " "souls, " "oh, " "do " "come " "near " "me: "
  "\nMy " "sheep " "should " nev "er " "fear " "Me: "
  "\nI " "am " "the " Shep "herd " "true, "
  "\nI " "am " "the " Shep "herd " "true!\"\n"

  \set stanza = "3."
  "\nAt " "last " "I " "stopped " "to " lis "ten— "
  "His " "voice " "could " "ne'er " de "ceive " "me— "
  "\nI " "saw " "His " "kind " "eye " glis "ten "
  "\nSo " an "xious " "to " re "lieve " "me: "
  "\nThen " "I " "knew " "I " "heard " "Him " "say, "
  "\nAs " "He " "came " a "long " "His " "way: "
  "\n\"Wand" "'ring " "souls, " "oh, " "do " "come " "near " "me: "
  "\nMy " "sheep " "should " nev "er " "fear " "Me: "
  "\nI " "am " "the " Shep "herd " "true, "
  "\nI " "am " "the " Shep "herd " "true!\"\n"

  \set stanza = "4."
  "\nI " "thought " "His " "love " "would " weak "en "
  "\nAs " "more " "and " "more " "He " "knew " "me, "
  "\nBut " "it " burn "eth " "like " "a " bea "con, "
  "\nAnd " "its " "light " "and " "heat " "go " "through " "me: "
  "\nAnd " "I " ev "er " "hear " "Him " "say, "
  "\nAs " "He " "goes " a "long " "His " "way: "
  "\n\"Wand" "'ring " "souls, " "oh, " "do " "come " "near " "me: "
  "\nMy " "sheep " "should " nev "er " "fear " "Me: "
  "\nI " "am " "the " Shep "herd " "true, "
  "\nI " "am " "the " Shep "herd " "true!\" "
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
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
              \keepWithTag #'v4 \soprano
            }
            \new Voice \partCombine #'(2 . 88) { \global
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
            \new Voice \partCombine #'(2 . 88) { \global
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
