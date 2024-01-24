\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Shining for Jesus."
  subtitle    = "Sankey No. 788"
  subsubtitle = "C. C. No. 79"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Lilla M. Alexander."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2.*3 s4. s4
  \textMark \markup { \box \bold "B" } s8 s2.*4
  \textMark \markup { \box \bold "C" }    s2.*5
  \textMark \markup { \box \bold "D" }    s2.*5
  \textMark \markup { \box \bold "E" }    s2.*5 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed e'16(e) \slurSolid |}
  \tag #'(v4 v5)    {            e8                 |}
  \tag #'(v1 v2 v3) {            e16  e             |}
  8 cis'8. 16 8 b a | 4. gis4 r8 | d'8 gis,8. 16 8 a b | cis4.~4 \bar "|" \break
  \tag #'dash       {\slurDashed e,16(16) \slurSolid |}
  \tag #'(v3 v4 v5) {            e8                  |}
  \tag #'(v1 v2)    {            e16  16             |}
  8. cis'16 8 8 b a |
  \tag #'dash       {4. gis4 \slurDashed b16(cis) \slurSolid |}
  \tag #'(v2 v3)    {4. gis4             b16(cis)            |}
  \tag #'(v1 v4 v5) {4. gis4             b16 cis             |}
  d8 gis,8. 16 8 fis gis | a4.~4 r8
  \section \sectionLabel \markup\smallCaps Chorus. \break
  cis4. a4 fis8 | e4. a4 r8 | cis4 8 8 b cis | d4.~4 r8 | 4. gis,8[a] b |
  cis4. a4 r8 | fis4 gis8 a[b] cis | b4.~4 r8 | cis4. a4 fis8 | e4. a4 r8 |
  cis4 b8 a[b] cis | d4.~4 r8 | b4. cis4 d8 | e4. a,4 r8 | cis4 b8 e,4 b'8 | a4.~4
}

alto = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed cis'16(16) \slurSolid |}
  \tag #'(v4 v5)    {            cis8                  |}
  \tag #'(v1 v2 v3) {            cis16  16             |}
  8 e8. 16 8 8 8 | d4. 4 r8 | e8 d8. 16 8 cis e | 4.~4
  \tag #'dash       {\slurDashed cis16(16) \slurSolid |}
  \tag #'(v3 v4 v5) {            cis8                 |}
  \tag #'(v1 v2)    {            cis16 16             |}
  8. e16 8 8 8 8 |
  \tag #'dash       {d4. 4 \slurDashed e16(16) \slurSolid |}
  \tag #'(v2 v3)    {d4. 4             e8                 |}
  \tag #'(v1 v4 v5) {d4. 4             e16 16             |}
  e8 d8. 16 8 8 8 | cis4.~4 r8 \section
  e4. cis4 d8 | cis4. d4 r8 | e4 8 8 8 8 | 4.~4 r8 | gis4. e4 8 |
  e4. cis4 r8 | dis4 8 4 8 | e4.~4 r8 | 4. cis4 d8 | cis4. 4 r8 |
  e4 8 4 g8 | fis4.~4 r8 | 4. e4 8 | a4. e4 r8 | 4 d8 4 8 | cis4.~4
}

tenor = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed a16(a) \slurSolid |}
  \tag #'(v4 v5)    {            a8                |}
  \tag #'(v1 v2 v3) {            a16 a             |}
  8 8. 16 cis8 d cis | b4. 4 r8 | 8 8. 16 8 b a | a4.~4
  \tag #'dash       {\slurDashed a16(16) \slurSolid |}
  \tag #'(v3 v4 v5) {            a8                 |}
  \tag #'(v1 v2)    {            a16 16             |}
  8. 16 8 cis d cis |
  \tag #'dash       {b4. 4 \slurDashed gis16(a) \slurSolid |}
  \tag #'(v2 v3)    {b4. 4             gis16(a)            |}
  \tag #'(v1 v4 v5) {b4. 4             gis16 a             |}
  b8 8. 16 8 a b | a4.~4 r8 \section
  a4 8 e e a | 4. e4 r8 | a4 8 8 b a | gis4.~4 r8 | b4 8 8 a gis |
  a4. e4 r8 | a4 gis8 fis4 a8 | gis4.~4 r8 | a4 8 e e a | 4. e4 r8 |
  a4 gis8 a[gis] a | 4.~4 r8 | 4 8 8 8 b | cis4. a4 r8 | gis4 8 4 8 | a4.~4
}

bass = \relative {
  \autoBeamOff
  \tag #'dash       {\slurDashed a,16(16) \slurSolid |}
  \tag #'(v4 v5)    {            a8                  |}
  \tag #'(v1 v2 v3) {            a16  16             |}
  8 8. 16 8 b cis | e4. 4 r8 | 8 8. 16 8 8 8 | a,4.~4
  \tag #'dash       {\slurDashed a16(16) \slurSolid |}
  \tag #'(v3 v4 v5) {            a8                 |}
  \tag #'(v1 v2)    {            a16 16             |}
  8. 16 8 8 b cis |
  \tag #'dash       {e4. 4 \slurDashed 16(16) \slurSolid |}
  \tag #'(v2 v3)    {e4. 4             8                 |}
  \tag #'(v1 v4 v5) {e4. 4             16 16             |}
  8 8. 16 8 8 8 | a,4.~4 r8 \section
  a4 8 8 8 8 | 4. 4 r8 | 4 8 8 gis a | b4.~4 r8 | e4 8 d cis b |
  a4. 4 r8 | b4 8 4 8 | e4.~4 r8 | a,4 8 8 8 8 | 4. 4 r8 |
  a'4 e8 cis[b] a | d4.~4 r8 | 4 8 cis8 8 b | a4. cis4 r8 | e4 8 4 8 | a,4.~4
}

chorus = \lyricmode {
  Shi -- ning for Je -- sus,
  Are you shin -- ing to -- day?
  Shi -- ning for Je -- sus,
  Shi -- ning all the way.
  Shi -- ning for Je -- sus,
  In this world of care;
  Shi -- ning for Je -- sus,
  Shi -- ning ev -- 'ry -- where.
}

chorusMen = \lyricmode {
  \repeat unfold 33 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 9 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1
}

chorusMenSingle = \lyricmode {
  \repeat unfold 36 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 9 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1

  \repeat unfold 35 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 9 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1

  \repeat unfold 34 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 9 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1

  \repeat unfold 34 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 9 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1

  \repeat unfold 34 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 9 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1
  Shi -- ning, shi -- ning
  \repeat unfold 8 \skip 1
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  \nom Are you \yesm shi -- ning for Je -- sus, my bro -- ther,
  Shi -- ning so clear and so bright,
  \nom That the \yesm souls that are per -- ish -- ing round you
  \nom May be \yesm gui -- ded to Him by your light?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  \nom Are you \yesm shi -- ning for Je -- sus, my bro -- ther,
  Shi -- ning in deed and in word?
  \nom Is your \yesm life by its pu -- ri -- ty show -- ing
  The like -- ness of Je -- sus your Lord?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  \nom Are you \yesm shi -- ning for Je -- sus, my bro -- ther,
  Shi -- ning for truth and for right,
  Where bold un -- be -- lief and its min -- ions
  Are po -- sing as an -- gels of light?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, shine out for Je -- sus, my bro -- ther
  Shine where He needs you the most;
  And shine where the dark -- ness hangs deep -- est
  \nom O'er the \yesm path of the stray -- ing and lost.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Shine on -- ly and al -- ways for Je -- sus:
  Then, when your toil -- ing is o'er,
  In man -- sions of glo -- ry e -- ter -- nal
  \nom You shall \yesm shine as the stars ev -- er -- more.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Are " "you " shi "ning " "for " Je "sus, " "my " bro "ther, "
  "\nShi" "ning " "so " "clear " "and " "so " "bright, "
  "\nThat " "the " "souls " "that " "are " per ish "ing " "round " "you "
  "\nMay " "be " gui "ded " "to " "Him " "by " "your " "light? "
  "\nShi" "ning " "for " Je "sus, "
  "\nAre " "you " shin "ing " to "day? "
  "\nShi" "ning " "for " Je "sus, "
  "\nShi" "ning " "all " "the " "way. "
  "\nShi" "ning " "for " Je "sus, "
  "\nIn " "this " "world " "of " "care; "
  "\nShi" "ning " "for " Je "sus, "
  "\nShi" "ning " ev 'ry "where.\n"

  \set stanza = "2."
  "\nAre " "you " shi "ning " "for " Je "sus, " "my " bro "ther, "
  "\nShi" "ning " "in " "deed " "and " "in " "word? "
  "\nIs " "your " "life " "by " "its " pu ri "ty " show "ing "
  "\nThe " like "ness " "of " Je "sus " "your " "Lord? "
  "\nShi" "ning " "for " Je "sus, "
  "\nAre " "you " shin "ing " to "day? "
  "\nShi" "ning " "for " Je "sus, "
  "\nShi" "ning " "all " "the " "way. "
  "\nShi" "ning " "for " Je "sus, "
  "\nIn " "this " "world " "of " "care; "
  "\nShi" "ning " "for " Je "sus, "
  "\nShi" "ning " ev 'ry "where.\n"

  \set stanza = "3."
  "\nAre " "you " shi "ning " "for " Je "sus, " "my " bro "ther, "
  "\nShi" "ning " "for " "truth " "and " "for " "right, "
  "\nWhere " "bold " un be "lief " "and " "its " min "ions "
  "\nAre " po "sing " "as " an "gels " "of " "light? "
  "\nShi" "ning " "for " Je "sus, "
  "\nAre " "you " shin "ing " to "day? "
  "\nShi" "ning " "for " Je "sus, "
  "\nShi" "ning " "all " "the " "way. "
  "\nShi" "ning " "for " Je "sus, "
  "\nIn " "this " "world " "of " "care; "
  "\nShi" "ning " "for " Je "sus, "
  "\nShi" "ning " ev 'ry "where.\n"

  \set stanza = "4."
  "\nOh, " "shine " "out " "for " Je "sus, " "my " bro "ther "
  "\nShine " "where " "He " "needs " "you " "the " "most; "
  "\nAnd " "shine " "where " "the " dark "ness " "hangs " deep "est "
  "\nO'er " "the " "path " "of " "the " stray "ing " "and " "lost. "
  "\nShi" "ning " "for " Je "sus, "
  "\nAre " "you " shin "ing " to "day? "
  "\nShi" "ning " "for " Je "sus, "
  "\nShi" "ning " "all " "the " "way. "
  "\nShi" "ning " "for " Je "sus, "
  "\nIn " "this " "world " "of " "care; "
  "\nShi" "ning " "for " Je "sus, "
  "\nShi" "ning " ev 'ry "where.\n"

  \set stanza = "5."
  "\nShine " on "ly " "and " al "ways " "for " Je "sus: "
  "\nThen, " "when " "your " toil "ing " "is " "o'er, "
  "\nIn " man "sions " "of " glo "ry " e ter "nal "
  "\nYou " "shall " "shine " "as " "the " "stars " ev er "more. "
  "\nShi" "ning " "for " Je "sus, "
  "\nAre " "you " shin "ing " to "day? "
  "\nShi" "ning " "for " Je "sus, "
  "\nShi" "ning " "all " "the " "way. "
  "\nShi" "ning " "for " Je "sus, "
  "\nIn " "this " "world " "of " "care; "
  "\nShi" "ning " "for " Je "sus, "
  "\nShi" "ning " ev 'ry "where. "
}
  
wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Are " "you " shi "ning " "for " Je "sus, " "my " bro "ther, "
  "\nShi" "ning " "so " "clear " "and " "so " "bright, "
  "\nThat " "the " "souls " "that " "are " per ish "ing " "round " "you "
  "\nMay " "be " gui "ded " "to " "Him " "by " "your " "light? "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nAre " "you " shin "ing " to "day? "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nShi" "ning " "all " "the " "way. "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nIn " "this " "world " "of " "care; "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nShi" "ning " ev 'ry "where.\n"

  \set stanza = "2."
  "\nAre " "you " shi "ning " "for " Je "sus, " "my " bro "ther, "
  "\nShi" "ning " "in " "deed " "and " "in " "word? "
  "\nIs " "your " "life " "by " "its " pu ri "ty " show "ing "
  "\nThe " like "ness " "of " Je "sus " "your " "Lord? "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nAre " "you " shin "ing " to "day? "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nShi" "ning " "all " "the " "way. "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nIn " "this " "world " "of " "care; "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nShi" "ning " ev 'ry "where.\n"

  \set stanza = "3."
  "\nAre " "you " shi "ning " "for " Je "sus, " "my " bro "ther, "
  "\nShi" "ning " "for " "truth " "and " "for " "right, "
  "\nWhere " "bold " un be "lief " "and " "its " min "ions "
  "\nAre " po "sing " "as " an "gels " "of " "light? "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nAre " "you " shin "ing " to "day? "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nShi" "ning " "all " "the " "way. "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nIn " "this " "world " "of " "care; "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nShi" "ning " ev 'ry "where.\n"

  \set stanza = "4."
  "\nOh, " "shine " "out " "for " Je "sus, " "my " bro "ther "
  "\nShine " "where " "He " "needs " "you " "the " "most; "
  "\nAnd " "shine " "where " "the " dark "ness " "hangs " deep "est "
  "\nO'er " "the " "path " "of " "the " stray "ing " "and " "lost. "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nAre " "you " shin "ing " to "day? "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nShi" "ning " "all " "the " "way. "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nIn " "this " "world " "of " "care; "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nShi" "ning " ev 'ry "where.\n"

  \set stanza = "5."
  "\nShine " on "ly " "and " al "ways " "for " Je "sus: "
  "\nThen, " "when " "your " toil "ing " "is " "o'er, "
  "\nIn " man "sions " "of " glo "ry " e ter "nal "
  "\nYou " "shall " "shine " "as " "the " "stars " ev er "more. "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nAre " "you " shin "ing " to "day? "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nShi" "ning " "all " "the " "way. "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nIn " "this " "world " "of " "care; "
  "\nShi" "ning, " shi "ning " "for " Je "sus, "
  "\nShi" "ning " ev 'ry "where. "
}
  
\book {
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \keepWithTag #'v5 \soprano
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
                         \keepWithTag #'v5 \alto \nl
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
                         \keepWithTag #'v5 \tenor
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
                         \keepWithTag #'v5 \bass
                       }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi=men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \keepWithTag #'v5 \soprano
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
                         \keepWithTag #'v5 \alto \nl
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
                         \keepWithTag #'v5 \tenor
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
                         \keepWithTag #'v5 \bass
                       }
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 18)

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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
              \keepWithTag #'v5 \soprano
            }
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \soprano
                                                 \keepWithTag #'v2 \soprano
                                                 \keepWithTag #'v3 \soprano
                                                 \keepWithTag #'v4 \soprano
                                                 \keepWithTag #'v5 \soprano
                                                 \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \keepWithTag #'v4 \alto \nl
              \keepWithTag #'v5 \alto \nl
              \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
                                                 \keepWithTag #'v5 \tenor
                                               }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
              \keepWithTag #'v4 \bass
              \keepWithTag #'v5 \bass
            }
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
              \keepWithTag #'v4 \tenor
              \keepWithTag #'v5 \tenor
            }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMenSingle
        >>
}

\book {
  \bookOutputSuffix "single"
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
