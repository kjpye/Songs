\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Psalm 23"
  subtitle    = \markup{"Theme music from " \italic "The Vicar of Dibley"}
%  subsubtitle = "subsubttle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Howard Goodall"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Psalm 23"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 3/4
  \partial 4
}

TempoTrack = {
  \tempo 2.=40
  s4
  \set Score.tempoHideNote = ##t
  s2.*100
  s2 \tempo "rall." 2.=37 s4 | s2. | s4 \tempo 2.=18 s2 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s4 s2.*6
  \textMark \markup { \box "1b" } s2.*7
  \textMark \markup { \box "2a" } s2.*7
  \textMark \markup { \box "2b" } s2.*7
  \textMark \markup { \box "3a" } s2.*7
  \textMark \markup { \box "3b" } s2.*7
  \textMark \markup { \box "4a" } s2.*6
  \textMark \markup { \box "4b" } s2.*6
  \textMark \markup { \box "5a" } s2.*6
  \textMark \markup { \box "5b" } s2.*6
  \textMark \markup { \box "6a" } s2.*7
  \textMark \markup { \box "6b" } s2.*6
  \textMark \markup { \box "7a" } s2.*6
  \textMark \markup { \box "7b" } s2.*6
  \textMark \markup { \box "8a" } s2.*7
  \textMark \markup { \box "8b" } s2.*6
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s4 | s2.*7 | s2 s4\mp | s2.*5 |
  s2.*12 | s2 s4\mp | s2. | % 2
  s2.*14 |
  s2.*3 | s4 s2\mf | s2.*8 | % 4
  s2.*12 |
  s2. | s | s\< | s\f | s2.*9 | % 6
  s2.*5 | s2 s4\mp | s2.*6 |
  s2 s4\> | s2 s4\pp | s2. | s2 s4\p | s2.*9 |
}

soprano = \relative {
  \global
  r4 | R2.*7 | r4^\markup Solo r c' | a' bes c c bes a~ | a g bes | 2 a4 | a g bes~ |
  bes4 a g | f d a' | a g c, | a'(bes c~ | c bes a~ | a) g bes~ | 4 a a~ | % 2a
  a4 g d'~( | d c e,) | g f2 | R2. | R | r4 r c | a' bes c |
  c4 bes a~ | a g bes | 2 a4 | a g bes~ | 4 a g | f d a' | a g c, | % 3a
  a'4(bes c~ | c bes a~ | a) g bes~ | 4 a a~ | a g d'~( | d c e,) | g4 f2 |
  R2. | R | R | r4 a4 8 g | a2 8 g | a8 4. 8 g | % 4a
  a8 d4. a4 | g r d8 f | g2 a4 | d, f r | R2. | r4 a4 8 g |
  a2 8 g | a8 4. 8 g | a d4. a4 | g r d8 f | g2 a4 | d, f r | % 5a
  r4 r c | g'2 a4 | a g r | r g a | a g c, | g'2 a4 |
  a4 g r | r g a | a(g) c | 2.~ | c | R | R | % 6a
  R2.*4 | a4^\markup Solo bes c~ | c bes a |
  a4(g bes~ | bes) a a | a g bes~ | 4 a g | f d a' | a(g) c, | % 7a
  a'4 bes c~ | c bes a | a(g bes~ | 4) a a | a(g d'~ | d c) e, |
  g4 f2~ | 2. | R | r4 r g | g f2 | R2. | R | % 8a
  r4 r g | g f2 | R2. | R | r4 r g^\markup Solo | g f2\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  The Lord is my shep -- herd I __ shall not want
  he mak -- eth me __ to lie down in still pas -- tures,
  he lead -- eth me __ be -- side __ the still wat -- ers
  The Lord is my shep -- herd I __ shall not want,
  he mak -- eth me __ to lie down in green pas -- tures,
  he lead -- eth me __ be -- side __ the still __ wat -- ers
  Yea though I walk through the val -- ley of the shad -- ow of death,
  I will fear no e -- vil
  Yea though I walk through the val -- ley of the shad -- ow of death,
  I will fear no e -- vil
  For you are with me you will com -- fort me,
  You are with me you will com -- fort me __
  Sure -- ly good -- ness and mer -- cy shall fol -- low me __
  all the days of my life __
  and I will dwell in the house __ of the Lord __ for ev -- er __
  for ev -- er for ev -- er for ev -- er.
}

wordsSopMidi = \lyricmode {
  "[Solo]The " "Lord " "is " "my " shep "herd " "I "  "shall " "not " "want "
  "\nhe " mak "eth " "me "  "to " "lie " "down " "in " "still " pas "tures, "
  "\nhe " lead "eth " "me "  be "side "  "the " "still " wat "ers "
  "\n[Tutti]The " "Lord " "is " "my " shep "herd " "I "  "shall " "not " "want, "
  "\nhe " mak "eth " "me "  "to " "lie " "down " "in " "green " pas "tures, "
  "\nhe " lead "eth " "me "  be "side "  "the " "still "  wat "ers "
  "\nYea " "though " "I " "walk " "through " "the " val "ley " "of " "the " shad "ow " "of " "death, "
  "\nI " "will " "fear " "no " e "vil "
  "\nYea " "though " "I " "walk " "through " "the " val "ley " "of " "the " shad "ow " "of " "death, "
  "\nI " "will " "fear " "no " e "vil "
  "\nFor " "you " "are " "with " "me " "you " "will " com "fort " "me, "
  "\nYou " "are " "with " "me " "you " "will " com "fort " "me " 
  "\n[Solo]Sure" "ly " good "ness " "and " mer "cy " "shall " fol "low " "me " 
  "\nall " "the " "days " "of " "my " "life " 
  "\n[Tutti]and " "I " "will " "dwell " "in " "the " "house "  "of " "the " "Lord "  "for " ev "er " 
  "\nfor " ev "er " "for " ev "er " "[Solo]for " ev "er. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s4 | s2.*13 |
  s2.*12 | s2 s4\mp | s2. | % 2
  s2.*14 |
  s2.*3 | s4 s2\mf | s2.*8 | % 4
  s2.*12 |
  s2. | s | s\< | s\f | s2.*9 | % 6
  s2.*5 | s2 s4\mp | s2.*6 |
  s2 s4\> | s2 s4\pp | s2. | s2 s4\p | s2.*9 |
}

alto = \relative {
  \global
  r4 | R2.*13 |
  R2.*12 | r4 r c' | f g a | % 2b
  a4 g f~ | f f f | d2 f4 | d4 d d~ | d d d | bes4 4 f' | f e c | % 3a
  e4(f g~ | g f e | f) f f~ | f d d~ | d d g~( | 2 c,4) | e d2 |
  R2.*3 | r4 f f8 g | f2 8 g | f8 4. 8 8 | % 4a
  f8 4. 4 | d r d8 f | g2 a4 | d, f r | R2. | r4 d'4 8 8 |
  f,2 8 g | f8 4. 8 8 | 8 4. 4 | d r d8 f | g2 a4 | d, f r | % 5a
  r4 r c | e2 f4 | f d r | r e f | f d c | c2 4 |
  d4 d r | r c c | d2 c4 | f2.~ | f | R | R | % 6a
  R2.*6 |
  R2.*5 | r4 r c | % 7a
  e4 f g~ | g f e | f2.~ | 4 d d | 2(g4~ | 2) c,4 |
  e4 d2( | c2.) | R | r4 r g' | g f2 | R2. | R | % 8a
  R2.*5 | R2.\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  The Lord is my shep -- herd I __ shall not want,
  he mak -- eth me __ to lie down in green pas -- tures,
  he lead -- eth me __ be -- side __ the still __ wat -- ers
  Yea though I walk through the val -- ley of the shad -- ow of death,
  I will fear no e -- vil
  Yea though I walk through the val -- ley of the shad -- ow of death,
  I will fear no e -- vil
  For you are with me you will com -- fort me,
  You are with me you will com -- fort me, __
  and I will dwell __ in the house __ of the Lord __ for ev -- er __ for ev -- er
}

wordsAltoMidi = \lyricmode {
  "The " "Lord " "is " "my " shep "herd " "I "  "shall " "not " "want, "
  "\nhe " mak "eth " "me "  "to " "lie " "down " "in " "green " pas "tures, "
  "\nhe " lead "eth " "me "  be "side "  "the " "still "  wat "ers "
  "\nYea " "though " "I " "walk " "through " "the " val "ley " "of " "the " shad "ow " "of " "death, "
  "\nI " "will " "fear " "no " e "vil "
  "\nYea " "though " "I " "walk " "through " "the " val "ley " "of " "the " shad "ow " "of " "death, "
  "\nI " "will " "fear " "no " e "vil "
  "\nFor " "you " "are " "with " "me " "you " "will " com "fort " "me, "
  "\nYou " "are " "with " "me " "you " "will " com "fort " "me, " 
  "\nand " "I " "will " "dwell "  "in " "the " "house "  "of " "the " "Lord "  "for " ev "er "  "for " ev "er "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s4 | s2.*13 |
  s2.*12 | s2 s4\mp | s2. | % 2
  s2.*14 |
  s2.*3 | s4 s2\mf | s2.*8 | % 4
  s2.*12 |
  s2. | s | s\< | s\f | s | s | s4 s2\mp | s2.*6 | % 6
  s2.*5 | s2 s4\mp | s2.*6 |
  s2 s4\> | s2 s4\pp | s2. | s2 s4\p | s2.*9 |
}

tenor = \relative {
  \global
  r4 | R2.*13 |
  R2.*12 | r4 r c' | c2.~( | % 2b
  c2. | bes) | d2 c4 | c bes d~ | d c bes | a f bes~ | 2 4 | % 3a
  c4(d e~ | e d c | bes) 4 d~ | d c c~ | c bes f'~( | f e bes) | a4 2 |
  R2.*3 | r4 d4 8 8 | c2 8 8 | bes8 4. 8 8 | % 4a
  a8 4. c4 | bes r d,8 f | g2 a4 | d, f r | R2. | r4 d'4 8 8 |
  c2 8 8 | bes8 4. 8 8 | a8 4. c4 | bes r d,8 f | g2 a4 | d, f r | % 5a
  r4 r c | g'2 a4 | bes4 4 r | r g a | bes4 4 c, | g'2 a4 |
  f4 bes r | r g a | bes2 c4 | 2.~ | c | R | r4 d4. 8 | % 6a
  d2.~( | d | c~ | c) | R | R |
  R2.*5 | r4 r c, | % 7a
  c'4 d e~ | e d c | bes2.~ | 4 c c | c(bes f'~ | f e) e, |
  a4 2~ | 2. | R | r4 r g | g f2 | R2. | R | % 8a
  R2.*5 | R2.\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  The Lord __ want,
  he mak -- eth me __ to lie down in green
  he lead -- eth me __ be -- side __ the still __ wat -- ers
  Yea though I walk through the val -- ley of the shad -- ow of death,
  I will fear no e -- vil
  Yea though I walk through the val -- ley of the shad -- ow of death,
  I will fear no e -- vil
  For you are with me you will com -- fort me,
  You are with me you will com -- fort me, __
  com -- fort me __
  and I will dwell __ in the house __ of the Lord __ for ev -- er __ for ev -- er
}

wordsTenorMidi = \lyricmode {
  "The " "Lord "  "want, "
  "\nhe " mak "eth " "me "  "to " "lie " "down " "in " "green "
  "\nhe " lead "eth " "me "  be "side "  "the " "still "  wat "ers "
  "\nYea " "though " "I " "walk " "through " "the " val "ley " "of " "the " shad "ow " "of " "death, "
  "\nI " "will " "fear " "no " e "vil "
  "\nYea " "though " "I " "walk " "through " "the " val "ley " "of " "the " shad "ow " "of " "death, "
  "\nI " "will " "fear " "no " e "vil "
  "\nFor " "you " "are " "with " "me " "you " "will " com "fort " "me, "
  "\nYou " "are " "with " "me " "you " "will " com "fort " "me, " 
  "\ncom" "fort " "me " 
  "\nand " "I " "will " "dwell "  "in " "the " "house "  "of " "the " "Lord "  "for " ev "er "  "for " ev "er "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s4 | s2.*13 |
  s2.*12 | s2 s4\mp | s2. | % 2
  s2.*14 |
  s2.*3 | s4 s2\mf | s2.*8 | % 4
  s2.*12 |
  s2. | s | s\< | s\f | s2.*9 | % 6
  s2.*5 | s2 s4\mp | s2.*6 |
  s2 s4\> | s2 s4\pp | s2. | s2 s4\p | s2.*9 |
}

bass = \relative {
  \global
  r4 | R2.*13 |
  R2.*12 | r4 r c | f2.( | % 2b
  e2. | d) | g,2 a4 | bes2 4 | d2. | g,4 d' g, | c c a'8(g) | % 3a
  f2. | a, | d( | g,2~8) a | bes4 4 4( | c2.) | d4 2 |
  R2.*3 | r4 d4 8 8 | 2 8 8 | 8 4. 8 8 | % 4a
  d8 4. 4 | g r d8 f | g2 a4 | d, f r | R2. | r4 d4 8 8 |
  d2 8 8 | 8 4. 8 8 | 8 4. 4 | g r d8 f | g2 a4 | d, f r | % 5a
  r4 r c | 2 4 | g g r | r c c | g g c | 2 4 |
  g4 g r | r c c | a'(g) c, | a'2.~ | a | R | R | % 6a
  R2.*6 |
  R2.*5 | r4 r c, | % 7a
  f,2.(a) | d | g,2 8(a) | bes2. | c |
  d4 2( | a2.) | R | r4 r g' | g f2 | R2. | R | % 8a
  R2.*5 | R2.\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  The Lord __ want,
  he mak -- eth me down in green pas -- tures,
  he __ lead -- eth me __ be -- side __ the still __ wat -- ers
  Yea though I walk through the val -- ley of the shad -- ow of death,
  I will fear no e -- vil
  Yea though I walk through the val -- ley of the shad -- ow of death,
  I will fear no e -- vil
  For you are with me you will com -- fort me,
  You are with me you will com -- fort me, __
  and I house __ of the Lord __ for ev -- er __ for ev -- er
}

wordsBassMidi = \lyricmode {
  "The " "Lord "  "want, "
  "\nhe " mak "eth " "me " "down " "in " "green " pas "tures, "
  "\nhe "  lead "eth " "me "  be "side "  "the " "still "  wat "ers "
  "\nYea " "though " "I " "walk " "through " "the " val "ley " "of " "the " shad "ow " "of " "death, "
  "\nI " "will " "fear " "no " e "vil "
  "\nYea " "though " "I " "walk " "through " "the " val "ley " "of " "the " shad "ow " "of " "death, "
  "\nI " "will " "fear " "no " e "vil "
  "\nFor " "you " "are " "with " "me " "you " "will " com "fort " "me, "
  "\nYou " "are " "with " "me " "you " "will " com "fort " "me, " 
  "\nand " "I " "house "  "of " "the " "Lord "  "for " ev "er "  "for " ev "er "
}

apart = \partCombineApart
auto  = \partCombineAutomatic

pianoRHone = \relative {
  \global
  f'4\omit\p_~^\markup Swell | <f a> <g bes> <a c>~ | q <g bes> a~ | \voiceOne a g bes~ | 2 <c, a'>4~ | 4 <bes g'> bes'~ | 4 <c, a'> <bes g'> |
  f'4 d <f a>~ | q <e g> <bes c> | <f' a> <g bes> <a c>~ | q <g bes> a~ | a g bes~ | 2 <c, a'>4~ | q <bes g'> bes'~ |
  bes4 <c, a'> <bes g'> | f' d <f a>~( | q <e g>) <bes c> | <c e a> <d f bes> <e g c>~ | q <d f bes> a'~ | a <bes, f' g> <f' bes>~ | q <c f a> <c d f a>~ | % 2a
  q4 <bes d f g> <f' bes d>~ | <f d'> <e c'>~ e | \oneVoice a'4^\markup "To Great" bes c~ | c bes a~ | a g bes | bes8 a g4 <bes,, c>4~ ^\markup "To Swell" | <c a'>2.~ |
  q2.^~ | \voiceOne a'4 g <d bes'>~ | 2 <c a'>4 <c d f a> <bes d f g> <d f bes>~ | q <c d a'> <bes d g> | f' d <f a>~ | 4 <e g> <bes c> | % 3a
  <c e a>4 <d f bes> <e g c>~ | q <d f bes> <c e a> ~ | a' g bes~ | 4 <c, d a'> q~ | q <bes d g> <f' g bes d>~ | <f g d'> <e g c> <bes c e> | a''^\markup "To Great" bes c~ |
  c4 bes a~ | a g bes~ | 2.~ | 4 a2~ | 2.~ | 2.~ | % 4a
  a8 d4. a4 | g2 r4^\markup "To Swell" | g,2 a4 | d, f <g bes f'>~ | 4 e'8 d e c | d2 \auto  \oneVoice r4 |
  R2.*3 | r4 r d,8 f | \voiceOne g2 a4 | d, f \oneVoice <g bes f'>~ | % 5a
  q4 <d f g bes> <c d f a> | \voiceOne g'2 a4 | a g r | g2 a4 | a g c, | g'2 a4 |
  a4 g2~ | g a4 | <d, f a>(<e g>) c' | <f a> <g bes> <a c>~ | q <g bes> a~ | a g bes~ | 2 \oneVoice <c, d a'>4~ | % 6a
  q4 <bes d g> <d bes'>~ | q \voiceOne <c a'> <bes g'> | f' d <f a>~( | q <e g>) c | <f, a> <g bes> <a c>~ | q <g bes> <f a>~ |
  a4 g bes~ | 2 <c, d a'>4 | <c d f a> <bes d g> <d f bes>~ | 4 <c d a'> <bes d g> | f' d <f a>~ | 4 <e g> <bes c> | % 7a
  <c e a>4 <d f bes> <e g c>~ | 4 <d f bes> <c e a> | a' g bes~ | 4 <c, d a'> q~ | q <bes d g> <f' d'>~ | 4 <e c'>~ e |
  \oneVoice a'4^\markup "To Great" bes c~ | c bes a~ | a g bes~ | 2. | a4 bes c~ | c bes a | a g bes~ | % 8a
  bes2. | a,4^\markup "To Swell" bes c~ | c bes a~ | a g bes~ | <c, bes'>2.~ | bes'4 c2\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s4\omit\p | s2. | s2 f'4~ | f2. | d | d~ | d |
  bes2. | s | s | s2 f'4 | 2. | d | d~ |
  d2. | bes | s | s | s | d2. | s | % 2a
  s2 g4~ | 2 c,4 | s2.*5 |
  s2. | <bes f'> | s2.*5 | % 3a
  s2. | s | <bes f'>2 <d f>4~ | 4 s2 | s2.*3 |
  s2.*6 | % 4a
  s2. | \apart r2 d8 f | <bes, d>2. | <g bes>2 s4 | s4 <g' bes c>2 | s2. |
  s2.*4 <bes, d>2. | <g bes>2 s4 | % 5a
  s2. | <c e>2. | <bes d> | <c e> | <bes d>2 c4 | <c e>2. |
  <bes d>2. | <c e> | bes2 s4 | % 6a
  <<{\voiceTwo c'2.~ | 2. | s2 d4~ | 2 s4 |}
    { \voiceFour s2. | s2 f4~ | <bes, f'>2 s4 | s2. |}
  >>
  s2. | s4 d2 | <a bes>2. | bes2 4 | s2. | s | % 6b
  bes2. | s2.*5 | % 7a
  s2. | s | <d, f>2.~ | 4 s2 | s2 g4~ | 2 c,4 |
  s2.*13 | % 8
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\omit\p-\markup{\dynamic p \italic dolce} | s2.*13 |
  s2.*52 | % 2-5
  s2. | s | s\< | s\f | s2.*3 | % 6a
  s8 s\> s2 | s2. | s2 s4\! | s2 s4\p | s2. | s |
  s2.*25 |
}

pianoLHone = \relative {
  \global
  r4\omit\p <f c'>2.~( | <e c'>) | <d bes'> | g,2~8 a | bes2. | d |
  <g, a'>2. | <c bes'>2 c4 | \voiceOne c'2.~ | c | \oneVoice <d, bes'>2. | g,2~8 a | bes2. |
  d2. | <g, a'> | \voiceOne bes'2 a8 g | \oneVoice <f, f'>2. | a | d | g,2~8 a | % 2a
  bes2. a \clef treble \voiceOne | a''2.~ | a~ | a | <c, g'>2 \clef bass c,4 | \oneVoice <f a>2.~ |
  <e f a>2.~ < d f> | g2 f4 | R2. | R | <a bes>2.~ | bes2 a8 g | % 3a
  <c, f a>2.~ | <e a> | d | g | bes, | c \clef treble | \voiceOne g''4 f2~ |
  f2. | d | <f bes>2~ <e bes'>4 | <d f a>2. | <c f a> | <bes f' a> | % 4a
  <a f' a>2. | g'2 \clef bass d,8 f | g2 a4 | d, f f'~ | 4 e8 d e c \clef treble <d f a>2. |
  <c f a>2. | <bes f' a> | <a f' a> | g'2 \clef bass d,8 f | g2 a4 | d,4 f f'~ | % 5a
  \oneVoice f4 bes, a | <c, g'>2 a'4 | \voiceOne a g r \oneVoice | <c, g'>2 a'4 | a g c, | g'2 a4 |
  \voiceOne a4 g \oneVoice r | g2 a4 \voiceOne | a4(g) c | <a c>2.~ | q~ | a4 g bes~ | \oneVoice bes2 a4~ | % 6a
  a4 g bes~ | 4 a g | <g d'>2~ <g f'>4~ | q <g e'> <c, bes'> | <f c'>2.~ | <e c'> |
  \voiceOne a4 g \oneVoice bes~ | 2 a4~ | a g bes~ | 4 r r | <a bes>2 bes4~ | 2 a8 g | % 7a
  R2. | R | bes | g | bes,2 bes'4~ | 2 4 \clef treble |
  \voiceOne g'4 f2~ | 2.~ | 2. | <d f>2 e4 | <d g> <d f>2~ | <c f>2.~ | <d f> | % 8a
  f2(e4) | g f2 | <c e>2. \clef bass | \oneVoice <f, bes d>2.~ \voiceOne | f2 g4 | \oneVoice <c, c'>2.\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s4\omit\p | s2.*6 |
  s2. | s | f( | e) | s | s | s |
  s2. | s | c | s | s | s | s | % 2a
  s2. | s | <e' g>4 <d f>2~ | <c f>2.~ | <d f> | f4 e s | s2. |
  s2.*13 | <a, d>2.~ | % 3
  q2. | bes | c | a | s | s | % 4a
  s2. | <bes d>2. | s2. | s | s | a |
  s2.*8 | d,2. | s2. | s | s | % 5
  d2 r4 | s2. | c2 \apart 4 | f2. | e | <d f> | s | % 6a
  s2.*6 |
  d2. | s2.*11 | % 7
  <a' d>2.~ | <a c> | <bes d> | <c bes'> | a | a~ | <a bes> | % 8a
  <g c>2. | a~ | a | s | c, | s |
  \bar "|."
}

pedalMusic = \relative {
  \global
  r4 | R2.*13 |
  R2.*9 | d,4 r r | a' r r | bes r r | c2(c,4) | f4 r r | % 2
  e4 r r | d r r | g r r8 a | bes4 r r | d r r | g, r r | c r c | % 3a
  f,4 r r | a r r | d r r | g, r r8 a | bes4 r r | c r r | d, r r |
  a'4 r r | bes r r | c r r | d8 a d,4 r | r a' c | d8 a d,4 r | % 4a
  r4 a' c | g r r | r d f | g8 d g4 r | r g bes | d8 a d,4 r |
  r4 a' c | d8 a d,4 r | r a' c | g r r | r d f | g8 d g4 r | % 5a
  r4 d' f | c r r | g r g | c, r r | g' r r | c r r |
  g4 r r | c r r | c,8 8 bes' a g c, | f4 r r | e r r | d r r | g r r8 a | % 6a
  bes4 r r | d r r | g, r r | c r c, | f r r | e r r |
  d4 r r | g r r8 a | bes4 r r | d r r | g, r r | c r c | % 7a
  f,4 r r | a r r | d r r | g, r r8 a | bes4 r r | c r r |
  d4 r r | a r r | bes r r | c r r | d r r | a r r | bes r r | % 8a
  c4 r r | d r r | a r r | bes r r | c, r r | f2.\fermata |
}

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "single"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
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
        \new Staff \with {
        }
        <<
          \clef bass
          \new Voice \pedalMusic
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
%        \RemoveAllEmptyStaves
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
    }
  }
}

#(set-global-staff-size 20)

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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
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
        \new Staff \with {
        }
        <<
          \clef bass
          \new Voice \pedalMusic
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
%        \RemoveAllEmptyStaves
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-sop"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
        \new Staff \with {
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice \pedalMusic
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
%        \RemoveAllEmptyStaves
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-alto"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
        \new Staff \with {
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice \pedalMusic
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
%        \RemoveAllEmptyStaves
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-tenor"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
        \new Staff \with {
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice \pedalMusic
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
%        \RemoveAllEmptyStaves
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-bass"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
        \new Staff \with {
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Voice \pedalMusic
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
%        \RemoveAllEmptyStaves
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
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass

          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pedalMusic
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
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pedalMusic
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
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pedalMusic
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
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano \with {
          instrumentName = "Organ"
        }
        <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "church organ"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
            \new Voice \pedalMusic
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
