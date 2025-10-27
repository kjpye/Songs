\version "2.25.28"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Praise to the Holiest"
  subtitle    = "from The Dream of Gerontius"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Edward Elgar"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "John Henry Newman"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=60
  s1*6 | \once\set Score.tempoHideNote = ##f \tempo 2=48 s1*6 |
  s1*5 | \tempo "Maestoso." 2=48 s2.*4 | % 111
  s2.*3 | \tempo "Allargando" 4=96 s2.*4 | s4 \tempo "molto stringendo" 4=100 s2 | s2. |
  \once\set Score.tempoHideNote = ##f \tempo "Allegro molto." 2.=72 s1.*8 |
  s1.*8 | % 114
  s1.*8 |
  s1.*8 |
  s1.*9 | % 117
  s1.*10 |
  s1.*10 |
  s1.*10 | % 120
  s1.*10 |
  s1.*11 |
  s1.*10 | % 123
  s2.*18 |
  s2.*20 |
  \once\set Score.tempoHideNote = ##f \tempo "Molto maestoso." 4=96 | % 126
  s2.*3 | \tempo "largamente." 4=96 s2.*4 |
  \once\set Score.tempoHideNote = ##f \tempo "Animato." 4=108 s2.*2 |
  s2.*5 | % 127
  s2.*5 |
  s2.*5 |
  s2.*5 | % 130
  s2.*5 |
  s2.*4 |
  s2.*3 | \tempo "Poco piú animato." 4=110 s2. | % 133
  s2.*5 |
  \tempo "Animato." 4=108 s2.*4 |
  s2.*4 | % 136
  \tempo "Accel. molto." 4=109 s2. | \tempo 4=110 s | \tempo 4=111 s | \tempo 4=112 s | \tempo 4=113 s | \tempo 4=114 s |
  \tempo 4=115 s2. | \tempo 4=116 s | \once\set Score.tempoHideNote = ##f \tempo "Allegro molto." 2.=84 s2.*4 |
  s2.*6 | % 139
  s2.*6 |
  s2.*8 |
  s2.*4 | \tempo "Animato." 2.=90 s2.*4 | % 142
  s2.*4 | \once\set Score.tempoHideNote = ##f \tempo 2.=96 s2.*2 |
  s2.*6 |
  s2.*8 | % 145
  s2.*8 |
  \tempo 2.=90 s2.*9 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \mark \markup\circle\bold "72"
  \textMark \markup\box "110a" s1*4
  \textMark \markup\box "110b" s1*3
  \textMark \markup\box "110c" s1*3
  \mark \markup\circle\bold "73"       \break
  \textMark \markup\box "110d" s1*2
  \textMark \markup\box "111a" s1 s2
  \textMark \markup\box "111b" s2 s1*3 \break
  \mark \markup\circle\bold "74"
  \textMark \markup\box "111c" s2.*4   \break
  \textMark \markup\box "112a" s2.*4
  \textMark \markup\box "112b" s2.*5   \break
  \mark \markup\circle\bold "75"
  \textMark \markup\box "113a" s1.*4
  \textMark \markup\box "113b" s1.*4
  \mark \markup\circle\bold "76"
  \textMark \markup\box "114a" s1.*4
  \textMark \markup\box "114b" s1.*4
  \mark \markup\circle\bold "77"
  \textMark \markup\box "115a" s1.*4
  \textMark \markup\box "115b" s1.*4
  \mark \markup\circle\bold "78"
  \textMark \markup\box "116a" s1.*4
  \textMark \markup\box "116b" s1.*4
  \textMark \markup\box "117a" s1.
  \mark \markup\circle\bold "79" s1.*3
  \textMark \markup\box "117b" s1.*5
  \textMark \markup\box "118a" s1.*2
  \mark \markup\circle\bold "80" s1.*3
  \textMark \markup\box "118b" s1.*5
  \textMark \markup\box "119a" s1.*3
  \mark \markup\circle\bold "81" s1.*2
  \textMark \markup\box "119b" s1.*5
  \textMark \markup\box "120a" s1.
  \mark \markup\circle\bold "82" s1.*4
  \textMark \markup\box "120b" s1.*5
  \textMark \markup\box "121a" s1.*5
  \textMark \markup\box "121b" s1.*2
  \mark \markup\circle\bold "83" s1.*3
  \textMark \markup\box "122a" s1.*5
  \textMark \markup\box "122b" s1.*4
  \mark \markup\circle\bold "84" s1.*2
  \textMark \markup\box "123a" s1.*6
  \textMark \markup\box "123b" s1.*3
  \mark \markup\circle\bold "85" s1.*1
  \textMark \markup\box "124a" s2.*6
  \mark \markup\circle\bold "86" s2.*3 \break
  \textMark \markup\box "124b" s2.*9
  \textMark \markup\box "125a" s2.*2
  \mark \markup\circle\bold "87" s2.*9 \break
  \textMark \markup\box "125b" s2.*9   \break
  \mark \markup\circle\bold "88"
  \textMark \markup\box "126a" s2.*4   \break
  \textMark \markup\box "126b" s2.*3
  \mark \markup\circle\bold "89" s2.*2
  \textMark \markup\box "127" s2.*4
  \mark \markup\circle\bold "90" s2.
  \textMark \markup\box "128" s2.*5
  \textMark \markup\box "129" s2.*5
  \textMark \markup\box "130" s2.
  \mark \markup\circle\bold "91" s2.*4
  \textMark \markup\box "131" s2.*4
  \mark \markup\circle\bold "92" s2.
  \textMark \markup\box "132" s2.*4
  \textMark \markup\box "133" s2.*3
  \mark \markup\circle\bold "93" s2.
  \textMark \markup\box "134" s2.*5
  \mark \markup\circle\bold "94"
  \textMark \markup\box "135" s2.*4
  \textMark \markup\box "136" s2.*4
  \mark \markup\circle\bold "95"
  \textMark \markup\box "137" s2.*6
  \textMark \markup\box "138" s2.*2
  \mark \markup\circle\bold "96" s2.*4
  \textMark \markup\box "139" s2.*4
  \mark \markup\circle\bold "97" s2.*2
  \textMark \markup\box "140" s2.*6
  \textMark \markup\box "141" s2.*8
  \textMark \markup\box "142" s2.*4
  \mark \markup\circle\bold "98" s2.*4
  \textMark \markup\box "143" s2.*4
  \mark \markup\circle\bold "99" s2.*2
  \textMark \markup\box "144" s2.*6
  \textMark \markup\box "145" s2.*8
  \mark \markup\circle\bold "100"
  \textMark \markup\box "146" s2.*8
  \textMark \markup\box "147" s2.*9
}

dynamicsSolo = {
  \override DynamicTextSpanner.style = #'none
  s1*10 |
  s8 s2..\f | s1 |
  s4 \tuplet 3/2 {s8 s4\<} s2\! | s2\ff s8 s4\< s8\! | s1*3 | % 111a
  s2.*13 | s1.*105 | s2.*6 | s1.*4 | s2.*6 |
                                % 126
  s2.*132 |
}

solo = \relative {
  R1*6 \key c \major | \grace s8 R1*4 |
  r8 c''8^\markup \smallCaps "Angel." 8. 16 8 4.~ | 4 fes8 8 ees16 aes,8. 4~ |
  aes4 \tuplet 3/2 {c8 8 8} e4. <fes \tweak NoteHead.font-size #-2 c>8 | % 111a
  <g \tweak NoteHead.font-size #-2 c,>2~4. <g \tweak NoteHead.font-size #-2 g,>8 |
  <aes \tweak NoteHead.font-size #-2 d,>2.-> b,4 | c1 | R \section \time 3/4 |
  R2.*4
}

wordsSolo = \lyricmode {
  And now the thres -- hold, __ as we tra -- verse it, __
  Ut -- ters a -- loud its glad __ re -- spon -- sive chant.
}

wordsSoloMidi = \lyricmode {
  "And " "now " "the " thres "hold, "  "as " "we " tra "verse " "it, " 
  "\nUt" "ters " a "loud " "its " "glad "  re spon "sive " "chant. "
}

ffz = #(make-dynamic-script "ffz")
rf  = #(make-dynamic-script "rf")

dynamicsSopI = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*5 | s2.*4 |
  s2.*3 | s2 s4\p | % 112a
  s2.\omit\cresc-\markup\italic "molto cresc." | s4 s2\< | s2.\ffz | s4 s2-\markup\italic "molto stringendo." | s2. |
  s1.*105 | s2.*6 | s1.* 4 | s2.*18 | s2.*4 |
  s2.*3 | s2.\f | s | % 126b
  s8 s4.\<  s4\! | s2.*4 | % 127
  s2. | s4. s8\< s4\! | s2.*2 | s2 s4\f |
  s2.*5 |
  s2.*2 | s2 s8 s\f | s2.*2 | % 130
  s2.*4 | s2\f s8 s\< |
  s8\! s\> s\! s4. | s2.*3 |
  s2.*4 | % 133
  s2. | s\ff | s2.*3 |
  s2.*4 |
  s2.*3 | s8 s\< \after 4.. \ff s2 | % 136
  s2.\sf | s2.*3 | s2.\sf | s |
  s2.*6 |
  s2.*2 | s2.\ff | s4. s\dim | s2.\p | s | % 139
  s2.*4 | s2.\ffz | s |
  s2.*2 | s2.\sf | s2.*3 | s2.\sf | s |
  s2.*2 | s2.\f | s2.*3 | s4. s\cresc | s2. | % 142
  s2.*4 | s2.\ff | s |
  s2.*2 | s2.\< | s\! | s2.*2 |
  s2.*4 | s2.\< | s | s\! | s | % 145
  s2.*6 | s2.\ffz | s |
  s2.-\markup\italic\bold rit. | s\< | s2.*5 | s4. s\! | s2 s4-\markup\italic\halign #CENTER lunga |
}

sopranoI = \relative {
  \global
  R1*6 | \key c \major \grace s8 R1*6 |
  R1*5 \time 3/4 | R2.*4 |
  b'8^\markup\smallCaps "1st Soprano." a d4-- a | 2 r4 | R2. | r4 r a'~ | % 112a
  a2.~ | a | g2 e8->(d) | d c f2-^~ | 2 d4 \section \time 6/4 |
  R1.*8 | % 113
  R1.*8 |
  R1.*8 |
  R1.*8 | % 116
  R1.*9 |
  R1.*10 |
  R1.*10 | % 119
  R1.*10 |
  R1.*10 |
  R1.*11 | % 122
  R1.*10 |
  r2.*18 |
  r2.*20 | % 125
  r2.*4 | % 126a
  a2^\markup\bold "1st Chorus." r4 | R2.*2 | b4 c g | g(a) e |
  g4.(a8) d4 | 2 r4 | R2. | r4 r fis~ | 4 g d | % 127
  d4(e) b | d4.(e8) a4 | 2 r4 | R2. | r4 r b, |
  a2 g4 | g(fis) gis8(a) | b(a c4) fis,8(g) | e(fis g fis) d4 | d r r |
  R2. | R^\markup\italic "cantabile e legato." | r4 r r8 g | g'4.(f8) f(e) | f d4 c b8 | % 130
  c4 r r | R2.*3 | g'8(fis g a) d, e |
  g8-- fis c(b) c d | e4 r r | R2. | fis4.(e8) d4 |
  c4.(b8) a4 | g r r | R2.*2 | % 133
  R2. | e'8(d e g f4~ | 4) e c | f, r r | r r b~-> |
  b4 c r | r r d~-> | 4 e r | r r f~-> |
  f4 g r | r r b,->~ | 4 c g~( | g a) d | % 136
  g2.-^ | e2 d4 | c~8 r r4 | R2. | f | d2 c4 |
  b4~8 r r4 | R2. \section R2.*4 |
  R2.*2 | a'2.->( | g | fis2) r4 | R2. | % 139
  R2.*4 | b2.->( | a2) r4 |
  R2.*2 | g2. | fis2 r4 | R2.*2 | e2.( | d2) r4 |
  R2.*2 | c2.( | b | d2) r4 | R2. | e(d | % 142
  f2) r4 | R2. | g2.( | f) | a->~( | a |
  g2.) | g, | gis | a | b | c |
  d2.->~( | d | c) | c, | d | e | f | g | % 145
  a2.~ | a~ | a | a | a-^~ | a | a'-^~ | a2 4 |
  g2.-^~ | g~ | g~ | g~ | g~ | g~ | g~ | g~| 4 r r\fermata |
  \bar "|."
}

wordsSopI = \lyricmode {
  in the depth be praise:
  Most __ sure, most __ sure in all __ His

  praise,
  Praise to the Ho -- liest in __ the height,
  praise __ to the Ho -- liest in __ the height, % 127
  And in the depth be praise,
  be praise, __ be praise.
  O lov -- ing wis -- dom of our God! % 130
  Praise __ to the Ho -- li -- est in the height.
  Gen -- ’rous, gen -- ’rous love!
  Glo -- ry to Him, % 134
  glo -- ry, glo -- ry, glo -- ry, glo -- ry, glo -- ry,
  glo -- ry to Him, % 137
  glo -- ry to Him.
  Praise, __ praise, __ glo -- ry, praise, __
  praise, __ praise, __
  Most __ sure __ in all His ways, % 143
  most sure __ in all His ways,
  most sure __ in all, __ all __ His ways! __
}

wordsSopIMidi = \lyricmode {
  "in " "the " "depth " "be " "praise: "
  "\nMost "  "sure, " "most "  "sure " "in " "all "  "His "

  "\npraise, "
  "\nPraise " "to " "the " Ho "liest " "in "  "the " "height, "
  "\npraise "  "to " "the " Ho "liest " "in "  "the " "height, " % 127
  "\nAnd " "in " "the " "depth " "be " "praise, "
  "\nbe " "praise, "  "be " "praise. "
  "\nO " lov "ing " wis "dom " "of " "our " "God! " % 130
  "\nPraise "  "to " "the " Ho li "est " "in " "the " "height. "
  "\nGen" "’rous, " gen "’rous " "love! "
  "\nGlo" "ry " "to " "Him, " % 134
  "\nglo" "ry, " glo "ry, " glo "ry, " glo "ry, " glo "ry, "
  "\nglo" "ry " "to " "Him, " % 137
  "\nglo" "ry " "to " "Him. "
  "\nPraise, "  "praise, "  glo "ry, " "praise, " 
  "\npraise, "  "praise, " 
  "\nMost "  "sure "  "in " "all " "His " "ways, " % 143
  "\nmost " "sure "  "in " "all " "His " "ways, "
  "\nmost " "sure "  "in " "all, "  "all "  "His " "ways! " 
}

dynamicsSopII = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*5 | s2.*4 |
  s2. | s2 s4-\markup\italic "espress." | s8\< s2\! s8 | s8\< s2\! s8 |
  s2. | s4 s2\< | s2.\ffz | s4 s2-\markup\italic "molto stringendo." | s2. |
  s1.*105 | s2.*6 | s1.* 4 | s2.*18 | s2.*4 |
  s2. | s2 s4\f | s8\< s\! s2 | s2.-\markup\bold\italic Animato. | s |
  s2.*5 | % 127
  s2. | s4 s2\< | s2.\! | s2.*2 |
  s2. | s2 s4\f | s2.*3 |
  s2. | s2^\markup\italic "cantabile e lagato." s4\< | s8\! s\> s2\! | s2.*2 | % 130
  s2.*5 |
  s2.*4 |
  s2.*3 | s2.\f^\markup\italic "Poco piú animato." | % 133
  s2.*3 | s2.\rf | s |
  s2.-\markup\bold\italic Animato. | s2.*3 |
  s2.*3 | s4 \after 4.. \ff s2 | % 136
  s2.\sf^\markup\italic "accel. molto." | s2 \after 8. \ff s4 | s2.\sf | s2.*3 |
  s2.\sf | s | s-\markup\italic "Allegro molto." | s2.*3 |
  s2.*2 | s2.\ff | s4. s\dim | s2.*2 | % 139
  s2.*4 | s2.\ffz | s |
  s2.*2 | s2.\sf | s2.*3 | s2.\sf | s |
  s2.*4 | s4.\f s\cresc | s2.*3 | % 142
  s2.\f | s2.*3 | s2.\ff^\markup\italic "a tempo" | s |
  s2.*2 | s2.\< | s\! | s2.*2 |
  s2.*4 | s2.\< | s | s\! | s | % 145
  s2.*6 | s2.\ffz | s |
  s2.-\markup\bold\italic rit. | s2.\< | s2.*5 | s4. s\! | s2 s4-\markup\italic \halign #CENTER lunga |
}

sopranoII = \relative {
  \global
  R1*6 | \key c \major \grace s8 R1*6 |
  R1*5 \time 3/4 | R2.*4 |
  b'8^\markup\smallCaps "2nd Soprano."  a d4-- a | 2 4 | 8 f' e4 d8->(a) | a(f'4) e8 d(a~ | % 112a
  a4) r r a'2. | g2 e8->(d) | d c f2-^~ | 2 d4 \section \time 6/4 |
  R1.*8 | % 113
  R1.*8 |
  R1.*8 |
  R1.*8 | % 116
  R1.*9 |
  R1.*10 |
  R1.*10 | % 119
  R1.*10 |
  R1.*10 |
  R1.*11 | % 122
  R1.*10 |
  r2.*18 |
  r2.*20 | % 125
  r2.*4 | % 126a
  a2^\markup\bold "2nd Chorus." r4 | r r a | a8(f'4) e8 d(a~ | 4) r r | R2. |
  R2.*3 r4 r d( | e8.-> d16 c8 b) a b | % 127
  c8. b16 a8(g) fis g | a(b d c e d | c d c4) c | fis,8(g e fis) g(fis) a4(dis,8 e) g4 |
  a4 r r | r r f' | e2 d4 | d(c2) | R2. |
  R2. | c8(b c d) g, a | c-- b f(e) f g | 4(a8) b c4 | R2. | % 130
  c4.(b8) b(a) | g4(g4.) e8 | d4 r r | R2.*2 |
  R2. | e'4.(d8) d(c) | b4.(a8) g4 | fis r r |
  R2.*3 f'8(e f a g4~ | % 133
  g4) f d | g, r r | R2. | d'8(c d f e4~ | e d) b |
  r4 r g->~ | g a r | r r b->~ | b c f |
  e8.-> d16 c8 b a b | c8.-> b16 a8(g) f(g) | a r r4 r | R2. | % 136
  g'2.-^ | e2 r4 | c2.-^ | a2 g4 | f~8 r r4 | R2. |
  b2. | g2 f4 \section | e2 r4 | R2.*3 |
  R2.*2 | a'2.->( | g | fis2) r4 | R2. | % 139
  R2.*4 | cis2.->~ | 2 r4 |
  R2.*2 | cis2. | fis,2 r4 | R2.*2 | e'2.( | d2) r4 |
  R2.*4 | d2.( | c | e2) r4 | R2. | % 142
  f2.( | e | g2) r4 | R2. | a->~( | a |
  g2.) | g, | gis | a | b | c |
  d2.->~(| d | c) | c, | d | e | f | g | % 145
  a2.~ | a~ | a | a | a-^~| a | a'-^~ | 2 4 |
  g2.-^ ~ | g~ | g~ | g~ | g~ | g~ | g~ | g~ | 4 r r\fermata |
}

wordsSopII = \lyricmode {
  in the depth be praise:
  In all His words most won -- der -- ful; __
  Most sure, most __ sure in all __ His
  praise,
  Most won -- der -- ful, __
  Praise __ to the Ho -- li -- est in the height, __ % 127
  And in __ the depth __ be praise,
  and in the depth,
  Praise to the Ho -- li -- est, to the Ho -- li -- est. % 130
  Wi -- sest, wi -- sest love!
  Gen -- ’rous, gen -- ’rous love! % 132
  Glo -- ry to Him, glo -- ry, glo -- ry,
  glo -- ry to Him, who ev -- er -- more
  By truth and jus -- tice reigns, % 136
  glo -- ry, glo -- ry to Him,
  glo -- ry to Him.
  Praise, __ praise, __ glo -- ry, praise, __ % 139
  praise, __ praise, __ sure __ in all His ways,
  most sure __ in all His ways,
  most sure __ in all, __ all __ His ways! __
  
}

wordsSopIIMidi = \lyricmode {
  "in " "the " "depth " "be " "praise: "
  "\nIn " "all " "His " "words " "most " won der "ful; " 
  "\nMost " "sure, " "most "  "sure " "in " "all "  "His "
  "\npraise, "
  "\nMost " won der "ful, " 
  "\nPraise "  "to " "the " Ho li "est " "in " "the " "height, "  % 127
  "\nAnd " "in "  "the " "depth "  "be " "praise, "
  "\nand " "in " "the " "depth, "
  "\nPraise " "to " "the " Ho li "est, " "to " "the " Ho li "est. " % 130
  "\nWi" "sest, " wi "sest " "love! "
  "\nGen" "’rous, " gen "’rous " "love! " % 132
  "\nGlo" "ry " "to " "Him, " glo "ry, " glo "ry, "
  "\nglo" "ry " "to " "Him, " "who " ev er "more "
  "\nBy " "truth " "and " jus "tice " "reigns, " % 136
  "\nglo" "ry, " glo "ry " "to " "Him, "
  "\nglo" "ry " "to " "Him. "
  "\nPraise, "  "praise, "  glo "ry, " "praise, "  % 139
  "\npraise, "  "praise, "  "sure "  "in " "all " "His " "ways, "
  "\nmost " "sure "  "in " "all " "His " "ways, "
  "\nmost " "sure "  "in " "all, "  "all "  "His " "ways! " 
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*5 | s2.\fff | s2.*2 | s2 s8\< s\! | % 111
  s2.*9 |
  s1.*3 | s1 s4 s\mf | s1. | s2.\< s\! | s2 s2.\dim s4\p | s1. |
  s2. s2 s4\cresc | s1. | s2. s2\< s4\! | s1.*3 | s1.\ff | s1.\dim | % 114
  s1.\p | s1.*3 | s1.\p | s2 s1\cresc | s1.\mf | s |
  s1.\p | s1.*3 | s4 s2\p s2. | s1.*2 | s2.\<^\markup\italic "espress." s\! |
  s2. s\> | s\! s\dim | s1. | s2. s\< | s1.\> | s2. s\dim | s s\> | s s\! | s1. | % 117
  s2. s\dim | s1. | s2. s\> | s s\! | s2\p^\markup\italic "espress." s4\< s2.\! | s2\> s4\! s2. | s2.\< s\! | s\fp s\> | s\! s\pp | s1. |
  s1. | s4. s\omit\pp-\markup{\dynamic pp \with-color "red" \bold "very legato"}s2. | s s\dim | s1. | s\< | s2.\! s\pp | s1.*4 |
  s1. | s2 s2.\< s4\! | s1.*2 | s2. s\pp | s1.*2 | s4. s\pp s2. | s1.*2 | % 120
}

soprano = \relative {
  \global
  R1*6 \key c \major | \grace s8 R1*6 |
  R1*5 \section \time 3/4 | % 111ab
  g''2.-^~ | 4 e4. d8 | 8.-> c16 4 f8 d | e2 c8(b) |
  R2.*9 | % 112
  c1.~^\markup{\with-color "red" \bold\huge {"in 2" \rhythm {2.}}} | 2 r4 r2. | R1. | r2. r4 r g | % 113a
  c2.^\markup\italic "cantabile e sostenuto." ~2 b4 | 2 a4 gis2 a4 | 2.~2 4 | 2 g4 fis2 f4 |
  e2.(f2) g4 | gis2 a4 2 b4~ | 4 c g a2(b4) | 4. 8 a4 c4. e | % 114a
  <a, a'>2. r | R1. | g'2. e2 d4 | 2 c4 e2 d4 |
  c2 r4 r2. | R1.*3 | % 115a
  a2. f2 e4 | 2 d4 g2 d4 | c2 r4 r2. | R1. |
  d'2. bes2 a4 | 2 g4 c2 g4 | f2 r4 r2. | R1. | % 116a
  r4 d'2 2 4 | 2-> c4 2.~ | 2 bes4 2 4 | a2.(c2) 4 |
  a2. g | d1.~ | d~ | 2 r4 d'2. | % 117a
  d2.(c) | d2 r4 a2 4 | 2.-- g | a e | e d |
  e1.~ | 2. e | 1.~ | 2.~2 r4 | <d a'>2. <c e'>2 4 | % 118a
  <f d'>2 r4 r2. | a2. <a e'>2 4 | <a d>1.~ | 2. f' | e a, |
  b2.-- c | b4.-- b b b | | c2. f | e a, | b4. b b d | % 119a
  c2. f, | 4. g g g | a1.~ | 2.~2 r4 | R1. |
  R1. | d,2. a'2 4 | g2 r4 r2. | R1. | r2. bes | % 120a
  a2. d, | e f | e4. e e e | f2.~2 bes4 | a2. d, |
  e4. e e g | f2.~2 4 | 2. bes, | bes c | d1.~ | % 121a
  d1.~ | d~ | 2 r4 d2. | d e | fis g |
  bes2.--~2 a4 | 2. g | fis g | a bes | d->~2 cis4 | % 122a
  cis2. d | c bes | a g | f ees | d2.~2 r4 | r2. bes' |
  a2. g | f1. | ees | d2 r4 d'2. | d c | d2 r4 r2. | % 123a
  R1. | r2. e, | e d | e~2 r4 |
  R1.*3 \time 9/4 \section | <e g cis>2. <fis a d> <g b e> | % 124a
  <e g cis>2. <fis a d> <g b e>4. q \time 6/4 \section | % 124b
  <fis ais fis'>2 r4 r2. | R1.*2 |
  R1. \time 9/4 \section | <fis a dis>2. <gis b e> <a cis fis> | % 125a
  <fis a dis>2.(<gis b e>) <<{\vo fis'2.} \new Voice {\vf cis4. dis} \new Voice {\vt fis,2.}>> |
  <<{\vt <e e'>2} \new Voice {\vo b'2}>> \ov r4 r2. r2. |
  R2.*6 | d1.~2.\caesura \time 3/4 \section | % 125b
  g2-^ e8 d | 8. c16 4 f8 d | e2 c8(b) | b a d4. a8 | % 126a
  R2.*5 |
  R2.*5 | % 127
  R2.*5 |
  R2.*5 |
  R2.*5 | % 130
  R2.*5 |
  R2.*4 |
  R2.*4 | % 133
  R2.*5 |
  R2.*4 |
  R2.*4 | % 136
  R2.*6 |
  R2.*2 \section | R2.*4 |
  R2.*6 | % 139
  R2.*6 |
  R2.*8 |
  R2.*8 | % 142
  R2.*6 |
  R2.*6 |
  R2.*8 | % 145
  R2.*8 |
  R2.*9 |
}

wordsSop = \lyricmode {
  Praise __ to the Ho -- li -- est in the height,
  And

  ways! __ % 113a
  O lov -- ing wis -- dom of our God! __
  When all was sin and shame, __
  A sec -- ond Ad -- am to the fight __
  And to the res -- cue came.
  O lov -- ing wis -- dom of our God!
  O wi -- sest love! O wi -- sest love! % 115b
  O lov -- ing wis -- dom of our God!
  And that a high -- er gift __ thanj grace
  Should flesh __ and blood re -- fine, __
  God’s Pres -- ence and His ve -- ry Self,
  And Es -- sence all __ di -- vine. __
  O gen -- ’rous love! O gen -- ’rous love! __ that He who smote
  In man for man the foe, % 119a
  The dou -- ble ag -- o -- ny in man
  For man should un -- der -- go; __
  O gen -- ’rous love! that He who smote % 120a
  In man for man the foe, __
  The dou -- ble ag -- o -- ny in man __
  For man should un -- der -- go; __
  And in the gar -- den se -- cret -- ly,
  And on the crosss, the cross __ on high,
  Should teach His breth -- ren and in -- spire __
  To suf -- fer and to die.
  O gen -- ’rous love!
  O gen -- ’rous love! __
  O lov -- ing wis -- dom of our God!
  O wi -- sest, wi -- sest __ love! % 125a
  Praise, __ praise to the Ho -- li -- est in the height,
  And in the depth be
}

wordsSopMidi = \lyricmode {
  "Praise "  "to " "the " Ho li "est " "in " "the " "height, "
  "\nAnd "

  "\nways! "  % 113a
  "\nO " lov "ing " wis "dom " "of " "our " "God! " 
  "\nWhen " "all " "was " "sin " "and " "shame, " 
  "\nA " sec "ond " Ad "am " "to " "the " "fight " 
  "\nAnd " "to " "the " res "cue " "came. "
  "\nO " lov "ing " wis "dom " "of " "our " "God! "
  "\nO " wi "sest " "love! " "O " wi "sest " "love! " % 115b
  "\nO " lov "ing " wis "dom " "of " "our " "God! "
  "\nAnd " "that " "a " high "er " "gift "  "thanj " "grace "
  "\nShould " "flesh "  "and " "blood " re "fine, " 
  "\nGod’s " Pres "ence " "and " "His " ve "ry " "Self, "
  "\nAnd " Es "sence " "all "  di "vine. " 
  "\nO " gen "’rous " "love! " "O " gen "’rous " "love! "  "that " "He " "who " "smote "
  "\nIn " "man " "for " "man " "the " "foe, " % 119a
  "\nThe " dou "ble " ag o "ny " "in " "man "
  "\nFor " "man " "should " un der "go; " 
  "\nO " gen "’rous " "love! " "that " "He " "who " "smote " % 120a
  "\nIn " "man " "for " "man " "the " "foe, " 
  "\nThe " dou "ble " ag o "ny " "in " "man " 
  "\nFor " "man " "should " un der "go; " 
  "\nAnd " "in " "the " gar "den " se cret "ly, "
  "\nAnd " "on " "the " "crosss, " "the " "cross "  "on " "high, "
  "\nShould " "teach " "His " breth "ren " "and " in "spire " 
  "\nTo " suf "fer " "and " "to " "die. "
  "\nO " gen "’rous " "love! "
  "\nO " gen "’rous " "love! " 
  "\nO " lov "ing " wis "dom " "of " "our " "God! "
  "\nO " wi "sest, " wi "sest "  "love! " % 125a
  "\nPraise, "  "praise " "to " "the " Ho li "est " "in " "the " "height, "
  "\nAnd " "in " "the " "depth " "be "
}

dynamicsAltoI = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*5 | s2.*4 |
  s2.*9 | % 112a
  s1.*105 | s2.*6 | s1.* 4 | s2.*18 | s2.*4 |
  s2 s4\mf | s2 s4\cresc | s2. | s\f | s | % 126b
  s2. | s4.\< s\> | s2.\! | s2.*2 | % 127
  s2.*2 | s4 s2\f | s2.*2 |
  s2.*3 | s2 s4\f | s2. |
  s2. | s2\f\< s4\! | s2.*3 | % 130
  s2.*3 | s2.\< | s\! |
  s2.*3 | s4. s8\< s4\! |
  s8 s\> s2\! | s2\rf s8\< s\! | s s\> s2\! | s2. | % 133
  s2. | s\ff | s2.*3 |
  s2.*4 |
  s2.*3 | s8 s\< \after 4.. \ff s2 | % 136
  s2.\sf | s2.*3 | s2.\sf | s |
  s2.*2 | s2.\p | s | s\cresc | s |
  s2.*2 | s2.\ff | s4. s\dim | s2.\p | s | % 139
  s2.*4 | s2.\ffz | s |
  s2.\sf | s2.*3 | s2.\sf | s2.*3 |
  s2.\sf | s2.*3 | s4. s\< | s2. | s | s\! | % 142
  s4. s\cresc | s2.*3 | s4. s\< | s2. |
  s4. s\! | s2.*5 |
  s2. | s\< | s4. s\! | s2.*5 | % 145
  s4. s\< | s s\! | s2.*4 | s2.\ffz | s |
  s2.-\markup\bold\italic rit. | s\< | s2.*5 | s4. s\! | s2. |
}

altoI = \relative {
  \global
  R1*6 | \key c \major \grace s8 R1*6 |
  R1*5 \time 3/4 | R2.*4 |
  R2.*9 \section \time 6/4 | % 112
  R1.*8 | % 113
  R1.*8 |
  R1.*8 |
  R1.*8 | % 116
  R1.*9 |
  R1.*10 |
  R1.*10 | % 119
  R1.*10 |
  R1.*10 |
  R1.*11 | % 122
  R1.*10 |
  r2.*18 |
  r2.*20 | % 125
  r2.*4 | % 126a
  f'2 a4 | b(c) a | f8. 16 g8 c, d(f) | a8.->(g16 f8 e) d e | f8. e16 d8(c) b c |
  d8(e g f a g | f g a2 | g4) r r | R2.*2 | % 127
  R2.*2 | r4 e'2 | d c4 | c(b) g |
  cis,8(d b cis) d(cis) | e4 ais,8(b) d4 | R2. | r4 r c' | b2 a4 |
  a4(g) f | e8(g4 f8) f(e) | d4(c) b | g' r r | R2. | % 130
  R2.*3 | d'2. | 4.(c8) c(b) |
  a4(g4.) fis8 | fis(g d4) e8(fis) | dis(e4) dis8 e(g) | a(fis g a) d, e |
  g8-- fis b,(c d) r | c'(b c d) g, a | c-- b f(e) f g | a4 r r | % 133
  R2. | g4.(a8 b a | g a b-> a g f) | 4 r r | R2. |
  R2. | r4 r b | a8.-> g16 f8 e d4 | r r d' |
  c8.-> b16 a8 g f g | a8.-> g16 f8 e d e | f8.-> e16 d8 c b(c) | d c b d a'4 | % 136
  g2.-^ | a2 f4 | f~8 r r4 | R2. | a2. | g2 a4 |
  g4~8 r r4 | R2. \section | e2. | 2 4 | dis2 4 | 2. |
  R2.*2 | e'2.->~ | e~ | 2 r4 | R2. | % 139
  R2.*4 | fis2.->~ | 2 fis,4 |
  g2.-^~ | 2 4 | 2. | b | e,-^~ | 2 4 | ais2. | b |
  c,2.-^~ | 2 4 | fis2 4 | g2 e4 | 2 f4 | 2 fis4 | 2 g4 | 2 gis4 | % 142
  gis2 a4 | 2.~ | 2 ais4 | 2 b4 | 2. | c |
  d2. | e | f->~( | f | e) | e, |
  e2. | f | g | a | b->~( | b | a) | g | % 145
  f2. | g | f | e | d-^~ | d | d'-^~ | 2 4 |
  e2.-^~ | e~ | e~ | e~ | e~ | e~ | e~ | e~ | 4 r r\fermata |
}

wordsAltoI = \lyricmode {
  praise,
  In all __ His words most won -- der -- ful, __
  Praise __ to the Ho -- li -- est in the height, __
  And in the depth, and in __ the depth be praise,
  and in the depth be praise__
  O __ wi -- sest love! % 130
  O wi -- sest love! __
  O gen -- ’rous, gen -- ’rous love!
  Praise __ to the Ho -- li -- est, __
  praise to the Ho -- li -- est __ in the height.
  Glo -- ry to Him, who ev -- er -- more,
  to Him, who ev -- er -- more
  By truth and jus -- tice reigns,
  by truth and jus -- tice,
  by truth and jus -- tice reigns,
  glo -- ry to Him, % 137
  glo -- ry to Him.
  Praise to the Ho -- li -- est
  Praise, __ praise, __
  In all __ His words most won -- der -- ful;
  Most sure __ in all His ways!
  In all His words most won -- der -- ful; % 142
  Most sure in all __ His ways,
  in all His ways, most sure __ in all His ways,
  most sure, __ most sure in all,
  in all, __ all __ His ways! __
}

wordsAltoIMidi = \lyricmode {
  "praise, "
  "\nIn " "all "  "His " "words " "most " won der "ful, " 
  "\nPraise "  "to " "the " Ho li "est " "in " "the " "height, " 
  "\nAnd " "in " "the " "depth, " "and " "in "  "the " "depth " "be " "praise, "
  "\nand " "in " "the " "depth " "be " "praise__ "
  "\nO "  wi "sest " "love! " % 130
  "\nO " wi "sest " "love! " 
  "\nO " gen "’rous, " gen "’rous " "love! "
  "\nPraise "  "to " "the " Ho li "est, " 
  "\npraise " "to " "the " Ho li "est "  "in " "the " "height. "
  "\nGlo" "ry " "to " "Him, " "who " ev er "more, "
  "\nto " "Him, " "who " ev er "more "
  "\nBy " "truth " "and " jus "tice " "reigns, "
  "\nby " "truth " "and " jus "tice, "
  "\nby " "truth " "and " jus "tice " "reigns, "
  "\nglo" "ry " "to " "Him, " % 137
  "\nglo" "ry " "to " "Him. "
  "\nPraise " "to " "the " Ho li "est "
  "\nPraise, "  "praise, " 
  "\nIn " "all "  "His " "words " "most " won der "ful; "
  "\nMost " "sure "  "in " "all " "His " "ways! "
  "\nIn " "all " "His " "words " "most " won der "ful; " % 142
  "\nMost " "sure " "in " "all "  "His " "ways, "
  "\nin " "all " "His " "ways, " "most " "sure "  "in " "all " "His " "ways, "
  "\nmost " "sure, "  "most " "sure " "in " "all, "
  "\nin " "all, "  "all "  "His " "ways! " 
}

dynamicsAltoII = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*5 | s2.*4 |
  s2.*9 | % 112a
  s1.*105 | s2.*6 | s1.* 4 | s2.*18 | s2.*4 |
  s2 s4\mf | s2 s4\cresc | s2.*3 |
  s2. | s4 s2\f | s2.*3 | % 127
  s2. | s4 s2\< | s2.\! | s2.*2 |
  s2. | s2 s4\f | s2.*3 |
  s2.*5 | % 130
  s2.*2 | s2 s8\< s\! | s s2\> s8\! | s2. |
  s2.*3 | s2 s8\< s\! |
  s8 s\> s2\! | s2.*2 | s2.\ff | % 133
  s2.*3 | s2.\rf | s |
  s2.*4 |
  s2.*3 | s4 s2\< | % 136
  s2. | s4 \after 4.. \ff s2 | s2.\sf | s2.*3 |
  s2.\sf | s2.*5 |
  s2.*2 | s2.\ff | s4. s\dim | s2.\p | s | % 139
  s2.*4 | s2.\ffz | s |
  s2.\sf | s2.*3 | s2.\sf | s2.*3 |
  s2.\sf | s2.*7 | % 142
  s2.*3 | s2 s4\f | s4. s\< | s2. |
  s2.\! | s2.*5 |
  s2. | s\< | s | s\! | s2.*4 | % 145
  s2.\< | s\! | s2.*4 | s2.\ffz | s |
  s2.-\markup\bold\italic rit. | s\< | s2.*5 | s4. s\! | s2. |
}

altoII = \relative {
  \global
  R1*6 | \key c \major \grace s8 R1*6 |
  R1*5 \time 3/4 | R2.*4 |
  R2.*9 \section \time 6/4 | % 112
  R1.*8 | % 113
  R1.*8 |
  R1.*8 |
  R1.*8 | % 116
  R1.*9 |
  R1.*10 |
  R1.*10 | % 119
  R1.*10 |
  R1.*10 |
  R1.*11 | % 122
  R1.*10 |
  r2.*18 |
  r2.*20 | % 125
  r2.*4 | % 126a
  f'2 4 | f(g) a | b c a8. f16 | 4 r r | R2. |
  R2. | r4 a2 | g f4 | f(e) d | c'8.->(b16) a8(g) fis g | % 127
  a8. g16 fis8(e) d e | fis(g fis a g fis | a b a g) fis(g) | a(g b4) e,8(fis) | dis(e) fis(e) cis4 |
  R2. r4 r d' | gis,8(a fis g) a(g) | b4(e,8 fis) a4 | d,8(e c d e d |
  f4) b,8(c d4) | e r r | R2. | r4 r e | fis8(g f c) d4 | % 130
  a4 r r | R2. | d'8(c d e) a, b | d-- c g(fis) g a | d,4(e8) fis g4 |
  R2.*3 | a8(fis g a) d, e |
  g8-- fis b,(c) d b | c4 r r | R2. | a'4.(b8 c b | % 133
  a8 b c b a g) | 4 r r | R2. | f4.(g8 a g | f g) a(g) f(a) |
  a4 r r | r r d | c8.-> b16 a8 g f g | a8.-> g16 f8(e) d4 |
  e8(f e4) d'->~ | d e r | a,8.->(g16) f8 e d(e) | f(e) d4 d | % 136
  e4~8 r r4 | R2. | f2.-^ | a2 g4 | f~8 r r4 | R2. |
  g2. | 2 f4 \section | e2 r4 | R2.*3 |
  R2.*2 | b'2.->~( | b | ais2) r4 | R2. | % 139
  R2.*4 | b2.( | a2) fis4 |
  e2.-^~ | 2 4 | g2. | d | cis2.-^~ | 2 e4 | 2. | g |
  c,2.-^~ | 2 4 | 2 4 | e2 r4 | R2.*4 | % 142
  R2.*3 | r4 r b' | 2. | c |
  d2. | e | f->~( | f | e) | e, |
  e2. | f | g | a | b->~( | b | a) | g | % 145
  f2. | e | d | c | b-^~ | b | b'-^~ | 2 4 |
  c2.-^~ | c~ | c~ | c~ | c~ | c~ | c~ | c~ | 4 r4 r\fermata |
}

wordsAltoII = \lyricmode {
  praise,
  In all __ His words most won -- der -- ful,
  And in the depth be praise, % 127
  Praise to the Ho -- li -- est in the height, __
  And in __ the depth be praise,
  and in __ the depth, __ the depth __ be __ praise.
  O wi -- sest love!
  Praise __ to the Ho -- li -- est, to the Ho -- li -- est, % 131
  Praise __ to the Ho -- li -- est in the heightm
  Glo -- ry, glo -- ry to Him, to Him,
  who ev -- er -- more
  By truth and jus -- tice reigns, __
  Glo -- ry, glo -- ry to Him, glo -- ry to Him,
  glo -- ry to Him, glo -- ry to Him.
  Praise, __ praise, __ % 139
  In all __ His words most won -- der -- ful;
  Most sure __ in all His ways,
  in all His ways, most sure __ in all His ways, % 143
  most sure, __ most sure in all,
  in all, __ all __ His ways! __
}

wordsAltoIIMidi = \lyricmode {
  "praise, "
  "\nIn " "all "  "His " "words " "most " won der "ful, "
  "\nAnd " "in " "the " "depth " "be " "praise, " % 127
  "\nPraise " "to " "the " Ho li "est " "in " "the " "height, " 
  "\nAnd " "in "  "the " "depth " "be " "praise, "
  "\nand " "in "  "the " "depth, "  "the " "depth "  "be "  "praise. "
  "\nO " wi "sest " "love! "
  "\nPraise "  "to " "the " Ho li "est, " "to " "the " Ho li "est, " % 131
  "\nPraise "  "to " "the " Ho li "est " "in " "the " "heightm "
  "\nGlo" "ry, " glo "ry " "to " "Him, " "to " "Him, "
  "\nwho " ev er "more "
  "\nBy " "truth " "and " jus "tice " "reigns, " 
  "\nGlo" "ry, " glo "ry " "to " "Him, " glo "ry " "to " "Him, "
  "\nglo" "ry " "to " "Him, " glo "ry " "to " "Him. "
  "\nPraise, "  "praise, "  % 139
  "\nIn " "all "  "His " "words " "most " won der "ful; "
  "\nMost " "sure "  "in " "all " "His " "ways, "
  "\nin " "all " "His " "ways, " "most " "sure "  "in " "all " "His " "ways, " % 143
  "\nmost " "sure, "  "most " "sure " "in " "all, "
  "\nin " "all, "  "all "  "His " "ways! " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*5 | s2.\fff | s2.*2 | s2 s8\< s\! | % 111
  s2. | s2 s4-\markup\italic "espress." | s8\< s2\! s8 | s8\< s2\! s8 |
  s4. s\cresc | s4 s2\< | s2.\ffz | s4 s2-\markup\italic "molto stringendo." | s2. |
  s1.*3 | s2. s2 s4\mf | s1. | s2.\< s\! | s s\dim | s1. |
  s1.*2 | s1.\mf^\markup\italic "legato." | s1.*3 | s1.\ff | s1.\dim | % 114
  s2.\p\<^\markup "cantabile e sostenuto." s2 s4\! | s1.*2 | s2. s2 s4\cresc | s1. | s2. s2 s4\mf | s1. | s2.\> s\! |
  s1.\p | s1.*5 | s2. s2 s4\pp | s2.\< s\> |
  s1.\! | s1.*2 | s2. s\< | s1.\> | s2.\! s\dim | s s\> | s s\! | s1. | % 117
  s2. s\dim | s1. | s2. s\> | s s\! | s2\p^\markup\italic "espress." s4\< s2.\! | s2\> s4\! s2. | s2.\< s\! | s\fp s\> | s\! s\pp | s1. |
  s1. | s4. s\pp s2. | s s\dim | s1. | s\< | s2.\! s\pp | s1. | s2. s\< | s\> s\! | s1. |
  s1.*2 | s2. s\< | s\fp s\> | s\! s\pp | s1.*2 | s4. s\pp s2. | s1.*2 | % 120
  s1.*5 | s1.*3 | s2. s\< | s s\! |
  s2 s1\> | s1.\! | a\cresc | s1.*2 | s2. s\p | s1.*5 |
  s1. | s\omit\dim-\markup\italic "dim. molto." | s1.*2 | s2.\< s\> | s\! s\dim | s\< s\> | s\! s\ppp | s1.*2 | % 123
  s1.*2 | s2. s\p | s\< s\! s4.\> s\! | s1.\< s2.\> | s1.\! | s1.*2 |
  s1. | s2.*3\cresc | s2.\< s1.\! | s2.*6 | s2.\f s1. | s1.\< s2.\! |
  2.\ff | s8.\> s16\! s2 | s2. | s4\< s4.\> s8\! | % 126a
}

alto = \relative {
  \global
  R1*6 \section \key c \major \time 2/2 | \grace s8 R1*6 |
  R1*5 \section \time 3/4 | % 111ab
  <c'' e>2.-^~ | 4 c4. b8 | 8.-> a16 4 <f c'>8 f | % 111c
  <<{\vo b4(e,)} \new Voice {\vt e2}>> \ov c8(e) |
  g8 f a4-- f | 2 a4 | 8 f' e4 d8->(a) | a(f'4) e8 d(a~ | % 112a
  a2.) | a | g4(b) b | 8 c a2-^~ | 2 f8(b,) \section \time 6/4 |
  c1.~ | 2 r4 r2. | R1. | r2. r4 r g' | % 113a
  c2.~2 b4 | 2 a4 gis2 a4 | 2.->~2 r4 | R1. |
  R1.*2 | g2. e2 d4 | 2 c4 e2 a,4 | % 114a
  a'2. r | R1. | <<{\vo c2(g4)} \new Voice {\vt g2.}>> \ov a4(g) f | e2 4 r r c |
  f2.~2 e4 | 2 d4 cis2 d4 | 2 4 2 4 | 2 c4 b2 bes4 | % 115a
  a2 4 bes2 c4 | cis2 d4 2 e4 | f2 c4 d2 e4 | a2.^^~2 r4 |
  <<{\vo g2. f2 4 | bes,2 ees4 g2 ees4 |} \new Voice {\vt d2(ees4) f2 4 | ees2 4 2 4 |}>> \ov bes2 r4 r2. | R1. | % 116a
  R1.*2 | r2. r4 r d | 2. ees |
  d2 r4 r2. | R1.*2 | r2. fis | % 117a
  g1. | f2 r4 e2 cis4 | d2.-- d | c gis | a a |
  e'1.~ | 2. d c1.~ | 2.~2 r4 | <a f'>2. <a e'>2 4 | % 118a
  <a b>2 r4 r2. | <d f>2. <c e>2 4 | <b f'>1.~ | 2. a' | a a |
  a2.-- a | 4.-- a a a | 2. a | a a | 4. a a a | % 119a
  a2. f | 4. f f f | e2 r4 f2. | c2. b | a1.~ |
  a2.~2 r4 | R1. | d2. <d a'>2 4 | <d g>1.~ | 2. d | % 120a
  d2. d | d d | 4.-- d d d | 2.~2 4 | 2. d |
  d4. d d d | 2.~2 4 | 2. bes | bes bes | a2 r4 r2. | % 121a
  R1.*2 | r2. d | d d | d d |
  d2.--~2 4 | 2. d | d d | d d | g->~2 4 | % 122a
  g2. d | e f | cis d | a a | a~2 r4 | r2. f' |
  cis2. d | a1. | a | a2 r4 fis'2. | g g f2 r4 <cis a'>2. | % 123a
  <d a'>2. <d g> | <c a'>2 r4 gis2. | a a | d~2 r4 |
  R1.*2 | r2. b \section \time 9/4 | b4. g' fis2. e4.(b) | % 124a
  b4.(g'~g) fis e2.~ \section \time 6/4 | e2 r4 r2. | R1.*2 |
  r2. cis \section \time 9/4 | cis4. a' gis2. fis4.->(cis) | cis(a'~a gis) fis2. | b,2 r4 r2. r | % 125a
  R2.*3 | a'2.-^~2. fis2 e4 | e4. d e g b(a)\caesura \section \time 3/4 |
  c2-^ a8 b | 8. c16 4 <f, c'>8 <f d'> | <<{\vo b4(e,) e} \new Voice {\vt e2 4}>> \ov | e8 f <d a'>4.-- f8 | % 126a
}

wordsAlto = \lyricmode {
  Praise __ to the Ho -- li -- est in the height,
  And in the depth be praise:
  In all His words most won -- der -- ful; __
  Most sure, __ most sure in all __ His ways! __
  O lov -- ing wis -- dom of our God! __
  O lov -- ing wis -- dom of our God! % 114a
  O __ lov -- ing wis -- dom!
  O wi -- sest love! that flesh and blood
  Which did in Ad -- am fail,
  Should strive a -- fresh a -- gainst the foe,
  Should strive and should pre -- vail; __
  O __ lov -- ing wis -- dom of our God! % 116a
  O wi -- sest love!
  God’s Pres -- ence and His ve -- ry Self,
  And Es -- sence all __ di -- vine. __
  O gen -- ’rous love!
  O gen -- ’rous love! __ that He who smote
  In man for man the foe,
  The dou -- ble ag -- o -- ny in man
  For man should un -- der -- go;
  O gen -- ’rous love! __
  O gen -- ’rous love! __ that He who smote % 120a
  In man for man the foe, __
  The dou -- ble ag -- o -- ny in man __
  For man should un -- der -- go; % 121a
  And in the gar -- den se -- cret -- ly,
  And on the cross, the cross __ on high,
  Should teach His breth -- ren and in -- spire __ % 122b
  To suf -- fer and to die.
  O gen -- ’rous love! O gen -- ’rous love!
  O gen -- ’rous love! __
  In all His words most won -- der -- ful, __ % 124a
  in all His words most won -- der -- ful;
  praise to the Ho -- liest in the height,
  praise to the Ho -- li -- est in the height, __
  And in the depth be
}

wordsAltoMidi = \lyricmode {
  "Praise "  "to " "the " Ho li "est " "in " "the " "height, "
  "\nAnd " "in " "the " "depth " "be " "praise: "
  "\nIn " "all " "His " "words " "most " won der "ful; " 
  "\nMost " "sure, "  "most " "sure " "in " "all "  "His " "ways! " 
  "\nO " lov "ing " wis "dom " "of " "our " "God! " 
  "\nO " lov "ing " wis "dom " "of " "our " "God! " % 114a
  "\nO "  lov "ing " wis "dom! "
  "\nO " wi "sest " "love! " "that " "flesh " "and " "blood "
  "\nWhich " "did " "in " Ad "am " "fail, "
  "\nShould " "strive " a "fresh " a "gainst " "the " "foe, "
  "\nShould " "strive " "and " "should " pre "vail; " 
  "\nO "  lov "ing " wis "dom " "of " "our " "God! " % 116a
  "\nO " wi "sest " "love! "
  "\nGod’s " Pres "ence " "and " "His " ve "ry " "Self, "
  "\nAnd " Es "sence " "all "  di "vine. " 
  "\nO " gen "’rous " "love! "
  "\nO " gen "’rous " "love! "  "that " "He " "who " "smote "
  "\nIn " "man " "for " "man " "the " "foe, "
  "\nThe " dou "ble " ag o "ny " "in " "man "
  "\nFor " "man " "should " un der "go; "
  "\nO " gen "’rous " "love! " 
  "\nO " gen "’rous " "love! "  "that " "He " "who " "smote " % 120a
  "\nIn " "man " "for " "man " "the " "foe, " 
  "\nThe " dou "ble " ag o "ny " "in " "man " 
  "\nFor " "man " "should " un der "go; " % 121a
  "\nAnd " "in " "the " gar "den " se cret "ly, "
  "\nAnd " "on " "the " "cross, " "the " "cross "  "on " "high, "
  "\nShould " "teach " "His " breth "ren " "and " in "spire "  % 122b
  "\nTo " suf "fer " "and " "to " "die. "
  "\nO " gen "’rous " "love! " "O " gen "’rous " "love! "
  "\nO " gen "’rous " "love! " 
  "\nIn " "all " "His " "words " "most " won der "ful, "  % 124a
  "\nin " "all " "His " "words " "most " won der "ful; "
  "\npraise " "to " "the " Ho "liest " "in " "the " "height, "
  "\npraise " "to " "the " Ho li "est " "in " "the " "height, " 
  "\nAnd " "in " "the " "depth " "be "
}

dynamicsTenorI = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*5 | s2.*4 |
  s2.*9 | % 112a
  s1.*105 | s2.*6 | s1.* 4 | s2.*18 | s2.*4 |
  s2 s4\mf | s8\< s\! s4 s\cresc | s2. | s\f | s | % 126b
  s2. s4\< s8 s4.\> | s2.\! | s2.*2 | % 127
  s2.*4 | s2 s4\f |
  s2.*5 |
  s2. | s\f | s2.*3 | % 130
  s2\f s4\< | s8\! s\> s2\! | s2.*3 |
  s2.*4 |
  s2.*4 | % 133
  s2. | s\ff | s2.*3 |
  s2.\f | s2.*3 |
  s2.*3 | s8 s\< \after 4.. \ff s2 | % 136
  s2.\sf | s2.*3 | s2.\sf | s |
  s2.*2 | s2.\p | s | s\cresc | s |
  s2.\< | s2 s4\! | s2.\ff\> | s\! | s2 s4\p | s2.\omit\cresc-\markup\italic "molto cresc." | % 139
  s2.*2 | s2.\< | s2 s4\! | s2.\ffz | s |
  s2.\sf | s2.*3 | s2.\sf | s2.*3 |
  s2.\sf | s2.*7 | % 142
  s2.*3 | s2.\f\< | s2.\ff | s |
  s2.*2 | s2.\< | s\! | s2.*2 |
  s2.*4 | s2.\< | s | s\! | s | % 145
  s2.\< | s\! | s2.*4 | s2.\ffz | s |
  s2.-\markup\bold\italic rit. | s\< | s2.*5 | s4. s\! | s2. |
}

tenorI = \relative {
  \global
  R1*6 | \key c \major \grace s8 R1*6 |
  R1*5 \time 3/4 | R2.*4 |
  R2.*9 \section \time 6/4 | % 112
  R1.*8 | % 113
  R1.*8 |
  R1.*8 |
  R1.*8 | % 116
  R1.*9 |
  R1.*10 |
  R1.*10 | % 119
  R1.*10 |
  R1.*10 |
  R1.*11 | % 122
  R1.*10 |
  r2.*18 |
  r2.*20 | % 125
  r2.*4 | % 126a
  d'2 a4 | 8 f' e4 d8(a) | 8. 16 g4 r | f'8.->( e16 d8 c) b c | d8. c16 b8(a) g a |
  b8(c b d c b | d e d c) b(c) | d c e4 a,8(b) | gis(a b a) d4 | d, r r | % 127
  R2.*4 | r4 r cis'8(d) |
  e8 d fis4 b,8(cis) | ais(b cis b) d4 | c r r | R2.*2 |
  R2. | e4 d c | b(a4.) g8 | 4 r r | R2. | % 130
  f'8(e d g) c, d | f-- e b(a) b c | d2.~ | 4 r r | r r g, |
  a8. 16 c8(g) a4 | c r r | R2. | fis8(d e fis) g c, |
  e8 d g,(a b g) | g'4.(f8) f e | d4(c4.) b8 | c4 r r | % 133
R2. | c8(b c e d c | b c d-> c b a) | b r r4 r | R2. |
  a'8.->(g16) f8 e d e | f8. e16 d8(c) b4 | c8(d c4) d8(e) f8.-> e16 d8(c) b4 |
  c8(d e4) r | c8(d) c4 a8(g) | f(g a4) r | f8(g) f g a(b) | % 136
  c2.-^ | a2 b4 | c~8 r r4 | R2. | d | b2 a4 |
  d4~8 r r4 | R2. \section | e2. | 2 4 | dis2-> 4 | 2. |
  e2.~ | 2 4 | fis2.->( | g2) r4 | r r fis | 2 4 | % 139
  eis2.->~ | 2 4 | fis2.~ | 2 4 | gis2.->( | a2) fis4 |
  g2.-^~ | 2 cis,4 | 2. | d | e-^~ | 2 ais,4 | cis2. | b |
  c2.-^~ | 2 fis,4 | a2. | g | e4 r r | R2.*3 | % 142
  R2.*3 | f'2. | a->~( | a |
  g2.) | g, | gis | a | b | c |
  d2.->~( | d | c) | c, | d | e | f | g | % 145
  a2. | g' | f | e | d-^~ | d | a'-^~ | 2 4 |
  e2.-^~ | e~ | e~ | e~ | e~ | e~ | e~ | e~ | 4 r r\fermata |
}

wordsTenorI = \lyricmode {
  praise,
  In all His words most won -- der -- ful,
  Praise to the Ho -- li -- est in the height, __
  And in the depth, the depth __ be praise,
  and in the depth, the depth __ be praise.
  O wi -- sest, wi -- sest love! % 130
  Praise __ to the Ho -- li -- est in the height, __
  And in the depth be praise,
  Praise __ to the Ho -- li -- est, __
  praise __ to the Ho -- li -- est. % 133
  Glo -- ry, glo -- ry to Him, who ev -- er -- more
  By truth, __ by __ truth and jus -- tice reigns, __
  Glo -- ry to Him, __ % 136
  glo -- ry to Him, glo -- ry to Him,
  glo -- ry to Him.
  Praise to the Ho -- li -- est in __ the height, __ % 138
  And in the depth, __ the depth __ be praise, __
  In all __ His words most won -- der -- ful;
  Most sure __ in all His ways,
  most sure __ in all His ways, % 143
  most sure __ in all His ways,
  most sure in all, in all, __ all __ His ways! __
}

wordsTenorIMidi = \lyricmode {
  "praise, "
  "\nIn " "all " "His " "words " "most " won der "ful, "
  "\nPraise " "to " "the " Ho li "est " "in " "the " "height, " 
  "\nAnd " "in " "the " "depth, " "the " "depth "  "be " "praise, "
  "\nand " "in " "the " "depth, " "the " "depth "  "be " "praise. "
  "\nO " wi "sest, " wi "sest " "love! " % 130
  "\nPraise "  "to " "the " Ho li "est " "in " "the " "height, " 
  "\nAnd " "in " "the " "depth " "be " "praise, "
  "\nPraise "  "to " "the " Ho li "est, " 
  "\npraise "  "to " "the " Ho li "est. " % 133
  "\nGlo" "ry, " glo "ry " "to " "Him, " "who " ev er "more "
  "\nBy " "truth, "  "by "  "truth " "and " jus "tice " "reigns, " 
  "\nGlo" "ry " "to " "Him, "  % 136
  "\nglo" "ry " "to " "Him, " glo "ry " "to " "Him, "
  "\nglo" "ry " "to " "Him. "
  "\nPraise " "to " "the " Ho li "est " "in "  "the " "height, "  % 138
  "\nAnd " "in " "the " "depth, "  "the " "depth "  "be " "praise, " 
  "\nIn " "all "  "His " "words " "most " won der "ful; "
  "\nMost " "sure "  "in " "all " "His " "ways, "
  "\nmost " "sure "  "in " "all " "His " "ways, " % 143
  "\nmost " "sure "  "in " "all " "His " "ways, "
  "\nmost " "sure " "in " "all, " "in " "all, "  "all "  "His " "ways! " 
}

dynamicsTenorII = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*5 | s2.*4 |
  s2.*9 | % 112a
  s1.*105 | s2.*6 | s1.* 4 | s2.*18 | s2.*4 |
  s2 s4\mf | s8\< s\! s4 s\cresc | s2.*3 |
  s2. s4 s2\f | s2.*2 | s2.\< | % 127
  s2.\> | s\! | s2.*3 |
  s2.*3 | s2 s4\f | s2. |
  s2.*5 | % 130
  s2.*5 |
  s2. | s2 s4\< | s\! s8\> s\! s4 | s2. |
  s2.*3 | s2.\ff | % 133
  s2.*3 | s2.\rf | s |
  s2.*4 |
  s2.*3 | s8 s\< \after 4.. \! s2 | % 136
  s2. | s2 \after 8. \ff s4 | s2.\sf | s2.*3 |
  s2.\sf | s2.*3 | s4\p s2\cresc | s2. |
  s4. s\< | s2. | s\ff\> | s\! | s2 s4\p | s2.\omit\cresc-\markup\italic "molto cresc." | % 139
  s2.*2 | s4. s\< | s2 s4\! | s2.\ffz | s |
  s2.\sf | s2.*3 | s2.\sf | s2.*3 |
  s2.\sf | s2.*7 | % 142
  s2.*3 | s2.\f\< | s\ff | s |
  s2.*2 | s2.\< | s\! | s2.*2 |
  s2.*4 | s2.*2\< | s\! | % 145
  s2.\< | s\! | s2.*4 | s2.\ffz | s |
  s2.-\markup\bold\italic rit. | s\< | s2.*5 | s4. s\! | s2. |
}

tenorII = \relative {
  \global
  R1*6 | \key c \major \grace s8 R1*6 |
  R1*5 \time 3/4 | R2.*4 |
  R2.*9 \section \time 6/4 | % 112
  R1.*8 | % 113
  R1.*8 |
  R1.*8 |
  R1.*8 | % 116
  R1.*9 |
  R1.*10 |
  R1.*10 | % 119
  R1.*10 |
  R1.*10 |
  R1.*11 | % 122
  R1.*10 |
  r2.*18 |
  r2.*20 | % 125
  r2.*4 | % 126a
  d'2 a4 | 8 f' e4 d8(a) | 4(g a8) d | f4 r r | R2. |
  R2. | r4 f2 | b,8(c a b) c(b) | d4 gis,8 a fis d | d'2.~ | % 127
  d2.~ | 4 r r | R2.*3 |
  R2.*3 | r4 r d8(e) | f e g4 c,8(d) |
  b8(c d c) a(b) | c4 r r | R2.*3 | % 130
  R2. | r4 r r8 c | g'4.(fis8) 8(e) | d4 c b8 a | g4 r r |
  R2. | fis'8(e fis g) c, d | fis-- e a,(b) c g | d'4(c) b |
  a4(g) f | e r r | R2. | c'4.(d8 e d | % 133
  c8 d e d c b) | c r r4 r | R2. | b8(a b d c b | a b) c b d(f) |
  f8.->(e16) d8 c b c | d8. c16 b8 a g g | a b c4 r | R2. |
  r4 r c8(b) a b c4 r | a8 b a4 f8(e) | d(e) f(g) a(b) | % 136
  c4~8 r r4 | R2. | c2.-^ | d2 e4 | a,~8 r r4 | R2. |
  d2. | c2 4 \section | d2 r4 | R2. | dis,4 4. 8 | 4. 8 4 |
  e2. | e' | b2.->~ | 2 r4 | r r fis' | 2 4 | % 139
  eis2.->~ | 2 4 | fis2.~ | 2 4 | cis2.->~ | 2 fis4 |
  e2.-^~ | 2 ais,4 | 2. | b | cis2.-^~ | 2 fis,4 | 2. | g |
  a2.-^~ | 2 dis,4 | 2. | e | 4 r r | R2.*3 | % 142
  R2.*3 | f'2. | a->~( | a |
  g2.) | g, | gis | a | b | c |
  d2.-~( | d | c) | c, | d | e | f | g | % 145
  a2. | e' | d | c | b-^~ | b | d-^~ | 2 4 |
  g2.-^~ | \repeat unfold 7 g~ | 4 r r\fermata |
}

wordsTenorII = \lyricmode {
  praise,
  In all His words most won -- der -- ful,
  And in __ the depth, in the depth be praise, __ % 127
  and in the depth, the depth be praise.
  O lov -- ing wis -- dom of our God! % 131
  Praise __ to the Ho -- li -- est in the height,
  And in __ the depth.
  Glo -- ry, glo -- ry to Him,
  glo -- ry to Him, who ev -- er -- more % 135
  By truth and jus -- tice reigns;
  who ev -- er -- more, ev -- er -- more reigns,
  Glo -- ry __ to Him, glo -- ry to Him,
  glo -- ry to Him. % 138
  Praise to the Ho -- li -- est in the height, __
  And in the depth, __ the depth __ be praise, __
  In all __ His words most won -- der -- ful;
  Most sure __ in all His ways,
  most sure __ in all His ways, % 144
  most sure __ in all His ways,
  most sure in all, in all, __ all __ His ways! __
}

wordsTenorIIMidi = \lyricmode {
  "praise, "
  "\nIn " "all " "His " "words " "most " won der "ful, "
  "\nAnd " "in "  "the " "depth, " "in " "the " "depth " "be " "praise, "  % 127
  "\nand " "in " "the " "depth, " "the " "depth " "be " "praise. "
  "\nO " lov "ing " wis "dom " "of " "our " "God! " % 131
  "\nPraise "  "to " "the " Ho li "est " "in " "the " "height, "
  "\nAnd " "in "  "the " "depth. "
  "\nGlo" "ry, " glo "ry " "to " "Him, "
  "\nglo" "ry " "to " "Him, " "who " ev er "more " % 135
  "\nBy " "truth " "and " jus "tice " "reigns; "
  "\nwho " ev er "more, " ev er "more " "reigns, "
  "\nGlo" "ry "  "to " "Him, " glo "ry " "to " "Him, "
  "\nglo" "ry " "to " "Him. " % 138
  "\nPraise " "to " "the " Ho li "est " "in " "the " "height, " 
  "\nAnd " "in " "the " "depth, "  "the " "depth "  "be " "praise, " 
  "\nIn " "all "  "His " "words " "most " won der "ful; "
  "\nMost " "sure "  "in " "all " "His " "ways, "
  "\nmost " "sure "  "in " "all " "His " "ways, " % 144
  "\nmost " "sure "  "in " "all " "His " "ways, "
  "\nmost " "sure " "in " "all, " "in " "all, "  "all "  "His " "ways! " 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  R1*6 \section \key c \major \time 2/2 | R1*6 |
  s1*5 | s2.\fff | s2.*2 | s2 s8\< s\! | % 111
  s2.*2 | s8\< s\! s2 | s8\< s\! s2 |
  s2. | s4 s2\< | s2.\ffz | s4 s2-\markup\italic "molto stringendo." | s2. |
  s1.*8 |
  s1.\omit\p-\markup{\dynamic p \italic legato} | s2 s1\cresc | s1.*2 | s1.\ff | s1.*2 | s1 s4 s\p | % 114
  s1\< s4 s\! | s1.*2 | s1 s4 s\cresc | s1. | s1 s4 s\mf | s1. | s2.\> s\! |
  s1.*2 | s1.\p | s4 s2\dim s2. | s1.*3 | s2. s2 s4\pp |
  s2.\< s\> | s\! s\dim | s1. | s2. s\< | s\> s\! | s s\dim | s s\> | s s\! | s1. | % 117
  s2. s\dim | s1. | s1 s2\> | s2. s\! | s1. | s\omit\pp-\markup{\dynamic pp \italic espress.} | s1.*2 | s2. s\pp | s1. |
  s1. | s\pp | s2. s\dim | s1. | s4.\< s2. s4.\! | s2. s\pp | s1. | s2. s\< | s\> s\! | s1. |
  s1. | s2.\< s\! | s1.*2 | s2. s\pp | s1.*2 | s4. s2.\pp s4. | s1.*2 |
}

tenor = \relative {
  \global
  R1*6 \section \key c \major \time 2/2 | \grace s8 R1*6 |
  R1*5 \time 3/4 |
  <e' g>2.-^~ | 4 g4. f8 | 8.-> e16 4 c8 b | 4(c) e8(c) | % 111c
  c8 c a4-- c | d2 a4 | f'8 b, c4 a | 8(f'4) e8 d4~ | % 112a
  d4 r r | <<{\vt a2(d4)} \new Voice {\vo d2.}>> \ov | e2 g8->(f) e8 e <d f>2-> ~ | 2 b4 \section \time 6/4 |
  c1.~ | 2 r4 r2. | R1.*2 | % 113a
  R1.*4 |
  e2. c2 b4 | 2 a4 d2 a4 | g2 e4 f2 g4 | a2 4 2 r4 | % 114a
  <d a'>2. d2 c4 | 2 b4 d2 a4 | g2 r4 r2. | r2. r4 r c |
  f2.~2 e4 | 2 d4 cis2 d4 | 2 4 2 4 | 2 c4 b2 bes4 | % 115a
  a2 4 bes2 c4 | cis2 d4 2 e4 | f2 c4 d2 e4 | a,2.^^~2 r4 |
  R1.*2 | <bes f'>2. d2 c4 | 2 bes4 ees2 c4 | % 116a
  a2 r4 r2. | R1.*2 | r2. r4 r g |
  a2. c | a2 r4 r2. | R1. | r2. d | % 117a
  ees2.(e) | d2 r4 a2 4 | bes2.-- b | a e | f fis |
  e1.~ | 2. e | a1.~ | 2.~2 r4 | R1. | % 118a
  <f a>2. <e e'>2 4 | <f d'>2 r4 r2. | R1. | r2. d' | c c |
  d2.-- e | f4.-- f f f | e2. d | c c | d4. d d a | % 119a
  a2. a | b4. b b b | c2 r4 b2. | cis d | a1.~ |
  a2 r4 r2. | <g bes>2. <f a>2 4 | <e bes'>2 r4 r2. | R1. | r2. g | % 120a
  f2. f | g a | bes4.-- 4. 4. 4. | a2.~2 g4 | f2. f |
  g4. g g d | 2.~2 4 | 2. 2. | e e | f2 r4 bes2. | % 121a
  fis2. e | d1.~ | 2 r4 d'2. | d d | d bes |
  c2.--~ 2 4 | 2. bes | c bes | d bes | 2.->~2 a4 | % 122a
  a2. a | bes f | g d | ees f | fis~2 r4 | r2. f |
  g2. d | ees1. | f | fis2 r4 d'2. | ees e | d2 r4 r2. | % 123a
  R1. | r2. e, | f fis | g~2 r4 |
  R1.*2 | <e b'>1.-^~ \section \time 9/4 | 2 r4 r2. r | % 124a
  R2.*3 \section \time 6/4 | R1.*3 |
  <fis cis'>1.-^~ \section \time 9/4 | 2 r4 r2. r | R2.*6 | % 125a
  e'2.-^~e cis2 b4 | b4.(a) b d cis2 4 | cis4. d e g fis2.\caesura \section \time 3/4 |
  g2-^ a,8 f' | 8. e16 4 c8-> b-> | 2 a8(b) | c c a4--(b8) c | % 126a
}

wordsTenor = \lyricmode {
  Praise __ to the Ho -- li -- est in the height,
  And in the depth be praise:
  In all His words most won -- der -- ful; __
  Most __ sure, most __ sure in all __ His ways! __
  O lov -- ing wis -- dom of our God!
  When all was sin and shame,
  O lov -- ing wis -- dom of our God!
  O wi -- sest love! that flesh and blood
  Which did in Ad -- am fail,
  Should strive a -- fresh a -- gainst the foe,
  Should strive and should pre -- vail; __
  O lov -- ing wis -- dom of our God!
  O wi -- sest love!
  God’s Pres -- ence and His ve -- ry Self,
  And Es -- sence all __ di -- vine. __
  O gen -- ’rous love! that He who smote
  In man for man the foe,
  The dou -- ble ag -- o -- ny in man
  For man should un -- der -- go;
  O gen -- ’rous love! __
  O gen -- ’rous love! that He who smote
  In man for man the foe, __
  The dou -- ble ag -- o -- ny in man __
  For man should un -- der -- go, % 121a
  should un -- der -- go; __
  And in the gar -- den se -- cret -- ly,
  And on the cross, the cross __ on high,
  Should teach His breth -- ren and in -- spire __ % 122b
  To suf -- fer and to die.
  O gen -- ’rous love! O gen -- ’rous love! __
  Praise, __ praise, __
  praise __ to the Ho -- li -- est,
  to the Ho -- liest in the height,
  praise to the Ho -- li -- est in the height,
  And in the depth be
}

wordsTenorMidi = \lyricmode {
  "Praise "  "to " "the " Ho li "est " "in " "the " "height, "
  "\nAnd " "in " "the " "depth " "be " "praise: "
  "\nIn " "all " "His " "words " "most " won der "ful; " 
  "\nMost "  "sure, " "most "  "sure " "in " "all "  "His " "ways! " 
  "\nO " lov "ing " wis "dom " "of " "our " "God! "
  "\nWhen " "all " "was " "sin " "and " "shame, "
  "\nO " lov "ing " wis "dom " "of " "our " "God! "
  "\nO " wi "sest " "love! " "that " "flesh " "and " "blood "
  "\nWhich " "did " "in " Ad "am " "fail, "
  "\nShould " "strive " a "fresh " a "gainst " "the " "foe, "
  "\nShould " "strive " "and " "should " pre "vail; " 
  "\nO " lov "ing " wis "dom " "of " "our " "God! "
  "\nO " wi "sest " "love! "
  "\nGod’s " Pres "ence " "and " "His " ve "ry " "Self, "
  "\nAnd " Es "sence " "all "  di "vine. " 
  "\nO " gen "’rous " "love! " "that " "He " "who " "smote "
  "\nIn " "man " "for " "man " "the " "foe, "
  "\nThe " dou "ble " ag o "ny " "in " "man "
  "\nFor " "man " "should " un der "go; "
  "\nO " gen "’rous " "love! " 
  "\nO " gen "’rous " "love! " "that " "He " "who " "smote "
  "\nIn " "man " "for " "man " "the " "foe, " 
  "\nThe " dou "ble " ag o "ny " "in " "man " 
  "\nFor " "man " "should " un der "go, " % 121a
  "\nshould " un der "go; " 
  "\nAnd " "in " "the " gar "den " se cret "ly, "
  "\nAnd " "on " "the " "cross, " "the " "cross "  "on " "high, "
  "\nShould " "teach " "His " breth "ren " "and " in "spire "  % 122b
  "\nTo " suf "fer " "and " "to " "die. "
  "\nO " gen "’rous " "love! " "O " gen "’rous " "love! " 
  "\nPraise, "  "praise, " 
  "\npraise "  "to " "the " Ho li "est, "
  "\nto " "the " Ho "liest " "in " "the " "height, "
  "\npraise " "to " "the " Ho li "est " "in " "the " "height, "
  "\nAnd " "in " "the " "depth " "be "
}

dynamicsBassI = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*5 | s2.*4 |
  s2.*9 | % 112a
  s1.*105 | s2.*6 | s1.* 4 | s2.*18 | s2.*4 |
  s2 s4\mf | s2 s4\cresc | s2.*3 |
  s2. | s2 s4\f | s2.*3 | % 127
  s2.*4 | s2 s4\f |
  s2.*4 | s2 s4\f |
  s2.*3 | s2\f^\markup\italic "cantabile e lagato."^\markup{\with-color "red" \bold melody} s4\< | s8\! s\> s2\! | % 130
  s2.*5 |
  s2.*4 |
  s2.*3 | s4 s2\< | % 133
  s2.\sf | s2.*4 |
  s2.*4 |
  s2.\f^\markup\italic "marcato." | s2.*2 | s8 s\< \after 4.. \ff s2 | % 136
  s2.\sf^\markup{\with-color "red" \bold\upright "in 1"} | s2.*3 | s2.\sf | s |
  s2.*2 | s2.\p | s | s\cresc | s |
  s2.\< | s2 s4\! | s2.\ff\> | s | s2 s4\p | s2.\omit\cresc-\markup\italic "molto cresc." | % 139
  s2.*2 | s2.\< | s2 s4\! | s2.\ffz | s |
  s2.*8 |
  s2.*4 | s4. s\< | s2.*2 | s2.\! | % 142
  s2.\cresc | s2.*3 | s2.\< | s |
  s2.\! | s2.*5 |
  s2. | s\< | s | s\! | s2.*4 | % 145
  s2.*6 | s2.\ffz | s^\markup \with-color "red" \bold\upright "in 3" |
  s2.-\markup\bold\italic rit. | s2.\< | s2.*5 | s4. s\! | s2. |
}

bassI = \relative {
  \global
  R1*6 | \key c \major \grace s8 R1*6 |
  R1*5 \time 3/4 | R2.*4 |
  R2.*9 \section \time 6/4 | % 112
  R1.*8 | % 113
  R1.*8 |
  R1.*8 |
  R1.*8 | % 116
  R1.*9 |
  R1.*10 |
  R1.*10 | % 119
  R1.*10 |
  R1.*10 |
  R1.*11 | % 122
  R1.*10 |
  r2.*18 |
  r2.*20 | % 125
  r2.*4 | % 126a
  d2 4 | d(e) f | d(e) f | g8. 16 4 r | R2. |
  R2. | r4 r d | e(c) d | b(c) a | g r r | % 127
  R2.*4 | r4 r e' |
  fis4(d) e | cis(d) b | c r r | R2. | r4 r f( |
  d4 e) f8 g | c4. c,8 4 | R2. | c'8(b c d) g, a | c b f(e) f g | % 130
  a4 g f | e(d) c | b r r | R2. | b'4 a g |
  fis4(e) d | c r r | R2. | d'4 c b |
  a4(g) f | e8(g) a(b) c4 | g a4. g8 | f4 4 8 8 | % 133
  f2 4 | e2-> 4 | 2 4 | d2-> 4 | 4 2 |
  g2.~ | g~ | g~ | g |
  g4 4. 8 | 2 g,4 | 8. 16 4 4 | 8. 16 g'8 8 f4 | % 136
  e2.-^ | f2 g4 | a~8 r r4 | R2. | d,2. | e2 f4 |
  g4~8 r r4 | R2. \section | e2. | 2 4 | dis2-> 4 | 2. |
  e2.~ | 2 4 | e'2.->~ | 2 r4 | r r fis, | 2 4 | % 139
  eis2.->~ | 2 4 | fis2.~ | 2 4 | 2.~ | 2.~ |
  fis2. | e | d-^~ | d~ | d | cis | b-^~ | b~ |
  b2. | a | g2 4 | 2 e'4 | 2 f4 | 2 fis4 | 2 g4 | 2 gis4 | % 142
  gis2 a4 | 2.~ | 2 ais4 | 2 b4 | 2. | c |
  d2. | e | f->~( | f | e) | e, |
  e2. | f | g | a | b->~( | b | a) | g | % 145
  f2.~ | f~ | f | f | f-^~ | f | b-^~ | 2 4 |
  g2.-^~ | g~ | g~ | g~ | g~ | g~ | g~ | g~ | 4 r r\fermata |
}

wordsBassI = \lyricmode {
  praise,
  In all __ His words __ most won -- der -- ful,
  And in __ the depth be praise, % 127
  and in __ the depth be praise,
  praise __ to the Ho -- li -- est,
  praise __ to the Ho -- li -- est,
  to the Ho -- li -- est in __ the height.
  O gen -- ’rous, gen -- ’rous love! % 131
  O lov -- ing wis -- dom of __ our __ God!
  Glo -- ry to Him, glo -- ry to Him,
  who ev -- er -- more By truth and jus -- tice reigns, __
  Glo -- ry to Him, who ev -- er -- more % 136
  By truth and jus -- tice reigns,
  glo -- ry to Him, glo -- ry to Him.
  Praise to the Ho -- li -- est in __ ther height, __ % 138
  And in the depth, __ the depth __ be praise, __
  In all __ His words __most won -- der -- ful,
  in all His words most won -- der -- ful; % 142
  Most sure in all __ His ways, in all His ways,
  most sure __ in all His ways,
  most sure, __ in all, __ in all, __ all __ His ways! __
}

wordsBassIMidi = \lyricmode {
  "praise, "
  "\nIn " "all "  "His " "words "  "most " won der "ful, "
  "\nAnd " "in "  "the " "depth " "be " "praise, " % 127
  "\nand " "in "  "the " "depth " "be " "praise, "
  "\npraise "  "to " "the " Ho li "est, "
  "\npraise "  "to " "the " Ho li "est, "
  "\nto " "the " Ho li "est " "in "  "the " "height. "
  "\nO " gen "’rous, " gen "’rous " "love! " % 131
  "\nO " lov "ing " wis "dom " "of "  "our "  "God! "
  "\nGlo" "ry " "to " "Him, " glo "ry " "to " "Him, "
  "\nwho " ev er "more " "By " "truth " "and " jus "tice " "reigns, " 
  "\nGlo" "ry " "to " "Him, " "who " ev er "more " % 136
  "\nBy " "truth " "and " jus "tice " "reigns, "
  "\nglo" "ry " "to " "Him, " glo "ry " "to " "Him. "
  "\nPraise " "to " "the " Ho li "est " "in "  "ther " "height, "  % 138
  "\nAnd " "in " "the " "depth, "  "the " "depth "  "be " "praise, " 
  "\nIn " "all "  "His " "words " "__most " won der "ful, "
  "\nin " "all " "His " "words " "most " won der "ful; " % 142
  "\nMost " "sure " "in " "all "  "His " "ways, " "in " "all " "His " "ways, "
  "\nmost " "sure "  "in " "all " "His " "ways, "
  "\nmost " "sure, "  "in " "all, "  "in " "all, "  "all "  "His " "ways! " 
}

dynamicsBassII = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*5 | s2.*4 |
  s2.*9 | % 112a
  s1.*105 | s2.*6 | s1.* 4 | s2.*18 | s2.*4 |
  s2.*2 | s4.\f s\cresc | s2.*2 |
  s2. | s2 s4\f | s2.*3 | % 127
  s2.*2 | s2 s4\f | s2.*2 |
  s2. | s2 s4\f | s2.*3 |
  s2.*3 | s2.\f | s | % 130
  s2.*5 |
  s2.*4 |
  s2.*3 | s2.\ff | % 133
  s2.\sf | s2.*4 |
  s2.*4 |
  s2.\f^\markup\italic marcato. | s2.*2 | s8 s\< s2 | % 136
  s2.\! | s4 \after4.. \ff s2 | s2.\sf | s2.*3 |
  s2.\sf | s2.*3 | s4\p s2\cresc | s2. |
  s4. s\< | s2 s4\! | s2.\ff\> | s\! | s2 s4\p | s2.\omit\cresc-\markup\italic "molto cresc." | % 139
  s2.*2 | s4. s\< | s2 s4\! | s2.\ffz | s |
  s2.*8 |
  s2.*5 | s4. s\cresc | s2.*2 | % 142
  s2.\cresc | s2.*3 | s2.\ff | s |
  s2.*6 |
  s2. | s\< | s | s\! | s2.*4 | % 145
  s2.*6 | s2.\ffz | s |
  s2.-\markup\bold\italic rit. | s\< | s2.*5 | s4. s\! | s2. |
}

bassII = \relative {
  \global
  R1*6 | \key c \major \grace s8 R1*6 |
  R1*5 \time 3/4 | R2.*4 |
  R2.*9 \section \time 6/4 | % 112
  R1.*8 | % 113
  R1.*8 |
  R1.*8 |
  R1.*8 | % 116
  R1.*9 |
  R1.*10 |
  R1.*10 | % 119
  R1.*10 |
  R1.*10 |
  R1.*11 | % 122
  R1.*10 |
  r2.*18 |
  r2.*20 | % 125
  r2.*4 | % 126a
  d2 r4 | R2. | d4 e(f | g8.) 16 4 r | R2. |
  R2. | r4 r d | e(c) d | b(c) a | g r r | % 127
  R2.*2 | r4 r a'( | b) g a | fis(g8.) e16 4 |
  R2. | r4 r b' | c(a) b | g(a) fis | g(e) f |
  d4(e) f8(g) | c4 r r | R2. | e,4 d c | b(a) g | % 130
  f4 r r | R2. | b'4 a g | fis e d8 c | b4 r r |
  R2. | c'4 b a | g(fis) e | d r r |
  r4 r f | e(d) c | b(a g) | f4 4. 8 | % 133
  f'2 4 | e2-> 4 | 2 4 | d2-> 4 | 4 2 |
  g,2.~ | g~ | g~ | g |
  g'4 4. 8 | 2 r4 | g,2 4 | g g f | % 136
  e4~8 r r4 | R2. | a'2.-^ | b2 c4 | d~8 r r4 | R2. |
  g,2. | a2 4 \section | gis2 r4 | R2. | dis4 4. 8 | 4. 8 4 |
  e2.~ | 2 4 | 2.->~ | 2 r4 | r r fis | 2 4 | % 139
  eis2.->~ | 2 4 | fis2.~ | 2 d4 | cis2.->( | fis~ |
  fis2.) | e | d-^~ | d~ | d | cis | b-^~ | b~ |
  b2. | a | g~ | 2 4 | a2. | a | b~ | 2 4 | % 142
  c2.~ | 2 4 | d2 4 | 2. | e->~( | 2 c4) |
  c2.~ | c | c->~( | 2 a4) | 2. | e' |
  e2. | f | g | a | b->~( | b | a) | g | % 145
  f2.~ | f~ | f | f, | f-^~ | f | f'-^~ | 2 4 |
  c2.-^~ | c~ | \repeat unfold 6 <g c>~ | q4 r r\fermata |
}

wordsBassII = \lyricmode {
  praise,
  Most won -- der -- ful,
  And in the depth be praise, % 127
  Praise __ to the Ho -- li -- est,
  And in __ the depth, and in __ the depth be praise,
  O wi -- sest, wi -- sest love!
  O lov -- ing wis -- dom of our God! % 131
  O gen -- ’rous, gen -- ’rous love!
  O gen -- ’rous love! __
  Glo -- ry to Him, who ev -- er -- more
  By truth and jus -- tice reigns; __
  Glo -- ry to Him, glo -- ry, glo -- ry to Him, % 136
  glo -- ry to Him, glo -- ry to Him.
  Praise to the Ho -- li -- est in __ the height, __ % 138
  And in the depth, __ the depth __ be praise, __
  in all __ His words __ most won -- der -- ful,
  in all __ His words __ most won -- der -- ful,
  most __ sure, __ most __ sure in all His ways,
  most sure __ in all, __ in all, __ all __ His ways! __
}

wordsBassIIMidi = \lyricmode {
  "praise, "
  "\nMost " won der "ful, "
  "\nAnd " "in " "the " "depth " "be " "praise, " % 127
  "\nPraise "  "to " "the " Ho li "est, "
  "\nAnd " "in "  "the " "depth, " "and " "in "  "the " "depth " "be " "praise, "
  "\nO " wi "sest, " wi "sest " "love! "
  "\nO " lov "ing " wis "dom " "of " "our " "God! " % 131
  "\nO " gen "’rous, " gen "’rous " "love! "
  "\nO " gen "’rous " "love! " 
  "\nGlo" "ry " "to " "Him, " "who " ev er "more "
  "\nBy " "truth " "and " jus "tice " "reigns; " 
  "\nGlo" "ry " "to " "Him, " glo "ry, " glo "ry " "to " "Him, " % 136
  "\nglo" "ry " "to " "Him, " glo "ry " "to " "Him. "
  "\nPraise " "to " "the " Ho li "est " "in "  "the " "height, "  % 138
  "\nAnd " "in " "the " "depth, "  "the " "depth "  "be " "praise, " 
  "\nin " "all "  "His " "words "  "most " won der "ful, "
  "\nin " "all "  "His " "words "  "most " won der "ful, "
  "\nmost "  "sure, "  "most "  "sure " "in " "all " "His " "ways, "
  "\nmost " "sure "  "in " "all, "  "in " "all, "  "all "  "His " "ways! " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*12 |
  s1*5 | s2.\fff | s2.*2 | s2 s8\< s\! | % 111
  s2.*3 | s4\< s2\! | s2. | s\< | s\ffz | s4 s2-\markup\italic "molto stringend." | s2. |
  s1.*8 |
  s1.*4 | s1.\ff | s1.*3 | % 114
  s1.*6 | s1.\mf | s2 s1\dim |
  s1.\p | s | s\p | s1.*4 | s1.\pp |
  s2.\< s\> | s\! s\dim | s1. | s2. s\< | s\> s\! | s s\dim | s s\> | s s\! | s1. | % 117
  s2. s\dim | s1. | s1 s2\> | s2. s\! | s1. | s\omit\pp-\markup{\dynamic pp \italic espress.} | s1.*2 | s2. s\pp | s1. |
  s1. | s\pp | s2. s\dim | s1. | s2.\< s4. s\! | s2. s\pp | s1. | s2. s\< | s\> s\! | s1. |
  s1.*2 | s2 s1\< | s1.\fp\> | s2.\! s\pp | s1.*2 | s4. s2.\pp s4. | s1.*2 |
}

bass = \relative {
  \global
  R1*6 \section \key c \major \time 2/2 | \grace s8 R1*6 |
  R1*5 |
  <g c>2.-^~ | 4 g4. 8 | a8. 16 4 8 8 | g2 a8(g) | % 111c
  f8 8 4-- e | <d a'>2 a'4 | d,(e8) 8 f4 | <d b'>4 <e c'>8 8 <f d'>4 | % 112a
  R2. f | g2 4 | a8 8 <d, a'>2-^~ | 2 g4 \section \time 6/4 |
  c,1.~ | 2 r4 r2. | R1.*2 | % 113a
  R1.*4 |
  R1.*4 | % 114a
  <f a>2. 2 4 | <<{\vo d2 g4 a2 4 | g2} \new Voice {\vt g2 g4 f2 d4 | e2}>> \ov r4 r2. | R1. |
  R1.*4 | % 115a
  R1.*2 | c'2. a2 g4 | 2 f4 a2 d,4 |
  d2 r4 r2. | R1. | <d f>2. <ees g>2 <f a>4 | g2 r4 r2. | % 116a
  R1.*3 | fis2.(g) |
  fis2. ees | d1.~ | 2 r4 r2. | r c' | % 117a
  bes2.(a) | d,2 r4 g2 4 | f2.-- e | a, d | c b |
  e1.~ | 2. e | <a, e'>1.~ | 2.~2 r4 | R1. | % 118a
  <a d>2. <a c>2 4 | <a b>2 r4 r2. | R1. | r2. a' | a a |
  f2.-- e | d4.-- d d d | a2. a' | a g | f4. f f f | % 119a
  f2. e | d4. d d d | c2 r4 d2. | e f | a2.~2 r4 |
  R1.*2 | d,2. <f a>2 4 | <e bes'>1.~ | 2. d | % 120a
  d2. d | bes^\markup{\with-color "red" \bold "\"smote\" same as before"} a | <g d'>4.-- q q q | d'2.~2 4 | 2. c |
  bes4. 4. 4. 4. | 2.~2 4 | 2. a | g g | f2 r4 <g e'>2. | % 121a
  <a fis'>2. <bes g'> | d1.~ | 2 r4 d'2. | d c | bes a4.(g) |
  fis2.--~2 4 | 2. g | a g | fis^\markup{\with-color "red" \bold "Sound the ‘s’ on cross"} g4. f | e2.->~2 4 | % 122a
  e2. f\( | g d | e bes | c c | d~2\) r4 | r2. d |
  e2. bes | c1. | c | d2 r4 c'2. | bes a | d,2 r4 <g a>2. | % 123a
  <f bes>2. <e b'> | <a, a'>2 r4 d2. | c b | b~2 r4 |
  R1.*2 | <e, b'>1.~ \section \time 9/4 | 2 r4 r2. r | % 124a
  R2.*3 \section \time 6/4 | R1.*3 |
  <fis cis'>1.~ \section \time 9/4 | q2 r4 r2. r | R2.*3 | b'2.-^~b gis2 fis4 | % 125a
  fis4.(e) fis a gis e | fis2 4 g2. a2 4 | b2 r4 r2. r\caesura \section \time 3/4 |
  <e, c'>2-^ f8 g | a8. 16 4 8-> 8-> | g2 4 | 8 f e4.-- 8 | % 126a
}

wordsBass = \lyricmode {
  Praise __ to the Ho -- li -- est in the height,
  And in the depth be praise:
  In all His words most won -- der -- ful;
  Most sure, most sure in all __ His ways! __
  O lov -- ing wis -- dom of our God!
  O wi -- sest love!
  O wi -- sest love!
  O wi -- sest love!
  O wi -- sest love!
  God’s Pres -- ence and His ve -- ry Self,
  And Es -- sence all __ di -- vine. __
  O gen -- ’rous love! that He who smote
  In man for man the foe,
  The dou -- ble ag -- o -- ny in man
  For man should un -- der -- go;
  O gen -- ’rous love! __
  O gen -- ’rous love! that He who smote
  In man for man the foe, __
  The dou -- ble a -- go -- ny in man __
  For man should un -- der -- go, % 121a
  should un -- der -- go; __
  And in the gar -- den se -- cret -- ly,
  And on the cross, on the cross __ on high,
  Should teach His breth -- ren and in -- spire __ % 122b
  To suf -- fer and to die.
  O gen -- ’rous love! O gen -- ’rous love!
  O gen -- ’rous love! __
  Praise, __ praise, __
  praise to the Ho -- li -- est,
  to the Ho -- li -- est in the height, % 125b
  praise to the Ho -- li -- est in the height,
  And in the depth be
}

wordsBassMidi = \lyricmode {
  "Praise "  "to " "the " Ho li "est " "in " "the " "height, "
  "\nAnd " "in " "the " "depth " "be " "praise: "
  "\nIn " "all " "His " "words " "most " won der "ful; "
  "\nMost " "sure, " "most " "sure " "in " "all "  "His " "ways! " 
  "\nO " lov "ing " wis "dom " "of " "our " "God! "
  "\nO " wi "sest " "love! "
  "\nO " wi "sest " "love! "
  "\nO " wi "sest " "love! "
  "\nO " wi "sest " "love! "
  "\nGod’s " Pres "ence " "and " "His " ve "ry " "Self, "
  "\nAnd " Es "sence " "all "  di "vine. " 
  "\nO " gen "’rous " "love! " "that " "He " "who " "smote "
  "\nIn " "man " "for " "man " "the " "foe, "
  "\nThe " dou "ble " ag o "ny " "in " "man "
  "\nFor " "man " "should " un der "go; "
  "\nO " gen "’rous " "love! " 
  "\nO " gen "’rous " "love! " "that " "He " "who " "smote "
  "\nIn " "man " "for " "man " "the " "foe, " 
  "\nThe " dou "ble " a go "ny " "in " "man " 
  "\nFor " "man " "should " un der "go, " % 121a
  "\nshould " un der "go; " 
  "\nAnd " "in " "the " gar "den " se cret "ly, "
  "\nAnd " "on " "the " "cross, " "on " "the " "cross "  "on " "high, "
  "\nShould " "teach " "His " breth "ren " "and " in "spire "  % 122b
  "\nTo " suf "fer " "and " "to " "die. "
  "\nO " gen "’rous " "love! " "O " gen "’rous " "love! "
  "\nO " gen "’rous " "love! " 
  "\nPraise, "  "praise, " 
  "\npraise " "to " "the " Ho li "est, "
  "\nto " "the " Ho li "est " "in " "the " "height, " % 125b
  "\npraise " "to " "the " Ho li "est " "in " "the " "height, "
  "\nAnd " "in " "the " "depth " "be "
}

dynamicsAcc = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s1\p | s1*5 | s2 s\< | s\sf\> s\! | s1*2 |
}

acc = \relative {
  \global
  <bes bes'>4.(<aes aes'>8 <g g'>4 <fis fis'>) |
  <bes bes'>4.(<aes aes'>8 <g g'>4 <fis fis'>) |
  \grace <f f'>8 <f' f'>4.(<ees ees'>8 <d d'>4 <cis cis'>) |
  <f f'>4.(<ees ees'>8 <d d'>4 <cis cis'>) |
  <c c'>4.(<bes bes'>8 <a a'>4 <gis gis'>4) | % 110b
  <c c'>4.(<bes bes'>8 <a a'>4 <gis gis'>4) \section \clef bass \key c \major \time 2/2 |
  \grace s8 <b,, b' d gis d'>1-^( |
  <fis fis' dis' a' dis>1-^ | <c' c' e c' e>-^ | % 110c
  <e b' e b' e a>2~<e b' e b' e g>4) r \section |
}

pianoRHone = \relative {
  \global \vo
  aes8(ees' bes' aes g fis~<ees fis ees'> <d d'>) |
  aes8(ees' bes' aes g fis~<ees fis ees'> <d d'>) |
  ees8(bes' f' ees d cis~<bes cis bes'> <a a'>) |
  ees8(bes' f' ees d cis~<bes cis bes'> <a a'>) |
  bes,8(f' c' bes a gis~<f gis f'> <e e'>) | % 110b
  bes'8(f' c' bes) a gis~4 \section \key c \major \time 2/2 |
  \acciaccatura <e, gis>8 \tuplet 3/2 {e'2(f4} \tuplet 3/2 {e d b)} |
  \tuplet 3/2 2 {b2(c4 b a fis)~} | % 110c
  \tuplet 3/2 2 {fis2(g4 fis e c)} | a'2(g) \section |
  e''4-> d-> e-> d-> | c-> bes-> c-> bes-> | % 110d
  gis4-> fis-> gis-> fis-> | % 111a
  g4-> \ov g,,32[g' e c] g s16. s32*5 g32 c e g8 32[c e g] |
  \vo aes2.-^ \ov <d,, a' b>4-^ | <c e g c>2 <e g c e>-^ | % 111b
  <g c e g>2-^ <c e c'>4-^ <e c' e>-^ \section \time 3/4 |
  \repeat tremolo 12 {<c' e g>32 g~} | <g c e g>4 <e, g c e>4.-^ <f b d>8 | % 111c
  q8. <e a c>16 4 <f c' f>8 <f b d> | \vo <e e'>2 c'8 b |
  <g b>8 <f a> \ov <d a' d>4-- <c f a> | % 112a
  <a d f a>2 <a a'>4-- |
  \vo a'8\arpeggio(f' e4 d8 a) |
  a8(f'4) e8 a4~ | \ov
  \repeat tremolo 12 {<d, a'>32 a} | % 112b
  \repeat tremolo 12 {<d' a'>32 a} |
  <g b e g>4-! <g, b e g>-! \vo <e g e'>8-> <f d'> |
  <b d>8 <a c> \ov \repeat tremolo 8 {<a f'>32  f} |
  \repeat tremolo 4 {q32 f~} <f a f'>8 r <f d'>4 \section \time 6/4 |
  \vo <c' c'>2(q4->~2 <b b'>4->~ | % 113a
  b'2 <a, a'>4 <g g'>2 <a a'>4~ |
  q2) q4->~(2 4~ |
  a'2 g4 fis2 <f g>4~ |
  <g, e' g>4)( \ov <f d'>4 <g e'> <a f'> <b g'> <c a'> | % 113b
  <d b'>4 <e c'> <f d'> <fis ees'> <f d'> <e c'>8 <d b'> |
  <c a'>4 <a f'> <g e'> <f d'> <g e'> <a f'> |
  <b g'>4 <c a'> <d b'> <ees c'> <d b'> <c a'>8 <b gis'> |
  <a a'>4) gis(a) \vo f c'(b) | % 114a
  gis4 b(c) a e'(d) | b c(g') a, e'(d~) |
  d b'(a) \ov <c, e>~(<e a e'>) <a, a'>4-. |
  <a' d a'>2.-^ \vo d,2(c4 | 2 b4 \ov <d, f a d>2 <b f' a>4) | % 114b
  \vo \grace s4 <g' g'>2.-^(e'2 d4 | \ov <e, d'>2 <a c>4 \vo e'2 d4) |
  f2(4--~<f, f'>2 e'4--~ | % 115a
  \ov <g, e'> <a f'> <bes g'> <b aes'> <bes g'> <a f'>8 <g e'> |
  <f d'>4 <d bes'> <c a'> <bes g'> <c a'> <d b'> |
  <e c'>4 <f d'> <g e'> <aes f'> <g e'> <f d'>8 <e cis'> |
  <d d'>4) <cis cis'>(<d d'>) \vo bes' f'(e) | % 115b
  cis4 e(f) d <a a'>(<g g'>) |
  f'4 d'(c) d, a'(g~) | g e'(d) \ov <f, a> a,~(<a d>) |
  \vo <g d'>2.(bes2 a4 | 2 g4 \ov <e g c>2 <a, e' g>4) | % 116a
  \vo \grace s8 <f' f'>2.(d'2 c4 | 2 bes4 <bes ees>2 <a c>4 |
  <fis d'>4) e(f <bes, g'> <c a'> <d bes'> | % 116b
  \ov <ees c'>4 <f d'> <g ees'> <a fis'> <bes g'> <c a'> |
  <d bes'>4 <ees a'> <f d'> \ottava #1 <g ees'> <a fis'> <bes g'> |
  <c a'>4 <bes g'> <a fis'> <bes g'> <a f'> <g ees'> \ottava #0 |
  <c, a'>4 <bes g'> <a fis'> <bes g'> <a f'> <g ees'> | % 117a
  d'4) s4 s1 | s1. | \vo <d g>2-- r4 d2.-^~( |
  d2. c) | <a d>2 r4 a2.-^~( | a g | <e a>2) r4 e2.~( | e d) | % 117b
  \ov <d' b'>4(<c a'> <b gis'> <c a'> <b g'> <a f'> | % 118a
  <d b'>4 <c a'> <b gis'>~4 <a fis'> <gis e'>) |
  \repeat unfold 51 {a'4 a,} |
  <e cis'>4(<f d'> <g e'> <a f'> <bes g'> <c a'> |
  <d bes'>4 <e cis'> <f d'> <a f'> <g e'>4~ \vo <g g'>) \ov | % 120a
  \repeat unfold 27 {d'4 d,} |
  \repeat unfold 18 {d'4 d,} | % 121a
  \ottava #1 <c' a'>4 <bes g'> <a fis'> <bes g'> <a f'> <g ees'> \ottava #0 |
  <c, a'>4(<bes g'> <a fis'>~q <g ees'> <fis d'>~) |
  \repeat unfold 6 {d'4 d,} |
  \vo \repeat unfold 6 {d'4 d,} | % 122a
  \ov \repeat unfold 8 {d'4 d,} d' a |
  a'4 a, a' s2 r4 | R1.*3 | r2. <d, a' d>2.(<c e c'> <bes f' bes> | % 122b
  <a cis a'>2. <g d' g> | <f a f'>2) r4 r2. | R1. | % 123a
  \vo r2. d'~( | d c | <a d>2) r4 a2.-^~( |
  a2. g | <e a>2) r4 e2.~( | e d | e2 f4 e d b~ | % 123b
  \grace s8 b2 c4 b a fis | \vo fis'2 g4 fis e c) | % 124a
  a'2.(g) \section \time 9/4 | \ov
  \repeat unfold 2 {\repeat tremolo 12 {<g' cis>32 cis,}
                    \repeat tremolo 12 {<a' d>32 d,}
                    \repeat tremolo 12 {<g e'>32 e} |
                  } \section \time 6/4
  \vo fis,2(g4 fis e cis~ | % 124b+
  cis2 d4 cis b gis | <gis gis'>2 <a a'>4 gis' fis d) |
  \ov <cis fis b>2.(a') \section \time 9/4 | % 125a
  \repeat tremolo 12 {<a' dis>32 dis,}
  \repeat tremolo 12 {<b' e>32 e,}
  \repeat tremolo 12 {<a fis'>32 fis} |
  \repeat tremolo 12 {<a dis>32 dis,} <e b' e>2. \vo <fis fis'> |
  \ottava #1 <e' b'>2 \ottava #0 r4 b,2.(gis2 fis4) |
  e'2.-^~e cis2 b4 | a'2.-^~a fis2 e4 | d'2.-^~d b2 a4 \section \time 3/4 | % 125b
  <g, c g'>8-^ \tuplet 6/4 {g32([c e g c e]} <g, c g'>4->) <a, e'>8(<g b d>) | % 126a
  q8 \tuplet 6/4 {c,32([e a c e a]} <c, a' c>4->) <f, c' f>8 <f d'> |
  <e b' e>8 \tuplet 6/4 {e32([g b e g b]} <e, b' e>4->) \vo c8 b |
  \ov <e, b'>8 <f a> <d a' d>4.-- <f a>8 |
  <f a>2 a4 | \vo a8 f' e4 d8 a | a8\arpeggio(f'4) e8 d a | % 126b
  b4(c g)~ | g a e |
  g4. a8 d4~ | d <f, a>2 | g f4~ | \ov <d f> e <d' fis>->~ | \vo fis g d~ | % 127
  d4 e b | d4. e8 a4~ | a <c, e>2 | d c4~ | <a c> b <g b> |
  a2 g4 | <e g> fis <d' f> | e2 d4~ | <b d>(c) <a c> | b2 a4~ |
  <f a>4 g <d f> | c'8^\markup\italic "cantabile e legato." b c d g, a | % 130
  c b f e f g | g'4. f8~f e~ | e d4 c b8 |
  c4. b8~b a | g4 f4. e8 | d' c d e a, b | d c g fis g a | g' fis g a d, e |
  g8 fis c b c d | e4. d8~<e, d'> <f c'> | % 131
  b4. <d, a'>8 g4 | fis'4. e8 d4 |
  c4. b8 a4 | c8 b c d g, a | c b f e f g | f' e f a g4~ |
  g4 f d | e8 d e g f4~ | f e c | d8 c d f e4~ | e d b->~( | % 134
  b4 c) g->~( | g a) d->( | d e) b->~( | b c) f->~( |
  f4 g) d->~( | d e) b->~( | b c) g->~( | g \ov <b, d a'> <d a' d>) | % 136
  \vo  c'2 g4 | <e a e'>2 <d f d'>4 | <c c'>2.-^ | \ov <a d a'>2 <g e' g>4 | % 137
  <f' a d f>2.-^ | <d g d'>2 <c a' c>4 |
  <b' g' b>2.-^ | \vo g2 f4 \section | % 138
  \repeat tremolo 12 {\rh \vo <gis, d'>32^^ \lh d} |
  \repeat tremolo 12 {\rh \vo <gis d'>32 \lh d} |
  \repeat tremolo 12 {\rh \vo <a' dis>32^^ \lh dis,} |
  \repeat tremolo 12 {\rh \vo <a' dis>32 \lh dis,} |
  \repeat tremolo 12 {\rh \vo <c' e>32^^ \lh e,} | % 139
  \repeat tremolo 12 {\rh \vo <c' e>32 \lh e,} |
  \rh \ov <a' b e a>2.-^( | <g b e g>2) r4 |
  \repeat tremolo 12 {\rh\vo <ais, e' fis>32^^ \lh fis} |
  \repeat tremolo 12 {\rh\vo <ais e' fis>32 \lh fis} |
  \repeat tremolo 12 {\rh\vo <b eis>32^^ \lh eis,} | % 140
  \repeat tremolo 12 {\rh\vo <b' eis>32 \lh eis,} |
  \repeat tremolo 12 {\rh\vo <d' fis>32^^ \lh fis,} |
  \repeat tremolo 12 {\rh\vo <d' fis>32 \lh fis,} |
  \rh\ov <b' cis f b>2.( | <a cis f a>2) r4 |
  <g, e' g>2.^^~ | q | <e' cis' g'>2.->( | <fis d' fis>) | \vo <cis e>2.^^~ | q | % 141
  \ov <e ais e'>2.->( | <d b' d>) |
  <a c>2.^^~ | q | <c dis c'>2.( | <b e b'>) | \vo d'2.( | c | e | d | % 142
  f2. | e | g | f | <a, a'>->)~( | q |
  <g g'>2. | g) | g | a | b | e, |
  <d d'>2.->~( | q | <c c'> | c) | d | e | f | g | % 145
  \ov \acciaccatura f8 a2. | \vo <a a'>2. | q | q | \ov <a b d a'>2.-^ | % 146
  q2. | \ottava #1 <a' b d a'>2.-^~ | q | \ottava #0
  \repeat tremolo 12 {<c e g>32^^ g} | % 147
  \repeat unfold 7 \repeat tremolo 12 {<c e g>32^^ g} |
  <g c e g>4 r r\fermata |
}


pianoRHtwo = \relative {
  \global \vt
  aes4 <aes ees'>\arpeggio <a c> fis' |
  aes,4 <aes ees'>\arpeggio <a c> fis' |
  ees4 <ees bes'>\arpeggio <e g> cis' |
  ees,4 <ees bes'>\arpeggio <e g> cis' |
  bes,4 <bes f'>\arpeggio <b d> gis' | % 110b
  bes4 <bes f'>\arpeggio <b e>^( \tuplet 3/2 {gis'8 <f f'> <e e'>)} \section \key c \major \time 2/2 |
  \grace s8 \repeat tremolo 8 {d32 gis,} \tuplet 3/2 {\repeat tremolo 4 {e'32 g,} \repeat tremolo 4 {d' g,} \repeat tremolo 4 {b g}} |
  \repeat tremolo 8 {a32 dis,} \tuplet 3/2 {\repeat tremolo 4 {b'32 d,} \repeat tremolo 4 {a' d,} \repeat tremolo 4 {fis d}} | % 110c
  \repeat tremolo 8 {e32 c} \tuplet 3/2 {\repeat tremolo 4 {fis32 c~} 4 4} |
  \repeat tremolo 12 {e32 b} <b f'>4 \section |
  \tuplet 6/4 4 {e''16[c g e g c] d[c aes f aes c] e[c g e g c] d[c a f a c]} % 110d
  \tuplet 6/4 4 {c16[aes ees c ees aes] bes[aes fes des fes aes] c[aes ees c ees aes] bes[aes fes des fes aes]} |
  \tuplet 6/4 4 {gis16[e b gis b e] fis[e c a c e] gis[e b gis b e] fis[e c a c e] } | % 111a
  \tuplet 6/4 {g16[e c g e c]} s2. |
  \acciaccatura aes'8 \repeat tremolo 8 {b32 a} <a b>4 s | s1*2 \section \time 3/4 | % 111b
  s2.*3 | b4 c <c, e> |
  c4 s2 | s2. | f4\arpeggio <e g>\arpeggio <d a'>\arpeggio | % 112a
  f4 <g c> \repeat tremolo 4 {d'32 a} |
  s2.*2 | s2 b4 | e, s2 | s2. \section \time 6/4 | % 112b
  c'4 d e f g b, | b c d e d c8 b | c4 f e d e f | g, a b c b a8 g~ | % 113a
  <<{\once\hideNotes g4} \new Voice {\vf c4}>> \vt s1 s4 | s1.*3 |
  s2. <c, f>2 <b g'>4 | % 114a
  <b g'>2 <c a'>4 a'2 <<{b4~ \once\hideNotes b s} \new Voice {\vt s4 g2}>> g4 a2 b4 |
  <b d>2 c4 s2. |
  s2. <d, a'>2. | <d g> s | \grace <c g>4 c'2 g4 a g f | s2. g4 f <e g> | % 114b
  <f c'>4 g a bes d e | s1.*3 | % 115a
  s2. <f, b>2 <e c'>4 | <e cis'>2 <f d'>4 d'2 e4 | c2 <c f>4 d2 e4 | % 115b
  <e g>2 <d f>4 s2. |
  d,2 ees4 f2. | <bes, ees>2. s | \appoggiatura f'8 bes2 f4 g f ees | % 116a
  d4 fis g <c, ees> <d f> <ees g> |
  s4 \teeny cis'' c bes a g \normalsize | s1.*3 | % 116b
  s1. | \vo <a,, fis'>4(<bes g'> <c a'> <d bes'> <ees c'> <fis d'> | % 117a
  <g ees'>4 <a fis'> <bes g'> <d bes'>2 <c a'>4) |
  \vt bes4 g bes d, fis d |
  g4 ees g e g e | f s f a, cis a | d bes d b d b | c a c s2. | s1. | % 117b
  s1.*10 | % 118
  s1.*10 |
  s1 s4 f''8 e | s1.*9 |
  s1.*10 | % 121
  bes,1. | a2 r4 s2. | s1.*9 |
  s1.*3 | d,4 fis d~d fis d | g ees g e g e | f d f a, cis a | % 123a
  d4 bes d b d b | c a c s2. | s1. | <gis d'>1. |
  s1. | <g c>1. | <b e> \section \time 9/4 | s2.*3 | % 124a
  s2.*3 \section \time 6/4 | <ais e'>1. | b | % 124b
  <<{d1.} \new Voice {s2 \once\hideNotes a4~2.}>> |
  s1. | s2.*5 cis''4. dis | % 125a
  <<{b2.~ \once\hideNotes \vo b s2 \once\hideNotes fis,4~ | \vt fis4. e fis a gis2. | s1. cis2. | s2.*3 |}
    \new Voice {s2. \vt cis, d | s1. s2 \once\hideNotes b'4~ | b4. a b d s2 \once\hideNotes e4~ | e4. d e g fis2. |}
  >> \section \time 3/4
  s2.*2 | s2 e,4 | s2. | % 126a
  s2. | f4\arpeggio <e g>\arpeggio <d a'>\arpeggio | % 126b
  f4\arpeggio <g c>\arpeggio a\arpeggio |
  a8. g16 f8 e d e | f8. e16 d8 c b c |
  d8 e g f a g | f g s2 | <b, d>8 c <a e'> b <a c> b | s2. | % 127
  <c' e>8. <b g>16 <a c>8 <g b> <fis a> <g b> |
  c8. b16 a8 g fis g | a b d c e d | c [d] a g fis g | % 128
  <fis a>8 g <e b'> fis <e g> [fis] | dis[e] <dis fis> [ e ] cis dis |
  <cis e>8 d <b fis'> cis <b d> cis | ais b <ais cis> b gis' [ a ] | % 129
  <gis b>8 a <fis c'> g <fis a> [ g ] | e fis <e g> fis d [ e ] |
  <d f>8 e <c g'> d <c e> d |
  b8 c <b d> c a [ b ] | g'4. f8~8 e | % 130
  d4 c <<{b4 | s2.} \new Voice {s8 \once\hideNotes \vo g'~ | \vt 4 a8 b <e, c'>4 }>> |
  fis8 g f c d4 |
  f8 e f g c, d | f e b a b d | <d g>4. fis8~8 e | d2. | d'4. c8~c b | % 131
  a4 g4. fis8 | 8 <e g> fis g \lh c, d \rh | dis8 e4 s8 e g | % 132
  <fis a>8 <d fis> <e g> <fis a> <d g> <c e> |
  g'8 fis b, c d b | <c g'>4. f8~f e | d4 c4. b8 | a'4. b8 c(b) | % 133
  a8 b c b a g~ | 4. a8 b a | g a b a g f~ | 4. g8 a g | f g a g f a |
  <f a>8.-> <e g>16 <d f>8 <c e> <b d> <c e> | <d f>8.-> <c e>16 s4 b' | % 135
  <a c>8.-> <g b>16 <f a>8 <e g> <d f> <e g> |
  <f a>8.-> <e g>16 <d f>8 <c e> d'4 |
  <c e>8.-> <b d>16 <a c>8 <g b> <f a> <g b> | % 136
  <a c>8.-> <g b>16 <f a>8 <e g> <d f> <e g> |
  <f a>8.-> <e g>16 <d f>8 <c e> <b d> <c e> | <d f>8 <c e> s2 |
  <g' g'>2.-^ | s2. | f2 c4 | s2.*3 | % 137
  s2. | c | s2.*4 |
  s2.*6 |
  s2.*6 | % 140
  s2.*8 |
  s2.*4 | e2 f4~ | 2 fis4~ | 2 g4~ | 2 gis4~ |
  gis2 a4->~ | 2 4->~ | 2 ais4->~ | 2 b4 | 2.( | c) | % 143
  d2. |  <e, e'> | <f f'>2.->~^( | q | <e e'> | <c c'>) |
  e2. | f | g | <a, a'> | <b b'>~^( | q | <a a'> | g') |
  s2. | <e' g> | <d f> | <c e> | s2.*4 | % 146
  s2.*9 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\< | s\omit\cresc-\markup\italic "cres. molto." | s\p\< | s\omit\cresc-\markup\italic "molto cres." |
  s1\p | s2.\omit\cresc-\markup\italic "molto cres." s4\< | s2\sfp s\cresc |
  s1 | s2. s4\< | s2.\! s4\< |
  s2.\fp s4\< | s4\fp\> s\! s s\< |
  s1\fp | s2\ff % 111a
  s4. s8\< | s1\! | s2 s-\markup\italic "poco rit." | s4 s2\< s4\! |
  s4\fff s2\< | s2.\! | s2.*2 |
  s2.*3 s4\< s2\! | % 112a
  s2.\omit\cresc-\markup\italic "molto cresc." | % 112b
  s2.\< | s\ffz | s4 s2-\markup\italic "molto stringendo." | s2. |
  s4\ff s\< s1 | s2. s\fz\> | s\! s\dim | s1. | % 113a
  s4\p s\< s1 | s2. s4\~ s2\> | s1\! s4 s\< | s2. s4\! s2\> |
  s2.\! s\cresc | s1. | s | s4 s1\< s4\! | % 114a
  s1.\ff | s | s | s\dim |
  s1.\p | s1.*4 | s1.\cresc | s\mf | s\dim | % 115
  s1.\p | s\dim | s | s\dim | s1.\p | s1.*2 | s1.\pp |
  s1. | s2. s8\< s\! s2 | s2.\> s\! | s1\pp s2\< | % 117a
  s4 s1\> s4\! | s2. s\dim | s s\> | s2 s1\! | s1. |
  \repeat unfold 2 {s4\< s2\! s4 s\> s\! |} % 118a
  s1.\omit\ppp-\markup{\dynamic ppp \italic legato.} | s1.*7 |
  s1.-\markup\italic "sempre legato." | s1.*9 | % 119
  s1.\> | s1.\!-\markup\italic legato. | s1.*8 |
  s1.-\markup\italic "sempre legato." | s1.*7 | s1-\markup\italic legato. s2\< | s2. s\! |
  s2-\markup\italic legato. s1\> | s1.\! | s\cresc | s | s2. s\> | % 122a
  s2. s\pp | s1.*3 | s2. s\< | s1.\fp\> |
  s1. | s\pp | s1.*5 | s2. s\ppp | s1.*2 | % 123
  s1. | s\cresc | s\f | s2.\pp\< s2.*2 | s2.*3\p\< | s1.\sfp | s | s\cresc |
  s1.\ff\> | s2.*3\p\< | s1.\p\< s2.\! | s2. s1.\cresc | s2.*4 s\< s2.\! |
  s4\ff s2\sfz | s4 s2\sfz | s4 s2\sfz | s4.\< s\> | % 126a
  s2\! s4\mf | s2. | s\cresc | s\f | s |
  s2.*5 | % 127
  s2.*4 | s2 s4\rf |
  s2. | s2 s4\rf | s2. | s2 s4\rf | s2. |
  s2. | s\f | s2.*3 | % 130
  s2.*5 |
  s2.*4 |
  s2.*3 | s2.\ff | % 133
  s2.*5 |
  s2.*4 |
  s2.*3 | s4 \after 4.. \ff s2\< | % 136
  s2.\sf | s2.*5 |
  s2. | s2 \after 8. \f s4 | s2.\p | s | s\cresc | s |
  s2.*2 | s2.\ff | s | s\p | s | % 139
  s2.\cresc | s2.*2 | s2.\< | s\ffz | s |
  s2.\sf | s | s\sf | s | s\sf | s | s\sf | s |
  s2.\sf | s2.*7 | % 142
  s2.*4 | s2.\omit\ff-\markup{\dynamic ff \italic "a tempo."} | s |
  s2.*6 |
  s2.*8 | % 145
  s2.\< | s\! | s2.*4 | s2.\ffz | s |
  s2.-\markup\bold\italic rit. | s2.*7 | s2.-\markup\italic "molto dim." |
}

pianoLHone = \relative {
  \global \vo
  \repeat tremolo 8 {ees32->( aes,} a4 c8 d) |
  \repeat tremolo 8 {ees32->( aes,} a4 c8 d) |
  \acciaccatura ees8 \repeat tremolo 8 {bes'32->( ees,} e4 g8 a) |
  \acciaccatura ees8 \repeat tremolo 8 {bes'32->( ees,} e4 g8 a) |
  \repeat tremolo 8 {f32(bes,} b4 d8 e) | % 110b
  \repeat tremolo 8 {f32(bes,} b4 d8 e) \section \key c \major \time 2/2 |
  \ov \acciaccatura <b, b'>8 \repeat tremolo 8 {b'32 d} \repeat tremolo 8 {b d} |
  \vo \repeat tremolo 8 {dis32 a'} \repeat tremolo 8 {dis, a'} | % 110c
  \ov \acciaccatura <c,, c'>8 \repeat tremolo 8 {c'32 e} \repeat tremolo 8 {c e} |
  \repeat tremolo 8 {<e, b'>32 e'~} <e, b' e>4 <d g d'> \section |
  \vo r4 \clef treble \tuplet 6/4 4 {f''16[aes c d c aes] c,[e g c g e] f[aes c d c aes]} | % 110d
  \tuplet 6/4 4 {aes,16[c ees aes ees c] des[ fes aes bes aes fes] aes,[c ees aes ees c] des[fes aes bes aes fes]} \clef bass |
  \tuplet 6/4 4 {e,16[gis a e a gis] a[c e fis e c] e,[gis b e b gis]} \tuplet 3/2 {a16([c e])} fis8 | % 111a
  \ov <e, g c>8 r s8 s32 e32 c g
  \vo e16 g32 c e s16. e32 g c e s8 | % 111b
  \repeat tremolo 8 {d32 b~} <b d>4 \ov <f, f'>-^ |
  \repeat tremolo 8 {c32 c'} \repeat tremolo 8 {c, c'~} |
  <c, c'>4 4-> <b b'>-> <a a'>-> \section \time 3/4 |
  \ov \repeat tremolo 12 {g32 g'~} | <g, g'>4 <g' g'>4.-^ <g, g'>8 | % 111c
  \repeat tremolo 12 {a32 a'} | \repeat tremolo 12 {g,32 g'} |
  \repeat tremolo 4 {f,32 f'~} <f, f'>4 <e' e'> | % 112a
  \repeat tremolo 8 {d32 d'~} <d, d'>8 r |
  <d b' f'>4\arpeggio <e c' g'>\arpeggio <f d' f>\arpeggio |
  <d' f b>4 <e g c> <f a d> |
  \repeat tremolo 12 {<f a>32 d'} | % 112b
  \repeat tremolo 12 {f,,,32 f'} |
  <g, g'>4-! <g'' b e>-! <g, g'> |
  <a a'>4 \repeat tremolo 8 {d,32 d'} |
  \repeat tremolo 4 {d,32 d'~} <d, d'>8 r <g' b>4 \section \time 6/4 |
  \vo <e c'>4 <f d'> <g e'> <a f'> <b g'> <c a'> | % 113a
  <d, b'>4 <e c'> <f d'> <fis ees'> <f d'> <e c'>8 <d b'> |
  <c a'>4 <a' f'> <g e'> <f d'> <g e'> <a f'> |
  b4 c d ees d c8 b |
  <e, c'>4 <f d'> <g e'> <a f'> <b g'> <c a'> | % 113b
  <d, b'>4 <e c'> <f d'> <fis ees'> <f d'> <e c'>8 <d b'> |
  <c a'>4 <a f'> <g e'> <f d'> <g e'> <a f'> |
  <b g'> <c a'> <d b'> <ees c'> <d b'> <c a'>8 <b gis'> |
  \vo a'4 gis a \ov <d,, d'>2 <e e'>4 | <f f'>2. \vo d''2 a4 | % 114a
  \ov <e g>2. f2 g4 | <a, a'>2. <g g'> |
  <f f'>4 <d d'> <e e'> <f f'> <e e'> <f f'> | % 114b
  <g g'>4 <g, g'> <a a'> <b b'> <c c'> <d d'> |
  \vo \slashedGrace e8 c''4 b c \ov <f, a>2 <g b>4 |
  <a c>4 <b d> <c e> \vo c d s |
  <a, f'>4 <bes g'> <c a'> <d bes'> <e c'> <f d'>~ | % 115a
  \vt f1.~ | \vo <f d'>4 <d bes'> <c a'> <bes g'> <c a'> <d b'> |
  <e c'>4 <f d'> <g e'> <aes f'> <g e'> <f d'>8 <e cis'> |
  \ov f2. g2 a4 | bes2. bes, | a bes2 c4 | d2. c | % 115b
  bes4~ <bes, bes'> <c c'> <d d'> <c c'> <d d'> | % 116a
  <ees ees'>4 <f f'> <g g'> <a a'> bes c |
  \vo bes'4 a bes \ov <ees, g>2 <f a>4 | <g bes> <a c> <bes d> s2. |
  \vo <fis d'>4 g a s2. | s1. | s \clef treble | % 116b
  <fis' d'>4 <g e'> <a fis'> <g ees'> <a f'> bes \clef bass |
  <fis, d'>4 <g e'> <a fis'> <g ees'> <a f'> <bes g'> | % 117a
  d2 4~2 c4~ | 2 bes4 e,2 fis4 | \ov g2 r4 c2.( |
  bes2. a | d,) g( | f e | a,) \vo e'4 gis e | a f a fis a fis | % 117b
  <gis e'>4 <a fis'> <b gis'> <a f'> <b g'> c | % 118a
  <gis e'>4 <a fis'> <b gis'>~4 c d |
  <a c>4_\markup\italic Ped. r \repeat unfold 49 {a,,4 a'} a, a'~ | \vt 1.~ |
  a1. | \ov \repeat unfold 27 {d,4 d'} | % 120
  \repeat unfold 18 {d,4 d'} | \vo % 121a
  <fis d'>4 <g e'> <a fis'> <g ees'> <a f'> <bes g'> |
  <fis d'>4 <g e'> <a fis'>~q <bes g'> <c a'> | \ov
  r2. c | bes a4. g |
  <fis c'>1.~ | 2. <g bes>2 r4 | <a c>2. <g bes> | % 122a
  fis2. \vo bes | 2.->~2 a4~ |
  \ov <e a>2.(<f a>2) r4 | R1.*3 | r2. <fis a d>2.( | <g bes e> <d f b> | % 122b
  <e g cis>2. <bes d g> | <c ees a>2) r4 r2. | R1. | d'2.(c | bes a) | d,(g | % 123a
  f2. e | a,) \vo e'4 gis e | a f a fis a fis | \vt % 123b
  \repeat unfold 2 \repeat tremolo 12 {b,32 e} | \vo
  \slashedGrace dis8 a'1. | \ov % 124a
  \slashedGrace c,,8 \repeat tremolo 12 {c'32 e} \repeat tremolo 12 {c32 e} |
  \repeat unfold 2 \repeat tremolo 12 {<e, b'>32 e'} \clef treble \time 9/4 \section |
  \repeat unfold 2 {
    \repeat tremolo 12 {<e' g>32 b'}
    \repeat tremolo 12 {fis32 a}
    \repeat tremolo 12 {g32 b} |
  } \clef bass \section \time 6/4 |
  \repeat tremolo 12 {cis,,32 fis} \repeat tremolo 12 {cis fis} | % 124b+
  \slashedGrace eis8 \repeat unfold 2 \repeat tremolo 12 {gis,32 eis'} |
  \repeat unfold 2 \repeat tremolo 12 {<d, a'>32 d'} |
  \repeat unfold 2 \repeat tremolo 12 {<fis, cis'>32 fis'} \section \clef treble \time 9/4 | % 125a
  \repeat tremolo 12 {<fis' a>32 cis'}
  \repeat tremolo 12 {gis32 b} \repeat tremolo 12 {a32 c} |
  \repeat tremolo 12 {<fis, a>32 cis'} <gis b>2 r4 \clef bass <a,,, a'>2. |
  <gis gis'>2. <a a'> <b b'> |
  <cis cis'>2. <d d'> <e e'> | <fis fis'> <g g'> <a a'> | % 125b
  <b b'>2. <c c'> <d d'> \section \time 3/4 |
  <e c' e>4 <e,, e'>-> <f'' a>8 g | % 126a
  a4 <a,, e' a>4-> <a'' c>8 <a b> |
  <g b>4 <g,, g'> \vo a''8 b | c c a4 b8 c |
  \ov <d, a' d>2 r4 | % 126b
  <d, b' f'>4\arpeggio <e c' g'>\arpeggio <g d' f>\arpeggio |
  <d' f b>4\arpeggio <e g c>\arpeggio <f a>\arpeggio |
  \vo f'8. e16 d8 c b c | \ov d8. c16 b8 a g a |
  b8 c b d c b | d e d c \vo b [c] \ov | e,4 c d \vo | % 127
  gis8 a <gis b> a <<{\vo d4} \new Voice {\vth fis,8 d}>> \vo |
  d4 \ov  r4 r \clef treble |
  a''8. g16 fis8 e d e | fis g fis a g fis | % 128
  a8[b] r4 \clef bass a,4 | b g a | fis g <e, e'> |
  <fis fis'>4 <d d'> <e e'> | <cis cis'> <d d'> <b'' d> | % 129
  c4 a b | g a <fis, fis'> | <g g'> <e e'> <f f'> |
  <d d'>4 <e e'> <f f'>8 <g g'> | <c e'>4(d' c | b a4. g8) | % 130
  \vo c8 b c d g, a | c b f e f g |
  \ov <g, a'>4 g' f | e d c | <b b'> a' g | % 131
  <fis d'> <e c'> <d b'>8 <c a'> | \vo d'4 e8 fis g4 |
  a,4 c8 g a4 | \ov <c, c'> b' \vt a | \vo fis'8 e a, b c g | % 132
  <d d'>4 c' b |
  e8 d g, a b g | e g a b c4 | g a4. g8 | c4. d8 e d | % 133
  c8 d e d c b | c b c e d c | b c d c b a | b a b d c b | a b c b d f |
  \ov \repeat tremolo 12 {g,,,32 g'~} | <g, g'>4 <b'' d>8 <a c> <g b>4 | % 135
  \vo <a c>8 <b d> <c e>4 \ov r | <g,, g'>2 <b'' d>4 |
  \vo <c e>8 <d f> e4 c8 b | <a c>8 <b d> c4 a8 g | % 136
  <f a>8 <g b> a4 f8 e | <d f> <e g> f g a b |
  \ov <e,, c' e>2.-^ | <f f'>2 <g g'>4 | <a f' a>2.-^ | <b, b'>2 <c c'>4 % 137
  <d a' d>2.-^ | <e e'>2 <f f'>4 |
  <g g'>2. | <a a'> \section | \vt % 138
  \repeat tremolo 12 {b,32^^ b'} |
  \repeat tremolo 12 {b,32 b'} |
  \repeat tremolo 12 {fis,32^^ fis'} |
  \repeat tremolo 12 {fis,32 fis'} |
  \repeat tremolo 12 {c,32^^ c'} | % 139
  \repeat tremolo 12 {c,32 c'} |
  \ov \repeat tremolo 12 {<e b'>32 e'~} | <e, b' e>2 r4 |
  \vt \repeat unfold 2 \repeat tremolo 12 {<cis fis>32 cis'} |
  \repeat tremolo 12 {gis,32_^ gis'} | \repeat tremolo 12 {gis,32 gis'} | % 140
  \repeat tremolo 12 {d,32_^ d'} | \repeat tremolo 12 {d,32_^ d'} |
  \ov <fis, fis'>2. | <fis' fis'>->~ |
  q2. | <e e'>-> | \vo ais'2. | b | \crossStaff {e,2.~ | e | } % 141
  <fis cis'>2. | <g b> |
  \crossStaff {e2.~ | e |} <dis a'> | <e g> | e2 f4->~ | % 142
  f2 fis4->~ | 2 g4-> | 2 gis4->~ |
  gis2 a4~ | 2 4~ | 2 ais4~ | 2 b4 | 2. | c | % 143
  d2. | s | \ov <c,, c'>2.~ | 2_\< <a a'>4\! | q2.~ | q |
  <a a'>2.~ | 2_\< <f f'>4\! | q2.~ | \vt f'~ | f~ | f~ | f~ | f |
  \vo a'2. | <e' g> | <d f> | <c e> | \ov <f, b d>2.~ | q | % 146
  \repeat unfold 2 \repeat tremolo 12 {f,,32 f'} |
  \repeat unfold 8 \repeat tremolo 12 {<a, g'>32 c'} | % 147
  \repeat tremolo 12 {c,32 c'\fermata} |
}

pianoLHtwo = \relative {
  \global \vt
  c,4 r d r | c r d r | g r a r | g r a r |
  d,4 r e r | b r c2 \section \key c \major \time 2/2 \grace s8 s1 |
  fis1 | s1*2 \section |
  <c c'>1*1/4 e''4 c f | aes, des aes des |
  e,4 a e a8~16 r | s2 e,4 e' | % 111a
  \acciaccatura <f, f'>8 f'2~4 s | s1*2 |
  s2.*4 | % 111c
  s2.*9 | % 112
  c,1. | c' | c | c~ | c | c | c, | c | % 113
  c'2. s | s f | s1.*4 | e2. s | s bes'2(bes,4) |
  a2. g | \vo g'4 <a f'> <bes g'> <b aes'> <bes g'> <a f'>8 <g e'> | % 115a
  \vt f,1.~ | f |
  s1.*4 | % 115b
  s1.*2 | b2. s | s1. | d1.~ | <d, d'>2. q~ | 1. | d''2.~2 r4 | % 116
  d,2.~2 r4 | d1. | d | s1.*4 | s2. d( | c b |
  e1.) | e | s1.*8 |
  s1.*9 \vo a2 4--~2 g4--~ | % 119
  g2 f4 b,2 cis4 \vt | s1.*9 |
  s1.*6 | d1. | d | s1.*2 |
  s1.*3 | s2. g4. f | e1. | s1.*6 | % 122
  s1.*7 | s2. d | c b | s1. |
  \repeat unfold 2 \repeat tremolo 12 {fis32 dis'} | s2.*16 |
  s2.*20 | % 125
  s2.*2 | s2 g4 | 8 f8 4.-- e8 | s2.*3 | g2 r4 | s2. |
  s2. | s2 d4 | s2. | b4 c a | g s2 | % 127
  s2.*5 |
  s2.*5 |
  s2.*3 | e'4 d c | b a g | % 130
  s2.*4 | <b b'>4 a' g |
  fis4 e d | s2. | g4 fis e | s2. |
  a4 g f | e d c | b a g | \acciaccatura f8 f'2.~ | % 133
  f2. | e~ | e | d~ | d |
  s2.*2 | g2 s4 | s2. |
  g2 r4 | g2 r4 | g,2 r4 | g2 f4 | % 136
  s2.*6 |
  s2.*6 |
  s2.*6 | % 139
  s2.*6 |
  s2.*2 | \acciaccatura d8 d'2 r4 | d2.~ | <d, d'> | <cis cis'> | % 141
  \acciaccatura b8 b'2 r4 | b2.->~ |
  <b, b'>2. | <a a'> | \acciaccatura g8 g'2.~ | g | a~ | a | b~ | b | % 142
  c2.~ | c | d~ | d | e_^~ | 2(c4) |
  c2.~ | c | s2.*4 |
  s2.*3 | \vo c2. | d | e | f | g | % 145
  \vt f,2. | f'~ | f~ | f | s2.*4 |
}

#(set-global-staff-size 16)

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
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
            \addlyrics \wordsAltoI
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics \wordsTenorI
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
            \addlyrics \wordsBassI
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics \wordsSopII
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
            \addlyrics \wordsAltoII
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsTenorII
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
            \addlyrics \wordsBassII
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
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
%            \accidentalStyle Score.modern
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
%            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \new Dynamics \with {alignAboveContext = acc} \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
  \paper {
    output-suffix = single-solo
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
  \paper {
    output-suffix = "single-sop1"
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
  \paper {
    output-suffix = "single-sop2"
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics \wordsSopII
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
  \paper {
    output-suffix = "single-alto1"
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
            \addlyrics \wordsAltoI
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
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
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
  \paper {
    output-suffix = "single-alto2"
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
            \addlyrics \wordsAltoII
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
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
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
  \paper {
    output-suffix = "single-tenor1"
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics \wordsTenorI
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            \accidentalStyle Score.modern
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
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
  \paper {
    output-suffix = "single-tenor2"
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsTenorII
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            \accidentalStyle Score.modern
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
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
  \paper {
    output-suffix = "single-bass1"
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
            \addlyrics \wordsBassI
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
  \paper {
    output-suffix = "single-bass2"
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
            \addlyrics \wordsBassII
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
  \paper {
    output-suffix = singlepage-solo
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
  \paper {
    output-suffix = "singlepage-sop1"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
  \paper {
    output-suffix = "singlepage-sop2"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics \wordsSopII
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
  \paper {
    output-suffix = "singlepage-alto1"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
            \addlyrics \wordsAltoI
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
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
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
  \paper {
    output-suffix = "singlepage-alto2"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
            \addlyrics \wordsAltoII
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
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
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics \wordsTenorI
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            \accidentalStyle Score.modern
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
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsTenorII
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            \accidentalStyle Score.modern
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
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
            \addlyrics \wordsBassI
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \teeny \dynamicsBassII
            \new Voice \bassII
            \addlyrics {\tiny \wordsBassII}
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
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
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
          }
          <<
          \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \teeny \dynamicsBassI
            \new Voice \bassI
            \addlyrics {\tiny \wordsBassI}
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \teeny \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics {\tiny \wordsTenorII}
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
            \addlyrics \wordsBassII
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        \new Staff = acc \with {
%          \accidentalStyle Score.modern
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = acc} \teeny \dynamicsAcc
          \new Voice \acc
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = pianorh \with {
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
%            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \accidentalStyle Score.modern
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
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = "midi-solo"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          midiInstrument = "choir aahs"
%          \accidentalStyle Score.modern
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
%            \addlyrics \wordsSopIMidi
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
%            \addlyrics \wordsSopIIMidi
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \acc
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    output-suffix = "midi-sop1"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          midiInstrument = "choir aahs"
%          \accidentalStyle Score.modern
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopIMidi
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
%            \addlyrics \wordsSopIIMidi
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \acc
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    output-suffix = "midi-sop2"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          midiInstrument = "choir aahs"
%          \accidentalStyle Score.modern
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
%            \addlyrics \wordsSopIMidi
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
            \addlyrics \wordsSopIIMidi
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \acc
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    output-suffix = "midi-alto1"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          midiInstrument = "choir aahs"
%          \accidentalStyle Score.modern
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
%            \addlyrics \wordsSopIMidi
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
            \addlyrics \wordsAltoIMidi
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
%            \addlyrics \wordsSopIIMidi
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
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
%            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \acc
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    output-suffix = "midi-alto2"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          midiInstrument = "choir aahs"
%          \accidentalStyle Score.modern
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
%            \addlyrics \wordsSopIMidi
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
%            \addlyrics \wordsSopIIMidi
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
            \addlyrics \wordsAltoIIMidi
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
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
%            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \acc
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    output-suffix = "midi-tenor1"
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          midiInstrument = "choir aahs"
%          \accidentalStyle Score.modern
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
%            \addlyrics \wordsSopIMidi
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics \wordsTenorIMidi
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
%            \addlyrics \wordsSopIIMidi
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
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
%            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \acc
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          midiInstrument = "choir aahs"
%          \accidentalStyle Score.modern
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
%            \addlyrics \wordsSopIMidi
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
%            \addlyrics \wordsSopIIMidi
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsTenorIIMidi
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
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
%            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \acc
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          midiInstrument = "choir aahs"
%          \accidentalStyle Score.modern
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
%            \addlyrics \wordsSopIMidi
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
%            \addlyrics \wordsSopIIMidi
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
%            \addlyrics \wordsBassIIMidi
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \acc
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \new Staff = solo \with {
          instrumentName = Solo
          shortInstrumentName = Sol
          midiInstrument = "choir aahs"
%          \accidentalStyle Score.modern
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
%          \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Soprano I staff
          \new Staff = "soprano1" \with {
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \sopranoI
%            \addlyrics \wordsSopIMidi
          >>
                                % Alto I staff
          \new Staff = "alto1" \with {
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Tenor I staff
          \new Staff = "tenor1" \with {
            shortInstrumentName = "T1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
%            \addlyrics \wordsTenorIMidi
          >>
                                % Bass I staff
          \new Staff = "bass1" \with {
            shortInstrumentName = "B1"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass1"} \dynamicsBassI
            \new Voice \bassI
%            \addlyrics \wordsBassIMidi
          >>
        >>
        \new ChoirStaff
        <<
                                % Soprano II staff
          \new Staff = "soprano2" \with {
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \TempoTrack
            \new Voice \sopranoII
%            \addlyrics \wordsSopIIMidi
          >>
                                % Alto II staff
          \new Staff = "alto2" \with {
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
          >>
                                % Tenor II staff
          \new Staff = "tenor2" \with {
            shortInstrumentName = "T2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
%            \addlyrics \wordsTenorIIMidi
          >>
                                % Bass II staff
          \new Staff = "bass2" \with {
            shortInstrumentName = "B2"
            midiInstrument = "choir aahs"
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = "bass2"} \dynamicsBassII
            \new Voice \bassII
            \addlyrics \wordsBassIIMidi
          >>
        >>
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \soprano
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
%            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \acc
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
