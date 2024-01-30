\version "2.25.12"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Rhinoceros"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Donald Swann"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Michael Flanders"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 6/8
}

TempoTrack = {
  \global
  \set Score.tempoHideNote = ##t
  \tempo \markup{"Bouncing, in the region of" \rhythm {4.} "= 96"} 4=96
  s2.*4 |
  \repeat volta 4 {
    s2.*13 \tempo "rit." 4=90 s4. \tempo 4=15 s8 \tempo 4=90 s4 |
    s2. | s4. \tempo "a tempo" 4=96 s4. | s2.*3 |
    s2 s8 \tempo "last time rit." 4=90 s8 | s2. s4. \tempo 4=30 s4 \tempo 4=90 s8 |
    \alternative {
      \volta 1,2,3 { s2.*5 |}
      \volta 4     { \tempo "a tempo" 4=96 s2.*2 }
    }
  }
  s2.*2 \tempo "rit." 4=90 s2.*4 |
}

TempoTrackSingle = {
  \set Score.tempoHideNote = ##t
  \tempo \markup{"Bouncing, in the region of" \rhythm {4.} "= 96"} 4=96
  s2.*4 |
  \repeat unfold 3 {
    s2.*13 \tempo "rit." 4=90 s4. \tempo 4=15 s8 \tempo 4=90 s4 |
    s2. | s4. \tempo "a tempo" 4=96 s4. | s2.*3 |
    s2 s8 s8 | s2. s4. \tempo 4=32 s4 \tempo 4=96 s8 |
    s2.*5 |
  }
    s2.*13 \tempo "rit." 4=90 s4. \tempo 4=15 s8 \tempo 4=90 s4 |
    s2. | s4. \tempo "a tempo" 4=96 s4. | s2.*3 |
    s2 s8 \tempo "rit." 4=90 s8 | s2. s4. \tempo 4=30 s4 \tempo 4=90 s8 |
 \tempo "a tempo" 4=96 s2.*2
  s2.*2 \tempo "rit." 4=90 s2.*2 \tempo 4=60 s2. \tempo 4=90 s2. |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "181a" } s2.*4
  \repeat volta 4 {
    \textMark \markup { \box "181b" } s2.*3
    \textMark \markup { \box "182a" } s2.*3
    \textMark \markup { \box "182b" } s2.*4
    \textMark \markup { \box "182c" } s2.*4
    \textMark \markup { \box "183a" } s2.*5
    \textMark \markup { \box "183b" } s2.*3
    \alternative {
      \volta 1,2,3 {
        s2.*2
        \textMark \markup { \box "183c" } s2.*3
      }
      \volta 4     {
        s2.*2
      }
    }
  }
  \textMark \markup { \box "183d" } s2.*6
}

melodyA = \relative {
  R2.*3 | r4 r8 r r bes' \section |
}

melodyB = \relative {
  ees''8 d c bes aes g | % 181b
  \tag #'dash    {\slurDashed fis8(8) \slurSolid g8 c g g |}
  \tag #'(v3 v4) {            fis4               g8 c g g |}
  \tag #'(v1 v2) {            fis8 8             g8 c g g |}
  fis4 g8 bes4 g8 |
  \tag #'dash       {aes4. <<{\vo r8 8 8} \new Voice {\vt \tiny r4 aes8}>> \ov \normalsize |} % 182a
  \tag #'(v2 v3 v4) {aes4.                                      r4 aes8                    |}
  \tag #'v1         {aes4.        r8 8 8                                                   |}
  \tag #'dash    {<<{\vo g8 aes8 8} \new Voice {\vt \normalsize g4 aes8}>> \normalsize \ov \slurDashed aes(8)  8 \slurSolid |}
  \tag #'(v3 v4) {                                              g4 aes8                                aes4    8            |}
  \tag #'(v1 v2) {       g8 aes8 8                                                                     aes8 8  8            |}
  \tag #'dash    {g4 aes8 \slurDashed 8(8)(8) \slurSolid|}
  \tag #'v1      {g4 aes8             8 8  8            |}
  \tag #'v2      {g4 aes8             4.                |}
  \tag #'(v3 v4) {g4 aes8             4    8            |}
  \tag #'dash       {<<{\vo \tiny d8 8 c} \new Voice {\vt d4 c8}>> \ov \normalsize bes4 aes8 |} % 182b
  \tag #'(v1 v3 v4) {                                     d4 c8                    bes4 aes8 |}
  \tag #'v2         {             d8 8 c                                           bes4 aes8 |}
  g4.~8 r g |
  \tag #'dash    {<<{\vt \tiny fis8 g g g g g} \new Voice {\vo fis4 g8 4 8}>>}
  \tag #'(v1 v4) {fis4 8   4 8                                               }
  \tag #'v2      {fis8 8 8 4 8                                               }
  \tag #'v3      {fis4 8   8 8 8                                             }
  \tag #'dash       {<<{\vt \tiny fis8 g g \normalsize} \new Voice {\vo \normalsize fis4 g8}>> \slurDashed g8(8) \slurSolid g8 |}
  \tag #'(v1 v2 v3) {                                                               fis4 g8                g8 8             g8 |}
  \tag #'v4         {             fis8 g g                                                                 g4               g8 |}
  c4 bes8 aes4 g8 | % 182c
  \tag #'dash    {c4.~8 <<{\vo \tiny c8[8]} \new Voice {\tiny r8 \normalsize c}>> |}
  \tag #'(v1 v4) {c4.~8                                       r8             c    |}
  \tag #'(v2 v3) {c4.~8              c8 8                                         |}
  \tag #'dash    {<<{\vo \tiny f8 8 ees  d d  c} \new Voice {\vt f4 ees8 d4 c8}>> |}
  \tag #'(v1 v4) {             f4   ees8 d4   c8                                  |}
  \tag #'v2      {             f8 8 ees8 d8 8 c                                   |}
  \tag #'v3      {             f8 8 ees  d4   c8                                  |}
  \tag #'dash    {<<{\vt bes8 g  g \vo \tiny des'8\fermata c  c} \new Voice {\vo bes4 g8 \vt \tiny des'4\fermata c8}>>|}
  \tag #'v1      {       bes8 g  g           des'8\fermata(c) c                                                       |}
  \tag #'v2      {       bes8 g  g           des'8\fermata c  c                                                       |}
  \tag #'(v3 v4) {       bes8(g) g           des'8\fermata(c) c                                                       |}
  \tag #'dash       {<<{\vo \normalsize aes8 \slurDashed bes(8) \slurSolid} \new Voice {\vt aes4 bes8}>> \ov g4   f8 |} % 183a
  \tag #'(v1 v3 v4) {                   aes8             bes4                                                g4   f8 |}
  \tag #'v2         {                   aes8             bes8 8                                              g8 8 f8 |}
  ees4. bes'4^\markup\bold REFRAIN aes8 |
  g4 ees8 4 8 | 4. r8 r f | d4 bes8 4 8 |
  bes4. r8 r bes | % 183b
  \tag #'dash       {<<{\vo \tiny c8 8 8} \new Voice {\vt c4 8}>> \normalsize d4 8 |}
  \tag #'(v1 v2 v3) {             c8 8 8                                      d4 8 |}
  \tag #'v4         {                                     c4 8                d4 8 |}
  \ov ees4 8 bes'4\fermata b8 |
}

melodyC = \relative {
  c''4 ees,8 4 8 | 4 r8 r4. |
  R2. | R |
  \tag #'dash    {r4 r8 r bes'8    8 |}
  \tag #'v1      {r4 r8 r bes8     8 |}
  \tag #'(v2 v3) {r4 r8 r r     bes8 |}
}

melodyD = \relative {
  c''4 aes8 d4 bes8 | ees4. r8 r bes |
}

melodyE = \relative {
  c''4 aes8 d4 bes8 | ees4. r8 r c, | bes4. aes | % 183d
  g <<{\vth f} \new Voice {\vo \tiny bes}>> |
  <<{\vth ees,2.\fermata} \new Voice {\vo \tiny ees'2.}>> | \ov R2. |
}

melody = {
  \global
  \melodyA
  \repeat volta 4 {
    \keepWithTag #'dash \melodyB
    \alternative {
      \volta 1,2,3 { \keepWithTag #'dash \melodyC }
      \volta 4     {                     \melodyD }
    }
  }
  \melodyE \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 { \melodyB \melodyC }
  \keepWithTag #'v2 { \melodyB \melodyC }
  \keepWithTag #'v3 { \melodyB \melodyC }
  \keepWithTag #'v4 { \melodyB \melodyD }
  \melodyE \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
  s2.*3 | s2 s8 s\mf |
  \repeat volta 4 {
    s2.*3
    s2.*11 |
    s2. | s4. s\f | s2.*5 |
    \alternative {
      \volta 1,2,3 { s2.*5 | s2 s4\mf }
      \volta 4     { s2.\ff | s2 s8 s\omit\p-\markup{\halign #RIGHT \italic subito \dynamic p} }
    }
  }
  s2. | s | s-\markup {\italic still \dynamic p} | s2.*3 |
}

rhino = \lyricmode { Rhi -- no -- ce -- ros }

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, no -- bo -- dy loves the \nom \rhino \yesm much—
  If you ask the rea -- son why,
  They will \nom tell you be -- cause of \yesm his sca -- ly \nom touch
  Or his \yesm hard _ and glit -- tering eye; __
  But should _ you ask _ a truth -- _ ful \nom man
  You \yesm will get this quick re -- sponse: __
  _ ‘I do _ not trust _ that thing on his nose,
  _ The Bod -- ger on his Bonce!’
  Oh, the Bod -- ger on the Bonce!
  The Bod -- ger on the Bonce!
  Oh, pi -- ty the poor old Rhi -- no with
  The Bod -- ger on the Bonce!
  \set stanza = "2." Yet a
}

wordsTwo = \lyricmode {
  _
  \set stanza = "(2.)"
  sen -- si -- tive heart the \nom \rhino \yesm owns;
  If you doubt it, here's the proof:
  _ That thing on his \nom nose is \yesm for tak -- ing stones
  \nom Out of a \yesm hor -- se's hoof. __
  He sel -- dom if ev -- _ er, meets _ a \nom horse
  "(It" \yesm is this that makes him sad)
  When he does then it has -- n't a stone in its hoof,
  But he would \nom if he did \yesm "and it" had!
  Oh, the
  \repeat unfold 26 \skip 1
  \set stanza = "3." _ And
}

wordsThree = \lyricmode {
  _
  \set stanza = "(3.)"
  just to bring plea -- sure to those __ who like
  To en -- joy the nat -- ural scene,
  _ He picks __ _ up lit -- ter on his \nom spike _
  To \yesm keep _ the fo -- rest clean. __
  And if _ one day to his ha -- _ bi -- \nom tat
  For a \yesm pic -- nic you should roam, __
  He will o -- pen a tin _ should you _ have left _
  Your o -- pe -- ner at home.
  With the
  \repeat unfold 26 \skip 1
  \set stanza = "4." _ So
}

wordsFour= \lyricmode {
  _
  \set stanza = "(4.)"
  treat the \rhino as __ your friend
  Tho' he looks a fear -- some sight;
  _ He am -- _ ply jus -- ti -- fies his \nom end _
  Be -- \yesm cause _ his means are right; __
  And ask _ your -- self, _ would \markup\italic you do as well
  Ful -- fil -- ling long felt wants, __
  _ If na -- _ ture had _ en -- dowed _ you with
  _ A Bod -- ger on your Bonce?
  Yes, a Bod -- ger on your Bonce!
  A Bod -- ger on your Bonce!
  If Na -- _ ture had en -- dowed you with
  A
  \repeat unfold 7 \skip 1
  Bod -- ger on your Bonce?
  A Bod -- ger on your Bonce?
  A Bod -- ger on your Bonce?
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  Oh, no -- bo -- dy loves the \rhino much—
  If you ask the rea -- son why,
  They will tell you be -- cause of his sca -- ly touch
  Or his hard and glit -- tering eye; __
  But should you ask a truth -- ful man
  You will get this quick re -- sponse: __
  ‘I do not trust that thing on his nose,
  The Bod ger on his Bonce!’
  Oh, the Bod -- ger on the Bonce!
  The Bod -- ger on the Bonce!
  Oh, pi -- ty the poor old Rhi -- no with
  The Bod -- ger on the Bonce!

  \set stanza = "2."
  Yet a sen -- si -- tive heart the \rhino owns;
  If you doubt it, here's the proof:
  That thing on his nose is for tak -- ing stones
  Out of a hor -- se's hoof. __
  He sel -- dom if ev -- er, meets a horse
  "(It" is this that makes him sad)
  When he does then it has -- n't a stone in its hoof,
  But he would if he did and it had!
  Oh, the Bod -- ger on the Bonce!
  The Bod -- ger on the Bonce!
  Oh, pi -- ty the poor old Rhi -- no with
  The Bod -- ger on the Bonce!

  \set stanza = "3."
  And just to bring plea -- sure to those __ who like
  To en -- joy the nat -- ural scene,
  He picks __ up lit -- ter on his spike
  To keep the fo -- rest clean. __
  And if one day to his ha -- bi -- tat
  For a pic -- nic you should roam, __
  He will o -- pen a tin should you have left
  Your o -- pe -- ner at home.
  With the Bod -- ger on the Bonce!
  The Bod -- ger on the Bonce!
  Oh, pi -- ty the poor old Rhi -- no with
  The Bod -- ger on the Bonce!

  \set stanza = "4."
  So treat the \rhino as your friend
  Tho' he looks a fear -- some sight;
  He am -- ply jus -- ti -- fies his end
  Be -- cause his means are right; __
  And ask your -- self, would \markup\italic you do as well
  Ful -- fil -- ling long felt wants, __
  If na -- ture had en -- dowed you with
  A Bod -- ger on your Bonce?
  Yes, a Bod -- ger on your Bonce!
  A Bod -- ger on your Bonce!
  If Na -- ture had en -- dowed you with
  A Bod -- ger on your Bonce?
  A Bod -- ger on your Bonce?
  A Bod -- ger on your Bonce?
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " no bo "dy " "loves " "the " rhi no cer "os " "much— "
  "\nIf " "you " "ask " "the " rea "son " "why, "
  "\nThey " "will " "tell " "you " be "cause " "of " "his " sca "ly " "touch "
  "\nOr " "his " "hard " "and " glit "tering " "eye; " 
  "\nBut " "should " "you " "ask " "a " truth "ful " "man "
  "\nYou " "will " "get " "this " "quick " re "sponse: " 
  "\n‘I " "do " "not " "trust " "that " "thing " "on " "his " "nose, "
  "\nThe " Bod "ger " "on " "his " "Bonce!’ "
  "\nOh, " "the " Bod "ger " "on " "the " "Bonce! "
  "\nThe " Bod "ger " "on " "the " "Bonce! "
  "\nOh, " pi "ty " "the " "poor " "old " Rhi "no " "with "
  "\nThe " Bod "ger " "on " "the " "Bonce!\n"

  \set stanza = "2."
  "\nYet " "a " sen si "tive " "heart " "the " rhi no cer "os " "owns; "
  "\nIf " "you " "doubt " "it, " "here's " "the " "proof: "
  "\nThat " "thing " "on " "his " "nose " "is " "for " tak "ing " "stones "
  "\nOut " "of " "a " hor "se's " "hoof. " 
  "\nHe " sel "dom " "if " ev "er, " "meets " "a " "horse "
  "\n(It " "is " "this " "that " "makes " "him " "sad) "
  "\nWhen " "he " "does " "then " "it " has "n't " "a " "stone " "in " "its " "hoof, "
  "\nBut " "he " "would " "if " "he " "did " "and " "it " "had! "
  "\nOh, " "the " Bod "ger " "on " "the " "Bonce! "
  "\nThe " Bod "ger " "on " "the " "Bonce! "
  "\nOh, " pi "ty " "the " "poor " "old " Rhi "no " "with "
  "\nThe " Bod "ger " "on " "the " "Bonce!\n"

  \set stanza = "3."
  "\nAnd " "just " "to " "bring " plea "sure " "to " "those "  "who " "like "
  "\nTo " en "joy " "the " nat "ural " "scene, "
  "\nHe " "picks "  "up " lit "ter " "on " "his " "spike "
  "\nTo " "keep " "the " fo "rest " "clean. " 
  "\nAnd " "if " "one " "day " "to " "his " ha bi "tat "
  "\nFor " "a " pic "nic " "you " "should " "roam, " 
  "\nHe " "will " o "pen " "a " "tin " "should " "you " "have " "left "
  "\nYour " o pe "ner " "at " "home. "
  "\nWith " "the " Bod "ger " "on " "the " "Bonce! "
  "\nThe " Bod "ger " "on " "the " "Bonce! "
  "\nOh, " pi "ty " "the " "poor " "old " Rhi "no " "with "
  "\nThe " Bod "ger " "on " "the " "Bonce!\n"

  \set stanza = "4."
  "\nSo " "treat " "the " rhi no cer "os " "as " "your " "friend "
  "\nTho' " "he " "looks " "a " fear "some " "sight; "
  "\nHe " am "ply " jus ti "fies " "his " "end "
  "\nBe" "cause " "his " "means " "are " "right; " 
  "\nAnd " "ask " your "self, " "would " "you " "do " "as " "well "
  "\nFul" fil "ling " "long " "felt " "wants, " 
  "\nIf " na "ture " "had " en "dowed " "you " "with "
  "\nA " Bod "ger " "on " "your " "Bonce? "
  "\nYes, " "a " Bod "ger " "on " "your " "Bonce! "
  "\nA " Bod "ger " "on " "your " "Bonce! "
  "\nIf " Na "ture " "had " en "dowed " "you " "with "
  "\nA " Bod "ger " "on " "your " "Bonce? "
  "\nA " Bod "ger " "on " "your " "Bonce? "
  "\nA " Bod "ger " "on " "your " "Bonce? "
}

pianoRHone = \relative {
  \global
  <bes ees g>4 8 4 <bes des g>8-> |
  <bes d aes'>4-> 8 4 8 |
  <bes ees g>4 8 4 <bes des g>8-> |
  <bes d aes'>4-> 8 4 bes'8 \section |
  \repeat volta 4 {
    <g ees'>8 d' c <ees, bes'> aes g | % 181b
    <ees fis>4 <ees g>8 <ees c'>4 <ees g>8 |
    <ees fis>4 <ees g>8 <des g bes>4 <des g>8 |
    <bes d aes'>4 \vo <bes' d aes'>8 4 \ov <bes, f' aes>8 | % 182a
    <bes des g>4 <bes d aes'>8 4 8 |
    <bes des g>4 <bes d aes'>8 4 <f' aes>8 |
    <bes d>4 <aes c>8 <g bes>4 <f aes>8 | % 182b
    <ees g>4 \vo <bes' ees g>8 4 \ov <bes, ees g>8 |
    <bes ees fis>4 <bes ees g>8 4 8 |
    <bes f' fis>4 <bes f' g>8 4 8 |
    <c e c'>4 <c e bes'>8 <c e aes>4 <c e g>8 | % 182c
    <<{\vo <f aes c>4.~4} \new Voice {\vt c4. r8 r}>> \ov c'8 |
    <aes c f>4 ees'8 <ees, a d>4 c'8 |
    <ees, bes'>4 g8 <e g d'>4\fermata c'8 |
    <c, ees aes>8 bes'4 <bes, d g>4 <aes f'>8 | % 183a
    <g ees'>4. <bes' d bes'>4 <bes d aes'>8 |
    <bes ees g>4 <g bes ees>8 <f aes ees'>4 8 |
    <g bes ees>4 <bes, ees g>8(<c ees a>4->) <f aes f'>8 |
    <f bes d>4 <d f bes>8 <c ees bes'>4 8 |
    <d f bes>4 <c' ees f>8-> <bes d f bes>4-> bes,8 | % 183b
    <<
      {\vo r8 r <ees f aes> r r <f aes bes> | r8 r <bes, g'>8}
      \new Voice {\vt c4.(d | ees)}
    >>
    <des e g bes>4\fermata <d b'>8(
    \alternative {
      \volta 1,2,3 {
        <ees aes c>4->) <aes, c ees>8 4 <f aes ees'>8 |
        <g ees'>4 <bes ees g>8 4 <bes des g>8-> |
        <bes d aes'>4-> 8 4 8 | % 183b
        <ees g>4 8 4 <bes des g>8-> |
        <bes d aes'>4-> 8 4 bes'8 |
      }
      \volta 4     {
        \tag #'repeat {
        <>-\tweak control-points #'((-2 . 5) (15 . 5) (22 . 4) (23 . 2.2)) (
        <ees, aes c>4 <ees aes>8 <f aes d>4 <f aes bes>8 |}
        \tag #'single {
        <ees aes c>4 <ees aes>8 <f aes d>4 <f aes bes>8 |}
        <ees g bes ees>4) \ottava #1 <ees'' g bes>8-> <ees g bes ees>4-> \ottava #0 <ees,, g bes>8( |
      }
    }
  }
  <ees aes c>4 <ees aes d>8 <f aes>4 <f aes bes>8 | % 183c
  <ees g bes ees>4) <ees' g bes>8 <ees g bes ees>4. |
  bes,4.(ces | bes <aes bes d aes'>4.) |
  <g bes ees g>2.\fermata | <ees'' g bes ees>4. r |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s2.*4 |
  \repeat volta 4 {
    \alternative {
      \volta 1,2,3 { }
      \volta 4     { }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\f | s | s | s4. s4 s8\mf |
  \repeat volta 4 {
    s2.*3 |
    s2.*11 |
    s2. | s4. s\f | s2.*6 |
    \alternative {
      \volta 1,2,3 { s2.*4 | s2 s8 s\mf | }
      \volta 4     { s2. s2 s8 s\omit\p-\markup{\halign #RIGHT \italic subito \dynamic p} }
    }
  }
  s2.*5 | s2.\sf |
}

pianoLHone = \relative {
  \global
  <ees, ees'>4 r8 r r <e e'>8-> |
  <f f'>4-> r8 <bes, bes'>4-> r8 |
  <ees ees'>4 r8 r r <e e'>8-> |
  <f f'>4-> r8 <bes, bes'>4 r8 \section |
  \repeat volta 4 {
    <ees ees'>4 r8 <bes bes'>4 r8 | % 181b
    <ees ees'>4 r8 <bes bes'>4 r8 |
    <ees ees'>4 r8 <e e'>4 r8 |
    <f f'>4 \ss \rh <f'' aes>8-> 4-> \lh \ov r8 | % 182a
    <e,, e'>4 <f f'>8 4 r8 |
    <e e'>4 <f f'>8 4 r8 |
    <bes, bes'>4 r8 <d d'>4 r8 | % 182b
    <ees ees'>4 \rh <ees'' g>8-> 4-> \lh \ov r8 |
    <ees,, ees'>4 r8 q4 r8 |
    <des des'>4 r8 q4 r8 |
    <c c'>4 r8 <e e'>4 r8 | % 182c
    f8(c' aes' c4.) |
    <f,, f'>4. <fis fis'> |
    <g g'>4. <c bes'>\fermata |
    <f, f'>4. bes | <ees, bes'> <bes bes'> | % 183a
    <ees ees'>4 r8 <bes bes'>4 r8 |
    <ees, ees'>4 <ees' ees'>8(<f f'>4) r8 |
    <bes, bes'>4 r8 <f' f'>4 r8 |
    <bes bes'>4 <f f'>8-> <bes, bes'>4-> r8 | % 183b
    <f' f'>4. <bes, bes'> | <g g'>4. <c c'>4\fermata r8 |
    \alternative {
      \volta 1,2,3 {
        <f f'>4-> r8 r r <bes, bes'>8-> |
        <ees, ees'>4-> r8 r r <e' e'>-> |
        <f f'>4-> r8 <bes, bes'>4 r8 | % 183c
        <ees ees'>4 r8 r r <e e'>-> |
        <f f'>4-> r8 <bes, bes'>4 r8 |
      }
      \volta 4     {
        <f f'>4 r8 <bes' bes'>4 r8 |
        <ees ees'>4. <g, g'>4 r8 |
      }
    }
  }
  <f' f'>4 r8 <bes bes'>4 r8 | % 183d
  <ees, ees'>4 r8 <g, g'>4. |
  bes'4. <aes ees'> | <g ees'> <f d'> |
  <ees bes'>2.\fermata | <ees, ees'>4. r |
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  s2.*4
  \repeat volta 4 {
    \alternative {
      \volta 1,2,3 { }
      \volta 4     { }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "repeat")
  \score {
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \consists "Volta_engraver"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
            \new Lyrics \lyricsto "melody" \wordsTwo
            \new Lyrics \lyricsto "melody" \wordsThree
            \new Lyrics \lyricsto "melody" \wordsFour
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \keepWithTag #'repeat \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix single
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrackSingle
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \keepWithTag #'single \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix singlepage
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
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrackSingle
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \keepWithTag #'single \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix midi
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrackSingle
          \new Dynamics \dynamicsMelody
          \new Staff \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" { \wordsMidi }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \keepWithTag #'single \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {}
    \midi {}
  }
}
