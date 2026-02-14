\version "2.25.33"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gloria"
  subtitle    = "Laudamus te"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Poulenc"
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
  \key c \major
  \time 4/4
}

TempoTrack = {
  \tempo "Très vif et joyeux" 4=124
  s1 s2 s1*3 s2. s1 | % 10
  s1*5 s2 s1*2 |
  s1*2 s2.*2 s1*3 |
  s1*4 s2. s1*2 | % 13
  s1*5 s2. s1 |
  s1*3 s2 s1*3 |
  \set Score.tempoHideNote = ##t
  s1*2 \tempo "Trés lent et librement" 4=60 s4*5 s2.*2 s1*3 % 16
  \tempo \markup{\bold "Tempo I, allégro" \normal-text\italic "(surtout sans trainer)"} 4=124 s2.*4 |
  \tempo "Trés allant" 4=62 s1 s2. s1 s2.*3 s1 | % 17
  s2. s1 s2.*4 s1*2 |
  s2. s1 s2. s1*4 |
  s2.*2 | s1*4 | \tempo "sans ralentir" 4=62 s1*2 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \mark \markup\bold\circle "12"
  \textMark \markup { \box "10a" } s1 \time 2/4 s2 \time 4/4 s1
  \textMark \markup { \box "10b" } s1*2 \time 3/4 s2. \time 4/4 s1
  \mark \markup\bold\circle "13"
  \textMark \markup { \box "11a" } s1*4
  \mark \markup\bold\circle "14"
  \textMark \markup { \box "11b" } s1 \time 2/4 s2 \time 4/4 s1*2
  \textMark \markup { \box "12a" } s1*2 \time 3/4 s2.*2
  \mark \markup\bold\circle "15"
  \textMark \markup { \box "12b" } \time 4/4 s1*3
  \textMark \markup { \box "13a" } s1
  \mark \markup\bold\circle "16" s1*2
  \textMark \markup { \box "13b" } s1 \time 3/4 s2.
  \mark \markup\bold\circle "17" \time 4/4 s1*2
  \textMark \markup { \box "14a" } s1*2
  \mark \markup\bold\circle "18" s1
  \textMark \markup { \box "14b" } s1*2 \time 3/4 s2.
  \mark \markup\bold\circle "19" \time 4/4 s1
  \textMark \markup { \box "15a" } s1*3
  \textMark \markup { \box "15b" } \time 2/4 s2 | \time 4/4 s1*3 |
  \textMark \markup { \box "16a" } s1*2
  \mark \markup{\column {\center-align\bold\circle "20" \center-align\italic "trés long" \center-align \musicglyph #"scripts.ufermata"}} \time 5/4 s4*5 \time 3/4 s2.*2 |
  \mark \markup\bold\circle "21"
  \textMark \markup { \box "16b" } \time 4/4 s1*3 \time 3/4 s2.*3 |
  \textMark \markup { \box "17a" } s2.
  \mark \markup\bold\circle "22" \time 4/4 s1 \time 3/4 \grace s4 s2. \time 4/4 s1 |
  \textMark \markup { \box "17b" } \time 3/4 s2.*3
  \mark \markup\bold\circle "23" \time 4/4 s1
  \textMark \markup { \box "18a" } \time 3/4 \grace s4 s2. \time 4/4 s1 \time 3/4 s2.*2 |
  \textMark \markup { \box "18b" } s2.*2 \time 4/4 s1*2 |
  \textMark \markup { \box "19a" } \time 3/4 s2. \time 4/4 s1 \time 3/4 \grace s4 s2.
  \mark \markup\box\circle "24"    \time 4/4 s1 |
  \textMark \markup { \box "19b" } s1*2
  \mark \markup\bold\circle "25"   s1
  \textMark \markup { \box "20a" } \time 3/4 s2.*2 \time 4/4 s1*2
  \textMark \markup { \box "20b" } s1*4
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1 s2 s1*3 s2. s2.. s8\f |
  s1*5 | s2 | s1*2 | % 11
  s1\mf | s | s2.\p | s2 s8 s\f | s1*3 |
  s1 | s\f | s\mf | s1 | s2 s8 s\f | s1*2 |
  s1*2 | s1\mf | s1*2 | s2 s8 s\ff | s1 | % 14
  s1*2 | s1\mf | s2 | s1 | s2.. s8\ff | s1 |
  s1*2 | s4*5 | s2.*2 | s1*3 | s2.*3 |
  s2. s1\mf s2. s1 | s2. s\mf s s1 | % 17
  s2. s1 s2. s\mf | s2.*2 s1*2 |
  s2.\f s1\mf s2. s1 | s1*2 s1\p |
  s2. s2 s8 s\ff | s1 | s2.. s8\ff | s1 | s2.. s8\fff | s1*2 | % 20
}

soprano = \relative {
  \global \numericTimeSignature
  R1 | R2 | R1*3 | R2. | r2 r4 r8 e' |
  f4 e g8 r r4 | R1 | c,8 d e f e4 g8 r | R1 | % 11a
  g4. e'8 e(c b a) | g4 a8 r | c,8 d e f g4 a8 r | R1 |
  e'2 a,4 g | e'2 a,4 r | e8 d e g e r | r2 r8 e | % 12a
  f4 e g8 r r4 | R1 | ees8 f g aes g4 bes8 r |
  R1 | d4. fis,8 g(ees') d r | ees,1 | % 13a
  ees2.~8 r | r2 r8 d | ees4 d f8 r r4 | R1 |
  des8 ees f ges f4 aes8 r | R1 | c4. e,8 f(des') c r | % 14a
  R1 | e4 d8 c a4 g8 r | r2 r8 e | f4 e g8 r r4 |
  R1*2 | g4. e'8 d(c b a) | % 15a
  g4 a8 r | e'2 a,4 g | e'2 a,8 r4 d8 | e4 f g8 r4 d8 |
  e4 e g8 r r c, | e4 f <e aes>8 r r4 \section | R4*5 | R2.*2\breathe | % 16a
  R1*3 \section R2.*3 |
  R2. | bes4 c g aes | \grace s4 f8(ees aes) c bes r | R1 | % 17a
  R2. | g'4(d'4.) bes8\( | g\) r bes4\(g8\) r | R1 |
  \grace s4 R2. | des4 ees ges ces, | bes8(aes ees') ces des r | bes4(f'4. des8 | % 18a
  bes4 f'4.) des8 | bes r des4\(bes8\) r | R1*2 |
  bes4(ees,) bes'8 r | bes4 c f, aes8 r | \grace s4 f8(ees aes) c bes r | r2 r4. g8 | % 19a
  aes4 g bes8 r r4 | R1 | bes4.(g'8 f ees d c |
  bes8 g) c(g) bes r | r2 r8 e, | f4 e g8 r r4 | r2 r4. d'8 | % 20a
  e4 f g r8 c, | e4 f g r8 b, | c r4 b8 c r4 b8 | c4 b c8 r r4 |
  \bar "|."
}

Ad  = \lyricmode { A -- do -- ra -- mus }
At  = \lyricmode { A -- do -- ra -- mus te }
Be  = \lyricmode { Be -- ne -- di -- ci -- mus }
Bt  = \lyricmode { Be -- ne -- di -- ci -- mus te }
Gat = \lyricmode { Gra -- ti -- as a -- gi -- mus ti -- bi }
Gl  = \lyricmode { Glo -- ri -- fi -- ca -- mus }
Gt  = \lyricmode { Glo -- ri -- fi -- ca -- mus te }
Glo = \lyricmode { Glo -- ri -- am }
glo = \lyricmode { glo -- ri -- am }
gt  = \lyricmode { glo -- ri -- fi -- ca -- mus te }
Gtu = \lyricmode { Glo -- ri -- am tu -- am }
gtu = \lyricmode { glo -- ri -- am tu -- am }
La  = \lyricmode { Lau -- da -- mus }
Lt  = \lyricmode { Lau -- da -- mus te }
lt  = \lyricmode { lau -- da -- mus te }
LLLt = \lyricmode { Lau -- da Lau -- da Lau -- da -- mus te }
Pmg = \lyricmode { Prop -- ter ma -- gnam glo -- ri -- am }

wordsSop = \lyricmode {
  \Lt
  \Bt \At \Gt % 11
  \Gl \Be \Lt \Bt
  \Ad % 13a
  Glo -- ri __ \lt
  \Bt \Ad \Gl \Lt % 14
  \At \Gl \Lt \Lt
  \Lt
  \Pmg \Gtu % 17
  \Pmg \gtu
  tu -- am \Pmg \Lt \La
  \Lt \Lt \Lt \LLLt % 20
}

MAd  = \lyricmode { "\nA" do ra "mus " }
MAt  = \lyricmode { "\nA" do ra "mus " "te " }
MBe  = \lyricmode { "\nBe" ne di ci "mus " }
MBt  = \lyricmode { "\nBe" ne di ci "mus " "te " }
MGat = \lyricmode { "\nGra" ti "as " a gi "mus " ti "bi " }
MGl  = \lyricmode { "\nGlo" ri fi ca "mus " }
MGt  = \lyricmode { "\nGlo" ri fi ca "mus " "te " }
MGlo = \lyricmode { "\nGlo" ri "am " }
Mglo = \lyricmode { "\nglo" ri "am " }
Mgt  = \lyricmode { "\nglo" ri fi ca "mus " "te " }
MGtu = \lyricmode { "\nGlo" ri "am " tu "am " }
Mgtu = \lyricmode { "\nglo" ri "am " tu "am " }
MLa  = \lyricmode { "\nLau" da "mus " }
MLt  = \lyricmode { "\nLau" da "mus " "te " }
Mlt  = \lyricmode { "\nlau" da "mus " "te " }
MLLLt = \lyricmode { "\nLau" "da " Lau "da " Lau da "mus " "te " }
MPmg = \lyricmode { "\nProp" "ter " ma "gnam " glo ri "am " }


wordsSopMidi = \lyricmode {
  \MLt
  \MBt \MAt \MGt % 11
  \MGl \MBe \MLt \MBt
  \MAd % 13a
  "\nGlo" "ri "  \Mlt
  \MBt \MAd \MGl \MLt % 14
  \MAt \MGl \MLt \MLt
  \MLt
  \MPmg \MGtu % 17
  \MPmg \Mgtu
  "\ntu" "am " \MPmg \MLt \MLa
  \MLt \MLt \MLt \MLLLt % 20
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1 s2 s1*3 s2. s1 |
  s2.. s8\f | s1*4 | s2 | s1*2 | % 11
  s1\mf | s | s2. | s\mf | s2.. s8\f | s1*2 |
  s1*2 | s1\f | s1 | s2. | s2.. s8\f | s1 |
  s1*5 | s2. | s2.. s8\f | % 14
  s1*2 | s1\p | s2 | s1\mf | s1 | s2.. s8\ff |
  s1*2 s4*5\p s2.*2 | s1*3 s2.*3 |
  s2. s1 s2. s1 | s2. s\mf s s1\p | % 17
  s2. s1 s2. s\mf | s2.*2 s1*2 |
  s2. s1 s2 s8 s\f s1 | s1*2 s1\p |
  s2. s\f s2.. s8\ff s2.. s8\ff | s1 s2.. s8\fff s1*2 | % 20
}

alto = \relative {
  \global
  R1 | R2 | R1*3 | R2. | R1 |
  r2 r4 r8 e' | f4 e g8 r r4 | R1 | c,8 d e f e4 g8 r | % 11a
  e2 4 4 | 4 8 r | R1 | e8 f g a b4 c8 r |
  f,1 | 2. 8 r | R2. | e8 d e b' e, r | % 12a
  r2 r4 r8 e | f4 e g8 r r4 | R1 |
  ges8 aes bes ces bes4 des8 r | R1 | d2 g4 f | % 13a
  c'2 g4 r | d8 c d f d r | r2 r4 r8 d | ees4 d f8 r r4 |
  R1 | d,8 fis gis a g4 b8 r | R1 | % 14a
  ees4. g,8 aes(fes') ees r | f,2. 8 r | e d e g e r | r2 r4 r8 e |
  f4 e g8 r r4 | c,8 d e f e4 g8 r | e2 4 4 | % 15a
  e4 8 r | f1 | 2 8 r r4 | r2 r4 r8 d |
  e4 f g8 r r d' | e4 f <b, g'>8 r r4 \section | f4.(g8 aes) g f r r4 | e8(f ees) d e r | f(ees) d4~8 r | % 16a
  R1*3 \section | R2.*3 |
  R2. | R1 | \grace s4 R2. | bes'4 c ees aes, | % 17a
  g8(f b) aes bes r | d,4(ees) fis | g8 r ees4\(d8\) r | bes'4 c g aes |
  \grace s4 f8(ees aes) c bes r | ges2 4 8 r | 4 4 f8 r | f4 ges a8 r | % 18a
  f4 ges a8 r | f4\((des)f8\) r | ces'4(bes4.) aes8 des r | ges,4(f4.) ees8 aes r |
  ees4(c) f8 r | R1 | \grace s4 r2 r8 g | aes4 g bes8 r r4 | % 19a
  R1 | ees,8 f g aes g4 bes8 r | <g bes>2 4 4 |
  <g bes>4 4 8 r | g a bes c e r | r2 r4. e,8 | f4 e g8 r4 d8 | % 20a
  e4 f g r8 d | e4 f g r8 f | e r4 f8 e r4 f8 | e4 f <c c'>8 r r4 |
}

wordsAlto = \lyricmode {
  \MLt % 11a
  \MBt
  \MAt
  \MGt
  Glo -- ri -- a \MBe \MLt % 12
  \MBt \MGl \MBe \MLt 
  \MBt \MAd % 14a
  a -- mus \MBe \MLt
  \MBt \MAt \MLa \MLt % 15
  \MLt \MGat
  \MPmg \Mgtu \MPmg
  \Mglo \Mglo \Mglo \Mgtu \Mglo \Mglo % 18
  tu -- am \MLt \MBt \MLa
  \MLa \MGl \MLt \MLt \MLt \MLLLt
}

wordsAltoMidi = \lyricmode {
  \Lt % 11a
  \Bt
  \At
  \Gt
  "\nGlo" ri "a " \Be \Lt % 12
  \Bt \Gl \Be \Lt 
  \Bt \Ad % 14a
  "\na" "mus " \Be \Lt
  \Bt \At \La \Lt % 15
  \Lt \Gat
  \Pmg \gtu \Pmg
  \glo \glo \glo \gtu \glo \glo % 18
  "\ntu" "am " \Lt \Bt \La
  \La \Gl \Lt \Lt \Lt \LLLt
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1 s2 s1*3 s2. | s2.. s8\f |
  s1*5 | s2 | s1*2 | % 11 
  s1\mf | s | s2.\p | s2 s8 s\f | s1*3 |
  s1 | s\f | s\mf | s | s2 s8 s\f | s1*2 |
  s1*2 | s1\mf | s1*2 | s2 s8 s\ff | s1 | % 14
  s1*3 | s2 | s1 | s2.. s8\ff | s1 |
  s1*2 s4*5 s2.*2 s1*3 s2.*3 |
  s2. s1\mf s2. s1 | s2. s\mf s s1\p | % 17
  s2. s1 s2. s\mf | s2.*2 s1*2 |
  s2. s1\f s2. s1*3 s1\p |
  s2. s\f s2.. s8\ff s2.. s8\ff | s1 s2.. s8\fff s1*2 | % 20
}

tenor = \relative {
  \global
  R1 | R2 | R1*3 | R2. | r2 r4 r8 e |
  f4 e g8 r r4 | R1 | c,8 d e f e4 g8 r | R1 | % 11a
  c4 b a(g) | c b8 r | a4 a c e8 r | c4 c f e8 r |
  c4(e) d c | a(c d) e8 r | b a b d b r | r2 r8 e, | % 12a
  f4 e g8 r r4 | R1 | ees8 f g aes g4 bes8 r |
  R1 | bes4 a bes4 8 r | g4(d') c bes | % 13a
  g4(bes c) d8 r | r2 r8 d, | ees4 d f8 r r4 | R1 |
  des8 ees f ges fes4 aes8 r | R1 | aes4 g aes4 8 r | % 14a
  R1 | d,2. c'8 r | r2 r8 d, | f4 e g8 r r4 |
  R1*2 | c4 b a(g) | % 15a
  c4 b8 r | c4(e) d c | a(c) d8 r4 d8 | e4 f g8 r4 c,8 |
  e4 f g8 r r d | e4 f <b, g'>8 r r4 \section | R4*5 | R2.*2 | % 16a
  R1*3 \section | R2.*3 |
  R2. | g4 aes g f | \grace s4 aes f bes8 r | R1 | % 17a
  R2. | g4(bes) c | d8 r c4\(bes8\) r | g4 aes g f |
  \grace s4 aes4 f bes8 r | R1 | R2. | bes4 des ees8 r | % 18a
  bes4 des ees8 r | des4\((f) ces8\) r | ees4(des) ces bes8 r | R1 |
  c4(aes) d8 r | g,4 aes g f | \grace s4 aes f bes8 r | r2 r4. g8 | % 19a
  aes4 g bes8 r r4 | R1 | ees2 4 4 |
  ees4 4 8 r | r2 r8 e, | f4 e g8 r r4 | r2 r4. c8 | % 20a
  a4 c f, r8 c' | a4 c f, r8 c' | b r4 c8 b r4 c8 | b4 c e8 r r4 |
}

wordsTenor = \lyricmode {
  \Lt
  \Bt % 11a
  \At
  \Ad
  \Ad
  \Gl % 12a
  \Be
  \Lt
  \Bt
  \Ad % 13a
  \Gl
  \Lt
  \Bt \Ad % 14a
  a -- mus \Lt
  \At \Gl \Lt \Lt % 15
  \Lt
  \Pmg \Gtu \Pmg
  \Glo \gtu \gtu % 18
  \Pmg \Lt \La
  \La \Lt \Lt \Lt \LLLt
}

wordsTenorMidi = \lyricmode {
  \MLt
  \MBt % 11a
  \MAt
  \MAd
  \MAd
  \MGl % 12a
  \MBe
  \MLt
  \MBt
  \MAd % 13a
  \MGl
  \MLt
  \MBt \MAd % 14a
  "\na" "mus " \MLt
  \MAt \MGl \MLt \MLt % 15
  \MLt
  \MPmg \MGtu \MPmg
  \MGlo \Mgtu \Mgtu % 18
  \MPmg \MLt \MLa
  \MLa \MLt \MLt \MLt \MLLLt
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1 s2 s1*3 s2. s1 |
  s2.. s8\f | s1*4 | s2 | s1*2 | % 11
  s1\mf | s | s2.-\markup\halign #RIGHT Moitié | s\mf | s2 s4 s8 s\omit\f-\markup{\halign #RIGHT Toutes \dynamic f} | s1*2 |
  s1*2 | s1\mf | s1 | s2. | s2.. s8\f | s1 |
  s1*5 | s2. | s2.. s8\f | % 14
  s1*3 | s2 | s1\mf | s2.. s8\ff | s1 |
  s1*2 s4*5 s2.*2 s1*3 s2.*3 |
  s2. s1 s2. s1 | s2. s\mf s s1 | % 17
  s2. s1 s2. s\mf | s2.*2 s1*2 |
  s2. s1 s2 s8 s\f s1*3 s1\p |
  s2. s\f s2.. s8\ff s2.. s8\ff | s1 s2.. s8\fff s1*2 | % 20
}

bass = \relative {
  \global
  R1 R2 R1*3 R2. R1 |
  r2 r4 r8 e | f4 e g8 r r4 | R1 | c,8 d e f e4 g8 r | % 11a
  R1 | R2 | R1 | f4 e d f8 r |
  d1 | 2. 8 r | R2. | b'8 a b e b r | % 12a
  r2 r4 r8 e, | f4 e g8 r r4 | R1 |
  ges8 aes bes ces bes4 des8 r | R1 | c,1 | % 13a
  c2.~8 r | a' g a c g r | r2 r4 r8 c, | ees4 d ees8 r r4 |
  R1 | e8 fis gis a gis4 b8 r | R1 | % 14a
  ces4 bes ces d8 r | R1 | b8 a b d b r | r2 r4 r8 e, |
  f4 e g8 r r4 | c,8 d e f e4 g8 r | R1 | % 15a
  R2 | d1 | 2 8 r4 a'8 | f4 a c8 r4 a8 |
  f4 a c8 r r a | f4 a <aes d>8 r r4 \section | R4*5 | R2.*2 | % 16a
  R1*3 \section | R2.*3 |
  R2. | R1 | \grace s4 R2. | g4 aes g f | % 17a
  aes4 f bes8 r | bes,4(c) d | bes'8 r bes,4\(ges'8\) r | R1 |
  \grace s4 R2. | bes4 ces bes ges | ces aes des8 r | des,4 ees f8 r | % 18a
  des4 ees f8 r | bes,4\((bes') des,8\) r | R1 | bes'4(aes) ges f8 r |
  bes,4(bes') bes,8 r | R1 | \grace s4 r2 r8 g' | aes4 g bes8 r r4 | % 19a
  R1 | ees,8 f g aes g4 bes8 r | ees4 d c bes |
  ees4 d c8 r | b c d a b r | r2 r4. e,8 | f4 e g8 r4 a8 | % 20a
  e4 a d, r8 a' | e4 a d, r8 g | f r4 g8 f r4 g8 | f4 g c,8 r r4 |
}

wordsBass = \lyricmode {
  \Lt % 11a
  \Bt
  \Ad
  Glo -- ri -- a % 12a
  \Be
  \lt
  \Bt % 13a
  Glo -- ri __
  \Be
  \Lt
  \Bt \Ad \Be \Lt % 14
  \Bt \La \Lt \Lt
  \Lt
  \Pmg \gtu % 17
  \Pmg \glo \gtu \gtu
  \Lt \Bt \Lt
  \La \Gl \Lt \Lt \Lt \LLLt % 20
}

wordsBassMidi = \lyricmode {
  \MLt % 11a
  \MBt
  \MAd
  "\nGlo" ri "a " % 12a
  \MBe
  \Mlt
  \MBt % 13a
  "\nGlo" "ri " 
  \MBe
  \MLt
  \MBt \MAd \MBe \MLt % 14
  \MBt \MLa \MLt \MLt
  \MLt
  \MPmg \Mgtu % 17
  \MPmg \Mglo \Mgtu \Mgtu
  \MLt \MBt \MLt
  \MLa \MGl \MLt \MLt \MLt \MLLLt % 20
}

pianoRHone = \relative {
  \global
  e'8 r g r c, r e r | \lh r8 b->(g) r \rh |
  \vo b''4(e4.) d8(c b |
  a8 g a b a4 g8) r | \ov c,, r e s r \lh a,(e) r \rh | % 10b
  \vo a'4--  c4.-- b8( | a g e f g) r r4 |
  \repeat unfold 8 {<e, g>8-. <c' e>-. <g b>-. <e' g>-.} | % 11a
  \vo g4.(e'8 d c b a | g4 a) | c,8(d e f g4 a8) r | e8(f g a b4 c8) r |
  e4--(d8 c a4 g) | e'8--(e d c a4 g8) r | e4-- g-- e-- | e-- b'-- e,-- | % 12a
  \repeat unfold 4 {<e, g>8-. <c' e>-. <g b>-. <e' g>-.} | % 12b
  \repeat unfold 4 {<ees, bes'>8-. <bes' ees>-. <g d'>-. <d' g>-. }|
  \vo d'4.(fis8 g, ees' d4) | d4--(c8 bes g4 f) | % 13a+
  d'8(d c bes g4 f8) r | d(c d e d) r \clef bass | % 13b
  \ov \repeat unfold 4 {<d, f>8-. <bes' d>-. <f a>-. <d' f>-.} |
  \repeat unfold 2 {<des, aes'>8-. <aes' des> <f c'>-. <c' f>-.} | % 14a
  \clef treble \repeat unfold 2 {<e, b'>8-. <b' e>-. <gis dis'>-. <dis' gis>-.} |
  \vo c'4.->(e,8 f des' c) r |
  ees4.->(g,8 a fes' ees) r | e4->(d8 c a4 g8) r | % 14b
  e8(d e g e) r |
  \repeat unfold 6 { <e, g>8-. <c' e>-. <g b>-. <e' g>-.} |
  \vo g4.->(e'8 d c b a) | % 15a++
  g4-- a-- | e'->(d8 c a4 g) | e'8-> e d c a \ov r r <d, f a d>-- | % 15b
  <e a c e>4-- <f a c f>-- <g a c g'>-- r8 <d f a d>-- |
  <e a c e>4-- <f a c f>-- <g a c g'>-- r8 <d f a d>-- | % 16a
  <e a c e>4-- <f a c f>-- <b e g aes>8 r r4 \section | % fermata
  R4*5 | R2.*2 \breathe |
  <d, g ces d>2.-- <des ges bes ees>4( | % 16b
  <d g ces d>4 <c f aes c> <d g ces d>2)~ |
  q4 <des ges bes ees>(<d g c d>2) \section\textMark \markup\column {\center-align\italic "trés long" \center-align\musicglyph #"scripts.ufermata"} |
  <c' ees bes'>2(<ces d f>4 | <bes des ges> <c ees aes> <d f bes> |
  <a c f>4 <bes des ges> <ges bes ees> |
  <d f bes>2.) | % 17a
  \vo bes'4-- c-- g-- aes-- | \appoggiatura {f8 g} f4( aes8 c bes) r |
  bes4(c ees aes,) |
  g8(f c' aes bes) r | g4(d'4. bes8 | g8) r bes4->(g8) r | % 17b
  bes4-- c-- g-- aes-- |
  \appoggiatura {f8 g} f8(ees aes c bes) r | % 18a
  des4(ees ges ces,) | bes8(aes ees' ces des) r |
  bes4(f'4. des8 |
  bes4) f'4.--(des8 | bes) r des4(bes8) r | % 18b
  ces4(bes4. aes8 des4) | ges,4(f4. ees8 aes4) |
  bes4(ees, bes'8) r | bes4-- c-- g-- aes-- | % 19a
  \appoggiatura {f8 g} f8(ees aes c bes) r |
  \ov \repeat unfold 6 {<g, bes>8-. <ees' g>-. <bes d>-. <g' bes>-.} |
  \vo bes4.(g'8 f ees d c | % 19b++
  bes8 g c g bes) r | g(a b c d) r | % 20a
  \ov \repeat unfold 3 {<e,, g>8-. <c' e>-. <g b>-. <e' g>-.}
  <e, g>8-. <c' e>-. r <d f a d>-- |
  <e a c e>4-- <f a c f>-- <g a c g'>-- r8 <d f a d>-- | % 20b
  <e a c e>4-- <f a c f>-- <g a c g'>-- r8 <b c f b>-> |
  <b c f c'>4.-> <b c f b>8-> <b c f c'>4.-> <b c f b>8-- |
  <b c f c'>4-- <b c f b>-- <b c e c'>8-. r r4 |
}

pianoRHtwo = \relative {
  \global \vt
  s1 | s2 | e''16 f g a a4. g8 f e |
  d8 c d e d4 c8 r | s1 | e,16(d e d f4.) e8 | d8 c b c d r8 r4 |
  s1*4 | % 11a
  r8 e4 <e g>4 4 8 | r8 e r e | r <a, c> r q r q r <c e> | r <a c> r q r <c f> r <a e'> |
  r8 <f' a> r q r f r f | r q r q r f r f | r a, r b r a | r a r b r a | % 12a
  s1*3 |
  s1 | r8 <c d g> r <c d> r q r <d g> | r <ees g> r q r ees r ees | % 13a
  r8 <ees g> r q r ees r ees | r g, r g~g r | s1*2 |
  s1*2 | r8 <c f> r b r c r <c f> | % 14a
  r8 <ees aes> r d r e r <e a> | r <f a> r q r f r f | % 14b
  e8 a, r a~a r | s1 |
  s1*2 | r8 e' r <e g> r q r q | % 15a
  r e r e | r <f a> r q r f r f | r <f a> r q s2 | s1 |
  s1*2 | s4*5 | s2.*2 | s1*3 | s2.*3 | % 16
  s2. | r8 <bes, ees> r <c ees> r q r q | r q r q r <d f> | % 17a
  r <bes ees> r <c ees> r <ees aes> r <c ees> |
  r8 <c ees> r q r <d f> | r <g, d'> r <bes ees> r <c fis> | % 17b
  r8 d r <c ees> r <aes d> | r <bes ees> r <c ees> r ees r q |
  \grace s4 r8 c r <c ees> r <d f> | % 18a
  r <des ges> r <ees ges> r <ges ces> r <ees ges> |
  r8 q r q r <f aes> | r <bes, f'> r <des ges> r <ees a> |
  r8 <bes f'> r <des ges> r <ees a> | % 18b
  r8 <des f> r q r <ces f> | r <ces ges'> r <ces f> r <des ees> r <des ges> |
  r8 <ges des'> r <f ces'> r <ces des> r <aes des> |
  r8 <c ees> r c r <d f> | r <bes ees> r <c ees> r q r q | r c r q <d f> r | s1 | % 19a
  s1*2 | r8 <g bes> r q r q r q |
  r8 g r g r g | r e r f~f r | s1*2 | % 20a
  s1*4 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\ff s2 s1\ff | s1 s\mf s2.\ff s1 |
  s1\mf | s1*3 | s1\mf | s2 s1*2 | % 11
  s1\mf | s | s2.\p | s | s1\f | s1*2 |
  s1*4 | s2. | s1\mf | s |
  s1*2 | s1\mf | s\f | s | s2. | s1\mf | % 14
  s1*2 | s1\mf | s2 | s1 | s2.. s8\ff | s1 |
  s1*2 s4*5 s2.*2 | s1\pp s1*2 s2.\p s2.*2 |
  s2. s1\mf s2. s1 | s2. s\mf s s1\p | % 17
  s2. s1\mf s2. s\f | s2.*2 | s1\f | s |
  s2. s1\mf s2. s1\mf | s1*2 | s1\f |
  s2.*2 s1\f s2.. s8\ff | s1 s2.. s8\fff s1*2 | % 20
}

pianoLHone = \relative {
  \global
  r8 c'-. r b-. r g-. r e-. | \vt r e,(c) r \ov \clef treble |
  c''16(d e f g4.) f8(e d |
  e8 d e f e4 d8) r \clef bass | r8 a r f r \vt f,(d) \ov r | % 10b
  f'16(g f g e4.) d8(e f g a g) r r4 |
  \repeat unfold 4 {r8 <c,, c'> r <g g'> r <e e'> r <g g'> |} % 11a
  r8 c'' r b r a r g | r c r b | r f r e r d r f | r <f, f'> r <e e'> r <d d'> r <f f'> |
  \vo r8 c'' r e r d r c | r a r c r d r e | \ov r f, r g r f | r f r g, r f' | % 12a
  r8 <c, c'> r <g g'> r <e e'> r <c c'> | % 12b
  r <c' c'> r <g g'> r <e e'> r <c c'> |
  r8 <g' g'> r <bes bes'> r <g' g'> r <bes, bes'>
  r8 q r <des des'> r <bes' bes'> r <d, d'> | % 13a
  r8 <bes bes'> r <a a'> r <bes bes'> r <bes' bes'> |
  r8 \vo g' r d' r c r bes |
  r8 g r bes r c r d | r ees,4.~8 r | % 13b
  \ov r8 <bes, bes'> r <f f'> r <d d'> r <f f'> |
  r8 <bes bes'> r <f f'> r <d d'> r <f f'> |
  r8 q r <aes aes'> r <f' f'> r <a, a'> | % 14a
  r8 <gis gis'> r <b b'> r <gis' gis'> r <b, b'> |
  r8 <aes aes'> r <g g'> r <aes aes'> r <aes' aes'> |
  r8 <ces, ces'> r <bes bes'> r <ces ces'> r <ces' ces'> | % 14b
  \vo r8 c' r a r b r c | r f,4.~8 r |
  r8 <c, c'> r <g g'> r <e e'> r <g g'> |
  r8 <c c'> r <g g'> r <e e'> r <g g'> | % 15a
  r8 <c c'> r <g g'> r <e e'> r <g g'> |
  r8 c'' r b r a r g |
  r8 c r b | \vo r8 c r e r d r c | r a r c r d r <e, a c> | % 15b
  <f a c>4~\once\hideNotes q4 s4. <e a c>8 |
  <f a c>4~\once\hideNotes q4 s r8 <e a c> | % 16a
  <f a c>4 s <aes b d g>8 r8 r4 \section | R4*5 | R2.*2 |
  \ov <f, ces' aes'>2.-- <ees bes' ges'>4( | % 16b
  <f ces aes'>4 <ges ees' beses> <f c' a'>2)~ |
  q4 <ees bes' ges'>(<f c' a'>2) \clef treble \section |
  \vo bes''2.~ | 2.~ | 2.~ |
  bes2. \clef bass | r8 g, r aes r g r f | \grace s4 r8 aes r f r bes | \ov | % 17a
  r8 <g, g'> r <aes aes'> r <g g'> r <f f'> |
  r8 <aes aes'> r <f f'> r <bes bes'> | r <bes, bes'> r <c c'> r <d d'> | % 17b
  r8 <bes' bes'> r <bes, bes'> r <bes' bes'> | r8 g' r aes r g r f |
  r8 aes r f r bes | r bes r ces r bes r aes | r ces r aes r des | % 18a
  r8 <des,, des'> r <ees ees'> r <f f'> |
  r8 <des des'> r <ees ees'> r <f f'> | % 18b
  r <bes, bes'> r <bes' bes'> r <des, des'> |
  r8 <ees ees'> r <des des'> r <ces ces'> r <bes bes'> |
  r bes' r aes r ges r f |
  \vo r8 bes r \ov bes' r bes, | r8 g' r aes r g r f | \grace s4 r8 bes r f(bes) r | % 19a
  r8 <ees,, ees'> r <bes bes'> r <g g'> r <bes bes'> |
  r8 <ees ees'> r <bes bes'> r <g g'> r <bes bes'> | % 19b
  r8 <ees ees'> r <bes bes'> r <g g'> r <bes bes'> |
  r8 ees'' r <d ees> r <c ees> r <bes ees> |
  r8 ees r <d ees> r <c ees> | r <a c> r <d, c'>(<g a>) r | % 20a
  r8 <c,, c'> r <g g'> r <e e'> r <g g'> |
  r8 <c c'> r <g g'> r <e e'> r <f'' a c> |
  \vo <d f a c>2. r8 <f a c> | <d f a c>2. r8 <f a c> | % 20b
  <d f c'>4. <d f b>8 <d f c'>4. <d f b>8 |
  <d f c'>4 \parenthesize <d f b> <e g c>8 r r4 |
}

pianoLHtwo = \relative {
  \global \vt
  s1 s2 s1*3 s2. s1 |
  s1*5 | s2 | s1*2 | % 11
  r8 d4~ \once\hideNotes d8 s2 | d4*3/2\repeatTie~ \once\hideNotes d8 s2 | s2.*2 | s1*3 |
  s1*2 | r8 c4~ \once\hideNotes c8 s2 | c4*3/2\repeatTie~ \once\hideNotes c8 s2 | r4 r8 f,8~8 r | s1*2 |
  s1*4 | r8 d'4~ \once\hideNotes d8 s2 | r4 r8 g,~g r | s1 | % 14
  s1*3 | s2 | r8 d'4~\once\hideNotes d8 s2 | d4\repeatTie~\once\hideNotes d s2 | r8 <g,, g'>4 4 4. |
  r8 q4 4 4. | r8 q4 8 <f f'> r8 r4 | s4*5 | s2.*2 | s1*3 | r8 bes''4 4 8~8 4 4 8~8 4 4 8~ |
  bes8 4 4 8 | s1 | \grace s4 s2. | s1 | s2.*3 s1 | % 17
  s2. s1 s2.*4 s1*2 |
  r8 bes,,4~\once\hideNotes bes8 s4 | s1 s2. s1*4 |
  s2.*2 s1*2 | % 20a
  r8 <g g'>4 4 4. | r8 4 4 4. | r8 <c, c'>4. r8 4. | r4 q4~8 r8 r4 |
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = single
  }
  \score {
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-sop
  }
  \score {
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
  \paper {
    output-suffix = single-alto
  }
  \score {
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
  \paper {
    output-suffix = single-tenor
  }
  \score {
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
  \paper {
    output-suffix = single-bass
  }
  \score {
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
  \paper {
    output-suffix = singlepage-sop
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
  \paper {
    output-suffix = singlepage-alto
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
  \paper {
    output-suffix = singlepage-tenor
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
  \paper {
    output-suffix = singlepage-bass
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
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
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
  \paper {
    output-suffix = midi-sop
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
%            \addlyrics \wordsAltoMidi
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
%            \addlyrics \wordsTenorMidi
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
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
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
    output-suffix = midi-alto
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
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
%            \addlyrics \wordsTenorMidi
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
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
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
    output-suffix = midi-tenor
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
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
%            \addlyrics \wordsAltoMidi
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
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
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
    output-suffix = midi-bass
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
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
%            \addlyrics \wordsAltoMidi
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
%            \addlyrics \wordsTenorMidi
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
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
