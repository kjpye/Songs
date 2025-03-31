\version "2.25.24"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gebet"
  subtitle    = "Friedrich de la Motte Fouqué"
  subsubtitle = "Op. 139, No. 1"
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
  \key aes \major
  \time 2/2
}

TempoTrack = {
  \tempo Andante 4=100
  \set Score.tempoHideNote = ##t
  s1*96 | s2.
  \tempo Andantino 4=108
  s4 s2.*107
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" }    s1*2 s2.
  \textMark \markup { \box "1b" } s4 s1*3
  \textMark \markup { \box "1c" }    s1*3
  \textMark \markup { \box "2a" }    s1*3
  \textMark \markup { \box "2b" }    s1*3
  \textMark \markup { \box "2c" }    s1*3
  \textMark \markup { \box "3a" }    s1*5
  \textMark \markup { \box "3b" }    s1*5
  \textMark \markup { \box "3c" }    s1*3
  \textMark \markup { \box "3d" }    s1*3
  \textMark \markup { \box "4a" }    s1*3
  \textMark \markup { \box "4b" }    s1*2 s2.
  \textMark \markup { \box "4c" } s4 s1*3
  \textMark \markup { \box "4d" }    s1*4
  \textMark \markup { \box "4e" }    s1*2 s2..
  \textMark \markup { \box "5a" } s8 s1*3
  \textMark \markup { \box "5b" }    s1*3
  \textMark \markup { \box "5c" }    s1*3
  \textMark \markup { \box "5d" }    s1*3
  \textMark \markup { \box "6a" }    s1*3
  \textMark \markup { \box "6b" }    s1*3
  \textMark \markup { \box "6c" }    s1*2 s2..
  \textMark \markup { \box "6d" } s8 s1*3
  \textMark \markup { \box "7a" }    s1*3 s2
  \textMark \markup { \box "7b" } s2 s1*3
  \textMark \markup { \box "7c" }    s1*3
  \textMark \markup { \box "8a" }    s1*4
  \textMark \markup { \box "8b" }    s1*4
  \textMark \markup { \box "8c" }    s1*4 s2.
  \textMark \markup { \box "9a" } s4 s2.*3 s2
  \textMark \markup { \box "9b" } s4 s2.*3 s2
  \textMark \markup { \box "9c" } s4 s2.*3 s2
  \textMark \markup { \box "9d" } s4 s2.*3 s2
  \textMark \markup { \box "10a" } s4 s2.*3
  \textMark \markup { \box "10b" }    s2.*4
  \textMark \markup { \box "10c" }    s2.*3 s2
  \textMark \markup { \box "11a" } s4 s2.*4
  \textMark \markup { \box "11b" }    s2.*5
  \textMark \markup { \box "11c" }    s2.*3 s2
  \textMark \markup { \box "12a" } s4 s2.*2 s2
  \textMark \markup { \box "12b" } s4 s2.*4
  \textMark \markup { \box "12c" }    s2.*4
  \textMark \markup { \box "13a" }    s2.*5
  \textMark \markup { \box "13b" }    s2.*4 s2
  \textMark \markup { \box "13c" } s4 s2.*3 s2
  \textMark \markup { \box "13d" } s4 s2.*3 s2
  \textMark \markup { \box "14a" } s4 s2.*3 s2
  \textMark \markup { \box "14b" } s4 s2.*3
  \textMark \markup { \box "14c" }    s2.*4
  \textMark \markup { \box "15a" }    s2.*3 s2
  \textMark \markup { \box "15b" } s4 s2.*3
  \textMark \markup { \box "15c" }    s2.*4
  \textMark \markup { \box "16a" }    s2.*6
  \textMark \markup { \box "16b" }    s2.*6
  \textMark \markup { \box "16c" }    s2.*9
}

dynamicsSopSolo = {
  \override DynamicTextSpanner.style = #'none
% There really aren't any!
}

sopranoSolo = \relative {
  \global
  R1*26 | r2 r4 r8
  aes'^\markup "Soprano solo" | des1~ |
  des8 c ees8. des16 a4 bes | r ees2. | \tuplet 3/2 {ees8(d) ees} \tuplet 3/2 {ges(f) ees} des4. 8 | % 3c
  bes4. 8 ces4~ \tuplet 3/2 {8(ees) des} | 8.(\tuplet 3/2 {ees32 des ces)} bes4 ges'2~ | 4 ees8. c16 f4 f, |
  ges2. des'4 | bes4. 8 ces4~ \tuplet 3/2 {8(ees) des} | 8.(\tuplet 3/2 {ees32 des ces)} bes4 bes'2~ | % 4a
  bes4 ges8. ees16 aes4 aes, | des2 r | R1*11 |
  R1*12 | % 5
  R1*12 |
  R1*10 | % 7
  R1*12 | r2. \section \time 3/4
}

wordsSopSolo = \lyricmode {
  Du siehst __ in dies mein Her -- ze,
  kennst sei -- ne Lust und Not,
  mild winkt der Hei -- mat Ker -- ze,
  kühn __ ruft glor würd -- ger Tod,
  mild winkt der Hei -- mat Ker -- ze,
  kühn __ ruft glor würd’ -- ger Tod.
}

dynamicsAltoSolo = {
  \override DynamicTextSpanner.style = #'none
% None here either
}

altoSolo = \relative {
  \global
  R1*39 | r2 r4 r8
  f'8^\markup "Alto solo" | bes4. 8 des4. bes8 | \grace aes ges4 ges r bes8(ges) | \grace f e4. g8 c8.(ees32 des c8) e, | % 4c
  f2 r4 aes | des4. 8 4. 8 | fes2 g,4 ces4~ | 2. bes8 aes |
  \after 4. \turn c2. des8(g,) | aes2 r | R1 |
  R1*12 | % 5
  R1*12 |
  R1*10 | % 7
  R1*12 | r2. \section \time 3/4
}

wordsAltoSolo = \lyricmode {
  Mit mir in eins zu -- sam -- men
  schlingt hier sich Kin -- des Huld,
  und drau -- ßen leuch -- ten
  Flam -- men ab -- bren nend Schmach und Schuld.
}

dynamicsTenorSolo = {
  \override DynamicTextSpanner.style = #'none
% or here
}

tenorSolo = \relative {
  \global
  R1*58 | r4 c'2.^\markup "Tenor solo" |
  c8 b d8. c16 gis4 a8 r | r4 d2. | \tuplet 3/2 {d8(cis) d} \tuplet 3/2 {f8(e) d} c4 r | % 5d
  c4 8 8 \after 8 \turn des4(f8.) ees16 | 8~32(f ees des) c8 8 fis4. 8 | g4. e8 g(f~ \tuplet 3/2 {f ees) d} | % 6a
  c2. r4 | 4 8. 16 \after 8 \turn des4(f8.) ees16 | 8~32(f ees d) c8 8 ges'4~16(ees) d(ees) |
  \after 8 \turn bes4(g'2~16 f) d(bes) | ees2 r | R1*4 |
  R1*10 | % 7
  R1*12 | r2. \section \time 3/4 \break
}

wordsTenorSolo = \lyricmode {
  Dein ist in mir die Lie -- be,
  die die -- sen bei -- den quillt,
  dein auch sind mut’ -- ge Trie -- be
  da -- von die Brust.
  die Brust __ mir schwillt,
  dein sind auch mut’ -- ge Trie -- be
  da -- von __ die __ Brust __ mir schwillt.
}

dynamicsBassSolo = {
  \override DynamicTextSpanner.style = #'none
% or even here
}

bassSolo = \relative {
  \global
  R1*49 | r2 r4 r8
  g8^\markup "Bass solo" | c2~8. c,16 8. 16 | b4 c8. 16 des4 r8 b | ces4 des ees r8 ees | % 5a
  aes8. g16 aes8. bes16 c2~ | c c,4 4 | 4. 8 b8.(c32 d) c8(bes) |
  a2. aes4 | g4. g'8 4~16(fis) f(d) | c4 r r2 |
  R1*3 |
  R1*12 | % 6
  R1*10 |
  R1*12 | r2. \section \time 3/4
}

wordsBassSolo = \lyricmode {
  Be -- reit __ bin ich zu -- ster -- ben
  im Kampf der Ah -- nen wert,
  nur si -- cher’ vor Ver -- der -- ben
  mir Weib und Kind __ am __ Herd,
  mir Weib und Kind __ am __ Herd.
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s2.. s8\p | s1*5 | s2.. s8\f |
  s1 | s2. s4\p | s1 | s\cresc | s\ff | s2. s4\p | s1 | s2 s4\< s\> s1\! | % 2
  s2. s4\pp | s1*15 | s1*36 |
  s2 s4 s8 s\p | s1*3 | % 6d
  s1*6 | s1\cresc | s2.\ff\> s4\! | s2. s4\p | s1 |
  s2 s4\< s\> | s1\! | s1*10 | s2.  % 8
  s4 | s2.*15 | s2
  s4 | s2.*10 | s2 % 10
  s4 | s2. | s\< | s\fp\> | s\! | s2.*2 | s2 s4\f | s2.*5 | s2
  s4 | s2. | s2 s4\p | s2.*3 | s2.\f | s2.*4 | s2 s8 s\p | % 12
  s2.*17 | s2
  s4 | s2.*10 | s2.\< | % 14
  s2.\> | s\! | s2.*4 | s8 s\< s2 | s2\> s4\! | s2.*3 |
  s2.*21 | % 16
}

soprano = \relative {
  \set breathMarkType = #'tickmark
  \global
  R1*2 | r2 r4 r8 ees' | c'4. 8 4. 8 | c2 bes4. 8 | ees4. 8 \after 8 \turn 4(f8) des |
  c2. r8 ees, | c'4. 8 4. 8 | fis2 bes,4. d8 |
  ees4. 8 f4 g | c,2. 4 | des4. 8 4. 8 | % 2a
  des4.(ees8) des4 ees | fes4. 8 aes4 ges | fes2. aes8(fes) |
  \grace ees8 d4. 8 4. 8 | ees4~(16 f ees c) aes8 c ees des | c2~(8. des16) bes8.(c16) |
  aes2. c4 | des4. 8 4 4 | 2 c4 aes | c4.-> bes8 aes4 g | aes2. r4 | % 3a
  R1*11 |
  R1*16 | % 4
  R1*12 |
  R1*8 | r2 r4 r8
  ees8 | c'4. 8 4. 8 2 bes4 r8 8 | ees4. 8 \after 8 \turn ees4(f8) des | % 6d
  c2. r8 ees, | c'4. 8 4. 8 | f2 bes,4. d8 | ees4. 8 % 7a
  d8(f) b,(c16 des) | c2. r8 8 | des4. \breathe 8 4. 8 | 4.(ees8) des4 ees |
  fes4. 8 aes4 ges | fes2. aes8(fes) | \grace ees8 d4. 8 4 4 |
  ees4~(16 f ees c) aes8 c ees des | c2~8.(des16) bes8.(c16) | aes2 r4 c | d4. 8 4 4 | % 8a
  f4.(ees8) 4 bes | ces4 4 bes4 4 | 2. r4 | r2 r4 ces |
  ces2 bes4 r | r2 r4 aes8. 16 | 2(g4) r | R1 | r2 r4\fermata \section \time 3/4
  \partial 4 r4 | R2.*3 | r2 % 9a
  c4 | ees4. des8 8 bes | aes4 g \breathe a | bes4. c16(des) c8 bes | bes4(c)
  r4 | R2.*3 | r2
  bes4 | 4(a8) ges' f ees | 4 des bes8(f') | ees4. aes,8 ees'16(des) c8 | bes2
  r4 | r2 bes4 | ees4. 8 c aes | aes(g8) 4 r8 ees' | % 10a
  f4. ees8 c aes | 4(f) r | R2.*2 |
  R2.*3 r2
  ees4 | aes2 4 | bes2 c4 | ees2. | des8 f ees(des) c(bes) | % 11a
  ees2 g,4 aes2 r4 | r2 aes4 | des4. 8 8 8 | 8(c) 4 4 |
  des4. f8 8 8 | 8(ges) 4 4 | fes4. 8 ees des | c2
  r4 | R2. | r2 aes4 | ees'4. 8 % 12a
  ees8 8 | 8(d) des4 8 8 | 4 c c | f4. 8 8 8 | e2 r8 c |
  e4.-> 8 8 8 | 8->(f) 4 r8 8 | d4.-> 8 8 8 | 4(ees) r8 8 |
  c4. 8 8 8 | 8(des) 4. c8 | bes ges' f4 ees | des2 r4 | R2. | % 13a
  r2 ees,4 | aes4. g8 aes c16(bes) | aes4 g a | bes4. c16(des) c8 bes | 4(c)
  r4 | R2.*3 r2
  c4 | bes4. 8 des c | bes4 a bes8(f') | ees4. aes,8 ees'16(des) c8 | bes2
  r4 | R2.*3 | r2 % 14a
  bes4 | c4. bes8 aes g | g(aes) 4 r8 c | 4. bes8 aes g |
  aes2 r8 c | 4.(bes8) aes(g) | aes2 4 | bes2 c4 |
  ees2. | des8 f ees(des) c(bes) | ees2 g,4 | aes2 % 15a
  r4 | R2.*2 | r8 aes bes c des ees |
  f8 aes g(f) ees(des) | c4..(des16) bes8.(c16) | aes2 c4 | bes(g) aes |
  aes2 4 | 2. | g | aes~ | 4 r r | r2 aes4 | % 16a
  c4(ees) des | c2.( | bes4 \grace {c32 bes} a8 bes des) c | aes2.~2 4 | 2. |
  aes2. | 2.~ | 2 bes4 \breathe | aes2.~ | 2.~ | 4 r r | R2.*3 |
  \bar "|."
}

wordsSop = \lyricmode {
  Du Ur -- quell al -- ler Gü -- te,
  du Ur -- quell al -- ler Macht,
  lind hau -- chend aus der Blü -- te,
  hoch don -- nernd aus der Schlact,
  all -- wärts ist rie be -- rei -- tet
  ein Tem -- pel und ein Fest,
  all -- wärts von dir -- ge -- lei -- tet,
  wer gen sich lei -- ten lässt,
  du Ur -- quell al -- ler Gü -- te,
  du Ur -- quell al -- ler Macht.

  Kann es sich mild ge -- stal -- ten,
  so lass es Herr ge -- scheh’n,
  den Frie -- den für -- der wal -- ten
  und Sitt’ und Ruh’ be -- stehn.
  Wo nicht, so gib sum Wer -- ke
  uns Licht in Stur -- mes -- nacht,
  du ew’ -- ge Lieb’ und Stär -- ke,
  dein Wol -- len sei voll -- bracht.
  du ew’ -- ge Lieb’ und Stär -- ke,
                                % 8a
  dein Wol -- len sei voll -- bracht,
  dein Wol -- len sei voll bracht.
                                % 9a
  Wo -- hin du mich willst ha -- ben, mein Herr!
  ich steh’ be -- reit. __
  % 9d
  Zu from -- men Lie -- bes -- ga -- ben
  wie auch zum wa -- ckern Streit.
                                % 10a
  Dein Bot’ in Schlact und Rei -- se,
  dein Bot’ im stil -- len Haus,
                                % 11a
  ruh ich auf al -- le Wei -- se doch
  einst __ im __ Him -- mel aus.
  Du Ur -- quell al -- ler Gü -- te,
  Du Ur -- quell al -- ler Gü -- te,
  du Ur -- quell al -- ler Macht,
                                % 12a
  lind hau -- chend aus der Blü -- te,
  aus der Blü -- te,
  hoch don -- nernd in der Schlact,
  all -- wärts ist dir be -- rei tet
  ein Tem -- pel und ein Fest, __
                                % 13a
  all -- wärts von dir ge -- lei -- tet,
  wer gern sich lei -- ten lässt.
  Wo -- hin du mich willst ha -- ben,
  mein Herr, isch steh’ be -- reit,
                                % 14a
  zu from -- men Lie -- bes -- ga -- ben
  wie  auch sum wa -- ckern Streit.
  Dein Bot’ in Schlacht und Rei -- se,
  dein Bot’ im stil -- len Haus, __
                                % 15a
  ruh’ ich, __ ruh’ __ ich auf al -- le Wei -- se
  doch einst im __ Him -- mel aus,
  ruh’ ich auf al -- le Wei -- se
  einst im __ Him -- mel aus,
                                % 16a
  ruh‘ ich doch einst im Him -- mel aus, __
  ruh‘ ich im Him -- mel aus, __
  ruh‘ ich im Him -- mel aus. __
}

wordsSopMidi = \lyricmode {
  "Du " Ur "quell " al "ler " Gü "te, "
  "\ndu " Ur "quell " al "ler " "Macht, "
  "\nlind " hau "chend " "aus " "der " Blü "te, "
  "\nhoch " don "nernd " "aus " "der " "Schlact, "
  "\nall" "wärts " "ist " "rie " be rei "tet "
  "\nein " Tem "pel " "und " "ein " "Fest, "
  "\nall" "wärts " "von " dir ge lei "tet, "
  "\nwer " "gen " "sich " lei "ten " "lässt, "
  "\ndu " Ur "quell " al "ler " Gü "te, "
  "\ndu " Ur "quell " al "ler " "Macht. "

  "\nKann " "es " "sich " "mild " ge stal "ten, "
  "\nso " "lass " "es " "Herr " ge "scheh’n, "
  "\nden " Frie "den " für "der " wal "ten "
  "\nund " "Sitt’ " "und " "Ruh’ " be "stehn. "
  "\nWo " "nicht, " "so " "gib " "sum " Wer "ke "
  "\nuns " "Licht " "in " Stur mes "nacht, "
  "\ndu " ew’ "ge " "Lieb’ " "und " Stär "ke, "
  "\ndein " Wol "len " "sei " voll "bracht. "
  "\ndu " ew’ "ge " "Lieb’ " "und " Stär "ke, "
                                % 8a
  "\ndein " Wol "len " "sei " voll "bracht, "
  "\ndein " Wol "len " "sei " "voll " "bracht. "
                                % 9a
  "\nWo" "hin " "du " "mich " "willst " ha "ben, " "mein " "Herr! "
  "\nich " "steh’ " be "reit. " 
  % 9d
  "\nZu " from "men " Lie bes ga "ben "
  "\nwie " "auch " "zum " wa "ckern " "Streit. "
                                % 10a
  "\nDein " "Bot’ " "in " "Schlact " "und " Rei "se, "
  "\ndein " "Bot’ " "im " stil "len " "Haus, "
                                % 11a
  "\nruh " "ich " "auf " al "le " Wei "se " "doch "
  "\neinst "  "im "  Him "mel " "aus. "
  "\nDu " Ur "quell " al "ler " Gü "te, "
  "\nDu " Ur "quell " al "ler " Gü "te, "
  "\ndu " Ur "quell " al "ler " "Macht, "
                                % 12a
  "\nlind " hau "chend " "aus " "der " Blü "te, "
  "\naus " "der " Blü "te, "
  "\nhoch " don "nernd " "in " "der " "Schlact, "
  "\nall" "wärts " "ist " "dir " be "rei " "tet "
  "\nein " Tem "pel " "und " "ein " "Fest, " 
                                % 13a
  "\nall" "wärts " "von " "dir " ge lei "tet, "
  "\nwer " "gern " "sich " lei "ten " "lässt. "
  "\nWo" "hin " "du " "mich " "willst " ha "ben, "
  "\nmein " "Herr, " "isch " "steh’ " be "reit, "
                                % 14a
  "\nzu " from "men " Lie bes ga "ben "
  "\nwie "  "auch " "sum " wa "ckern " "Streit. "
  "\nDein " "Bot’ " "in " "Schlacht " "und " Rei "se, "
  "\ndein " "Bot’ " "im " stil "len " "Haus, " 
                                % 15a
  "\nruh’ " "ich, "  "ruh’ "  "ich " "auf " al "le " Wei "se "
  "\ndoch " "einst " "im "  Him "mel " "aus, "
  "\nruh’ " "ich " "auf " al "le " Wei "se "
  "\neinst " "im "  Him "mel " "aus, "
                                % 16a
  "\nruh‘ " "ich " "doch " "einst " "im " Him "mel " "aus, " 
  "\nruh‘ " "ich " "im " Him "mel " "aus, " 
  "\nruh‘ " "ich " "im " Him "mel " "aus. " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s2.. s8\p | s1*5 | s2.. s8\f |
  s1 | s2. s4\p | s1 | s\cresc | s\ff | s | s\p | s2 s4\< s\> s1\! | % 2
  s2. s4\pp | s1*15 | s1*36 |
  s2 s4 s8 s\p | s1*3 | % 6d
  s1*6 | s1\cresc | s2.\ff\> s4\! | s1 | s\p |
  s2 s4\< s\> | s1\! | s1*10 | s2.  % 8
  s4 | s2.*15 | s2
  s4 | s2.*10 | s2 % 10
  s4 | s2. | s\< | s\fp\> | s\! | s | s2 s4\f | s2.*6 | s2
  s4 | s2 s4\p | s2.*4 | s2.\f | s2.*4 | s2 s8 s\p | % 12
  s2.*17 | s2
  s4 | s2.*11 | % 14
  s2.*4 | s2 s4\< | s2. | s\fp\> | s\! | s2.*3 |
  s2.*21 | % 16
}

alto = \relative {
  \set breathMarkType = #'tickmark
  \global
  R1*2 | r2 r4 r8 ees' | aes4. 8 4. 8 | 4.(a8) bes4. g8 | 4 aes g4. 8 |
  aes2. r8 ees | aes4. 8 4. 8 | 2 4. 8 |
  g4. ees8 f4 g | 2. 4 | 4. 8 4. 8 | % 2a
  aes2 4 beses | ces4. 8 4 4 | aes2. r4 |
  aes4 8. 16  4 4 | 2 8 8 8 8 | 2. g4 |
  ees2. aes4 | 4. g8 f4 g | aes2 4 4 | g4.-> f8 ees4 4 | 2. r4 | % 3a
  R1*11 |
  R1*16 | % 4
  R1*12 |
  R1*8 | r2 r4 r8 ees8 | aes4. 8 4. 8 | 4.(a8) bes4 r8 g | 4 aes4 g4. 8 | % 6
  aes2. r8 ees | aes4. 8 4. 8 | 2 4. 8 | g4. 8 % 7a
  aes4 g | 2. r8 8 | 4. \breathe 8 4. 8 | aes2 4 beses |
  ces4. 8 4 4 | aes2. r4 | 4 8. 16 4 4 |
  aes2 8 8 8 8 | 2. 4 | ees2. 4 | aes4. 8 4 4 | % 8a
  aes4.(g8) 4 4 | f4 f g f8(g16 aes) | 2(g4) r | r2 r4 aes |
  aes2 g4 r | r2 r4 d8. 16 | ees2. r4 | R1 | r2 r4\fermata \section \time 3/4
  \partial 4 r4 | R2.*3 | r2 % 9a
  aes4 | ges4. f8 8 des | c4 bes \breathe ees | f4. 8 aes g | 4(aes)
  r4 | R2.*3 | r2
  ges4 | f4. 8 a a | bes4 4 g | aes4. 8 g aes | g2
  r4 | r2 ees4 | 4. 8 8 8 | 4 4 r8 8 | % 10a
  ees4. 8 8 8 | 2 r4 | R2.*2 |
  R2.*3 | r2
  ees4 | 2 aes4 | g2 ges4 | 2. | f8 aes g(f) ees(des) | % 11a
  c2 ees4 | 2 4 | aes4. 8 8 8 | 8(g) 4 ees | 4. 8 8 8 |
  aes4 4 8 8 | 8(ges) 4 4 | bes4. 8 8 8 | aes2
  r4 | r2 ees4 | aes4. 8 8 8 | 8(g) ges4 % 12a
  ges4 | f4. 8 8 8 | 8(fes) ees4 aes | f4. g8 aes bes | c2 r8 8 |
  bes4.-> 8 8 8 | 8->(aes) 4 r8 8 | 4.-> 8 8 8 | 4(ges) r8 8 |
  ges4. 8 8 8 | ges(f) 4. a8 | bes8 8 aes4 4 | f2 r4 | R2. | % 13a
  r2.*4 | r2
  c'4 | 4. des8 c bes | aes4 g a | bes4. 8 aes bes | 4(c)
  r4 | R2.*3 | r2
  bes4 | 8(a4) 8 bes c | 4 bes des | c4. 8 bes aes | g2 % 14a
  r4 | r2 r8 ees | 4. 8 8 8 | 4 4 r8 8 |
  aes4. ees8 8 8 | 2 r4 | R2.*2 |
  R2.*3 | r2 % 15a
  ees4 | aes2 4 | g2 ges4 | 2. |
  f8 8 g(aes) a(bes) | aes2 g4 | aes2 r4 | r2 aes4 |
  aes4(g) f | ees2.( | des4 \grace {ees32 d} c8 des f) ees | c2.~ | 4 r r | r2 aes'4 | % 16a
  aes4(g) f | ees2.( | des4 \grace {ees32 des} c8 des f) ees | c2.~ | 2 4 | 2. |
  des2. | ees~( | 4 des) 4 \breathe | c2.~ | 2.~ | 4 r r | R2.*3 |
  \bar "|."
}

wordsAlto = \lyricmode {
  Du Ur -- quell al -- ler Gü -- te,
  du Ur -- quell al -- ler Macht,
  lind hau -- chend aus der Blü -- te,
  hoch don -- nernd aus der Schlact,
  all -- wärts ist rie be -- rei -- tet
  ein Tem -- pel und ein Fest,
  all -- wärts von dir -- ge -- lei -- tet,
  wer gen sich lei -- ten lässt,
  du Ur -- quell al -- ler Gü -- te,
  du Ur -- quell al -- ler Macht.

  Kann es sich mild ge -- stal -- ten,
  so lass es Herr ge -- scheh’n,
  den Frie -- den für -- der wal -- ten
  und Sitt’ und Ruh’ be -- stehn.
  Wo nicht, so gib sum Wer -- ke
  uns Licht in Stur -- mes -- nacht,
  du ew’ -- ge Lieb’ und Stär -- ke,
  dein Wol -- len sei voll -- bracht.
  du ew’ -- ge Lieb’ und Stär -- ke,
                                % 8a
  dein Wol -- len sei voll -- bracht,
  dein Wol -- len sei voll bracht.
                                % 9a
  Wo -- hin du mich willst ha -- ben, mein Herr!
  ich steh’ be -- reit. __
  % 9d
  Zu from -- men Lie -- bes -- ga -- ben
  wie auch zum wa -- ckern Streit.
                                % 10a
  Dein Bot’ in Schlact und Rei -- se,
  dein Bot’ im stil -- len Haus,
                                % 11a
  ruh ich auf al -- le Wei -- se doch
  einst __ im __ Him -- mel aus.
  Du Ur -- quell al -- ler Gü -- te,
  Du Ur -- quell al -- ler Gü -- te,
  al -- ler Gü -- te,
  du Ur -- quell al -- ler Macht,
                                % 12a
  lind hau -- chend aus der Blü -- te,
  lind hau -- chend aus der Blü -- te,
  hoch don -- nernd in der Schlact,
  all -- wärts ist dir be -- rei tet
  ein Tem -- pel und ein Fest, __
                                % 13a
  all -- wärts von dir ge -- lei -- tet,
  wer gern sich lei -- ten lässt.
  Wo -- hin du mich willst ha -- ben,
  mein Herr, isch steh’ be -- reit,
                                % 14a
  zu from -- men Lie -- bes -- ga -- ben
  wie  auch sum wa -- ckern Streit.
  Dein Bot’ in Schlacht und Rei -- se,
  dein Bot’ im stil -- len Haus, __
                                % 15a
  ruh’ ich auf al -- le Wei -- se
  doch einst im Him -- mel aus,
                                % 16a
  ruh‘ ich im Him -- mel aus, __
  ruh‘ ich im Him -- mel aus, __
  ruh‘ ich im Him -- mel aus. __
}

wordsAltoMidi = \lyricmode {
  "Du " Ur "quell " al "ler " Gü "te, "
  "\ndu " Ur "quell " al "ler " "Macht, "
  "\nlind " hau "chend " "aus " "der " Blü "te, "
  "\nhoch " don "nernd " "aus " "der " "Schlact, "
  "\nall" "wärts " "ist " "rie " be rei "tet "
  "\nein " Tem "pel " "und " "ein " "Fest, "
  "\nall" "wärts " "von " dir ge lei "tet, "
  "\nwer " "gen " "sich " lei "ten " "lässt, "
  "\ndu " Ur "quell " al "ler " Gü "te, "
  "\ndu " Ur "quell " al "ler " "Macht. "

  "\nKann " "es " "sich " "mild " ge stal "ten, "
  "\nso " "lass " "es " "Herr " ge "scheh’n, "
  "\nden " Frie "den " für "der " wal "ten "
  "\nund " "Sitt’ " "und " "Ruh’ " be "stehn. "
  "\nWo " "nicht, " "so " "gib " "sum " Wer "ke "
  "\nuns " "Licht " "in " Stur mes "nacht, "
  "\ndu " ew’ "ge " "Lieb’ " "und " Stär "ke, "
  "\ndein " Wol "len " "sei " voll "bracht. "
  "\ndu " ew’ "ge " "Lieb’ " "und " Stär "ke, "
                                % 8a
  "\ndein " Wol "len " "sei " voll "bracht, "
  "\ndein " Wol "len " "sei " "voll " "bracht. "
                                % 9a
  "\nWo" "hin " "du " "mich " "willst " ha "ben, " "mein " "Herr! "
  "\nich " "steh’ " be "reit. " 
  % 9d
  "\nZu " from "men " Lie bes ga "ben "
  "\nwie " "auch " "zum " wa "ckern " "Streit. "
                                % 10a
  "\nDein " "Bot’ " "in " "Schlact " "und " Rei "se, "
  "\ndein " "Bot’ " "im " stil "len " "Haus, "
                                % 11a
  "\nruh " "ich " "auf " al "le " Wei "se " "doch "
  "\neinst "  "im "  Him "mel " "aus. "
  "\nDu " Ur "quell " al "ler " Gü "te, "
  "\nDu " Ur "quell " al "ler " Gü "te, "
  "\nal" "ler " Gü "te, "
  "\ndu " Ur "quell " al "ler " "Macht, "
                                % 12a
  "\nlind " hau "chend " "aus " "der " Blü "te, "
  "\nlind " hau "chend " "aus " "der " Blü "te, "
  "\nhoch " don "nernd " "in " "der " "Schlact, "
  "\nall" "wärts " "ist " "dir " be "rei " "tet "
  "\nein " Tem "pel " "und " "ein " "Fest, " 
                                % 13a
  "\nall" "wärts " "von " "dir " ge lei "tet, "
  "\nwer " "gern " "sich " lei "ten " "lässt. "
  "\nWo" "hin " "du " "mich " "willst " ha "ben, "
  "\nmein " "Herr, " "isch " "steh’ " be "reit, "
                                % 14a
  "\nzu " from "men " Lie bes ga "ben "
  "\nwie "  "auch " "sum " wa "ckern " "Streit. "
  "\nDein " "Bot’ " "in " "Schlacht " "und " Rei "se, "
  "\ndein " "Bot’ " "im " stil "len " "Haus, " 
                                % 15a
  "\nruh’ " "ich " "auf " al "le " Wei "se "
  "\ndoch " "einst " "im " Him "mel " "aus, "
                                % 16a
  "\nruh‘ " "ich " "im " Him "mel " "aus, " 
  "\nruh‘ " "ich " "im " Him "mel " "aus, " 
  "\nruh‘ " "ich " "im " Him "mel " "aus. " 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s2.. s8\p | s1*5 | s2.. s8\f |
  s1 | s2. s4\p | s1 | s\cresc | s\ff | s | s\p | s2 s4\< s\> s1\! | % 2
  s2. s4\pp | s1*15 | s1*36 |
  s2 s4 s8 s\p | s1*3 | % 6d
  s1*6 | s1\cresc | s2.\ff\> s4\! | s1 | s\p |
  s2 s4\< s\> | s1\! | s1*10 | s2.  % 8
  s4 | s2.*15 | s2
  s4 | s2.*5 | s2.\< | s | s\fp\> | s\! | s | s2 % 10
  s4 | s2. | s\< | s\fp\> | s\! | s2.*3 | s2 s4\f | s2.*4 | s2
  s4\p | s2.*5 | s2.\f | s2.*4 | s2 s8 s\p | % 12
  s2.*17 | s2
  s4 | s2.*11 | % 14
  s2.*4 | s2 s4\< | s2. | s\fp\> | s\! | s2.*3 |
  s2.*21 | % 16
}

tenor = \relative {
  \set breathMarkType = #'tickmark
  \global
  R1*2 | r2 r4 r8 ees' | 4. 8 4. 8 | f2 4. ees8 | 4. 8 4. fes8 |
  ees2. r8 8 | 4. 8 f4. c8 | 4.(ces8) bes4. f'8 |
  ees4. 8 f4 g | ees2. 4 | 4. bes8 4. 8 | % 2a
  aes2 des4 ces | 4. 8 fes4 ees | fes2. r4 |
  bes,4 8. 16 4 4 | c2 8 ees ges f | ees2~8.(f16) des8.(ees16) |
  c2. ees4 | 4. 8 4 4 | 2 4 c | e4.-> f8 c4 des | c2. r4 | % 3a
  R1*11 |
  R1*16 | % 4
  R1*12 |
  R1*8 | r2 r4 r8 ees | 4. 8 4. 8 | f2 4 r8 ees | 4. 8 4. fes8 |
  ees2. r8 8 | 4. 8 f4. c8 | 4.(ces8) bes4. 8 | 4 c % 7a
  d4 8(ees16 f) | ees2. r8 8 | 4. \breathe bes8 4. 8 | aes2 des4 ces |
  ces4. 8 fes4 ees | | fes2. r4 | bes,4 8. 16 4 4 |
  c2 8 ees ges f | ees2~8.(f16) des8.(ees16) | c2. 4 | aes4. bes8 ces4 bes8(aes) | % 8a
  d4.(ees8) 4 4 | 4 4 4 d8(ees16 f) | 2(ees4) r | r2 r4 d |
  ees2 4 r | r2 r4 ces8. 16 | ces2(bes4) r | R1 | r2 r4\fermata \section \time 3/4
  \partial 4 ees,4 | aes4. g8 aes c16(bes) | aes4 g \breathe a | bes4. c16(des) c8 bes | 4(c) % 9a
  r4 | R2.*3 | r2
  c4 | bes4. 8 des bes | 4 a bes8(f') | ees4. aes,8 \grace ees' des c | bes2
  r4 | R2.*3 | r2
  bes4 | c4. bes8 aes g | g(aes8) 4 r8 c | 4. bes8 aes g | % 10a
  g4(aes) r8 c | 4.(bes8) aes(g) | aes2 4 | bes2 c4 |
  ees2. | des8 f ees(des) c(bes) | ees2 g,4 | aes2
  es'4 c2 4 | des2 ees4 | c2. | des8 8 ees(f) ges(f) | % 11a
  ees2 fes4 | c2 r4 | R2. | r2 ees4 | ges4. 8 8 8 |
  ges8(f) 4 des8 8 | 4 4 4 | 4. 8 ees fes | ees2
  aes,4 | ees'4. 8 8 8 | 8(d) des4 4 | c4. 8 % 12a
  c8 8 | bes4. 8 8 8 | 4 c aes | f4. g8 aes bes | c2 r8 8 |
  g'4.-> 8 8 8 | 8->(f) 4 r8 8 | 4.-> 8 8 8 | 4(ees) r8 8 |
  ees4. 8 8 8 | 8(des) 4. ees8 | des8 8 4 c | des2 r4 | R2. | % 13a
  R2.*4 | r2
  ees4 | ges4. f8 ees des | c4 bes ees | f4. des8 c ees | 2
  r4 | R2.*3 | r2
  ges4 | 8(c,4) 8 des ees | 4 des bes8(f') | ees4. aes,8 ees'16(des) c8 | bes2 % 14a
  r4 | r2 r8 ees | 4. 8 c aes | 8(g) 4 r8 ees' |
  f4. ees8 c aes | 4(g) r | R2.*2 |
  R2.*3 | r2 % 15a
  ees4 | c'2 4 | bes2 c4 | ees2. |
  des8 f ees(des) c(bes) | ees2 des4 | c2 r4 | r2 aes4 |
  c4(ees) des | c2.( | bes4 \grace {c32 bes} a8 bes des) c | aes2.~ | 4 r c | bes4(g) aes | % 16a
  aes2 4 | 2. | g | aes~ | 2 ees4 | 2. |
  f2. | ges2.~( | 4 f) fes \breathe | ees2.~ | 2.~ | 4 r r | R2.*3 |
  \bar "|."
}

wordsTenor = \lyricmode {
  Du Ur -- quell al -- ler Gü -- te,
  du Ur -- quell al -- ler Macht,
  lind hau -- chend aus der Blü -- te,
  hoch don -- nernd aus der Schlact,
  all -- wärts ist rie be -- rei -- tet
  ein Tem -- pel und ein Fest,
  all -- wärts von dir -- ge -- lei -- tet,
  wer gen sich lei -- ten lässt,
  du Ur -- quell al -- le Gü -- te,
  du Ur -- quell al -- ler Macht.

  Kann es sich mild ge -- stal -- ten,
  so lass es Herr ge -- scheh’n,
  den Frie -- den für -- der wal -- ten
  und Sitt’ und Ruh’ be -- stehn.
  Wo nicht, so gib sum Wer -- ke
  uns Licht in Stur -- mes -- nacht,
  du ew’ -- ge Lieb’ und Stär -- ke,
  dein Wol -- len sei __ voll -- bracht.
  du ew’ -- ge Lieb’ und Stär -- ke,
                                % 8a
  dein Wol -- len sei voll -- bracht,
%  du ew’ -- ge Lieb’ und Stär -- ke,
  dein Wol -- len sei voll bracht.
                                % 9a
  Wo -- hin du mich willst ha -- ben, mein Herr!
  ich steh’ be -- reit. __
  % 9c
  Zu from -- men Lie -- bes -- ga -- ben
  wie __ auch zum wa -- ckern Streit.
                                % 10a
  Dein Bot’ in Schlact und Rei -- se,
  dein Bot’ im stil -- len Haus,
                                % 11a
  ruh ich __ ruh’ ich auf al -- le Wei -- se doch
  einst __ im __ Him -- mel aus.
  ruh ich auf al -- le Wei -- se doch
  einst __ im __ Him -- mel aus.
  Du Ur -- quell al -- ler Gü -- te,
  al -- ler Gü -- te,
  du Ur -- quell al -- ler Macht,
                                % 12a
  lind hau -- chend aus der Blü -- te,
  lind hau -- chend aus der Blü -- te,
  aus der Blü -- te,
  hoch don -- nernd in der Schlact,
  all -- wärts ist dir be -- rei tet
  ein Tem -- pel und ein Fest, __
                                % 13a
  all -- wärts von dir ge -- lei -- tet,
  wer gern sich lei -- ten lässt.
  Wo -- hin du mich willst ha -- ben,
  mein Herr, isch steh’ be -- reit,
                                % 14a
  zu from -- men Lie -- bes -- ga -- ben
  wie  auch sum wa -- ckern Streit.
  Dein Bot’ in Schlacht und Rei -- se,
  dein Bot’ im stil -- len Haus, __
                                % 15a
  ruh’ ich auf al -- le Wie -- se
  doch einst __ im __ Him -- mel aus,
                                % 16a
  ruh‘ ich im Him -- mel aus, __
  ruh‘ ich doch  einst im Him -- mel aus, __
  ruh‘ ich im Him -- mel aus. __
}

wordsTenorMidi = \lyricmode {
  "Du " Ur "quell " al "ler " Gü "te, "
  "\ndu " Ur "quell " al "ler " "Macht, "
  "\nlind " hau "chend " "aus " "der " Blü "te, "
  "\nhoch " don "nernd " "aus " "der " "Schlact, "
  "\nall" "wärts " "ist " "rie " be rei "tet "
  "\nein " Tem "pel " "und " "ein " "Fest, "
  "\nall" "wärts " "von " dir ge lei "tet, "
  "\nwer " "gen " "sich " lei "ten " "lässt, "
  "\ndu " Ur "quell " al "le " Gü "te, "
  "\ndu " Ur "quell " al "ler " "Macht. "

  "\nKann " "es " "sich " "mild " ge stal "ten, "
  "\nso " "lass " "es " "Herr " ge "scheh’n, "
  "\nden " Frie "den " für "der " wal "ten "
  "\nund " "Sitt’ " "und " "Ruh’ " be "stehn. "
  "\nWo " "nicht, " "so " "gib " "sum " Wer "ke "
  "\nuns " "Licht " "in " Stur mes "nacht, "
  "\ndu " ew’ "ge " "Lieb’ " "und " Stär "ke, "
  "\ndein " Wol "len " "sei "  voll "bracht. "
  "\ndu " ew’ "ge " "Lieb’ " "und " Stär "ke, "
                                % 8a
  "\ndein " Wol "len " "sei " voll "bracht, "
%  du ew’ -- ge Lieb’ und Stär -- ke,
  "\ndein " Wol "len " "sei " "voll " "bracht. "
                                % 9a
  "\nWo" "hin " "du " "mich " "willst " ha "ben, " "mein " "Herr! "
  "\nich " "steh’ " be "reit. " 
  % 9c
  "\nZu " from "men " Lie bes ga "ben "
  "\nwie "  "auch " "zum " wa "ckern " "Streit. "
                                % 10a
  "\nDein " "Bot’ " "in " "Schlact " "und " Rei "se, "
  "\ndein " "Bot’ " "im " stil "len " "Haus, "
                                % 11a
  "\nruh " "ich "  "ruh’ " "ich " "auf " al "le " Wei "se " "doch "
  "\neinst "  "im "  Him "mel " "aus. "
  "\nruh " "ich " "auf " al "le " Wei "se " "doch "
  "\neinst "  "im "  Him "mel " "aus. "
  "\nDu " Ur "quell " al "ler " Gü "te, "
  "\nal" "ler " Gü "te, "
  "\ndu " Ur "quell " al "ler " "Macht, "
                                % 12a
  "\nlind " hau "chend " "aus " "der " Blü "te, "
  "\nlind " hau "chend " "aus " "der " Blü "te, "
  "\naus " "der " Blü "te, "
  "\nhoch " don "nernd " "in " "der " "Schlact, "
  "\nall" "wärts " "ist " "dir " be "rei " "tet "
  "\nein " Tem "pel " "und " "ein " "Fest, " 
                                % 13a
  "\nall" "wärts " "von " "dir " ge lei "tet, "
  "\nwer " "gern " "sich " lei "ten " "lässt. "
  "\nWo" "hin " "du " "mich " "willst " ha "ben, "
  "\nmein " "Herr, " "isch " "steh’ " be "reit, "
                                % 14a
  "\nzu " from "men " Lie bes ga "ben "
  "\nwie "  "auch " "sum " wa "ckern " "Streit. "
  "\nDein " "Bot’ " "in " "Schlacht " "und " Rei "se, "
  "\ndein " "Bot’ " "im " stil "len " "Haus, " 
                                % 15a
  "\nruh’ " "ich " "auf " al "le " Wie "se "
  "\ndoch " "einst "  "im "  Him "mel " "aus, "
                                % 16a
  "\nruh‘ " "ich " "im " Him "mel " "aus, " 
  "\nruh‘ " "ich " "doch "  "einst " "im " Him "mel " "aus, " 
  "\nruh‘ " "ich " "im " Him "mel " "aus. " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*2 | s2.. s8\p | s1*5 | s2.. s8\f |
  s1 | s2. s4\p | s1 | s\cresc | s\ff | s | s\p | s1*2 | % 2
  s1*2 | s2. s4\pp | s1*13 | s1*36 |
  s2 s4 s8 s\p | s1*3 | % 6d
  s1*6 | s1\cresc | s2.\ff\> s4\! | s1 | s\p |
  s1*12 | s2.  % 8
  s4 | s2.*15 | s2
  s4 | s2.*10 | s2 % 10
  s4 | s2. | s\< | s\fp\> | s\! | s2.*4 | s2 s4\f | s2.*3 | s2
  s4 | s2.*2 | s2 s4\p | s2.*2 | s2.\f | s2.*4 | s2 s8 s\p | % 12
  s2.*17 | s2
  s4 | s2.*11 | % 14
  s2.*4 | s2 s4\< | s2. | s\fp\> | s\! | s2.*3 |
  s2.*21 | % 16
}

bass = \relative {
  \set breathMarkType = #'tickmark
  \global
  R1*2 | r2 r4 r8 ees | aes4. 8 4. 8 | des,2 4. 8 | c4. 8 bes4. 8 |
  aes2. r8 ees' | aes4. 8 f4. 8 | d2 4. bes'8 |
  ees,4. 8 f4 g | c,2. 4 | ees4. 8 4. 8 | % 2a
  fes2 4 ges | aes4. 8 ces4 4 | fes,2. r4 |
  f4 8. 16 4 4 | c4.(ees8) aes r r4 | r8 c, aes c ees4 4 |
  aes,2. r4 | R1 | r2 r4 aes' | c,4.-> des8 ees4 4 | aes,2. r4 | % 3a
  R1*11 |
  R1*16 |
  R1*12 | % 5
  R1*8 | r2 r4 r8 ees' | aes4. 8 4. 8 | des,2 4 r8 des | c4. 8 bes4. 8 | % 6
  aes2. r8 ees' | aes4. 8 f4. 8 | d2 4. bes8 | ees4. 8 % 7a
  f4 g | c,2. r8 c | ees4. \breathe 8 4. 8 | des2 4 ees |
  aes4. 8 ces4 4 | fes,2 r | f4 8. 16 4 4 |
  c4.(ees8) aes2 | r8 c, aes c ees4 4 | aes,2. 4 | f'4. 8 4 4 | % 8a
  ees2 4 4 | aes,4 4 bes4 4 | ees2. 4 | fes4-> 4 4 4 |
  ees2 4 ees, | fes4-> 4 4 4 | ees2. r4 | R1 | r2 r4\fermata \section \time 3/4
  \partial 4 r4 | R2.*3 | r2 % 9a
  aes'4 | a4. bes8 bes, c16(d) | ees4 4 \breathe c | des4. bes8 ees ees | 4(aes)
  r4 | R2.*3 | r2
  ees4 | f4. ees8 des c | bes4 bes' des | c4. 8 bes aes | ees2
  r4 | r2 des4 | c4. 8 8 8 | des4 4 r8 8 % 10a
  c4. 8 8 8 | des2 r4 | R2.*2 |
  R2.*3 | r2
  ees4 | aes2 4 | 2 4 | des,2. | 8 8 8(f) a(bes) | % 11a
  ees,2 4 | aes,2 r4 | R2.*2 | r2 aes'4 |
  ces4. 8 8 8 | 8(bes) 4 4 | g4. 8 8 8 | aes2
  r4 | R2.*2 | r2 % 12a
  a,4 | bes4. 8 aes aes | g4 aes f | des'4. 8 8 8 | c2 r4 |
  r2 r8 c | c'4.-> 8 8 8 | ces->(bes) 4 r8 8 | 4. 8 8 8 |
  beses4(aes) r8 8 | 4. 8 a f | ges8 8 aes aes aes, aes | des2 r4 | R2. | % 13a
  R2.*4 | r2
  aes'4 | a4. bes8 bes, c16(des) | ees4 4 c | des4. 8 ees g | 4(aes)
  r4 | R2.*3 | r2
  ees4 | f4. 8 8 8 | a4 bes g | aes4. 8 g8 aes | ees2 % 14a
  r4 | r2 r8 des | c4. 8 8 8 | des4 4 r8 8 |
  c4. 8 8 8 | des2 r4 | R2.*2 |
  R2.*3 | r2 % 15a
  ees4 | aes2 4 | 2 4 | c2. |
  des8 des,8 4 4 | ees2 4 | aes,2 r4 | R2. |
  r4 c des | ees2 4 | 2 4 | aes,2.~ | 4 r r | R2. | % 16a
  r4 c des | ees2 4 | 2 4 | aes,2.~ | 2 4 | 2. |
  aes2. | 2.~ | 2 g4 \breathe | aes2.~ | 2.~ | 4 r r | R2.*3 |
  \bar "|."
}

wordsBass = \lyricmode {
  Du Ur -- quell al -- ler Gü -- te,
  du Ur -- quell al -- ler Macht,
  lind hau -- chend aus der Blü -- te,
  hoch don -- nernd aus der Schlact,
  all -- wärts ist rie be -- rei -- tet
  ein Tem -- pel und ein Fest,
  all -- wärts von dir -- ge -- lei -- tet,
  wer gen sich lei -- ten lässt,
  du Ur -- quell al -- ler Macht.

  Kann es sich mild ge -- stal -- ten,
  so lass es Herr ge -- scheh’n,
  den Frie -- den für -- der wal -- ten
  und Sitt’ und Ruh’ be -- stehn.
  Wo nicht, so gib sum Wer -- ke
  uns Licht in Stur -- mes -- nacht,
  du ew’ -- ge Lieb’ und Stär -- ke,
  dein Wol -- len sei voll -- bracht.
  du ew’ -- ge Lieb’ und Stär -- ke,
                                % 8a
  dein Wol -- len sei voll -- bracht,
  du ew’ -- ge Lieb’ und Stär -- ke,
  dein Wol -- len sei voll bracht.
                                % 9a
  Wo -- hin du mich willst ha -- ben, mein Herr!
  ich steh’ be -- reit. __
  % 9d
  Zu from -- men Lie -- bes -- ga -- ben
  wie auch zum wa -- ckern Streit.
                                % 10a
  Dein Bot’ in Schlact und Rei -- se,
  dein Bot’ im stil -- len Haus,
                                % 11a
  ruh ich auf al -- le Wei -- se doch
  einst __ im __ Him -- mel aus.
  Du Ur -- quell al -- ler Gü -- te,
  du Ur -- quell al -- ler Macht,
                                % 12a
  lind hau -- chend aus der Blü -- te,
  hoch don -- nernd in der Schlact,
  all -- wärts ist dir be -- rei tet
  ein Tem -- pel und ein Fest, __
                                % 13a
  all -- wärts von dir ge -- lei -- tet,
  wer sich lei -- ten lässt.
  Wo -- hin du mich willst ha -- ben,
  mein Herr, isch steh’ be -- reit,
                                % 14a
  zu from -- men Lie -- bes -- ga -- ben
  wie  auch sum wa -- ckern Streit.
  Dein Bot’ in Schlacht und Rei -- se,
  dein Bot’ im stil -- len Haus, __
                                % 15a
  ruh’ ich auf al -- le Wei -- se
  doch einst im Him -- mel aus,
                                % 16a
  ruh‘ ich einst im Him -- mel aus, __
  ruh‘ ich einst im Him -- mel aus, __
  ruh‘ ich im Him -- mel aus. __
}

wordsBassMidi = \lyricmode {
  "Du " Ur "quell " al "ler " Gü "te, "
  "\ndu " Ur "quell " al "ler " "Macht, "
  "\nlind " hau "chend " "aus " "der " Blü "te, "
  "\nhoch " don "nernd " "aus " "der " "Schlact, "
  "\nall" "wärts " "ist " "rie " be rei "tet "
  "\nein " Tem "pel " "und " "ein " "Fest, "
  "\nall" "wärts " "von " dir ge lei "tet, "
  "\nwer " "gen " "sich " lei "ten " "lässt, "
  "\ndu " Ur "quell " al "ler " "Macht. "

  "\nKann " "es " "sich " "mild " ge stal "ten, "
  "\nso " "lass " "es " "Herr " ge "scheh’n, "
  "\nden " Frie "den " für "der " wal "ten "
  "\nund " "Sitt’ " "und " "Ruh’ " be "stehn. "
  "\nWo " "nicht, " "so " "gib " "sum " Wer "ke "
  "\nuns " "Licht " "in " Stur mes "nacht, "
  "\ndu " ew’ "ge " "Lieb’ " "und " Stär "ke, "
  "\ndein " Wol "len " "sei " voll "bracht. "
  "\ndu " ew’ "ge " "Lieb’ " "und " Stär "ke, "
                                % 8a
  "\ndein " Wol "len " "sei " voll "bracht, "
  "\ndu " ew’ "ge " "Lieb’ " "und " Stär "ke, "
  "\ndein " Wol "len " "sei " "voll " "bracht. "
                                % 9a
  "\nWo" "hin " "du " "mich " "willst " ha "ben, " "mein " "Herr! "
  "\nich " "steh’ " be "reit. " 
  % 9d
  "\nZu " from "men " Lie bes ga "ben "
  "\nwie " "auch " "zum " wa "ckern " "Streit. "
                                % 10a
  "\nDein " "Bot’ " "in " "Schlact " "und " Rei "se, "
  "\ndein " "Bot’ " "im " stil "len " "Haus, "
                                % 11a
  "\nruh " "ich " "auf " al "le " Wei "se " "doch "
  "\neinst "  "im "  Him "mel " "aus. "
  "\nDu " Ur "quell " al "ler " Gü "te, "
  "\ndu " Ur "quell " al "ler " "Macht, "
                                % 12a
  "\nlind " hau "chend " "aus " "der " Blü "te, "
  "\nhoch " don "nernd " "in " "der " "Schlact, "
  "\nall" "wärts " "ist " "dir " be "rei " "tet "
  "\nein " Tem "pel " "und " "ein " "Fest, " 
                                % 13a
  "\nall" "wärts " "von " "dir " ge lei "tet, "
  "\nwer " "sich " lei "ten " "lässt. "
  "\nWo" "hin " "du " "mich " "willst " ha "ben, "
  "\nmein " "Herr, " "isch " "steh’ " be "reit, "
                                % 14a
  "\nzu " from "men " Lie bes ga "ben "
  "\nwie "  "auch " "sum " wa "ckern " "Streit. "
  "\nDein " "Bot’ " "in " "Schlacht " "und " Rei "se, "
  "\ndein " "Bot’ " "im " stil "len " "Haus, " 
                                % 15a
  "\nruh’ " "ich " "auf " al "le " Wei "se "
  "\ndoch " "einst " "im " Him "mel " "aus, "
                                % 16a
  "\nruh‘ " "ich " "einst " "im " Him "mel " "aus, " 
  "\nruh‘ " "ich " "einst " "im " Him "mel " "aus, " 
  "\nruh‘ " "ich " "im " Him "mel " "aus. " 
}

pianoRHone = \relative {
  \global
  <c' ees aes c>4.-> 8 4.-> 8 |
  <c f aes c>4. 8 4. 8 |
  <c e bes' c>4 <des f bes des> <c ees aes c> <des ees g bes> |
  <c ees aes>4. <c ees aes c>8 4. 8 | % 1b
  <f aes c>4. <f a c>8 <f bes>4. <ees g bes>8 |
  <<{\vo ees'4.} \new Voice {\vth g,4(aes8)} \new Voice {\vt ees4.}>> <ees aes ees'>8 <ees g ees'>4. <fes g des'>8 |
  <ees aes c>4. <c ees aes c>8 4. 8 | % 1c
  q4. 8 <c f aes c>4. 8 |
  <f aes c>4. <f aes ces>8 <f aes bes>4. <f aes bes d>8 |
  <ees g bes ees>4. <ees ees'>8 <f f'>4 <g g'> | % 2a
  <c, ees g c>4. 8 4. 8 |
  <ees g bes des>4. 8 4. 8 |
  <fes aes des>4. <des aes' des>8 4 <ges beses ces ees>4 | % 2b
  <fes ces' fes>4. 8 <aes c fes aes>4 <ges ces ees ges> |
  <fes aes ces fes>4. 8 4. 8 |
  <ees aes bes ees>4(<d aes' bes d>8) 8 4. 8 | % 2c
  <ees aes c ees>4. 8 8 <ees aes c>(<ges aes ees'> <f aes des>) |
  <ees aes c>4. 8 4 <des ees g bes> |
  <c ees aes>2. <ees aes c>4 | % 3a
  <ees aes des>4. <ees g des'>8 <ees f des'>4 <ees g des'> |
  <ees aes des>2~(<ees aes c>4) <c ees aes> |
  <e g c>4. <f bes>8 <c ees aes>4 <bes des ees g> |
  <c ees aes>2 4 4 |
  <c ees aes>2 <aes aes'>4 4 | % 3b
  <bes bes'>2 <c c'> |
  <f, f'>2 <f des' f>4 4 |
  <ges des' ges>2 <ges c aes'> |
  <f aes des>4 r8 <g d' ees>16. 32 <aes d f>4 r8 <g d' ees>16. 32 |
  <aes des f>4 r8 q16. 32 <bes des ges>4 r8 16. 32 | % 3c
  <bes ees ges>4 r8 <beses ees g>16. 32 <aes ees' g>4 r8 <beses ees g>16. 32 |
  <aes ees' ges>4. 16. 32  <aes des f>8 <f' des'> <ges des'> <aes des> |
  <bes des>8 \tuplet 3/2 {des16 bes' des,~} <des bes'>4 \vo r8 \tuplet 3/2 {des16 ces' des,~} <des ces'>4 | % 3d
  r8 \tuplet 3/2 {des16 bes' des,~} \ov <des bes'>4 r8 <bes, bes'>16. 32 <des des'>16. 32 <fes fes'>16. 32 |
  <ees ees'>8 <ees ges ees'> r <ees ges c ees> r <des f bes des> r <ees f a c> |
  <bes des ges bes>2. r4 | % 4a
  \vo r8 \tuplet 3/2 {des'16 bes' des,~} <des bes'>4 r8 \tuplet 3/2 {des16 ces' des,~} <des ces'>4 |
  r8 \tuplet 3/2 {des16 bes' des,~} <des bes'>4 r8 \ov <d, d'>16. 32 <f f'>16. 32 <aes aes'>16. 32 |
  <ges ges'>8 <ges bes ees ges> r q r <f aes des f> r <ges aes c ees> | % 4b
  r8 <f aes des> r <des des'> r q r <c c'> |
  <bes bes'>8 r r4 r4
  r4 | r16 f'(ges f des'8-> bes) r16 f(ges f des'8-> bes) | % 4c
  r16 ges(aes ges des'8 bes) r16 ges(aes ges des'8 ges,) |
  r16 e(g e c'8 e,) r16 e(g e c'8 e,) |
  r16 f(e f c'8 f,) r16 aes(g aes c8 aes) | % 4d
  r16 aes(g aes des8 aes) r16 aes(g aes des8 aes) |
  \repeat tremolo 8 {<bes des fes>32 g~} <g bes des fes>4 r |
  \repeat tremolo 8 {<aes ces>32 f~} <f aes ces>4 r |
  <aes c>32 ees q ees q ees q ees <aes c>8 r <ees g>32 des q des q des q des q8 r | % 4e
  <ees aes>32 c q c q c q c q8 r <d aes'>32 c q c q c q c~<c d aes'>8 r |
  <ees g>32 c q c q c q c~<c ees g>8 r <d g>32 b q b q b q b~ <b d g>8
  r8 | <c ees g c>2. r8. \lh <ees, g c>16 | % 5a
  <f c' des>4 \rh \ov <g bes c e> <aes c f> r8. <f bes d>16 |
  <g bes ees>4 <aes bes d f> <g bes ees g> r8. <bes ees g>16 |
  <c ees aes>8. <bes ees g>16 <c ees aes>8. <des ees g bes>16 <c ees aes c>8. <c ees c'>16 8. 16 | % 5b
  q8. 16 8. 16 8. 16 8. 16 |
  <c e a c>8. 16 8. 16 <d gis b>8. 16 8. 16 |
  <c a'>8. 16 8. 16 8. 16 <c f aes>8. 16 | % 5c
  <c e g>8. 16 <c ees g>8. 16 <c d g>8. 16<b d g>8. 16 |
  <g c e>4. <fis c' dis>16 16 <g c e>4 r8 <gis c e>16 16 |
  <c ees aes c>4 r8 16 16 <des ees bes' des>4 r8 16 16 | % 5d
  <a d f>4 r8 <aes d f>16 16 <g d' f>4 r8 <a d f>16 16 |
  <g d' f>4 r8 <g b f'>16 16 <g c e>4 r8 <c e>16 16 |
  <c ees aes c>4 r8 16 16 <c ees bes' des>4 r8 16 16 | % 6a
  <c ees aes c>2 r8 <ees fis c' ees>16. 32 16. 32 16. 32 |
  <e g c e>8 8 r <e g bes cis> r <f a d> r <f g b d> |
  \vo <e g c>2 2 | % 6b
  \ov <c ees aes c>4. 16 16 <des ees bes' des>4. 16 16 |
  <c ees aes c>2 r8 <ees ges a ees'>16. 32 16. 32 16. 32 |
  <ees g bes ees>8 <ges bes ees g> r <g bes des e> r <aes c f> r <f aes bes d> | % 6c
  <ees g bes ees>4. 16 16 <ees g des' ees>4. 16 16 |
  <ees aes c ees>4. 16 16 <ees g bes ees>4.
  <ees g bes ees>16 16 | <c ees aes c>4. 8 4. 8 | % 6d
  <f aes c>4. <f a c>8 <g bes>4. <ees g bes>8 |
  <<{\vo ees'4.} \new Voice {\vth g,4(aes8) <aes ees'>}>> \ov <ees g ees'>4. <fes g des'>8 |
  <ees aes c>4. 8 4. 8 | % 7a
  <c ees aes c>4. 8 <c f aes c>4. 8 |
  <f aes c>4. <f aes ces>8 <f aes bes>4. <f aes d>8 |
  <ees g ees'>4. <ees g c ees>8
  <d aes' c d>4 <f g b d> | % 7b
  <ees g c>4. 8 4. 8 |
  <ees g bes des>4. 8 4. 8 |
  <fes aes des>4. <des aes' des>8 4 <ges beses ces ees> |
  <fes ces' fes>4. 8 <aes ces fes aes>4 <ges ces ees ges> | % 7c
  <ees aes ces fes>4. 8 4. 8 |
  <ees aes bes ees>4(<d aes' bes d>8) 8 4. 8 |
  <ees aes c ees>4. <ees aes c>8 <c ees aes>8(<ees aes c> <ges aes ees'> <f aes des>) | % 8a
  <ees aes c>4. 8 4 <des ees g bes> |
  <c ees aes>2. <ees aes c>4 |
  <aes d>4. 8 4 4 |
  <aes f'>4.(<g ees'>8) 4 <ees g bes> | % 8b
  <ees f ces'>4 4 <ees g bes> \vo bes' |
  bes2. \ov r4 |
  r2 r4 <d, aes' ces> |
  <ees aes ces>2~(<ees g bes>4) r | % 8c
  r2 r4 <ces d aes'> |
  <ces ees as>2~(<bes ees g>4) ees4 |
  ees4^. 4^. 4^. 4^. |
  ees2.\fermata \section \time 3/4
  \partial 4 r4 | r8 <c ees aes> r q r <des f bes> | % 9a
  r8 <c ees aes> r <bes ees g> r <ees ges a> |
  r8 <f bes> r <f bes des>8-.(<ees aes c>-. <ees g bes>-.) |
  r8 \vo <g bes> <aes c> \ov <ees aes c>
  r8 <ees aes c> | r <ges ees'> r <f des'> r <des f g> | % 9b
  r8 <c ees aes> r <bes ees g> r <ees ges a> |
  r8 <f bes> r <f bes des> <ees aes c> <ees g bes> |
  r8 \vo <g bes>8(<aes c>) \ov <ees aes c>
  r8 <ees aes c> | r <ees ges bes> r \vo bes' des bes \ov | % 9c
  r8 <des, f bes> r <c f a> \vo bes'4( |
  aes8) \ov <ees aes ees'> r q <ees g des'> <ees aes c> |
  r8 <ees g bes> r q
  r8 <ees ges bes> | r8 \vo bes'(a) ges' f ees | % 9d
  \ov r8 <f, bes ees> r <f bes des> <<{\vo bes8 f'} \new Voice {\vth bes,4}>> |
  s4 \ov f8 <ees aes ees'> <ees g des'> <ees aes c> |
  r8 <ees g bes> r q
  r8 <ees g bes> | r8 <ees g ees'> r q(<ees aes ees'> <ees bes' ees>) | % 10a
  r8 <ees aes ees'> r q r q |
  r8 <ees g ees'> r q <ees aes ees'> <ees bes' ees> |
  r8 <ees aes ees'> r q r q | % 10b
  r8 <ees g ees'> r q <ees aes ees'> <ees bes' ees> |
  r8 <ees aes> r <c ees aes> r q |
  r8 <des g bes> r q r <ees ges c> |
  r8 <ges c ees> r q r q | % 10c
  <f des'>8 <aes f'>(<g ees'> <f des'> <ees ges c> <des f bes>) |
  r8 <c ees aes> r q r <d g bes>( |
  <c aes'>) aes'8-.(<g aes>-. <f aes>-.
  <ees aes>8-. <des ees g>-.) | % 11a
  <c ees aes>8 8 r q r q |
  r8 <des g bes> r q r <ees ges c> |
  r8 <ges c ees> r q r q |
  <f des'>8 <aes f'>(<g ees'> <f des'> <ees ges c> <des f bes>)
  r8 <c ees aes> r q r <des ees g> | % 11b
  r8 <c ees aes> r <ees aes ees'> r <des ees g> |
  <c ees aes>16 aes c ees aes8 <c, ees aes> <bes f' aes> q |
  \vo des'4 \ov des8 <ees, g des'> <ees bes' des> q |
  \vo <aes des>4(\ov c8) <ees, g c> q q |
  \vo <aes des>4 \ov des8 <aes des f> q q | % 11c
  <<{\vo f'8 ges} \new Voice {\vth des4}>> \ov <g, des' g> q |
  <des' fes>16 fes, bes des f8 <bes, f'> <bes ees> <bes des> |
  <aes c>16 aes,(c ees aes8) 8-.
  aes8-. 8-. | r16 aes(c ees aes8) 8-. 8-. 8-. % 12a
  r16 aes,(g aes aes'8) 8-. 8-. 8-. |
  r16 ees(c aes ges8) <ges ees'>-.
  <ges ees'>8-. 8-. | % 12b
  \vo ees'8(d des) 8-. 8-. 8-. |
  <bes des>4(\ov <ees, aes c>16) c ees aes c8 <c, aes' c> |
  <f f'>4. <g f'>8 <aes f'> <bes f'> |
  <c e>16 c, e g c8 8 8 8 |
  <g bes e>16 e g bes e8 <g, bes e> q q | % 12c
  q8 <f aes f'> q4. 8 |
  <f aes d>16 d f aes d8 <f, aes d> q q |
  q4 <ees ges ees'>4. 8 |
  c'16 c, ees ges c8 <ees, g c> q q | % 13a
  <ees ges c>8 <des f des'>8 4. <ees a c>8 |
  <des bes'> <bes' des ges> r <aes des f> r <ges c ees> |
  r8 <f aes des> r q r <f a des> |
  r8 <f bes des> r q r <fes bes des> |
  r8 <ees g des'> r <ees aes c> r <ees g bes> | % 13b
  r16 c(ees aes) r c,(f aes) r des,(f bes) |
  r16 c,(ees aes) r bes,(ees g) r ees( ges a) |
  r16 des,(f bes) r f(bes des <aes c> ees <g bes> ees) |
  r16 ees g bes r ees, aes c
  r16 ees, aes c | % 13c
  r16 ees, ges c ges c f, des' ees, c' des, bes' |
  r16 c, ees aes r bes, ees g r ees ges a |
  r16 des, f bes r des, f bes <c, aes'> ees <bes des> ees |
  r16 ees g bes r ees, aes c
  r16 ees, aes c | r ees, ges bes r ees, ges bes r ees, ges c | % 13d
  r16 des, f bes r c, f a bes f g bes |
  r16 ees, aes ees' r ees, aes ees' <g, des'> ees <aes c> ees |
  r16 ees g bes r ees, ges bes
  r16 ees, ges bes | r c, f a r f <c aes'> f <des bes'> f <ees c'> f | % 14a
  r16 ees f c' r des, f bes r f bes des |
  r16 ees, aes c r ees, <aes c> ees <des bes'> ees <c aes'> ees |
  r16 bes ees g r ees g bes
  r16 g bes ees | r ees, g ees' r ees, g ees' aes, ees' bes ees | % 14b
  r16 ees, aes ees' r ees, aes ees' r ees, aes ees' |
  r16 ees, g ees' r ees, g ees' aes, ees' bes ees |
  \repeat unfold 5 {r16 ees, aes ees'} aes, ees' bes ees | % 14c
  r16 ees, aes ees' r c, ees aes r c, ees aes |
  r16 des, g bes r des, g bes r ees, ges c |
  r16 ges c ees r ges, c ees r ges, c ees | % 15a
  f,16 des' aes f' g, ees' f, des' <ees, ges> c' <des, f> bes' |
  r16 c, ees aes r c, ees aes r des, g bes |
  r16 c, f aes g aes f aes
  ees16 aes <des, ees> g | r16 c, ees aes r c, ees aes r c, ees aes | % 15b
  r16 des, g bes r des, g bes r ees, ges c |
  r16 ges c ees r ges, c ees r ges, c ees |
  f,16 des' f, aes' g, g' aes, f' a, ees' bes des | % 15c
  r16 ees, aes c r ees, aes c r des, g bes |
  <c, aes'>8 c(ees aes) c4( |
  bes4)(g) <aes, aes'> |
  \vo aes'2~4 | % 16a
  \ov <c, ees aes>4 r r |
  <bes des ees g>4 r r |
  <c ees aes>2.~ |
  q4 r r |
  r2 aes'4 |
  <aes c>4(<g ees'> <f des'>) | % 16b
  <ees c'>4 r r | <des bes'>4 r r |
  <c aes'>8 ees'(c aes ees c) |
  aes8 ees'(c \lh aes ees c) |
  aes4 \rh \ov <aes'' aes'>4-.(4-.) |
  r4 <des aes'>4-.(4-.) | % 16c
  r4 <ees aes>-.(q-. |
  q4-. <des aes'>-. <des bes'>-.) |
  <c aes'>4 r <aes' c>( |
  <c ees>8) r r4 <c ees>( |
  <c aes'>8) r r4 r | <c,, ees aes>4 r r |
  q4 r r |
  R2. |
}

pianoRHtwo = \relative {
  \global \vt
  s1*62 |
  s1*3 | % 6a
  c'4. 16 16 4. 16 16 | s1*7 | ees4. 8 s2 |
  s1*10 | % 7
  s1*5 | s2. <d f>8 <ees g>16 <f aes> | q2(<ees g>4) s | s1*5 | s2. \section \time 3/4
  s4 | s2.*3 | s8 ees4 s8 % 9a
  s4 | s2.*3 | s8 ees4 s8
  s4 | s4. <ees g>4 8 | s2 f8 g | aes8 s s2 | s2
  s4 | s8 <c, f>4 aes'8-.(8-. 8-.) | s2 f8 g( | <aes ees'>) <ees aes ees'> s2 | s2
  s4 | s2.*10 | s2 % 10
  s4 | s2.*7 | aes16 ees g bes s2 | ges16 ees ges aes s2 |ges16 ees f aes s2 | aes8 ges s2 | s2. | s2
  s4 | s2.*3 | <f bes>4. 8-. 8-. 8-. | f8 fes s2 | s2.*6 | % 12
  s2.*18 |
  s2.*11 | % 14
  s2.*11 |
  <c aes'>4 <ees g> <des f> | s2.*20 | % 16
}

ffz = #(make-dynamic-script "ffz")

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p s1*7 | s2.. s8\f |
  s1 | s2. s4\p | s1 | s\cresc | s\ff | s2. s4\p | s1*3 | % 2
  s2 s\pp | s1*4 | s2 s\f | s1 | s2 s\p | s s4\> s\! | s4. s8\p s2 | s1*3 | s1\pp | s2 s\ff | s1 |
  s1\ffz | s\pp | s2 s\ff | s1 | s2..\> s8\! | s1*5 | s2 s\cresc | s1\fz | s\fp | s\p | s2 s\decresc | s2.. % 4
  s8 | s1\ff | s1*3 | s2 s\decresc | s1*3 | s1\p | s1*3 |
  s1 | s2 s\ff | s1 | s2 s\decresc | s1\pp | s2 s\ff | s1 | s\p | s\decresc | s\pp | s1*2 | % 6
  s1*5 | s2.. s8\cresc | s1 | s\ff\> | s2\! s\decresc | s1\p |
  s2 s4\> s\< | s1\! | s1 | s2.\< s4\! | s2\f\> s4\! s\pp | s1*2 | s4 s2.\dim | s1 | s2. s4\ppp | s1*2 | s2.\fz % 8
  s4 | s2.\p | s2.*2 | s2 s4\< | s8 s8\! s s4.\> | s2.\! | s2.*9 | s2
  s4 | s2.*5 | s2 s8 s\< | s2. | s\fp\> | s8\! s4\< s4.\> | s2.\! | s2 % 10
  s4 s2. | s\< | s\fp\> | s\! | s | s4 s2\cresc | s2.\f | s2.*5 | s2
  s4\p | s2.*5 | s2.\f | s | s\fz | s\fz | s\fz | s2 s8 s\p | % 12
  s2.*4 | s2.\decresc | s4.\< s\> | s2.\p | s2.*10 | s2
  s4 | s2.*10 | s2.\< | % 14
  s2.\fp\> | s2.\! | s2.*2 | s2 s4\< | s 2 s8 s\! | s2.\fp\> |s2.\! | s | s8 s4.\p s4\pp | s2. |
  s2.*11 | s2.\ppp | s2.*3 | s2 s4\dim | s2.*4 | s2.\omit\ppppp | % 16
}

pianoLHone = \relative {
  \global
  aes,8-.\tuplet 3/2 {ees'16-. 16-. 16-.} aes8-. ees-. aes,-.\tuplet 3/2 {ees'16-. 16-. 16-.} aes8-. ees-. |
  f,8 \tuplet 3/2 {c'16 16 16} f8 c f, \tuplet 3/2 {c'16 16 16} f8 c |
  c,8 \tuplet 3/2 {c'16 16 16} bes,8 \tuplet 3/2 {bes'16 16 16} ees,8 \tuplet 3/2 {c'16 c c} ees8 8 |
  aes,8 \tuplet 3/2 {ees'16 16 16} aes8 ees aes,8 \tuplet 3/2 {ees'16 16 16} aes8 ees | % 1b
  des8 \tuplet 3/2 {f16 16 16} aes8 f des \tuplet 3/2 {f16 16 16} bes8 des, |
  c8 \tuplet 3/2 {ees16 16 16} aes8 c, bes \tuplet 3/2 {ees16 16 16} g8 bes, |
  aes8 \tuplet 3/2 {ees'16 16 16} aes8 ees aes, \tuplet 3/2 {ees'16 16 16} aes8 ees | % 1c
  aes,8 \tuplet 3/2 {ees'16 16 16} aes8 ees f, \tuplet 3/2 {c'16 16 16} f8 c |
  d,8 \tuplet 3/2 {d'16 d d} f8 d d, \tuplet 3/2 {d'16 d d} f8 bes, |
  <ees, ees'>8 \tuplet 3/2 {ees'16 16 16} 8 q <f, f'> \tuplet 3/2 {f'16 16 16} <g, g'>8 \tuplet 3/2 {g'16 16 16} | % 2a
  c,,8 \tuplet 3/2 {g'16 16 16} c8 g c, \tuplet 3/2 {g'16 g g} c8 g |
  ees8 \tuplet 3/2 {ees'16 16 16} g8 ees ees, \tuplet 3/2 {ees'16 16 16} g8 ees |
  fes,8 \tuplet 3/2 {fes'16 16 16} aes8 fes fes, \tuplet 3/2 {fes'16 16 16} ges,8 \tuplet 3/2 {ges'16 16 16} | % 2b
  aes,8 \tuplet 3/2 {aes'16 16 16} ces8 aes <ces,, ces'> \tuplet 3/2 {ces''16 16 16} q8 \tuplet 3/2 {ces16 16 16} |
  <fes,, fes'>8 \tuplet 3/2 {aes'16 16 16} ces8 aes q \tuplet 3/2 {aes16 16 16} ces8 aes |
  f8 \tuplet 3/2 {aes16 16 16} bes8 aes f \tuplet 3/2 {aes16 16 16} bes8 aes | % 2c
  c,8 \tuplet 3/2 {ees16 16 16} aes8-. ees-. aes-. aes,(c des) |
  <ees, ees'>8 \tuplet 3/2 {ees'16 16 16} aes8 ees \repeat unfold 2 {ees, \tuplet 3/2 {ees'16 16 16}} |
  aes,8 \tuplet 3/2 {ees'16 16 16} aes8 ees c' aes ees c | % 3a
  \vo bes4. c16 des ees8 8 8 8 |
  ees8 \tuplet 3/2 {16 16 16} aes8 ees aes c aes ees |
  <c, c'>4. <des des'>8 <ees ees'>4 4 |
  \ov <aes, aes'>8 \tuplet 3/2 {c'16 c c} ees8 c aes ees c ees |
  <aes, aes'>2 4 4 | % 3b
  <bes bes'>2 <c c'> |
  <des des'>2~8 8 <c c'> <ces ces'> |
  <bes bes'>4(<beses beses'>) <aes aes>2 |
  <des des'>4 r8 des16. 32 des'4 r8 des,16. 32 |
  <des des'>4 r8 des16. 32 des'4 r8 des,16. 32 | % 3c
  des'4 r8 16. 32 c4 r8 des16. 32 |
  c4 r8 aes16. 32 des8 des'(ees f) |
  ges4 r8 \rh <ges bes>16. 32 <f aes>4 r8 q16. 32 | % 3d
  <ges bes>4 \lh \ov r4 r8 <fes,, fes'>16. 32 <des des'>16. 32 <bes bes'>16. 32 |
  <ces ces'>8 r <c c'> <ees ees'> <f f'> r <f, f'> r |
  <ges ges'>2. r4 | % 4a
  \rh <ges''' bes>4 r8 q16. 32 <f aes>4 r8 q16. 32 |
  <ges bes>2 \lh \ov r8 <aes,, aes'>16. 32 <f f'>16. 32 <d d'>16. 32 |
  <ees ees'>8 r <ges ges'> r <aes aes'> r <aes, aes'> r | % 4b
  <des des'>8 r q r q r <c c'> r |
  bes'8 <f' bes des> bes, q bes q
  \repeat unfold 5 {bes8 q} | % 4c
  \repeat unfold 4 {bes8 <ges' bes des>} |
  \repeat unfold 4 {bes,8 <e g c>}
  aes,8 <f' aes c> aes, q ges' <aes c ees> ges q | % 4d
  f8 <aes des> f q fes q fes q |
  \repeat tremolo 8 {<ees bes'>32 des'~} <ees, g des'>4 r |
  \repeat tremolo 8 {<d aes'>32 ces'~} <d, aes' ces>4 r |
  ees16 16 16 16 8 r ees16 16 16 16 8 r | % 4e
  aes,16 16 16 16 8 r f16 16 16 16 8 r |
  g16 16 16 16 8 r g16 16 16 16 8
  r8 | <c, c'>2. r8. \vt q16 | % 5a
  <aes aes'>4 \ov <g g'> <f f'> r8. <aes aes'>16 |
  <g g'>4 <f f'> <ees ees'> r8. <des' des'>16 |
  <c c'>8. <des des'>16 <c c'>8. <bes bes'>16 <aes aes'>8. 16 8. 16 | % 5b
  <g g'>8. 16 8. 16 fis'8. 16 f8. 16 |
  e8. 16 8. 16 8. 16 8. 16 |
  f8. 16 8. 16 8. 16 <f, f'>8. 16 | % 5c
  <g g'>8. 16 8. 16 8. 16 8. 16 |
  <c c'>4 r8 c16 16 c'4 r8 c,16 16 |
  c'4 r8 c,16 16 c'4 r8 c,16 16 | % 5d
  c'4 r8 c16 c b4 r8 c16 c |
  b4. g16 g c4. <bes g'>16 16 |
  \vo <ees aes>8 \tuplet 3/2 {ees16 16 16} 4~8 \tuplet 3/2 {16 16 16} 4~ | % 6a
  ees8 \tuplet 3/2 {16 16 16} 4 \ov r8 <a,, a'>8-. <c c'>-. <ees ees'>-. |
  <g, g'>8-. r q r q r q r |
  \vo c'8 \tuplet 3/2 {16 16 16} 4~8 \tuplet 3/2 {16 16 16} 4 | % 6b
  aes8 \tuplet 3/2 {ees'16 16 16} 4~8 \tuplet 3/2 {16 16 16} 4~ |
  ees8 \tuplet 3/2 {16 16 16} 4 \ov r8 <c, c'>8 <ees ees'> <ges ges'> |
  <bes, bes'>8 r q r q r q r | % 6c
  <ees ees'>8 \tuplet 3/2 {ees'16 16 16} s4 \vo bes'4. 16 16|
  c4. 16 16 des4.
  des16 16 | \ov aes,8-. \tuplet 3/2 {ees'16-. 16-. 16-.} aes8-. ees-. aes,-. \tuplet 3/2 {ees'16-. 16-. 16-.} aes8 ees | % 6d
  des8 \tuplet 3/2 {f16 f f} aes8 f des \tuplet 3/2 {f16 f f} bes8 des, |
  c8 \tuplet 3/2 {ees16 16 16} aes8 c, bes \tuplet 3/2 {ees16 16 16} g8 bes, |
  aes8 \tuplet 3/2 {ees'16 16 16} aes8 ees aes, \tuplet 3/2 {ees'16 16 16} aes8 ees | % 7a
  aes,8 \tuplet 3/2 {ees'16 16 16} aes8 ees f, \tuplet 3/2 {c'16 16 16} f8 c |
  d,8 \tuplet 3/2 {d'16 d d} f8 d d, \tuplet 3/2 {d'16 d d} f8 bes, |
  <ees, ees'>8 \tuplet 3/2 {g'16 g g} c8 ees,,
  f8 \tuplet 3/2 {f'16 f f} g,8 g' | % 7b
  c,,8 \tuplet 3/2 {g'16 g g} c8 g c, \tuplet 3/2 {g'16 g g} c8 g |
  ees8 \tuplet 3/2 {bes'16 16 16} ees8 bes ees, \tuplet 3/2 {bes'16 16 16} ees8 bes |
  fes8 \tuplet 3/2 {des'16 16 16} ges8 des f, \tuplet 3/2 {f'16 f f} ges,8 \tuplet 3/2 {ges'16 16 16} |
  aes,8 \tuplet 3/2 {aes'16 16 16} ces8 aes <ces,, ces'>8 \tuplet 3/2 {ces''16 16 16} q8 \tuplet 3/2 {ces16 16 16} | % 7c
  <fes,, fes'>8 \tuplet 3/2 {aes'16 16 16} ces8 aes q \tuplet 3/2 {aes16 16 16} ces8 aes |
  f8 \tuplet 3/2 {aes16 16 16} bes8 aes f \tuplet 3/2 {aes16 16 16} bes8 aes |
  c,8 \tuplet 3/2 {ees16 16 16} aes8 ees aes,(aes' c, des) | % 8a
  <ees, ees'>8 \tuplet 3/2 {aes'16 16 16} c8 aes ees, \tuplet 3/2 {ees'16 16 16} ees,8 ees' |
  \vo aes,8 \tuplet 3/2 {ees'16 16 16} aes8 ees c' aes ees c |
  \ov <f aes>4. <f bes>8 <f ces'>4 \vo bes8 aes |
  d4.(ees8) ees \tuplet 3/2 {bes16 16 16} g8 ees \ov | % 8b
  aes,4 4 bes bes |
  ees2~8 \tuplet 3/2 {16 16 16} 8 8 |
  fes4-> 4 4 4 |
  ees2~8 \tuplet 3/2 {ees,16 16 16} 8 8( | % 8c
  fes4->) 4 4 4 |
  ees2. \vo \crossStaff {ees'4 |
  ees4 4 4 4 |
                         ees2.\omit\fermata} \section \time 3/4
  \partial 4 \ov r4 | aes8 r f r des r | % 9a
  ees8 r ees r c r |
  des8 r bes r ees r |
  aes,8 r aes' r
  aes8 r | a r a(bes) bes,(c16 des) | % 9b
  ees8 r ees r c r |
  des8 r bes r ees r |
  aes,8 r aes' r
  aes8 r | ees r ges r ees r | % 9c
  f8 r f r des4( |
  c8) r c'4 bes8 aes |
  ees8 r ees, r
  c'8 r | des r f, ees' des c | % 9d
  bes8 r bes' r des,4( |
  c8) r c'4 bes8 aes |
  ees8 r ees, r
  ees'8 r | <des ees> r q r q-.(q-.) | % 10a
  <c ees>8 r q r q q |
  <des ees>8 r q r q q |
  <c ees>8 r q r q q | % 10b
  <des ees>8 r q r q q |
  <c ees>8 r aes r aes r |
  bes8 r bes r aes r |
  <des, des'> 8 r q r q r | % 10c
  q4 r8 <des' aes> <des a'> <des bes'> |
  ees8 r ees r e r |
  f8 f(ees des
  c8 bes) | aes8 r aes r aes r | % 11a
  aes8 r aes r aes r |
  <des, des'>8 r q r q r |
  q4 r8 <des' f> <des a'> <des bes'> |
  ees8 r ees r ees r | % 11b
  aes,8 r c r ees r |
  <aes,, aes'>4 <c c'> <d d'> |
  <ees ees'>4 ees <g g'> |
  <aes aes'>4 <aes, aes'> <aes' aes'> |
  <ces ces'>4. 8 8 8 | % 11c
  q8(<bes bes'>) 16 bes des ges bes8 bes, |
  <g g'>4. <g' des'>8 <ges ees'> <ges fes'> |
  <aes ees'>16 aes,16(c ees aes8) aes-.
  aes8-. 8-. | <ges aes ees'>8 r q r q r | % 12a
  \vo ees'8 d(des) \ov r8 <f, aes des> r |
  <aes c>8 r q r
  <a c>8 r | r16 bes, a bes bes'8 bes,-. aes-. 8-. | % 12b
  g4(aes8) r f r |
  des'16 des, f aes des8 <des g> <des aes'> <des bes'> |
  <c c'>16 c e g c8 8 8 8 |
  <c, c'>4. 8 8 8 | % 12c
  c'16 c, f aes c8 q q q |
  <ces, ces'>8 <bes bes'>8 4. 8 |
  bes'16 bes, a bes bes'8 q q q |
  <beses, beses'>4(<aes aes'>4.) 8 | % 13a
  q4. aes'8(a f) |
  ges8 r aes r aes, r |
  des8 r des r des r |
  bes8 r bes' r g r |
  \vo bes4(c des) | % 13b
  \ov aes8 r f r des r |
  ees8 r ees r c r |
  des8 r bes r ees ees |
  aes,8 r aes' r
  aes8 r | a4.(bes8) bes, c16 des | % 13c
  ees8 r ees r c r |
  des8 r des r ees ees |
  aes,8 r aes' r
  aes8 r | ees r ees, r ees' r | % 13d
  f8 r f, r des'4( |
  c8) r c'4(bes8 aes) |
  ees8 r ees, r
  ees'8 r | f r f, f' f f | % 14a
  bes,8 r bes' r g4( |
  aes4) aes,8 aes'-. g-. aes-. |
  ees8 r ees r
  ees8 r | \vo r4 r8 g aes bes | % 14b
  \ov <c, ees aes> r q r q <c ees> |
  \vo r4 r8 g' aes bes |
  \ov <c, ees aes> r q r q <c ees> | % 14c
  \vo r4 r8 bes' aes g |
  \ov q8 r q r c, r |
  bes8 r bes r aes r |
  <des, des'>8 r q r q r | % 15a
  q4. <des' aes'>8 <des a'> <des bes'> |
  ees8 r ees r e r |
  f4(ees8 des
  c8 bes) | aes8 r <aes aes'> r q r | % 15b
  q8 r q r q r |
  <des aes'>8 r q r q r |
  \vo des8 des' ees des c bes | % 15c
  \ov ees,8 r ees r ees r |
  aes,4 r r |
  R2. |
  r4 c(des) | % 16a
  ees4 r r |
  <ees, ees'>4 r r |
  aes8 aes,(c ees f g) |
  c8(ees g aes) c4( |
  bes4)( g aes) |
  \vo aes2 4 | % 16b
  \ov <ees aes>4 r r |
  <ees g>4 r r |
  <aes, aes'>4 r r |
  r8 \vt ees'(c aes ees c) |
  aes4 \vo <aes'' ees'>-.(4-.) |
  r4 <aes f'>-.(q-.) | % 16c
  r4 \clef treble <aes ges'>-.(q-. |
  <aes ges'>4-. <aes f'>-. <des fes>-.) |
  <aes ees'>4 r <aes' c>( |
  <c ees>8) r r4 q( |
  <c aes'>8) r r4 r \clef bass |
  <aes,,, aes'>4 r r |
  q4 r r |
  R2. |
}

pianoLHtwo = \relative {
  \global \vt
  s1*19 | ees,1 | aes2~4 r | s1*2 | % 3a
  s1*11 |
  s1*16 | % 4
  s1*12 |
  aes4 r8 16 16 g4 r8 16 16 | aes2 s | s1 | % 6a
  c,2(bes) | aes4 r8 aes'16 16 g4. 16 16 | aes2 s |
  s1 | s4 ees'4~8 \tuplet 3/2 {16 16 16} 4 | 8 \tuplet 3/2 {16 16 16} 4~8 \tuplet 3/2 {16 16 16} 8~
  ees8 | s1*3 |
  s1*10 |
  s1*2 | aes,2. 4 | s1 | % 8a
  <ees' bes'>2 4 r | s1*3 |
  s1*2 | s2. ees,4 | ees4 4 4 4 | ees2. \section \time 3/4
  s4 | s2.*15 | s2 % 9
  s4 | s2.*10 | s2
  s4 | s2.*12 | s2 % 11
  s4 | s2. | <f' aes>4~8 s4. | s2.*9 |
  s2.*5 | ees2. | s2.*11 | s2 % 13
  s4 | s2.*4 | \repeat unfold 3 {<des ees>8 r q r q q | s2. |} s2. |
  s2.*7 | des4. 8 8 8 | s2.*3 | % 15
  s2.*6 | r4 c des | s2.*14 |
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
                                % Soprano Solo staff
          \new Staff = sopranosolo \with {
            instrumentName = #"Soprano Solo"
            shortInstrumentName = #"SS"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics \wordsSopSolo
          >>
                                % Alto Solo staff
          \new Staff = altosolo \with {
            instrumentName = #"Alto Solo"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
            \new Voice \altoSolo
            \addlyrics \wordsAltoSolo
          >>
                                % Tenor Solo staff
          \new Staff = tenorsolo \with {
            instrumentName = #"Tenor Solo"
            shortInstrumentName = #"ST"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
            \new Voice \tenorSolo
            \addlyrics \wordsTenorSolo
          >>
                                % Bass Solo staff
          \new Staff = basssolo \with {
            instrumentName = #"Bass Solo"
            shortInstrumentName = #"SB"
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = basssolo} \dynamicsBassSolo
            \new Voice \bassSolo
            \addlyrics \wordsBassSolo
          >>
                                % Single soprano satff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
      \context { \PianoStaff
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
    output-suffix = single-sop
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano Solo staff
          \new Staff = sopranosolo \with {
            instrumentName = #"Soprano Solo"
            shortInstrumentName = #"SS"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics {\tiny \wordsSopSolo}
          >>
                                % Alto Solo staff
          \new Staff = altosolo \with {
            instrumentName = #"Alto Solo"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
            \new Voice \altoSolo
            \addlyrics {\tiny \wordsAltoSolo}
          >>
                                % Tenor Solo staff
          \new Staff = tenorsolo \with {
            instrumentName = #"Tenor Solo"
            shortInstrumentName = #"ST"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
            \new Voice \tenorSolo
            \addlyrics {\tiny \wordsTenorSolo}
          >>
                                % Bass Solo staff
          \new Staff = basssolo \with {
            instrumentName = #"Bass Solo"
            shortInstrumentName = #"SB"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
            \new Voice \bassSolo
            \addlyrics {\tiny \wordsBassSolo}
          >>
                                % Single soprano satff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
      \context { \PianoStaff
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
    output-suffix = single-alto
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano Solo staff
          \new Staff = sopranosolo \with {
            instrumentName = #"Soprano Solo"
            shortInstrumentName = #"SS"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics {\tiny \wordsSopSolo}
          >>
                                % Alto Solo staff
          \new Staff = altosolo \with {
            instrumentName = #"Alto Solo"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
            \new Voice \altoSolo
            \addlyrics {\tiny \wordsAltoSolo}
          >>
                                % Tenor Solo staff
          \new Staff = tenorsolo \with {
            instrumentName = #"Tenor Solo"
            shortInstrumentName = #"ST"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
            \new Voice \tenorSolo
            \addlyrics {\tiny \wordsTenorSolo}
          >>
                                % Bass Solo staff
          \new Staff = basssolo \with {
            instrumentName = #"Bass Solo"
            shortInstrumentName = #"SB"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
            \new Voice \bassSolo
            \addlyrics {\tiny \wordsBassSolo}
          >>
                                % Single soprano satff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
      \context { \PianoStaff
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
    output-suffix = single-tenor
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano Solo staff
          \new Staff = sopranosolo \with {
            instrumentName = #"Soprano Solo"
            shortInstrumentName = #"SS"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics {\tiny \wordsSopSolo}
          >>
                                % Alto Solo staff
          \new Staff = altosolo \with {
            instrumentName = #"Alto Solo"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
            \new Voice \altoSolo
            \addlyrics {\tiny \wordsAltoSolo}
          >>
                                % Tenor Solo staff
          \new Staff = tenorsolo \with {
            instrumentName = #"Tenor Solo"
            shortInstrumentName = #"ST"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
            \new Voice \tenorSolo
            \addlyrics {\tiny \wordsTenorSolo}
          >>
                                % Bass Solo staff
          \new Staff = basssolo \with {
            instrumentName = #"Bass Solo"
            shortInstrumentName = #"SB"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
            \new Voice \bassSolo
            \addlyrics {\tiny \wordsBassSolo}
          >>
                                % Single soprano satff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
      \context { \PianoStaff
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
                                % Soprano Solo staff
          \new Staff = sopranosolo \with {
            instrumentName = #"Soprano Solo"
            shortInstrumentName = #"SS"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics {\tiny \wordsSopSolo}
          >>
                                % Alto Solo staff
          \new Staff = altosolo \with {
            instrumentName = #"Alto Solo"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
            \new Voice \altoSolo
            \addlyrics {\tiny \wordsAltoSolo}
          >>
                                % Tenor Solo staff
          \new Staff = tenorsolo \with {
            instrumentName = #"Tenor Solo"
            shortInstrumentName = #"ST"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
            \new Voice \tenorSolo
            \addlyrics {\tiny \wordsTenorSolo}
          >>
                                % Bass Solo staff
          \new Staff = basssolo \with {
            instrumentName = #"Bass Solo"
            shortInstrumentName = #"SB"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
            \new Voice \bassSolo
            \addlyrics {\tiny \wordsBassSolo}
          >>
                                % Single soprano satff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
      \context { \PianoStaff
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
                                % Soprano Solo staff
          \new Staff = sopranosolo \with {
            instrumentName = #"Soprano Solo"
            shortInstrumentName = #"SS"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics \wordsSopSolo
          >>
                                % Alto Solo staff
          \new Staff = altosolo \with {
            instrumentName = #"Alto Solo"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
            \new Voice \altoSolo
            \addlyrics \wordsAltoSolo
          >>
                                % Tenor Solo staff
          \new Staff = tenorsolo \with {
            instrumentName = #"Tenor Solo"
            shortInstrumentName = #"ST"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
            \new Voice \tenorSolo
            \addlyrics \wordsTenorSolo
          >>
                                % Bass Solo staff
          \new Staff = basssolo \with {
            instrumentName = #"Bass Solo"
            shortInstrumentName = #"SB"
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = basssolo} \dynamicsBassSolo
            \new Voice \bassSolo
            \addlyrics \wordsBassSolo
          >>
                                % Single soprano satff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
      \context { \PianoStaff
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
                                % Soprano Solo staff
          \new Staff = sopranosolo \with {
            instrumentName = #"Soprano Solo"
            shortInstrumentName = #"SS"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics {\tiny \wordsSopSolo}
          >>
                                % Alto Solo staff
          \new Staff = altosolo \with {
            instrumentName = #"Alto Solo"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
            \new Voice \altoSolo
            \addlyrics {\tiny \wordsAltoSolo}
          >>
                                % Tenor Solo staff
          \new Staff = tenorsolo \with {
            instrumentName = #"Tenor Solo"
            shortInstrumentName = #"ST"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
            \new Voice \tenorSolo
            \addlyrics {\tiny \wordsTenorSolo}
          >>
                                % Bass Solo staff
          \new Staff = basssolo \with {
            instrumentName = #"Bass Solo"
            shortInstrumentName = #"SB"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
            \new Voice \bassSolo
            \addlyrics {\tiny \wordsBassSolo}
          >>
                                % Single soprano satff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
      \context { \PianoStaff
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
                                % Soprano Solo staff
          \new Staff = sopranosolo \with {
            instrumentName = #"Soprano Solo"
            shortInstrumentName = #"SS"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics {\tiny \wordsSopSolo}
          >>
                                % Alto Solo staff
          \new Staff = altosolo \with {
            instrumentName = #"Alto Solo"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
            \new Voice \altoSolo
            \addlyrics {\tiny \wordsAltoSolo}
          >>
                                % Tenor Solo staff
          \new Staff = tenorsolo \with {
            instrumentName = #"Tenor Solo"
            shortInstrumentName = #"ST"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
            \new Voice \tenorSolo
            \addlyrics {\tiny \wordsTenorSolo}
          >>
                                % Bass Solo staff
          \new Staff = basssolo \with {
            instrumentName = #"Bass Solo"
            shortInstrumentName = #"SB"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
            \new Voice \bassSolo
            \addlyrics {\tiny \wordsBassSolo}
          >>
                                % Single soprano satff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
      \context { \PianoStaff
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
                                % Soprano Solo staff
          \new Staff = sopranosolo \with {
            instrumentName = #"Soprano Solo"
            shortInstrumentName = #"SS"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics {\tiny \wordsSopSolo}
          >>
                                % Alto Solo staff
          \new Staff = altosolo \with {
            instrumentName = #"Alto Solo"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
            \new Voice \altoSolo
            \addlyrics {\tiny \wordsAltoSolo}
          >>
                                % Tenor Solo staff
          \new Staff = tenorsolo \with {
            instrumentName = #"Tenor Solo"
            shortInstrumentName = #"ST"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
            \new Voice \tenorSolo
            \addlyrics {\tiny \wordsTenorSolo}
          >>
                                % Bass Solo staff
          \new Staff = basssolo \with {
            instrumentName = #"Bass Solo"
            shortInstrumentName = #"SB"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
            \new Voice \bassSolo
            \addlyrics {\tiny \wordsBassSolo}
          >>
                                % Single soprano satff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
      \context { \PianoStaff
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
                                % Soprano Solo staff
          \new Staff = sopranosolo \with {
            instrumentName = #"Soprano Solo"
            shortInstrumentName = #"SS"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = sopranosolo} \teeny \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
            \addlyrics {\tiny \wordsSopSolo}
          >>
                                % Alto Solo staff
          \new Staff = altosolo \with {
            instrumentName = #"Alto Solo"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = altosolo} \teeny \dynamicsAltoSolo
            \new Voice \altoSolo
            \addlyrics {\tiny \wordsAltoSolo}
          >>
                                % Tenor Solo staff
          \new Staff = tenorsolo \with {
            instrumentName = #"Tenor Solo"
            shortInstrumentName = #"ST"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \teeny \dynamicsTenorSolo
            \new Voice \tenorSolo
            \addlyrics {\tiny \wordsTenorSolo}
          >>
                                % Bass Solo staff
          \new Staff = basssolo \with {
            instrumentName = #"Bass Solo"
            shortInstrumentName = #"SB"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef bass
            \new Dynamics \with {alignAboveContext = basssolo} \teeny \dynamicsBassSolo
            \new Voice \bassSolo
            \addlyrics {\tiny \wordsBassSolo}
          >>
                                % Single soprano satff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
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
      \context { \PianoStaff
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
    output-suffix = midi-sop
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
                                % Soprano Solo staff
          \new Staff = sopranosolo \with {
            instrumentName = #"Soprano Solo"
            shortInstrumentName = #"SS"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
%            \addlyrics \wordsSopSolo
          >>
                                % Alto Solo staff
          \new Staff = altosolo \with {
            instrumentName = #"Alto Solo"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
            \new Voice \altoSolo
%            \addlyrics \wordsAltoSolo
          >>
                                % Tenor Solo staff
          \new Staff = tenorsolo \with {
            instrumentName = #"Tenor Solo"
            shortInstrumentName = #"ST"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
            \new Voice \tenorSolo
%            \addlyrics \wordsTenorSolo
          >>
                                % Bass Solo staff
          \new Staff = basssolo \with {
            instrumentName = #"Bass Solo"
            shortInstrumentName = #"SB"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = basssolo} \dynamicsBassSolo
            \new Voice \bassSolo
%            \addlyrics \wordsBassSolo
          >>
                                % Single soprano satff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi-alto
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
                                % Soprano Solo staff
          \new Staff = sopranosolo \with {
            instrumentName = #"Soprano Solo"
            shortInstrumentName = #"SS"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
%            \addlyrics \wordsSopSolo
          >>
                                % Alto Solo staff
          \new Staff = altosolo \with {
            instrumentName = #"Alto Solo"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
            \new Voice \altoSolo
%            \addlyrics \wordsAltoSolo
          >>
                                % Tenor Solo staff
          \new Staff = tenorsolo \with {
            instrumentName = #"Tenor Solo"
            shortInstrumentName = #"ST"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
            \new Voice \tenorSolo
%            \addlyrics \wordsTenorSolo
          >>
                                % Bass Solo staff
          \new Staff = basssolo \with {
            instrumentName = #"Bass Solo"
            shortInstrumentName = #"SB"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = basssolo} \dynamicsBassSolo
            \new Voice \bassSolo
%            \addlyrics \wordsBassSolo
          >>
                                % Single soprano satff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi-tenor
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
                                % Soprano Solo staff
          \new Staff = sopranosolo \with {
            instrumentName = #"Soprano Solo"
            shortInstrumentName = #"SS"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
%            \addlyrics \wordsSopSolo
          >>
                                % Alto Solo staff
          \new Staff = altosolo \with {
            instrumentName = #"Alto Solo"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
            \new Voice \altoSolo
%            \addlyrics \wordsAltoSolo
          >>
                                % Tenor Solo staff
          \new Staff = tenorsolo \with {
            instrumentName = #"Tenor Solo"
            shortInstrumentName = #"ST"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
            \new Voice \tenorSolo
%            \addlyrics \wordsTenorSolo
          >>
                                % Bass Solo staff
          \new Staff = basssolo \with {
            instrumentName = #"Bass Solo"
            shortInstrumentName = #"SB"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = basssolo} \dynamicsBassSolo
            \new Voice \bassSolo
%            \addlyrics \wordsBassSolo
          >>
                                % Single soprano satff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi-bass
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
                                % Soprano Solo staff
          \new Staff = sopranosolo \with {
            instrumentName = #"Soprano Solo"
            shortInstrumentName = #"SS"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = sopranosolo} \dynamicsSopSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSolo
%            \addlyrics \wordsSopSolo
          >>
                                % Alto Solo staff
          \new Staff = altosolo \with {
            instrumentName = #"Alto Solo"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = altosolo} \dynamicsAltoSolo
            \new Voice \altoSolo
%            \addlyrics \wordsAltoSolo
          >>
                                % Tenor Solo staff
          \new Staff = tenorsolo \with {
            instrumentName = #"Tenor Solo"
            shortInstrumentName = #"ST"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenorsolo} \dynamicsTenorSolo
            \new Voice \tenorSolo
%            \addlyrics \wordsTenorSolo
          >>
                                % Bass Solo staff
          \new Staff = basssolo \with {
            instrumentName = #"Bass Solo"
            shortInstrumentName = #"SB"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = basssolo} \dynamicsBassSolo
            \new Voice \bassSolo
%            \addlyrics \wordsBassSolo
          >>
                                % Single soprano satff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
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
