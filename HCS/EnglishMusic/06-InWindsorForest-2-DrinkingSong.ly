\version "2.25.30"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 2 Drinking Song"
  subtitle    = "(’Back and side go bare’)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "R. Vaughan Williams"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "John Still"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 2/2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Allegro pesante" 2=120
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "9a" } s1*7
  \textMark \markup { \box "9b" } s1*4
  \textMark \markup { \box "9c" } s1*3
  \textMark \markup { \box "10a" } s1*4
  \textMark \markup { \box "10b" } s1*2
  \repeat volta 2 {
    s1*2
    \textMark \markup { \box "10c" } s1*4
    \textMark \markup { \box "11a" } s1*4
    \textMark \markup { \box "11b" } s1*4
    \textMark \markup { \box "11c" } s1*6
    \textMark \markup { \box "12a" } s1*4
    \textMark \markup { \box "12b" } s1*4
    \textMark \markup { \box "12c" } s1*4
    \textMark \markup { \box "13a" } s1*4
    \textMark \markup { \box "13b" } s1*3
    \textMark \markup { \box "13c" } s1*5
    \textMark \markup { \box "14a" } s1*3
    \textMark \markup { \box "14b" } s1*3
    \textMark \markup { \box "14c" } s1*3
    \textMark \markup { \box "15a" } s1*5
    \textMark \markup { \box "15b" } s1*2
    \alternative {
      { s1*3 }
      { \textMark \markup { \box "15c" } s1 }
    }
  }
  s1*4
}

dynamicsTenorOne = {
  \override DynamicTextSpanner.style = #'none
  s1*7 | s1\ff | s1*6 |
  s1 | s2\> s\! | s1 | s\f | s2 s\> | s1\p |
  \repeat volta 2 {
    s1*2 | s1\pp | s1*3 |
    s1\pp | s1*3 | s1\pp | s2\< s\! | s1*3 | s1\f | s | s2\> s\! | s1\pp | s | % 11
    s1*5 | s1\mf | s1*6 |
    s1*3 | s2 s4\< s\! | s2. s4\f | s1*2 | s2 s\> | s\! s\p | s1\cresc | s | s2 s4\< s\! |
    s1\ff | s1*8 | % 14
    s1*7 |
    \alternative { {s1*3} {s1\ff} }
  }
  s1*4 |
}

dynamicsTenorTwo = {
  \override DynamicTextSpanner.style = #'none
  s1*7 | s1\ff | s1*6 |
  s1*2 | s1\f | s4 s2\> s8 s\! | s4 s2\> s8 s\! | s1\p |
  \repeat volta 2 {
    s1*2 | s1\pp | s1*3 |
    s1\pp | s1*4 | s2\< s\! | s1*3 | s1\f | s | s2\> s\! | s1\pp | s | % 11
    s1*5 | s1\mf | s1*6 |
    s1*3 | s2 s4\< s\! | s2. s4\f | s1*2 | s2 s\> | s\! s\p | s1\cresc | s | s2 s4\< s\! |
    s1\ff | s1*8 | % 14
    s1*7 |
    \alternative { {s1*3} {s1\ff} }
  }
  s1*4 |
}

tenorA = \relative {
  R1*7 |
  a4 g c b | a4 g8(b) a4 g | a g c8(b) a(g) | a2. b4 |
  c8 8 4 d8(c) b a | g4 e d c8 8 | d4 a'4 8(g) f(e) |
}

tenorD = \relative {
  R1 | d'8 d a4 8(g) f(e) d4.(f8 e4. g8 | a4. b8 c4. b8 | a1)~ | 8 r r4 r2 | % 11c
  R1*4 | % 12a
  R1 | g4 d'8 8 c4 d8 c | bes4 c8(bes) a4 bes8 a | % 12b
  \tag #'dash {g4  d' \slurDashed c8(d) \slurSolid e4 |}
  \tag #'v1   {g,4 d'             c8(d)            e4 |}
  \tag #'v2   {g,4 d'             c8 d             e4 |}
  d2. f,4 | g d' c d8(c) | bes4 c8(bes) a4 bes8(a) | g4 d' f8(e) d(c) | % 12c
  d2. 8(e) | % 13a
  \tag #'dash {f4  d c \slurDashed a8(8) \slurSolid |}
  \tag #'v1   {f'4 d c             a4               |}
  \tag #'v2   {f'4 d c             a8 8             |}
  g8(f) g(a) g4 d'8(e) |
  \tag #'dash {f4 e \slurDashed c8(8) \slurSolid d4 |}
  \tag #'v1   {f4 e             c4               d4 |}
  \tag #'v2   {f4 e             c8 8             d4 |}
  a2. 8(b) | c4 4 d8(c) b(a) | % 13b
  \tag #'dash {g4  \slurDashed e8(8) d4 c8(8) \slurSolid |}
  \tag #'v1   {g'4             e4    d4 c4               |}
  \tag #'v2   {g'4             e8 8  d4 c8 8             |}
  \tag #'dash {\slurDashed d8(8) \slurSolid a'4 8(g) f(e) |} % 13c
  \tag #'v1   {            d8 8             a'4 8(g) f(e) |} 
  \tag #'v2   {            d4               a'4 8(g) f(e) |} 
  d8 r r4 a'8 8 4 |
}

tenorE = { R1*3 | }
tenorF = { R1*3 | }
tenorH = { d'1~ | 1~ | 8 r r4 r2 | R1\fermata | }

wordsTenorOneOne = \lyricmode {
  Back and side go bare, go __ bare,
  Both foot and hand go __ cold;
  But, bel -- ly, God send thee good ale e -- nough,
  Whe -- ther it be new __ or __ old. __
  Jol -- ly good ale __ and __ old __
  good. __
  hood __ % 11a
  cold __
  Jol -- ly good ale __ and __ old __
                                % 12b
  I love no roast but a nut -- brown toast,
  And a crab laid in the fire,
  A lit -- tle bread shall do me stead,
  Much bread I not de -- sire.
  No frost or snow, No wind I __ trow, % 13a
  Can __ hurt me if I would,
  I __ am so wrapt and __ through -- ly lapt
  Of \nom jol -- ly \yesm good ale and old, __
  jol -- ly good ale __ jol -- ly good ale __ 
  jol -- ly good ale and __ old, __
  jol -- ly good ale __ and __ old. __
  jol -- ly good ale __ and __ old. __ % 14c
  
  Jol -- ly good ale __ and old. __
}

wordsTenorOneTwo = \lyricmode {
  \repeat unfold 36 \skip 1
  seek. __ % 10c
  cheek __
  should __
  \repeat unfold 6 ""
  Now let them drink, till they nod and wink,
  Ev -- en as good \nom fel -- lows \yesm should do, __
  They shall not miss to __ have the bliss
  Good ale doth bring men to.
  And all poor souls \nom that have \yesm scoured black bowls, % 13a
  Or __ have them \nom lust -- i -- ly \yesm trowled,
  God save the lives of them \nom and their wives
  Whe -- ther \yesm they be young or old, __
}

wordsTenorOne = \lyricmode {
  Back and side go bare, go __ bare,
  Both foot and hand go __ cold;
  But, bel -- ly, God send thee good ale e -- nough,
  Whe -- ther it be new __ or __ old. __
  Jol -- ly good ale __ and __ old __
  good. __
  hood __ % 11a
  cold __
  Jol -- ly good ale __ and __ old __
                                % 12b
  I love no roast but a nut -- brown toast,
  And a crab laid in the fire,
  A lit -- tle bread shall do me stead,
  Much bread I not de -- sire.
  No frost or snow, No wind I __ trow, % 13a
  Can __ hurt me if I would,
  I __ am so wrapt and __ through -- ly lapt
  Of \nom jol -- ly \yesm good ale and old, __
  jol -- ly good ale __ jol -- ly good ale __ 
  jol -- ly good ale and __ old, __
  jol -- ly good ale __ and __ old. __
  jol -- ly good ale __ and __ old. __ % 14c

  \set stanza = "2. "
  seek. __ % 10c
  cheek __
  should __
  Jol -- ly good ale __ and __ old __
  Now let them drink, till they nod and wink,
  Ev -- en as good \nom fel -- lows \yesm should do, __
  They shall not miss to __ have the bliss
  Good ale doth bring men to.
  And all poor souls \nom that have \yesm scoured black bowls, % 13a
  Or __ have them \nom lust -- i -- ly \yesm trowled,
  God save the lives of them \nom and their wives
  Whe -- ther \yesm they be young or old, __
  jol -- ly good ale __ jol -- ly good ale __ 
  jol -- ly good ale and __ old, __
  jol -- ly good ale __ and __ old. __
  jol -- ly good ale __ and __ old. __ % 14c
  Jol -- ly good ale __ and old. __
}

wordsTenorOneMidi = \lyricmode {
  "Back " "and " "side " "go " "bare, " "go "  "bare, "
  "\nBoth " "foot " "and " "hand " "go "  "cold; "
  "\nBut, " bel "ly, " "God " "send " "thee " "good " "ale " e "nough, "
  "\nWhe" "ther " "it " "be " "new "  "or "  "old. " 
  "\nJol" "ly " "good " "ale "  "and "  "old " 
  "\ngood. " 
  "\nhood "  % 11a
  "\ncold " 
  "\nJol" "ly " "good " "ale "  "and "  "old " 
                                % 12b
  "\nI " "love " "no " "roast " "but " "a " nut "brown " "toast, "
  "\nAnd " "a " "crab " "laid " "in " "the " "fire, "
  "\nA " lit "tle " "bread " "shall " "do " "me " "stead, "
  "\nMuch " "bread " "I " "not " de "sire. "
  "\nNo " "frost " "or " "snow, " "No " "wind " "I "  "trow, " % 13a
  "\nCan "  "hurt " "me " "if " "I " "would, "
  "\nI "  "am " "so " "wrapt " "and "  through "ly " "lapt "
  "\nOf " \nom jol "ly " \yesm "good " "ale " "and " "old, " 
  "\njol" "ly " "good " "ale "  jol "ly " "good " "ale "  
  "\njol" "ly " "good " "ale " "and "  "old, " 
  "\njol" "ly " "good " "ale "  "and "  "old. " 
  "\njol" "ly " "good " "ale "  "and "  "old. "  % 14c

  \set stanza = "2. "
  "\nseek. "  % 10c
  "\ncheek " 
  "\nshould " 
  "\nJol" "ly " "good " "ale "  "and "  "old " 
  "\nNow " "let " "them " "drink, " "till " "they " "nod " "and " "wink, "
  "\nEv" "en " "as " "good " \nom fel "lows " \yesm "should " "do, " 
  "\nThey " "shall " "not " "miss " "to "  "have " "the " "bliss "
  "\nGood " "ale " "doth " "bring " "men " "to. "
  "\nAnd " "all " "poor " "souls " \nom "that " "have " \yesm "scoured " "black " "bowls, " % 13a
  "\nOr "  "have " "them " \nom lust i "ly " \yesm "trowled, "
  "\nGod " "save " "the " "lives " "of " "them " \nom "and " "their " "wives "
  "\nWhe" "ther " \yesm "they " "be " "young " "or " "old, " 
  "\njol" "ly " "good " "ale "  jol "ly " "good " "ale "  
  "\njol" "ly " "good " "ale " "and "  "old, " 
  "\njol" "ly " "good " "ale "  "and "  "old. " 
  "\njol" "ly " "good " "ale "  "and "  "old. "  % 14c
  "\nJol" "ly " "good " "ale "  "and " "old. " 
}

wordsTenorTwoOne = \lyricmode {
  Back and side go bare, go __ bare,
  Both foot and hand go __ cold;
  But, bel -- ly, God send thee good ale e -- nough,
  Whe -- ther it be new __ or __ old. __
  Jol -- ly good ale __ and __ old __
  good. __
  hood __ % 11a
  cold __
  Jol -- ly good ale __ and __ old __
                                % 12b
  I love no roast but a nut -- brown toast,
  And a crab laid in the fire,
  A lit -- tle bread shall do me stead,
  Much bread I not de -- sire.
  No frost or snow, No wind I __ trow, % 13a
  Can __ hurt me if I would,
  I __ am so wrapt and __ through -- ly lapt
  Of \nom jol -- ly \yesm good ale and old, __
  jol -- ly good ale __
  Back and side go bare, go __ bare,
  Both foot and hand __ go __ cold;
  But, bel -- ly, God send __ thee good ale __ e -- nough,
  jol -- ly good ale __ and __ old, __ and old, __
  
  Jol -- ly good ale __ and old. __
}

wordsTenorTwoTwo = \lyricmode {
  \repeat unfold 36 \skip 1
  seek. __ % 10c
  cheek __
  should __
  \repeat unfold 6 ""
  Now let them drink, till they nod and wink,
  Ev -- en as good \nom fel -- lows \yesm should do, __
  They shall not miss to __ have the bliss
  Good ale doth bring men to.
  And all poor souls \nom that have \yesm scoured black bowls, % 13a
  Or __ have them \nom lust -- i -- ly \yesm trowled,
  God save the lives of them \nom and their wives
  Whe -- ther \yesm they be young or old, __
}

wordsTenorTwo = \lyricmode {
  Back and side go bare, go __ bare,
  Both foot and hand go __ cold;
  But, bel -- ly, God send thee good ale e -- nough,
  Whe -- ther it be new __ or __ old. __
  Jol -- ly good ale __ and old. __
  good. __
  hood __ % 11a
  cold __
  Jol -- ly good ale __ and __ old __
                                % 12b
  I love no roast but a nut -- brown toast,
  And a crab laid in the fire,
  A lit -- tle bread shall do me stead,
  Much bread I not de -- sire.
  No frost or snow, No wind I __ trow, % 13a
  Can __ hurt me if I would,
  I __ am so wrapt and __ through -- ly lapt
  Of \nom jol -- ly \yesm good ale and old, __
  jol -- ly good ale __
  Back and side go bare, go __ bare,
  Both foot and hand __ go __ cold;
  But, bel -- ly, God send __ thee good ale __ e -- nough,
  jol -- ly good ale __ and __ old, __ and old, __
  
%  Jol -- ly good ale __ and old. __

  \set stanza = "2. "
  seek. __ % 10c
  cheek __
  should __
  Jol -- ly good ale __ and __ old __
  Now let them drink, till they nod and wink,
  Ev -- en as good \nom fel -- lows \yesm should do, __
  They shall not miss to __ have the bliss
  Good ale doth bring men to.
  And all poor souls \nom that have \yesm scoured black bowls, % 13a
  Or __ have them \nom lust -- i -- ly \yesm trowled,
  God save the lives of them \nom and their wives
  Whe -- ther \yesm they be young or old, __
  jol -- ly good ale __
  Back and side go bare, go __ bare,
  Both foot and hand __ go __ cold;
  But, bel -- ly, God send __ thee good ale __ e -- nough,
  jol -- ly good ale __ and __ old, __ and old, __
  
  Jol -- ly good ale __ and old. __
}

wordsTenorTwoMidi = \lyricmode {
  "Back " "and " "side " "go " "bare, " "go "  "bare, "
  "\nBoth " "foot " "and " "hand " "go "  "cold; "
  "\nBut, " bel "ly, " "God " "send " "thee " "good " "ale " e "nough, "
  "\nWhe" "ther " "it " "be " "new "  "or "  "old. " 
  "\ngood. " 
  "\nhood "  % 11a
  "\ncold " 
  "\nJol" "ly " "good " "ale "  "and "  "old " 
                                % 12b
  "\nI " "love " "no " "roast " "but " "a " nut "brown " "toast, "
  "\nAnd " "a " "crab " "laid " "in " "the " "fire, "
  "\nA " lit "tle " "bread " "shall " "do " "me " "stead, "
  "\nMuch " "bread " "I " "not " de "sire. "
  "\nNo " "frost " "or " "snow, " "No " "wind " "I "  "trow, " % 13a
  "\nCan "  "hurt " "me " "if " "I " "would, "
  "\nI "  "am " "so " "wrapt " "and "  through "ly " "lapt "
  "\nOf " \nom jol "ly " \yesm "good " "ale " "and " "old, " 
  "\njol" "ly " "good " "ale " 
  "\nBack " "and " "side " "go " "bare, " "go "  "bare, "
  "\nBoth " "foot " "and " "hand "  "go "  "cold; "
  "\nBut, " bel "ly, " "God " "send "  "thee " "good " "ale "  e "nough, "
  "\njol" "ly " "good " "ale "  "and "  "old, "  "and " "old, " 
  
  "\nJol" "ly " "good " "ale "  "and " "old. " 

  \set stanza = "2. "
  "\nseek. "  % 10c
  "\ncheek " 
  "\nshould " 
  "\nJol" "ly " "good " "ale "  "and "  "old " 
  "\nNow " "let " "them " "drink, " "till " "they " "nod " "and " "wink, "
  "\nEv" "en " "as " "good " \nom fel "lows " \yesm "should " "do, " 
  "\nThey " "shall " "not " "miss " "to "  "have " "the " "bliss "
  "\nGood " "ale " "doth " "bring " "men " "to. "
  "\nAnd " "all " "poor " "souls " \nom "that " "have " \yesm "scoured " "black " "bowls, " % 13a
  "\nOr "  "have " "them " \nom lust i "ly " \yesm "trowled, "
  "\nGod " "save " "the " "lives " "of " "them " \nom "and " "their " "wives "
  "\nWhe" "ther " \yesm "they " "be " "young " "or " "old, " 
  "\njol" "ly " "good " "ale " 
  "\nBack " "and " "side " "go " "bare, " "go "  "bare, "
  "\nBoth " "foot " "and " "hand "  "go "  "cold; "
  "\nBut, " bel "ly, " "God " "send "  "thee " "good " "ale "  e "nough, "
  "\njol" "ly " "good " "ale "  "and "  "old, "  "and " "old, " 
  
  "\nJol" "ly " "good " "ale "  "and " "old. " 
}

tenorOneB = \relative {
  d4.(f8 e4. g8 | d4. e8 c4. e8 | d8) r r4 r2 | d8 8 a'4 8(b) c(a) | % 10a
  d4.(e8 c4. e8 | d8) r r4 r2 |
}

tenorOneC = \relative {
  R1*2 |
  d'4.(f8 e4. g8 | d4. e8 c4. e8 | d) r r4 r2 | R1 | % 10c
  e1~ | 1( | a,8) r r4 r2 | R1 | % 11a
  g2.(a8 b | c2 d | e8) r r4 r2 | R1 |
}

tenorOneE = \relative {
  b1~ | 1~ | 8 r r4 b8 8 d4 | % 13c++
  e1~ | 1~ | 8 r r4 8 8 4 | % 14a
  e4(d cis) d | e2 c8 8 f4 | g2 e4(g) |
  a1~ | 8 r r4 d,8 8 a'4 | 8(g) f(e) d(e f e |
  d8 e f e d e c e | d c bes c aes c bes c | aes8) r r4 r2 | R1*4 | % 15a
}

tenorOneG = \relative { d'8 d a'4 8(g) f(e) | }

tenorTwoB = \relative {
  d8 r r4 r2 | R1 | d8 8 a'4 8(g) f(e) | d4.(e8 f4. g8 | % 10a
  a4. b8 c4. a8 | d) r r4 r2 |
}

tenorTwoC = \relative {
  R1*2 |
  d'4.(b8 c4. a8 d4. b8 c4. a8 | d) r r4 r2 | R1 | % 10c
  a4.(c8 b4. d8 | a4. b8 g4. b8 | a) r r4 r2 | R1 | % 11a
  g1(~ | 2 f | e8) r r4 r2 | R1 |
}

tenorTwoE = \relative {
  b1~ | 1~ | 2.~8 r | % 13c
  a4 g c b | a g8(b) a4 g | a g c8(b) a(g) | % 14a
  a2. b4 | c8 8 4 d8(c) b a | g4(a b) c |
  d4 r a8 a e'4 | 8(d) c(b) a2~ | 8 r a4 d8(e f e |
  d8 e f e d e c e | d c bes c aes c bes c | aes8) r r4 r2 | R1*4 | % 15a
}

tenorTwoG = \relative { d'8 8 4 8(e) f(e) | }

tenorOne = {
  \global
  \tenorA
  \tenorOneB
  \repeat volta 2 {
    \keepWithTag #'dash {
      \tenorOneC
      \tenorD
      \tenorOneE
    }
    \alternative {\tenorF \tenorOneG}
  }
  \tenorH
  \bar "|."
}

tenorOneSingle = {
  \global
  \tenorA
  \tenorOneB
%  \repeat volta 2 {
  \keepWithTag #'v1 {
    \tenorOneC
    \tenorD
    \tenorOneE
    \tenorF
  }
  \keepWithTag #'v2 {
    \tenorOneC
    \tenorD
    \tenorOneE
    \tenorOneG
  }
%  }
  \tenorH
  \bar "|."
}

tenorTwo = {
  \global
  \tenorA
  \tenorTwoB
  \repeat volta 2 {
    \keepWithTag #'dash {
      \tenorTwoC
      \tenorD
      \tenorTwoE
    }
    \alternative {\tenorF \tenorTwoG}
  }
  \tenorH
}

tenorTwoSingle = {
  \global
  \tenorA
  \tenorTwoB
  \keepWithTag #'v1 {
    \tenorTwoC
    \tenorD
    \tenorTwoE
    \tenorF
  }
  \keepWithTag #'v2 {
    \tenorTwoC
    \tenorD
    \tenorTwoE
    \tenorTwoG
  }
  \tenorH
}

dynamicsBassOne = {
  \override DynamicTextSpanner.style = #'none
  s1*7 | s1\ff | s1*6 |
  s1 | s2 s\> | s1\! | s1*2 | s1\mf |
  \repeat volta 2 {
    s1*6 |
    s1*9 | s4. s2\> s8\! | s1*4 | % 11
    s1 | s\pp | s2. s4\p | s1 | s4. s2\< s8\! | s1*3 | s1\pp | s1*3 |
    s1*4 | s4 s\< s\! s\f | s1*2 | s2 s8 s4.\> | s4.\p s8\cresc s2 | s1 | s4 s\< s2\! | s2 s4\< s\! |
    s1\ff | s1*8 | % 14
    s1*7 |
    \alternative { {s1 | s2. s4\mf | s1} {s1\ff} }
  }
  s1*4 |
}

dynamicsBassTwo = {
  \override DynamicTextSpanner.style = #'none
  s1*7 | s1\ff | s1*6 |
  s1*2 | s1\f | s1*2 | s1\mf
  \repeat volta 2 {
    s1*6 |
    s1*9 | s4. s2\> s8\! | s1*4 | % 11
    s1*2 | s2. s4\p | s1 | s4. s2\< s8\! | s1*7 |
    s1\p | s1*3 | s4 s\< s\! s\f | s1*2 | s2 s8 s4.\> | s4.\p s8\cresc s2 | s1*2 | s2 s4\< s\! |
    s1\ff | s1*8 | % 14
    s1*7 |
    \alternative { {s1 | s2. s4\mf | s1} {s1\ff} }
  }
  s1*4 |
}

bassA = \relative {
  \global
  R1*7 |
  a4 g c b | a g8(b) a4 g | a g c8(b) a(g) | a2. b4 |
  c8 8 4 d8(c) b a | g4 e d c8 c | d4 a' a8(g) f(e) |
}

bassC = \relative {
  d4 a'8 8 g4 a8(g) |
}

bassD = \relative {
  \tag #'dash {f4 g8(f) e4 \slurDashed f8(8) \slurSolid |} % 10b++
  \tag #'v1   {f4 g8(f) e4             f4               |}
  \tag #'v2   {f4 g8(f) e4             f8 8             |}
  d4 a' g8(a) b4 |
  a2. c,4 | d a' g a | f g8(f) e4 f | d a' c8(b) a(g) | % 10c
  a2. g4 | c a g e | d8(c) d(e) d4 a'8(b) | c4 a d8(c) a4 | % 11a
  g2. a8(b) | c4 c d8(c) b(a) | % 11b
  \tag #'dash {g4  e d \slurDashed c8(8) \slurSolid |}
  \tag #'v1   {g'4 e d             c4               |}
  \tag #'v2   {g'4 e d             c8 8             |}
  d8 d a'4 8(g) f(e) |
}

bassF = \relative {
  a4 g c b | a g8(b) a4 g | a g c8(b) a(g) | % 14a
  a2. b4 | c8 8 4 d8(c) b a | g4 e d c8 c |
  d4 a' a8(g) f(e) | d4 a' a8(g) f(e) | d2~8 r a4 |
  d8(e f e d e c e | d c bes c aes c bes c | aes) r r4 r2 | R1*2 | % 15a
  R1*2 |
}

bassG = \relative { R1 | r2 r4 c | d a' g a | }
bassH = \relative { d8 d a'4 8(b) c(a) | }
bassI = \relative { d'1~ | 1~ | 8 r r4 r2 | R1\fermata | }

wordsBassOneOne = \lyricmode {
  Back and side go bare, go __ bare,
  Both foot and hand go __ cold;
  But, bel -- ly, God send thee good ale e -- nough,
  Whe -- ther it be new __ or __ old. __
  Jol -- ly good ale __ and __ old __
  I can -- not eat but __ lit -- tle __ meat, my stom -- ach is __ not good;
  But sure I think that I can __ drink
  With him that wears a __ hood.
  Though I go bare, take ye __ no __ care
  I __ am no -- thing a -- cold;
  I __ stuff my skin so __ full with -- in
  Of jol -- ly good ale __ and __ old __
                                % 12a
  Jol -- ly good ale and old, __
  I love no roast,
  I love no roast but a nut -- brown toast,
  And a crab laid in the fire, __ % 13a
  I __ am so wrapt and __ through -- ly lapt
  Of \nom jol -- ly \yesm good ale and old, __
  

  Back and side go bare, go __ bare, % 14a
  Both foot and hand __ go __ cold;
  But, bel -- ly, God send __ thee good ale e -- nough,
  Whe -- ther it be new __ or __ old,
  good ale -- and __ old, __ and old __

  And Tib my wife, that

  Jol -- ly good ale __ and old. __
}

wordsBassOneTwo = \lyricmode {
  \repeat unfold 41 \skip 1
  as her life
  \nom Lov -- eth \yesm well good ale __ to seek,
  Full oft drinks she, till ye may __ see
  The tears run down her __ cheek.
  Then doth she trowl to me __ the __ bowl,
  Ev’n as a malt -- worm should;
  And __ saith ‘sweet -- heart, I’ve take my part
  \nom Of this \yesm jol -- ly good ale __ and __ old! __
  "" _ _ _ _ _
  Now let them drink,
  now let them drink, till they nod and wink,
  Ev -- en as good \nom fel -- lows \yesm should do, __ % 13a
  God save the lives of them \nom and their wives
  Whe -- ther \yesm they be young or old, __
}

wordsBassOne = \lyricmode {
  Back and side go bare, go __ bare,
  Both foot and hand go __ cold;
  But, bel -- ly, God send thee good ale e -- nough,
  Whe -- ther it be new __ or __ old. __
  Jol -- ly good ale __ and __ old __
  I can -- not eat but __ lit -- tle __ meat, my stom -- ach is __ not good;
  But sure I think that I can __ drink
  With him that wears a __ hood.
  Though I go bare, take ye __ no __ care
  I __ am no -- thing a -- cold;
  I __ stuff my skin so __ full with -- in
  Of jol -- ly good ale __ and __ old __
                                % 12a
  Jol -- ly good ale and old, __
  I love no roast,
  I love no roast but a nut -- brown toast,
  And a crab laid in the fire, __ % 13a
  I __ am so wrapt and __ through -- ly lapt
  Of \nom jol -- ly \yesm good ale and old, __
  

  Back and side go bare, go __ bare, % 14a
  Both foot and hand __ go __ cold;
  But, bel -- ly, God send __ thee good ale e -- nough,
  Whe -- ther it be new __ or __ old,
  good ale -- and __ old, __ and old __

  \set stanza = "2. "
  And Tib my wife, that
  as her life
  \nom Lov -- eth \yesm well good ale __ to seek,
  Full oft drinks she, till ye may __ see
  The tears run down her __ cheek.
  Then doth she trowl to me __ the __ bowl,
  Ev’n as a malt -- worm should;
  And __ saith ‘sweet -- heart, I’ve take my part
  \nom Of this \yesm jol -- ly good ale __ and __ old! __
  "" _ _ _ _ _
  Now let them drink,
  now let them drink, till they nod and wink,
  Ev -- en as good \nom fel -- lows \yesm should do, __ % 13a
  God save the lives of them \nom and their wives
  Whe -- ther \yesm they be young or old, __

  Back and side go bare, go __ bare, % 14a
  Both foot and hand __ go __ cold;
  But, bel -- ly, God send __ thee good ale e -- nough,
  Whe -- ther it be new __ or __ old,
  good ale -- and __ old, __ and old __

  Jol -- ly good ale __ and old. __
}

wordsBassOneMidi = \lyricmode {
  "Back " "and " "side " "go " "bare, " "go "  "bare, "
  "\nBoth " "foot " "and " "hand " "go "  "cold; "
  "\nBut, " bel "ly, " "God " "send " "thee " "good " "ale " e "nough, "
  "\nWhe" "ther " "it " "be " "new "  "or "  "old. " 
  "\nJol" "ly " "good " "ale "  "and "  "old " 
  "\nI " can "not " "eat " "but "  lit "tle "  "meat, " "my " stom "ach " "is "  "not " "good; "
  "\nBut " "sure " "I " "think " "that " "I " "can "  "drink "
  "\nWith " "him " "that " "wears " "a "  "hood. "
  "\nThough " "I " "go " "bare, " "take " "ye "  "no "  "care "
  "\nI "  "am " no "thing " a "cold; "
  "\nI "  "stuff " "my " "skin " "so "  "full " with "in "
  "\nOf " jol "ly " "good " "ale "  "and "  "old " 
                                % 12a
  "\nJol" "ly " "good " "ale " "and " "old, " 
  "\nI " "love " "no " "roast, "
  "\nI " "love " "no " "roast " "but " "a " nut "brown " "toast, "
  "\nAnd " "a " "crab " "laid " "in " "the " "fire, "  % 13a
  "\nI "  "am " "so " "wrapt " "and "  through "ly " "lapt "
  "\nOf " \nom jol "ly " \yesm "good " "ale " "and " "old, " 
  

  "\nBack " "and " "side " "go " "bare, " "go "  "bare, " % 14a
  "\nBoth " "foot " "and " "hand "  "go "  "cold; "
  "\nBut, " bel "ly, " "God " "send "  "thee " "good " "ale " e "nough, "
  "\nWhe" "ther " "it " "be " "new "  "or "  "old, "
  "\ngood " ale "and "  "old, "  "and " "old " 

  \set stanza = "2. "
  "\nAnd " "Tib " "my " "wife, " "that "
  "\nas " "her " "life "
  \nom Lov -- eth \yesm well good ale __ to seek,
  "\nFull " "oft " "drinks " "she, " "till " "ye " "may "  "see "
  "\nThe " "tears " "run " "down " "her "  "cheek. "
  "\nThen " "doth " "she " "trowl " "to " "me "  "the "  "bowl, "
  "\nEv’n " "as " "a " malt "worm " "should; "
  "\nAnd "  "saith " ‘sweet "heart, " "I’ve " "take " "my " "part "
  \nom Of this \yesm jol -- ly good ale __ and __ old! __
  "\n " "" "" "" "" ""
  "\nNow " "let " "them " "drink, "
  "\nnow " "let " "them " "drink, " "till " "they " "nod " "and " "wink, "
  "\nEv" "en " "as " "good " \nom fel "lows " \yesm "should " "do, "  % 13a
  "\nGod " "save " "the " "lives " "of " "them " \nom "and " "their " "wives "
  "\nWhe" "ther " \yesm "they " "be " "young " "or " "old, " 

  "\nBack " "and " "side " "go " "bare, " "go "  "bare, " % 14a
  "\nBoth " "foot " "and " "hand "  "go "  "cold; "
  "\nBut, " bel "ly, " "God " "send "  "thee " "good " "ale " e "nough, "
  "\nWhe" "ther " "it " "be " "new "  "or "  "old, "
  "\ngood " ale "and "  "old, "  "and " "old " 

  "\nJol" "ly " "good " "ale "  "and " "old. " 
}

bassOneB = \relative {
  d4.(f8 e4. g8 | d4. e8 c4. e8 | d8) r r4 r2 | d8 d a'4 8(g) f(e) | % 10a
  d4~8 r r2 |
}

bassOneE = \relative {
  d4.(f8 e4. g8 | d4. e8 c4. e8 | d8) r r4 r2 | R1*3 |
  R1 | c8 8 4 g' r | r2 r4 g, | bes4.(des8 c4. ees8 | % 12a
  des4. f8 ees4. f8 | g) r r4 r2 | s1*2 |
  d4 8 8 f4 r | d4 8 8 f4 8 8 | g4 ees a r | R1 |
  R1*2 | r2 r4 g8 g | % 13a
  \tag #'dash {a4 g \slurDashed a8(a) \slurSolid b4 |}
  \tag #'v1   {a4 g             a4               b4 |}
  \tag #'v2   {a4 g             a8 a             b4 |}
  c4.(d8 c4) a8(b) | c4 c d8(c) b(a) | % 13b
  \tag #'dash {g4  \slurDashed e8(8) d4 c8(8) \slurSolid |}
  \tag #'v1   {g'4             e4    d4 c4               |}
  \tag #'v2   {g'4             e8 8  d4 c8 8             |}
  \tag #'dash {\slurDashed d8(8) \slurSolid a'4 8(g) f(e) |} % 13c
  \tag #'v1   {            d8 8             a'4 8(g) f(e) |}
  \tag #'v2   {            d4               a'4 8(g) f(e) |}
  d4.(f8 e4. g8 | d4. e8 c4. e8 | d4. f8 e4. g8 | f4. a8 g4. b8) |
}

bassTwoB = \relative {
  d8 r r4 r2 | R1 | d8 8 a'4 8(g) f(e) | d4.(e8 c4. e8 | % 10a
  d4~8) r r2 |
}

bassTwoE = \relative {
  d4.(f8 e4. g8 | d4. e8 c4. e8 | d) r r4 r2 | R1 | d8 8 4 a r | r2 r4 a | % 11c
  d2(a | c8) r r4 r2 | r2 r4 g | bes4.(d8 c4. ees8 | % 12a
  des4. f8 ees4. f8 | g8) r r4 r2 | s1*2 |
  R1*4 |
  d4 8 8 c4 r | bes4 8 c d4 e8 f | g4 g, g bes8 8 | % 13a
  \tag #'dash {d4. f8 \slurDashed e8(8) \slurSolid g4 |}
  \tag #'v1   {d4. f8             e4               g4 |}
  \tag #'v2   {d4. f8             e8 8             g4 |}
  a4.(b8 a4) f | e c f d | % 13b
  \tag #'dash {g4  \slurDashed e8(8) d4 c8(8) \slurSolid |}
  \tag #'v1   {g'4             e4    d4 c4               |}
  \tag #'v2   {g'4             e8 8  d4 c8 8             |}
  \tag #'dash {\slurDashed d8(8) \slurSolid a'4 8(g) f(e) |} % 13c
  \tag #'v1   {            d8 8             a'4 8(g) f(e) |}
  \tag #'v2   {            d4               a'4 8(g) f(e) |}
  d4.(f8 e4. g8 | d4. e8 c4. e8 | d4.\breathe f8 e4. g8 | f4. a8 g4. b8) |
}

wordsBassTwoOne = \lyricmode {
  Back and side go bare, go __ bare,
  Both foot and hand go __ cold;
  But, bel -- ly, God send thee good ale e -- nough,
  Whe -- ther it be new __ or __ old. __
  Jol -- ly good ale __ and __ old __
  I can -- not eat but __ lit -- tle __ meat, my stom -- ach is __ not good;
  But sure I think that I can __ drink
  With him that wears a __ hood.
  Though I go bare, take ye __ no __ care
  I __ am no -- thing a -- cold;
  I __ stuff my skin so __ full with -- in
  Of jol -- ly good ale __ and __ old __
                                % 12a
  Jol -- ly good ale and old, __ and old, __
  I love no roast,
  I love no roast but a nut -- brown toast,
  And a crab laid in the fire, __ % 13a
  I __ am so wrapt and __ through -- ly lapt
  Of \nom jol -- ly \yesm good ale and old, __
  

  Back and side go bare, go __ bare, % 14a
  Both foot and hand __ go __ cold;
  But, bel -- ly, God send __ thee good ale e -- nough,
  Whe -- ther it be new __ or __ old,
  good ale -- and __ old, __ and old __

  And Tib my wife, that

  Jol -- ly good ale __ and old. __
}

wordsBassTwoTwo = \lyricmode {
  \repeat unfold 41 \skip 1
  as her life
  \nom Lov -- eth \yesm well good ale __ to seek,
  Full oft drinks she, till ye may __ see
  The tears run down her __ cheek.
  Then doth she trowl to me __ the __ bowl,
  Ev’n as a malt -- worm should;
  And __ saith ‘sweet -- heart, I’ve take my part
  \nom Of this \yesm jol -- ly good ale __ and __ old! __
  "" _ _ _ _ _ _ _
  Now let them drink,
  now let them drink, till they nod and wink,
  Ev -- en as good \nom fel -- lows \yesm should do, __ % 13a
  God save the lives of them \nom and their wives
  Whe -- ther \yesm they be young or old, __
}

wordsBassTwo = \lyricmode {
  Back and side go bare, go __ bare,
  Both foot and hand go __ cold;
  But, bel -- ly, God send thee good ale e -- nough,
  Whe -- ther it be new __ or __ old. __
  Jol -- ly good ale __ and __ old __
  I can -- not eat but __ lit -- tle __ meat, my stom -- ach is __ not good;
  But sure I think that I can __ drink
  With him that wears a __ hood.
  Though I go bare, take ye __ no __ care
  I __ am no -- thing a -- cold;
  I __ stuff my skin so __ full with -- in
  Of jol -- ly good ale __ and __ old __
                                % 12a
  Jol -- ly good ale and old, __ and old, __
  I love no roast,
  I love no roast but a nut -- brown toast,
  And a crab laid in the fire, __ % 13a
  I __ am so wrapt and __ through -- ly lapt
  Of \nom jol -- ly \yesm good ale and old, __
  
  Back and side go bare, go __ bare, % 14a
  Both foot and hand __ go __ cold;
  But, bel -- ly, God send __ thee good ale e -- nough,
  Whe -- ther it be new __ or __ old,
  good ale -- and __ old, __ and old __

  \set stanza = "2. "
  And Tib my wife, that as her life
  \nom Lov -- eth \yesm well good ale __ to seek,
  Full oft drinks she, till ye may __ see
  The tears run down her __ cheek.
  Then doth she trowl to me __ the __ bowl,
  Ev’n as a malt -- worm should;
  And __ saith ‘sweet -- heart, I’ve take my part
  \nom Of this \yesm jol -- ly good ale __ and __ old! __
  "" _ _ _ _ _ _ _
  Now let them drink,
  now let them drink, till they nod and wink,
  Ev -- en as good \nom fel -- lows \yesm should do, __ % 13a
  God save the lives of them \nom and their wives
  Whe -- ther \yesm they be young or old, __
  Back and side go bare, go __ bare, % 14a
  Both foot and hand __ go __ cold;
  But, bel -- ly, God send __ thee good ale e -- nough,
  Whe -- ther it be new __ or __ old,
  good ale -- and __ old, __ and old __

  Jol -- ly good ale __ and old. __
}

wordsBassTwoMidi = \lyricmode {
  "Back " "and " "side " "go " "bare, " "go "  "bare, "
  "\nBoth " "foot " "and " "hand " "go "  "cold; "
  "\nBut, " bel "ly, " "God " "send " "thee " "good " "ale " e "nough, "
  "\nWhe" "ther " "it " "be " "new "  "or "  "old. " 
  "\nJol" "ly " "good " "ale "  "and "  "old " 
  "\nI " can "not " "eat " "but "  lit "tle "  "meat, " "my " stom "ach " "is "  "not " "good; "
  "\nBut " "sure " "I " "think " "that " "I " "can "  "drink "
  "\nWith " "him " "that " "wears " "a "  "hood. "
  "\nThough " "I " "go " "bare, " "take " "ye "  "no "  "care "
  "\nI "  "am " no "thing " a "cold; "
  "\nI "  "stuff " "my " "skin " "so "  "full " with "in "
  "\nOf " jol "ly " "good " "ale "  "and "  "old " 
                                % 12a
  "\nJol" "ly " "good " "ale " "and " "old, "  "and " "old, " 
  "\nI " "love " "no " "roast, "
  "\nI " "love " "no " "roast " "but " "a " nut "brown " "toast, "
  "\nAnd " "a " "crab " "laid " "in " "the " "fire, "  % 13a
  "\nI "  "am " "so " "wrapt " "and "  through "ly " "lapt "
  "\nOf " \nom jol "ly " \yesm "good " "ale " "and " "old, " 
  
  "\nBack " "and " "side " "go " "bare, " "go "  "bare, " % 14a
  "\nBoth " "foot " "and " "hand "  "go "  "cold; "
  "\nBut, " bel "ly, " "God " "send "  "thee " "good " "ale " e "nough, "
  "\nWhe" "ther " "it " "be " "new "  "or "  "old, "
  "\ngood " ale "and "  "old, "  "and " "old " 

  \set stanza = "2. "
  "\nAnd " "Tib " "my " "wife, " "that " "as " "her " "life "
  \nom Lov -- eth \yesm well good ale __ to seek,
  "\nFull " "oft " "drinks " "she, " "till " "ye " "may "  "see "
  "\nThe " "tears " "run " "down " "her "  "cheek. "
  "\nThen " "doth " "she " "trowl " "to " "me "  "the "  "bowl, "
  "\nEv’n " "as " "a " malt "worm " "should; "
  "\nAnd "  "saith " ‘sweet "heart, " "I’ve " "take " "my " "part "
  \nom Of this \yesm jol -- ly good ale __ and __ old! __
  "\n " "" "" "" "" "" "" ""
  "\nNow " "let " "them " "drink, "
  "\nnow " "let " "them " "drink, " "till " "they " "nod " "and " "wink, "
  "\nEv" "en " "as " "good " \nom fel "lows " \yesm "should " "do, "  % 13a
  "\nGod " "save " "the " "lives " "of " "them " \nom "and " "their " "wives "
  "\nWhe" "ther " \yesm "they " "be " "young " "or " "old, " 
  "\nBack " "and " "side " "go " "bare, " "go "  "bare, " % 14a
  "\nBoth " "foot " "and " "hand "  "go "  "cold; "
  "\nBut, " bel "ly, " "God " "send "  "thee " "good " "ale " e "nough, "
  "\nWhe" "ther " "it " "be " "new "  "or "  "old, "
  "\ngood " ale "and "  "old, "  "and " "old " 

  "\nJol" "ly " "good " "ale "  "and " "old. " 
}

bassOne = {
  \global
  \bassA
  \bassOneB
  \bassC
  \repeat volta 2 {
    \keepWithTag #'dash {
      \bassD
      \bassOneE
      \bassF
    }
    \alternative {\bassG \bassH}
  }
  \bassI
}

bassOneSingle = {
  \global
  \bassA
  \bassOneB
  \bassC
  \keepWithTag #'v1 {
    \bassD
    \bassOneE
    \bassF
  }
  \bassG
  \keepWithTag #'v2 {
    \bassD
    \bassOneE
    \bassF
  }
  \bassH
  \bassI
}

bassTwo = {
  \global
  \bassA
  \bassTwoB
  \bassC
  \repeat volta 2 {
    \keepWithTag #'dash {
      \bassD
      \bassTwoE
      \bassF
    }
    \alternative {\bassG \bassH}
  }
  \bassI
}

bassTwoSingle = {
  \global
  \bassA
  \bassTwoB
  \bassC
  \keepWithTag #'v1 {
    \bassD
    \bassTwoE
    \bassF
  }
  \bassG
  \keepWithTag #'v2 {
    \bassD
    \bassTwoE
    \bassF
  }
  \bassH
  \bassI
}

pianoRHone = \relative {
  \global
  <aes' aes'>1-- | c2-- ees-- | aes,2.-- des4-- |
  fis,2.-- b4-- | e,2.-- a4-- | <d, d'>4-. a''-. 8(g) f-. e-. |
  d8(e) f-. e-. d-. e-. d-. g-. |
  <c, e a>4 r r2 | <c, e a>4 r r2 | q4 r r2 | q4 r r <d g b> | % 9b
  <e g c>4 r <f a d> r | <b, e g> r r c | d <d f a> r <e a> | % 9c
  \repeat unfold 4 {d4 <d f a> r <e a> |} % 10a
  r4 <d f a> r <e a> | r <d f a> r <c e g> |
  \repeat volta 2 {
    r4 <d f a> r <c e g> | r <d f a> r <d g b> |
    \repeat unfold 3 {r4 <d f a> r <c e g> |} r <d f a> r q | % 10c
    r4 <c e a> r <b e g> | r <c e a> r <c e g> | <d f a> r r2 | <e a c>4 r <d f a> r | % 11a
    r4 <b d g> r <d f a> | r <e g c> r <f a d> | <g c e> r r2 | d4.(f8 e4. g8 |
    d4. f8 c4. e8) | \repeat unfold 3 {r4 <d f a> r <c e g> |} % 11c
    d'8-. d-. a'4-. 8(g f e) | \vo d4-.(d-.) c2-- |
    d4-.(d-.) c8(b c a) | g4-.(c-.) c2-- | \vt r4 g r d \vo | f4-.(bes-.) 2~ | % 12a
    bes8 [ c des c ] bes4 ees | \ov r <g, b d> r <f a c> | r <ees g bes> r <d f a> | r <bes d g> r <c e g> |
    r4 <bes d g> r <c d f> | r <g' bes d> r <f a c> | r <ees g bes> r <d f a> | r <bes d f> r <a c e> |
    r4 <d f a> r <c e g> | r <bes d f> r <c d f> | r <bes d g> r <g' bes d> | % 13a
    <d' f a>4 <b d g> <a c e> <g b d> |
    r4 <f a c> r <f a d> | r <e g c>-. \vo d'8(c b a) | \ov <b, d g>4 r r c | % 13b
    d4 a'4 8(g f e) | \vo d4.(e8 c4. e8 | d4. f8 e4. g8 | d4. f8 e4. g8 | f4. a8 g4. b8) | % 13c
    \ov <e, a c>4 r <e g c> <g b d> | <a c e> r q <b d g> | <a c e>2 4 <b e g> | % 14a
    <a cis e>4 <g b d> <e a cis> <g b d> | % 14b
    <g c e>2 <f a d>4 <a d f> | <b e g>2 <g b e>4 <c e g> |
    <d f a>2 <c e g> | <a c e> <f a d>4 a' | a8(g f e d e f e | % 14c
    d8 e f e d e c e | d c bes c aes c bes c) | % 15a
    <aes aes'>1-- | c2-- ees-- | aes,2.-- des4-- |
    fis,2.-- b4-- | e,2.-- a4-- | % 15b
    \alternative {
      { \repeat unfold 3 {r4 <d, f a> r <c e g> |} }
      { d'4 <d a'>4 8 g <d f> e | }
    }
  }
  d4 r d,8(e f d) | g(a b g) a(b c a) | d r r4 r2 | d,1\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s1*20 |
  \repeat volta 2 {
    s1*19 | r4 <f' a> r <e a> |
    r4 <f a> r e | r <ees g> r <f g>( \vo | c'8)(d es c bes a bes g) | \vt r4 <des f> r <ees f> | % 12a
    r4 f g <aes c> | s1*3 |
    s1*4 |
    s1*4 | % 13a
    s1 | s2 <f a>4-. <d f>-. | s1 |
    s1 | b | b | b | b |
    s1*9 | % 14
    s1*7 |
    \alternative { {s1*3} {s1} }
  }
  s1*4 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\ff | s1*4 | s4 s2.\omit\p-\markup{\dynamic p \italic sub.} | s8 s2.\< s8\! |
  s1\f | s1*3 | % 9b
  s1*3 |
  s1\> | s\p | s\f | s\> | s4\! s2.\> | s1\p | % 10a
  \repeat volta 2 {
    s1*6 |
    s1*5 | s1\< | s\! | s2\p s\< | s4.\! s8\> s2 | s1\p | s1*2 | s1\omit\pp-\markup{\dynamic pp \italic cantabile} | s | % 11
    s1*4 | s2.\< s4\! | s\f s2\> s4\! | s1\p | s1*5 |
    s1*3 | s2 s\< | s1\! | s\f | s | s2 s\> | s1\p\cresc | s1*2 | s4. s\< s4\! |
    s1\omit\ff-\markup{\dynamic ff \italic marc.} | s1*8 | % 14
    s1*2 | s1\ff | s1*4 |
    \alternative {
      {s4 s2.\> | s4 s2.\! | s1\p |}
      {s1\ff |}
    }
  }
  s2 s\p\< | s1 | s\ff | s\ff |
}

pianoLHone = \relative {
  \global
  <aes, aes'>1-- | <c c'>2-- <ees ees'>-- | <aes, aes'>2.-- <des des'>4-- |
  <fis, fis'>2.-- <b b'>4-- | <e, e'>2.-- <a a'>4-- |
  <d, d'>4-. a''-. 8(g) f-. e-. | d(e) f-. e-. d-. e-. f-. g-. |
  <a, a'>4 r r2 | q4 r r2 | q4 r r2 | q4 <b b'> <a a'> <g g'> | % 9b
  <c, g'>4 r <d a'> r | <e b' e> r r c' | d r <a e' a> r |
  <d a'>4 r <c a'> r | <a a'> r <c a'> r | <d a'> r <c a'> r | <a a'> r <c a'> r | % 10a
  d4 r a r | d r a r |
  \repeat volta 2 {
    d4 r a r | d r a r |
    \repeat unfold 4 {d4 r a r} | % 10c
    a4 r e' r | a, r c r | d r r2 | a'4 r d, r | % 11a
    g,4.(a8 f4. g8 | e4. f8 d4. e8 | c4) r r2 | % 11b
    <<{\vo r4 <a'' d> r <e a>} \new Voice {\vt d4 r a r}>> \ov |
    <<{\vo r4 <f' a> r <e g>} \new Voice {\vt d4 r a r}>> \ov | % 11c
    d4 r a r | d r a r | d r a r |
    <<{\vo r4 <a' d> r <e a>} \new Voice {\vt d4 r a r}>> \ov |
    d4 r a r |
    d4 r a r | c4.(ees8 d4. f8 | ees4) r <g, g'> r | bes4.(des8 c4. ees8 | % 12a
    des4. f8 ees4. g8 | <g, g'>4) r <d d'> r | <g g'> r <d d'> r | <g g'> r <c, c'> r | % 12b
    <g' g'>4 r <d d'> r <g g'> r <d d'> r | <c c'> r <bes bes'> r | <g g'> r <f f'> r | % 12c
    <d' d'>4 r <c c'> r | <bes bes'> r <a a'> r <bes bes'> r <g g'> r d''4.(f8 e4. g8 | % 13a
    a4. b8 a4) <f, f'> | <e e'> <c c'> <f f'> <d d'> | <g g'> r r c |
    d4 a'4 8(g f e) | % 13c
    <<{\vo f2 g | f g | f g | a b|}
      \new Voice {\vt \repeat unfold 4 {d,4-. a-. e'-. a,-. |}}>> \ov
    <a a'>4 <g g'> <c c'> <b b'> | <a a'> <g g'>8 <b b'> <a a'>4 <g g'> | % 14a
    <a a'>4 <g g'> <c c'>8 <b b'> <a a'> <g g'> |
    <a a'>2. <b b'>4 | <c c'> q <d d'>8 <c c'> <b b'> <a a'> | % 14b
    <g g'>4 <e e'> <d d'> <c c'> |
    <d d'>4 <a' a'>4 8 <g g'> <f f'> <e e'> | % 14c
    <d d'>4 <a' a'>4 8 <g g'> <f f'> <e e'> |
    <<{\vo d'2~(8 e f e | \ov d e f e d e c e | d c bes c aes c bes d) |}
      \new Voice {\vt d,1 | s1*2 |}>> \ov
    <aes' aes'>1 | <c c'>2-- <ees ees'>-- | <aes, aes'>2.-- <des des'>4-- | % 15a++
    <fis, fis'>2.-- <b b'>4-- | <e, e'>2.-- <a a'>4-- | % 15b
    \alternative {
      {<d, d'>4 r a' r | q r a r | q r a r |}
      {q4 <a a'>4 8 <g g'> <f f'> <e e'> |}
    }
  }
  <d d'>4 r d'8(e f d) | g(a b g) (a b c a) | d r r4 r2 | <d,, d'>1\fermata |
}

pianoLHtwo = \relative {
  \global
  s1 |
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = repeat
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorOne
            \new Voice \tenorOne
            \addlyrics \wordsTenorOneOne
            \addlyrics \wordsTenorOneTwo
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorTwo
            \new Voice \tenorTwo
            \addlyrics \wordsTenorTwoOne
            \addlyrics \wordsTenorTwoTwo
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassOne
            \new Voice \bassOne
            \addlyrics \wordsBassOneOne
            \addlyrics \wordsBassOneTwo
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassTwo
            \new Voice \bassTwo
            \addlyrics \wordsBassTwoOne
            \addlyrics \wordsBassTwoTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
                 \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
               }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorOne
            \new Voice \tenorOneSingle
            \addlyrics \wordsTenorOne
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorTwo
            \new Voice \tenorTwoSingle
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassOne
            \new Voice \bassOneSingle
            \addlyrics \wordsBassOne
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassTwo
            \new Voice \bassTwoSingle
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
                 \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
               }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "single-tenor1"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorOne
            \new Voice \tenorOneSingle
            \addlyrics \wordsTenorOne
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorTwo
            \new Voice \tenorTwoSingle
            \addlyrics {\tiny \wordsTenorTwo}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassOne
            \new Voice \bassOneSingle
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassTwo
            \new Voice \bassTwoSingle
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
                 \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
               }
    }
  }
}
#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "single-tenor2"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorOne
            \new Voice \tenorOneSingle
            \addlyrics {\tiny \wordsTenorOne}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorTwo
            \new Voice \tenorTwoSingle
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassOne
            \new Voice \bassOneSingle
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassTwo
            \new Voice \bassTwoSingle
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
                 \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
               }
    }
  }
}
#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "single-bass1"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorOne
            \new Voice \tenorOneSingle
            \addlyrics {\tiny \wordsTenorOne}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorTwo
            \new Voice \tenorTwoSingle
            \addlyrics {\tiny \wordsTenorTwo}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassOne
            \new Voice \bassOneSingle
            \addlyrics \wordsBassOne
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassTwo
            \new Voice \bassTwoSingle
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
                 \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
               }
    }
  }
}
#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "single-bass2"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorOne
            \new Voice \tenorOneSingle
            \addlyrics {\tiny \wordsTenorOne}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorTwo
            \new Voice \tenorTwoSingle
            \addlyrics {\tiny \wordsTenorTwo}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassOne
            \new Voice \bassOneSingle
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassTwo
            \new Voice \bassTwoSingle
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
                 \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
               }
    }
  }
}
#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorOne
            \new Voice \tenorOneSingle
            \addlyrics \wordsTenorOne
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorTwo
            \new Voice \tenorTwoSingle
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassOne
            \new Voice \bassOneSingle
            \addlyrics \wordsBassOne
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassTwo
            \new Voice \bassTwoSingle
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
                 \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
               }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-tenor1"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorOne
            \new Voice \tenorOneSingle
            \addlyrics \wordsTenorOne
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorTwo
            \new Voice \tenorTwoSingle
            \addlyrics {\tiny \wordsTenorTwo}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassOne
            \new Voice \bassOneSingle
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassTwo
            \new Voice \bassTwoSingle
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
                 \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
               }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-tenor2"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorOne
            \new Voice \tenorOneSingle
            \addlyrics {\tiny \wordsTenorOne}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorTwo
            \new Voice \tenorTwoSingle
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassOne
            \new Voice \bassOneSingle
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassTwo
            \new Voice \bassTwoSingle
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
                 \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
               }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-bass1"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorOne
            \new Voice \tenorOneSingle
            \addlyrics {\tiny \wordsTenorOne}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorTwo
            \new Voice \tenorTwoSingle
            \addlyrics {\tiny \wordsTenorTwo}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassOne
            \new Voice \bassOneSingle
            \addlyrics \wordsBassOne
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassTwo
            \new Voice \bassTwoSingle
            \addlyrics {\tiny \wordsBassTwo}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
                 \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
               }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-bass2"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorOne
            \new Voice \tenorOneSingle
            \addlyrics {\tiny \wordsTenorOne}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorTwo
            \new Voice \tenorTwoSingle
            \addlyrics {\tiny \wordsTenorTwo}
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassOne
            \new Voice \bassOneSingle
            \addlyrics {\tiny \wordsBassOne}
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassTwo
            \new Voice \bassTwoSingle
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
      \context { \Lyrics
                 \override VerticalAxisGroup.nonstaff-nonstaff-spacing.minimum-distance = ##f
               }
    }
  }
}

\book {
  \paper {
    output-suffix = "midi-tenor1"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorOne
            \new Voice \tenorOneSingle
            \addlyrics \wordsTenorOneMidi
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorTwo
            \new Voice \tenorTwoSingle
%            \addlyrics \wordsTenorTwoMidi
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassOne
            \new Voice \bassOneSingle
%            \addlyrics \wordsBassOneMidi
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassTwo
            \new Voice \bassTwoSingle
%            \addlyrics \wordsBassTwoMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = "midi-tenor2"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorOne
            \new Voice \tenorOneSingle
%            \addlyrics \wordsTenorOneMidi
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorTwo
            \new Voice \tenorTwoSingle
            \addlyrics \wordsTenorTwoMidi
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassOne
            \new Voice \bassOneSingle
%            \addlyrics \wordsBassOneMidi
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassTwo
            \new Voice \bassTwoSingle
%            \addlyrics \wordsBassTwoMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = "midi-bass1"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorOne
            \new Voice \tenorOneSingle
%            \addlyrics \wordsTenorOneMidi
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorTwo
            \new Voice \tenorTwoSingle
%            \addlyrics \wordsTenorTwoMidi
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassOne
            \new Voice \bassOneSingle
            \addlyrics \wordsBassOneMidi
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassTwo
            \new Voice \bassTwoSingle
%            \addlyrics \wordsBassTwoMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \paper {
    output-suffix = "midi-bass2"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = "Tenor I"
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorOne
            \new Voice \tenorOneSingle
%            \addlyrics \wordsTenorOneMidi
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorTwo
            \new Voice \tenorTwoSingle
%            \addlyrics \wordsTenorTwoMidi
          >>
                                % Single bass I staff
          \new Staff = "bass1" \with {
            instrumentName = "Bass I"
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassOne
            \new Voice \bassOneSingle
%            \addlyrics \wordsBassOneMidi
          >>
                                % Single bass II staff
          \new Staff = "bass2" \with {
            instrumentName = "Bass II"
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassTwo
            \new Voice \bassTwoSingle
            \addlyrics \wordsBassTwoMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
