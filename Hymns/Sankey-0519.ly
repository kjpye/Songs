\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hiding in Thee"
  subtitle    = "Sankey No. 519"
  subsubtitle = "Sankey 880 No. 292"
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
  meter       = \markup\smallCaps "11s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*5
  \mark \markup { \box "B" }    s1*5
  \mark \markup { \box "C" }    s1*6
  \mark \markup { \box "D" }    s1*7 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \tag #'dash    {\slurDashed c''8(8) \slurSolid | }
  \tag #'(v1 v3) {            c4                 | }
  \tag #'v2      {            c8   8             | }
  c2 bes4 a | 2 g4 f | f(e) d e |
  \tag #'dash    {f2. \slurDashed 8(8) \slurSolid | }
  \tag #'(v1 v2) {f2.             4               | }
  \tag #'v3      {f2.             8 8             | }
  bes2 a4 d |
  c2 a4 f | g2 a4 b | % B
  \tag #'dash    {c2. \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v3) {c2.             4               |}
  \tag #'v2      {c2.             8 8             |}
  c2 b4 a | 2 g4 f |
  f4(e) d e | % C
  \tag #'dash    {f2. \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v2) {f2.             4               |}
  \tag #'v3      {f2.             8 8             |}
  b2 a4 d | c2 a4 f | a2 4. g8 | f2. r4 \bar "||" \break |
  g2^\markup\smallCaps Refrain.  4. a8 | bes2. r4 | a2 4. bes8 | c2. 4 | f2 e4. d8 | c2 a4 f | a2 4. g8 | f2. % D
}

alto = \relative {
  \autoBeamOff
  \tag #'dash    {\slurDashed f'8(8) \slurSolid |}
  \tag #'(v1 v3) {            f 4               |}
  \tag #'v2      {            f 8 8             |}
  f2 4 4 | f2 c4 4 | bes2 d4 c |
  \tag #'dash    {c2. \slurDashed f8(8) \slurSolid |}
  \tag #'(v1 v2) {c2.             f4               |}
  \tag #'v3      {c2.             f8 8             |}
  f2 4 4 |
  f2 4 4 | e2 f4 4 | % B
  \tag #'dash    {e2. \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v3) {e2.             4               |}
  \tag #'v2      {e2.             8 8             |}
  f2 e4 f | f2 c4 4 |
  bes2 d4 c | % C
  \tag #'dash    {c2. \slurDashed f8(8) |}
  \tag #'(v1 v2) {c2.             f4    |}
  \tag #'v3      {c2.             f8 8  |}
  f2 4 4 | 2 4 4 | 2 e4. 8 | f2. r4 |
  e2 4. f8 | g2. r4 | f2 4. 8 | 2. a4 | 2 c4. bes8 | a2 f4 4 | 2 e4. 8 | f2.
}

tenor = \relative {
  \autoBeamOff
  \tag #'dash    {\slurDashed a8(8) \slurSolid |}
  \tag #'(v1 v3) {            a4               |}
  \tag #'v2      {            a8 8             |}
  a2 d4 c | 2 bes4 a | g2 bes4 4 |
  \tag #'dash    {a2. \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v2) {a2.             4               |}
  \tag #'v3      {a2.             8 8             |}
  d2 c4 bes |
  a2 c4 4 | 2 4 g | % B
  \tag #'dash    {g2. \slurDashed bes8(8) \slurSolid |}
  \tag #'(v1 v3) {g2.             bes4               |}
  \tag #'v2      {g2.             bes8 8             |}
  a2 d4 c | c2 bes4 a |
  g2 bes4 4 | % C
  \tag #'dash    {a2. \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v2) {a2.             4               |}
  \tag #'v3      {a2.             8 8             |}
  d2 c4 bes | a2 f4 a | c2 4. bes8 | a2. r4 |
  c2 4. 8 | 2. r4 | 2 4. g8 | a2. c4 | 2 4. f8 | 2 c4 a8[b] | c2 4. bes8 | a2.
}

bass = \relative {
  \autoBeamOff
  \tag #'dash    {\slurDashed f8(8) \slurSolid |}
  \tag #'(v1 v3) {            f4               |}
  \tag #'v2      {            f8 8             |}
  f2 4 4 | 2 4 4 | c2 4 4 |
  \tag #'dash    {f2. \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v2) {f2.             4               |}
  \tag #'v3      {f2.             8 8             |}
  f2 4 4 |
  f2 4 a, | c2 f4 d | % B
  \tag #'dash    {c2. \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v3) {c2.             4               |}
  \tag #'v2      {c2.             8 8             |}
  f2 4 4 | 2 4 4 |
  c2 4 4 | % C
  \tag #'dash    {f2. \slurDashed 8(8) \slurSolid |}
  \tag #'(v1 v2) {f2.             4               |}
  \tag #'v3      {f2.             8 8             |}
  f2 4 4 | 2 4 d | c2 4. 8 | f2. r4 |
  c2 4. 8 | 2. r4 | f2 4. 8 | 2. 4 | 2 4. 8 | 2 4 8[d] | c2 4. 8 | f2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Hid -- ing in Thee, Hid -- ing in Thee,
  Thou blest "\"Rock" of A -- "ges,\""
  I'm hid -- ing in Thee.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, safe to the Rock that is high -- er than I,
  My soul in its con -- flicts and sor -- rows would fly;
  So sin -- ful, so wea -- ry, Thine, Thine would I be;
  Thou blest "\"Rock" of A -- "ges.\""
  I'm hid -- ing in Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  \nom In the \yesm calm of the noon -- tide, in sor -- row's lone hour,
  In times when temp -- ta -- tion casts o'er me its power;
  \nom In the \yesm tem -- pests of life, on its wide, heav -- ing sea,
  Thou blest "\"Rock" of A -- "ges.\""
  I'm hid -- ing in Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  How oft in the con -- flict, when press'd by the foe,
  \nom I have \yesm fled to my Re -- fuge and breathed out my woe;
  How of -- ten when tri -- als like sea -- bil -- lows roll,
  \nom Have I \yesm hid -- den in Thee, O Thou Rock of my soul.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "safe " "to " "the " "Rock " "that " "is " high "er " "than " "I, "
  "\nMy " "soul " "in " "its " con "flicts " "and " sor "rows " "would " "fly; "
  "\nSo " sin "ful, " "so " wea "ry, " "Thine, " "Thine " "would " "I " "be; "
  "\nThou " "blest " "\"Rock " "of " A "ges.\" "
  "\nI'm " hid "ing " "in " "Thee. "
  "\nHid" "ing " "in " "Thee, " Hid "ing " "in " "Thee, "
  "\nThou " "blest " "\"Rock " "of " A "ges,\" "
  "\nI'm " hid "ing " "in " "Thee.\n"

  \set stanza = "2."
  "\nIn " "the " "calm " "of " "the " noon "tide, " "in " sor "row's " "lone " "hour, "
  "\nIn " "times " "when " temp ta "tion " "casts " "o'er " "me " "its " "power; "
  "\nIn " "the " tem "pests " "of " "life, " "on " "its " "wide, " heav "ing " "sea, "
  "\nThou " "blest " "\"Rock " "of " A "ges.\" "
  "\nI'm " hid "ing " "in " "Thee. "
  "\nHid" "ing " "in " "Thee, " Hid "ing " "in " "Thee, "
  "\nThou " "blest " "\"Rock " "of " A "ges,\" "
  "\nI'm " hid "ing " "in " "Thee.\n"

  \set stanza = "3."
  "\nHow " "oft " "in " "the " con "flict, " "when " "press'd " "by " "the " "foe, "
  "\nI " "have " "fled " "to " "my " Re "fuge " "and " "breathed " "out " "my " "woe; "
  "\nHow " of "ten " "when " tri "als " "like " sea bil "lows " "roll, "
  "\nHave " "I " hid "den " "in " "Thee, " "O " "Thou " "Rock " "of " "my " "soul. "
  "\nHid" "ing " "in " "Thee, " Hid "ing " "in " "Thee, "
  "\nThou " "blest " "\"Rock " "of " A "ges,\" "
  "\nI'm " hid "ing " "in " "Thee. "
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
            }
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \soprano
                                                 \keepWithTag #'v2 \soprano
                                                 \keepWithTag #'v3 \soprano
                                                 \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
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
                                               }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
            }
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
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
