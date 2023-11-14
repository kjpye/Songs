\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Got It from Agnes"
  subtitle    = \markup {"(from" \italic Tomfoolery ")"}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Tom Lehrer"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 6/8
}

TempoTrack = {
  \tempo Infectiously 4=190
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1b" } s2.*5
  \textMark \markup { \box "1c" } s2.*5
  \textMark \markup { \box "1d" } s2.*5
  \textMark \markup { \box "2a" } s2.*5
  \repeat volta 4 {
    \textMark \markup { \box "2b" } s2.*3
    \textMark \markup { \box "2c" } s2.*3
    \textMark \markup { \box "3a" } s2.*3
    \textMark \markup { \box "3b" } s2.*3
    \textMark \markup { \box "3c" } s2.*2
    \alternative {
      \volta 1,2,3 {
        s2.
        \textMark \markup { \box "4a" } s2.*5
      }
      \volta 4 {
        \textMark \markup { \box "4b" } s2.
      }
    }
  }
  s2.*3
  \textMark \markup { \box "4c" } s2.*5
  \textMark \markup { \box "4d" } s2.*5
}

ChordTrack = \chordmode {
  bes2. | s | f4.:7 r | s2. |
  bes2. | s | aes | s | d:7 |
  s2. | g:m | s | ges | s |
  ces2. | d:7 | ges4. r | s des:7 | ges2. |
  f2.:7 | bes | f:7 | bes | f:7 |
  \repeat volta 4 {
    bes4. f:7 | bes bes:7 | ees f:7 |
    bes4. b:dim | f2.:7 | bes4. g:m |
    c2.:7 | f:7 | bes4. f:7 |
    bes4. bes:7 | ees d:7 | g:m ges:7^5
    bes4.\f fis:aug | g:m fis:aug |
    \alternative {
      \volta 1,2,3 { c2.:9 | f:7 | bes | f:7 | bes | f:7 | }
      \volta 4 { c2.:9 | }
    }
  }
  s2. | ees4.:maj7/f f:11 | s2.
  s2.*5 |
  s4. f:7 | bes2. | s | ges:7 | ees |
}

melodyA = \relative {
  R2. | R | R | r4 f'8 bes4 c8 \section |
  d2.~ | 4 bes8 ees4 d8 | c2.~ | 4 ees,8 aes4 bes8 | c2.~ |
  c4 a8 d4 c8 | bes2.~ | 4 d,8 g4 a8 | bes2.~ | 4 8 aes4 ges8 |
  ces2. | c | des8 bes ges d4 r8 | r4. des | ges2. |R2.*5 \section | % 2a
}

melodyB = \relative {
  bes'4. a8 bes c | % 2a
  \tag #'dash    {bes4. <<{\voiceTwo f4 8} \new Voice {\voiceOne f4.}>> |}
  \tag #'(v1 v2) {bes4.                                          f4.    |}
  \tag #'(v3 v4) {bes4.              f4 8                               |}
  \tag #'dash {<<{\voiceTwo g4 f8} \new Voice {\voiceOne g4.}>> <<{\voiceOne ees8 f g} \new Voice {\voiceTwo ees4 g8}>> \oneVoice |}
  \tag #'(v1 v2) {                                       g4.                 ees8 f g                                             |}
  \tag #'(v3 v4) {          g4 f8                                                                            ees4 g8              |}
  f4. r4 f8 | % 2c
  \tag #'dash       {<<{\voiceTwo ees8 8 d c c ees} \new Voice {\voiceOne ees4 d8 c4 ees8}>> |}
  \tag #'(v1 v2 v3) {                                                     ees4 d8 c4 ees8    |}
  \tag #'v4         {             ees8 8 d c c ees                                           |}
  \tag #'dash       {<<{\voiceTwo d8  8 f bes8 8 b8} \new Voice {\voiceOne d,4 f8 bes4 b8}>> |}
  \tag #'(v1 v2 v3) {                                                      d,4 f8 bes4 b8    |}
  \tag #'v4         {             d,8 8 f bes8 8 b8                                          |}
  \tag #'dash    {<<{\voiceTwo c8 8 bes} \new Voice {\voiceOne c4 8}>> <<{\voiceOne bes8 a g} \new Voice {\voiceTwo a4 g8}>> |} % 3a
  \tag #'v1      {                                             c4 8                 bes8 a g                                 |}
  \tag #'v2      {             c8 8 bes                                                                             a4 g8    |}
  \tag #'(v3 v4) {                                             c4 8                                                 a4 g8    |}
  f4. r4 f8 |
  \tag #'dash       {<<{\voiceTwo bes4 8} \new Voice {\voiceOne bes4.}>> \oneVoice a8 bes c |}
  \tag #'(v1 v2 v3) {                                           bes4.              a8 bes c |}
  \tag #'v4         {             bes4 8                                           a8 bes c |}
  \tag #'dash       {<<{\voiceTwo bes4 f8} \new Voice {\voiceOne bes4.}>> \oneVoice f4 fis8 |} % 3b
  \tag #'(v1 v2 v3) {                                            bes4.              f4 fis8 |}
  \tag #'v4         {             bes4 f8                                           f4 fis8 |}
  g4 ees8 a4 d,8 |
  \tag #'dash       {bes'4. <<{\voiceTwo c4 bes8} \new Voice {\voiceOne c4.}>> \oneVoice |}
  \tag #'(v1 v2 v3) {bes4.                                              c4.              |}
  \tag #'v4         {bes4.               c4 bes8                                         |}
  d4 c8 bes4 c8 | % 3c
  \tag #'dash    {<<{\voiceTwo d4 c8} \new Voice {\voiceOne d4.}>> bes4 c8 |}
  \tag #'(v1 v4) {                                          d4.    bes4 c8 |}
  \tag #'(v2 v3) {             d4 c8                               bes4 c8 |}
}

melodyC = \relative {
  \oneVoice
  d''2.~ |
  d8 r r c d c | bes4. r | R2. | R | % 4a
  \tag #'dash       {<<{\voiceTwo r4. r4 f8} \new Voice {\oneVoice R2.}>> \oneVoice |}
  \tag #'(v1 v2 v4) {                                              R2.    |}
  \tag #'v3         {             r4. r4 f8                               |}
}

melodyD = \relative {
  \oneVoice
  d''4. r |
}

melodyE = \relative {
  \oneVoice
  d''4 c8 bes4 c8 d4. r | R2. \break |
  R2.*2 | R2.^\markup\italic "(looks around audience, finally chooses someone, grins, points to him or her and says:)" R2.*2 \break |
  r4. c8 d c | bes4 r8 r4. | R2. | R | R |
  \bar "|."
}

melody = {
  \global
  \melodyA
  \repeat volta 4 {
    \melodyB
    \alternative {
      \volta 1,2,3 \melodyC
      \volta 4     \melodyD
    }
  }
  \melodyE
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 {\melodyB \melodyC}
  \keepWithTag #'v2 {\melodyB \melodyC}
  \keepWithTag #'v3 {\melodyB \melodyC}
  \keepWithTag #'v4 {\melodyB \melodyD}
  \melodyE
  \bar "|."
}

wordsOne = \lyricmode {
  I love my friends, __
  And they love me, __
  We're just as close __ as we can be. __
  And just be -- cause __ we real -- ly care,
  What -- ev -- er we get, we share!

  I got it from Ag -- nes, _
  She _ got it from Jim.
  We all _ a -- gree _ it must _ have been _ Lou -- ise _ who gave it to him.
  Now she _ got it from Har -- _ ry,
  Who got it from Ma -- rie,
  And _ ev -- 'ry -- bo -- dy knows _ that Ma -- rie __
  got it from me. _
}

wordsTwo = \lyricmode {
  \repeat unfold 31 _
  Giles got it from Daph -- ne, _
  She _ got it from Joan,
  Who picked _ it up __ _ in Coun -- _ ty Cork, _
  a -- kiss -- in' the Blar -- _ ney Stone.
  Pi -- erre _ gave it to Shei -- _ la,
  Who must have brought it there.
  He _ got it from Fran -- cois and Jacques,
  A -- ha, __ Luck -- y Pi -- erre! _
}

wordsThree = \lyricmode {
  \repeat unfold 31 _
  Max got it from E -- dith,
  Who gets it ev -- _ 'ry spring.
  She got _ it from _ her Dad -- _ dy,
  who __ _ just gives __ _ her ev -- _ 'ry -- thing.
  She then _ gave it to Dan -- _ iel,
  whose span -- iel has it now.
  Our _ den -- tist ev -- en got it,
  and we're still __ won -- der -- ing how.
  But
}

wordsFour = \lyricmode {
  \repeat unfold 31 _
  I got it from Ag -- nes,
  Or may -- be it _ was Sue.
  Or Mil -- lie or Bil -- lie or Gil -- lie or Wil -- lie,
  it does -- _ n't mat -- _ ter who.
  It might have been at the pub,
  or at the club, or in the loo,
  And if you will be my friend, _
  then I _ _ _ _ _ _
  might… "(Mind" you, I said “might”)…
  Give it to you!
}

wordsSingle = \lyricmode {
  I love my friends, __
  And they love me, __
  We're just as close __ as we can be. __
  And just be -- cause __ we real -- ly care,
  What -- ev -- er we get, we share!

  I got it from Ag -- nes,
  She got it from Jim.
  We all a -- gree it must have been Lou -- ise who gave it to him.
  Now she got it from Har -- ry,
  Who got it from Ma -- rie,
  And ev -- 'ry -- bo -- dy knows that Ma -- rie __
  got it from me.

  Giles got it from Daph -- ne,
  She got it from Joan,
  Who picked it up __ in Coun -- ty Cork,
  a -- kiss -- in' the Blar -- ney Stone.
  Pi -- erre gave it to Shei -- la,
  Who must have brought it there.
  He got it from Fran -- cois and Jacques,
  A -- ha, __ Luck -- y Pi -- erre!

  Max got it from E -- dith,
  Who gets it ev -- 'ry spring.
  She got it from her Dad -- dy,
  who __ just gives __ her ev -- 'ry -- thing.
  She then gave it to Dan -- iel,
  whose span -- iel has it now.
  Our den -- tist ev -- en got it,
  and we're still __ won -- der -- ing how.

  But I got it from Ag -- nes,
  Or may -- be it was Sue.
  Or Mil -- lie or Bil -- lie or Gil -- lie or Wil -- lie,
  it does -- n't mat -- ter who.
  It might have been at the pub,
  or at the club, or in the loo,
  And if you will be my friend,
  then I
  might… "(Mind" you, I said “might”)…
  Give it to you!
}

midiWords = \lyricmode {
  "I " "love " "my " "friends, " 
  "\nAnd " "they " "love " "me, " 
  "\nWe're " "just " "as " "close "  "as " "we " "can " "be. " 
  "\nAnd " "just " be "cause "  "we " real "ly " "care, "
  "\nWhat" ev "er " "we " "get, " "we " "share!\n"

  "\nI " "got " "it " "from " Ag "nes, "
  "\nShe " "got " "it " "from " "Jim. "
  "\nWe " "all " a "gree " "it " "must " "have " "been " Lou "ise " "who " "gave " "it " "to " "him. "
  "\nNow " "she " "got " "it " "from " Har "ry, "
  "\nWho " "got " "it " "from " Ma "rie, "
  "\nAnd " ev 'ry bo "dy " "knows " "that " Ma "rie " 
  "\ngot " "it " "from " "me.\n"

  "\nGiles " "got " "it " "from " Daph "ne, "
  "\nShe " "got " "it " "from " "Joan, "
  "\nWho " "picked " "it " "up "  "in " Coun "ty " "Cork, "
  "\na" kiss "in' " "the " Blar "ney " "Stone. "
  "\nPi" "erre " "gave " "it " "to " Shei "la, "
  "\nWho " "must " "have " "brought " "it " "there. "
  "\nHe " "got " "it " "from " Fran "cois " "and " "Jacques, "
  "\nA" "ha, "  Luck "y " Pi "erre!\n"

  "\nMax " "got " "it " "from " E "dith, "
  "\nWho " "gets " "it " ev "'ry " "spring. "
  "\nShe " "got " "it " "from " "her " Dad "dy, "
  "\nwho "  "just " "gives "  "her " ev 'ry "thing. "
  "\nShe " "then " "gave " "it " "to " Dan "iel, "
  "\nwhose " span "iel " "has " "it " "now. "
  "\nOur " den "tist " ev "en " "got " "it, "
  "\nand " "we're " "still "  won der "ing " "how.\n"

  "\nBut " "I " "got " "it " "from " Ag "nes, "
  "\nOr " may "be " "it " "was " "Sue. "
  "\nOr " Mil "lie " "or " Bil "lie " "or " Gil "lie " "or " Wil "lie, "
  "\nit " does "n't " mat "ter " "who. "
  "\nIt " "might " "have " "been " "at " "the " "pub, "
  "\nor " "at " "the " "club, " "or " "in " "the " "loo, "
  "\nAnd " "if " "you " "will " "be " "my " "friend, "
  "\nthen " "I "
  "\nmight… " "(Mind " "you, " "I " "said " "“might”)… "
  "\nGive " "it " "to " "you! "
}

pianoRHone = \relative {
  \global \voiceOne
  bes'4. a | g f | \oneVoice <a, ees'>8-> d c bes a g | f4-. f'8 bes4 c8 \section
  \voiceOne d2.~ | 4 bes8 ees4 d8 | c2.~ | 4 ees,8 aes4 bes8 | c2.~ |
  c4 a8 d4 c8 | bes2.~ | 4 d,8 g4 a8 | bes2.~4 8 aes4 ges8 |
  ces2. | c | \oneVoice <ges des'>8-> bes ges d4-> r8 | r4. <ces des>-> \voiceOne ges'2.-> |
  \oneVoice <a, c ees f>2. \voiceOne | r4 <d f>8 r4 q8 | r4. r4 <ees f>8 | r4 <d f>8 r4 q8 | r4. r4 <ees f>8 \section | % 2a  
  \repeat volta 4 {
    bes'4. a8 bes c | bes4. f | g ees8 f g |
    f4.~4 8 | ees4 d8 c4 ees8 | d4 f8 bes4 b8 |
    c4 8 bes a g | \oneVoice <a, ees' f>4. r4 q8 \voiceOne | bes'4. a8 bes c | % 3a
    bes4. f4 fis8 | g4 ees8 a4 d,8 | \oneVoice <d g bes>4. <e bes' c> |
    \voiceOne d'4 c8 bes4 c8 | d4. bes4 c8 |
    \alternative {
      \volta 1,2,3 { d2.~ | 8 r r c d c | bes4. r4 <d, f>8 | r4. r4 <ees f>8 | r4 <d f>8 r4 q8 | r4. r4 <ees f>8 | }
      \volta 4 { \oneVoice <e g d'>2. \voiceOne | }
    }
  }
  d'4 c8 bes4 c8 | \oneVoice <ees, g bes d>4. <g, bes c>8 8 8 | <g bes c ees>4. 8 8 8 |
  <bes c ees g>4. 8 8 8 | <c f bes>4. 8 8 8 | <g' bes c ees>4. 8 8 8 | <bes c ees g>4. 8 8 8 | <c ees g bes>4. 8 8 8 |
  <ees g bes d>8-> r r c d c \voiceOne | % 4d
  bes4 r8 \oneVoice r4 <d, f bes>8 |
  r4 q8 r4 q8 |
  <des fes ges bes>8-> q-> q-> q-> q-> q-> |
  <d f bes>4-.-> r8 r4. |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  r4 <d' f>8 r4 q8 | r4 q8 r4 q8 | s2. | s |
  r4 <f bes>8 r4 q8 | r4 f8 r4 q8 | r4 <ees aes>8 r4 q8 | r4 c8 r4 <c ees>8 | r4 <d fis>8 r4 q8 |
  r4 <d fis>8 r4 q8 | r4 <d g>8 r4 q8 | r4 bes8 r4 r8 | r4 <des ges>8 r4 q8 | r4 des8 r4 bes8 |
  r4 <ees ges>8 r4 q8 | r4 <d fis>8 r4 q8 | s2. | s | <bes des>4 8 4 8 |
  s2. | bes4. a | g4 gis8 a4. | bes a | g4 gis8 a4. \section |
  \repeat volta 4 {
    r4 <d f>8 r4 <ees a>8 | r4 <d f>8 r4 <aes bes>8 | r4 <bes ees>8 r4 <a ees'>8 |
    r4 <bes d>8 r4 <aes d>8 | a4. a | r4 <bes d>8 r4 <d g>8 |
    r4 <e bes'>8 r4. | s2. | r4 <d f>8 r4 <ees a>8 | % 3a
    r4 <d f>8 r4 <aes bes>8 | r4 bes8 r4 c8 | s2. |
    <d bes'>4 r8 <d fis>4 r8 | <d bes'>4 r8 <d fis>4 r8 |
    \alternative {
      \volta 1,2,3 {
        <e g>2. |
        <ees a>8 r r <ees a>4. | r4 <d f>8 a4. | g4 gis8 a4. | bes a | g4 gis8 a4. | % 4a
      }
      \volta 4 { s2. | }
    }
  }
  <e g>4 r8 r4. | s2. | s |
  s2.*5 |
  s2. | r4 <d' f>8 s4. | s2.*3 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf | s4. s\< | s2.\! | s4 s2\mf |
  s2.*10 |
  s2. | s4 s2\< | s2.\f | s | s |
  s2.\> | s\mf | s | s\mp | s | % 2a
  \repeat volta 4 {
    s2.\mf | s | s |
    s2.*3 |
    s2.*3 | % 3a
    s2. | s | s4. s\< |
    s2.\! | s |
    \alternative {
      \volta 1,2,3 { s2. | s2.*5 | }
      \volta 4 { s2. }
    }
  }
  s2. | s | s\omit\cresc-\markup\bold "cresc. poco a poco" |
  s2.*5 |
  s2.\f | s2.*4 |
}

pianoLH = \relative {
  \global
  bes,4 r8 f4 r8 | bes4 r8 4 r8 | <f c'>8 r r r4. | R2. \section |
  bes4 r8 d4 r8 | f4 r8 bes,4 r8 | aes4 r8 ees'4 r8 | bes4 r8 ees4 r8 | d4 r8 fis4 r8 |
  a4 r8 d,4 r8 | g4 r8 d4 r8 | g,4 r8 d'4 r8 | ges4 r8 des4 r8 | ges4 r8 des4 r8 |
  ees4 r8 ces4 r8 | a4 r8 d4 r8 | des'8-> bes ges d4-> r8 | r4. <des f>4.-> | ges4-> r8 ges,4 r8 |
  f'4 ees8 d4 c8 | bes4 r8 f4 r8 | c'4 r8 f,4 r8 | bes4 r8 f4 r8 | c'4 r8 f,4 r8 \section | % 2a
  \repeat volta 4 {
    bes4 r8 f4 r8 | bes4 r8 d4 r8 | ees4 r8 f,4 r8 |
    bes4 r8 b4 r8 | c4 r8 f,4 r8 | bes4 r8 g4 r8 |
    c4 r8 c,8 d e | f4 f'8 ees d c | bes4 r8 f4 r8 | % 3a
    bes4 r8 d4 r8 | ees4 g8 fis4 a8 | g4. <ges, ges'> |
    <f f'>4 r8 <fis fis'>4 r8 | <g g'>4 r8 <fis fis'>4 r8 |
    \alternative {
      \volta 1,2,3 {
        <c' bes'>4. d8 ees e |
        f8 r r f,4. | bes4 r8 f4 r8 | c'4 r8 f,4 r8 | bes4 r8 f4 r8 | c'4 r8 f,4 r8 | % 4a
      }
      \volta 4 { <<{\voiceOne <c' bes'>2.} \new Voice {\voiceTwo r4. c,}>> | }
    }
  }
  \oneVoice <c' bes'>4 r8 r4. | <f, f'>4. f4 f'8 | f,4 f'8 f,4 f'8 |
  \repeat unfold 10 {f,4 f'8} |
  f,8 r r r4. | <bes bes'>4 r8 <a a'>4 r8 | <g g'>4 r8 <f f'>4 r8 | fes'8-> ees-> d-> des-> c-> ces-> | bes4-.-> r8 <bes, bes'>4-. r8 |
%  \bar "|."
}

#(set-global-staff-size 19)

\book {
  #(define output-suffix "repeat")
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
            \consists "Volta_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \keepWithTag #'dash \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
            \addlyrics \wordsFour
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context { \Staff
                 % \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "single")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context { \Staff
                 % \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "singlepage")
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
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context { \Staff
                 % \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice = "melody" \melodySingle
            \addlyrics { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
