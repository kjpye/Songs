\version "2.25.25"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hirtenchor"
  subtitle    = "(Shepherds’ chorus)"
  subsubtitle = "from “Rosamunde”"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "F. Schubert"
  arranger    = "Ed. Massimo Capozza"
  opus        = "Peters nr. 8045—IMSLP nr 31 646"

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
  \time 2/4
}

TempoTrack = {
  \tempo Allegretto 4=120
  \set Score.tempoHideNote = ##t
  s2
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s2*7
  \textMark \markup { \box "1b" } s2*7
  \textMark \markup { \box "2a" } s2*6
  \textMark \markup { \box "2b" } s2*7
  \textMark \markup { \box "3a" } s2*7
  \textMark \markup { \box "3b" } s2*6
  \textMark \markup { \box "4a" } s2*6
  \textMark \markup { \box "4b" } s2*7
  \textMark \markup { \box "5a" } s2*7
  \textMark \markup { \box "5b" } s2*7
  \textMark \markup { \box "6a" } s2*8
  \textMark \markup { \box "6b" } s2*7
  \textMark \markup { \box "7a" } s2*6
  \textMark \markup { \box "7b" } s2*7
  \textMark \markup { \box "8a" } s2*7
  \textMark \markup { \box "8b" } s2*9
  \textMark \markup { \box "9a" } s2*7
  \textMark \markup { \box "9b" } s2*6
  \textMark \markup { \box "10a" } s2*6
  \textMark \markup { \box "10b" } s2*6
  \textMark \markup { \box "11a" } s2*6
  \textMark \markup { \box "11b" } s2*6
  \textMark \markup { \box "12a" } s2*6
  \textMark \markup { \box "12b" } s2*6
  \textMark \markup { \box "13a" } s2*6
  \textMark \markup { \box "13b" } s2*6
  \textMark \markup { \box "14a" } s2*8
  \textMark \markup { \box "14b" } s2*10
  \textMark \markup { \box "14c" } s2*8
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2*10 | s2\p | s2*3 |
  s2\< | s\> | s\! | s2*5 | s2\< | s\> | s\! | s2*2 | % 2
  s2*13 |
  s2*2 | s2\f | s2*3 | s2\p | s2*3 | s2\< | s\> | s\! | % 4
  s2*5 | s2\< | s\> | s\! | s2*4 | s2\f | s |
  s2*4 | s2\f | s2*2 | s2\ff | s2*7 | % 6
  s2\p | s2*12 |
  s2*16 | % 8
  s2*2 | s4. s8\f | s2*4 | s4 s\< | s\> s\! | s8 s4.\< | s4\> s\! | s s\< | s\> s\! |
  s2 | s4. s8\p | s2*4 | s2\< | s4\> s\! | s2*4 | % 10
  s2*2 | s2\< | s4 s\! | s2\> | s4 s\! | s2 | s4. s8\f | s2*4 |
  s2*4 | s4 s\< | s\> s\! | s s\< | s\> s\! | s s\< | s\> s\! | s2*2 | % 12
  s2*2 | s4. s8\f | s2*5 | s4. s8\f | s2*3 |
  s2*26 | % 14
}

soprano = \relative {
  \global
  R2*7 |
  R2*3 | f'8(bes) a bes | d4 f,8 8 | 8(bes) a bes | d4 f, |
  a8(f') f f | f(d) c bes | a4 c8 8 | f,4 r | 8(bes) a bes | d4 f,8 8 | % 2a
  f8(bes) a bes | d4 f, a8(f') f f | bes8(f) d bes | d4 c8 8 | bes4 r | R2 |
  R2 | d4 c8 b | c4 a | R2 | r4 r8 c | e(d) c b | c4 a | % 3a
  f'4 d8 8 | f4 d8 8 | 8(c) b c | a4 r | f'4 d8 8 | f4 d8 8 |
  d8(c) b c | a4 r | c8(ees) d ees | g2 | R2*2 | % 4a
  f,8(bes) a bes | d4 f,8 8 | g(bes) a bes | ees4 g, | a8(f') 8 8 | f(d) c bes | a4 c8 8 |
  f,4 r | f8(bes) a bes | d4 f,8 8 | g(bes) a bes | ees4 g, | a8(f') f f | bes(f) d bes | % 5a
  d4 c8 8 | bes4 r | R2*3 | bes'8(f) d bes | f'4 a,8 8 |
  bes4 r | R2*3 | bes'8(f) d bes | f'4 a,8 8 | bes4 r | d2 | % 6a
  f4 f | bes,2~ | 4 r | R2*4 |
  bes8(ees) d ees | d4 c | 8(des) c bes | 4 aes | c bes8 a | bes(ees) ees(bes) | % 7a
  g4 aes8 bes | g4 r | R2*3 | r4 r8 aes | c4 bes8 a |
  bes8(ees) 8 bes | g4 aes8 f | ees4 r | c' b8 c | ees4 bes | c4 b8 c | ees4 bes | % 8a
  ees8(g) f ees | bes4 c8 8 | ees4 d8 8 | ees4 r | R2*5 |
  R2*2 | r4 r8 f,^\markup{\halign #RIGHT Tutti} | f(bes) a bes | d4 f,8 8 | g(bes) a bes | ees4 g,8 8 | % 9a
  a8(f') f f | f(d) c bes | a(f') f f | f(d) c bes | bes(g') g g | bes(f) d bes |
  d4 c8 8 | bes4. d8 | c4 bes8 8 | 8 a r a | c4 bes8 8 | 8 a r a | % 10a
  bes4(c) | d8(cis) d(bes) | a4 r | r4 r8 bes | 4 a8 8 | a g r g |
  bes4 a8 8 | a g r g | f4 g8(a) | bes4 c | d2 | ees8(d) ees(c) | % 11a
  bes2 | r4 r8 bes | g(bes) a bes | ees4 g,8 8 | f(bes) a bes | d4 f,8 8 |
  g8(bes) a bes | ees4 g,8 8 | f(bes) a bes | d4 f,8 bes | a(f') f f | f(d) c bes | % 12a
  a8(f') f f | f(d) c bes | bes(g') g g | bes(f) d bes | d4 c8 8 | bes4 r |
  R2*2 | r4 r8 f' | bes(f) d bes | f'4 a,8 8 | bes4 r | % 13a
  R2*2 | r4 r8 f' | bes(f) d bes | f'4 a,8 8 | bes4 r8 d |
  d2 | f4 f | bes2~ | 4 d, | f2 | 4 4 | bes,2~ | 4 r | % 14a
  R2*10 |
  R2*8 |
}

wordsSop = \lyricmode {
  Hier __ auf den Flu -- ren mit ro -- si -- gen Wan -- gen,
  Hir -- tin -- nen, ei -- let zum Tan -- ze her -- bei,
  lasst euch die Won -- nen des Früh -- ling -- sum -- fan -- gen,
  Lie -- be und Freu -- de sind e -- wi ger Mai.
  Hier __ auf den Flu -- ren mit ro -- si -- gen Wan -- gen,
  Hir -- tin -- nen, ei -- let zum Tan -- ze her -- bei,
  Lie -- be und Freu -- de sind e -- wi ger Mai,
  ei -- let her -- bei!
  Hier __ auf den Flu -- ren mit ro -- si -- gen Wan -- gen,
  Hir -- tin -- nen, ei -- let zum Tan -- ze her -- bei,
  lasst euch die Won -- nen des Früh -- ling -- sum -- fan -- gen,
  Lie -- be und Freu -- de sind e -- wi ger Mai.
  e -- wi ger, e -- wi ger Mai,
  e -- wi ger, e -- wi ger Mai,
  e -- wi ger Mai. __

  Hier zu den Fü -- ssen, Hol -- de dir, grü -- ssen,
  Herr -- scher in von __ Ar -- ka -- dien, wir dich;
%  Flö -- ten, Schal -- mei -- en tö -- nen,
  es freu -- en die Flu -- ren, die blü -- hen den, sich,
  Flö -- ten, Schal -- mei -- en tö -- nen,
  es freu -- en die -- ner di Flu -- ren, die blü -- hen den, sich.

  Von Ju -- bel er -- schal -- len die grü -- nen den Hal -- len der Hö -- nen,
  die luf -- tig, der Flu -- ren,
  die duf -- tig er -- glän -- zen und strah -- len in Lie -- be und Lust;
  in schat  -- ti gen Tha -- len,
  da schwei -- gen die Qua len
  der lie -- ben -- den Brust,
  in schat  -- ti gen Tha -- len,
  da schwei -- gen die Qua len
  der lie -- ben -- den, der lie -- ben -- den Brust.
  Von Ju -- bel er -- schal -- len die grü -- nen den Hal -- len,
  Von Ju -- bel er -- schal -- len die grü -- nen den Hal -- len der H-- nen,
  die luf -- tig, der Flu -- ren,
  die duf -- tig er -- glän -- zen und strah -- len in Lie -- be und Lust;
  sie strah -- len in Lie -- be und Lust,
  sie strah -- len in Lie -- be und Lust,
  in Lie -- be und Lust, __
  in Lie -- be und Lust. __
}

wordsSopMidi = \lyricmode {
  "Hier "  "auf " "den " Flu "ren " "mit " ro si "gen " Wan "gen, "
  "\nHir" tin "nen, " ei "let " "zum " Tan "ze " her "bei, "
  "\nlasst " "euch " "die " Won "nen " "des " Früh ling sum fan "gen, "
  "\nLie" "be " "und " Freu "de " "sind " e "wi " "ger " "Mai. "
  "\nHier "  "auf " "den " Flu "ren " "mit " ro si "gen " Wan "gen, "
  "\nHir" tin "nen, " ei "let " "zum " Tan "ze " her "bei, "
  "\nLie" "be " "und " Freu "de " "sind " e "wi " "ger " "Mai, "
  "\nei" "let " her "bei! "
  "\nHier "  "auf " "den " Flu "ren " "mit " ro si "gen " Wan "gen, "
  "\nHir" tin "nen, " ei "let " "zum " Tan "ze " her "bei, "
  "\nlasst " "euch " "die " Won "nen " "des " Früh ling sum fan "gen, "
  "\nLie" "be " "und " Freu "de " "sind " e "wi " "ger " "Mai. "
  "\ne" "wi " "ger, " e "wi " "ger " "Mai, "
  "\ne" "wi " "ger, " e "wi " "ger " "Mai, "
  "\ne" "wi " "ger " "Mai. " 

  "\nHier " "zu " "den " Fü "ssen, " Hol "de " "dir, " grü "ssen, "
  "\nHerr" "scher " "in " "von "  Ar ka "dien, " "wir " "dich; "
%  Flö -- ten, Schal -- mei -- en tö -- nen,
  "\nes " freu "en " "die " Flu "ren, " "die " blü "hen " "den, " "sich, "
  "\nFlö" "ten, " Schal mei "en " tö "nen, "
  "\nes " freu "en " die "ner " "di " Flu "ren, " "die " blü "hen " "den, " "sich. "

  "\nVon " Ju "bel " er schal "len " "die " grü "nen " "den " Hal "len " "der " Hö "nen, "
  "\ndie " luf "tig, " "der " Flu "ren, "
  "\ndie " duf "tig " er glän "zen " "und " strah "len " "in " Lie "be " "und " "Lust; "
  "\nin " schat "ti " "gen " Tha "len, "
  "\nda " schwei "gen " "die " "Qua " "len "
  "\nder " lie ben "den " "Brust, "
  "\nin " schat "ti " "gen " Tha "len, "
  "\nda " schwei "gen " "die " "Qua " "len "
  "\nder " lie ben "den, " "der " lie ben "den " "Brust. "
  "\nVon " Ju "bel " er schal "len " "die " grü "nen " "den " Hal "len, "
  "\nVon " Ju "bel " er schal "len " "die " grü "nen " "den " Hal "len " "der " H "nen, "
  "\ndie " luf "tig, " "der " Flu "ren, "
  "\ndie " duf "tig " er glän "zen " "und " strah "len " "in " Lie "be " "und " "Lust; "
  "\nsie " strah "len " "in " Lie "be " "und " "Lust, "
  "\nsie " strah "len " "in " Lie "be " "und " "Lust, "
  "\nin " Lie "be " "und " "Lust, " 
  "\nin " Lie "be " "und " "Lust. " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2*10 | s2\p | s2*3 |
  s2\< | s\> | s\! | s2*5 | s2\< | s\> | s\! | s2*2 | % 2
  s2*13 |
  s2*2 | s2\f | s2*3 | s2\p | s2*3 | s2\< | s\> | s\! | % 4
  s2*5 | s2\< | s\> | s\! | s2*4 | s2\f | s |
  s2*4 | s2\f | s2*2 | s2\ff | s2*7 | % 6
  s2\p | s2*12 |
  s2*16 | % 8
  s2*2 | s4. s8\f | s2*4 | s4 s\< | s\> s\! | s8 s4.\< | s4\> s\! | s s\< | s\> s\! |
  s2 | s4. s8\p | s2*4 | s2\< | s4\> s\! | s2*4 | % 10
  s2*2 | s2\< | s4 s\! | s2\> | s4 s\! | s2 | s4. s8\f | s2*4 |
  s2*4 | s4 s\< | s\> s\! | s s\< | s\> s\! | s s\< | s\> s\! | s2*2 | % 12
  s2*2 | s4. s8\f | s2*5 | s4. s8\f | s2*3 |
  s2*26 | % 14
}

alto = \relative {
  \global
  R2*7 |
  R2*3 | d'4 8 8 | 4 8 8 | 4 8 8 | 4 4 |
  ees4 8 8 | f4 8 8 | 4 e8 8 | f4 r | d4 8 8 | 4 8 8 | % 2a
  d4 8 8 | 4 4 | ees4 8 8 | f4 8 8 | bes4 a8 8 | bes4 r | R2 |
  R2 | gis4 a8 gis | a4 f | R2 | r4 r8 a | gis4 a8 gis | a4 f | % 3a
  f4 8 8 | 4 8 bes | 8(a) gis a | f4 r | 4 8 8 | 4 8 8 |
  bes8(a) gis a | f4 r | a4 8 8 | 2 | R2*2 | % 4a
  d,4 8 8 | 4 8 8 | ees4 8 8 | 4 4 | 4 8 8 | d(f) f f | 4 e8 8 |
  f4 r | d4 8 8 | 4 8 8 | ees4 8 8 | 4 4 | 4 8 8 | d(f) f f | % 5a
  bes4 a8 8 | bes4 r | R2*3 | 4 8 8 | f4 ees8 8 |
  d4 r | R2*3 | bes'4 8 8 | f4 ees8 8 | d4 r | bes'2 | % 6a
  a4 4 | f2~ | 4 r | R2*4 |
  g4^\markup Solo 8 8 | bes4 aes | 8(bes) aes g | 4 f | aes4 g8 fis | g(bes) bes(g) | % 7a
  ees4 f8 g | ees4 r | R2*3 | r4 r8 f | aes4 g8 fis |
  g8(bes) 8 g | ees4 d8 8 | ees4 r | aes4 8 8 | g(bes) g4 | aes4 8 8 | g(bes) g4 | % 8a
  g4 8 8 | f4 ees8 8 | g4 f8 8 | ees4 r | R2*5 |
  R2*2 | r4 r8 f^\markup{\halign #RIGHT Tutti} | d4 8 8 | 4 8 8 | ees4 8 8 | 4 8 8 | % 9a
  f8(a) a a | bes4 a8 bes | f(a) a a | bes4 a8 bes | 4 8 8 | 4 8 8 |
  bes4 a8 8 | bes4. 8 | e,4 8 8 | f8 8 r f | e4 8 8 | f8 f r f | % 10a
  g4(a) | bes8(a) bes(g) | f4 r | r r8 f | fis4 8 8 | 8 g r g |
  fis4 8 8 | 8 g r g | f4. 8 | 4 bes | 2 | a4 a | % 11a
  bes2 | r4 r8 f | g4 8 8 | bes4 g8 8 | f4 8 8 | bes4 f8 8 |
  g4 8 8 | bes4 g8 8 | f4 8 8 | bes4 f8 8 | f(a) a a | bes4 a8 bes | % 12a
  f8(a) a a | bes4 a8 bes | 4 8 8 | 4 8 8 | 4 a8 8 | bes4 r |
  R2*2 | r4 r8 a | bes4 8 8 | f4 8 8 | d4 r | % 13a
  R2*2 | r4 r8 a' | bes4 8 8 | f4 ees8 8 | d4 r8 bes' |
  bes2 | c4 4 | bes2~ | 4 4 | 2 | a4 c | f2~ | 4 r | % 14a
  R2*10 |
  R2*8 |
}

wordsAlto = \lyricmode {
  Hier __ auf den Flu -- ren mit ro -- si -- gen Wan -- gen,
  Hir -- tin -- nen, ei -- let zum Tan -- ze her -- bei,
  lasst euch die Won -- nen des Früh -- ling -- sum -- fan -- gen,
  Lie -- be und Freu -- de sind e -- wi ger Mai.
  Hier __ auf den Flu -- ren mit ro -- si -- gen Wan -- gen,
  Hir -- tin -- nen, ei -- let zum Tan -- ze her -- bei,
  Lie -- be und Freu -- de sind e -- wi ger Mai,
  ei -- let her -- bei!
  Hier __ auf den Flu -- ren mit ro -- si -- gen Wan -- gen,
  Hir -- tin -- nen, ei -- let zum Tan -- ze her -- bei,
  lasst euch die Won -- nen des Früh -- ling -- sum -- fan -- gen,
  Lie -- be und Freu -- de sind e -- wi ger Mai.
  e -- wi ger, e -- wi ger Mai,
  e -- wi ger, e -- wi ger Mai,
  e -- wi ger Mai. __

  Hier zu den Fü -- ssen, Hol -- de dir, grü -- ssen,
  Herr -- scher in von __ Ar -- ka -- dien, wir dich;
  es freu -- en die Flu -- ren, die blü -- hen den, sich,
  Flö -- ten, Schal -- mei -- en tö -- nen,
  es freu -- en die -- ner di Flu -- ren, die blü -- hen den, sich.

  Von Ju -- bel er -- schal -- len die grü -- nen den Hal -- len der Hö -- nen,
  die luf -- tig, der Flu -- ren,
  die duf -- tig er -- glän -- zen und strah -- len in Lie -- be und Lust;
  in schat  -- ti gen Tha -- len,
  da schwei -- gen die Qua len
  der lie -- ben -- den Brust,
  in schat  -- ti gen Tha -- len,
  da schwei -- gen die Qua len
  der lie -- ben -- den, der lie -- ben -- den Brust.
  Von Ju -- bel er -- schal -- len die grü -- nen den Hal -- len,
  Von Ju -- bel er -- schal -- len die grü -- nen den Hal -- len der H-- nen,
  die luf -- tig, der Flu -- ren,
  die duf -- tig er -- glän -- zen und strah -- len in Lie -- be und Lust;
  sie strah -- len in Lie -- be und Lust,
  sie strah -- len in Lie -- be und Lust,
  in Lie -- be und Lust, __
  in Lie -- be und Lust. __
}

wordsAltoMidi = \lyricmode {
  "Hier "  "auf " "den " Flu "ren " "mit " ro si "gen " Wan "gen, "
  "\nHir" tin "nen, " ei "let " "zum " Tan "ze " her "bei, "
  "\nlasst " "euch " "die " Won "nen " "des " Früh ling sum fan "gen, "
  "\nLie" "be " "und " Freu "de " "sind " e "wi " "ger " "Mai. "
  "\nHier "  "auf " "den " Flu "ren " "mit " ro si "gen " Wan "gen, "
  "\nHir" tin "nen, " ei "let " "zum " Tan "ze " her "bei, "
  "\nLie" "be " "und " Freu "de " "sind " e "wi " "ger " "Mai, "
  "\nei" "let " her "bei! "
  "\nHier "  "auf " "den " Flu "ren " "mit " ro si "gen " Wan "gen, "
  "\nHir" tin "nen, " ei "let " "zum " Tan "ze " her "bei, "
  "\nlasst " "euch " "die " Won "nen " "des " Früh ling sum fan "gen, "
  "\nLie" "be " "und " Freu "de " "sind " e "wi " "ger " "Mai. "
  "\ne" "wi " "ger, " e "wi " "ger " "Mai, "
  "\ne" "wi " "ger, " e "wi " "ger " "Mai, "
  "\ne" "wi " "ger " "Mai. " 

  "\nHier " "zu " "den " Fü "ssen, " Hol "de " "dir, " grü "ssen, "
  "\nHerr" "scher " "in " "von "  Ar ka "dien, " "wir " "dich; "
  "\nes " freu "en " "die " Flu "ren, " "die " blü "hen " "den, " "sich, "
  "\nFlö" "ten, " Schal mei "en " tö "nen, "
  "\nes " freu "en " die "ner " "di " Flu "ren, " "die " blü "hen " "den, " "sich. "

  "\nVon " Ju "bel " er schal "len " "die " grü "nen " "den " Hal "len " "der " Hö "nen, "
  "\ndie " luf "tig, " "der " Flu "ren, "
  "\ndie " duf "tig " er glän "zen " "und " strah "len " "in " Lie "be " "und " "Lust; "
  "\nin " schat "ti " "gen " Tha "len, "
  "\nda " schwei "gen " "die " "Qua " "len "
  "\nder " lie ben "den " "Brust, "
  "\nin " schat "ti " "gen " Tha "len, "
  "\nda " schwei "gen " "die " "Qua " "len "
  "\nder " lie ben "den, " "der " lie ben "den " "Brust. "
  "\nVon " Ju "bel " er schal "len " "die " grü "nen " "den " Hal "len, "
  "\nVon " Ju "bel " er schal "len " "die " grü "nen " "den " Hal "len " "der " H "nen, "
  "\ndie " luf "tig, " "der " Flu "ren, "
  "\ndie " duf "tig " er glän "zen " "und " strah "len " "in " Lie "be " "und " "Lust; "
  "\nsie " strah "len " "in " Lie "be " "und " "Lust, "
  "\nsie " strah "len " "in " Lie "be " "und " "Lust, "
  "\nin " Lie "be " "und " "Lust, " 
  "\nin " Lie "be " "und " "Lust. " 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2*10 | s2\p | s2*3 |
  s2\< | s\> | s\! | s2*5 | s2\< | s\> | s\! | s2*2 | % 2
  s2*13 |
  s2*2 | s2\f | s2*3 | s2\p | s2*3 | s2\< | s\> | s\! | % 4
  s2*5 | s2\< | s\> | s\! | s2*4 | s2\f | s |
  s2*4 | s2\f | s2*2 | s2\ff | s2*7 | % 6
  s2*4 | s2\p | s2*3 | s2\p | s2*4 |
  s2*16 | % 8
  s2*2 | s4. s8\f | s2*4 | s4 s\< | s\> s\! | s8 s4.\< | s4\> s\! | s s\< | s\> s\! |
  s2 | s4. s8\p | s2*4 | s2\< | s4\> s\! | s2*4 | % 10
  s2*2 | s2\< | s4 s\! | s2\> | s4 s\! | s2 | s4. s8\f | s2*4 |
  s2*4 | s4 s\< | s\> s\! | s s\< | s\> s\! | s s\< | s\> s\! | s2*2 | % 12
  s2*2 | s4. s8\f | s2*5 | s4. s8\f | s2*3 |
  s2*26 | % 14
}

tenor = \relative {
  \global
  R2*7 |
  R2*3 | f4 8 8 | 4 8 8 | 4 8 8 | 4 4 |
  f4 8 8 | 4 a8 bes | c4 bes8 8 | a4 r | f4 8 8 | 4 8 8 | % 2a
  f4 8 8 | 4 4 | 4 8 8 | 4 bes8 d | f4 ees8 8 | d4 r | R2 |
  R2 | b4 c8 d | c4 f | R2 | r4 r8 c | b4 c8 d | c4 f | % 3a
  cis4 d8 8 | cis4 d8 8 |e4 8 8 | f4 r | cis4 d8 8 | cis4 d8 8 |
  e4 8 8 | f4 r | c4 8 8 | ees2 | R2*2 | % 4a
  f,4 8 8 | 4 g8 aes | g4 8 8 | 4 a8(bes) | f4 8 8 | 4 a8 bes | c4 bes8 8 |
  a4 r | f4 8 8 | 4 g8 aes | g4 8 8 | 4 a8(bes) | f4 8 8 | 4 bes8 d | % 5a
  f4 ees8 8 | d4 r | R2*3 | d4 f8 d | d4 c8 8 |
  bes4 r | R2*3 | d4 f8 d | 4 c8 8 | bes4 r | d2 | % 6a
  ees4 4 | d2~ | 4 r | R2*4 |
  R2*4 | d4^\markup Solo 8 8 | ees8(g) g(ees) | % 7a
  bes4 d8 8 | ees4 r | bes8(ees) d ees | d4 c | 8(des) c bes | 4 aes | d4 8 8 |
  ees8(g) g ees | bes4 8 aes | g4 r | d'4 8 8 | ees(g) ees4 | d4 8 8 | ees(g) ees4 | % 8a
  bes4 8 8 | bes4 g8 8 | bes4 aes8 8 | g4 r | R2*5 |
  R2*2 | r4 r8 f^\markup{\halign #RIGHT Tutti} | 4 8 8 | 8(bes) d bes | g4 8 8 | g(bes) ees8 8 | % 9a
  ees4 8 8 | f4 ees8 d | ees4 8 8 | f4 ees8 d | ees4 8 8 | f4 8 d |
  f4 ees8 8 | d4. 8 | c4 des8 8 | c c r c | 4 des8 8 | c8 c r c | % 10a
  e2 | 4 4 | f4 r | r4 r8 bes, | 4 c8 8 | c bes r bes |
  bes4 c8 8 | c bes r bes | d4 ees8(c) | d4 e | f2 | g8(fis) g(ees) | % 11a
  d2 | r4 r8 d | ees4 8 8 | g4 ees8 8 | d4 8 8 | f4 d8 8 |
  ees4 8 8 | g4 ees8 8 | d4 8 8 | f4 d8 8 | ees4 8 8 | f4 ees8 d | % 12a
  ees4 8 8 | f4 ees8 d | ees4 8 8 | f4 8 d | f4 ees8 8 | d4 r |
  R2*2 | r4 r8 ees | d4 f8 ees | 4 c8 8 | bes4 r | % 13a
  R2*2 | r4 r8 ees | d4 f8 d | 4 c8 c | bes4 r8 f' |
  f2 | 4 c | d2~ | 4 4 | 2 | ees4 4 | d2~ | 4 r | % 14a
  s2*10 |
  s2*8 |
}

wordsTenor = \lyricmode {
  Hier __ auf den Flu -- ren mit ro -- si -- gen Wan -- gen,
  Hir -- tin -- nen, ei -- let zum Tan -- ze her -- bei,
  lasst euch die Won -- nen des Früh -- ling -- sum -- fan -- gen,
  Lie -- be und Freu -- de sind e -- wi ger Mai.
  Hier __ auf den Flu -- ren mit ro -- si -- gen Wan -- gen,
  Hir -- tin -- nen, ei -- let zum Tan -- ze her -- bei,
  Lie -- be und Freu -- de sind e -- wi ger Mai,
  ei -- let her -- bei!
  Hier __ auf den Flu -- ren mit ro -- si -- gen Wan -- gen,
  Hir -- tin -- nen, ei -- let zum Tan -- ze her -- bei,
  lasst euch die Won -- nen des Früh -- ling -- sum -- fan -- gen,
  Lie -- be und Freu -- de sind e -- wi ger Mai.
  e -- wi ger, e -- wi ger Mai,
  e -- wi ger, e -- wi ger Mai,
  e -- wi ger Mai. __

  Herr -- scher in von __ Ar -- ka -- dien, wir dich;
  Flö -- ten, Schal -- mei -- en tö -- nen,
  es freu -- en dei -- ner die Flu -- ren, die blü -- hen den, sich,
  Flö -- ten, Schal -- mei -- en tö -- nen,
  es freu -- en die -- ner di Flu -- ren, die blü -- hen den, sich.

  Von Ju -- bel er -- schal -- len die grü -- nen den Hal -- len der Hö -- nen,
  die luf -- tig, der Flu -- ren,
  die duf -- tig er -- glän -- zen und strah -- len in Lie -- be und Lust;
  in schat  -- ti gen Tha -- len,
  da schwei -- gen die Qua len
  der lie -- ben -- den Brust,
  in schat  -- ti gen Tha -- len,
  da schwei -- gen die Qua len
  der lie -- ben -- den, der lie -- ben -- den Brust.
  Von Ju -- bel er -- schal -- len die grü -- nen den Hal -- len,
  Von Ju -- bel er -- schal -- len die grü -- nen den Hal -- len der H-- nen,
  die luf -- tig, der Flu -- ren,
  die duf -- tig er -- glän -- zen und strah -- len in Lie -- be und Lust;
  sie strah -- len in Lie -- be und Lust,
  sie strah -- len in Lie -- be und Lust,
  in Lie -- be und Lust, __
  in Lie -- be und Lust. __
}

wordsTenorMidi = \lyricmode {
  "Hier "  "auf " "den " Flu "ren " "mit " ro si "gen " Wan "gen, "
  "\nHir" tin "nen, " ei "let " "zum " Tan "ze " her "bei, "
  "\nlasst " "euch " "die " Won "nen " "des " Früh ling sum fan "gen, "
  "\nLie" "be " "und " Freu "de " "sind " e "wi " "ger " "Mai. "
  "\nHier "  "auf " "den " Flu "ren " "mit " ro si "gen " Wan "gen, "
  "\nHir" tin "nen, " ei "let " "zum " Tan "ze " her "bei, "
  "\nLie" "be " "und " Freu "de " "sind " e "wi " "ger " "Mai, "
  "\nei" "let " her "bei! "
  "\nHier "  "auf " "den " Flu "ren " "mit " ro si "gen " Wan "gen, "
  "\nHir" tin "nen, " ei "let " "zum " Tan "ze " her "bei, "
  "\nlasst " "euch " "die " Won "nen " "des " Früh ling sum fan "gen, "
  "\nLie" "be " "und " Freu "de " "sind " e "wi " "ger " "Mai. "
  "\ne" "wi " "ger, " e "wi " "ger " "Mai, "
  "\ne" "wi " "ger, " e "wi " "ger " "Mai, "
  "\ne" "wi " "ger " "Mai. " 

  "\nHerr" "scher " "in " "von "  Ar ka "dien, " "wir " "dich; "
  "\nFlö" "ten, " Schal mei "en " tö "nen, "
  "\nes " freu "en " dei "ner " "die " Flu "ren, " "die " blü "hen " "den, " "sich, "
  "\nFlö" "ten, " Schal mei "en " tö "nen, "
  "\nes " freu "en " die "ner " "di " Flu "ren, " "die " blü "hen " "den, " "sich. "

  "\nVon " Ju "bel " er schal "len " "die " grü "nen " "den " Hal "len " "der " Hö "nen, "
  "\ndie " luf "tig, " "der " Flu "ren, "
  "\ndie " duf "tig " er glän "zen " "und " strah "len " "in " Lie "be " "und " "Lust; "
  "\nin " schat "ti " "gen " Tha "len, "
  "\nda " schwei "gen " "die " "Qua " "len "
  "\nder " lie ben "den " "Brust, "
  "\nin " schat "ti " "gen " Tha "len, "
  "\nda " schwei "gen " "die " "Qua " "len "
  "\nder " lie ben "den, " "der " lie ben "den " "Brust. "
  "\nVon " Ju "bel " er schal "len " "die " grü "nen " "den " Hal "len, "
  "\nVon " Ju "bel " er schal "len " "die " grü "nen " "den " Hal "len " "der " H "nen, "
  "\ndie " luf "tig, " "der " Flu "ren, "
  "\ndie " duf "tig " er glän "zen " "und " strah "len " "in " Lie "be " "und " "Lust; "
  "\nsie " strah "len " "in " Lie "be " "und " "Lust, "
  "\nsie " strah "len " "in " Lie "be " "und " "Lust, "
  "\nin " Lie "be " "und " "Lust, " 
  "\nin " Lie "be " "und " "Lust. " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2*10 | s2\p | s2*3 |
  s2\< | s\> | s\! | s2*5 | s2\< | s\> | s\! | s2*2 | % 2
  s2*13 |
  s2*2 | s2\f | s2*3 | s2\p | s2*3 | s2\< | s\> | s\! | % 4
  s2*5 | s2\< | s\> | s\! | s2*4 | s2\f | s |
  s2*4 | s2\f | s2*2 | s2\ff | s2*7 | % 6
  s2*8 | s2\p | s2*4 |
  s2*16 | % 8
  s2*2 | s4. s8\f | s2*4 | s4 s\< | s\> s\! | s8 s4.\< | s4\> s\! | s s\< | s\> s\! |
  s2 | s4. s8\p | s2*4 | s2\< | s4\> s\! | s2*4 | % 10
  s2*2 | s2\< | s4 s\! | s2\> | s4 s\! | s2 | s4. s8\f | s2*4 |
  s2*4 | s4 s\< | s\> s\! | s s\< | s\> s\! | s s\< | s\> s\! | s2*2 | % 12
  s2*2 | s4. s8\f | s2*5 | s4. s8\f | s2*3 |
  s2*26 | % 14
}

bass = \relative {
  \global
  R2*7 |
  R2*3 | bes,4 8 8 | 4 8 8 | 4 8 8 | 4 4 |
  c4 8 8 | d4 ees8 d | c4 8 8 | f4 r | bes,4 8 8 | 4 8 8 | % 2a
  bes4 8 8 | 4 4 | c4 8 8 | d4 f8 bes | f4 8 8 | bes,4 r | R2 |
  R2 | f'4 8 8 4 4 | R2 | r4 r8 f | 4 8 8 | 4 4 | % 3a
  a4 bes8 8 | a4 bes8 8 | c4 8 8 | f,4 r | a4 bes8 8 | a4 bes8 8 |
  c4 8 8 | f,4 r | 4 8 8 | 2 | R2*2 | % 4a
  bes,4 8 8 | 4 8 8 | 4 8 8 | 4 4 | 4 8 8 | 4 c8 d | c4 8 8 |
  f4 r | bes,4 8 8 | 4 8 8 | 4 8 8 | 4 4 | 4 8 8 | 8(d) f bes | % 5a
  f4 8 8 | bes,4 r | R2*3 | bes'4 8 d | f,4 8 8 |
  bes4 r | R2*3 | 4 8 d | f,4 8 8 | bes4 r | g2 | % 6a
  f4 f | bes,2~ | 4 r | R2*4 |
  R2*6 | % 7a
  R2*2 | g'4^\markup Solo 8 8 | bes4 aes | 8(bes) aes g | 4 f | bes4 8 8 |
  ees,4 8 g | bes4 bes,8 8 | ees4 r | R2 | bes4 ees8 g | bes4 bes, | 4 ees8 g | % 8a
  ees4 8 8 | d4 c8 8 | bes4 8 8 | ees4 r | R2*5 |
  R2*2 | r4 r8 f^\markup{\halign #RIGHT Tutti} | bes,4 8 8 | 4 8 8 | 4 8 8 | 4 8 8 | % 9a
  c4 8 8 | d4 f8 bes | c,4 8 8 | d4 f8 bes | ees4 ees8 8 | d4 bes8 d |
  f,4 8 8 | g4. 8 | 4 8 8 | d8 8 r f | g4 8 8 | f8 8 r f | % 10a
  c2 | 4 4 | f r | r r8 d | 4 8 8 | ees8 8 r ees |
  d4 8 8 | ees8 8 r ees | f4. 8 | 4 g | f2 | 4 4 | % 11a
  bes,2 | r4 r8 bes' | 4 8 8 | 4 8 8 | 4 8 8 | 4 8 8 |
  bes4 8 8 | 4 8 8 | 4 8 8 | 4 8 bes, | c4 8 8 | d4 f8 bes | % 12a
  c,4 8 8 | d4 f8 bes | ees,4 8 8 | d4 f8 bes | f4 8 8 | bes4 r |
  R2*2 | r4 r8 bes | 4 c8 d | f,4 8 8 | bes4 r | % 13a
  R2*2 | r4 r8 bes | 4 8 d | f,4 8 8 | bes4 r8 8 |
  bes2 | a4 4 | g2~ | 4 4 | f2 | 4 4 | bes2~ | 4 r | % 14a
  R2*10 |
  R2*8 |
}

wordsBass = \lyricmode {
  Hier __ auf den Flu -- ren mit ro -- si -- gen Wan -- gen,
  Hir -- tin -- nen, ei -- let zum Tan -- ze her -- bei,
  lasst euch die Won -- nen des Früh -- ling -- sum -- fan -- gen,
  Lie -- be und Freu -- de sind e -- wi ger Mai.
  Hier __ auf den Flu -- ren mit ro -- si -- gen Wan -- gen,
  Hir -- tin -- nen, ei -- let zum Tan -- ze her -- bei,
  Lie -- be und Freu -- de sind e -- wi ger Mai,
  ei -- let her -- bei!
  Hier __ auf den Flu -- ren mit ro -- si -- gen Wan -- gen,
  Hir -- tin -- nen, ei -- let zum Tan -- ze her -- bei,
  lasst euch die Won -- nen des Früh -- ling -- sum -- fan -- gen,
  Lie -- be und Freu -- de sind e -- wi ger Mai.
  e -- wi ger, e -- wi ger Mai,
  e -- wi ger, e -- wi ger Mai,
  e -- wi ger Mai. __

  Flö -- ten, Schal -- mei -- en tö -- nen,
  es freu -- en dei -- ner die Flu -- ren, die blü -- hen den, sich,
  Flö -- ten, Schal -- mei -- en tö -- nen,
  es freu -- en die Flu -- ren, die blü -- hen den, sich.

  Von Ju -- bel er -- schal -- len die grü -- nen den Hal -- len der Hö -- nen,
  die luf -- tig, der Flu -- ren,
  die duf -- tig er -- glän -- zen und strah -- len in Lie -- be und Lust;
  in schat  -- ti gen Tha -- len,
  da schwei -- gen die Qua len
  der lie -- ben -- den Brust,
  in schat  -- ti gen Tha -- len,
  da schwei -- gen die Qua len
  der lie -- ben -- den, der lie -- ben -- den Brust.
  Von Ju -- bel er -- schal -- len die grü -- nen den Hal -- len,
  Von Ju -- bel er -- schal -- len die grü -- nen den Hal -- len der H-- nen,
  die luf -- tig, der Flu -- ren,
  die duf -- tig er -- glän -- zen und strah -- len in Lie -- be und Lust;
  sie strah -- len in Lie -- be und Lust,
  sie strah -- len in Lie -- be und Lust,
  in Lie -- be und Lust, __
  in Lie -- be und Lust. __
}

wordsBassMidi = \lyricmode {
  "Hier "  "auf " "den " Flu "ren " "mit " ro si "gen " Wan "gen, "
  "\nHir" tin "nen, " ei "let " "zum " Tan "ze " her "bei, "
  "\nlasst " "euch " "die " Won "nen " "des " Früh ling sum fan "gen, "
  "\nLie" "be " "und " Freu "de " "sind " e "wi " "ger " "Mai. "
  "\nHier "  "auf " "den " Flu "ren " "mit " ro si "gen " Wan "gen, "
  "\nHir" tin "nen, " ei "let " "zum " Tan "ze " her "bei, "
  "\nLie" "be " "und " Freu "de " "sind " e "wi " "ger " "Mai, "
  "\nei" "let " her "bei! "
  "\nHier "  "auf " "den " Flu "ren " "mit " ro si "gen " Wan "gen, "
  "\nHir" tin "nen, " ei "let " "zum " Tan "ze " her "bei, "
  "\nlasst " "euch " "die " Won "nen " "des " Früh ling sum fan "gen, "
  "\nLie" "be " "und " Freu "de " "sind " e "wi " "ger " "Mai. "
  "\ne" "wi " "ger, " e "wi " "ger " "Mai, "
  "\ne" "wi " "ger, " e "wi " "ger " "Mai, "
  "\ne" "wi " "ger " "Mai. " 

  "\nFlö" "ten, " Schal mei "en " tö "nen, "
  "\nes " freu "en " dei "ner " "die " Flu "ren, " "die " blü "hen " "den, " "sich, "
  "\nFlö" "ten, " Schal mei "en " tö "nen, "
  "\nes " freu "en " "die " Flu "ren, " "die " blü "hen " "den, " "sich. "

  "\nVon " Ju "bel " er schal "len " "die " grü "nen " "den " Hal "len " "der " Hö "nen, "
  "\ndie " luf "tig, " "der " Flu "ren, "
  "\ndie " duf "tig " er glän "zen " "und " strah "len " "in " Lie "be " "und " "Lust; "
  "\nin " schat "ti " "gen " Tha "len, "
  "\nda " schwei "gen " "die " "Qua " "len "
  "\nder " lie ben "den " "Brust, "
  "\nin " schat "ti " "gen " Tha "len, "
  "\nda " schwei "gen " "die " "Qua " "len "
  "\nder " lie ben "den, " "der " lie ben "den " "Brust. "
  "\nVon " Ju "bel " er schal "len " "die " grü "nen " "den " Hal "len, "
  "\nVon " Ju "bel " er schal "len " "die " grü "nen " "den " Hal "len " "der " H "nen, "
  "\ndie " luf "tig, " "der " Flu "ren, "
  "\ndie " duf "tig " er glän "zen " "und " strah "len " "in " Lie "be " "und " "Lust; "
  "\nsie " strah "len " "in " Lie "be " "und " "Lust, "
  "\nsie " strah "len " "in " Lie "be " "und " "Lust, "
  "\nin " Lie "be " "und " "Lust, " 
  "\nin " Lie "be " "und " "Lust. " 
}

pianoRHone = \relative {
  \global
  R2*2 | f'8 bes a bes | d4. bes8 | a8 f' ees c | a4 16 c a g | f8 bes a bes |
  d4. bes'8 | f d c a | bes4 r | f8 bes a bes | d4 f,8 8 | f bes a bes | d4 f,8 r |
  a8 f' f-! f-! | f d c bes | a4 c8 8 | \vo f,2 \ov | <d f>8 bes' a bes | d4 f,8 8 | % 2a
  f8 bes a bes | d4 f,8 r | a f' f-! f-! | bes f d bes | <bes d>4 <a c>8 8 | bes d <bes f'> <bes d> | \vo c f e f |
  \ov <a, a'>4 <a c> | <gis d'> <a c>8 <g b> | <a c>4 <f a>8 r | \vo c' f e f | a4 c,8 8 | \ov e8 d c-! bes-! | <a c>4 <f a>8 f-! | % 3a
  <f f'>4 <f d'>8 8 | <f f'>4 <f d'>8 <bes d> | q <a c> <gis b>-! <a c>-! | a16 bes b c cis d ees e | <f, f'>4 <f d'>8 8 | <f f'>4 <f d'>8 <bes d> |
  q8 <a c> <gis b>-! <a c>-! | <f a>16-! f fis g gis a bes b | \vo c8 ees d-! ees-! | \ov <a, g'>2 | 8 ees' c a | <a f'> ees' c a | % 4a
  <d, f>8 bes' a bes | d4 f,8 8 | g bes a bes | ees4 g,8 8 | a f' f-! f-! | ees d c bes | a4 c8 8 |
  f,2 | <d f>8 bes' a bes | d4 f,8 8 | g bes a bes | ees4 g,8 8 | a f' f-! f-! | bes f d bes | % 5a
  <f bes d>4 <ees a c>8 8 | <d bes'>16-! bes' a bes b c cis d | <bes ees>4 <bes d>8 8 | % 5b
  <bes cis>16 bes' a bes a bes a bes | \ottava #1 <bes d>8 f' <a, c> f' |
  <bes, bes'>8 f' <d, d'>-! <bes bes'>-! |  <f' f'>4 \ottava #0 <c, ees f a>8 <c, ees f a> |
  <bes' d f bes>16 bes' a bes b c cis d | <bes ees>4 <bes d>8 8 | % 6a
  <bes cis>16-! bes' a bes a bes a bes | \ottava #1 <bes d>8 f' <a, c> f' |
  <bes, bes'> f' <d, d'>-! <bes bes'>-! | <f' f'>4 <c ees f a>8 8 |
  \ottava #0 <bes,, d f bes>16 f'' d f bes f bes-! c-! | <d, bes' d>2 |
  <a' ees' f>2 | <bes d f bes>4 bes,8~8 | 4 8 bes'' | bes(c aes) f | ees d c bes | c bes c bes | c bes c-! d-! |
  <g, bes>8 ees' <g, d'>-! <g ees'>-! | <bes d>4 <aes c>8 r | q <bes des> <a c>-! <g bes>-! | <g bes>4 <f aes>8 r | <aes c>4 <g bes>8 <fis a> | <g bes> ees' <g, ees'>-! bes-! | % 7a
  <ees, g>4 <f aes>8 <g bes> | <ees g>-! <g, bes> <bes ees> <ees g> | % 7b
  <g bes>8 ees' <g, d'>-! <g ees'>-! | <bes d>4 <aes c>8 r |
  q8 <bes des> <aes c>-! <g bes>-! | 4 <f aes>8 r | <d aes' c>4 <g bes>8 <fis a> |
  <g bes>8 ees' <g, ees'>-! bes-! | <ees, g>4 <d aes'>8 <d f> | % 8a
  ees8-! 8 g bes | <d, aes' c>4 <aes' b>8 <aes c> | <g' ees'> bes <g bes> q |
  <d, aes' c>4 <aes' b>8 <aes c> | <g' ees'> des <g bes> q |
  <g, ees'>8 g' <g, f'>-! <g ees'>-! | <g bes>4 <ees c'>8 8 | % 8b
  <g ees'>4 <f d'>8 8 | <ees ees'>8-! <g bes> <ees g> <bes ees> |
  bes'8 ees d ees | <g, g'>2 | q | <bes bes'> | q8 f' d bes |
  g'8 ees c a | bes f d bes | g' ees c a | f' bes a-! bes-! | d4 f,8 8 | g bes a-! bes-! | ees4 g,8 8 | % 9a
  a8 f' <a, f'>-! q-! | <bes f'> d c-! bes-! | a f' <a, f'>-! q-! | % 9b
  <bes f'>8 d c-! bes-! | <g bes> g' <bes, g'>-! q-! | <bes bes'> f' d-! bes-! |
  \vo d4 c8 8 | \ov <d, bes'>4. <d d'>8 | <e c'>4 <e bes'>8 8 | % 10a
  bes'8 a r a | <e c'>4 <e bes'>8 8 | bes' a r a |
  <g bes>4 <a c> | <bes d>8 <a cis> <bes d> <g bes> | <f a>4 <a c> | % 10b
  <bes f'>8 d c bes | 4 a8 8 | a g r g |
  bes4 a8 8 | a g r g | f4 g8 a | bes4 c | d16 a bes c d f d bes | f ees' fis, d' g, ees' ees, c' | % 11a
  <d, bes'>8 bes' <a c> bes | <a c> <aes d> <g ees'> <aes bes f'> | % 11b
  <g bes g'>8 <bes bes'> <a a'> <bes bes'> | <ees g bes ees>4. <g, g'>8 |
  <f f'>8 <bes bes'> <a a'>-! <bes bes'>-! | <d f bes d>4. <f, f'>8 |
  <g g'>8 <bes bes'> <a a'>-! <bes bes'>-! | <ees g bes ees>4. <g, g'>8 | % 12a
  <f f'>8 <bes bes'> <a a'>-! <bes bes'>-! | <d f bes d>4. <bes bes'>8 |
  <a a'>8 <f' f'> <f a f'>-! q-! | <f bes f'> <d d'> <c c'>-! <bes bes'>-! |
  <a a'>8 <f' f'> <f a f'>-! q-! | <f bes f'> <d d'> <c c'>-! <bes bes'>-! | % 12b
  \ottava #1 <g' bes>8 g' <g, bes g'>-! q-! |
  <bes bes'> <f f'> \ottava #0 <d, d'> <bes' bes'>-! |
  <f' d'>4 <ees f d'>8 8 | <d f bes>16 bes a bes b c cis d |
  ees4 d8 8 | cis4. 8 | d f c f | <bes, bes'> f' d-! bes-! | f'4 a,8 8 | bes16 16[a bes] b c cis d | % 13a
  ees4 d8 8 | cis4. 8 | d f c f | <bes, bes'> g' d-! bes-! | f'4 a,8 8 | bes16 f d f bes f bes c |
  <f, bes d>2 | <f c' f> | <bes d bes'> | <d bes' d> | <f bes d f> | <c ees a> | <d bes'>4 <bes d f bes> | bes,4 <d f>8 8 | % 14a
  q4 8 8 | 4 8 8 | f bes a bes | d4. bes8 | a f' ees c | a4 16 c a g | f8 bes a bes | d4. bes'8 | f d c a | bes4 16 f bes d |
  f8 d c a | f' d c a | f' d c a | f' d c a | bes2 | 2 | 4 d8 f | bes2\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s2*14 |
  s2*3 | f'8 ees d c | s2*8 | a'4 8 8 | % 2
  s2*3 | a4 8 8 | 4 8 8 | gis4 a8 gis | s2*7 |
  s2*2 | a4 8 8 | s2*10 | % 4
  f8 ees d c | s2*13 |
  s2*15 | % 6
  s2*13 |
  s2*16 | % 8
  s2*13 |
  r16 f bes f ees f ees f | s2*11 | % 10
  s2*12 |
  s2*12 | % 12
  s2*12 |
  s2*26 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\p | s2*9 | s2\p | s2*3 |
  s2\< | s\> | s\! | s2*5 | s2\< | s\> | s\! | s2*2 | % 2
  s2*13 |
  s2 | s4 s\< | s2\f | s2\fz\> | s8 s4.\p | s4 s\dim | s2\p | s2*3 | s2\< | s\> | s\! | % 4
  s2*5 | s2\< | s\> | s\! | s4 s\< | s\> s\! | s2*2 | s2\f | s |
  s16 s4..\p | s2*3 | s2\f | s2*2 | s2\ff | s | s4 s\p | s2*5 | % 6
  s2*13 |
  s2*13 | s2\< | s\! | s\> | % 8
  s2\! | s2*2 | s2\f | s2*3 | s4 s\< | s\> s\! | s s\< | s\> s\! | s s\< | s\> s\! |
  s2 | s\p | s2*4 | s2\< | s4\> s\! | s2*4 | % 10
  s2*2 | s2\< | s4 s\! | s2\> | s\! | s4. s8\cresc | s2 | s\f | s\fz | s | s\fz |
  s2 | s\fz | s | s\fz | s4 s\< | s\> s\! | s s\< | s\> s\! | s s\< | s\> s\! | s2 s\p | % 12
  s4\> s\! | s2 | s4 s\< | s2\f | s | s\p | s8\> s4.\! | s2 | s\< | s\f | s2*2 |
  s2*7 | s4 s\p | s2*11 | s2\dim | s2*2 | s2\pp | s2*3 | % 14
}

pianoLHone = \relative {
  \global
  <bes, d f>4-. 8-. 8-. | 4-. 8-. 8-. | 4 8 8 | 4 8 8 | <bes c ees f>4 8 8 | 4 8 8 | <bes d f>4 8 8 |
  q4 8 8 | 4 <bes ees f>8 8 | \repeat unfold 5 {<bes d f>4 8 8} |
  <c ees>4 <c e a>8 8 | <d f bes>4 <ees f a>8 <d f bes> | % 2a
  <c f c'>4 <c e bes'>8 8 | \vo a'8 c bes a \ov |
  <bes, f' bes>4 <bes d f bes>8 8 | 4 8 8 |
  q4 8 8 | <bes d f>4 8 8 | <c ees>4 <c ees a>8 8 | <d f bes>4 <g bes>8 <bes d> % 2b
  <f f'>4 <f ees'>8 8 | <bes d>4 d8 bes | <f f'>4 <f c' f>8 8 |
  q4 4 | <f b> <f c'>8 <f d'> | <f c'>4 f8 8 | <f c' f>4 8 8 | % 3a
  \vo f'4 8 c \ov | <f, b>4 <f c'>8 <f d'> | <f c'>4 f8 8 |
  <a cis>4 <bes d>8 8 | <a cis>4 <bes d>8 8 | <c e>4 8 8 | % 3b
  <f, f'>4 8 8 | <a cis>4 <bes d>8 8 | <a cis>4 <bes d>8 8 |
  <c e>4 8 8 | f,4 <f, f'>8 8 | <f' c'>4 8 8 | <f c' ees>2 | 4 8 8 | 4 8 8 | % 4a
  <bes, bes'>4 <bes d f>8 8 | 4 <bes d g>8 <bes d aes'> | <bes ees g>4 8 8 | % 4b
  q4 <bes ees a>8 <bes ees bes'> | <bes ees c'>4 <bes ees a>8 8 | % 4b
  \vo <d bes'>8 f <f a> <f bes> | \ov <c f c'>4 <c e bes'>8 8 |
  \vo a'8 c bes a \ov | <bes, bes'>4 <bes d f bes>8 8 | % 5a
  <bes d f>4 <bes d g>8 <bes d aes'> | <bes ees g>4 8 8 |
  q4 <bes ees a>8 <bes ees bes'> | <bes ees c'>4 <bes c ees a>8 8 |
  <bes bes'>8 d f bes |
  f4 8 8 | <bes, bes'>4 8 8 \clef treble <bes' g'>4 <bes f'>8 8 | \vo e2 \ov | % 5b
  <bes f'>4 <bes ees>8 8 | <bes d>4 \clef bass <bes, bes'>8-! <d d'>-! |
  <f, f'>4 8 8 |
  <bes bes'>4 8 8 \clef treble | <bes' g'>4 <bes f'>8 8 | \vo e2 \ov | % 6a
  <bes f'>4 <bes ees>8 8 | <bes d>4 \clef bass <bes, bes'>8-! <d d'>-! |
  <f, f'>4 8 8 | <bes bes'>8 q <d d'> <bes bes'> | <g g'>8 8 8 8 |
  <f f'>8 8 8 8 | <bes, bes'>4 bes'8 8 | 4 8 8 | <bes f' aes>4 8 8 | % 6b
  4 8 8 | <bes d f aes>4 4 | q4 8 8 |
  ees8-! g bes ees | aes,,-! ees' aes c | c,-! g' c e | % 7a
  f,,8-! aes' c f | bes,,-! f' bes d | ees,-! g bes a' |
  bes,,8-! bes' d bes | ees,-! ees bes g | ees-! g' bes ees | % 7b
  aes,,8-! ees' aes c | c,-! g' c e | f,,-! aes' c f | bes,,-! f' bes d |
  ees,8-! g bes ees | bes, bes' <bes, bes'> q | <ees g>-! bes' g ees | % 8a
  bes8-! f' bes d | bes,-! g' bes ees | bes,-! f' bes d |
  <bes,, bes'>4 <ees ees'>8 <g g'> |
  ees8 ees' g bes | \vo d, f g ees | bes' g aes bes \ov | % 8b
  <ees, g>8-! ees' bes g | <ees bes'>4 <ees g bes>8 8 | <ees g b>4 8 8 |
  <ees g c>4 8 8 | <e g bes des>4 8 8 | <f bes d>4 8 8 |
  <f a ees'>4 <f c' ees>8 8 | <f, bes d>4 8 8 | <f a ees'>4 8 8 | % 9a
  \vo d'16 f bes f d f e f | d f bes f d f e f | ees f bes g ees g fis g |
  ees16 g bes g ees g fis g |
  ees16 f a f ees f ees f | d f bes d ees f d f | ees, f a f ees f ees f | % 9b
  d16 f bes d ees f d f | ees, bes' ees bes ees, ees' ees, ees' |
  d,16 bes' d bes bes, bes' d, bes' |
  \vo f4 <f, f'>8 8 | \vo g'16 c bes a bes g a bes | g a bes c(des c des bes) | % 10a
  c16 f c bes a bes c f | c a bes c(des c des bes) | c f c bes a bes c f \ov |
  \repeat unfold 2 {c,16 e c' e, c e c' e, |} f a c a ees f c' f, | % 10b
  d16 f bes f d f bes f | d fis bes fis d fis c' fis, |
  ees16 g bes g ees g bes g |
  d16 fis bes fis d fis c' fis, | ees g bes g ees g bes ees | % 11a
  \vo f,16 bes c d ees d ees c | d f ees d e g f e | <f, f'>2 | <f, f'>4 4 \ov |
  \repeat unfold 8 {bes16 bes'} | \vo ees,16 g bes g ees g fis g | % 11b
  ees16 g bes g ees g f ees | d f bes f d f e f | d f bes f d f ees d |
  ees16 g bes g ees g fis g | ees g bes g ees g f ees | % 12a
  d16 f bes f d f e f | d f bes f d f ees d |
  ees16 f a f ees f ees f | d f bes d ees f d f |
  ees,16 f a f ees f ees f | d f bes d ees f d f | % 12b
  ees,16 bes' ees bes ees, ees' ees, ees' | d, bes' d bes bes, bes' d, bes' |
  f16 bes d f f, bes c f | bes,4 <bes, bes'>8 8 \clef treble |
  bes'16 g' bes g bes, f' bes f | bes, e bes' e, bes e bes' e, | % 13a
  bes16 f' bes f bes, ees a ees \clef bass | bes, d f bes bes, bes' d, bes' |
  f16 bes d f f, c' ees f | <bes, d>4 <bes, bes'>8 8 \clef treble |
  bes'16 g' bes g bes, f' bes f | bes, e bes' e, bes e bes' e, | % 13b
  bes16 f' bes f bes, ees a ees \clef bass | bes, d f bes bes, bes' d, bes' |
  f16 bes d f f, c' ees f | <bes, d>8 r r4 |
  <bes, bes'>8 8 8 8 | <a a'>8 8 8 8 | <g g'>8 8 8 8 | 8 8 8 8 | <f f'>8 8 8 8 | 8 8 8 8 | <bes, bes'>4 4 | 4 r | % 14a
  \repeat unfold 2 {<bes' f'>4 8 8} | \repeat unfold 2 {<bes d f>4 8 8} | % 14b
  \repeat unfold 2 {<bes c ees f>4 8 8} | \repeat unfold 2 {<bes d f>4 8 8} |
  q4 <bes ees f a>8 <bes ees f d'> | <bes d f bes>4 8 8 |
  \repeat unfold 4 {q4 <bes ees f a>8 <bes ees f c'>} | % 14c
  <bes d f bes>4 8 8 | 4 8 8 | 2 | 2\fermata |
}

pianoLHtwo = \relative {
  \global \vt
  s2*14 |
  s2*3 | f4 r | s2*9 | % 2
  s2*4 | <f c'>4 f | s2*8 |
  s2*11 | bes,4 c8 d | s2 | % 4
  f4 r | s2*9 | bes4 8 8 | s2*3 |
  s2*2 | bes4 8 8 | s2*12 | % 6
  s2*13 |
  s2*8 | d,4 c | bes4 8 8 | s2*6 | % 8
  s2*3 | \repeat unfold 4 {bes4 8 8 |} c4 8 8 | d4 f8 bes | c,4 8 8 | d4 f8 bes ees,4 8 8 | d4 bes8 d |
  s2 | g,8 r r4 | g'4 8 8 | f8 8 r f | g4 8 8 | f8 8 r f | s2*6 | % 10
  s2*2 | f4 s8 f | 4 g | s2*4 | bes,4 8 8 | 4 s8 bes8 | 4 8 8 | 4 s8 bes |
  bes4 8 8 | 4 s8 8 | 4 8 8 | 4 s8 8 | c4 8 8 | d4 f8 bes |c,4 8 8 | d4 f8 bes | ees,4 8 8 | d4 bes8 d | f4 f | s2 | % 12
  s2*12 |
  s2*26 |
}

#(set-global-staff-size 19)

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
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
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
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
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
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
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
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
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
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
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
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
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
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
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
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
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
