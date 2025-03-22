\version "2.25.24"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "An die Sonne"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Franz Schubert"
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
  \key f \major
  \time 2/2
  \partial 16
}

TempoTrack = {
  \tempo "Adagio moto." 4=60
  \set Score.tempoHideNote = ##t
  s16
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "2a" } s16 s1*3
  \textMark \markup { \box "2b" }     s1*5
  \textMark \markup { \box "3a" }     s1*6
  \textMark \markup { \box "3b" }     s1*6
  \textMark \markup { \box "3c" }     s1*6
  \textMark \markup { \box "4a" }     s1*6
  \textMark \markup { \box "4b" }     s1*5
  \textMark \markup { \box "4c" }     s1*5
  \textMark \markup { \box "5a" }     s1*6
  \textMark \markup { \box "5b" }     s1*7
  \textMark \markup { \box "5c" }     s1*8
  \textMark \markup { \box "6a" }     s1*6
  \textMark \markup { \box "6b" }     s1*6
  \textMark \markup { \box "6c" }     s1*9
  \textMark \markup { \box "7a" }     s1*7
  \textMark \markup { \box "7b" }     s1*7
  \textMark \markup { \box "7c" }     s1*5
  \textMark \markup { \box "8a" }     s1*6
  \textMark \markup { \box "8b" }     s1*6
  \textMark \markup { \box "8c" }     s1*7
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s16 | s2... s16\f | s1*7 |
  s1*9 | s2. s4\p | s1 | s2. s4\pp | s1*3 | s2. s4\f | s1*2 | % 3
  s1*4 | s2. s4\pp | s1*4 | s4 s2.\f | s2.. s8\p | s2. s4\f | s1 | s4. s8\p s2 | s2. s4\mf | s1 |
  s1*8 | s4 s2.\p | s1*8 | s2. s4\pp | s1*3 | % 5
  s1*5 | s2 s8. s16\f s4 | s1*3 | s2. s4\ff | s4 s2.\> | s2 s\p | s1*7 | s2. s4\< | s4 s2.\! |
  s2\> s\! | s1 | s4 s\pp s8 s4.\< | s1\> | s2 s\! | s2 s8. s16\f s4 | s1*2 | s2 s8. s16\< s4 | s2. s4\ff | s1\> | s4 s\! s2\p | s1*2 | s2... s16\f | s1*4 | % 7
  s1*12 | s2. s4\p | s1 | s2. s4\pp | s1*4 |
}

soprano = \relative {
  \global
  r16 | r2 r4 r8. a'16 | a4. g8 f8. g16 a8. b16 | c2. r8. 16 |
  bes4. a8 g8. a16 bes8. cis16 | d2. r8. 16 | cis4 4 d e | cis2 d4. r16 16 | f2~4.. 16 |
  e4 f g b, | c2 r | r4 r8. e16 4 4 | 4.. 16 d4 cis | d2 r | r4 r8. fis16 4 4 | % 3a
  fis4. 8 e4 dis | e2 r | R1 | r2 r4 c | d4. 8 4 4 | e,2. bes'4 |
  a2 4 bes | a4. 8 g4 4 | f1~ | 2.\fermata 4 | bes4. 8 8. 16 c8. d16 | c2 r4 c |
  c4. 8 8. 16 d8. ees16 | f2. ees4 | d4. ees8 d4 c | bes2 r | r2 r4 c | bes4. c8 des8. 16 c8. bes16 | % 4a
  a2 r | r2 r4 c | bes4. c8 des8. 16 c8. bes16 | a4 f bes r | r2 r4 r8 ees, |
  c4 f d f | bes4 r r2 | r4 r8 ees, c4 f | d r r f | d' d ees a, |
  bes8(d) f4 2~ | 4 bes, a ees'8(c) | bes4 r r2 | r2 r4 fis' | g4. f8 8(ees) d(c) | bes4 d c r | % 5a
  R1*2 | r4 a a a | bes4. 8 ces4 des | ces2 bes | aes4. 8 bes4 4 | ces2. f,4 |
  ges2 r | R1*3 | r2 r4 des' | 2 bes4 des | 2 aes | ces4 4 bes aes |
  ges2. 4 | 4 f c' ees | des2 c | bes2. 4 | 4 4 aes g | aes2 r8. 16 bes8. c16 | % 6a
  des4. 8 4 ces | bes2 r8. 16 c8. d16 | ees4. 8 4 des | c2 r4 e | f1 | f,2 f |
  ges2 f | ees2. 4 | des2.\fermata aes'4 | 2 f4 aes | 2 ees | ges4. 8 bes4 4 | aes2. des4 | 8(ces) 4 4 4 | 2(bes4) aes |
  ges2 r | R1 | r4 fis4 4 4 | 2(e~) | e dis | e r8. g16 a8. b16 | c4. 8 4 b | % 7a
  a2 r8. 16 b8. cis16 | d4. 8 4 c | b2. dis4 | e1 | e,2 2 | f e | d2. 4 |
  c2.\fermata r8. a'16 | 4. g8 f8. g16 a8. b16 | c2. r8. 16 | bes4. a8 g8. a16 bes8. cis16 | d2. r8. 16 |
  cis4 4 d e | cis2 d4. r16 d | f2~4.. 16 | e4 f g b, | c2 r | r4 r8. e16 4 4 | % 8a
  e4. 8 d4 cis | d2 r | r4 r8. fis16 4 4 | 4. 8 e4 dis | e2 r | R1 |
  r2 r4 c | d4. 8 4 4 | e,2. bes'4 | a2 4 bes | a4. 8 g4 4 | f1~ | 2 r |
}

wordsSop = \lyricmode {
  O Son -- ne, Kö -- ni -- gin der Welt,
  o Son -- ne, Kö -- ni -- gin der Welt,
  die un -- ser dunk -- les Le -- ben
  er hellt, in lich -- ter Ma -- je -- stät;
  er -- hab -- nes Wun -- der ei -- ner Hand,
  die je -- ne Him -- mel aus -- ge -- spannt
  und Ster -- ne hin -- ge -- sät,
  und Ster -- ne,
  und Ster -- ne hin -- ge -- sät! __

  Noch heu -- te seh’ ich dei -- nen Glanz,
  mir lacht in ih -- rem Blu -- men -- kranz
  noch heu -- te die Na -- tur.
  Der Vö -- gel bunt -- ge -- fie -- dert
  Heer singt mor -- gen mir viel -- leicht
  nicht mehr im Wald,
  und auf der Flur, im Wald,
  und auf der Flur.
  Noch heu -- te seh’ ich dei -- nen Glanz, __
  noch dei -- nen Glanz,
  noch heu -- te seh’ ich __ dei -- nen Glanz.
  Der Vö -- gel bunt -- ge -- fie -- dert Heer __
  singt mor -- gen mir viel -- leicht nicht mehr!

  Ich füh -- le, ich füh -- le,
  dass ich ster -- blich bin,
  mein Le -- ben welkt wie Gras ad -- hin,
  wie ein ver -- schmach -- tend Laub.
  Wer weiss, wie un -- er -- war -- tet bald
  des Höch -- sten Wort an mich er -- schallt:
  Komm wie -- der,
  komm wie -- der in den Staub!
  Ich füh -- le, ich füh -- le,
  dass ich ster -- blich bin,
  mein Le -- ben welkt wie Gras da -- hin,
  wie ein ver -- schmach -- tend Laub.
  Wer weiss wie un -- er -- war -- tet bald
  des Höch -- sten Stim -- me mir er -- schallt:
  Komm wie -- der,
  komm wie -- der in den Staub.

  O Son -- ne, Kö -- ni -- gin der Welt,
  o Son -- ne, Kö -- ni -- gin der Welt,
  die un -- ser dunk -- les Le -- ben
  er hellt, in lich -- ter Ma -- je -- stät;
  er -- hab -- nes Wun -- der ei -- ner Hand,
  die je -- ne Him -- mel aus -- ge -- spannt
  und Ster -- ne hin -- ge -- sät,
  und Ster -- ne,
  und Ster -- ne hin -- ge -- sät! __
}

wordsSopMidi = \lyricmode {
  "O " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\no " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\ndie " un "ser " dunk "les " Le "ben "
  "\ner " "hellt, " "in " lich "ter " Ma je "stät; "
  "\ner" hab "nes " Wun "der " ei "ner " "Hand, "
  "\ndie " je "ne " Him "mel " aus ge "spannt "
  "\nund " Ster "ne " hin ge "sät, "
  "\nund " Ster "ne, "
  "\nund " Ster "ne " hin ge "sät! " 

  "\nNoch " heu "te " "seh’ " "ich " dei "nen " "Glanz, "
  "\nmir " "lacht " "in " ih "rem " Blu men "kranz "
  "\nnoch " heu "te " "die " Na "tur. "
  "\nDer " Vö "gel " bunt ge fie "dert "
  "\nHeer " "singt " mor "gen " "mir " viel "leicht "
  "\nnicht " "mehr " "im " "Wald, "
  "\nund " "auf " "der " "Flur, " "im " "Wald, "
  "\nund " "auf " "der " "Flur. "
  "\nNoch " heu "te " "seh’ " "ich " dei "nen " "Glanz, " 
  "\nnoch " dei "nen " "Glanz, "
  "\nnoch " heu "te " "seh’ " "ich "  dei "nen " "Glanz. "
  "\nDer " Vö "gel " bunt ge fie "dert " "Heer " 
  "\nsingt " mor "gen " "mir " viel "leicht " "nicht " "mehr! "

  "\nIch " füh "le, " "ich " füh "le, "
  "\ndass " "ich " ster "blich " "bin, "
  "\nmein " Le "ben " "welkt " "wie " "Gras " ad "hin, "
  "\nwie " "ein " ver schmach "tend " "Laub. "
  "\nWer " "weiss, " "wie " un er war "tet " "bald "
  "\ndes " Höch "sten " "Wort " "an " "mich " er "schallt: "
  "\nKomm " wie "der, "
  "\nkomm " wie "der " "in " "den " "Staub! "
  "\nIch " füh "le, " "ich " füh "le, "
  "\ndass " "ich " ster "blich " "bin, "
  "\nmein " Le "ben " "welkt " "wie " "Gras " da "hin, "
  "\nwie " "ein " ver schmach "tend " "Laub. "
  "\nWer " "weiss " "wie " un er war "tet " "bald "
  "\ndes " Höch "sten " Stim "me " "mir " er "schallt: "
  "\nKomm " wie "der, "
  "\nkomm " wie "der " "in " "den " "Staub. "

  "\nO " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\no " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\ndie " un "ser " dunk "les " Le "ben "
  "\ner " "hellt, " "in " lich "ter " Ma je "stät; "
  "\ner" hab "nes " Wun "der " ei "ner " "Hand, "
  "\ndie " je "ne " Him "mel " aus ge "spannt "
  "\nund " Ster "ne " hin ge "sät, "
  "\nund " Ster "ne, "
  "\nund " Ster "ne " hin ge "sät! " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s16 | s2... s16\f | s1*7 |
  s1*10 | s2. s4\p | s1 | s1\pp | s1*2 | s2. s4\f | s1*2 | % 3
  s1*4 | s2. s4\pp | s1*4 | s4 s2.\f | s2.. s8\p | s2. s4\f | s1 | s4. s8\p s2 | s1*2 |
  s2. s4\mf | s1*7 | s4 s2.\p | s1*8 | s2. s4\pp | s1*3 | % 5
  s1*6 | s2 s8. s16\f s4 | s1 | s2 s8. s16\< s4 | s2. s4\ff | s1 | s2 s\p | s1*7 | s2. s4\< | s4 s2.\! |
  s2\> s\! | s1 | s4 s\pp s8 s4.\< | s1\> | s2 s\! | s1 | s2 s8. s16\f s4 | s1 | s2 s8. s16\< s4 | s2. s4\ff | s1 | s2 s\p | s1*2 | s2... s16\f | s1*4 | % 7
  s1*13 | s2. s4\p | s1 | s1\pp | s1*3 |
}

alto = \relative {
  \global
  r16 | r2 r4 r8. f'16 | 4. c8 a8. c16 f8. d16 | c2. r8. a'16 |
  g4. d8 bes8. d16 g8. e16 | d2. r8. f16 | e4 a bes4 4 | a2 4. r8 | r4 r8. 16 b4.. 16 |
  c4 c g f | e2 r | r4 r8. g16 4 4 | 4.. 16 a4 g | f2 r | r4 r8. a16 4 4 | % 3a
  a4. 8 b4 a | g2 r | R1*2 | r2 r4 g | c4. 8 4 e, |
  f2. 4 | 4. 8 e4 c | 1~ | 2.\fermata f4 | 4. 8 8. 16 8. 16 | 2 r4 4 |
  f4. 8 8. 16 8. 16 | 2(g4) a | bes4. g8 f4 8(ees) | d2 r | r2 r4 g | 4. 8 8. 16 8. 16 | % 4a
  f2 r | r2 r4 g | 4. 8 8. 16 8. 16 | f4 f f r | r2 r4 r8 bes, |
  bes4 a bes f' | f r r2 | r4 r8 bes,8 4 a | bes4 r r2 | R1 |
  r2 r4 f' | d' d ees a, | bes8(d) f,4 2~ | 4 bes a c | b4. 8 c4 g | f e f r | % 5a
  R1*2 | r4 ees4 4 4 | des4. 8 ees4 fes | ees2 des | ees4. 8 4 4 | 2 ces |
  bes2 r | R1*3 | r2 r4 ges' | 2 4 4 | des2 2 | ces4 4 des4 4 |
  des2. 4 | c c ees ges | f2 ges | f2. 4 | e e e e | f2 r | % 6a
  r2 r8. des16 8. 16 | 4. 8 bes'4 aes | g2 r8. ees16 8. 16 | ees4. 8 c'4 bes | aes2 r | r des, |
  ees2 des | des c | des2.\fermata 4 | 2 4 4 | aes2 2 | des4. 8 ees4 4 | f2. aes4 | ges4 4 4 aes | f2. 4 |
  ees2 r | R1 | r4 dis4 4 4 | b1~ | 2 2 | 2 r | r r8. c16 8. 16 | % 7a
  c4. 8 a'4 g | fis2 r8. d16 8. 16 | 4. 8 b'4 a | g2 r | r c, | d c | c b |
  c2.\fermata r8. f16 | 4. c8 a8. c16 f8. d16 | c2. r8. a'16 |g4. d8 bes8. d16 g8. e16 | d2. r8. f16 |
  e4 a bes4 4 | a2 4. r8 | r4 r8. a16 b4.. 16 | c4 c g f | e2 r | r4 r8. g16 4 4 | % 8a
  g4. 8 a4 g | f2 r | r4 r8. a16 4 4 | 4. 8 b4 a | g2 r | R1 |
  R1 | r2 r4 g | c4. 8 4 e, | f2. 4 | 4. 8 e4 c | 1~ | 2 r |
}

wordsAlto = \lyricmode {
  O Son -- ne, Kö -- ni -- gin der Welt,
  o Son -- ne, Kö -- ni -- gin der Welt,
  die un -- ser dunk -- les Le -- ben
  er hellt, in lich -- ter Ma -- je -- stät;
  er -- hab -- nes Wun -- der ei -- ner Hand,
  die je -- ne Him -- mel aus -- ge -- spannt
  und Ster -- ne hin -- ge -- sät,
  und Ster -- ne hin -- ge -- sät! __

  Noch heu -- te seh’ ich dei -- nen Glanz,
  mir lacht in ih -- rem Blu -- men -- kranz
  noch heu -- te die Na -- tur.
  Der Vö -- gel bunt -- ge -- fie -- dert
  Heer singt mor -- gen mir viel -- leicht
  nicht mehr im Wald,
  und auf der Flur, im Wald,
  und auf der Flur.
  Noch heu -- te seh’ ich dei -- nen Glanz,
  noch dei -- nen Glanz,
  noch heu -- te dei -- nen Glanz.
  Der Vö -- gel bunt -- ge -- fie -- dert Heer __
  singt mor -- gen mir viel -- leicht nicht mehr!

  Ich füh -- le, ich füh -- le,
  dass ich ster -- blich bin,
  mein Le -- ben welkt wie Gras ad -- hin,
  wie ein ver -- schmach -- tend Laub.
  Wer weiss, wie un -- er -- war -- tet bald
  des Höch -- sten Wort an mich er -- schallt:
  Komm wie -- der in den Staub!
  Ich füh -- le, ich füh -- le,
  dass ich ster -- blich bin,
  mein Le -- ben welkt wie Gras da -- hin,
  wie ein ver -- schmach -- tend Laub.
  Wer weiss wie un -- er -- war -- tet bald
  des Höch -- sten Stim -- me mir er -- schallt:
  Komm wie -- der in den Staub.

  O Son -- ne, Kö -- ni -- gin der Welt,
  o Son -- ne, Kö -- ni -- gin der Welt,
  die un -- ser dunk -- les Le -- ben
  er hellt, in lich -- ter Ma -- je -- stät;
  er -- hab -- nes Wun -- der ei -- ner Hand,
  die je -- ne Him -- mel aus -- ge -- spannt
  und Ster -- ne hin -- ge -- sät,
  und Ster -- ne hin -- ge -- sät! __
  und Ster -- ne hin -- ge -- sät! __
}

wordsAltoMidi = \lyricmode {
  "O " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\no " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\ndie " un "ser " dunk "les " Le "ben "
  "\ner " "hellt, " "in " lich "ter " Ma je "stät; "
  "\ner" hab "nes " Wun "der " ei "ner " "Hand, "
  "\ndie " je "ne " Him "mel " aus ge "spannt "
  "\nund " Ster "ne " hin ge "sät, "
  "\nund " Ster "ne " hin ge "sät! " 

  "\nNoch " heu "te " "seh’ " "ich " dei "nen " "Glanz, "
  "\nmir " "lacht " "in " ih "rem " Blu men "kranz "
  "\nnoch " heu "te " "die " Na "tur. "
  "\nDer " Vö "gel " bunt ge fie "dert "
  "\nHeer " "singt " mor "gen " "mir " viel "leicht "
  "\nnicht " "mehr " "im " "Wald, "
  "\nund " "auf " "der " "Flur, " "im " "Wald, "
  "\nund " "auf " "der " "Flur. "
  "\nNoch " heu "te " "seh’ " "ich " dei "nen " "Glanz, "
  "\nnoch " dei "nen " "Glanz, "
  "\nnoch " heu "te " dei "nen " "Glanz. "
  "\nDer " Vö "gel " bunt ge fie "dert " "Heer " 
  "\nsingt " mor "gen " "mir " viel "leicht " "nicht " "mehr! "

  "\nIch " füh "le, " "ich " füh "le, "
  "\ndass " "ich " ster "blich " "bin, "
  "\nmein " Le "ben " "welkt " "wie " "Gras " ad "hin, "
  "\nwie " "ein " ver schmach "tend " "Laub. "
  "\nWer " "weiss, " "wie " un er war "tet " "bald "
  "\ndes " Höch "sten " "Wort " "an " "mich " er "schallt: "
  "\nKomm " wie "der " "in " "den " "Staub! "
  "\nIch " füh "le, " "ich " füh "le, "
  "\ndass " "ich " ster "blich " "bin, "
  "\nmein " Le "ben " "welkt " "wie " "Gras " da "hin, "
  "\nwie " "ein " ver schmach "tend " "Laub. "
  "\nWer " "weiss " "wie " un er war "tet " "bald "
  "\ndes " Höch "sten " Stim "me " "mir " er "schallt: "
  "\nKomm " wie "der " "in " "den " "Staub. "

  "\nO " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\no " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\ndie " un "ser " dunk "les " Le "ben "
  "\ner " "hellt, " "in " lich "ter " Ma je "stät; "
  "\ner" hab "nes " Wun "der " ei "ner " "Hand, "
  "\ndie " je "ne " Him "mel " aus ge "spannt "
  "\nund " Ster "ne " hin ge "sät, "
  "\nund " Ster "ne " hin ge "sät! " 
  "\nund " Ster "ne " hin ge "sät! " 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s16 | s1 | s2... s16\f | s1*6 |
  s1*8 | s2. s4\p | s1*3 | s1\pp | s1*2 | s2. s4\f | s1*2 | % 3
  s1*4 | s2. s4\pp | s1*4 | s4 s2.\f | s2.. s8\p | s2. s4\f | s1 | s4. s8\p s2 | s1 | s2. s4\f |
  s1*8 | s4 s2.\p | s1*8 | s2. s4\pp | s1*3 | % 5
  s1*6 | s2 s8. s16\f s4 | s1 | s2 s8. s16\< s4 | s2. s4\ff | s1 | s2 s\p | s1*7 | s2. s4\< | s4 s2.\! |
  s2\> s\! | s1 | s4 s\pp s8 s4.\< | s1\> | s2 s\! | s1 | s2 s8. s16\f s4 | s1 | s2 s8. s16\< s4 | s2. s4\ff | s1 | s2 s\p | s1*3 | s2... s16\f | s1*3 | % 7
  s1*11 | s2. s4\p | s1*3 | s1\pp | s1*3 |
}

tenor = \relative {
  \global
  r16 | R1 | r2 r4 r8. f16 | g4. 8 e8. f16 g8. a16 |
  bes2. r8. g16 | a4. g8 f8. g16 a8. b16 | cis4 e f g | e4. 8 g4. r16 f, | d'2~4.. 16 |
  c4 4 4 d | c2 r | r4 r8. 16 4 4 | cis4.. 16 f4 e | d2 r | r4 r8. 16 4 4 | % 3a
  dis4. 8 g4 fis | e2 r | r r4 e | f4. 8 4 4 | g,2. 4 | 4. 8 4 4 |
  f2. d'4 | c4. 8 4 bes | a1~ | 2.\fermata f4 | bes4. 8 8. 16 a8. bes16 | a2 r4 4 |
  a4. 8 8. 16 bes8. c16 | d2. c4 | bes4. 8 4 a | bes2 r | r r4 c | des4. c8 bes8. 16 c8. d16 | % 4a
  c2 r | r r4 c | des4. c8 bes8. 16 c8. d16 | c4 a bes r | r2 r4 r8 g |
  f4 f f a | bes r r2 | r4 r8 g f4 f | f r r2 | r r4 f |
  d'4 d ees a, | bes8(d) f4 2~ | 4 bes, a ees'8(c) | bes4 r r c | d4. 8 c4 d8(ees) | d4 bes a r | % 5a
  R1*2 | r4 c c c | bes4. ges'8 4 bes, | ces2 ges | aes4. 8 g4 g | aes2 2 |
  ges2 r | R1*3 | r2 r4 bes | 2 des4 bes | aes2 des | ges,4 4 4 f |
  ges2. 4 | c f, f' c | des2 a | bes2. 4 | g g c bes | aes2 r | % 6a
  r2 r8. f16 ges8. aes16 | bes4. 8 4 4 | 2 r8. g16 aes8. bes16 | c4. 8 4 4 | 2 r | r des4(aes) |
  aes2 2 | 2. 4 | f2.\fermata 4 | 2 aes4 f | ees2 aes | ges4. 8 4 4 | f2. f'4 | ees4 4 4 4 | d2. 4 |
  ees2 r | R1 | r4 a, a a | g1 | fis | g2 r | r r8. e16 f8. g16 | % 7a
  a4. 8 4 4 | 2 r8. fis16 g8. a16 | b4. 8 4 4 | 2 r | r c4(g) | 2 2 | 2. 4 |
  e2.\fermata r4 | r2 r4 r8. f16 | g4. f8 e8. f16 g8. a16 | bes2. r8. g16 | a4. g8 f8. g16 a8. b16 |
  cis4 e f g | e4. 8 g4. r16 f, | d'2~4.. 16 | c4 c c d | c2 r | r4 r8. 16 4 4 | % 8a
  cis4. 8 f4 e | d2 r | r4 r8. 16 4 4 | dis4. 8 g4 fis | e2 r | r2 r4 e |
  f4. 8 4 4 | g,2. 4 | 4. 8 4 4 | f2. d'4 | c4. 8 4 b | a1~ | 2 r |
}

wordsTenor = \lyricmode {
  O Son -- ne, Kö -- ni -- gin der Welt,
  o Son -- ne, Kö -- ni -- gin der Welt,
  die un -- ser dunk -- les Rund
  er hellt, in lich -- ter Ma -- je -- stät;
  er -- hab -- nes Wun -- der ei -- ner Hand,
  die je -- ne Him -- mel aus -- ge -- spannt
  und Ster -- ne hin -- ge -- sät,
  und Ster -- ne hin -- ge -- sät,
  und Ster -- ne hin -- ge -- sät! __

  Noch heu -- te seh’ ich dei -- nen Glanz,
  mir lacht in ih -- rem Blu -- men -- kranz
  noch heu -- te die Na -- tur.
  Der Vö -- gel bunt -- ge -- fie -- dert
  Heer singt mor -- gen mir viel -- leicht
  nicht mehr im Wald,
  und auf der Flur, im Wald,
  und auf der Flur.
  Noch heu -- te seh’ ich dei -- nen Glanz,
  noch dei -- nen Glanz,
  noch heu -- te seh’ ich dei -- nen Glanz.
  Der Vö -- gel bunt -- ge -- fie -- dert Heer __
  singt mor -- gen mir viel -- leicht nicht mehr!

  Ich füh -- le, ich füh -- le,
  dass ich ster -- blich bin,
  mein Le -- ben welkt wie Gras ad -- hin,
  wie ein ver -- schmach -- tend Laub.
  Wer weiss, wie un -- er -- war -- tet bald
  des Höch -- sten Wort an mich er -- schallt:
  Komm wie -- der in den Staub!
  Ich füh -- le, ich füh -- le,
  dass ich ster -- blich bin,
  mein Le -- ben welkt wie Gras da -- hin,
  wie ein ver -- schmach -- tend Laub.
  Wer weiss wie un -- er -- war -- tet bald
  des Höch -- sten Stim -- me mir er -- schallt:
  Komm wie -- der in den Staub.

  O Son -- ne, Kö -- ni -- gin der Welt,
  o Son -- ne, Kö -- ni -- gin der Welt,
  die un -- ser dunk -- les Rund
  er hellt, in lich -- ter Ma -- je -- stät;
  er -- hab -- nes Wun -- der ei -- ner Hand,
  die je -- ne Him -- mel aus -- ge -- spannt
  und Ster -- ne hin -- ge -- sät,
  und Ster -- ne hin -- ge -- sät,
  und Ster -- ne hin -- ge -- sät! __
}

wordsTenorMidi = \lyricmode {
  "O " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\no " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\ndie " un "ser " dunk "les " "Rund "
  "\ner " "hellt, " "in " lich "ter " Ma je "stät; "
  "\ner" hab "nes " Wun "der " ei "ner " "Hand, "
  "\ndie " je "ne " Him "mel " aus ge "spannt "
  "\nund " Ster "ne " hin ge "sät, "
  "\nund " Ster "ne " hin ge "sät, "
  "\nund " Ster "ne " hin ge "sät! " 

  "\nNoch " heu "te " "seh’ " "ich " dei "nen " "Glanz, "
  "\nmir " "lacht " "in " ih "rem " Blu men "kranz "
  "\nnoch " heu "te " "die " Na "tur. "
  "\nDer " Vö "gel " bunt ge fie "dert "
  "\nHeer " "singt " mor "gen " "mir " viel "leicht "
  "\nnicht " "mehr " "im " "Wald, "
  "\nund " "auf " "der " "Flur, " "im " "Wald, "
  "\nund " "auf " "der " "Flur. "
  "\nNoch " heu "te " "seh’ " "ich " dei "nen " "Glanz, "
  "\nnoch " dei "nen " "Glanz, "
  "\nnoch " heu "te " "seh’ " "ich " dei "nen " "Glanz. "
  "\nDer " Vö "gel " bunt ge fie "dert " "Heer " 
  "\nsingt " mor "gen " "mir " viel "leicht " "nicht " "mehr! "

  "\nIch " füh "le, " "ich " füh "le, "
  "\ndass " "ich " ster "blich " "bin, "
  "\nmein " Le "ben " "welkt " "wie " "Gras " ad "hin, "
  "\nwie " "ein " ver schmach "tend " "Laub. "
  "\nWer " "weiss, " "wie " un er war "tet " "bald "
  "\ndes " Höch "sten " "Wort " "an " "mich " er "schallt: "
  "\nKomm " wie "der " "in " "den " "Staub! "
  "\nIch " füh "le, " "ich " füh "le, "
  "\ndass " "ich " ster "blich " "bin, "
  "\nmein " Le "ben " "welkt " "wie " "Gras " da "hin, "
  "\nwie " "ein " ver schmach "tend " "Laub. "
  "\nWer " "weiss " "wie " un er war "tet " "bald "
  "\ndes " Höch "sten " Stim "me " "mir " er "schallt: "
  "\nKomm " wie "der " "in " "den " "Staub. "

  "\nO " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\no " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\ndie " un "ser " dunk "les " "Rund "
  "\ner " "hellt, " "in " lich "ter " Ma je "stät; "
  "\ner" hab "nes " Wun "der " ei "ner " "Hand, "
  "\ndie " je "ne " Him "mel " aus ge "spannt "
  "\nund " Ster "ne " hin ge "sät, "
  "\nund " Ster "ne " hin ge "sät, "
  "\nund " Ster "ne " hin ge "sät! " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s16 | s1 | s2... s16\f | s1*6 |
  s1*7 | s2. s4\p | s1*3 | s2. s4\pp | s1*3 | s2. s4\f | s1*2 | % 3
  s1*3 | s2. s4\p | s1*5 | s4 s2.\f | s2.. s8\p | s2. s4\f | s1 | s4. s8\p s2 | s1*2 |
  s1 | s2. s4\mf | s1*4 | s4 s2.\p | s1*10 | s2. s4\pp | s1*3 | % 5
  s1*6 | s2 s8. s16\f s4 | s1 | s2 s8. s16\< s4 | s2. s4\ff | s1 | s2 s\p | s1*7 | s2. s4\< | s4 s2.\! |
  s1\> | s2 s\! | s2\pp s8 s4.\< | s1\> | s2 s\! | s1 | s2 s8. s16\f s4 | s1 | s2 s8. s16\< s4 | s2. s4\ff | s1 | s2 s\p | s1*3 | s2... s16\f | s1*3 | % 7
  s1*10 | s2. s4\p | s1*3 | s2. s4\pp | s1*4 |
}

bass = \relative {
  \global
  r16 | R1 | r2 r4 r8. d16 | e4. d8 c8. d16 e8. fis16 |
  g2. r8. e16 | f4. e8 d8. e16 f8. gis16 | a4 4 4 g | 4. 8 f4. r8 | r4 r8. f16 g4.. 16 |
  c4 a e g | c,4.. 16 4 4 | bes'2. 4 | a2. 4 | d,4.. 16 4 4 | c'2. 4 | % 3a
  b2. b,4 | c2 r4 e | g4. 8 4 bes, | a2. 4 | bes4. 8 4 b | c2. 4 |
  d2 4 bes | c4. 8 4 4 | f1~ | 2.\fermata 4 | d4. 8 8. 16 c8. bes16 | f'2 r4 4 |
  f4. 8 8. 16 8. ees16 | d2(ees4) f | g4. ees8 f4 f | bes,2 r4 bes' | e,4. 8 4 4 | 2. 4 | % 4a
  f2 r4 des' | e,4. 8 4 4 | 2. 4 | f ees d r | r2 r4 r8 ees |
  f4 f, bes ees | d4 r r2 | r4 r8 ees f4 f, | bes4 r r2 | R1 |
  R1 | r2 r4 f' | d' d ees8(c) a4 | bes8(d) f,4 f aes | g4. 8 c4 c, | f4 f f r | % 5a
  r4 f f f | ges4. 8 4 4 | 1~ | 1~ | 2 ges, | ces4. 8 bes4 4 | aes2 des |
  ges,2 r | R1*3 | r2 r4 ges' | 2 4 4 | f2 f | ees4 4 des ces |
  bes2. 4 | a a a a | bes2 ees | des2. 4 | c c c c | f2 r | % 6a
  r2 r8. des16 ees8. f16 | ges4. 8 4 f | ees2 r8. 16 f8. g16 | aes4. 8 4 g | f2 r | r des |
  c2 des | aes2. 4 | des2.\fermata 4 | 2 4 4 | c2 c | bes4. 8 c4 c | des2. r4 | r2 r4 aes | bes2. 4 |
  ees4. des8 ces4 bes | a2 bes | 2. 4 | 1 | 1 | e2 r | r r8. c16 d8. e16 | % 7a
  f4. 8 4 e | d2 r8. 16 e8. fis16 | g4. 8 4 fis | e2 r | r c | b2 c | g2. 4 |
  c2.\fermata r4 | r2 r4 r8. d16 | e4. d8 c8. d16 e8. fis16 | e2. r8. c16 | d4. e8 d8. e16 f8. gis16 |
  a4 a a g | 4. 8 f4. r8 | r4 r8. 16 g4.. 16 | c4 a e g | c,4.. 16 4 4 | bes'2. 4 | % 8a
  a2. 4 | d,4. 8 4 4 | c'2. 4 | b2. b,4 | c2 r4 e | g4. 8 4 bes, |
  a2. 4 | bes4. 8 4 b | c2. 4 | d2 4 bes | c4. 8 4 4 | f1~ | 2 r |
  \bar "|."
}

wordsBass = \lyricmode {
  O Son -- ne, Kö -- ni -- gin der Welt,
  o Son -- ne, Kö -- ni -- gin der Welt,
  die un -- ser dunk -- les Rund
  er hellt, in lich -- ter Ma -- je -- stät;
  er -- hab -- nes Wun -- der ei -- ner Hand,
  die je -- ne Him -- mel aus -- ge -- spannt
  und Ster -- ne hin -- ge -- sät,
  und Ster -- ne hin -- ge -- sät,
  und Ster -- ne,
  und Ster -- ne hin -- ge -- sät! __

  Noch heu -- te seh’ ich dei -- nen Glanz,
  mir lacht in ih -- rem Blu -- men -- kranz
  noch heu -- te die Na -- tur.
  Der Vö -- gel bunt -- ge -- fie -- dert
  Heer singt mor -- gen mir viel -- leicht
  nicht mehr im Wald,
  und auf der Flur, im Wald,
  und auf der Flur.
  Noch heu -- te seh’ ich dei -- nen Glanz,
  noch heu -- te seh’ ich dei -- nen Glanz.
  Der Vö -- gel bunt -- ge -- fie -- dert Heer __
  singt mor -- gen mir viel -- leicht nicht mehr!

  Ich füh -- le, ich füh -- le,
  dass ich ster -- blich bin,
  mein Le -- ben welkt wie Gras ad -- hin,
  wie ein ver -- schmach -- tend Laub.
  Wer weiss, wie un -- er -- war -- tet bald
  des Höch -- sten Wort an mich er -- schallt:
  Komm wie -- der in den Staub!
  Ich füh -- le, ich füh -- le,
  dass ich ster -- blich bin,
  mein Le -- ben welkt wie Gras da -- hin,
  wie ein ver -- schmach -- tend Laub.
  Wer weiss wie un -- er -- war -- tet bald
  des Höch -- sten Stim -- me mir er -- schallt:
  Komm wie -- der in den Staub.

  O Son -- ne, Kö -- ni -- gin der Welt,
  o Son -- ne, Kö -- ni -- gin der Welt,
  die un -- ser dunk -- les Rund
  er hellt, in lich -- ter Ma -- je -- stät;
  er -- hab -- nes Wun -- der ei -- ner Hand,
  die je -- ne Him -- mel aus -- ge -- spannt
  und Ster -- ne hin -- ge -- sät,
  und Ster -- ne hin -- ge -- sät,
  und Ster -- ne,
  und Ster -- ne hin -- ge -- sät! __
}

wordsBassMidi = \lyricmode {
  "O " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\no " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\ndie " un "ser " dunk "les " "Rund "
  "\ner " "hellt, " "in " lich "ter " Ma je "stät; "
  "\ner" hab "nes " Wun "der " ei "ner " "Hand, "
  "\ndie " je "ne " Him "mel " aus ge "spannt "
  "\nund " Ster "ne " hin ge "sät, "
  "\nund " Ster "ne " hin ge "sät, "
  "\nund " Ster "ne, "
  "\nund " Ster "ne " hin ge "sät! " 

  "\nNoch " heu "te " "seh’ " "ich " dei "nen " "Glanz, "
  "\nmir " "lacht " "in " ih "rem " Blu men "kranz "
  "\nnoch " heu "te " "die " Na "tur. "
  "\nDer " Vö "gel " bunt ge fie "dert "
  "\nHeer " "singt " mor "gen " "mir " viel "leicht "
  "\nnicht " "mehr " "im " "Wald, "
  "\nund " "auf " "der " "Flur, " "im " "Wald, "
  "\nund " "auf " "der " "Flur. "
  "\nNoch " heu "te " "seh’ " "ich " dei "nen " "Glanz, "
  "\nnoch " heu "te " "seh’ " "ich " dei "nen " "Glanz. "
  "\nDer " Vö "gel " bunt ge fie "dert " "Heer " 
  "\nsingt " mor "gen " "mir " viel "leicht " "nicht " "mehr! "

  "\nIch " füh "le, " "ich " füh "le, "
  "\ndass " "ich " ster "blich " "bin, "
  "\nmein " Le "ben " "welkt " "wie " "Gras " ad "hin, "
  "\nwie " "ein " ver schmach "tend " "Laub. "
  "\nWer " "weiss, " "wie " un er war "tet " "bald "
  "\ndes " Höch "sten " "Wort " "an " "mich " er "schallt: "
  "\nKomm " wie "der " "in " "den " "Staub! "
  "\nIch " füh "le, " "ich " füh "le, "
  "\ndass " "ich " ster "blich " "bin, "
  "\nmein " Le "ben " "welkt " "wie " "Gras " da "hin, "
  "\nwie " "ein " ver schmach "tend " "Laub. "
  "\nWer " "weiss " "wie " un er war "tet " "bald "
  "\ndes " Höch "sten " Stim "me " "mir " er "schallt: "
  "\nKomm " wie "der " "in " "den " "Staub. "

  "\nO " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\no " Son "ne, " Kö ni "gin " "der " "Welt, "
  "\ndie " un "ser " dunk "les " "Rund "
  "\ner " "hellt, " "in " lich "ter " Ma je "stät; "
  "\ner" hab "nes " Wun "der " ei "ner " "Hand, "
  "\ndie " je "ne " Him "mel " aus ge "spannt "
  "\nund " Ster "ne " hin ge "sät, "
  "\nund " Ster "ne " hin ge "sät, "
  "\nund " Ster "ne, "
  "\nund " Ster "ne " hin ge "sät! " 
}

pianoRHone = \relative {
  \global
  <f' a c f>16 | 4. r16 <c g' c>16 4. r16 <c f a> |
  q4. <c g'>8 <a f'>8. <c g'>16 <f a>8. <d b'>16 |
  <c c'>2. r8. <ees a c>16 |
  <d g bes>4. <d a'>8 <bes g'>8. <d a'>16 <g bes>8. <e cis'>16 | % 2b
  <d d'>2. r8. <f d'>16 |
  <e cis'>4 <e a cis> <f bes d> <g bes e> |
  <e a cis>2 <d a' d>4. r16 d' |
  \vo f2~4.. 16 |
  e4 \ov <e, c' f> <g c g'> <d f b> | % 3a
  <c e c'>2 r |
  r4 r8. <g' c e>16 4 4 |
  <g cis e>4.. 16 <f a d>4 <e g c> |
  <d f d'>2 r |
  r4 r8. <a' d fis>16 4 4 |
  <a dis fis>4.. 16 <g b e>4 <fis a dis> | % 3b
  <e g e'>2 r | r2 r4 e |
  <c f>8 4 4 4 8 |
  <d f g>8 4 4 4 8 |
  <e g c>8 4 4 4 <e g bes>8 |
  <f a>8 4 4 8(<d f bes>) q~( | % 3c
  <c f a>8) 4 8(<bes e g>) 4 8 |
  <a c f>8 4 4 4 8 |
  q2.\fermata f'4 |
  <f bes>4. 8 8. 16 <f c'>8. <f d'>16 |
  <f c'>4 <f f'>8. 16 2 |
  <f c'>4. 8 8. 16 <f d'>8. <f ees'>16 | % 4a
  \vo f'2. ees4 |
  d4. ees8 d4 c |
  c2 \ov r |
  r2 r4 <g c> |
  <g bes>4. <g c>8 <f des'>8. 16 <g c>8. <g bes>16 |
  <f a>2 r | % 4b
  r2 r4 <g c> |
  <g bes>4. <g c>8 <g des'>8. 16 <g c>8. <g bes>16 |
  <f a>4-. f-. <f bes>-. r8. bes,16 |
  \tuplet 3/2 {bes8 f' aes} \tuplet 3/2 {8-. 8-. 8-.} g4-. r8 <g, bes ees> |
  \vo c8 r f r d r f4 \ov | % 4c
  <f bes>4 r8 bes, \tuplet 3/2 {bes f' aes} \tuplet 3/2 {8 8 8} |
  g4 r8 <bes, ees> <bes c>4 <a f'> |
  <bes d>8(f') f-. f-. f-. f-. f-. f-. |
  bes,8(f' bes, f'-.) a,(f' ees f) |
  d8 f bes, f' a, f' ees f | % 5a
  d8 f <bes, d> f' <a, c ees> f' q f |
  <bes, d>8 f' q f <a, c ees> f' q f |
  <bes, d>8 f' q f <a, c f>4 <c' fis> |
  \vo g'4. e8 8 ees d c |
  \ov <f, bes>4(<e d'> <f c'>) r |
  R1*2 | % 5b
  r4 <c ees a> q q |
  <bes des bes'>4. <des ges bes>8 <ees ges ces>4 <fes des'> |
  <ees ces'>2 <des bes'> |
  <ees aes>4. 8 <ees bes'>4 q |
  \vo ces'2. f,4 |
  ges2. des'4 | % 5c
  des2(bes4) des |
  des2(aes4) des |
  ces2(bes4 aes) |
  \ov ges8(des bes des) ges(bes des des,) |
  des'(des, des' des, bes' des, des' des,) |
  des'8(des, des' des, aes' des, des' des,) |
  ces'8(ces, ces' ces, bes' des, aes' des,) |
  ges8(des bes des ges des ges des) | % 6a
  ges8(c, f c c' ees, ees' ges,) |
  f8(des' f, des') ges,(c ges c) |
  f,8(bes f bes f bes f bes) |
  e,8(bes' e, bes') e,(aes e g) |
  <f aes>2 r8. aes16 bes8. c16 |
  des4. 8 4 <des, ces'> | % 6b
  <des bes'>2 r8. bes'16 \vo c8. d16 |
  ees4. 8 4 des |
  \ov <ees, c'>2 r4 \vo e' |
  f1( |
  \ov f,2) \vo f |
  \ov <ees ges>2 <des f> | % 6c
  \vo ees1 |
  des2.\fermata aes'4 |
  2(f4) aes |
  aes2(ees4) aes |
  \ov <des, ges>4. 8 <ees bes'>4 4 |
  \vo aes2. des4 |
  8(ces) 4 4 4 |
  ces2(bes4 aes) |
  \ov <ees ges>2 r | % 7a
  R1 |
  r4 \vo <dis fis>4 4 4 |
  \ov fis2 e~ |
  e2 dis |
  e2  r8. g16 a8. b16 |
  c4. 8 4 <c, b'> |
  <c a'>2 r8. a'16 \vo b8. cis16 | % 7b
  \ov <fis, d'>2 \vo d'4 c |
  \ov <d, b'>2. \vo dis'4 |
  e1( |
  \ov e,2) <c e> |
  <d f>2 <c e> |
  d1 |
  \lh <e, g c>2.\fermata \rh \ov r8. <f' a>16 | % 7c
  q4. <c g'>8 <a f'>8. <c g'>16 <f a>8. <d b'>16 |
  <c c'>2. r8. <ees a c>16 |
  <d g bes>4. <d a'>8 <bes g'>8. <d a'>16 <g bes>8. <e cis'>16 |
  <d d'>2. r8. <f d'>16 |
  <e cis'>4 <e a c> <f bes d> <g bes e> | % 8a
  <e a cis>2 <d a' d>4 r8. d'16 |
  \vo f2~4.. 16 |
  \ov <c e>4 <f, c' f> <g c g'> <d f b> |
  <c e c'>2 r |
  r4 r8. <g' c e>16 4 4 |
  <g cis e>4. 8 <f a d>4 <e g c> | % 8b
  <d f d'>2 r |
  r4 r8. <a' d fis>16 4 4 |
  <a dis fis>4.. 16 <g b e>4 <fis a d> |
  <e g e'>2 r | r2 r4 e( |
  <c f>8) 4 4 4 8 | % 8c
  <d f g>8 4 4 4 8 |
  <e g c>8 4 4 4 <e g bes>8 |
  <f a>8 4 4 8(<d f bes>) q~( |
  <c f a>8) 4 8 <bes e f>8 4 8 |
  <a c f>8 4 4 4 8 |
  q2 r |
}

pianoRHtwo = \relative {
  \global \vt
  s16 | s1*7 | r4 r8. a'16 b4.. 16 |
  c4 s2. | s1*17 | % 3
  s1 | f,2(g4) a | bes4. g8 f4 8(ees) d2 s | s1*7 | s8 r s r s r s4 | s1*4 |
  s1*4 | b'2 c4 <<{f,8 ees} \new Voice {\vth g4}>> | s1*7 | ees2 ces | bes2. ges'4 | 2. 4 | des2. 4 | ces2 des | s1*4 | % 5
  s1*6 | % 6a
  s1 | s2. aes'4 | g2 r4 ees | s2. bes'4 | aes2 r | s des, |
  s1 | des2(c) | s2. des4 | 2. 4 | aes2. 4 | s1 | f'2. <f aes>4 | <ees ges>4 4 4 ees | <d f>2. 4 |
  s1*7 | s2. g4 | s2 r4 d | s2. a'4 | g2 r | s1*3 | s1*5 | % 7
  s1*2 | r4 r8. a16 b4.. 16 | s1*16 |  
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s16\f | s1*8 |
  s1*8 | s2. s4\p | s1*6 | s2. s4\f | s1*2 | % 3
  s1*3 | s2. s4\pp | s1*5 | s4 s2.\f | s2.. s8\p | s2. s4\f | s1 | s4. s8\p s2 | s1*2 |
  s1*3 | s2. s4\f | s1*2 | s4 s2.\p | s1 | s\p | s1*4 | s2. s4\p | s1*7 | % 5
  s1 | s\< | s\! | s1*2 | s2 s8. s16\f s4 | s1*2 | s2 s8. s16\< s4 | s2. s4\ff | s1\> | s2 s\p | s1*7 | s2. s4\< | s2. s4\! |
  s1\> | s | s\pp | s\> | s2 s\! | s s8. s16\f s4 | s1*2 | s2 s8. s16\< s4 | s2. s4\ff | s1\< | s2 s\p | s1*2 | s2... s16\f | s1*4 | % 7
  s1*11 | s2. s4\p | s1*7 |

}

pianoLHone = \relative {
  \global
  <f a c>16 | 4. r16 <e g>16 4. r16 <f, f'> |
  q2. r8. <d' f>16 |
  <e g>4. <d f>8 <c e>8. <d f>16 <e g>8. <fis a>16 |
  <g bes>2 r4 r8. <e g>16 | % 2b
  <f a>4. <e g>8 <d f>8. <e g>16 <f a>8. <gis b>16 |
  <a cis>4 <a, a'>2 <g g'>4 |
  q2 <f f'>4. r16 f' |
  \vo d'2~4.. 16 |
  c4 c c \ov <g, g'> | % 3a
  <c, c'>4.. 16 4 4 |
  <bes' bes'>2. 4 |
  <a a'>2 4 4 |
  <d, d'>4.. 16 4 4 |
  <c'c'>2. 4 |
  <b b'>2 4 <b, b'> | % 3b
  <c c'>2 r4 e'^\p |
  g4. 8 4 bes, |
  a4 <a, a'> q q |
  <bes bes'>4 4 4 <b b'> |
  <c c'>4 4 4 4 |
  <d d'>4 4 4 <bes bes'> | % 3c
  <c c'>4 4 4 4 |
  <f, f'>4 4 4 4 |
  q2.\fermata f''4 |
  <d bes'>4. 8 8. 16 <c a'>8. <bes bes'>16 |
  <f' a>4 <f, f'>8. 16 2 |
  <f' a>4. 8 8. 16 <f bes>8. <ees c'>16 | % 4a
  \vo d'2. c4 |
  bes4. \ov <ees, bes'>8 <g bes>4 <g a> |
  <bes, bes'>2 r4 bes' |
  e,2. <e c'>4 |
  <e des'>4. <e c'>8 <e bes>8. 16 <e c'>8. <e des'>16 |
  <f c'>2 r4 des' | % 4b
  e,2. <e c'>4 |
  <e des'>4. <e c'>8 <e b'>8. 16 <e c'>8. <e des'>16 |
  <f c'>4-. <ees a>-. <d bes'>-. r4 |
  \vo r4 bes'2 \ov r8 e, |
  \vo \crossStaff {bes'8 r a r bes} \ov r <ees, a>4 | % 4c
  <d es'>4 e \vo r bes'~ |
  bes4 \ov r8 <e, g> f4 <f, f'> |
  <bes f'>4 r r f' |
  bes,4 r f r |
  \repeat unfold 3 {bes4 r f r |} % 5a
  bes4 r f <aes aes'> |
  <g g'>2 <c c'>4 <c, c'> |
  \vo d''4(bes a) \ov r |
  r4 <f, f'> q q | % 5b
  <ges ges'>4. 8 4 4 |
  q1~ | 1( |
  <ges' ces>2) <ges, ges'> |
  <ces aes'>4. 8 <bes g'>4 4 |
  <aes aes'>2 <des aes'> |
  <ges, ges'>2. \vo bes'4 | % 5c
  bes2(des4) bes |
  aes2. 4 |
  ges2.(f4) |
  ges2 \ov r4 <ges bes> |
  q2. 4 |
  <f aes>2. 4 |
  <ees ges>2 <des ges>4 <ces f> |
  \vo ges'2. 4~ | % 6a
  ges4 f2 \ov <a c>4 |
  <bes, bes'>2 <ees a> |
  <des bes'>2. 4 |
  <c g'>4 4 <c c'> <c bes'> |
  <f aes>2 r |
  r2 r8. <des f>16 <ees ges>8. <f aes>16 | % 6b
  <ges bes>4. 8 4 <f bes> |
  <ees bes'>2 r8. <ees g>16 <f aes>8. <g bes>16 |
  <aes c>4. 8 4 <g c> |
  <f c'>2 r |
  r2 <des aes'> |
  \vo aes'2 2 | % 6c
  aes1 |
  \crossStaff <f aes>2. f4 |
  f2(aes4) f |
  ees2. 4 |
  \ov <bes ges'>4. 8 <c ges'>4 4 |
  <des f>2. r4 |
  r2 r4 <aes, aes'> |
  <bes bes'>2. 4 |
  <ees ees'>4. <des des'>8  <ces ces'>4 <bes bes'> | % 7a
  <a a'>2 <bes bes'> |
  \vo s4 \crossStaff {a''4 4 4} |
  <g b>1 |
  <fis b> |
  \crossStaff <g b>2 \ov r |
  r2 r8. <c, e>16 <d f>8. <e g>16 |
  <f a>4. 8 4 <e a> | % 7b
  <d a'>2 r8. <d fis>16 <e g>8. <f a>16 |
  <g b>4. 8 4 <fis b> |
  <e b'>2 r |
  r2 \vo \crossStaff {g2 |
                      g2 g} |
  c2(b) |
  \vt <c,, c'>2._\fermata \ov r8. <f f'>16 | % 7c
  q4 r r r8. <d' f>16 |
  <e g>4. <d f>8 <c e>8. <d f>16 <e g>8. <fis a>16 |
  <g bes>2. r8. <e g>16 |
  <f a>4. <e g>8 <d f>8. <e g>16 <f a>8. <gis b>16 |
  <a cis>4 <a, a'>2 <g g'>4 | % 8a
  q2 <f f'>4 r8. f'16 |
  \vo d'2~4.. 16 |
  c4 c c \ov <g, g'> |
  <c, c'>4.. 16 4 4 |
  <bes' bes'>2. 4 |
  <a a'>2 4 4 | % 8b
  <d, d'>4.. 16 4 4 |
  <c' c'>2. 4 |
  <b b'>2 4 <b, b'> |
  <c c'>2 r4 e'(^\p |
  g4.) 8 4 bes, |
  a4 <a, a'> q q | % 8c
  <bes bes'> q q <b b'> |
  <c c'> q q q |
  <d d'> q q <bes bes'> |
  <c c'>4 q q q |
  <f, f'>4 4 4 4 |
  q2 r |
}

pianoLHtwo = \relative {
  \global \vt
  s16 | s1*7 | r4 r8. f16 g4.. 16 |
  c4 a e s | s1*17 | % 3
  s1 | d2(ees4) f | g4. s8 s2 | s1*3 | % 4a
  s1*4 | <d f>2(ees4) s |
  f8 r <f, f'> r <bes f'> s4. | s2 <d f>2( | ees4) s2. | s1*2 |
  s1*5 | g2. s4 | % 5a
  s1*7 |
  s2. g4 | ges2. 4 | f2. 4 | ees2(des4 ces) | bes2 s | s1*3 |
  bes2. 4( | a2.) s4 | s1*10 | c2 des | aes1 | <des, des'>2._\fermata des'4 | 2. 4 | c2. 4 | s1*4 |  % 6
  s1*2 | <b, b'>1 | q | q | <e e'>2 s | s1 | % 7a
  s1*4 | s2 c | b c | <g g'>1 |
  s1*5 |
  s1*2 | r4 r8. f''16 g4.. 16 | c4 a e s | s1*15 | % 8
}

#(set-global-staff-size 18)

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
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass%            \new Voice \bass
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
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

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
        \consists Span_stem_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 18)

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
