\version "2.25.34"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Stabat Mater"
  subtitle    = "V. Chor."
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Antonín Dvořák"
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
  \key ees \major
  \time 6/8
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
%  \once\set Score.tempoHideNote = ##f
  \tempo "Andante con moto. quasi Allegretto" 4.=42 s2.*62
  \tempo "Un poco più mosso" 4=56 s2.*31
  \tempo "poco a poco ritard" 4=52 s2.*2
  \tempo "Tempo I" 4.=42 s2.*39
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "50a" } s2.*5
  \textMark \markup { \box "50b" } s2.*6
  \textMark \markup { \box "50c" } s2.*5
  \textMark \markup { \box "51a" } s2.*6
  \textMark \markup { \box "51b" } s2.*6
  \textMark \markup { \box "51c" } s2.*5
  \textMark \markup { \box "52a" } s2.*3
  \mark \markup\bold\circle A      s2.*2
  \textMark \markup { \box "52b" } s2.*6
  \textMark \markup { \box "52c" } s2.*5
  \textMark \markup { \box "53a" } s2.*5
  \textMark \markup { \box "53b" } s2.*4
  \mark \markup\bold\circle B      s2.*2
  \textMark \markup { \box "53c" } s2.*6
  \textMark \markup { \box "54a" } s2.*5
  \textMark \markup { \box "54b" } s2.*6
  \textMark \markup { \box "54c" } s2.*5
  \textMark \markup { \box "55a" } s2.*6
  \textMark \markup { \box "55b" } s2.*6
  \textMark \markup { \box "55c" } s2.*5
  \textMark \markup { \box "56a" } s2.*6
  \textMark \markup { \box "56b" } s2.*5
  \textMark \markup { \box "56c" } s2.*6
  \textMark \markup { \box "57a" } s2.*5
  \textMark \markup { \box "57b" } s2.*6
  \textMark \markup { \box "57c" } s2.*7
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2.*9 | s4 s2\pp\< | s4.\! s4\mf s8\> | s4. s\! | s2.\pp | s\< | s4.\! s\> | s2.\! |
  s2.\pp | s | s\p | s\< | s\f | s2\> s8 s\! | s2.\p | s4.\> s\! | s2\> s4\! | s2.\p | s2.*2 | s2.\p\< | s | s\f | s\dim | s\p | % 51
  s4.\< s\> | s2.\pp | s2.*7 | s4.\f\> s\! | s\> s\! | s2\pp s8 s\cresc | s2. | s4.\f s\> | s\! s\pp | s2. |
  s2. | s\p | s2.*11 | s4. s\f | s2.*3 |
  s2.*5 | s2.\f | s2.*7 | s4. s\f | s2.*2 | % 54
  s2.*2 | s4. s\dim | s2.\p\> | s4. s\! | s2.\f\dim | s2.*3 | s2.\f\> s | s\p | s2.*5 |
  s2.*5 | s4 s2\p\< | s2. | s4. s\f | s2.\> s\p | s2.*5 | s4.\f\> s\! | s\> s\! |
  s2.\p | s\< | s4.\f s\> | s2.\p | s2.*2 | s2.\p | s2.*11 | % 57
}

soprano = \relative {
  \global
  R2.*5 |
  R2.*4 | r4 bes'8(~8 c) d | ees4 8 8(d) c |
  bes8(aes) g f(g) f | g(f4~4) 8 | bes4.(8 c) d | ees4-> 8 bes(c) des | 4 c8 bes(aes) f |
  ees4 8 r4. | R2. | g8(aes) bes8 8(g) aes | a(bes) c c(a) bes | % 51a
  b8(c) d d(b) c | c4 des8 c(bes) aes |
  bes4 ces8 bes(ces) g | c4.(f4) ees8 | 4.->~8(d) c | % 51b
  bes4.(aes8 g) f | ees4 r8 r4. | R2. |
  g8(aes) bes8 8(g) aes | a(bes) c c(a) bes | % 51c
  bes8(ces) des8 8(bes) ces | 4.~4 8 | 8(des) ees8 8(bes) des |
  bes4.~4 aes8 | g(aes) bes8 8(f) aes | g4.(aes8 g) f | ees4 r8 r4. | R2. | % 52a
  R2.*4 | ees'4.-^ 4 r8 | 4.-^ 4 r8 |
  des4.~4 ces8 | bes4 8 4 8 | 4. c4 ees8 | bes4 8 8(aes) f | ees8 r r r4. |
  R2. | <ees g>8(<f aes>) <g b> <aes c>(<g bes>) <f aes> | % 53a
  <ees g>8(<f aes>) <g bes> <aes c>(<g bes>) <f aes> |
  <ees g>(<f aes>) <g b> ees r r | R2. |
  R2.*6 | % 53b
  R2.*2 \section | r4. bes'4-> 8 | ees4.-> des-> | ces-> bes-> | a4-> f8 r4. |
  R2.*5 | % 54a
  ees'2.-^ | ees-^ | bes-^ | bes-^ | f'-^ | f-^ |
  d2.-^~ | 4.~4 8 | g4 r8 d4 8 | g4 8 d4 8 | g4 r8 c,4 8 |
  f4.-^ bes,-^ | bes2.~ | 2.~ | 2.~ | 4.~4 8 | ees2.~ | % 55a
  ees4.~4 ees,8 | 4 r8 r4. | R2. | bes'2.-^~ | bes | bes,4 r8 r4. |
  R2. \section | R2.*4 |
  R2.*5 | r4 bes'8~8(c) d | % 56a
  ees4 8 8->(d) c | bes(aes) g ges4 8 | g4 8 aes(g) f | ees4 8 r4. | R2. |
  R2.*4 | ees'4.-^ 4 r8 | 4.-^ 4 r8 |
  des4.~4 ces8 | bes4 8 4 8 | 4. c4 ees8 | bes4 8 8(aes) f | ees8 r r r4. | % 57a
  R2. | % 57b
  \repeat unfold 2 {<ees g>8(<f aes>) <g bes> <aes c>(<g bes>) <f aes> |}
  <ees g>8(<f aes>) <g bes> ees r r | R2.*2 |
  R2.*6 | R2.\fermata | % 57c
  \bar "|."
  
}

Pc      = \lyricmode { Pœ -- nas, }
pc      = \lyricmode { pœ -- nas, }
pmc     = \lyricmode { pœ -- nas me -- cum, }
pmdc    = \lyricmode { pœ -- nas me -- cum di -- vi -- de, }
pmdp    = \lyricmode { pœ -- nas me -- cum di -- vi -- de. }
pmpc    = \lyricmode { pro me pa -- ti, }
p_mpc   = \lyricmode { pro __ me pa -- ti, }
td      = \lyricmode { tam dig -- na -- ti }
tdc     = \lyricmode { tam dig -- na -- ti, }
t_dc    = \lyricmode { tam __ dig -- na -- ti, }
tnc     = \lyricmode { tu -- i na -- ti, }
Tnvc    = \lyricmode { Tu -- i na -- ti vul -- ne -- ra -- ti, }
tnvc    = \lyricmode { tu -- i na -- ti vul -- ne -- ra -- ti, }

wordsSop = \lyricmode {
  \Tnvc \tdc \t_dc \tdc \pmpc
  \tnvc \tdc \tdc \pmpc \pmdp \Tnvc \td \t_dc \pmpc % 51
  \pmdp \Pc \pc \pmdc \pmdp
  \pmc \pmdp \Tnvc
  \pc \pmdp \pmdp \pc % 54
  \pmdc \pc
  \Tnvc \tdc \pmpc \pc \pc
  \pmdc \pmdc \pmc \pmdp
}

MPc      = \lyricmode { Pœ "nas, " }
Mpc      = \lyricmode { pœ "nas, " }
Mpmc     = \lyricmode { pœ "nas " me "cum, " }
Mpmdc    = \lyricmode { pœ "nas " me "cum " di vi "de, " }
Mpmdp    = \lyricmode { pœ "nas " me "cum " di vi "de. " }
Mpmpc    = \lyricmode { "pro " "me " pa "ti, " }
Mtd      = \lyricmode { "tam " dig na "ti " }
Mtdc     = \lyricmode { "tam " dig na "ti, " }
Mtnc     = \lyricmode { tu "i " na "ti, " }
MTnvc    = \lyricmode { Tu "i " na "ti " vul ne ra "ti, " }
Mtnvc    = \lyricmode { tu "i " na "ti " vul ne ra "ti, " }

wordsSopMidi = \lyricmode {
  \MTnvc \Mtdc \Mtdc \Mtdc \Mpmpc
  \Mtnvc \Mtdc \Mtdc \Mpmpc \Mpmdp \MTnvc \Mtd \Mtdc \Mpmpc % 51
  \Mpmdp \MPc \Mpc \Mpmdc \Mpmdp
  \Mpmc \Mpmdp \MTnvc
  \Mpc \Mpmdp \Mpmdp \Mpc % 54
  \Mpmdc \Mpc
  \MTnvc \Mtdc \Mpmpc \Mpc \Mpc
  \Mpmdc \Mpmdc \Mpmc \Mpmdp
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2.*8 | s4. s\pp | s s\< | s s\! | s2. | s4 s2\pp | s2.\< | s4.\! s\> | s2.\! |
  s2.\pp | s | s\p | s\< | s\f | s2\> s8 s\! | s2.\p | s4.\> s\! | s2\> s4\! | s2.\p | s2.*2 | s2.\p\< | s | s\f | s\dim | s\p | % 51
  s4.\< s\> | s2.\pp | s2.*7 | s4.\f\> s\! | s\> s\! | s2\pp s8 s\cresc | s2. | s\f | s2. | s2.\pp |
  s2. | s\p | s | s\< | s4\! s2\dim | s2.\> | s | s\pp | s2.*9 |
  s2. | s\f | s2.*11 | s2.\f | s2.*2 | % 54
  s2.*2 | s4. s\dim | s2.\p\> | s4. s\! | s2.\f\dim | s2.*3 | s2.\f\> s | s\p | s2.*5 |
  s2.*4 | s4. s\pp | s2.\< | s4. s\! | s2.*8 | s4.\f\> s\! | s\> s\! |
  s2.\p | s\< | s\f | s | s\pp | s | s\p | s | s4. s\pp\< | s\! s\dim | s2.\> | s | s\pp | s2.*5 | % 57
}

alto = \relative {
  \global
  R2.*5 |
  R2.*3 | r4. bes8(c) d | ees(f) g aes(g) f | ees4. aes8 r r |
  R2. | r8 r c(bes a) c | f,4.(aes8 g) f | ees(f) g ees4 8 | 8(e f g f) d |
  bes4 8 r4. | R2. | ees4 8 4 8 | f4 8 4 8 | g4 8 4 8 | 8(aes) bes aes(e) f | % 51a
  f8(g) aes g(d) ees | 4.~4 f8 | g(aes) bes c4 aes8 | ees(f g d4) 8 | ees4 r8 r4. | R2. |
  ees4 8 4 8 | f4 8 4 8 | fis4 8 4 8 | 8(gis) a a(fisis) gis | dis(e) fis8 8(cis) e |
  ees2.~ | 8(f) g g(d) f | ees4. d | ees4 r8 r4. | R2. | % 52a
  R2.*4 | aes4.-^ 4 r8 | aes4.-^ 4 r8 |
  bes4.~4 aes8 | ges4 8 aes4 8 | g4 r8 r4. | R2. | bes,8(c) d ees(d) c |
  bes4.~4 8 | ees2.~ | 2.~ | 4. 4 f8 | des4. d | % 53a
  ees2.~ | 4.~4 f8 | g4.~8 r r | R2.*3 |
  R2.*2 \section | R2.*4 |
  R2. | bes8(des) f, g(c) a | bes(f) des ees(aes) f | ges4. aes | ges ges | % 54a
  ces8(des) ees bes(ces) des | aes(bes) ces ges(aes) bes | 4 8 4 r8 | R2. | d8->(ees f c d) ees | bes(c d a bes) c |
  d4 8 4 r8 | R2. | g,8(a) bes c4 a8 | g(a) bes c4 a8 | g4 r8 c4 8 |
  aes4.(f8 g) aes | g(aes bes f g aes | g aes bes f g aes | % 55a
  ges8 aes bes f ges aes | ges aes bes f ges) aes | ees2.~ |
  ees4.~4 8 | 4 r8 r4. | R2. | bes'2.-^~ | 2. | bes,4 r8 r4. | % 55b
  R2. \section | R2.*4 |
  R2.*4 | r4. bes8(c) d | ees(f) g aes(g) f | % 56a
  ees4. aes8 r r | R2.*4 |
  R2.*4 | a4.-^ 4 r8 | 4.-^ 4 r8 |
  bes4.~4 aes8 | ges4 8 aes4 8 | g4 r8 r4. | R2. | bes,8(c) d ees(d) c | % 57a
  bes4.~4 8 | ees2.~ | ees~ | 4. 4 f8 | des4. d | ees2.~ |
  ees4.~4 c8 ees4.~4 r8 | R2.*4 | R2.\fermata |
}

wordsAlto = \lyricmode {
  \Tnvc \t_dc \tdc \p_mpc
  \tnvc \tdc \tdc \pmpc \pc \pmdc\Tnvc \td \tdc \pmpc % 51
  \pmdp \Pc \pc \pmdc \pmdc __
  \pmdp __
  \Tnvc \tdc \pmpc \pmdp \pmdp \pc \pmdp \pc % 54
  \pmdc \pc
  \Tnvc \pc \pc
  \pmdc \pmdc __ \pmdp __ % 57
}

wordsAltoMidi = \lyricmode {
  \MTnvc \Mtdc \Mtdc \Mpmpc
  \Mtnvc \Mtdc \Mtdc \Mpmpc \Mpc \Mpmdc\MTnvc \Mtd \Mtdc \Mpmpc % 51
  \Mpmdp \MPc \Mpc \Mpmdc \Mpmdc
  \Mpmdp
  \MTnvc \Mtdc \Mpmpc \Mpmdp \Mpmdp \Mpc \Mpmdp \Mpc % 54
  \Mpmdc \Mpc
  \MTnvc \Mpc \Mpc
  \Mpmdc \Mpmdc \Mpmdp % 57
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2.*9 | s4.\pp s\< | s\! s4\mf s8\> | s2 s8 s\! | s2.\pp | s\< | s4.\! s\> | s2.\! |
  s2.\pp | s | s\p | s\< | s\f | s2\> s8 s\! | s2.\p | s4.\> s\! | s2\> s4\! | s2.\p | s2.*2 | s2.\p\< | s | s\f | s\dim | s\p | % 51
  s4.\< s\> | s2.\pp | s2.*7 | s4.\f\> s\! | s\> s\! | s2\pp s8 s\cresc | s2. | s4.\f s\> | s\! s\pp | s2. |
  s2.*3 | s4\p s2\cresc | s4\! s2\dim | s2.\> | s | s\pp | s2.*7 |  s4. s\f | s2. |
  s2.*13 | s4. s\f | s2.*2 | % 54
  s2.*2 | s4. s\dim | s2.\p\> | s4. s\! | s2.*2 | s4.\f s\> s2. | s\! | s | s2\p s8 s\> | s2. | s\! | s2.*3 |
  s2.*5 | s4\p s2\< | s2. | s4. s\f | s2.\> s\p | s2.*5 | s4.\f\> s\! | s\> s\! |
  s2. | s4.\< s\! | s s\> | s2.\p | s2.*4 | s4\pp s2\< | s4 s\! s\> | s2.\dim | s2. | s\pp | s2.*5 | % 57
}

tenor = \relative {
  \global
  R2.*5 |
  R2.*4 | g8(aes) bes c(bes) aes | g(f) ees f4 8 |
  g8(aes) bes c(bes) c | bes(d) ees8 4.~ | 8(d) c bes4 aes8 | g->(aes) b des(c) bes | 8(g) aes f(c') aes |
  g8(f) ees r4. | R2. | bes'8(c) des8 8(bes) c | c(d) ees8 8(c) d | % 51a
  d8(ees) f f(d) ees | c4 bes8 c(des) c |
  bes4 aes8 bes(ces) bes | a4. 4. | b b | g8(aes) bes  c(bes) aes | % 51b
  g f ees r4. | R2. |
  bes'8(c) des8 8(bes) c | c(d) ees8 8(c) d | % 51c
  des8(ees) fes8 8(des) ees | 4.(ces8 des) ces | ges4. 4 r8 |
  bes8(c) des8 8(bes) c | bes4.~4 8 | g(aes) bes c(bes) aes | g f ees r4. | R2. | % 52a
  R2.*4 | ges'4.-^ 4 r8 | 4.-^ 4 r8 |
  ges4 8 f4 des8 | 4 8 d4 r8 | g4-^ 8 8(f) c | ees4 8 16(d c8) d | ees r r r4. |
  R2.*3 | g,8(aes) bes c(bes) aes | bes(ces) des ces(bes) aes | % 53a
  g4.(aes | bes) c | bes4.~8 r r | R2.*3 |
  R2.*2 \section | R2.*2 | r4. bes4-> 8 | f'4.-> ees-> |
  d4.-> c-> | bes4 8 r4. | R2. | ges'8(des) bes c(f) d | ees(bes) ges aes(des) bes | % 54a
  ces4.-^ des-^ | ces8(des ees bes ces des | f4. ees8 d ges | des ees f ces des ees | bes4.-> ees-> d8 ees f c d ees |
  bes8 c d a bes) c | g(a) bes fis(g) a | g4 r8 d'8(e) fis | g4 d8 d(e) fis | g4 r8 c,4 8 |
  c4.(aes8 g) f | bes(aes g aes g f | bes aes g aes g f | % 55a
  bes8 aes ges aes ges f | bes aes ges aes ges) f | ees4 r8 r4. |
  R2. | ees'-^~ | ees | bes4 r8 r4. | R2. | bes4.~4 bes,8 | % 55b
  bes4 8 4 8 \section | ees4 r8 r4. | R2.*3 |
  R2.*5 | g8(aes) bes c(bes) aes | % 56a
  g8(f) ees f4-> 8 | g(aes) bes ces4 8 | bes4.(c8 bes) aes | g(f) ees r4. | R2. |
  R2.*4 | ges'4.-^ 4 r8 | 4.-^ 4 r8 |
  ges4 8 f4 8 | des4 8 d4 r8 | g4 8 8(f) c | ees4 8 16(d c8) d | d r r r4. | % 57a
  R2.*3 | g,8(aes) bes c(bes) aes | bes(ces) des ces(bes) aes | g4.(aes |
  bes4.~4) aes8 | g4.~4 r8 | R2.*4 | R2.\fermata |
}

wordsTenor = \lyricmode {
  \Tnvc \tnvc \tdc \tdc \pmpc
  \tnvc \tdc \tdc \pmc \pmpc \pmdp \Tnvc \tdc \t_dc % 51
  \pmpc \pc \pmdp \Pc \pc \pmdc \pc \pmdc
  \pmc \pmdp __ \Tnvc
  \tdc \pmpc \pc \pmdp \pmdc \pmdp % 54
  \pc \pmdp % 55b
  \Tnvc \tdc \p_mpc \pc \pc
  \pmdc \pc \pmdc \pmc \pmdp __ % 57
}

wordsTenorMidi = \lyricmode {
  \MTnvc \Mtnvc \Mtdc \Mtdc \Mpmpc
  \Mtnvc \Mtdc \Mtdc \Mpmc \Mpmpc \Mpmdp \MTnvc \Mtdc \Mtdc % 51
  \Mpmpc \Mpc \Mpmdp \MPc \Mpc \Mpmdc \Mpc \Mpmdc
  \Mpmc \Mpmdp \MTnvc
  \Mtdc \Mpmpc \Mpc \Mpmdp \Mpmdc \Mpmdp % 54
  \Mpc \Mpmdp % 55b
  \MTnvc \Mtdc \Mpmpc \Mpc \Mpc
  \Mpmdc \Mpc \Mpmdc \Mpmc \Mpmdp % 57
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2.*8 | s2.\pp | s4. s\< | s s4\mf s8\> | s2 s8 s\! | s2.\pp | s\< | s4.\> s\! | s2. |
  s2.\pp | s | s\p | s\< | s\f | s2\> s8 s\! | s2.\p | s4.\> s\! | s2\> s4\! | s2.\p | s2.*2 | s2.\p\< | s | s\f | s\dim | s\p | % 51
  s4.\< s\> | s2.\pp | s2.*7 | s4.\f\> s\! | s\> s\! | s2\pp s8 s\cresc | s2. | s\f | s2.*2 |
  s2.*3 | s4\p s2\cresc | s4\! s2\dim | s2.\> | s | s\pp | s2.*9 |
  s4. s\f | s2.*6 | s2.\f | s2.*5 | s4. s\f | s2.*2 | % 54
  s2.*2 | s4. s\dim | s2.\p\> | s4. s\! | s2.*2 | s4.\f s\> s2. | s\! | s | s2\p s8 s\> | s2. | s\! | s2.*3 |
  s2.*4 | s2.\pp | s4 s2\< | s2. | s4. s\f | s2.\> s\p | s2.*5 | s4.\f\> s\! | s\> s\! |
  s2. | s4.\< s\! | s2.\f | s2.*5 | s4\pp s2\< | s4 s\! s\> | s2.\> | s | s\pp | s2.*5 | % 57
}

bass = \relative {
  \global
  R2.*5 |
  R2.*3 | ees8(f) g aes(g) f | ees4 8 bes4.~ | 4.~4 d8 |
  ees8(f) g aes(g) aes | g a4 c a8 | bes4. bes, | c g | aes~4 bes8 |
  ees4 8 r4. | R2. | 4. aes | f bes | g c | aes4(g8) aes4. | % 51a
  g4 f8 g4 8 | f4. f | bes, bes | bes bes | ees4 r8 r4. | R2. |
  ees4 8 aes4 8 | f4 8 bes4 8 | ges4 8 ces4 8 | c4. fes, | ges ges |
  g4. aes | bes bes, | ees bes | ees4 r8 r4. | R2. | % 52a
  R2.*4 | ces'4.-^ 4 r8 | c4.-^ 4 r8 |
  des4. des, | ges f | ees(aes | g f4) aes8 | g r r r4. |
  R2.*3 | ees8(f) g aes(g) f | ges(aes) bes aes(f) f | % 53a
  c4.(f, | g) aes | ees'~8 r r | R2.*3 |
  R2.*2 \section | R2.*4 |
  r4. a4 8 | des4.-^ c-^ | bes-^ aes-^ | ges-^ f-^ | ees-^ des-^ | % 54a
  ces4 8 r4. | R2. | aes'8(bes) ces ges(aes) bes | f(ges) aes ees(f) ges | bes,2.~ | 2.~ |
  bes2.~ | 4. d4 r8 | g4 r8 4 8 | 4 8 4 8 | 4 r8 c4 8 |
  f,4. bes, | 2.~ | 2.~ | 2.~ | 4.~ 4 8 | ees4 r8 r4. | % 55a
  R2. | ees-^~ | ees | bes4 r8 r4. | R2. | bes'4.~4 bes,8 |
  bes4 8 4 8 \section | ees4 r8 r4. | R2.*3 |
  R2.*4 | ees8(f) g aes(g) f | ees4. bes | % 56a
  bes4.~4 d8 | ees4 8 4.~ | 4 g8 f4 bes,8 | ees4 8 r4. | R2. |
  R2.*4 | ces'4.-^ 4 r8 | c4.-^ 4 r8 |
  des4. des, | ges4. f | ees(aes | g f4) aes8 | g r r r4. | % 57a
  R2.*3 | ees8(f) g aes(g) f | ges(aes) bes aes(ges) f | c4.(f, |
  g4.) aes | ees'4.~4 r8 | R2.*4 | R2.\fermata |
}

wordsBass = \lyricmode {
  \Tnvc \tnvc \tdc \p_mpc
  \tnc \tdc \pmpc \pmdp \Tnvc \tdc \pmpc % 51
  \pmdp \Pc \pc \pmdp
  \pmc \pmdp __
  \Tnvc \tdc \pmc \pmdc \pmdp \pmdc % 54
  \pc \pmdp % 55b
  \Tnvc \tdc \pmpc \pc \pc
  \pmdc \pmc \pmdp __
}

wordsBassMidi = \lyricmode {
  \MTnvc \Mtnvc \Mtdc \Mpmpc
  \Mtnc \Mtdc \Mpmpc \Mpmdp \MTnvc \Mtdc \Mpmpc % 51
  \Mpmdp \MPc \Mpc \Mpmdp
  \Mpmc \Mpmdp
  \MTnvc \Mtdc \Mpmc \Mpmdc \Mpmdp \Mpmdc % 54
  \Mpc \Mpmdp % 55b
  \MTnvc \Mtdc \Mpmpc \Mpc \Mpc
  \Mpmdc \Mpmc \Mpmdp
}

pianoRHone = \relative {
  \global
  \lh ees8(f g \rh \vo bes c d | r4 bes'8~8 c d |
  \vt ees,4 ees'8~8 d c) | \vo g'8(f ees d ees d | ees d c bes a c |
  bes4.~8 c d) | ees4.(bes8 c des | % 50b
  <f, c'> <e bes'> <f aes> <ees g> <ees aes> <d f> | ees8) r r bes c d |
  r4 bes'8~8 c d | ees f <g, g'> <aes aes'>4. |
  <g bes g'>8(<aes f'> <g ees'> <f d'> <g ees'> <f d'>) | % 50c
  ees'8(d c bes a c | bes4.~8 c d) | ees4.(bes8 c des |
  4 c8 <g bes> <f aes> <d f>) |
  \lh g,8(f g \rh \vo bes c d | r4 bes'8~8 c d | % 51a
  ees4.) ees | f f | g g~ | 8 aes bes aes e f~ |
  f8 g aes g d ees~ | 8 f g f c ees | 4.~8 d c | % 51b
  bes4.(aes8 g f | \ov ees) r r bes c d | \vt ees f g aes g f |
  g8 aes bes~8 g aes | a bes c~8 a bes | ais b cis~8 ais b | % 51c
  b4.~8 <a cis> <gis b> | <dis b'> <e cis'> <fis dis'>~dis' aes cis |
  \vo ees4. 4. | bes4 8 8(f aes | g4. aes8 g f | ees) r r s4. | % 52a
  \vt ees8 f g aes g f |
  ees4 ees'8 8 d c | % 52b
  \vo <g bes g'>8(<aes f'> <g ees'> <f d'> <g ees'> <f d'> |
  <g ees'>8 <f d'> <g ees'> <g e'> <aes f'> <g e'> |
  <aes f'>8 <g e'> <aes f'>) \vo ges'(f ees) |
  ees4. ges8(f ees) | 4. ges8(f ees) |
  des4.~4 ces8 | bes4 8 4 8 | 4 8 c4 ees8 | bes4 8 8(aes f | % 52c
  ees8) r r aes4 <d, aes'>8 |
  <bes ees g>4. aes'8 g f | g aes bes c d4 | ees4. c8 d4 | % 53a
  ees4.~4 f8 | des4 8(4. |
  ees8 c d ees c d | ees c d <c ees> c d) | \ov <ees, g ees'>2.~ | % 53b
  q4-- r8 <bes g' bes>4-- r8 | <g ees' g>4-- r8 r4. | R2. |
  R2.*2 | \section r4. bes'4-> 8 | \vo ees4.-> des-> | % 53c
  ces-> bes4-> 8 | f'4.-> ees-> |
  des4.-> c-> | f-> ees-> | des-> ces4-> des8-> | bes'4.-> aes-> | ges-> fes-> | % 54a
  ees4.-> 4.-> | 2.-> | bes-> | bes-> | f'-> | f-> |
  d2.-> | 4. 4 8 | % 54c
  \ov g,8^\markup\bold\italic marcato a <g bes> <fis a d> <fis a e'> <fis a fis'> |
  <g bes g'>8 <a d a'> <bes d bes'> <fis a d> <fis a e'> <fis a fis'> |
  <g bes g'>8 <a d a'> <bes d bes'> <e, g c> <e g d'> <e g e'> |
  \repeat unfold 3 {<f aes f'>8-. <g c g'>-. <aes c aes'>-. <d, f bes>-. <ees g c>-. <f aes d>-. |} % 55a
  \repeat unfold 2 {<ges ees'>8(<aes f'> <bes ges'> <d, f bes> <ees ges c> <f aes d>) |}
  ees'8-> f ges des-> ees f |
  \vo ces8-> des ees bes-> ces des | aes-> bes ces ges aes bes | % 55b
  f8-> ges aes ees-> f ges | bes2.-> | bes | ges,8(aes bes)~4.~ |
  bes2. \section | \lh ees,8(f g \rh bes c d \vo | % 55c
  r4 bes'8~8 c d | ees8 f <g, g'> <aes aes'>4) 8 \ov |
  <g bes g'>8 <aes f'> <g ees'> <f d'> <g ees'> <f d'> |
  \vo ees'8 d c bes a c | bes4.~8 c d | ees4. bes8 c des | % 56a
  des4 c8 <g bes> <f aes> <d f> | \ov ees8 r r bes c d |
  \vo r4 bes'8~8( c d |
  ees8 f <g, g'> <aes aes'>4 8) | g'(f ees ees des ces | % 56b
  bes8 aes g aes g f) | \vt g,8(f g bes c d | \vo r4 bes'8~8 c d |
  ees8 f <g, g'> <aes aes'>4) 8 | % 56c
  \ov <g bes g'>8(<aes f'> <g ees'> <f d'> <g ees'> <f d'> |
  <g ees'>8 <f d'> <g ees'> <g e'> <aes f'> <g e'> |
  <aes f'>8 <g e'> <aes f'>) \vo ges'8(f ees) |
  \repeat unfold 2 {ees4. ges8(f ees) |}
  des4.~4 ces8 | bes4 8 4 8 | 4 8(c4 ees8 | % 57a
  bes4) 8 8(aes f | ees) r r aes4 <d, aes'>8 |
  g4.(aes8 g f) | g aes bes c d4 | ees4. c8 d4 | ees4. 4 f8 | % 57b
  des4 8 d4. | ees8 c d ees c d |
  ees8 c d ees c d | \ov <g, bes ees>2.~ | 4 r8 r4. | % 57c
  <bes, ees g bes>4 r8 r4. | <bes ees g>4 r8 r4. |
  <g bes ees>4 r8 4 r8 | q2.\fermata |
}

pianoRHtwo = \relative {
  \global
  \ov r4. s4. \vt | ees'8 f g aes g f | \vo ees'8 f <g, g'> <aes aes'>4. |
  \vt <g bes>8 aes g f g f | g f4~4 8~ |
  <f aes>4.~8 <e g> <d f> | ees f g \vf ees4\arpeggio \vt e8 | % 50b
  s2.*2 | ees8 f g aes g f | ees4 ees'8~8 d c |
  s2. | g8 f4~8 4~ | 4~8 <f aes> <e g> <d f> | % 50c
  ees8 f g ees4 8 | ees e f s4. |
  \vo r4. s4. \vt | ees8 f g aes g f | g aes bes~8 g aes | % 51a
  a8 bes c~8 a bes | b c d~8 b c | 4 des8 c bes aes |
  bes4 ces8 bes aes g | a4 8~4 8 | % 51b
  <ees g> <fes aes> <g bes> <aes c> <fes aes> <d aes'> |
  ees8 f g bes,4. | \lh g8(f g \rh \vo bes c d | r4 bes'8~8 c d |
  ees4.) ees | f f | fis fis~ | 8 gis a a fisis gis | fis4.~4 e8 | % 51c
  \vt bes8 <aes c> <bes des>~8 <g bes> <aes c> | % 52a
  <ees g>8 <f aes> g g d f |
  ees4. d | \lh g,8(f g \rh bes c d | \vo r4 bes'8~8 c d |
  ees8 f <g, g'> q4.) | s2.*2 | \vt s4. a | <ges a>4. a | q4. a | % 52b
  bes8 ges bes f bes aes | ges des ges d aes' d, | % 52c
  g8 ees g g f \lh c | \rh ees bes ees8 16 d c8 d | bes c d ees d c |
  s4. d | ees8 f g aes <g bes> <f aes> | % 53a
  <ees g>8 <f aes> <g bes> aes <g bes> <f aes> |
  <ees g>8 <f aes> <g bes> <aes c> <g bes> <f aes> |
  <ges bes>8 <aes ces> d <aes ces> <g bes> <f aes> |
  <ees g>4.~<ees aes> | <ees bes'>4.~ees4 f8 | s2.*4 | % 53b
  s2.*2 \section | s2. | <ges bes>8 8 8 <f ges bes>8 8 8 | % 53c
  <ees ges>8 8 8 <des ges>8 8 8 | <f a c>8 8 8 8 8 8 |
  <ees ges>8 8 8 8 8 8 | <f bes'> des' f, g c a | % 54a
  bes8(f des) ees aes f | ges' des bes c f d | ees bes ges aes des bes |
  ces8 des ees bes ces des | aes bes ces ges aes bes | % 54b
  f8 ges aes ees f ges | des ees f ces des ees |
  d'8 ees f c-> d ees | bes-> c d a-> b c |
  g8-> a bes f-> g a | ees-> f g d-> e fis | s2.*3 | % 54c
  s2.*6 | % 55a
  ees2. | ees | ees | d8 ees f ces-> des ees | bes ces des aes bes ces | s4. f,8 ges aes |
  s2.*2 | ees'8 f g aes g f | ees4 ees'8~8 d c | s2. |
  g8 f4~4 8~ | 4 aes8~<f aes> <ees g> <d f> | ees8 f g ees4.~ | % 56a
  ees8 e f s4. | s2. | ees8 f g aes g f |
  ees4 ees'8~8 d c | <g bes> aes g ges4. | <ees g>4 <bes e>8 ees4 d8 | % 56b
  \vo ees4. s | \vt ees8 f g aes g f |
  ees4 ees'8~8 d c | s2.*2 | s4. a | <ges a>4. a | q a | % 56c
  bes8 ges bes f bes aes | ges des ges d aes' d, | g ees g g f \lh c \rh | % 57a
  ees8 bes ees ees16 d c8 d | bes(c d ees d c) |
  ees4. \vf d \vt | ees8 f g aes <g bes> <f aes> | % 57b
  <ees g>8 <f aes> <g bes> aes <g bes> <f aes> |
  <ees g>8 <f aes> <g bes> <aes c> <g bes> <f aes> |
  <ges bes>8 <aes ces> bes <aes ces> <g bes> <f aes> |
  <ees g>4.~<ees aes> |
  <ees bes'>4.~4 <f aes>8 | s2.*6 | % 57c
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\p | s\< | s4. s8\> s4\! | s2.\> | s\pp | |
  s2.\< | s8\> s4\! s4.\> | s2.\> | s\! | s\< | s4. s\fz\> |
  s4.\dim s\p\> | s8 s4\! s4.\pp | s2.\< | s4.\! s\dim | s2. |
  s2.\pp | s2.*2 | s2.\cresc | s | s4. s\dim | % 51a
  s2. | s4. s\p\< | s2.\> | s\p | s4. s\pp | s2. |
  s2.\< | s | s\! | s4.\f s\> | s2. |
  s4.\! s\> | s2. | s\pp | s2.*2 | % 52a
  s4.\< s\sfz\> | s2. | s\! | s\< | s4.\sfz\> s\p\> | s\sfz\> s\p\> |
  s2\! s8 s\cresc | s2. | s2\f s4\dim | s4. s\pp | s2. |
  s2.*4 | s4 s2\dim | % 53a
  s2.\> s2 s4\! | s2.\pp | s2.*3 |
  s2.*2 | s4. d\f | s2.*3 |
  s2.*5 | % 54a
  s2. | s4.\fz s\fz | s\fz s\fz | s\fz s\fz | s2.\f | s |
  s2.*2 | s2.\f | s2.*2 |
  s2.*2 | s2.\dim | s4. s\> | s2.\dim | s\f | % 55a
  s2.\fz | s\fz | s | s\f | s\dim | s\p |
  s2. | s\pp | s4. s\< | s s\> | s2.\> |
  s2.\! | s\< | s4.\fz s\> | s2. | s\pp | s | % 56a
  s4.\< s\fz\> | s\! s\fz | s2.\dim | s\pp | s |
  s4.\< s\fz | s2.\> | s4.\pp s\< | s s\f | s\fz s\p\> | s\fz s\p\> |
  s2.\pp | s\< | s4.\f s\> | s2.\p | s\pp | % 57a
  s2.*3 | s2.\< | s8 s\! s2\> |
  s2.\f\> | s | s\pp | s\dim | s2.*2 | s2.\ppp | s |
}

pianoLHone = \relative {
  \global \vo
  s4. aes8 g f | g aes bes c bes aes | g f ees f4. |
  \ov <ees g>8 <f aes> <g bes> <aes c> <g bes> <aes c> \vo |
  bes8 d ees~4.~ |
  ees8 d c bes4 aes8 | g aes bes \rh d \lh c bes | aes \rh d c bes c \lh aes | % 50b
  g8 f g aes g f | g aes bes c bes aes | g f ees f4 8 |
  \ov <ees g>8(<f aes> <g bes> <aes c> <g bes> <aes c>) | % 50c
  \vo bes8 d ees~4 8~ | 8 d c bes4 aes8 | g aes bes \rh d \lh c bes |
  bes g aes f \rh c' \lh aes |
  s4. aes8 g f | g aes bes c bes aes | bes c des~8 bes c | % 51a
  c8 d ees~8 c d | d c f~8 d ees | aes,, c' bes c des c |
  g,8 bes' aes bes ces bes | f, c'' ees c ees c | % 51b
  bes, <f' aes> <g bes> <aes c> <f aes> q | g aes bes c bes aes |
  g8 f g aes4. | g8 aes bes c bes aes |
  bes8 c des~8 bes c | c d e~8 c d | cis dis e~8 cis dis | % 51c
  b,4. e | s fis'8 cis e |
  s2.*2 | g,8 aes bes  c\arpeggio bes aes | s4. aes8 g f | g aes bes c bes aes | % 52a
  g8 f ees f4. | s2.*2 | s4. ees'8(f ges) | <aes,,, aes'>4. ees'''8(f g) | <a,,, a'>4. ees'''8(f g) |
  des8 bes des des, des' f, | ges bes ges aes bes aes | bes g bes8 8 aes s | g ees g aes f aes | g4. f |
  g8 aes bes \rh \vf c \lh bes aes | <ees, g'>8\arpeggio f' ees~4. | % 53a
  q8 f(ees)~ 4.~ | <ees, ees'> <aes aes'>4 <des, des'>8 |
  <ges, ges'>4. <bes bes'>( |
  \ov <c c'>4. <f, f'> | <g g'> <aes aes'>) | % 53b
  \repeat unfold 2 {<ees' ees'>8-. <c c'>-. <d d'>-. <ees ees'>-. <c c'>-. <d d'>-. |}
  \repeat unfold 2 {<ees ees'>8 r r <c c'> [ r <d d'> ] |}
  <ees ees'>8 r r <c c'> r r | r4. <d d'>8-. r r \section | % 53c
  R2. | <ees ees'>8 8 8 8 8 8 | 8 8 8 8 8 8 | <d d'>4-> r8 <f, f'>4-> r8 |
  \vo s2.*9 | r4. ees'''4.-> | d8-> ees f c-> d ees | % 54ab
  bes8-> c d a-> bes c | g-> a bes fis-> g a | s2.*3 | % 54c
  s4. aes8-. g-. f-. | bes-. aes-. g-. aes-. g-. f-. | % 55a
  bes8-. aes-. g-. aes-. g-. f-. | bes aes ges aes ges f |
  bes aes ges aes ges f | ees'2. |
  ees,2. | ees | \vt ees, | s2.*2 | bes2. | % 55b
  \vo <ges' ees'>8(<aes f'> <bes ges'> <f d'> <ges ees'> <aes f'>) \section | % 55c
  s4. aes'8 g f | g aes bes c bes aes | g f ees f4-> 8 | s2. |
  bes8 d ees~4 8~ | 8 d c bes4 aes8 | g aes bes \rh \vf des \lh c bes~ | % 56a
  bes8 g aes f \rh c' \lh aes | g f g aes g f | g aes bes c bes aes |
  g8 f ees f4 8 | g8(<f aes> <g bes> ges ces ees) | s4. \rh c8 \lh bes aes | % 56b
  s4. aes8 g f | g aes bes c bes aes |
  g8 f ees f4 8 | \ov <ees g>(<f aes> <g bes> <aes c> <g bes> <aes c>) | % 56c
  <g bes>8(<aes c> <g bes> <bes des> <aes c> <bes des> |
  <aes c>8 <bes des> <aes c>) \clef treble ees'8(f ges) \clef bass |
  <ces,,, ces'>4. \clef treble ees''8(f ges) \clef bass |
  <c,,, c'>4. \clef treble ees''8(f ges) \clef bass |
  \vo des8 bes des f, des' f, | ges bes ges aes bes aes | % 57a
  bes8 g bes~8 aes4 | g8 ees g aes f aes | g4. f |
  g8(aes bes \rh c \lh bes aes) | g f ees~4.~ | 4 8~4.~ | % 57b
  \ov <ees, ees'>4. <aes, aes'>4(<des des'>8) |
  <ges, ges'>4. <bes bes'> | <c c'> < f, f'> |
  <g g'>4. <aes aes'> | % 57c
  <ees' ees'>8-. <c c'>-. <d d'>-. <ees ees'>-. <c c'>-. <d d'>-. |
  <ees ees'>8-. <c c'>-. <d d'>-. <ees ees'>-. <c c'>-. <d d'>-. |
  \repeat unfold 2 {<ees ees'>4 r8 <c c'>8-. [ r <d d'>-. ] |}
  <ees bes' ees>4 r8 4 r8 | 2.\fermata |
}

pianoLHtwo = \relative {
  \global \vt
  ees4. bes | ees bes | ees bes4 d8 | s2. | g8 a4 bes8 c a
  bes4. 8 bes,4 | c4. g\arpeggio | aes bes | ees bes | c bes | ees bes4 d8 |
  s2. | g8 a4 c a8 | bes4. 8 bes,4 | c4. g | aes4. 4 bes8 |
  ees4. bes | ees bes | ees aes, | f' bes, | g' c, | aes8 aes' g aes4. | % 51a
  g,8 g' f g4. | s4 f8~4 8 | <bes,, bes'>4. bes' | bes bes | ees bes | ees bes |
  ees4. aes, | f' bes, | fis' b, | 8 dis' b e, e' b | fis, b' fis~4. |
  g,8 ees'' g, aes, ees'' aes, | <bes,, bes'>4. bes'' | % 52a
  ees,4. bes\arpeggio | ees bes | ees bes |
  ees4. bes4 d8 | % 52b
  <ees g>8(<f aes> <g bes> <aes c> <g bes> <aes c>) |
  <g bes>8(<aes c> <g bes> <bes des> <aes c> <bes des> |
  <aes c> <bes des> <aes c>) \clef treble ces4. |
  \clef bass s4. \clef treble ces \clef bass |
  s4. \clef treble c4. \clef bass |
  des,4. 4. | ges4 8 f4 8 | ees4 8 aes,4. | bes4. 4. | ees ees, | % 52c
  ees'4. ees, | s4. r8 ees4 | s4. r8 ees4~ | \once\hideNotes ees4. s | s2. | % 53a
  s2.*6 |
  s2.*6 |
  \ov r4. <a a'>4 8 | <des des'>8 8 8 <c c'> q q | % 54a
  <bes bes'>8 8 8 <aes aes'> q q | <ges ges'>8 8 8 <f f'> q q |
  <ees ees'>8 8 8 <des des'> q q |
  <ces ces'>4. des''-> | ces8 des ees bes ces des | aes bes ces ges aes bes | % 54b
  f8 ges aes ees f ges | \vt <bes,, bes'>2.~ | q |
  bes'2.~ | 4. d4 8 | % 54c
  \repeat unfold 2 {<g, g'> <g' bes d> q <g a c d> q q |}
  <g, g'>8 <g' bes d> q <c, g' bes> q q |
  <f, f'>8 <f' aes c> q \vt bes,4.~ | bes bes~ | bes bes | 2. | 2. | ees8 f ges des ees f | % 55a
  ces8 des ees bes ces des | aes bes ces ges aes bes | % 55b
  \vo f8 ges aes ees f ges | \vo <bes, bes' f'>4\arpeggio s8 ees'-> f ges |
  des8 ees f ces des ees | \vo bes(ces des) aes(bes ces) |
  \vt bes,2. | <ees, ees'>4 r8 bes''4. | ees bes | ees bes4 d8 | % 55c
  \ov <ees g>8 <f aes> <g bes> <aes c> <g bes> <aes c> |
  \vt g8 a4 bes8 c aes | bes4. 8 bes,4 | c4. g | aes4. 4 bes8 | ees4. bes | ees bes | % 56a
  ees4. bes4 d8 | ees4. ces | ees4 g,8 f4 bes8 | <ees, ees'>4. bes' | ees bes |
  ees4. bes4 d8 | s2.*2 | s4. ces' | s ces | s c |
  des,4. d | <ges, ges'> <f f'> | <ees ees'> aes | bes bes | ees ees, | % 57a
  ees'4. ees, | ees' ees,~ | ees ees~ | \once\hideNotes ees s | s2.*2 |
  s2.*7 |
}

#(set-global-staff-size 16)

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
          \set PianoStaff.connectArpeggios = ##t
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
            \addlyrics {\tiny ass}
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
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
            \addlyrics {\tiny ass}
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
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
            \addlyrics {\tiny ass}
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
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
          \set PianoStaff.connectArpeggios = ##t
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
            \addlyrics {\tiny ass}
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
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
            \addlyrics {\tiny ass}
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
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
            \addlyrics {\tiny ass}
          >>
        >>
        \new PianoStaff = piano <<
          \set PianoStaff.connectArpeggios = ##t
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
          \set PianoStaff.connectArpeggios = ##t
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
          \set PianoStaff.connectArpeggios = ##t
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
          \set PianoStaff.connectArpeggios = ##t
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
          \set PianoStaff.connectArpeggios = ##t
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
          \set PianoStaff.connectArpeggios = ##t
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
