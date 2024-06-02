\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "That Old, Old, Story is True!"
  subtitle    = "Sankey No. 856"
  subsubtitle = "C. C. No. 106"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. O. Excell."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "D. B. Watkins."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2.*2
  \textMark \markup { \box \bold "B" }    s2.*3
  \textMark \markup { \box \bold "C" }    s2.*3
  \textMark \markup { \box \bold "D" }    s2.*3
  \textMark \markup { \box \bold "E" }    s2.*3
  \textMark \markup { \box \bold "F" }    s2.*4
  \textMark \markup { \box \bold "G" }    s2.*3
  \textMark \markup { \box \bold "H" }    s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \tag #'dash       {\slurDashed b'16(c) \slurSolid |}
  \tag #'v2         {            b16 (c)            |}
  \tag #'(v1 v3 v4) {            b16  c             |}
  d8. g,16 a8 b8. c16 b8 | a8. e16 a8 c[b] a |
  \tag #'dash       {g8. fis16 g8 \slurDashed a8.(g16) \slurSolid a8 |} % B
  \tag #'(v2 v3 v4) {g8. fis16 g8             a8.(g16)            a8 |}
  \tag #'v1         {g8. fis16 g8             a8. g16             a8 |}
  \tag #'dash {b4.~4 \slurDashed b16(c) \slurSolid |}
  \tag #'(v1 v2) {b4.~4             b16(c)            |}
  \tag #'(v3 v4) {b4.~4             b16 c             |}
  d8. g,16 a8 b8. c16 b8 |
  \tag #'dash       {\slurDashed a8.(e16) a8 c(b) \slurSolid a |} % C
  \tag #'(v1 v2 v3) {            a8. e16  a8 c(b)            a |}
  \tag #'v4         {            a8.(e16) a8 c b             a |}
  \tag #'dash {\slurDashed g8.(fis16) \slurSolid g8 a8. b16\fermata a8 |}
  \tag #'(v1 v2) {            g8.(fis16)            g8 a8. b16\fermata a8 |}
  \tag #'(v3 v4) {            g8. fis16             g8 a8. b16\fermata a8 |}
  \tag #'dash       {g4.~4 \slurDashed b16(16) \slurSolid |}
  \tag #'v2         {g4.~4             b8                 |}
  \tag #'(v1 v3 v4) {g4.~4             b16 16             |}
  b8. a16 g8 fis8. e16 fis8 | % D
  \tag #'dash    {a8. g16 fis8 e4 \slurDashed e16(16) \slurSolid |}
  \tag #'(v1 v3) {a8. g16 fis8 e4             e8                 |}
  \tag #'(v2 v4) {a8. g16 fis8 e4             e16 16             |}
  a8. 16 e8 g8. fis16 e8 |
  \tag #'dash       {d4. ~4\fermata \slurDashed b'16(c) \slurSolid |} % E
  \tag #'v2         {d,4.~4\fermata             b'16(c)            |}
  \tag #'(v1 v3 v4) {d,4.~4\fermata             b'16 c             |}
  d8. g,16 a8 b8. c16 b8 | a8. e16 a8 c[b] a |
  g8[fis] g a8. d16\fermata a8 | g4.~4 % F
  \section \sectionLabel \markup\smallCaps Refrain.
  b8 | d4 a8 8. b16 c8 | b4.~4 8 |
  a4 e8 g8. fis16 e8 | % G
  \tag #'dash       {d4. ~4\fermata \slurDashed b'16(c) \slurSolid |}
  \tag #'v2         {d,4.~4\fermata             b'16(c)            |}
  \tag #'(v1 v3 v4) {d,4.~4\fermata             b'16 c             |}
  d8. g,16 a8 b8. c16 b8 |
  a8. e16 a8 c[b] a | g4\fermata d'8\fermata fis,8. e16 fis8 | g4.~4
}

alto = \relative {
  \tag #'dash       {\slurDashed g'16(a) \slurSolid |}
  \tag #'v2         {            g16 (a)            |}
  \tag #'(v1 v3 v4) {            g16  a             |}
  b8. g16 8 8. 16 8 | e8. 16 8 c[d] e |
  \tag #'dash       {e8. 16 8 \slurDashed d8.(16) \slurSolid 8 |} % B
  \tag #'(v2 v3 v4) {e8. 16 8             d4                 8 |}
  \tag #'v1         {e8. 16 8             d8. 16             8 |}
  \tag #'dash    {d4. ~4 \slurDashed g16(a) \slurSolid |}
  \tag #'(v1 v2) {d,4.~4             g16(a)            |}
  \tag #'(v3 v4) {d,4.~4             g16 a             |}
  b8. g16 8 8. 16 8 |
  \tag #'dash       {\slurDashed e8.(16) d8 c(d) \slurSolid e |} % C
  \tag #'(v1 v2 v3) {            e8. 16  d8 c(d)            e |}
  \tag #'v4         {            e8.(16) d8 c d             e |}
  \tag #'dash    {\slurDashed d8.(16) \slurSolid 8 8. 16 8 |}
  \tag #'(v1 v2) {            d4                 8 8. 16 8 |}
  \tag #'(v3 v4) {            d8. 16             8 8. 16 8 |}
  \tag #'dash       {d4.~4 \slurDashed 16(16) \slurSolid |}
  \tag #'v2         {d4.~4             8                 |}
  \tag #'(v1 v3 v4) {d4.~4             16 16             |}
  e8. 16 8 dis8. e16 dis8 | % D
  \tag #'dash    {fis8. e16 dis8 e4 \slurDashed 16(16) \slurSolid |}
  \tag #'(v1 v3) {fis8. e16 dis8 e4             8                 |}
  \tag #'(v2 v4) {fis8. e16 dis8 e4             16 16             |}
  cis8. 16 8 8. 16 8 |
  \tag #'dash       {d4. ~4 \slurDashed g16(a) \slurSolid |} % E
  \tag #'v2         {d,4.~4             g16(a)            |}
  \tag #'(v1 v3 v4) {d,4.~4             g16 a             |}
  b8. g16 8 8. 16 8 | e8. 16 8 c[d] e |
  d4 8 8. 16 8 | 4.~4 \section g8 | fis4 8 8. g16 a8 | g4.~4 d8 | % F
  cis4 8 8. 16 8 || % G
  \tag #'dash       {d4. ~4 \slurDashed g16(a) \slurSolid |}
  \tag #'v2         {d,4.~4             g16(a)            |}
  \tag #'(v1 v3 v4) {d,4.~4             g16 a             |}
  b8. g16 8 8. 16 8 |
  d8. e16 8 c[d] e | d4 g8 d8. 16 8 | 4.~4
}

tenor = \relative { \vo
  \tag #'dash       {\slurDashed d'16(d) \slurSolid |}
  \tag #'v2         {            d8                 |}
  \tag #'(v1 v3 v4) {            d16  d             |}
  d8. b16 c8 d8. e16 d8 | c8. 16 8 e[d] c |
  \tag #'dash       {b8. a16 b8 \slurDashed c8.(b16) \slurSolid fis8 |} % B
  \tag #'(v2 v3 v4) {b8. a16 b8             c8.(b16)            fis8 |}
  \tag #'v1         {b8. a16 b8             c8. b16             fis8 |}
  \tag #'dash    {g4. ~4 \slurDashed d'16(16) \slurSolid |}
  \tag #'(v1 v2) {g,4.~4             d'8                 |}
  \tag #'(v3 v4) {g,4.~4             d'16 16             |}
  d8. b16 c8 d8. e16 d8 |
  \tag #'dash       {\slurDashed c8.(16) 8 e(d) \slurSolid c |} % C
  \tag #'(v1 v2 v3) {            c8. 16  8 e(d)            c |}
  \tag #'v4         {            c4      8 e d             c |}
  \tag #'dash {\slurDashed b8.(a16) \slurSolid b8 c8. d16_\fermata c8 |}
  \tag #'(v1 v2) {            b8.(a16)            b8 c8. d16_\fermata c8 |}
  \tag #'(v3 v4) {            b8. a16             b8 c8. d16_\fermata c8 |}
  \tag #'dash       {b4.~4 \slurDashed g16(16) \slurSolid |}
  \tag #'v2         {b4.~4             g8                 |}
  \tag #'(v1 v3 v4) {b4.~4             g16 16             |}
  g8. a16 b8 8. g16 a8 | % D
  \tag #'dash    {b8. 16 a8 g4 \slurDashed 16(16) \slurSolid |}
  \tag #'(v1 v3) {b8. 16 a8 g4             8                 |}
  \tag #'(v2 v4) {b8. 16 a8 g4             16 16             |}
  a8. 16 8 8. 16 g8 |
  \tag #'dash       {fis4. ~4 \slurDashed d'16(16) \slurSolid |} % E
  \tag #'v2         {fis,4.~4             d'8                 |}
  \tag #'(v1 v3 v4) {fis,4.~4             d'16 16             |}
  d8. b16 d8 d8. e16 d8 | c8. 16 8 e[d] c |
  b8[a] b c8. d16\fermata c8 | b4.~4 \section d8 | 4 8 8. 16 8 | d4.~4 g,8 | % F
  e4 a8 8. 16 g8 | % G
  \tag #'dash       {fis4. ~4 \slurDashed d'16(16) \slurSolid |}
  \tag #'v2         {fis,4.~4             d'8                 |}
  \tag #'(v1 v3 v4) {fis,4.~4             d'16 16             |}
  d8. b16 c8 d8. e16 d8 |
  c8. 16 8 e[d] c | b4_\fermata 8_\fermata c8. 16 8 | b4.~4
}

bass = \relative { \vt
  \tag #'dash       {\slurDashed g16(16) \slurSolid |}
  \tag #'v2         {            g8                 |}
  \tag #'(v1 v3 v4) {            g16 16             |}
  g8. 16 8 8. 16 8 | c,8. 16 8 4 8 |
  \tag #'dash       {d8. 16 8 \slurDashed 8.(16) \slurSolid 8 |} % B
  \tag #'(v2 v3 v4) {d8. 16 8             4                 8 |}
  \tag #'v1         {d8. 16 8             8. 16             8 |}
  \tag #'dash    {g,4.~4 \slurDashed g'16(16) \slurSolid |}
  \tag #'(v1 v2) {g,4.~4             g'8                 |}
  \tag #'(v3 v4) {g,4.~4             g'16 16             |}
  g8. 16 8 8. 16 8 |
  \tag #'dash       {\slurDashed c,8.(16) 8 8(8) \slurSolid 8 }| % C
  \tag #'(v1 v2 v3) {            c8. (16) 8 4               8 }|
  \tag #'v4         {            c4       8 8 8             8 }|
  \tag #'dash    {\slurDashed d8.(16) \slurSolid 8 8. 16\fermata 8 |}
  \tag #'(v1 v2) {            d4                 8 8. 16\fermata 8 |}
  \tag #'(v3 v4) {            d8. 16             8 8. 16\fermata 8 |}
  \tag #'dash       {g4.~4 \slurDashed 16(16) \slurSolid |}
  \tag #'v2         {g4.~4             8                 |}
  \tag #'(v1 v3 v4) {g4.~4             16 16             |}
  e8. 16 8 b8. 16 8 | % D
  \tag #'dash    {b8. 16 8 e4 \slurDashed 16(16) \slurSolid |}
  \tag #'(v1 v3) {b8. 16 8 e4             8                 |}
  \tag #'(v2 v4) {b8. 16 8 e4             16 16             |}
  g,8. 16 8 8. 16 8 |
  \tag #'dash       {d'4.~4_\fermata \slurDashed g16(16) \slurSolid |} % E
  \tag #'v2         {d4. ~4_\fermata             g8                 |}
  \tag #'(v1 v3 v4) {d4. ~4_\fermata             g16 16             |}
  g8. 16 8 8. 16 8 | c,8. 16 8 4 8 |
  d4 8 8. 16\fermata 8 | g4.~4 \section 8 | d4 8 8. 16 8 | g4.~4 g,8 | % F
  a4 8 8. 16 8 | % G
  \tag #'dash       {d4.~4_\fermata \slurDashed g16(16) \slurSolid |}
  \tag #'v2         {d4.~4_\fermata             g8                 |}
  \tag #'(v1 v3 v4) {d4.~4_\fermata             g16 16             |}
  g8. 16 8 8. 16 8 |
  c,8. 16 8 4 8 | d4 8 8. 16 8 | \chord <g, g'>4.~4
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  \nom There's a \yesm won -- der -- ful sto -- ry I‘ve heard long a -- go,
  ‘Tis call‘d “The \nom sweet sto -- ry \yesm of old,”
  I hear it so oft -- en \nom wher -- ev -- er \yesm I go,
  That same old sto -- ry is told;
  \nom And I‘ve \yesm thought it was strange that so oft -- en they‘d tell
  That sto -- ry as if it were new; __
  \nom But I‘ve \yesm found out the rea -- son they loved it so well—
  That old, old sto -- ry is true!
  That old, old sto -- ry is true!
  That old, old sto -- ry is true! __
  \nom But I‘ve \yesm found out the rea -- son they loved it so well—
  That old, old sto -- ry is true!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  They told of a Sa -- viour so love -- ly and pure,
  That came to the earth to dwell,
  To seek for His lost ones and \nom make them \yesm se -- cure
  From death and the power of hell;
  That He was des -- pis‘d, and with thorns He was crown‘d;
  \nom On the \yesm cross was ex -- tend -- ed to view; __
  But oh, what sweet peace in my heart since I‘ve found
  That old, old sto -- ry is true!
  That old, old sto -- ry is true!
  That old, old sto -- ry is true! __
  But oh, what sweet peace in my heart since I‘ve found
  That old, old sto -- ry is true!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  \nom He a -- rose \yesm and as -- cend -- ed to hea -- ven, we‘re told,
  Tri -- umph -- ant o‘er death and hell;
  \nom He‘s pre -- \yesm par -- ing a place in that \nom ci -- ty \yesm of gold,
  Where \nom loved ones \yesm for ev -- er may dwell;
  \nom Where our \yesm kin -- dred we‘ll meet, and we‘ll nev -- er more part,
  And oh, while I tell it to you, __
  \nom It is \yesm peace to my soul, it is joy to my heart—
  That old, old sto -- ry is true!
  That old, old sto -- ry is true!
  That old, old sto -- ry is true! __
  \nom It is \yesm peace to my soul, it is joy to my heart—
  That old, old sto -- ry is true!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  \nom Oh, that \yesm won -- der -- ful sto -- ry I love to re -- peat,
  Of peace and good -- will to men!
  \nom There‘s no \yesm sto -- ry to me that is half so \nom sweet,
  As I hear it a -- gain \yesm and a -- gain.
  \nom He in -- \yesm vites you to come— He will free -- ly re -- ceive,
  \nom And this \yesm mes -- sage He send -- eth to you, __
  \nom “There‘s a \yesm man -- sion in glo -- ry for all who be -- lieve”—
  That old, old sto -- ry is true!
  That old, old sto -- ry is true!
  That old, old sto -- ry is true! __
  \nom “There‘s a \yesm man -- sion in glo -- ry for all who be -- lieve”—
  That old, old sto -- ry is true!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There's " "a " won der "ful " sto "ry " "I‘ve " "heard " "long " a "go, "
  "\n‘Tis " "call‘d " "“The " "sweet " sto "ry " "of " "old,” "
  "\nI " "hear " "it " "so " oft "en " wher ev "er " "I " "go, "
  "\nThat " "same " "old " sto "ry " "is " "told; "
  "\nAnd " "I‘ve " "thought " "it " "was " "strange " "that " "so " oft "en " "they‘d " "tell "
  "\nThat " sto "ry " "as " "if " "it " "were " "new; " 
  "\nBut " "I‘ve " "found " "out " "the " rea "son " "they " "loved " "it " "so " "well— "
  "\nThat " "old, " "old " sto "ry " "is " "true! "
  "\nThat " "old, " "old " sto "ry " "is " "true! "
  "\nThat " "old, " "old " sto "ry " "is " "true! " 
  "\nBut " "I‘ve " "found " "out " "the " rea "son " "they " "loved " "it " "so " "well— "
  "\nThat " "old, " "old " sto "ry " "is " "true!\n"

  \set stanza = "2."
  "\nThey " "told " "of " "a " Sa "viour " "so " love "ly " "and " "pure, "
  "\nThat " "came " "to " "the " "earth " "to " "dwell, "
  "\nTo " "seek " "for " "His " "lost " "ones " "and " "make " "them " se "cure "
  "\nFrom " "death " "and " "the " "power " "of " "hell; "
  "\nThat " "He " "was " des "pis‘d, " "and " "with " "thorns " "He " "was " "crown‘d; "
  "\nOn " "the " "cross " "was " ex tend "ed " "to " "view; " 
  "\nBut " "oh, " "what " "sweet " "peace " "in " "my " "heart " "since " "I‘ve " "found "
  "\nThat " "old, " "old " sto "ry " "is " "true! "
  "\nThat " "old, " "old " sto "ry " "is " "true! "
  "\nThat " "old, " "old " sto "ry " "is " "true! " 
  "\nBut " "oh, " "what " "sweet " "peace " "in " "my " "heart " "since " "I‘ve " "found "
  "\nThat " "old, " "old " sto "ry " "is " "true!\n"

  \set stanza = "3."
  "\nHe " a "rose " "and " as cend "ed " "to " hea "ven, " "we‘re " "told, "
  "\nTri" umph "ant " "o‘er " "death " "and " "hell; "
  "\nHe‘s " pre par "ing " "a " "place " "in " "that " ci "ty " "of " "gold, "
  "\nWhere " "loved " "ones " "for " ev "er " "may " "dwell; "
  "\nWhere " "our " kin "dred " "we‘ll " "meet, " "and " "we‘ll " nev "er " "more " "part, "
  "\nAnd " "oh, " "while " "I " "tell " "it " "to " "you, " 
  "\nIt " "is " "peace " "to " "my " "soul, " "it " "is " "joy " "to " "my " "heart— "
  "\nThat " "old, " "old " sto "ry " "is " "true! "
  "\nThat " "old, " "old " sto "ry " "is " "true! "
  "\nThat " "old, " "old " sto "ry " "is " "true! " 
  "\nIt " "is " "peace " "to " "my " "soul, " "it " "is " "joy " "to " "my " "heart— "
  "\nThat " "old, " "old " sto "ry " "is " "true!\n"

  \set stanza = "4."
  "\nOh, " "that " won der "ful " sto "ry " "I " "love " "to " re "peat, "
  "\nOf " "peace " "and " good "will " "to " "men! "
  "\nThere‘s " "no " sto "ry " "to " "me " "that " "is " "half " "so " "sweet, "
  "\nAs " "I " "hear " "it " a "gain " "and " a "gain. "
  "\nHe " in "vites " "you " "to " "come— " "He " "will " free "ly " re "ceive, "
  "\nAnd " "this " mes "sage " "He " send "eth " "to " "you, " 
  "\n“There‘s " "a " man "sion " "in " glo "ry " "for " "all " "who " be "lieve”— "
  "\nThat " "old, " "old " sto "ry " "is " "true! "
  "\nThat " "old, " "old " sto "ry " "is " "true! "
  "\nThat " "old, " "old " sto "ry " "is " "true! " 
  "\n“There‘s " "a " man "sion " "in " glo "ry " "for " "all " "who " be "lieve”— "
  "\nThat " "old, " "old " sto "ry " "is " "true! "
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
        \midi {
        \context { \Score autoBeaming = ##f } }
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
      \context {
        \Staff \RemoveAllEmptyStaves
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
