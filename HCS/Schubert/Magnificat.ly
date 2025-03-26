\version "2.25.24"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Magnificat"
  subtitle    = "D486"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Franz Schubert (1816)"
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
  \tempo "Allegro maestoso" 4=108
  \set Score.tempoHideNote = ##t
  s1*57 s2. \tempo Andante 4=72 s4 |
  s2.*56 \tempo "Allegro vivace" 4=120 |
  s2.*150 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "1a" } s1*4
  \textMark \markup { \box "1b" } s1*3
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "2c" } s1*3
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "3c" } s1*3
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "4c" } s1*3
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" } s1*3
  \textMark \markup { \box "5c" } s1*3
  \textMark \markup { \box "6a" } s1*3
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "6c" } s1*3
  \textMark \markup { \box "7a" } s1*3
  \textMark \markup { \box "7b" } s1*3 s2.*3
  \textMark \markup { \box "7c" } s2.*7
  \textMark \markup { \box "8a" } s2.*5
  \textMark \markup { \box "8b" } s2.*5
  \textMark \markup { \box "8c" } s2.*8
  \textMark \markup { \box "9a" } s2.*5
  \textMark \markup { \box "9b" } s2.*3
  \textMark \markup { \box "9c" } s2.*5
  \textMark \markup { \box "10a" } s2.*4
  \textMark \markup { \box "10b" } s2.*6
  \textMark \markup { \box "10c" } s2.*5
  \textMark \markup { \box "11a" } s2.*7
  \textMark \markup { \box "11b" } s2.*6
  \textMark \markup { \box "11c" } s2.*5
  \textMark \markup { \box "12a" } s2.*7
  \textMark \markup { \box "12b" } s2.*6
  \textMark \markup { \box "12c" } s2.*5
  \textMark \markup { \box "13a" } s2.*3
  \textMark \markup { \box "13b" } s2.*4
  \textMark \markup { \box "13c" } s2.*6
  \textMark \markup { \box "14a" } s2.*4
  \textMark \markup { \box "14b" } s2.*5
  \textMark \markup { \box "14c" } s2.*7
  \textMark \markup { \box "15a" } s2.*6
  \textMark \markup { \box "15b" } s2.*6
  \textMark \markup { \box "15c" } s2.*5
  \textMark \markup { \box "16a" } s2.*5
  \textMark \markup { \box "16b" } s2.*6
  \textMark \markup { \box "16c" } s2.*5
  \textMark \markup { \box "17a" } s2.*7
  \textMark \markup { \box "17b" } s2.*7
  \textMark \markup { \box "17c" } s2.*6
  \textMark \markup { \box "18a" } s2.*4
  \textMark \markup { \box "18b" } s2.*5
  \textMark \markup { \box "18c" } s2.*5
  \textMark \markup { \box "19a" } s2.*5
  \textMark \markup { \box "19b" } s2.*5
  \textMark \markup { \box "19c" } s2.*8
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*3 | s2. s4\ff | s1*3 |
  s1*9 | % 2
  s1*9 |
  s1*4 | s2 s\f | s1*4 | % 4
  s1*3 | s2. s4\f | s1*5 |
  s1*9 | % 6
  s1*6 | s2.*10 |
  s2.*18 | % 8
  s2.*13 |
  s2.*15 | % 10
  s2.*6 | s2.\ff | s2.*11 |
  s2.*11 | s2 s4\f | s2.*6 | % 12
  s2.*10 | s2.\p | s2.*2 |
  s2. | s\f | s2.*14 | % 14
  s2.*4 | s2 s4\f | s2.*12 |
  s2.*8 | s2.\p | s2.*7 | % 16
  s2.*4 | s2.\f | s2.*15 |
  s2.*14 | % 18
  s2.*18 |
}

soprano = \relative {
  \global
  R1*3 | r2 r4 g' |
  c4 8 8 d4 e8 8 | f4 e d4. 8 | c4 e d fis |
  g4. 8 4 f8 8 | e2 d4 f | e d c8 c d d | % 2a
  e2 e,4 e' | f4. 8 e4 c | a'4. 8 g2 |
  fis4 8 8 g4 e | d2. 4 | b2 r |
  R1*2 | g4 b8 c d4. 8 | % 3a
  d4 c8 c b4 8 8 | 4(d8) e fis4 4 | R1 |
  a,4 c8 d e4. 8 | 4 d8 d cis4 c8 c | c4(e8) f g4 g |
  R1*3 | % 4a
  R1 | r2 d4(f8) g | a4 8 8 4 g8 8 |
  g8 g g g g g fis4 | g4 r r2 | a,4(c8) d e4 8 8 |
  e4 d8 d cis8 8 8 8 | b4 e e(ees) | e4 r r2 | % 5a
  r2 r4 g, | c4 8 8 d4 e8 8 | f4 e d4. 8 |
  c4 e d fis | g4. 8 4 f8 8 | e2 d4 f |
  e4 d c8 c d d | e2 e,4 e' | f4. 8 e4 c | % 6a
  a'4. 8 g2 | fis4 8 8 f4 e8 8 | d2. 4 |
  c2 r4 e | d2 g | e r4 e |
  d1~ | 2 g | c, r | % 7a
  R1*3 \key f \major \time 3/4 | R2.*3 |
  R2.*5 | r4 r c^\markup\italic solo | f2.~ |
  f4. d8 bes d | e,4 f a | c8.(bes16) a4 16(c) f(a) | g2.~ | 16(a) f(d) c4~16(b) a(b) | % 8a
  c4 r8 c d e | 8.(f16) 8 8 e16(g) f(ees) | 8.(d16) 4 r8 d | fis8. g16 4. bes,8 | d4.(bes8) g e |
  c2(f4) | e2 r4 | R2.*6 |
  r4 r c' | f2 a,4 | bes8. c16 cis4 r | aes'4. ees8 c4 | des8.(ees16) f4 f,16(aes) c(f) | % 9a
  \grace f8 ees4 8 8 8 8 | e16(f) des16 bes aes4~16(g f g) | aes4 r8 c c c |
  e8. f16 e8 8 f g | 8.(f16) 4 r | aes8. f16 4 r8 c | des4.(aes8) f des | c4 f aes |
  c2(b16 c) d(c) | a4 r8 f' f f | 8. d16 8 8 e fis | \tuplet 5/4 {g16(a bes g e)} bes2 | % 10a
  a8. bes16 c4 cis | d4. e8 f4 | 8(a) g(f) e(d) | c2(d4 | g,2) c4 | f,2 r4 |
  R2.*5 \section \key c \major |
  R2.*5 | R2.^\markup\italic {\halign #CENTER Tutti} | c'4. 8 4 | % 11a
  f2 8 8 | e8. c16 4 r8 8 | f4. 8 8 8 | e4 c r | r f d | b g e'8 8 |
  c8. a16 4 f' | e r g | e c a'8 8 | f4. 8 4 | e2 4 |
  f2 f,4 | R2. | r4 c'2 | bes4 r r | R2.*3 | % 12a
  R2.*4 | r4 r g'~ | g fis8(e) d(c) |
  b8. 16 4 g | ees'4. 8 8 8 | 4 4 4 | g4. 8 8 8 | fis4 d4 8 8 |
  e4 e c8 c | d8. 16 4 b | c r a | % 13a
  b4 b g8 g | cis4 8 8 8 8 | d4 d, r | d'4. e8 d e |
  d8(g fis e) d(c) | b(e d c) b(a) | g c b4 a | d4.^\markup\italic Solo f8 e f | d(g fis e) d(c) | b(e d c) b(a) |
  g8 c b4 a | g8^\markup\italic Tutti g ees'2 | e4 f2 | e4 g g | % 14a
  g4 2 | 4 2 | 8 8 4 fis4( | g) cis,2 | d4 cis2 |
  d4 e2 | f4 e2 | f4 4(e) | f r r | R2.*3 |
  R2.*4 | r4 r f~ | f e8(d) c(bes) | % 15a
  a8. 16 4 r | r r bes~ | 4 c8 d e f | g4 g r | R2.*2 |
  r4 r e~ | 8 f e d c bes | a8. 16 4 d | bes4 r e | c e f8 f |
  d8 8 f4 g8 g | e4 g e8 e | f2. | e4 r c8 8 | 4. d8 c d | % 16a
  c8(f e d) c(bes) | a(d c bes) a(g) | f bes a4 g | c4.^\markup\italic solo d8 c d | c(f a g) f(e) | d4. c8 d c |
  g'8(f) e4 r | R2. | g8(f) e4 r | R2. | d4. cis8 d cis |
  d8(a' g f) e(d) | c2(e4) | d r r | R2.^\markup\italic {\halign #CENTER Tutti} | c4. 8 4 | f2 8 8 | e8. c16 4 r8 c | % 17a
  f4. 8 8 8 | e4 c r | r f d | b g e'8. 16 | c8. a16 4 f' | d r g | e c a'8 8 |
  f4. 8 4 | e2 4 | f2 f,4 | R2. | r4 f'2 | e4 d2 |
  c4 4 8 8 | 4 4 4 | ees2 4 | c2 4 | % 18a
  ees4. 8 8 8 | c4 4 8 8 | d4. 8 ees8 8 | f8. 16 4 c | d2 ees4 |
  f4 f e8 e | f4. 8 4 | fis2 4 | g2.~ | g |
  e2 r4 | r r e | f4. 8 4 | a2 4 | c,2 e4 | % 19a
  d2(g4) | e2 r4 | r r e | f4. 8 4 | a2 4 |
  d,2 4 | g2. | c,4 r d | e r d | e r d | c r r | R2.*2 |
}

wordsSop = \lyricmode {
  Ma -- gni -- fi -- cat a -- ni -- ma me -- a Do -- mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus me -- us
  in De -- o sa -- lu -- ta -- ri -- me -- o,
  ma -- gni -- fi -- cat, ma -- gni -- fi -- cat
  a -- ni -- ma me -- a Do  -- mi -- num,
  qui -- a re -- spe -- xit hu -- mi -- li -- ta -- tem an -- cil -- læ su -- æ,
  qui -- a re -- spe -- xit hu -- mi -- li -- ta -- tem an -- cil -- læ su -- æ,
  ec -- ce e -- nim ex hoc me be -- a -- tam di -- cent om -- nes gen -- tes,
  ec -- ce e -- nim ex hoc me be -- a -- tam di -- cent om -- nes gen -- tes.
  Ma -- gni -- fi -- cat a -- ni -- ma me -- a Do -- mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus me -- us in De -- o sa -- lu -- ta -- ri me -- o,
  ma -- gni -- fi -- cat, ma -- gni -- fi -- cat a -- mi -- ma me -- a in Do -- mi no,
  ma -- gni -- fi -- cat in Do -- mi -- no!
  De -- po -- su -- it po -- ten -- tes de se -- de,
  ex -- ul -- ta -- vit hu -- mi les,
  e -- su -- ri -- en -- tes im -- ple -- vit bo -- nis
  et di -- vi -- tes di -- mi -- sit in -- a -- nes.
  Su -- sce -- pit I -- sra -- el pu -- e -- rum su -- um
  re -- cor -- da -- tus mi -- se -- ri -- cor -- di -- æ su -- æ,
  si -- cut lo -- cu -- tus est ad pa -- tres no -- stros,
  A -- bra -- ham et se -- mi -- ni e -- jus in sæ -- cu -- la,
  si -- cut lo -- cu -- tus est as pa -- tres no -- stros,
  A -- bra -- ham et se -- mi -- ni e -- jus in sæ -- cu -- la.
                                % 11a
  Glo -- ri -- a Pa -- tri et Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc
  et sem -- per et in sæ -- cu -- la
  sæ -- cu -- lo -- rum, a -- men.
                                % 12b
  Glo -- ri -- a __ Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  et Spi -- ri -- tu -- i San -- cto,
                                % 13a
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc
  et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  \repeat unfold 24 { a -- men, } a -- men.
                                % 15a
  Glo -- ri -- a Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o
  et nunc et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  \repeat unfold 19 { a -- men, } a -- men.
                                % 17a
  Glo -- ri -- a Pa -- tri et Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc
  et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  a -- men, a -- men,
  Glo -- ri -- a Pa -- tri et Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  in sæ -- cu -- la sæ -- cu -- lo -- rum,
  a -- men, in sæ -- cu -- la sæ -- cu -- lo -- rum,
  \repeat unfold 3 { a -- men, } a -- men.
}

wordsSopMidi = \lyricmode {
  "Ma" gni fi "cat " a ni "ma " me "a " Do mi "num, "
  "\net " ex ul ta "vit " spi ri "tus " me "us "
  "\nin " De "o " sa lu ta ri me "o, "
  "\nma" gni fi "cat, " ma gni fi "cat "
  "\na" ni "ma " me "a " Do mi "num, "
  "\nqui" "a " re spe "xit " hu mi li ta "tem " an cil "læ " su "æ, "
  "\nqui" "a " re spe "xit " hu mi li ta "tem " an cil "læ " su "æ, "
  "\nec" "ce " e "nim " "ex " "hoc " "me " be a "tam " di "cent " om "nes " gen "tes, "
  "\nec" "ce " e "nim " "ex " "hoc " "me " be a "tam " di "cent " om "nes " gen "tes. "
  "\nMa" gni fi "cat " a ni "ma " me "a " Do mi "num, "
  "\net " ex ul ta "vit " spi ri "tus " me "us " "in " De "o " sa lu ta "ri " me "o, "
  "\nma" gni fi "cat, " ma gni fi "cat " a mi "ma " me "a " "in " Do "mi " "no, "
  "\nma" gni fi "cat " "in " Do mi "no! "
  "\nDe" po su "it " po ten "tes " "de " se "de, "
  "\nex" ul ta "vit " hu "mi " "les, "
  "\ne" su ri en "tes " im ple "vit " bo "nis "
  "\net " di vi "tes " di mi "sit " in a "nes. "
  "\nSu" sce "pit " I sra "el " pu e "rum " su "um "
  "\nre" cor da "tus " mi se ri cor di "æ " su "æ, "
  "\nsi" "cut " lo cu "tus " "est " "ad " pa "tres " no "stros, "
  "\nA" bra "ham " "et " se mi "ni " e "jus " "in " sæ cu "la, "
  "\nsi" "cut " lo cu "tus " "est " "as " pa "tres " no "stros, "
  "\nA" bra "ham " "et " se mi "ni " e "jus " "in " sæ cu "la. "
                                % 11a
  "\nGlo" ri "a " Pa "tri " "et " Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc "
  "\net " sem "per " "et " "in " sæ cu "la "
  "\nsæ" cu lo "rum, " a "men. "
                                % 12b
  "\nGlo" ri "a "  Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\net " Spi ri tu "i " San "cto, "
                                % 13a
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc "
  "\net " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  \repeat unfold 24 { a "men, " } a "men. "
                                % 15a
  "\nGlo" ri "a " Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o "
  "\net " "nunc " "et " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  \repeat unfold 19 { a "men, " } a "men. "
                                % 17a
  "\nGlo" ri "a " Pa "tri " "et " Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc "
  "\net " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  "\na" "men, " a "men, "
  "\nGlo" ri "a " Pa "tri " "et " Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc " "et " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  "\nin " sæ cu "la " sæ cu lo "rum, "
  "\na" "men, " "in " sæ cu "la " sæ cu lo "rum, "
  \repeat unfold 3 { a "men, " } a "men. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*3 | s2. s4\ff | s1*3 |
  s1*9 | % 2
  s1*9 |
  s1*3 | s2 s\f | s1*5 | % 4
  s1*3 | s2. s4\f | s1*5 |
  s1*9 | % 6
  s1*6 | s2.*10 |
  s2.*18 | % 8
  s2.*13 |
  s2.*15 | % 10
  s2.*6 | s2.\ff | s2.*11 |
  s2.*10 | s2 s4\f | s2.*7 | % 12
  s2.*10 | s2.\p | s2.*2 |
  s2. | s\f | s2.*14 | % 14
  s2.*2 | s2 s4\f | s2.*14 |
  s2.*8 | s2.\p | s2.*7 | % 16
  s2.*4 | s2.\f | s2.*15 |
  s2.*14 | % 18
  s2.*18 |
}

alto = \relative {
  \global
  R1*3 | r2 r4 g' |
  g4 8 8 4 8 8 | f(g) 4 4. 8 | e4 g g c |
  b4. 8 bes4 a 8 8 | 2 f4 g | g e4 8 8 a a | % 2a
  a4(gis8 fis) gis4 4 | 4. 8 4 c | 4. 8 2 |
  a4 8 8 bes4 4 | 2 a | g r |
  R1*3 | % 3a
  r2 e4 g8 a | b4. 8 4 a8 a | 4 8 8 8 8 gis4 |
  a4 r r2 | r fis4 a8 b | c4. 8 4 b8 8 |
  bes4 8 8 8 8 4 | a4 r r2 | R1 | % 4a
  r2 c,4(ees8) f | g4 8 8 4 f8 8 | e8 8 8 8 4. 8 |
  e4(bes'4 a2) | g4 r e(f8) g | a4 8 8 4 g8 8 |
  fis8 8 8 8 4. 8 | 4(e a2) | g4 r r2 | % 5a
  r2 r4 g | 4 8 8 4 8 8 | f(g) 4 4. 8 |
  e4 g g c | b4. 8 bes4 a8 8 | 2 f4 g |
  g4 e4 8 8 a a | 4(gis8 fis) g4 g | 4. 8 4 c | % 6a
  c4. 8 2 | a4 8 8 b4 c8 8 | a2 g |
  e2 r4 4 | a2 g | g r4 e |
  a1( | g2.) f4 | e2 r | % 7a
  R1*3 \key f \major \time 3/4 | R2.*3 |
  R2.*6 | r4 r a^\markup\italic {\halign #RIGHT solo} |
  bes8. f16 4 r8 8 | g4 f f | g f r | r g16(b) c(d) c4(| a8) 8 g4 f | % 8a
  e4 r8 e f g | 8.(f16) 8 a bes c | 8.(bes16) 4 r8 8 | c8. bes16 4. 8 | d4.(bes8) g e |
  c2(b4) | c2 r4 | R2.*6 |
  R2. | r8 f a4 c | bes8. a16 bes4 r | r aes c8 ees | cis8.(c16) cis4 r | % 9a
  r4 ees,16(g) aes(bes) aes8 8 | 8 f16 16 ees8 16 16 cis4 | 4 r8 aes'8 8 8 |
  bes8. 16 8 8 8 8 | 8.(aes16) 4 r | 8. 16 4 r8 c | des4.(aes8) f des | c4 c f |
  f2 e4 | f4 r8 a bes c | d8. bes16 8 fis g a | b4 g2 | % 10a
  g8. 16 4 4 | 4. g8 aes4 | a8(f) c4 c | f2.~ | 2 e4 | f2 r4 |
  R2.*5 \section \key c \major |
  R2.*5 | R2.^\markup\italic {\halign #CENTER Tutti} | c'4. 8 4 | % 11a
  a2 b8 8 | c8. c,16 4 r8 c' | a4. 8 b b | c4 c, r | r f d | b g' e8 e |
  c8. a' 16 4 f | d r g | e c a'8 8 | 4. 8 4 | bes2 4 |
  a2 f4 | R2. | r4 fis2 | g4 r r | R2.*3 | % 12a
  R2.*3 | r4 r fis~ | 4 e8(d) c(b) | a4 4 r |
  r4 r g' | ees4. 8 8 8 | 4 4 4 | g4. 8 8 8 | a4 fis r |
  gis8 8 a4 a | fis8 8 g8. 16 4 | e fis r | % 13a
  d4 g8 8 8 8 | 4 8 8 8 8 | fis4 d r | g4. fis8 g fis |
  g2 4 | 2 4 | 8 8 4 fis | g4.^\markup\italic Solo fis8 g fis | g2 4 | 2 4 |
  g8 8 4 fis | g8^\markup\italic Tutti 8 a2 | g4 2 | 4 bes bes | % 14a
  b4 bes2 | b4 bes2 | b8 8 a2 | b4 bes2 | b4 bes2 |
  b4 bes2 | a4 bes2 | a4 g2 | a4 r r | R2.*3 |
  R2.*2 | r4 r d~ | d c8(bes) a(g) f8. 16 4 r | R2. | % 15a
  R2.*2 | r4 r e~ | e f8 g a bes | c4 c r | r r bes~ |
  bes8 c bes a g f | e8. 16 4 r | r a f | r g bes | g a8 a c c |
  a4 bes8 8 d4 | bes4 4. 8 | 2. | c4 r r | f,4. 8 g f | % 16a
  f2 4 | 2 4 | 8 8 4 e | f4.^\markup\italic solo e8 f e | f2 4 | g4. 8 8 8 |
  g4 g r | R2. | g4 g r | R2. | a4. bes8 a bes |
  a2 4 | g2(c4) | b r r | R2.^\markup\italic {\halign #CENTER Tutti} | c4. 8 4 | a2 b8 8 | c8. c,16 4 r8 c' | % 17a
  a4. 8 b b | c4 c, r | r f d | b g' e8. 16 |c8. a'16 4 f | d r g | e c a'8 8 |
  a4. 8 4 | bes2 4 | a2 f4 | R2. | r4 b2 | c4 c(b) |
  c4 4 8 8 | 4 4 4 | bes2 4 | gis2 4 | % 18a
  bes4. 8 8 8 | gis4 4 g8 8 | gis4. 8 g g | f8. 16 4 g | gis2 g4 |
  f4 4 g8 8 | f4. c'8 4 | 2 4 | 2.~ | 2(b4) |
  c2 r4 | r r c | 4. 8 4 | 2 8(a) | g2 4 | % 19a
  g2. | 2 r4 | r r c | 4. 8 4 | 2 4 |
  c2 4 | b2. | c4 r g | g r g | g r g | e r r | R2.*2 |
  \bar "|."
}

wordsAlto = \lyricmode {
  Ma -- gni -- fi -- cat a -- ni -- ma me -- a Do -- mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus me -- us
  in De -- o sa -- lu -- ta -- ri -- me -- o,
  ma -- gni -- fi -- cat, ma -- gni -- fi -- cat
  a -- ni -- ma me -- a Do  -- mi -- num,
  qui -- a re -- spe -- xit hu -- mi -- li -- ta -- tem an -- cil -- læ su -- æ,
  qui -- a re -- spe -- xit hu -- mi -- li -- ta -- tem an -- cil -- læ su -- æ,
  ec -- ce e -- nim ex hoc me be -- a -- tam di -- cent om -- nes gen -- tes,
  ec -- ce e -- nim ex hoc me be -- a -- tam di -- cent om -- nes gen -- tes.
  Ma -- gni -- fi -- cat a -- ni -- ma me -- a Do -- mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus me -- us in De -- o sa -- lu -- ta -- ri me -- o,
  ma -- gni -- fi -- cat, ma -- gni -- fi -- cat a -- mi -- ma me -- a in Do -- mi no,
  ma -- gni -- fi -- cat in Do -- mi -- no!
  De -- po -- su -- it po -- ten -- tes de se -- de,
  ex -- ul -- ta -- vit hu -- mi les,
  e -- su -- ri -- en -- tes im -- ple -- vit bo -- nis
  et di -- vi -- tes di -- mi -- sit in -- a -- nes.
  Su -- sce -- pit I -- sra -- el pu -- e -- rum su -- um
  re -- cor -- da -- tus mi -- se -- ri -- cor -- di -- æ su -- æ,
  si -- cut lo -- cu -- tus est ad pa -- tres no -- stros,
  A -- bra -- ham et se -- mi -- ni e -- jus in sæ -- cu -- la,
  si -- cut lo -- cu -- tus est as pa -- tres no -- stros,
  A -- bra -- ham et se -- mi -- ni e -- jus in sæ -- cu -- la.
                                % 11a
  Glo -- ri -- a Pa -- tri et Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc
  et sem -- per et in sæ -- cu -- la
  sæ -- cu -- lo -- rum, a -- men.
                                % 12b
  Glo -- ri -- a __ Pa -- tri et Spi -- ri -- tu -- i San -- cto,
  et Spi -- ri -- tu -- i San -- cto,
                                % 13a
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc
  et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  \repeat unfold 24 { a -- men, } a -- men.
                                % 15a
  Glo -- ri -- a Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o
  et nunc et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  \repeat unfold 18 { a -- men, } a -- men.
                                % 17a
  Glo -- ri -- a Pa -- tri et Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc
  et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  a -- men, a -- men,
  Glo -- ri -- a Pa -- tri et Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  in sæ -- cu -- la sæ -- cu -- lo -- rum,
  a -- men, in sæ -- cu -- la sæ -- cu -- lo -- rum,
  \repeat unfold 3 { a -- men, } a -- men.
}

wordsAltoMidi = \lyricmode {
  "Ma" gni fi "cat " a ni "ma " me "a " Do mi "num, "
  "\net " ex ul ta "vit " spi ri "tus " me "us "
  "\nin " De "o " sa lu ta ri me "o, "
  "\nma" gni fi "cat, " ma gni fi "cat "
  "\na" ni "ma " me "a " Do mi "num, "
  "\nqui" "a " re spe "xit " hu mi li ta "tem " an cil "læ " su "æ, "
  "\nqui" "a " re spe "xit " hu mi li ta "tem " an cil "læ " su "æ, "
  "\nec" "ce " e "nim " "ex " "hoc " "me " be a "tam " di "cent " om "nes " gen "tes, "
  "\nec" "ce " e "nim " "ex " "hoc " "me " be a "tam " di "cent " om "nes " gen "tes. "
  "\nMa" gni fi "cat " a ni "ma " me "a " Do mi "num, "
  "\net " ex ul ta "vit " spi ri "tus " me "us " "in " De "o " sa lu ta "ri " me "o, "
  "\nma" gni fi "cat, " ma gni fi "cat " a mi "ma " me "a " "in " Do "mi " "no, "
  "\nma" gni fi "cat " "in " Do mi "no! "
  "\nDe" po su "it " po ten "tes " "de " se "de, "
  "\nex" ul ta "vit " hu "mi " "les, "
  "\ne" su ri en "tes " im ple "vit " bo "nis "
  "\net " di vi "tes " di mi "sit " in a "nes. "
  "\nSu" sce "pit " I sra "el " pu e "rum " su "um "
  "\nre" cor da "tus " mi se ri cor di "æ " su "æ, "
  "\nsi" "cut " lo cu "tus " "est " "ad " pa "tres " no "stros, "
  "\nA" bra "ham " "et " se mi "ni " e "jus " "in " sæ cu "la, "
  "\nsi" "cut " lo cu "tus " "est " "as " pa "tres " no "stros, "
  "\nA" bra "ham " "et " se mi "ni " e "jus " "in " sæ cu "la. "
                                % 11a
  "\nGlo" ri "a " Pa "tri " "et " Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc "
  "\net " sem "per " "et " "in " sæ cu "la "
  "\nsæ" cu lo "rum, " a "men. "
                                % 12b
  "\nGlo" ri "a "  Pa "tri " "et " Spi ri tu "i " San "cto, "
  "\net " Spi ri tu "i " San "cto, "
                                % 13a
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc "
  "\net " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  \repeat unfold 24 { a "men, " } a "men. "
                                % 15a
  "\nGlo" ri "a " Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o "
  "\net " "nunc " "et " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  \repeat unfold 18 { a "men, " } a "men. "
                                % 17a
  "\nGlo" ri "a " Pa "tri " "et " Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc "
  "\net " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  "\na" "men, " a "men, "
  "\nGlo" ri "a " Pa "tri " "et " Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc " "et " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  "\nin " sæ cu "la " sæ cu lo "rum, "
  "\na" "men, " "in " sæ cu "la " sæ cu lo "rum, "
  \repeat unfold 3 { a "men, " } a "men. "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*3 | s2. s4\ff | s1*3 |
  s1*9 | % 2
  s1*9 |
  s1*4 | s1\f | s1*4 | % 4
  s1*3 | s2. s4\f | s1*5 |
  s1*9 | % 6
  s1*6 | s2.*10 |
  s2.*18 | % 8
  s2.*13 |
  s2.*15 | % 10
  s2.*6 | s2.\ff | s2.*11 |
  s2.*9 | s2 s4\f | s2.*8 | % 12
  s2.*10 | s2.\p | s2.*2 |
  s2. | s\f | s2.*14 | % 14
  s2.*3 | s2 s4\f | s2.*13 |
  s2.*8 | s2.\p | s2.*7 | % 16
  s2.*4 | s2.\f | s2.*15 |
  s2.*14 | % 18
  s2.*18 |
}

tenor = \relative {
  \global
  R1*3 | r2 r4 g |
  e'4 8 8 d4 c8 c | c(d) c4 c b | c c d d |
  d4. 8 cis4 d8 8 | 4(cis) d d | c b c8 c a a | % 2a
  b2 4 4 | 4. 8 c4 c | f4. 8 2 |
  ees4 8 8 e4 e | d(g2) fis4 | g2 r |
  R1*3 | % 3a
  a,4 c8 d e4. 8 | 4 d8 d cis4 8 8 | d4 ees e e |
  R1 | b4 d8 e fis4. 8 | 4 g8 e d4 8 8 |
  d4 e f(g) | c, r r2 | R1 | % 4a
  R1 | g4(bes8) c d4 8 8 | 4 c8 8 b b b b |
  c4 cis d d | g,(bes8) c d4 8 8 | 4 c8 c b b b b |
  b4(d8) e fis4 4 | R1*2 | % 5a
  r2 r4 g, | e'4 8 8 d4 c8 8 | c(d) c4 c b |
  c4 c d d | 4. 8 cis4 d8 d | 4(cis) d d |
  c4 b c8 c a a | b2 4 4 | 4. 8 c4 c | % 6a
  f4. 8 e2 | c4 8 8 b4 c8 8 | a2 g |
  c2 r4 c | 2. b4 | c2 r4 c |
  c1~ | 2 b | c r | % 7a
  R1*3 \key f \major \time 3/4 | R2.*3 |
  R2.*6 | r4 r ees^\markup\italic {\halign #RIGHT solo} |
  d8. 16 4 r8 8 | c4 c c | c c r | r b16(d) e(f) e4( | cis8) d e4 d | % 8a
  c4 r8 8 8 8 | 4 8 8 8 f | 4 4 r8 d | d8. 16 4. b8 | d4.(bes8) g e |
  c2(aes'4) g2 r4 | R2.*6 |
  R2. | r8 a c4 ees | cis8. c16 bes4 r | r c ees8 fis | 8.(ees16) cis4 r | % 9a
  r4 g16(bes) c(des) c8 8 | des8 16 16 c8 16 16 bes4 | aes r8 ees'8 8 8 |
  c8. 16 8 8 8 8 | 4 4 r | f8. cis16 4 r8 c | des4.(aes8) f des | c4 c c'8(aes) |
  g2 4 | f r8 f' f f | 8. 16 8 d cis c | bes4 c2 | % 10a
  c8. 16 4 f | 4. e8 d4 | c8(f) e(d) c(bes) | a2(aes4 | g c) bes | a2 r4 |
  R2.*5 \section \key c \major |
  R2.*5 | R2.^\markup\italic {\halign #CENTER Tutti} | 4. 8 4 | % 11a
  c2 d8 d | c8. 16 4 r8 8 | 4. 8 d d |c4 c r | r f d | bes g e'8 8 |
  c8. a16 4 f' | d r g | e c a8 8 | c4. 8 4 | 2 4 |
  c2 f,4 | R2. | r4 c'2 | d4 r r | R2.*3 | % 12a
  R2.*2 | r4 r e~ | e d8(c) bes(a) | g8. 16 4 r | R2. |
  r4 r g | ees'4. 8 8 8 | 4 4 4 | cis4. 8 8 8 | d4 d r |
  bes8 8 c4 c | a8 8 bes8. 16 4 | g4 a r | % 13a
  fis4 g8 8 8 8 | bes4 8 8 8 8 | a4 d, r | bes'4. 8 a bes |
  bes8(e d c bes a) | g4 r r | c8 e d4 d | bes4.^\markup\italic Solo c8 bes c | bes(e d c bes a) | g4 r r |
  c8 e d4 d | bes8^\markup\italic Tutti g' fis2 | e4 bes2 | c4 e e | % 14a
  d4 cis2 | d4 cis2 | d8 8 2 | d4 g2 | 4 2 |
  g4 2 | f4 g2 | f4 c2 | a4 r r | R2.*3 |
  R2.*3 | r4 r e'~ | e d8(c) bes(a) | g4 g r | % 15a
  r4 r f~ | f g8 a bes c | d4 d r | R2. | r4 r f~ | 8 g f ees d c |
  bes8. 16 4 r | r r e | c r f | d bes g'8 8 | e e c4 a'8 8 |
  f4 d g~ | 2 4 | gis2. | g4 r r | a,4. ces8 a bes | % 16a
  a8(d c bes a g) | f4 r r | bes8 d c4 c | a4.^\markup\italic solo bes8 a bes | a(c f e) d(c) | bes4. c8 bes c |
  bes8(d) c4 r | R2. | bes8(d) c4 r | R2. | d4. e8 d e |
  d8(f e d) cis(d) | e2(fis4) | g r r | R2.^\markup\italic {\halign #CENTER Tutti} | c,4. 8 4 | 2 d8 d | c8. 16 4 r8 8 | % 17a
  c4. 8 d d | c4 c r | r f d | bes g e'8. 16 | c8. a16 4 f' | d r g | e c a8 8 |
  c4. 8 4 | 2 4 | 2 f,4 | R2. | r4 d'2 | e4 g2 |
  e4 c4 8 8 | 4 4 4 | ees2 4 | 2 4 | % 18a
  ees4. 8 8 8 | 4 4 c8 8 | 4. 8 8 8 | 8. 16 4 4 | 2 4 |
  c4 4 cis8 8 | 4. 8 4 | ees2 4 | d2.~ | d |
  c2 r4 | r r g' | f4. 8 4 | 2 4 | e2 c4 | % 19a
  c4(bes8 a bes4) | c2 r4 | r r g' | f4. 8 4 | ees2 4 |
  d2 4 | f2. | e4 r d | c r b | c r b | c r r | R2.*2 |
  \bar "|."
}

wordsTenor = \lyricmode {
  Ma -- gni -- fi -- cat a -- ni -- ma me -- a Do -- mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus me -- us
  in De -- o sa -- lu -- ta -- ri -- me -- o,
  ma -- gni -- fi -- cat, ma -- gni -- fi -- cat
  a -- ni -- ma me -- a Do  -- mi -- num,
  qui -- a re -- spe -- xit hu -- mi -- li -- ta -- tem an -- cil -- læ su -- æ,
  qui -- a re -- spe -- xit hu -- mi -- li -- ta -- tem an -- cil -- læ su -- æ,
  ec -- ce e -- nim ex hoc me be -- a -- tam di -- cent om -- nes gen -- tes,
  ec -- ce e -- nim ex hoc me be -- a -- tam di -- cent om -- nes gen -- tes.
  Ma -- gni -- fi -- cat a -- ni -- ma me -- a Do -- mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus me -- us in De -- o sa -- lu -- ta -- ri me -- o,
  ma -- gni -- fi -- cat, ma -- gni -- fi -- cat a -- mi -- ma me -- a in Do -- mi no,
  ma -- gni -- fi -- cat in Do -- mi -- no!
  De -- po -- su -- it po -- ten -- tes de se -- de,
  ex -- ul -- ta -- vit hu -- mi les,
  e -- su -- ri -- en -- tes im -- ple -- vit bo -- nis
  et di -- vi -- tes di -- mi -- sit in -- a -- nes.
  Su -- sce -- pit I -- sra -- el pu -- e -- rum su -- um
  re -- cor -- da -- tus mi -- se -- ri -- cor -- di -- æ su -- æ,
  si -- cut lo -- cu -- tus est ad pa -- tres no -- stros,
  A -- bra -- ham et se -- mi -- ni e -- jus in sæ -- cu -- la,
  si -- cut lo -- cu -- tus est as pa -- tres no -- stros,
  A -- bra -- ham et se -- mi -- ni e -- jus in sæ -- cu -- la.
                                % 11a
  Glo -- ri -- a Pa -- tri et Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc
  et sem -- per et in sæ -- cu -- la
  sæ -- cu -- lo -- rum, a -- men.
                                % 12b
  Glo -- ri -- a __ Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  et Spi -- ri -- tu -- i San -- cto,
                                % 13a
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc
  et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  \repeat unfold 22 { a -- men, } a -- men.
                                % 15a
  Glo -- ri -- a Pa -- tri et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o
  et nunc et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  \repeat unfold 17 { a -- men, } a -- men.
                                % 17a
  Glo -- ri -- a Pa -- tri et Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc
  et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  a -- men, a -- men,
  Glo -- ri -- a Pa -- tri et Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  in sæ -- cu -- la sæ -- cu -- lo -- rum,
  a -- men, in sæ -- cu -- la sæ -- cu -- lo -- rum,
  \repeat unfold 3 { a -- men, } a -- men.
}

wordsTenorMidi = \lyricmode {
  "Ma" gni fi "cat " a ni "ma " me "a " Do mi "num, "
  "\net " ex ul ta "vit " spi ri "tus " me "us "
  "\nin " De "o " sa lu ta ri me "o, "
  "\nma" gni fi "cat, " ma gni fi "cat "
  "\na" ni "ma " me "a " Do mi "num, "
  "\nqui" "a " re spe "xit " hu mi li ta "tem " an cil "læ " su "æ, "
  "\nqui" "a " re spe "xit " hu mi li ta "tem " an cil "læ " su "æ, "
  "\nec" "ce " e "nim " "ex " "hoc " "me " be a "tam " di "cent " om "nes " gen "tes, "
  "\nec" "ce " e "nim " "ex " "hoc " "me " be a "tam " di "cent " om "nes " gen "tes. "
  "\nMa" gni fi "cat " a ni "ma " me "a " Do mi "num, "
  "\net " ex ul ta "vit " spi ri "tus " me "us " "in " De "o " sa lu ta "ri " me "o, "
  "\nma" gni fi "cat, " ma gni fi "cat " a mi "ma " me "a " "in " Do "mi " "no, "
  "\nma" gni fi "cat " "in " Do mi "no! "
  "\nDe" po su "it " po ten "tes " "de " se "de, "
  "\nex" ul ta "vit " hu "mi " "les, "
  "\ne" su ri en "tes " im ple "vit " bo "nis "
  "\net " di vi "tes " di mi "sit " in a "nes. "
  "\nSu" sce "pit " I sra "el " pu e "rum " su "um "
  "\nre" cor da "tus " mi se ri cor di "æ " su "æ, "
  "\nsi" "cut " lo cu "tus " "est " "ad " pa "tres " no "stros, "
  "\nA" bra "ham " "et " se mi "ni " e "jus " "in " sæ cu "la, "
  "\nsi" "cut " lo cu "tus " "est " "as " pa "tres " no "stros, "
  "\nA" bra "ham " "et " se mi "ni " e "jus " "in " sæ cu "la. "
                                % 11a
  "\nGlo" ri "a " Pa "tri " "et " Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc "
  "\net " sem "per " "et " "in " sæ cu "la "
  "\nsæ" cu lo "rum, " a "men. "
                                % 12b
  "\nGlo" ri "a "  Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\net " Spi ri tu "i " San "cto, "
                                % 13a
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc "
  "\net " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  \repeat unfold 22 { a "men, " } a "men. "
                                % 15a
  "\nGlo" ri "a " Pa "tri " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o "
  "\net " "nunc " "et " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  \repeat unfold 17 { a "men, " } a "men. "
                                % 17a
  "\nGlo" ri "a " Pa "tri " "et " Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc "
  "\net " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  "\na" "men, " a "men, "
  "\nGlo" ri "a " Pa "tri " "et " Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc " "et " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  "\nin " sæ cu "la " sæ cu lo "rum, "
  "\na" "men, " "in " sæ cu "la " sæ cu lo "rum, "
  \repeat unfold 3 { a "men, " } a "men. "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*3 | s2. s4\ff | s1*3 |
  s1*9 | % 2
  s1*9 |
  s1*3 | s1\f | s1*5 | % 4
  s1*3 | s2. s4\f | s1*5 |
  s1*9 | % 6
  s1*6 | s2.*10 |
  s2.*18 | % 8
  s2.*13 |
  s2.*15 | % 10
  s2.*6 | s2.\ff | s2.*11 |
  s2.*8 | s2 s4\f | s2.*9 | % 12
  s2.*10 | s2.\p | s2.*2 |
  s2. | s\f | s2.*14 | % 14
  s2. | s2 s4\f | s2.*15 |
  s2.*8 | s2.\p | s2.*7 | % 16
  s2.*4 | s2.\f | s2.*15 |
  s2.*14 | % 18
  s2.*18 |
}

bass = \relative {
  \global
  R1*3 | r2 r4 g |
  c,4 c'8 8 b4 bes8 8 | a(b) c4 g4. 8 | c,4 c' b a |
  g4. 8 e4 f8 g | a2 d,4 b' | c gis a8 a f f | % 2a
  e2 4 4 | d4. 8 c4 c' | f,4. 8 c'2 |
  c4 8 8 cis4 4 | d2. 4 | g,2 r |
  R1*2 | r2 d4 f8 g | % 3a
  a4. 8 4 g8 g | fis4 8 8 4. 8 | 4(f) e2 |
  r2 e4 g8 a | b4. 8 4 a8 8 | 4 g8 8 4 4 |
  g2(f4 e) | f r r2 | R1 | % 4a
  f4(a8) bes c4 8 8 | 4 bes8 8 a a a a | a4(c8) d e4 e |
  R1*2 | r2 e,4(g8) a |
  b4 8 8 4 a8 a | a a g g fis8 8 4 | e4 r r2 | % 5a
  r2 r4 g | c, c'8 8 b4 bes8 8 | a(b) c4 g4. 8 |
  c,4 c' b a | g4. 8 e4 d8 g | a2 d,4 b' |
  c4 gis a8 a f f | e2 4 4 | d4. 8 c4 c' | % 6a
  f,4. 8 c'2 | d4 8 8 g,4 a8 8 | f2 g |
  c,2 r4 a' | f2 g | c r4 a |
  f2(fis | g2.) g,4 | c2 r | % 7a
  R1*3 | \key f \major \time 3/4 R2.*3 |
  R2.*6 | r4 r f^\markup\italic {\halign #RIGHT solo} |
  bes8. bes,16 4 r8 8 | bes'4 a f | e f r | r r c16(e) g(c) | f,8 8 g4. 8 | % 8a
  c,4 r8 c' b bes | 8.(a16) 8 f g a | 8.(bes16) 4 r8 8 | a8. g16 4. bes8 | d4.(bes8) g e |
  c2. | c2 r4 | R2.*6 |
  R2. | r4 r8 f f f | bes,8. bes'16 4 r | r r aes8 16 16 | cis,4 cis' r | % 9a
  r4 r aes,16(c) ees(aes) | cis,8 16 16 ees8 8 8. 16 | aes,4 r8 aes'8 8 8 |
  g8. 16 8 8 f e | 8.(f16) 4 r | cis'8. cis,16 4 r8 c' | des4.(aes8) f des | c4 c c |
  c2 4 | f r8 f g a | bes8. bes,16 8 d d d | g4 e2 | % 10a
  f8. g16 a4 a | bes4. 8 b4 | c c, c | 2(b4 | c2) 4 | f2 r4 |
  R2.*5 \section \key c \major |
  R2.*5 | R2.^\markup\italic {\halign #CENTER Tutti} | c'4. 8 4 | % 11a
  c2 8 8 | 8. c,16 4 r8 c' | 4. 8 8 8 | 4 c, r | r f d | b4 g' e8 8 |
  c8. a'16 4 f | d r g | e c a'8 a | f4. 8 4 | 2 4 |
  f2 4 | R2. | r4 gis2 | g4 r r | R2.*3 | % 12a
  R2. | r4 r d'~ | d c8(b) a(g) | f4 f r | R2.*2 |
  r4 r g | ees4. 8 8 8 | 4 4 4 | 4. 8 8 8 | d4 d r |
  r4 d8 8 4 | 4 8 8 8. 16 | 4 4 4 | % 13a
  r4 d4 8 8 | 8 8 8 16 16 8 8 | 4 4 r | g,4. g'8 8 8 |
  g2 4 | 8(c b a) g(fis) | e c d4 d | g4.^\markup\italic Solo 8 8 8 | 2 4 | 8(c b a) g(fis) |
  e8 c d4 d | g8^\markup\italic {\halign #RIGHT Tutti} 8 b2 | c4 d2 | c4 cis cis | % 14a
  d8 d, ees2 | d4 ees2 | d4 2 | g4 ees'2 | d4 ees2 |
  d4 c2 | 4 2 | 4 2 | f,4 r2 | R2.*3 |
  R2. | r4 r c'~ | c bes8(a) g(f) | e4 e r | R2. | r4 r c~ | % 15a
  c4 d8 e f g | a4 a r | R2. | r4 r c~ | 8 d c bes a g | f8. 16 4 r |
  R2.*2 | a4 f r | bes g e | c'8 8 a a f4 |
  d'8 d bes4 g | c2 4 | 2. | 4 r r | f,4. 8 8 8 | % 16a
  f2 4 | 8(bes g a ) f(e) | d bes c4 4 | f4.^\markup\italic Solo 8 8 8 | 2 4 | 4. e8 f e |
  g8(bes) c4 r | R2. | g8(b) c4 r | R2. | f,4. g8 f g |
  f2 4 | g2. | 4 r r | R2.^\markup\italic {\halign #CENTER Tutti} | c4. 8 4 | 2 8 8 | 8. c,16 4 r8 c' | % 17a
  c4. 8 8 8 | 4 c, r | r f d | b g' e8. 16 | c8. a'16 4 f | d r g | e c a'8 8 |
  f4. 8 4 | 2 4 | 2 4 | R2. | r4 g2 | c4 g2 |
  c,4 c'4 8 8 | 4 4 4 | g2 4 | gis2 4 | % 18a
  g4. 8 8 8 | gis4 4 ees8 8 | f4. 8 g g | gis8. 16 4 ees | f2 g4 |
  gis4 4 bes8 8 | a4. 8 4 | gis2 4 | g2.~ | g |
  c2 r4 | r r bes | a4. 8 4 | f2 4 | g2 4 | % 19a
  g2. | c2 r4 | r r bes | a4. 8 4 | fis2 4 |
  g2 4 | 2. | c,4 r g' | c r g | c r g | c, r r | R2.*2 |
  \bar "|."
}

wordsBass = \lyricmode {
  Ma -- gni -- fi -- cat a -- ni -- ma me -- a Do -- mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus me -- us
  in De -- o sa -- lu -- ta -- ri -- me -- o,
  ma -- gni -- fi -- cat, ma -- gni -- fi -- cat
  a -- ni -- ma me -- a Do  -- mi -- num,
  qui -- a re -- spe -- xit hu -- mi -- li -- ta -- tem an -- cil -- læ su -- æ,
  qui -- a re -- spe -- xit hu -- mi -- li -- ta -- tem an -- cil -- læ su -- æ,
  ec -- ce e -- nim ex hoc me be -- a -- tam di -- cent om -- nes gen -- tes,
  ec -- ce e -- nim ex hoc me be -- a -- tam di -- cent om -- nes gen -- tes.
  Ma -- gni -- fi -- cat a -- ni -- ma me -- a Do -- mi -- num,
  et ex -- ul -- ta -- vit spi -- ri -- tus me -- us in De -- o sa -- lu -- ta -- ri me -- o,
  ma -- gni -- fi -- cat, ma -- gni -- fi -- cat a -- mi -- ma me -- a in Do -- mi no,
  ma -- gni -- fi -- cat in Do -- mi -- no!
  De -- po -- su -- it po -- ten -- tes de se -- de,
  ex -- ul -- ta -- vit hu -- mi les,
  e -- su -- ri -- en -- tes im -- ple -- vit bo -- nis
  et di -- vi -- tes di -- mi -- sit in -- a -- nes.
  Su -- sce -- pit I -- sra -- el pu -- e -- rum su -- um
  re -- cor -- da -- tus mi -- se -- ri -- cor -- di -- æ,
  si -- cut lo -- cu -- tus est ad pa -- tres no -- stros,
  A -- bra -- ham et se -- mi -- ni e -- jus in sæ -- cu -- la,
  si -- cut lo -- cu -- tus est as pa -- tres no -- stros,
  A -- bra -- ham et se -- mi -- ni e -- jus in sæ -- cu -- la.
                                % 11a
  Glo -- ri -- a Pa -- tri et Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc
  et sem -- per et in sæ -- cu -- la
  sæ -- cu -- lo -- rum, a -- men.
                                % 12b
  Glo -- ri -- a __ Pa -- tri et Spi -- ri -- tu -- i San -- cto,
  et Spi -- ri -- tu -- i San -- cto,
                                % 13a
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc
  et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  \repeat unfold 24 { a -- men, } a -- men.
                                % 15a
  Glo -- ri -- a Pa -- tri et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o
  et nunc et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  \repeat unfold 18 { a -- men, } a -- men.
                                % 17a
  Glo -- ri -- a Pa -- tri et Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc
  et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  a -- men, a -- men,
  Glo -- ri -- a Pa -- tri et Fi -- li -- o et Spi -- ri -- tu -- i San -- cto,
  si -- cut e -- rat in prin -- ci -- pi -- o et nunc et sem -- per et in sæ -- cu -- la sæ -- cu -- lo -- rum,
  in sæ -- cu -- la sæ -- cu -- lo -- rum,
  a -- men, in sæ -- cu -- la sæ -- cu -- lo -- rum,
  \repeat unfold 3 { a -- men, } a -- men.
}

wordsBassMidi = \lyricmode {
  "Ma" gni fi "cat " a ni "ma " me "a " Do mi "num, "
  "\net " ex ul ta "vit " spi ri "tus " me "us "
  "\nin " De "o " sa lu ta ri me "o, "
  "\nma" gni fi "cat, " ma gni fi "cat "
  "\na" ni "ma " me "a " Do mi "num, "
  "\nqui" "a " re spe "xit " hu mi li ta "tem " an cil "læ " su "æ, "
  "\nqui" "a " re spe "xit " hu mi li ta "tem " an cil "læ " su "æ, "
  "\nec" "ce " e "nim " "ex " "hoc " "me " be a "tam " di "cent " om "nes " gen "tes, "
  "\nec" "ce " e "nim " "ex " "hoc " "me " be a "tam " di "cent " om "nes " gen "tes. "
  "\nMa" gni fi "cat " a ni "ma " me "a " Do mi "num, "
  "\net " ex ul ta "vit " spi ri "tus " me "us " "in " De "o " sa lu ta "ri " me "o, "
  "\nma" gni fi "cat, " ma gni fi "cat " a mi "ma " me "a " "in " Do "mi " "no, "
  "\nma" gni fi "cat " "in " Do mi "no! "
  "\nDe" po su "it " po ten "tes " "de " se "de, "
  "\nex" ul ta "vit " hu "mi " "les, "
  "\ne" su ri en "tes " im ple "vit " bo "nis "
  "\net " di vi "tes " di mi "sit " in a "nes. "
  "\nSu" sce "pit " I sra "el " pu e "rum " su "um "
  "\nre" cor da "tus " mi se ri cor di "æ, "
  "\nsi" "cut " lo cu "tus " "est " "ad " pa "tres " no "stros, "
  "\nA" bra "ham " "et " se mi "ni " e "jus " "in " sæ cu "la, "
  "\nsi" "cut " lo cu "tus " "est " "as " pa "tres " no "stros, "
  "\nA" bra "ham " "et " se mi "ni " e "jus " "in " sæ cu "la. "
                                % 11a
  "\nGlo" ri "a " Pa "tri " "et " Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc "
  "\net " sem "per " "et " "in " sæ cu "la "
  "\nsæ" cu lo "rum, " a "men. "
                                % 12b
  "\nGlo" ri "a "  Pa "tri " "et " Spi ri tu "i " San "cto, "
  "\net " Spi ri tu "i " San "cto, "
                                % 13a
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc "
  "\net " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  \repeat unfold 24 { a "men, " } a "men. "
                                % 15a
  "\nGlo" ri "a " Pa "tri " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o "
  "\net " "nunc " "et " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  \repeat unfold 18 { a "men, " } a "men. "
                                % 17a
  "\nGlo" ri "a " Pa "tri " "et " Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc "
  "\net " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  "\na" "men, " a "men, "
  "\nGlo" ri "a " Pa "tri " "et " Fi li "o " "et " Spi ri tu "i " San "cto, "
  "\nsi" "cut " e "rat " "in " prin ci pi "o " "et " "nunc " "et " sem "per " "et " "in " sæ cu "la " sæ cu lo "rum, "
  "\nin " sæ cu "la " sæ cu lo "rum, "
  "\na" "men, " "in " sæ cu "la " sæ cu lo "rum, "
  \repeat unfold 3 { a "men, " } a "men. "
}

pianoRHone = \relative {
  \global
  c'4 8. 16 4~16 d32 e f g a b |
  <e, c'>4 8. 16 c'4~16 d32 e f g a bes |
  <c, f a c>4 8. 16 <d fis d'>4 8. 16 |
  \vo d'16 e f e d c b a g a b a g f e d |
  \ov c16 b a g f e d c d g b d e, g c e | % 1b
  f16 a g f e g f e d c b a g f e d |
  c16 e g c e g g g d g g g c, fis fis fis |
  g16 g, b d g fis g a  bes cis, cis cis d f a f | % 2a
  e16 d cis bes a g f e d f a d f a g f |
  e16 g f e d f e d c d c b a b c d |
  e16 e, dis e e' gis b gis e8 gis,16 a b c d e | % 2b
  f16 e d c b a g f e e g g c c e e |
  a,16 b c d e f g a g g c c g g e e |
  fis16 a a, a' fis a a, a' g bes bes, bes' g bes bes, bes' | % 2c
  g16 b b, b' g b b, b' g a a, a' fis a a, a' |
  g16 b g b e8 <b e> <a e'>4 <a d>8 <a c> |
  b16 g e g c8 <g c> <fis c'>4 <fis b>8 <fis a> | % 3a
  g16 <g b> <fis a> <e g> <g, e'> <e' g> <d fis> <c e> <g b> <b d> <a c> <g b> <fis a> <a c> <g b> <fis a> |
  g16 fis g a b a b c d d' d d d d d d |
  a,16 gis a b c b c d e dis e fis g fis g a | % 3b
  b,16 b' b b d, b' d, b' \repeat unfold 4 {cis, d'} |
  d,16 a' d, a' \repeat unfold 4 {c, a'} b, gis' b, gis' |
  a,16 gis a b c b c d e4 r | % 3c
  b16 ais b cis d cis d e fis e fis g a g a b |
  c16 c c c e, d e f <d, g> <c' g'> <d, g> <c' g'> <d, g> <b' g'> <d, g> <b' g'>
  \vo bes'2 4 4 | a4. 8 g4. 8 | bes4 a g2 | % 4a
  \ov f4 r c,16 b c d ees d ees f | % 4b
  g fis g a bes a bes c d cis d e f e f g |
  <d e a>8 8 <c e a> q <b e a> q <b e g> q |
  <c e g>8 8 <bes cis g'> q <a d g> q <a d fis> q | % 4c
  <bes g'>4 r d,16 cis d e f e f g |
  a16 gis a b c b c d <a b e>8 q <g b e> q |
  <fis b e>8 q <f b d> q <f cis'> q q q | % 5a
  <dis fis b>8 q <e g e'> q <fis a e'> q <a b dis> q |
  <g e'>8 e16 dis e fis g a \vo b4 \ov dis,16 c b g |
  c16 b c d e d e f g fis g a g f e d | % 5b
  c16 d e f g a b c d, g b d e, g c e |
  f16 a g f e g f e  d c b a g f e d |
  c16 e g c e g g g d g g g c, fis fis fis | % 5c
  g16 g, b d g fis g a bes cis, cis cis d f a f |
  e16 d cis bes a g f e d f a d f a g f |
  e16 g f e d f e d c d c b a b c d | % 6a
  e16 e, dis e e' gis b gis e8 gis,16 a b c d e |
  f16 e d c b a g f e e g g c c e e |
  a,16 b c d e f g a g g c c g g e e | % 6b
  fis16 a a, a' fis a a, a' f b b, b' e, c' a, c' |
  a16 c c, c' a c c, c' g c d, c' g b d, b' |
  c,16 d e f g a b c c, d e f g a b c | % 6c
  d,16 e f g a b c d d, e f g a b c d |
  <c, e>8 16 16 8 8 8 16 16 8 8 |
  <c d>8 16 16 8 8 8 16 16 8 8 | % 7a
  q8 16 16 8 8 <b d>8 16 16 8 8 |
  c16 e c e \vo a8 8 4 g8 f |
  e4 r8 f8 4 e8 d | % 7b
  c4 \ov r8 <c a'> r <c e> r <b d> |
  c4 <d b'> <e c'>8 r\fermata \section \key f \major c4 \time 3/4 |
  <c f>4. <bes e>8 <a d> <g c> |
  <f c'>8 <g bes> <f a>4 c'^\mf |
  f2.~ |
  f4. d8 bes d | % 7c
  e,4 f a |
  c8. bes16 a4 16 c f a |
  g2.~ |
  g16 a f d c8 g'4 bes,8\trill |
  c4 8^\p bes a g |
  <a, f'>4 <c a'> <ees c'> |
  <d bes'>4 <bes' d> r | % 8a
  \vo c4. f8 a, d |
  c8. bes16 a4 \ov r |
  r4 <b, g'>16 <d b'> <e c'> <f d'> <e c'>4 |
  \vo cis'8 d c4~16 b a b |
  c8 c,16 e32 g c8 16 e d f e g | % 8b
  g8. a16 f8 r r f |
  f8. \tuplet 3/2 {ees32 d c} bes8 a16 bes e d bes' g |
  <c, fis>8. <bes g'>16 8 <bes bes'> <g g'> <d d'> |
  <bes bes'>8 <g g'> <d' d'> bes' g e |
  c4 bes''8 g aes b, | % 8c
  <c, c'>8 4 8 8 8 |
  \vo bes''4. a8 g f |
  e8 d c4 \ov d^\mf |
  a'2.~ |
  a4. f8 d f |
  g2.~ |
  g8 4 f8 e d |
  c4. b8 bes g | % 9a
  <a, f'>4^\p <c a'> <ees c'> |
  <des bes'>4 <bes' des> \vo f |
  aes4 c ees |
  des4 \ov <aes f'> f16 aes des f |
  \vo \grace f8 ees4 4. 8 | % 9b
  e16 f des bes aes8 ees'4 g,8 |
  aes8 aes,16 c32 ees aes8 r r c \ov |
  bes'8. \tuplet 3/2 {aes32 g f} e8 16 c f c g' c, | % 9c
  c'8. \tuplet 3/2 {bes32 aes g} f8 f,16 aes aes c c f |
  <des f aes>8-> r8 f f, aes c |
  des8 f des <aes f'>8 8 8 |
  q2.~ |
  <g f'>2 <g e'>4 | % 10a
  <f f'>8 f16 a32 c f8 a16 bes bes c c d |
  d8. bes32 g d8 <d fis d'>8 <e g d'> <f a d> |
  \vo <g d'>4 <bes, g'>2 \ov |
  <a f'>4 r8 f' e16 f g f | % 10b
  d8. e16 f8 e e <d f> |
  <c f>8 <f a> <e f> <d f> <c e> <bes d> |
  <f' a>4 <a, f'> \vo d |
  g,2 c4 |
  f, r8 f'^\mf f f |
  f8 fis g8. e16 c d c bes | % 10c
  a16 f a c f8 f f a |
  bes8 d4 des8 c16 bes a g |
  f2.~ |
  f2. \section \key c \major |
  c,4 e g | % 11a
  c8 d16 e f g a b c8 b |
  a8 g f e d c |
  b4 <b f' a> <c g'> |
  <d f>16 <f a> <e g> <d f> <c e> <e g> <d f> <c e> <b d> <d f> <c e> <b d> |
  <c, c'>4 e g |
  c8 <g e'>16 16 8 8 8 8 |
  <a f'>8 16 16 8 8 <b f'> q | % 11b
  <c e>8 <g e'>16 16 8 8 8 8 |
  <a f'>8 16 16 8 8 <b f'> q |
  <c e>4 c8 b16 c e d c b |
  a8 a f' f d d |
  b8 b g' g e e |
  c8 c a' a f f | % 11c
  d8 d b' b g g |
  e8 e c' c a a |
  f16 f, g a bes c d e f8 f, |
  g8 a16 bes c d e f g8 g, |
  a8 bes16 c d e f g a8 f | % 12a
  c8 f c aes f c |
  aes4 <c' fis> q |
  <b g'>8 d, g b d4~ |
  d4 \vo s4 e4~ |
  e4 d8 c fis4~ |
  fis4 g8 fis e d |
  c16 e d c b d c b a c b a | % 12b
  \ov g8 d g b \vo d4~ |
  d4 c8 b e4~ |
  e4 d8 c fis4~ |
  fis4 e8 d g4~ |
  g4 fis8 e a4~ |
  a4 g8 g, b d | % 12c
  \ov <ees, ees'>8 16 16 8 8 8 8 |
  q8 f16 g aes bes c d e g e d |
  <cis g'>8 16 16 8 8 8 8 |
  <d fis>8 a16 b a g fis e d8 d' |
  gis,16 b e gis a8 a, e16 a c e | % 13a
  a16 a, d fis g8 g, d16 g b d |
  g16 g, c e fis8 fis, c16 fis a c |
  fis16 fis, a d b8 g b,16 d g b | % 13b
  e16 cis bes g e g bes cis e g bes cis |
  d8 d,16 e d8 c b a |
  g8 b16 d g8 <fis, e'> <g d'> <fis e'> |
  <b d>8 <e g> <d fis> <c e> <b d> <a c> | % 13c
  <g b>8 <c e> <b d> <a c> <g b> <fis a> |
  g8 <e c'> <g b> <b d> <fis a> <a c> |
  g8 b16 d g8 <fis, e'> <g d'> <f e'> |
  <g d'>8 <e' g> <d fis> <c e> <b d> <a c> |
  <g b> <c e> <b d> <a c> <g b> <fis a> |
  < g>8 <e c'> <d b'> <b' d> <fis a > <a c> | % 14a
  g16 b d g dis e fis g a b cis dis |
  e,16 g b e f e d c b a g f |
  e8 g bes g e bes |
  <b d g>8 8 <bes cis>8 8 8 8 | % 14b
  <g b d>8 8 <bes cis>8 8 8 8 |
  <b d>8 <b d g> <a d g> q <a d fis> q |
  <b d g>8 8 <bes cis>8 8 8 8 |
  <g b d>8 8 <bes cis>8 8 8 8 |
  <g b d>8 8 <bes c e>8 8 8 8 | % 14c
  <a c f>8 8 <bes c e>8 8 8 8 |
  <a c f>8 8 <g c f> q <g c e> q |
  <f c' f>8 c f a c4~ |
  \vo c4 bes8 a d4~ |
  d4 c8 bes e4~ |
  e4 f8 e d c |
  bes16 d c bes a c bes a g bes a g | % 15a
  \ov f8 c f a \vo c4~ |
  c4 bes8 a d4~ |
  d4 c8 bes e4~ |
  e4 d8 c f4 |
  f4 e8 d g4~ |
  g4 f f~ | % 15b
  f4 r bes, |
  d4 d \vt e,~ |
  \ov <e g'>8 <c e> <d f> <e g> <f a> <g bes> |
  <a c>8 a, c f a4 |
  r8 f a c \vo f4 |
  s2 e4~ | % 15c
  e8 f e d c bes |
  \ov <c, a'>4 4 <a' f'>8 8 |
  <f d'>8 8 <bes d> q <bes g'> q |
  <g e'>8 8 <c e> q <c a'> q |
  <a f'>8 8 <d f> q <d bes'> q | % 16a
  <e g bes>8 <c, c'>16 16 8 8 8 8 |
  <c' f aes>8 <c, c'>16 16 8 8 <b' f'> q |
  <c e>4 c r |
  \vo c4. d8 c d |
  c8 f e d c bes | % 16b
  a8 d c bes a g |
  f8 bes a4 g |
  \ov f8 a16 c f8 d c d |
  c8 f a g f e |
  d16 g g g g8 <g, c g'> q q |
  g'8. f16 e8 c'16 b a g f e | % 16c
  e8. d16 c8 <g c g'> <g d' g> <g c g'> |
  g'8. f16 e8 c'16 b a g f e |
  e8. d16 c8 \vo fis16 g a g f e |
  d4. cis8 d cis |
  d8 a' g f e d | % 17a
  c2 e4 |
  d8 \ov g,16 a g8 f e d |
  <c c'>4 e g |
  c8 <g e'>16 16 8 8 8 8 |
  <a f>8 16 16 8 8 <b f'> q |
  <c e>8 <g e'>16 16 8 8 8 8 |
  <a f'>8 16 16 8 8 <b f'> q | % 17b
  <c e>4 c8 b16 c e d c b |
  a8 a f' f d d |
  b8 b g' g e e |
  c8 c a' a f f |
  d8 d b' b g g |
  e8 e c' c a a |
  f16 f, g a bes c d e f8 f, | % 17c
  g8 a16 bes c d e f g8 g, |
  a8 bes16 c d e f g a8 c, |
  f8 c a f d c |
  b4 <d' f>2 |
  <c e>4 <c d> <b d> |
  <c, c'>16 d e f g a b c c8 c | % 18a
  c8 8 8 8 8 8 |
  ees16 f ees f ees f ees f ees des c bes |
  aes16 g aes g aes g aes g aes bes c des |
  ees16 f ees f ees f ees f ees des c bes | % 18b
  aes16 g aes bes c8 aes c, c' |
  d,8 d' d, d' ees, ees' |
  f,8 f' f, f' c, c' |
  d,8 d' d, d' ees, ees' |
  f,8 f' f, f' e, e' | % 18c
  f,8 f' f, f' f, f' |
  fis,8 fis' fis, fis' fis, fis' |
  g16 c, d e f g a b c b c b |
  c16 d e d c8 e, d b' |
  c8c,8 16 d e d c8 c, | % 19a
  c'8 e, e'16 f g f e f g e |
  f8 f, f'16 g a g f g a g |
  a8 a, a'16 b c b a b c a |
  g8 <e c'>16 16 8 8 8 8 |
  g,8 <d' c'>16 16 8 8 <d b'> q | % 19b
  <e c'>8 c8 16 d e d c d e d |
  c8 e, e'16 f g f e f g e |
  f8 f, f'16 g a g f g a g |
  a8 <fis, a> a'16 b c b a b c a |
  g8 <d c'>16 16 8 8 8 8 | % 19c
  g8 <d b'>16 16 8 8 8 8 |
  <e c'>4 r <d g b> |
  <e g c>4 r <d g b> |
  <e g c>4 r <d g b> |
  <e g c>4 4 4 |
  q4 <c, c'> q |
  q2. |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s1*3 | <d'' g>4 8. 16 <g, d'>4 8. g16 |
  s1*21 |
  d'4 e f g | c, f8 8 4 e8 8 | d e f2 e4 | % 4a
  s1*8 | s2 b,16 ais b cis s4 | % 5a
  s1*17 | s4. e'8 d4. 8 | % 7a
  c4 r8 c b4. 8 | a4 s2. | s2. \section \key f \major s4 \time 3/4 | s2.*3 |
  s2.*7 |
  s2. | g4 f f | c c s | s2. | a'4 g f | % 8a
  s2.*5 |
  s2.*2 | c'2 4 | <g bes>8 <f a> <e g>4 s | s2.*4 |
  s2.*2 | s2 bes8 des | aes'8 4 4 8~ | 8 8 s2 | % 9a
  r4 <ees g>16 <g bes> <aes c> <bes d> <aes c>4 | aes8 f ees4 des | c4 r r8 c |
  s2.*5 |
  s2.*3 | r4 r \tuplet 6/4 {c'16 e f g e bes} | % 10a
  s2.*3 | s2 aes8 f | f2 e4 | s2. |
  s2.*5 |
  s2.*18 | % 11
  s2.*4 | s4 c'8 b a g | fis2 b8 a | g2 8 gis | % 12a
  a4 g fis | s2. | r8 e a c a g | fis fis a c b a | g g b e c b | a a c fis d c |
  b4. g8 b d | s2.*4 |
  s2.*13 | % 13
  s2.*13 | r4 r g,8 f | e2 a8 g | f2 8 fis |
  g4 f e | s2. | r8 d g bes g f | e e g bes a g | f f a c bes a | g4 r c8 bes | % 15a
  a8 f a c f,4~ | f g8 a bes c | bes4 \vo c8 d e f \vt | s2.*2 | s2 bes,4~ |
  bes8 c bes a g f | e a g f e d | s2.*3 |
  s2.*4 | f4. e8 f e | % 16a
  f4. 8 8 8 | 4. 8 8 8 | f d f4 e | s2.*3 |
  s2.*3 | s4. c'8 c bes | a4. bes8 a bes |
  a2 4 | g2 c4 | b8 s s2 | s2.*17 | % 17
  s2.*14 |
  s2.*18 | % 19
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\ff | s1*6 |
  s1*9 | % 2
  s1*9 |
  s1 | s\p | s | s\f | s1*5 | % 4
  s1*2 | s1\mf | s | s\f | s1*4 |
  s1*9 | % 6
  s1*5 | s2. s4\p | s2.*10 |
  s2.*18 | % 8
  s2.*13 |
  s2.*15 | % 10
  s2.\ff | s2.*17 |
  s2.*3 | s8 s\mf s2 | s2.*4 | s8 s\f s2 | s2.*9 | % 12
  s2.*10 | s2.\p | s2.*2 |
  s2. | s\f | s2.*10 | s8 s\mf s2 | s2.*3 | % 14
  s2. | s8 s\f s2 | s2.*15 |
  s2.*8 | s2.\p | s2.*7 | % 16
  s2.*2 | s8 s\< s2 | s2.\f | s2.*16 |
  s2.*14 | % 18
  s2.*18 |
}

pianoLHone = \relative {
  \global
  c4 8. 16 2 | bes'4 8. 16 2 | a4 8. 16 gis4 8. 16 | g4 8. 16 4 8. 16 |
  c,8 e g c b b, bes bes' | a b c e, g fis g g, | c e16 g c8 c, b b' a, a' |
  g8 d b g e e' f g | a g a a, d d'16 c b8 b, | c c' gis, gis' a, a' f, f' | % 2a
  e,8 e' b gis e e' r e' | d16 c b a g f e d c8 e g c | f,16 g a b c d e f c8 c, c'4 |
  c,8 ees a c cis, e bes' cis | d, g b d d, d'16 c d8 d, | g4 r8 g fis16 a fis a d8 a |
  g4 r8 e dis16 fis dis fis b8 d, | e r c r d r d r | g,4 r d'16 cis d e f e f g | % 3a
  a4. 8 4 g8 g | fis4 8 8 4. 8 | fis4 f e2 |
  a,4 r e'16 dis e fis g fis g a | b4. 8 4 a8 a | 4 g8 8 4 4 |
  g4 8 8 f4 e \clef treble \vo | f'16 e f g a g a bes c4 s \ov | g16 fis g c, f c bes a bes a g bes c8 8 \clef bass | % 4a
  f,16 e f g a g a bes c4 8 8 | 4 bes8 8 a4 8 8 | 4 c8 d e4 4 |
  c4 cis8 8 d4 4 | g,16 fis g a bes a bes c d4 4 | 4 c8 8 e,16 dis e fis g fis g a |
  b4 8 8 4 a8 8 | 4 g8 8 fis4 4 | e4 r r2 | % 5a
  R1 | c8 e g c b b, bes bes' | a b c e, g fis g g, |
  c8 e16 g c8 c, b b' a, a' | g d b g e e' f g | a g a a, d d'16 c b8 b, |
  c8 c' gis, gis' a, a' f, f' | e, e' b gis e e' r e' | d16 c b a g f e d c8 e g c | % 6a
  f,16 g a b c d e f c8 g e c | d fis a d g,, g' a, a' | f, a d f g, g' g, g' |
  c,8 c'16 b c8 c, a a'16 gis a8 a, | f f'16 e f8 f, g g'16 fis g8 g, | c16 d e f g a b c a,4 a' |
  f,16 g a b c d e f fis, g a b c d e fis | g,8 g'16 16 8 8 8 16 16 8 8 | c,4 r8 c b16 d b d g8 b, | % 7a
  c4 r8 a' gis16 b gis b e8 g, |  % 7b
  a r f r g r g r |
  c, r g' r c, r\fermata \section \key f \major c'4 \time 3/4 |
  a4. g8 f e |
  d bes c4 \clef treble <c' e g> |
  <a f'> <c a> <ees a c> |
  <d bes'>4 <bes' d> r | % 7c
  <b, c>4 <a c> <f c'> |
  <e' g>4 f r |
  r4 <b, g'>16 <d b'> <e c'> <f d'> <c e c'>4 |
  <f cis'>8 <f d'> <e g> r <d f b> r |
  <c c'>4 r r \clef bass |
  f,4 r r |
  bes,4 r r | bes' a f | e f r | r r c8 r | f r g r g r | % 8a
  c,4 r8 c' b bes | bes8. a16 8 r r f | a8. bes16 8 r r bes | a8. g16 8 r r4 | r8 g d' bes g e |
  c2.~ | 4 r r | R2. \clef treble | r4 r <d' g bes> | <cis g' a> <e g cis> <g cis e> | <f d'> <d' f> r | <bes, f' g> <b f' d'> <c f c'> | <d b'> r <b f' d'> |
  \vo f'4 c8 <aes d> <g e'> bes \clef bass | f4 4 4 | bes, bes' r | aes4 4 4 | des, des' r | % 9a
  r4 r aes,16 c ees aes | des,8 r ees r ees r | aes,4 r r8 aes' |
  g4. 8 f e | 8. f16 8 r r4 | des8 r des' r r4 | 8 f des aes f des | <c aes'>8 4 4 8 |
  <c g'>8 4 4 8 | f,4 r8 f' g a | bes4. d,8 8 8 | g4 r e | % 10a
  f4 r8 a a a | bes4 r b | c2 r4 | c,2 b4 | c2 4 \clef treble | <a' f'>4 <c a'> <ees c'> |
  <d bes'>4 <bes g'> <g e'> | <a f'> <c a'> <ees c'> | <d bes'> <bes g'> <g e'> | \vo <a f'> <a c>8. <bes d>16 <a c>8. <bes d>16 | <a c>2. \clef bass \section \key c \major |
  \ov c,4 e g | c16 c, d e f g a bes c8 bes | a g f e d c | bes4 d e | f g g, | c e g | c8 <c, c'>16 16 8 8 8 8 | % 11a
  q8 16 16 8 8 <c d'> q | <c c'>8 16 16 8 8 8 8 | 8 16 16 8 8 <c d'> q | <c c'>4 c8 bes16 c e d c bes | a8 a f' f d d | bes8 8 g' g e e |
  c8 c a' a f f | d8 d bes' bes g g | e e c' c a a | <f a>8 16 16 8 8 8 8 | <f g bes>8 16 16 8 8 8 8 |
  <f a>8 16 16 8 8 8 8 | 8 f c aes f c' | aes4 aes' aes | g r b | c r cis | d r dis | e4. d8 c b | % 12a
  c8 r d r d, r | g4 r b | c r cis | d r dis | e r e, | fis r fis |
  g4 r8 g b d | ees,8 16 16 8 8 8 8 | 8 f16 g aes bes c d ees8 8 | ees,8 16 16 8 8 8 8 | d a'16 b a g fis e d4~ |
  d4 16 a' c d d,4~ | d4 16 g b d d,4~ | 4 16 fis a d d,4~ | % 13a
  d4 16 g b d d,4~ | 8 d'16 16 8 8 8 8 | 8 d,16 e d8 c b a | g4. g'8 8 8 |
  g4. 8 8 8 | 4. g,8 8 8 | \vo e' c \ov d4 4 | g4. 8 8 8 | 4. 8 8 8 | 4. g,8 8 8 |
  \vo e'8 c \ov d4 4 | g, b8 cis fis b | c4 d,8 g b d | c4 cis cis, | % 14
  d8 d' ees8 8 8 8 | d, d' ees8 8 8 8 | d d d, d d d | g, g' ees'8 8 8 8 | d, d' ees8 8 8 8 |
  d,8 d' c c c c | c, c c c c c | c' c c c c c | f,4 r a | bes r b | c r cis | d4. c8 bes a |
  bes8 r c r c, r | f4 r a | bes r b | c r cis | d r d | e r c,~ | % 15a
  c8 c d e f g | a4 a d, | g,8 g bes d g4 | r8 c, e g c4~ | 8 d c bes a g | f4 f r |
  r4 r c | c' c c, | a' f d8 8 | bes'8 8 g g e e | c' c a a f f |
  d'8 8 bes bes g g |c,8 16 16 8 8 8 8 | 8 16 16 8 8 8 8 | 8 16 d c8 bes a g | f'4. 8 8 8 | % 16a
  f4. 8 8 8 | f bes a g f e | d bes c4 c | f4. 8 8 8 | 4. 8 8 8 | 4. e8 f e |
  g8. b16 c4 r8 e, | f4 e8 e f e | g8. b16 c4 r8 e, | f4 e8 8 8 8 | f4.  g8 f g |
  f4. 8 8 8 | g2 4 | g,8 g'16 a g8 f e d | c4 e g | c8 <c, c'>16 16 8 8 8 8 | 8 16 16 8 8 <c d'> q | <c c'>8 16 16 8 8 8 8 | % 17a
  q8 16 16 8 8 <c d'> q | <c c'>4 c8 b16 c e d c b | a8 a f' f d d | b b g' g e e | c c a' a f f | d d b' b g g | e e c' c a a |
  <g a>8 16 16 8 8 8 8 | <f g bes>8 16 16 8 8 8 8 | <f a>8 16 16 8 8 8 8 | 4 r8 f d c | b4 <g' b>2 | c4 g g |
  c,8 e16 g c8 c b b | bes bes a a aes aes | g g, bes ees g g, | aes aes c ees aes aes, | % 18a
  g8 g bes ees g g, | aes c ees a ees, ees' | f, f' f, f' g, g' | aes, aes' aes, aes' ees, ees' | f, f' f, f' g, g' |
  aes,8 aes' aes, aes' bes, bes' | a, a' a, a' a, a' | aes, aes' aes, aes' aes, aes' <g, g'> <g' c e>16 16 8 8 8 8 | <g c>4 <g, g'> <g' d'> |
  c,8 e g c c, c' | bes, e g bes bes, bes' | a, c f a a, a' | f, a c f f, f' | g, g'16 16 8 8 8 8 | % 19a
  g,8 g'16 16 8 8 8 8 | c, e g c c, c' | bes, e g bes bes, bes' | a, c f a a, a' | fis, a ees' fis fis, fis' |
  g,8 g'16 16 8 8 8 8 | g, g'16 16 8 8 8 8 | c,4 r g' | c r g | c r g | c, c' c | c c, c | 2. |
}

pianoLHtwo = \relative {
  \global \vt
  s1*7 |
  s1*9 | % 2
  s1*9 |
  s1 | f4 s c'16 b c d e d e f | s1*7 | % 4
  s1*9 |
  s1*9 | % 6
  s1*6 s2.*10 |
  s2.*18 | % 8
  a,4. s | s2.*12 |
  s2.*13 | f4 f f | f2. | % 10
  s2.*18 |
  s2.*18 | % 12
  s2.*9 | g,4 s2 | s2.*3
  g4 s2 | s2.*15 | % 14
  s2.*85 |
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
%            \new Voice \TempoTrack
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
%            \new Voice \TempoTrack
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
%            \new Voice \TempoTrack
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
%            \new Voice \TempoTrack
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
%            \new Voice \TempoTrack
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
%            \new Voice \TempoTrack
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
    output-suffix = single-sop
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
%            \new Voice \TempoTrack
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
%            \new Voice \TempoTrack
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
%            \new Voice \TempoTrack
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
%            \new Voice \TempoTrack
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
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
%            \new Voice \TempoTrack
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
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
%            \new Voice \TempoTrack
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
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
%            \new Voice \TempoTrack
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
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
%            \new Voice \TempoTrack
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
