\version "2.22.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Believe and Receive."
  subtitle    = "Sankey No. 382"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Ward Childs."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*3 s4. s4
  \mark \markup { \box "C" } s8 s2.*3 s4. s4
  \mark \markup { \box "D" } s8 s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8
  g8. fis16 g8 a4 b8
  \tag #'dash          {c4. g4 \slurDashed c16(16) \slurSolid}
  \tag #'(v1 v2 v3 v4) {c4. g4             c8                }
  \tag #'v5            {c4. g4             c16 16            }
  c4 8 b4 a8
  g4.~4 \bar "|" \break
    \tag #'dash          { \slurDashed g16(16) \slurSolid}
    \tag #'(v1 v2 v3 v5) {             g8                }
    \tag #'v4            {             g16 16            }
  \tag #'dash       { f4 g8 \slurDashed b8(8) \slurSolid a } % B
  \tag #'(v1 v2 v5) { f4 g8             b4               a8} % B
  \tag #'(v3 v4)    { f4 g8             b8 8             a } % B
  g4. c4 8
  \tag #'dash          {\slurDashed b8.(a16) b8 c4 a8 \slurSolid}
  \tag #'(v1 v2 v3 v5) {            b8.(a16) b8 c4 a8           }
  \tag #'v4            {            b8. a16  b8 c4 a8           }
  g4.~4  \bar "|" \break g8^\markup\smallCaps Chorus.
  d'4.~8 c8 d % C
  e4. c4 8
  c8 b c d4 e8
  d4.~4 \bar "|" \break 8
  e4 d8 c[b] c % D
  d4(c8) a4 c8
  c8^\markup\italic ritard. b a b4 g8
  c4.~4
}

alto = \relative {
  \autoBeamOff
  e'8
  e8. dis16 e8 f4 8
  \tag #'dash          {e4. 4 \slurDashed g16(16) \slurSolid}
  \tag #'(v1 v2 v3 v4) {e4. 4             g8                }
  \tag #'v5            {e4. 4             g16 16            }
  a4 8 g4 f8
  \tag #'dash          {e4.~4 \slurDashed e16(16) \slurSolid}
  \tag #'(v1 v2 v3 v5) {e4.~4             e8                }
  \tag #'v4            {e4.~4             e16 16            }
  \tag #'dash          {d4 e8 \slurDashed g8(8) \slurSolid f8} % B
  \tag #'(v1 v2 v5)    {d4 e8             g4               f8}
  \tag #'(v3 v4)       {d4 e8             g8 8             f8}
  e4. 4 g8
  \tag #'dash          {\slurDashed g8.(f16) \slurSolid g8 d4 8}
  \tag #'(v1 v2 v3 v5) {            g8.(f16)            g8 d4 8}
  \tag #'v4            {            g8. f16             g8 d4 8}
  g4.~4 8
  f4.~8 e f % C
  g4. e4 8
  e8 d e fis4 8
  g4.~4 8
  g4 f8 g[f] e % D
  f4. 4 8
  f8 8 8 4 8
  e4.~4
}

tenor = \relative {
  \autoBeamOff
  c'8
  c8. 16 8 4 g8
  \tag #'dash          {g4. c4 \slurDashed c16(16) \slurSolid}
  \tag #'(v1 v2 v3 v4) {g4. c4             c8                }
  \tag #'v5            {g4. c4             c16 16            }
  c4 8 4 8
  \tag #'dash          {c4.~4 \slurDashed 16(16) \slurSolid }
  \tag #'(v1 v2 v3 v5) {c4.~4             8                 }
  \tag #'v4            {c4.~4             16 16             }
  \tag #'dash          {b4 8 \slurDashed d8(8) \slurSolid b8} % B
  \tag #'(v1 v2 v5)    {b4 8             d4               b8}
  \tag #'(v3 v4)       {b4 8             d8 8             b8}
  c4. g4 c8
  \tag #'dash          {\slurDashed d8.(16) \slurSolid 8 e4 c8}
  \tag #'(v1 v2 v3 v5) {            d4                 8 e4 c8}
  \tag #'v4            {            d8. 16             8 e4 c8}
  b4.~4 8
  b4 8 8 c b % C
  c4. g4 8
  a8 8 8 4 c8
  b4.~4 8
  c4 b8 c[g] bes % D
  a4. c4 8
  d8 8 8 4 b8
  c4.~4
}

bass = \relative {
  \autoBeamOff
  c8
  c8. 16 8 4 8
  \tag #'dash          {c4. 4 \slurDashed e16(16) \slurSolid}
  \tag #'(v1 v2 v3 v4) {c4. 4             e8                }
  \tag #'v5            {c4. 4             e16 16            }
  f4 8 4 8
  \tag #'dash          {c4.~4 \slurDashed 16(16) \slurSolid}
  \tag #'(v1 v2 v3 v5) {c4.~4             8                }
  \tag #'v4            {c4.~4             16 16            }
  \tag #'dash          {g'4 8 \slurDashed 8(8) \slurSolid g,8} % B
  \tag #'(v1 v2 v4)    {g'4 8             4               g,8}
  \tag #'(v3 v5)       {g'4 8             8 8             g,8}
  c4. 4 e8
  \tag #'dash          {\slurDashed d8.(16) \slurSolid 8 4 8}
  \tag #'(v1 v2 v3 v5) {            d4                 8 4 8}
  \tag #'v4            {            d8. 16             8 4 8}
  g4.~4 8
  g4 8 8 8 8 % C
  c,4. 4 8
  a'8 8 8 d,4 8
  g4.~4 8
  c4 g8 e[d] c % D
  f4. 4 a8
  g8 8 8 4 8
  c,4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Be -- lieve __ and re -- ceive Him,
  'Tis all that you have to do;
  For He, your great Re -- deem -- er,
  Has done all the rest for you.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Be -- lieve, be -- lieve
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
}

chorusMenSingle = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Be -- lieve, be -- lieve
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Be -- lieve, be -- lieve
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Be -- lieve, be -- lieve
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Be -- lieve, be -- lieve
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Be -- lieve, be -- lieve
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Be -- lieve and re -- ceive the Sa -- viour,
  God's gift of love Di -- vine,
  And Christ and heaven and glo -- ry
  Shall ev -- er -- more be Thine.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Be -- lieve and re -- ceive the Sa -- viour,
  For you His blood was shed;
  He took your sins up -- on Him,
  And suf -- fered in your stead.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Be -- lieve and re -- ceive the Sa -- viour,
  And ne'er from Him de -- part;
  He'll set His \nom mark in \yesm your fore -- head,
  His seal up -- on your heart.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Be -- lieve and re -- ceive the Sa -- viour,
  Forth to the con -- flict go,
  \nom With the \yesm Word, the \nom sword of \yesm the Spi -- rit,
  To \nom meet the \yesm ad -- van -- cing foe.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Go forth in the Spi -- rit's pow -- er,
  \nom And the \yesm all -- pre -- vail -- ing name
  Of Christ, the world's Re -- deem -- er,
  His Gos -- pel to pro -- claim.
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  Be -- lieve and re -- ceive the Sa -- viour,
  God's gift of love Di -- vine,
  And Christ and heaven and glo -- ry
  Shall ev -- er -- more be Thine.
  Be -- lieve __ and re -- ceive Him,
  'Tis all that you have to do;
  For He, your great Re -- deem -- er,
  Has done all the rest for you.

  \set stanza = "2."
  Be -- lieve and re -- ceive the Sa -- viour,
  For you His blood was shed;
  He took your sins up -- on Him,
  And suf -- fered in your stead.
  Be -- lieve __ and re -- ceive Him,
  'Tis all that you have to do;
  For He, your great Re -- deem -- er,
  Has done all the rest for you.

  \set stanza = "3."
  Be -- lieve and re -- ceive the Sa -- viour,
  And ne'er from Him de -- part;
  He'll set His mark in your fore -- head,
  His seal up -- on your heart.
  Be -- lieve __ and re -- ceive Him,
  'Tis all that you have to do;
  For He, your great Re -- deem -- er,
  Has done all the rest for you.

  \set stanza = "4."
  Be -- lieve and re -- ceive the Sa -- viour,
  Forth to the con -- flict go,
  With the Word, the sword of the Spi -- rit,
  To meet the ad -- van -- cing foe.
  Be -- lieve __ and re -- ceive Him,
  'Tis all that you have to do;
  For He, your great Re -- deem -- er,
  Has done all the rest for you.

  \set stanza = "5."
  Go forth in the Spi -- rit's pow -- er,
  And the all -- pre -- vail -- ing name
  Of Christ, the world's Re -- deem -- er,
  His Gos -- pel to pro -- claim.
  Be -- lieve __ and re -- ceive Him,
  'Tis all that you have to do;
  For He, your great Re -- deem -- er,
  Has done all the rest for you.
}

wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "Be" "lieve " "and " re "ceive " "the " Sa "viour, "
  "\nGod's " "gift " "of " "love " Di "vine, "
  "\nAnd " "Christ " "and " "heaven " "and " glo "ry "
  "\nShall " ev er "more " "be " "Thine. "
  "\nBe" "lieve "  "and " re "ceive " "Him, "
  "\n'Tis " "all " "that " "you " "have " "to " "do; "
  "\nFor " "He, " "your " "great " Re deem "er, "
  "\nHas " "done " "all " "the " "rest " "for " "you. "

  \set stanza = "2."
  "\nBe" "lieve " "and " re "ceive " "the " Sa "viour, "
  "\nFor " "you " "His " "blood " "was " "shed; "
  "\nHe " "took " "your " "sins " up "on " "Him, "
  "\nAnd " suf "fered " "in " "your " "stead. "
  "\nBe" "lieve "  "and " re "ceive " "Him, "
  "\n'Tis " "all " "that " "you " "have " "to " "do; "
  "\nFor " "He, " "your " "great " Re deem "er, "
  "\nHas " "done " "all " "the " "rest " "for " "you. "

  \set stanza = "3."
  "\nBe" "lieve " "and " re "ceive " "the " Sa "viour, "
  "\nAnd " "ne'er " "from " "Him " de "part; "
  "\nHe'll " "set " "His " "mark " "in " "your " fore "head, "
  "\nHis " "seal " up "on " "your " "heart. "
  "\nBe" "lieve "  "and " re "ceive " "Him, "
  "\n'Tis " "all " "that " "you " "have " "to " "do; "
  "\nFor " "He, " "your " "great " Re deem "er, "
  "\nHas " "done " "all " "the " "rest " "for " "you. "

  \set stanza = "4."
  "\nBe" "lieve " "and " re "ceive " "the " Sa "viour, "
  "\nForth " "to " "the " con "flict " "go, "
  "\nWith " "the " "Word, " "the " "sword " "of " "the " Spi "rit, "
  "\nTo " "meet " "the " ad van "cing " "foe. "
  "\nBe" "lieve "  "and " re "ceive " "Him, "
  "\n'Tis " "all " "that " "you " "have " "to " "do; "
  "\nFor " "He, " "your " "great " Re deem "er, "
  "\nHas " "done " "all " "the " "rest " "for " "you. "

  \set stanza = "5."
  "\nGo " "forth " "in " "the " Spi "rit's " pow "er, "
  "\nAnd " "the " all pre vail "ing " "name "
  "\nOf " "Christ, " "the " "world's " Re deem "er, "
  "\nHis " Gos "pel " "to " pro "claim. "
  "\nBe" "lieve "  "and " re "ceive " "Him, "
  "\n'Tis " "all " "that " "you " "have " "to " "do; "
  "\nFor " "He, " "your " "great " Re deem "er, "
  "\nHas " "done " "all " "the " "rest " "for " "you. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Be" "lieve " "and " re "ceive " "the " Sa "viour, "
  "\nGod's " "gift " "of " "love " Di "vine, "
  "\nAnd " "Christ " "and " "heaven " "and " glo "ry "
  "\nShall " ev er "more " "be " "Thine. "
  "\nBe" "lieve, " "be " "lieve "  "and " re "ceive " "Him, "
  "\n'Tis " "all " "that " "you " "have " "to " "do; "
  "\nFor " "He, " "your " "great " Re deem "er, "
  "\nHas " "done " "all " "the " "rest " "for " "you. "

  \set stanza = "2."
  "\nBe" "lieve " "and " re "ceive " "the " Sa "viour, "
  "\nFor " "you " "His " "blood " "was " "shed; "
  "\nHe " "took " "your " "sins " up "on " "Him, "
  "\nAnd " suf "fered " "in " "your " "stead. "
  "\nBe" "lieve, " "be " "lieve "  "and " re "ceive " "Him, "
  "\n'Tis " "all " "that " "you " "have " "to " "do; "
  "\nFor " "He, " "your " "great " Re deem "er, "
  "\nHas " "done " "all " "the " "rest " "for " "you. "

  \set stanza = "3."
  "\nBe" "lieve " "and " re "ceive " "the " Sa "viour, "
  "\nAnd " "ne'er " "from " "Him " de "part; "
  "\nHe'll " "set " "His " "mark " "in " "your " fore "head, "
  "\nHis " "seal " up "on " "your " "heart. "
  "\nBe" "lieve, " "be " "lieve "  "and " re "ceive " "Him, "
  "\n'Tis " "all " "that " "you " "have " "to " "do; "
  "\nFor " "He, " "your " "great " Re deem "er, "
  "\nHas " "done " "all " "the " "rest " "for " "you. "

  \set stanza = "4."
  "\nBe" "lieve " "and " re "ceive " "the " Sa "viour, "
  "\nForth " "to " "the " con "flict " "go, "
  "\nWith " "the " "Word, " "the " "sword " "of " "the " Spi "rit, "
  "\nTo " "meet " "the " ad van "cing " "foe. "
  "\nBe" "lieve, " "be " "lieve "  "and " re "ceive " "Him, "
  "\n'Tis " "all " "that " "you " "have " "to " "do; "
  "\nFor " "He, " "your " "great " Re deem "er, "
  "\nHas " "done " "all " "the " "rest " "for " "you. "

  \set stanza = "5."
  "\nGo " "forth " "in " "the " Spi "rit's " pow "er, "
  "\nAnd " "the " all pre vail "ing " "name "
  "\nOf " "Christ, " "the " "world's " Re deem "er, "
  "\nHis " Gos "pel " "to " pro "claim. "
  "\nBe" "lieve, " "be " "lieve "  "and " re "ceive " "Him, "
  "\n'Tis " "all " "that " "you " "have " "to " "do; "
  "\nFor " "He, " "your " "great " Re deem "er, "
  "\nHas " "done " "all " "the " "rest " "for " "you. "
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano 
          <<
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \keepWithTag #'v5 \soprano
                         \bar "|." }
            \addlyrics \wordsMidiWomen
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano 
          <<
            \new Voice { \repeat unfold \verses \TempoTrack }
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

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice = "women" \partCombine { \global \keepWithTag #'dash \soprano \bar "|." }
                                              { \global \keepWithTag #'dash \alto }
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
            \new Voice \partCombine { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT \tenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
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
            \new Voice = "women" \partCombine { \global
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
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
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
            \new Voice = "women" \partCombine { \global
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
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global
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
