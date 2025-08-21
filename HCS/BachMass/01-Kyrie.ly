\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Kyrie Eleison"
  subtitle    = "Mass in B Minor"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "J. S. Bach"
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
  \key b \minor
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup{Adagio \with-color "red" { in 8 \rhythm { 8 }}} 4=60 s1*4 |
  \tempo "largo ed un poco piano." 4=60 s1*25
  \tempo \markup{\with-color "red" {in 4 \rhythm { 4 }}} 4=60
}

RehearsalTrackOld = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*3
  \textMark \markup { \box "1b" } s1*3
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*4
  \textMark \markup { \box "2c" } s1*3
  \textMark \markup { \box "2d" } s1*3
  \textMark \markup { \box "2e" } s1*3
  \textMark \markup { \box "2f" } s1*3
  \textMark \markup { \box "3a" } s1*4
  \textMark \markup { \box "3b" }
  \mark \markup\bold\circle A     s1*3
  \textMark \markup { \box "3c" } s1*3
  \textMark \markup { \box "3d" } s1*3
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "5a" }
  \mark \markup\bold\circle B     s1*3
  \textMark \markup { \box "5b" } s1*3
  \textMark \markup { \box "6a" } s1*3
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "7a" } s1
  \mark \markup\bold\circle C     s1*2
  \textMark \markup { \box "7b" } s1*3
  \textMark \markup { \box "8a" } s1*3
  \textMark \markup { \box "8b" } s1*3
  \textMark \markup { \box "9a" } s1*3
  \textMark \markup { \box "9b" } s1*3
  \textMark \markup { \box "10a" } s1*3
  \textMark \markup { \box "10b" } s1*3
  \textMark \markup { \box "10c" }
  \mark \markup\bold\circle D      s1*3
  \textMark \markup { \box "10d" } s1*3
  \textMark \markup { \box "10e" } s1*3
  \textMark \markup { \box "11a" } s1*3
  \textMark \markup { \box "11b" } s1*3
  \textMark \markup { \box "12a" } s1
  \mark \markup\bold\circle E      s1*2
  \textMark \markup { \box "12b" } s1*3
  \textMark \markup { \box "13a" } s1*3
  \textMark \markup { \box "13b" } s1*3
  \textMark \markup { \box "14a" } s1*3
  \textMark \markup { \box "14b" } s1
  \mark \markup\bold\circle F      s1*2
  \textMark \markup { \box "15a" } s1*3
  \textMark \markup { \box "15b" } s1*3
  \textMark \markup { \box "16a" } s1*3
  \textMark \markup { \box "16b" } s1*4
}

RehearsalTrackNew = {
  \textMark \markup\box "4a" s1*4 |
  \textMark \markup\box "4b" s1*4 |
  \textMark \markup\box "4c" s1*4 |
  \textMark \markup\box "4d" s1*4 |
  \textMark \markup\box "5a" s1*4 |
  \textMark \markup\box "5b" s1*4 |
  \textMark \markup\box "5c" s1*5 |
  \mark \markup\circle\bold A
  \textMark \markup\box "5d" s1*4 |
  \textMark \markup\box "5e" s1*4 |
  \textMark \markup\box "6a" s1*3 |
  \textMark \markup\box "6b" s1*3 |
  \textMark \markup\box "6c" s1   |
  \mark \markup\circle\bold B s1*2 |
  \textMark \markup\box "7a" s1*3 |
  \textMark \markup\box "7b" s1*3 |
  \textMark \markup\box "7c" s1*4 |
  \textMark \markup\box "8a" s1   |
  \mark \markup\circle\bold C s1*2 |
  \textMark \markup\box "8b" s1*4 |
  \textMark \markup\box "8c" s1*3 |
  \textMark \markup\box "9a" s1*3 |
  \textMark \markup\box "9b" s1*3 |
  \textMark \markup\box "9c" s1*4 |
  \textMark \markup\box "9d" s1*4 |
  \mark \markup\circle\bold D
  \textMark \markup\box "10a" s1*3 |
  \textMark \markup\box "10b" s1*3 |
  \textMark \markup\box "10c" s1*3 |
  \textMark \markup\box "11a" s1*3 |
  \textMark \markup\box "11b" s1*3 |
  \textMark \markup\box "11c" s1   |
  \mark \markup\circle\bold E s1*2 |
  \textMark \markup\box "12a" s1*3 |
  \textMark \markup\box "12b" s1*3 |
  \textMark \markup\box "12c" s1*3 |
  \textMark \markup\box "13a" s1*4 |
  \mark \markup\circle\bold F
  \textMark \markup\box "13b" s1*3 |
  \textMark \markup\box "13c" s1*3 |
  \textMark \markup\box "14a" s1*3 |
  \textMark \markup\box "14b" s1*3 |
  \textMark \markup\box "14c" s1*3 |
}

RehearsalTrack = \RehearsalTrackNew

dynamicsSopI = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*5 |
  s1*19 | % 2
  s1*11 | s1\p | s |
  s1*6 | % 4
  s1 | s8 s2..\cresc | s1*3 | s2 s\f |
  s1*6 | % 6
  s1 | s4. s8\p s2 | s1*4 |
  s1*2 | s1\cresc | s1*3 | % 8
  s8 s2..\f | s1 | s4. s8\dim s2 | s2 s\p | s1*2 |
  s1*15 | % 10
  s2 s\p | s1*5 |
  s1*6 | % 12
  s1\cresc | s1*4 | s1\f |
  s1*3 | s8 s2..\dim | s1 | s4. s8\p s2 | % 14
  s1*2 | s1\cresc | s1*2 | s1\f |
  s1*7 |
}

sopranoI = \relative {
  \global
  d''4. 8 e8 r r4 | fis4. 8 8 b,(e g) | g(fis4) e8 d e fis4~( |
  fis8 e16 d) e4 fis2 \sectionFermata | R1*2 |
  R1*19 | % 2
  R1*11 | b,8. 16 8-. 8 cis-.(g fis-. cis' | d-. g, fis-. dis' e16 d c8~16 b) ais(b) | % 3
  ais8 g'(fis) e d-. cis16(b) fis'4~ | 4 eis fis r8 e | d8(cis b2 a8 gis | % 4a
  fis8) gis a fis dis'4.\trill cis16(dis) | e4 r8 e, cis'4. b16(cis) | d8 a fis'2 e8(d) |
  cis8 d e4(~8 d16 cis d8 e16 fis | e4. fis16 g fis8) e dis e16(fis) | g8(fis e d cis) b ais b16(cis) | % 5a
  d4.(cis16 d b8 a16 b) cis4 | fis, r r2 | r cis'8. 16 8 8 |
  dis8(a gis dis' e a, g eis' | fis16 e d8~16 cis) bis(cis) bis8 a'(gis) fis | e dis16(cis) gis'4~8 cis, fis e | % 6a
  dis2(~8 gis,) cis(b) | a4 r8 e' fis4(gis8) bis, | cis4 r8 4 bis8 8 cis |
  dis8 fis e d cis4 bis | cis r8 b ais(e'4 d16 cis | d e fis8) b,4 r2 | % 7a
  r4 r8 cis bis(fis'4 e16 dis | e2~8 g, fis e' | dis a gis eis' fis cis bis fis' |
  eis8 b ais e' dis a fis d' | cis eis, fis a b) d, cis b' | a4.(b16 cis b4. cis16 d | % 8a
  cis4. d16 e d2~ | 8) gis, cis b a(g16 fis cis'4~ | 8) fis, b a gis2~ |
  gis8 cis, fis e d4 cis | b8 gis'(a) b cis eis,(fis d') | a(gis4 a8 b d cis b | % 9a
  a4) gis fis r | R1*2 |
  R1*15 | % 10
  r2 fis8. 16 8-. 8 | gis-.(d cis-. g' a-. d, cis-. ais' | b16 a g8~16 fis) eis(fis) e8 d'(cis) b | % 11a
  a8 gis16(fis) d'4(~8 a) g(d') | cis b16(a) e'4(~8 b) ais(e') | d cis(b) a gis a16(b) cis4(~ |
  cis8 b) a(g) fis g16(a) b4 | e,8 b' e2 dis4 | e8 a,(gis e) a2~ | % 12a
  a4 g8(fis) e(fis) gis(a) | b(cis) d(gis,) a r r b | cis(d) e(ais,) b4 r |
  b8. 16 8-. 8 cis-.(g fis-. cis' | d-. g, fis-. dis' e16 d c8~16 b) ais(b) | ais8 g'(fis) e d-. cis16(b) fis'4~ | % 13a
  fis4 eis dis4 4~ | 8 e d cis b4(gis'~ | 8) cis, fis e d2(~ |
  d8 gis,) cis(b) a4 r | r8 eis'(fis a,) gis(e' fis gis | cis,) eis, fis d' a(gis4 a8 | % 14a
  b8) d cis b a4 gis | fis r r2 | r4 r8 b ais e'4(d16 cis |
  d16 e fis8) b,4 r2 | r4 r8 e, dis(a'4 g16 fis | e8 b' ais cis fis, b cis eis, | % 15a
  fis8 ais b dis e gis, a cis | d fis, b2) ais8 cis | 8(fis,) b2 ais8 8 |
  b2(~8 a) g(fis) | e gis cis4~8 fis, b a | g2~8 cis, fis e | % 16a
  d2(~8 ais' b) d, | cis cis'(d) e fis g(fis b,) b(ais4 b8 cis) e d cis | b4 ais b2\fermata^\markup{\with-color "red" \large \bold SIT} |
  \bar "|."
}

Ky    = \lyricmode { Ky -- ri -- e }
el    = \lyricmode { e -- le -- i -- son, }
eli   = \lyricmode { e -- lei -- son, }
Kye   = \lyricmode { \Ky \el }
Kyee  = \lyricmode { \Ky \el \el  }
Kyeee = \lyricmode { \Ky \el \el \el }

wordsSopI = \lyricmode {
  \Ky
  \Kyee
                                % 3d
  \Kye
                                % 4a
  \Kyee
  \repeat unfold 6 \el
  \Kye
                                % 6a
  \Kyeee
  \Kyee \eli \repeat unfold 5 \el
                                % 9a
  \Ky e -- le -- i -- son.
                                % 11a
  \Kye
  \Kyee
  \Kye \eli \repeat unfold 4 \el
                                % 13a
  \Kye
  \Kye
  \Kye \repeat unfold 5 \el
                                % 15a
  \eli \repeat unfold 5 \el
  \Kye e -- le -- i -- son.
}

MKy    = \lyricmode { Ky ri "e " }
Mel    = \lyricmode { e le i "son, " }
Meli   = \lyricmode { e lei "son, " }
MKye   = \lyricmode { \MKy \Mel }
MKyee  = \lyricmode { \MKy \Mel \Mel  }
MKyeee = \lyricmode { \MKy \Mel \Mel \Mel }

wordsSopIMidi = \lyricmode {
  \MKy
  \MKyee
                                % 3d
  \MKye
                                % 4a
  \MKyee
  \repeat unfold 6 \Mel
  \MKye
                                % 6a
  \MKyeee
  \MKyee \Meli \repeat unfold 5 \Mel
                                % 9a
  \MKy e le i "son. "
                                % 11a
  \MKye
  \MKyee
  \MKye \Meli \repeat unfold 4 \Mel
                                % 13a
  \MKye
  \MKye
  \MKye \repeat unfold 5 \Mel
                                % 15a
  \Meli \repeat unfold 5 \Mel
  \MKye e le i "son. "
}

dynamicsSopII = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*5 |
  s1*19 | % 2
  s1*13 |
  s2 s\p | s1*5 | % 4
  s1 | s8 s2..\cresc | s1 | s8 s2..\f | s1*2 |
  s1*6 | % 6
  s1*2 | s4. s8\p s2 | s1*3 |
  s1*2 | s1\cresc | s1*3 | % 8
  s1\f | s | s4. s8\dim s2 | s2 s\p | s1*2 |
  s1*15 | % 10
  s1*6 |
  s1 | s\p | s1*4 | % 12
  s1*2 | s2 s8 s4.\cresc | s1*2 | s1\f |
  s1*3 | s8 s2..\dim | s4. s8\p s2 | s1 | % 14
  s1*2 | s1\cresc | s1*2 | s1\f |
  s1*7 |
}

sopranoII = \relative {
  \global
  b'4. 8 8 ais(cis e) | a,8(c4) b8 g8 r r4 | r8 f(ais cis) d cis16(b) cis8 fis |
  b,4. cis8 ais2 \sectionFermata | R1*2 |
  R1*19 |
  R1*12 |
  R1 | r2 fis8. 16 8-. 8 | gis-.(d cis-. g' a-. d, cis-. ais' | % 6a
  b16 a g8~16 fis) eis(fis) e8 d'(cis) b | a8 gis16(fis) c'4(~8 b) b(a) | g a b4(~8 a) a(g) |
  fis8 16 16 8 8 g-.(d cis-. gis' | a8-. d, cis-. ais' b) fis b b | 4 ais b4. 8~ |
  8 a g fis e(d16 e fis4) | b,8 fis'16 16 8 8 gis(d cis g' | a d, cis ais' b16 a g8~16 fis) eis(fis) | % 7a
  eis8 d'(cis) b a gis16(fis) cis'4~ | cis4 bis cis4 4~ | 8 b a gis fis4(dis'~ |
  8) gis, cis b a2(~ | a8 dis,) gis(fis) e4 r | r8 bis'(cis e,) dis(b' cis dis | gis,) bis, cis a' e dis4(e8 |
  fis8 a) gis fis e4 dis | cis r r2 | r4 r8 fis eis(b'4 a16 gis | % 8a
  a16 b cis8) fis,4 r2 | r4 r8 b ais e'4(d16 cis | b8 fis eis gis cis fis, gis bis | cis8 eis fis ais, b dis e gis, |
  a8 cis fis,2) eis8 gis | 8(cis, fis2) eis8 8 | fis2(~8 e') d(cis) |
  b8 d gis,4~8 cis fis e | d2~8 gis, cis b | a2(~8 eis' fis) a, | % 10a
  gis8 eis(fis) gis a d(cis fis,) | 8(eis4 fis8 gis b a gis | fis4) eis fis r | R1*2 |
  R1*15 |
  R1*6 |
  R1 | e8. 16 8-. 8 fis-.(c b-. fis' | g-. c, b-. gis' a16 g f8~16 e) dis(e) | % 11c
  dis8 c'(b) a g-. fis16(e) d'4(~ | 8 a) gis(d') cis b16(a) e'4(~ | 8 b) ais(e') d e fis4~ | % 12a
  fis4 e fis r | R1 | r2 fis,8. 16 8-. 8 | 
  gis8-.(d cis-. gis' a-. d, cis-. ais' | b16 a g8~16 fis) eis(fis) eis8 d'(cis) b | a-. gis16(fis) cis'4~8 fis, b a |
  gis2(~8 cis,) fis(e) | d4 r8 a' cis4(d8) eis, | fis4 r8 8~8 eis eis fis | gis8 b a gis fis4 eis | % 13a
  fis4 r8 e dis a'4(g16 fis | g a b8) e,4 r2 | r4 r8 fis eis(b'4 a16 gis |
  a2~8 c, b a' | gis d cis ais' b fis eis b' | ais8 e dis a' gis d cis g' |
  fis8 ais b d e) g, fis e | d4.(e16 fis e4. fis16 g | fis4. g16 a g2~ | % 14a
  8) cis fis, e d(cis16 b fis'4~ | 8) b, e d cis2~ | cis8 fis b a g4 fis |
  e8 ais(b) cis fis, a(b g) | d(cis4 d8 e) g fis e | d4 cis b2\fermata |
}

wordsSopII = \lyricmode {
  \Kyee e -- le -- i -- son.
                                % 4a
  \Kye
  \Kyee
  \Kyee
                                % 5a
  \Ky \eli
  \Kye
  \Kye
                                % 6a
  \Kye \repeat unfold 4 \el
  \eli \el \eli
  \repeat unfold 4 \el
                                % 9a
  \Ky e -- le -- i -- son.
                                % 12a
  \Kye
  \Kyeee
  \Kye
  \Kyeee
                                % 14a
  \Kye \repeat unfold 7 \el
  \Kye e -- le -- i -- son.
}

wordsSopIIMidi = \lyricmode {
  \MKyee e le i "son. "
                                % 4a
  \MKye
  \MKyee
  \MKyee
                                % 5a
  \MKy \Meli
  \MKye
  \MKye
                                % 6a
  \MKye \repeat unfold 4 \Mel
  \Meli \Mel \Meli
  \repeat unfold 4 \Mel
                                % 9a
  \MKy e le i "son. "
                                % 12a
  \MKye
  \MKyeee
  \MKye
  \MKyeee
                                % 14a
  \MKye \repeat unfold 7 \Mel
  \MKye e le i son.
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*5 |
  s1*19 | % 2
  s1*6 | s2 s\p | s1*6 |
  s1*6 | % 4
  s1 | s8 s2..\cresc | s1*3 | s8 s2..\f |
  s1*6 | % 6
  s1*2 | s8 s2..\p | s1*3 |
  s1*2 | s1\cresc | s1*3 | % 8
  s8 s2..\f | s1 | s4. s8\dim s2 | s s\p | s1*2 |
  s1*13 | s1\p | s | % 10
  s1*6 |
  s1*6 | % 12
  s4 s2.\cresc | s1*4 | s1\f |
  s1*3 | s8 s2..\dim | s8 s2..\p | s1 | % 14
  s1*2 | s1\cresc | s1*2 | s1\f |
  s1*7 |
}

alto = \relative {
  \global
  fis'4. 8 e8 r r4 | r8 a fis dis b8 r r4 | cis'4. fis,8 8(g) a4 |
  d,8(g~16 fis) g8 cis,2 \sectionFermata | R1*2 |
  R1*19 | % 2
  R1*4 | % 3a
  R1*2 | r2 fis8. 16 8-. 8 |
  gis8-.(d cis-. gis' a-. d, cis-. ais' | b16 a g8~16 fis) eis(fis) eis8 d'(cis) b | a-. gis16(fis) c'4(~8 b) b(a) |
  g4 r8 c, ais'4.(gis16 ais | b8 fis b2) ais4 | b r8 a g16(fis g fis e4~ |
  e4 d8 cis b fis' b a | gis2) fis4 r8 fis~ | 8 e d cis16(d) b8(gis) eis'4 | % 4a
  fis4 r r8 b, fis' e16(fis) | g8 r r4 r8 a, e' d16(e) | fis4 r8 a b2 |
  a8 b cis(b16 cis fis,4. e16 d | e4.) d16(cis) fis8 g a(g16 fis | e4. fis8 g fis16 e cis'4) | % 5a
  fis,4 r8 a gis(fis g a16 b | a8 b cis4) b8 d, d cis16(b) | gis'8 gis,(a) b cis dis e(fis16 g |
  a8 fis) dis(gis) 4 r8 8 | fis(gis a) dis,8 4 8 8 | e(fis) gis(e) c4(bis8) cis | % 6a
  dis4 8 8 e dis cis4~ | 8 fis e r r dis(e fis) | gis(a) gis(a) gis a16(g fis8) e |
  dis4 e8(fis) gis(a) gis(fis) | e4 r r2 | r8 fis b4~8 a gis fis16(eis) | % 7a
  fis4 cis r2 | r4 r8 g' fis e16(d) cis8 fis | 8(r r d cis r r gis' |
  gis8 r r ais fis r r gis | e gis a fis gis4) 8 eis | cis4.(b16 a b4.) a16(gis) | % 8a
  c4 r8 fis8~8 cis' b a | gis4.(fis16 gis a8) b cis a | fis4.(eis16 fis gis4. fis16 gis |
  a8) gis fis4 r8 gis(a) fis | eis(b') a(gis) fis b, a gis | a(b16 cis d8 cis b eis fis gis | % 9a
  a8 fis) cis4 4 r | R1*2 |
  R1*13 | b8. 16 8 8 cis(g fis cis' | d g, fis dis' e16 d c8~16 b) cis(d) | % 10
  ais8 g'(fis) e d cis16(b) fis'4~ | 4 eis fis r | r2 r8 b(gis eis) | % 11a
  fis8 gis a d, gis(a b4~ | 8 e, b' cis16 b ais8 b cis4) | b8 a(gis) fis eis fis gis(fis16 e |
  fis8) cis fis e dis(e fis e16 dis | e4. fis16 g a4. b16 a | g8) fis e4~8 d(c a) | % 12a
  fis'8(dis) e(fis) g(a) b(a) | gis fis e r r e(a) e | cis4 fis4 4(~16 e d cis |
  d8 cis16 b b'2) ais4 | b8 e,(dis fis) b4 e,8 8~ | 8 ais, b cis d4 cis | % 13a
  b8 4 8 a(gis) ais(cis) | fis(ais, b4~8) a gis cis~ | 8 b a cis d(cis b4~ |
  b4 cis~4. b16 cis | d8) gis, a fis' eis(b') a(gis) | fis b,(a) gis a b16(cis d8 cis) | % 14a
  b8(eis fis gis cis,) fis16 gis16 4 | a8 fis16(g) a4~8 g fis e16(dis) | e4 b r2 |
  r8 fis' b4~8 a gis fis16(eis) | fis4 cis8 a' fis8 8 dis e16(fis) | e8(r r cis d r r gis | % 15a
  fis8 r r fis e r r e | d16 cis d e fis8 g16 fis e4) fis8 cis | d2(cis8 b) cis4 |
  b8 b'(a) g16(fis) g4 r8 d | e4 fis8 8~8 e d fis | g(fis e2) fis8 8 | % 16a
  fis4.(e16 fis g8 e) d4 | e8 8(fis) ais, b cis(fis, g') | fis(g16 fis e8 d cis4 d8 e | fis g) fis(e) dis2\fermata |
}

wordsAlto = \lyricmode {
  \Kye
  \Kye
                                % 3b
  \Kye
  \Kyee
  \eli
  \Kyeee
  \eli \el
  \eli \eli
  \el
  \Kyee
                                % 6a
  \Kye
  \Kyee
  \Kyee
  \eli \el
  \eli \el
                                % 8b
  \Kyee
  \Kye
  e -- le -- i -- son.
                                % 10e
  \Kye
  \Kyee
  \eli
  \Kye \repeat unfold 3 \el
  \Kye \eli
                                % 13a
  \Kye
  \Kye
  \Kyee
                                % 14a
  \Ky \eli \eli
  \el \eli
                                % 15a
  \el \eli
  \el \eli
  \el
  \Ky \eli
  \Ky \eli
  \el
  \Ky e -- le -- i -- son.
}

wordsAltoMidi = \lyricmode {
  \MKye
  \MKye
                                % 3b
  \MKye
  \MKyee
  \Meli
  \MKyeee
  \Meli \Mel
  \Meli \Meli
  \Mel
  \MKyee
                                % 6a
  \MKye
  \MKyee
  \MKyee
  \Meli \Mel
  \Meli \Mel
                                % 8b
  \MKyee
  \MKye
  e le i "son. "
                                % 10e
  \MKye
  \MKyee
  \Meli
  \MKye \repeat unfold 3 \Mel
  \MKye \Meli
                                % 13a
  \MKye
  \MKye
  \MKyee
                                % 14a
  \MKy \Meli \Meli
  \Mel \Meli
                                % 15a
  \Mel \Meli
  \Mel \Meli
  \Mel
  \MKy \Meli
  \MKy \Meli
  \Mel
  \MKy e le i son.
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*5 |
  s1*19 | % 2
  s1*4 | s1\p | s1*8 |
  s1*6 | % 4
  s1 | s8 s2..\cresc | s1*3 | s2. s4\f |
  s1*6 | % 6
  s1 | s8 s2..\p | s1*4 |
  s1*2 | s1\cresc | s1*3 | % 8
  s1\f | s | s4. s8\dim s2 | s s\p | s1*2 |
  s1*8 | s2 s\p | s1*6 | % 10
  s1*6 |
  s1*6 | % 12
  s1 | s2 s8 s4.\cresc | s1*3 | s1\f |
  s1*3 | s8 s2..\dim | s1 | s8 s2..\p | % 14
  s1*2 | s1\cresc | s1*2 | s1\f |
  s1*7 |
}

tenor = \relative {
  \global
  b4. a8 g8 r r4 | fis8(a) dis(fis) g8 r r4 | e8(cis4) ais8 fis4 r8 cis' |
  d8(cis) b4 fis'2 \sectionFermata | R1*2 |
  R1*19 | % 2
  R1*4 | % 3a
  b,8. 16 8-. 8 cis-.(g fis-. cis' | d-. g, fis-. dis' e16 d c8~16 b) ais(b) | % 3b
  ais8-. g'(fis) e d-. cis16(b) fis'4~ |
  fis4 eis fis r8 e | d16(cis d cis b2 a8 gis | fis) gis a fis dis'4.(cis16 dis | % 3c
  cis8 b g'4~8 fis) fis(e) | d4 r8 8 e4 fis | b,8 8(a) b e, fis g e |
  fis4. gis16(ais) b8(cis d cis | b a16 b cis8) 8 fis, gis(ais) fis | b4. a8 gis4 cis,8 8 | % 4a
  fis4.(g16 a b8 a16 b a8) b | e,4. fis16(g) a8(g16 fis g8) a | d, d'4 cis8 b b cis(d16 e |
  fis4) fis, b r8 b | g'4.(fis16 e d8) e fis dis | b c16(d) e8 b cis4.(d16 e | % 5a
  fis8) d r cis(d) b gis fis16(eis) | cis'8(b ais) fis'8 4 b,8 8 | b eis, fis gis a4 gis |
  fis4 8 8 e(dis eis gis | cis eis, fis4~8) e dis gis~ | 8 fis e gis a(gis fis4~ | % 6a
  fis4 gis~4. fis16 gis | a8) dis, e cis' bis(fis') e(dis) | cis dis,(e) dis e fis16(gis a8 g) |
  fis8(bis cis dis gis,) cis16 dis16 4 | e8 cis16(d) e4~8 d cis b16(ais) | b4 fis r2 | % 7a
  r8 cis' fis4~8 e dis cis16(bis) | cis4 gis8 e' cis8 8 ais b16(cis) | b8(r8 r gis a r r dis |
  cis8 r r cis b r r b8 | a16 gis a b cis8 d16 cis b4) cis8 gis | a2(gis8 fis) gis4 | % 8a
  fis8 fis'(e) d16(cis) d4 r8 a | b4 cis8 8~8 b a cis | d(cis) b2 cis8 8 |
  cis4.(b16 cis d8 b) a4 | b8 b(cis) eis, fis gis(cis, d') | cis(d16 cis b8 a gis4 a8 b | % 9a
  cis8 d) gis,(cis) a4 r | R1*2 |
  R1*6 | % 10ab
  R1*2 | r2 fis8. 16 8-. 8 |
  gis8-.(d cis-. g a-. d cis-. ais' | b16 a g8~16 fis) eis(fis) eis8 d'(cis) b | a-. gis16(fis) d'4(8 a) g(d') |
  cis8 a16(b) c4(~8 g) fis(cis') | b fis b2 ais4 | b8 r r fis e(g) fis(e) |
  fis8(ais) b(cis) d(e16 d cis b a b | gis2) fis8 fis'(e cis) | d2~8 fis, eis gis | % 11a
  a4.(fis16 a b8 cis) d(g,) | a cis b(e16 d cis8 d) e(ais,) | b4 r8 fis cis'8 8 gis a16(b) |
  cis4.(b16 a b2) | 8 8(a) g fis4 4 | e8(dis e b' c4) a8(c) | % 12a
  fis,4 r r2 | r4 r8 b a(b cis b | ais) gis fis cis' b(cis d16 e fis8 |
  b,8 cis16 d e fis) g8 cis,4 r | r2 r8 g g fis16(e) | cis'8 cis,(d) e fis gis a(b16 cis | % 13a
  d8 b) gis(cis) 4 r8 8 | b(cis d) gis,8 4 8 8 | a(b) cis(a) fis4(eis8) fis |
  gis4 8 8 a g fis4~ | 8 b a r r gis(a b) | cis(d) cis(d) cis d16(cis b8) a | % 14a
  gis4 a8(b) cis(fis,) cis'4 | 4 r r2 | r8 b e4~8 d cis b16(ais) |
  b4 fis r2 | r4 r8 c' b a16(g) fis8 b | 8(r r g fis r r eis' | % 15a
  cis8 r r dis b r r cis | a cis d b cis4) 8 ais | fis4.(e16 d e4.) d16(cis) |
  fis4 r8 b~8 fis' e d | cis4.(b16 cis d8) e fis d | b4.(ais16 b cis4. b16 cis | % 16a
  d8) cis b4 r8 cis(d) b | ais(e') d(cis) b e, d cis | d(e16 fis g8 fis e ais b cis | d b) fis 4 2\fermata |
}

wordsTenor = \lyricmode {
  Ky -- ri -- e, Ky -- ri -- e,
  \Kye
                                % 3b
  \Kye
  \Kye \repeat unfold 3 \el
  \Kyee
  % 4a
  \Ky \eli
  \el \el
  \Kye
  \el \el
  \eli
  \Kye
  \Kye \eli
                                % 6a
  \el
  \Kyee
  \Ky \eli
  \eli \el
  \eli
                                % 7b
  \el \eli
  \el \eli
  \el
  \Ky \eli
  \Kyee
                                % 9a
  \Ky e -- le -- i -- son.
                                % 10c
  \Kye
  \Kye \repeat unfold 3 \el
                                % 11a
  \eli \repeat unfold 4 \el
  \eli
                                % 12a
  \Kye \repeat unfold 3 \el
  \Kyee
  \Kye
                                % 14a
  \Kyee
  \Kyee
  \eli \el
  \eli \el
  \Kyee
  \Kye
  e -- le -- i -- son.
}

wordsTenorMidi = \lyricmode {
  Ky ri "e, " Ky ri "e, "
  \MKye
                                % 3b
  \MKye
  \MKye \repeat unfold 3 \Mel
  \MKyee
  % 4a
  \MKy \Meli
  \Mel \Mel
  \MKye
  \Mel \Mel
  \Meli
  \MKye
  \MKye \Meli
                                % 6a
  \Mel
  \MKyee
  \MKy \Meli
  \Meli \Mel
  \Meli
                                % 7b
  \Mel \Meli
  \Mel \Meli
  \Mel
  \MKy \Meli
  \MKyee
                                % 9a
  \MKy e le i "son. "
                                % 10c
  \MKye
  \MKye \repeat unfold 3 \Mel
                                % 11a
  \Meli \repeat unfold 4 \Mel
  \Meli
                                % 12a
  \MKye \repeat unfold 3 \Mel
  \MKyee
  \MKye
                                % 14a
  \MKyee
  \MKyee
  \Meli \Mel
  \Meli \Mel
  \MKyee
  \MKye
  e le i son.
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*5 |
  s1*19 | % 2
  s1*13 |
  s1*6 | % 4
  s2 s\p\cresc | s1*2 | s1\f | s1*2 |
  s1*6 | % 6
  s2. s4\dim | s4. s8\p s2 | s1*2 | s2 s2\< | s1\! |
  s1*2 | s1\cresc | s1*3 | % 8
  s8 s2..\f | s1 | s4. s8\dim s2 | s s\p | s1*2 |
  s1*6 | s1\f | s | s2 s\> | s1\! | s1*6 | % 10
  s1*2 | s1\cresc | s | s2 s\dim |
  s1\omit\p | s1*3 | s1\omit\cresc-\markup\italic " cresc. molto" | s1 | % 12
  s1 | s1 | s1*3 | s1\f |
  s1*3 | s8 s2..\dim | s4. s8\p s2 | s1 | % 14
  s1*2 | s1\cresc | s1*2 | s1\f |
  s1*7 |
}

bass = \relative {
  \global
  b,4. 8 cis8 r r4 | dis4. 8 e8 r r4 | ais4. 8 b4 r8 a |
  g2 fis \sectionFermata | R1*2 |
  R1*19 | % 2
  R1*13 |
  R1*6 | % 4
  r2 b,8. 16 8-. 8 | cis-.(g fis-. cis' d-. g, fis-. dis' | e16 d c8~16 b) ais16(b) ais8 g'(fis) e | % 5a
  d8-. cis16(b) fis'2 eis4 | fis r8 e d(b) cis(d) | cis b a gis fis fis' e(dis16 e |
  fis8 e16 fis gis4) cis, r | r8 fis4 gis8 a4 bis, | cis8(dis e cis fis e dis cis | % 6a
  bis8 ais) bes(gis) cis b a gis | fis4 r8 gis a(a') gis(fis) e(dis) e(fis) gis2(~ |
  gis2~8 fis) gis4 | cis, r8 8 fis4 fis, | b r8 b' cis4 cis, | % 7a
  fis4 r8 8 gis4 gis, | cis8 4 d16(e) fis4 fis, | b8(r r b' a r r gis |
  cis,8 r r fis b, r r e | a, r r d gis,4) r8 cis | fis, fis'16 16 8-. 8 gis-.(d cis-. gis' | % 8a
  a8-. d, cis-. ais' b16 a g8~16 fis) eis(fis) | eis8 dis(eis) cis fis(gis) a(fis) | b,(cis e b eis dis eis cis |
  fis8) e d cis b4(cis | d cis8 b a) gis a b | cis1( | % 9a
  cis8 b) cis4 fis, r | R1*2 |
  R1*6 | % 10ab
  b8. 16 8-. 8 cis-.(g fis-. cis' | d-. g, fis-. dis' e16 d c8~16 b) ais(b) | ais8 g'(fis) e d-. cis16(b) fis'4~ |
  fis4 eis fis r8 e( | d) cis d cis16(b) cis8(b') a(gis) | fis4 r8 b, e4. fis16(gis) |
  a4 r8 a, d4. e16(fis) | g4 r8 d e4 fis | b,8 fis' b4(~8 e,) d(cis) |
  fis8 e(d) cis b cis d cis | b a16(b) cis4 fis, r | r8 b'(a fis) gis4 cis, | % 11a
  fis4 f e e | a g8(a) fis4 fis, | r8 fis' b4(~8 fis) eis(b') |
  a8 gis16(fis) a4(~8 e) dis(a') | g e(c') b a4 b | e,4.(d8 c b) c4 | % 12a
  b4 cis8 dis e4 8 fis | gis a b e, a4 r8 gis | ais(b) cis(fis,) b4 r8 a |
  g2 fis4 r | r8 b4 a8 g(e) fis(g) | fis(e) d(cis) b b a(gis16 a | % 13a
  b8 a16 b cis4) fis, r | r8 b'4 cis8 d4 eis, | fis8(gis a fis b a gis fis |
  eis8 dis) eis(cis) fis e d cis | b4 r8 cis d4 cis8(b) | a(gis) a(b) cis2(~ | % 14a
  cis2~8 b) cis4 | fis, r8 fis' b4 b, | e r8 e fis4 fis, |
  b4 r8 b' cis4 cis, | fis8 4 g16(a) b4 b, | e8(r r e d r r cis | % 15a
  fis8 r r b, e r r a, | d r r g cis,4) r8 fis | b,8 16 16 8 8 cis-.(g fis-. cis' |
  d8-. g, fis-. dis' e16 d c8~16 b) ais(b) | ais8 gis(ais) fis b(cis) d(b) | e(fis g e ais gis ais fis | % 16a
  b8) a g fis e4(fis | g fis8 e d) cis d e | fis1(~ | 8 e) fis4 b,2\fermata |
}

wordsBass = \lyricmode {
  \Ky \Ky
  \Ky e -- lei -- son.
                                % 5a
  \Kye
  \Kyeee
  \eli
                                % 6a
  \Kye \repeat unfold 6 \el
  \Kye
                                % 8a
  \Kye
  \Kyee
  e -- le -- i -- son.
                                % 10c
  \Kye
  \Kye
  \Kye
  \repeat unfold 4 \el
                                % 11a
  \Kye
  \eli \el
  \el \eli
  \el \el
                                % 12a
  \Kye
  Ky -- ri -- e, \Kyee
  \eli
  \Kye \eli
                                % 13b
  \Kye
  \repeat unfold 6 \el
  \Kye
  \Kye
  \Kyee
  e -- le -- i -- son.
}

wordsBassMidi = \lyricmode {
  \MKy \MKy
  \MKy e lei "son. "
                                % 5a
  \MKye
  \MKyeee
  \Meli
                                % 6a
  \MKye \repeat unfold 6 \Mel
  \MKye
                                % 8a
  \MKye
  \MKyee
  e le i "son. "
                                % 10c
  \MKye
  \MKye
  \MKye
  \repeat unfold 4 \Mel
                                % 11a
  \MKye
  \Meli \Mel
  \Mel \Meli
  \Mel \Mel
                                % 12a
  \MKye
  Ky ri "e, " \MKyee
  \Meli
  \MKye \Meli
                                % 13b
  \MKye
  \repeat unfold 6 \Mel
  \MKye
  \MKye
  \MKyee
  e le i son.
}

pianoRHone = \relative {
  \global \ov
  <d'' fis b d>4. <fis, b d>8 \vo e'4 \ov r4 |
  \vo fis4. <fis b>8 <g b>4 r | cis4. 8 d4 r |
  b16(a) g(fis) e(d) cis(b) \ov <fis, ais cis fis>2 \sectionFermata | % 1b
  \vo b'8. 16 8 8 cis g(fis) cis' | d8 g,(fis) dis' e16(d c8~) 16 b(ais b) |
  \ov <e, ais>8 <ais cis g'>(<b d fis> <cis e>) \vo d8(cis16 b) <cis fis>4~ | % 2a
  fis4 eis fis4. 8~ |
  8(<a,cis e>) <b d>(~<b cis>) b4 gis'~ |
  gis8 cis, <cis fis>(e) d4 4~ | % 2b
  d8 gis, cis(b) a4 a~ |
  a8 <gis eis'>(<a fis'>) <fis a> \ov <b, gis'> <gis' b e>(<a cis fis>) <b eis gis> |
  <cis, fis cis'>8 <b eis>(<a cis fis>) <fis' gis d'> <fis a>(<eis gis>4) <fis a>8 |
  \vo b8 <b d>(<a cis> b) a <a d>(<gis cis> b~) | % 2c
  \ov <cis, fis b>8 <fis a>16 <g b> \vo c8 e dis4 <b fis'>~ |
  q8 <cis e>16 <dis fis> g4~ <e g>8 b(ais) <cis e>~ |
  <cis d>8 e16 fis d8 b' eis, fis16 gis <cis, eis gis>4~ | % 2d
  gis'8 fis16 gis a4~ \ov <b, dis a'>8 <g cis e>(<fis b dis>) <b dis fis a> |
  <b e gis>8 <b d>(<ais cis>) <cis e g ais> <b fis' b> <b fis'>(<cis eis>) <cis eis gis b> |
  <cis fis ais>8 <ais e'>(<b dis>) <b dis fis a> <b e gis> <gis d'>(<a cis>) <a cis e g> | % 2e
  <a d fis>8 <fis ais>(~<fis b>) <fis b d> <e g b e> <b g'>(<ais fis'>) <ais' cis e> |
  \vo d4.(e16 fis) e4.(<d fis>16 <e g>) |
  fis8 b(a g16 fis) g4. r8 | % 2f
  r8 cis, fis(e) <cis d> cis16 b fis'4~ |
  fis8 b,~<b e>(d) cis2 |
  <cis d>8 <fis, cis'> b(<a b>) \ov <d, g b> <cis gis' a>(<d fis b>) <b d fis> | % 3a
  <ais cis e>8 <e' ais cis>(<fis b d> <g ais cis e>) <fis b d fis>(<ais e' g> <b d fis>) <cis, g' b>~ |
  <d fis b>8 \vo ais'4 b8 \ov <e, g cis> <g ais e'>(<fis b d> <e cis'>) |
  \vo d'8. cis16 8.\trill b16 \ov <d, b'>8 <ais cis e g>(<b d fis> <cis e>) |
  <b d>4 \vo b'2 ais4 | b2. e4~ | 8 ais, b cis d4 cis | % 3b
  b2 a8 b cis4 | d2~8 eis, fis gis | a2~8(g) g(fis) | % 3c
  g4 e'~8(d) d cis | d2 cis | b~8 a g4~ | % 3d
  g8 ais b(cis) d(cis) b(cis) | d16 cis b4 cis16 b a8 b cis b16 cis | d8 e16 fis g8 a b4 r8 gis, | % 4a
  a4. b16 c fis,8 8 b4~ | 8 cis16 d e4~8 a, a'4~ | 16 g fis e d4~8 cis16 d e4~ |
  e16 d cis b ais8 fis fis'8. e16 d8 cis16 d | % 5a
  e16 d cis d e cis d e fis8 b,16 cis dis8 e16 fis |
  g8 fis e d cis b ais b16 cis |
  d16(b ais b) d(b a b) d(b a b) cis4~ | % 5b
  cis8 eis fis ais, b16(a g8)~ 16(fis eis fis) |
  eis8 d'(cis b) cis8. 16 8 8 |
  \ov <a dis>8 <cis, fis a>(<bis dis gis>) <gis' bis dis>~<gis cis e> <fis a>(g) <cis eis> | % 6a
  \vo fis16(e d8)~16 cis(bis cis) bis8 a'(gis fis) |
  e8 dis16 cis gis'4 8 cis, fis(e) |
  dis2~8 g, cis(b) | % 6b
  a8 bis(cis) e, \ov <bis d fis> <fis' bis dis>(<e cis' e> <a dis fis>) |
  \vo <cis gis'>8(a' gis) cis, cis bis4 cis8 |
  \ov <fis, dis'>8 <a fis'>(<gis e'> <fis dis'>) \vo cis' a'(gis fis) | % 7a
  fis8 e16 fis g4~8 b,(ais) <cis e> |
  d4 r r r8 gis |
  gis8 fis16 gis c4~8 cis,(bis) <dis fis> | % 7b
  e4 r r r8 ais |
  \ov <dis, b'>8 <a fis'> <gis eis'> <eis' gis> cis <cis fis>(<bis gis'>) <bis fis'> |
  <cis eis>8 <b eis>(<ais fis'>) <ais e'>(<b dis>) <a dis>(<gis e'>) <gis d'> | % 8a
  \vo cis8 8 fis2 eis8 gis |
  gis8 cis, fis2 eis4 |
  fis2~8(e) d4~ | 8 gis, gis'4~8 cis, fis e | d2~8 gis, cis(b) | % 8b
  a2~8 <gis eis'>(<a fis'>) <fis a> | % 9a
  \ov <eis gis>8 <gis eis'>(<a fis'> <b gis'>) cis <eis, d'>(<fis cis'>) <fis d'> |
  <fis a>8 <eis gis>4 <fis a>8 <gis b> <eis b' d>(<fis a cis> <g b>) |
  <fis a>4 <cis eis gis> \vo <a cis fis>8 cis' fis4~ | % 9b
  fis4 eis fis e |
  d2~8 8(cis) eis |
  fis8 8(gis) fis eis8 8(fis) e | dis8 8(e) d cis e a4~ | a4 gis a g | % 10a
  fis4. 8~16(e d8)~16 cis(b cis) | % 10b
  \ov <e, a'>8 <gis cis e>(<fis b dis>) <dis' fis a> <e gis> <b d g>(<a cis a'>) <cis e g> |
  <d fis>8 <a c fis>(<g b g'>) <d' fis> <cis e> <b d eis>(<ais cis fis>) <ais cis e> |
  \vo d8 fis b2 ais4 | b a g8 e16 fis e8 d | % 10c
  \ov <e, cis'>8 <cis e ais>(<d fis b> <e g cis>) \vo d' e16 d cis8 d16 cis |
  b8 a16 b cis8 b a fis'16 e fis8 cis | % 10d
  d4. 8~<eis, gis d'> <eis gis>(<fis a> <gis b>) |
  cis8 b16 a fis'8 d b cis16 d e8 b |
  cis16 b cis d e8 c a b16 cis d8 a | % 10e
  b8 d g fis <g, cis e>16(<fis d'><e cis'>4) fis'16 e |
  d16(cis b cis) dis8 fis \ov <b, e b'>4 r8 <cis e g>8~ |
  q8 <g cis>(<fis b d> <ais e'>) \vo fis' e d4~ | % 11a
  d16 <a cis> <gis b>4 cis16 b a8 fis16(gis) ais(b cis ais) |
  b8 d16(cis) b(a gis a) s2 |
  a8 gis16 fis d'4~8 a(gis) d' | % 11b
  cis8 b16 a e'4~8 b(ais) e' |
  d8(cis) b(a) gis a16 b cis4~ |
  cis8 b a(g) fis g16 a b4~ | 8 cis16 dis e2 dis4 | % 12a
  \ov <g, e'>8 <c, dis a'>(<b e gis>) q  \vo a'16(g f8~) 16 e(dis e) |
  \ov s2 g8 fis16 e \vo d'4~ | d8 a(gis) d' cis b16 a e'4~ | % 12b
  e8 b(ais) e' d e fis4~ |
  fis4 e fis r | % 13a
  \ov <b, d>8 <e, g>(<dis fis>) <fis dis'> \vo e'16(d c8)~ 16 b(ais b) |
  ais8 g'(fis e) d cis16 b fis'4 |
  \ov <gis, d'>8 <d fis b>(<cis eis gis>) <eis gis cis>~<fis a cis> <d fis b>~<cis fis cis'> <fis ais> | % 13b
  \vo fis' e d(cis) b r gis'4~ |
  gis8 cis, fis(e) d2~ |
  d8 gis, cis(b) a2~ | \ov <d, a'>8 <d' eis>(<cis fis>) <cis, a'> <b gis'> <gis' eis'>(<a fis'> <b gis'>) | % 14a
  cis8 <d, eis>(<cis fis>) <fis d'> \vo <fis a>(<eis gis>4) <fis a>8 |
  s2 <fis a>8 d'(cis) b~ | b a16 b c4~8 e,(dis) fis'~ | % 14b
  fis8 e16 fis b4~8 b,(ais) e' |
  d4 4~8 fis,(eis) gis'~ | 8 fis16 gis a4~8 c,(b) a' | % 15a
  \ov <b, e gis>8 <b d>(<ais cis>) <cis ais'> <b fis' b> <b fis'>(<cis eis>) <eis gis b> |
  <fis ais>8 <ais, e'>(<b dis>) <dis fis a> <e gis> <gis, d'>(<a cis>) <cis e g> | % 15b
  <d fis>8 <fis, ais>(b) <g b d> <g b e> g(fis) <ais cis e> |
  \vo d4.(e16 fis) e4.(fis16 g) |
  fis4.(g16 a) g4. 8~ | 8 cis, fis(e) d cis16 b fis'4~ | 8 b, e(d) cis2~ | % 16a
  cis8 fis, b(a) g ais b(fis) | % 16b
  \ov <cis e>8 <ais' cis>(<b d> <g cis e>) <fis b fis'>(<ais g'> <b fis'>) <g b>~ |
  <d fis b> \vo a'4 \ov <d, fis b>8 <e ais cis> <g cis e>(<fis d'> <e ais cis>) |
  \vo b'4 ais\trill \ov <dis, fis b>2\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s2 <e' g>4 s | a4. b8 4 r | cis4. fis8 <d fis> e fis cis |
  <b d fis>8 <ais e'> b <e, g> s2 | d2 cis8(d) e4( | % 1b
  <d fis>8) e dis fis e g4(fis16 e) |
  s2 fis8.-> 16-> 8-> 8-> | % 2a
  <<{\vf gis8 \lh d(cis) \vt \rh g'} \new Voice {\vt d'8 b g \vf cis}>> \vt <a cis> g <fis ais> <ais cis> |
  b16(a g8)~16(fis eis fis) <e gis>8 <a d>(<gis cis> b) |
  <a cis>8 <gis b>16 fis a4 cis8 <fis, cis'> <eis b'> <fis a> | % 2b
  <gis b>4 r8 <eis gis>~ \hideNotes <cis gis'> \unHideNotes s4. |
  <d fis>8 \lh b(a) \rh cis s2 | s1 |
  <eis gis>4 fis8 gis fis8 4 <eis gis>8 | % 2c
  s4 a4 <a cis>8 [ <g cis> s ais ] |
  g8 a <b e> e~ <ais, e'> \lh d, cis \rh fis~ |
  fis8 <gis b>16 <ais cis> b4~ 8 a gis b | % 2d
  <a cis>4~ a8 b16 c s2 | s1 |
  s1 | s2.. \vo \once\hideNotes cis8~ | \vt cis fis, b g s2 | % 2e
  <b fis'>4. b8 b(<a fis'>) <g e'>(<fis d'>) | % 2f
  <e cis'>4 fis fis8 <e fis> <fis b>(<fis a>) |
  <g b>8 fis e4~<e g>8 cis fis(e) |
  d2~ \once\hideNotes 8 s4. | s1 | % 3a
  s8 <e g>16 <d fis> <cis e>8 <d fis> s2 | <d fis>8 <g b> <fis ais> e s2 |
  s4 d g8 cis,4 fis8~ | 8 e dis fis b, g' fis e | fis cis(d) e fis gis a4 | % 3b
  gis2 fis~ | 8 b16 ais b8 a gis4 a8 eis | fis2~8 dis b4~ | % 3c
  b8 e cis'4~8 ais fis4~ | 8 d \lh b \rh fis' g \lh e cis fis~ | 8 e dis \rh fis g4 r8 cis, |
  cis'4 r8 fis, b(a) gis(a) | b16 cis d8 gis, eis cis4 r8 fis~ | 8 g16 a b8 cis d b eis,8 8 | % 4a
  cis8 d16 e fis4 dis16 e b8 fis' g16 fis | e dis e fis g8 a16 b \lh cis,16 d e4 fis16 e | d8 fis \rh b a g4. \lh fis16 e |
  \rh a8 g fis8 8~8 gis16 ais b8 cis16 b | cis b ais b cis8 b16 a b8 4 8~ | 8 a g fis e d16 e fis4 | % 5a
  fis8. 16 8 8 gis d(cis) gis' | a gis ais cis, d2 | eis8 gis cis,4 <cis a'>8 dis e cis |
  s2.. \once\hideNotes cis'8~ | 8 b a gis fis4 <gis dis'>~ | 8 gis cis(b) a2~ | % 6a
  a8 dis, gis(fis) e2~ | 8 dis e cis s2 | gis'8(bis cis) a e fis16 e dis8 e |
  s2 e8 <cis' e> <bis dis>4 | <gis cis> r8 b ais r fis4 | <fis cis'>8 b16 cis d4~8 fis, eis <b' cis> | % 7a
  <a cis>4 r8 cis bis r gis4 | <gis d'>8 cis16 d e4~8 g,(fis) e' | s1 |
  s1 | a,8 eis(fis) a b d(cis) b | a4.(b16 cis) b4.(cis16 d) | % 8a
  cis4. d16 e d4 8 cis | b4 cis8 b a gis16 fis cis'4~ | 8 fis, b(a) gis8 4 eis8 |
  <cis gis'>8 cis fis(e) d s4. | s1*2 | % 9a
  s2 s8 r16 fis16[8 8] | gis8 \lh d cis \rh g' a \lh d,(cis) \rh ais' | b16(a g8)~16 fis(eis fis) eis8 8 fis <gis b cis> |
  <a cis>8 cis bis <gis bis> <gis cis> b ais <fis ais> | % 10a
  <fis b>8 a gis8 8 a8. 16 8 <a cis> |
  fis'8 d b s e d cis s |
  d16(cis b8)~16(a gis a) g8 a b gis | s1*2 | % 10b
  b8 d <e g> <d fis> <cis e> d16 e fis4 | % 10c
  \vf b,2 \vt 8 a g fis | s2 <fis b>4. eis16 fis |
  d4 <cis gis'> <cis fis>8 b' a <fis ais> | <fis b> b16 ais b8 <gis b> s2 | % 10d
  a8 r r <fis a> <e gis> a b <e, gis> |
  <e a>8 a4 <e g>8 fis g a <d, fis> | <d g>4 r8 b' s4. <ais cis>8 | % 10e
  <fis b>8 <b dis>4 8 4 s |
  s2 fis8. 16 8 <fis a> | % 11a
  gis8 <d fis>(<cis eis>) <eis gis> cis d(<cis e>) cis |
  d2~ \ov <d b'>8 <fis b d>(<eis gis cis>) <eis gis b> |
  \vt <cis fis>8 r r d g cis, d gis | a e b' cis16 b ais8 d, cis ais' | % 11b
  b8 a gis fis eis fis gis fis16 eis |
  fis8 <cis eis> fis e dis e fis e16 dis | e8. 16 8 8 fis c'(b) fis | % 12a
  s2 e8 d c a~ |
  \ov <a dis>8 <dis c'>(<e b'>) <fis a> \vt s4 gis8(a) | % 12b
  b8 fis e gis a s cis(b) | ais gis fis cis' b cis d fis, |
  b8. 16 8 8 cis g(fis) <ais cis> | s2 g | cis,8 r fis4 8. 16 8 8 | % 13a
  s1 | b16(a g8)~16 fis eis fis eis8 d'(cis b) | % 13b
  a8 gis16 fis  cis'4~8 fis, b(a) |
  gis8 4.~8 cis, fis e | s1 | s2 cis4 d8 cis~ | % 14a
  \ov <cis eis gis b>8 <eis gis b d>(<fis a cis> <gis b>) s8 \vt <fis a> <eis gis> s | % 14b
  <cis fis>4 r8 <e a> <dis fis> s4 <a' b>8 |
  <g b>4 r8 <b e> <ais cis> r8 r <fis cis'> |
  <fis cis'>8 b16 cis r8 <fis, b> <eis gis> fis(eis) <b' cis> | % 15a
  <a cis>4 r8 e' dis r r <b dis> | s1 |
  s1*2 | cis8 fis, b <g b>8 4 <g ais>8 ais | % 15b
  b4. 8 8 a g <b fis'> | <cis e> cis4 <ais cis>8~<fis cis'> fis b(a) | % 16a
  g2~8 cis, fis(e) |
  d2~8 <cis g'> <d fis> d | s1 | s8 e16 d cis8 d s2 | d8 g cis, fis s2 | % 16b
}

pianoRHthree = \relative {
  \global \vth
  s2 b'8(ais) s4 | a8(c4) s8 fis8(e) s4 | g8(fis4) s8 s2 |
  s1*3 |
  s1*3 | % 2a
  \vt \hideNotes s4 cis4_~8  s4. \unHideNotes | s1*3 |
  s1*3 |
  s1 | s4 \vf fis8(e) s2 | s1 |
  s1*2 | s4 \vo b~ \vt <g b>8 b ais4 |
  s1 | s4. b16 cis s2 | s4. ais16 b s2 |
  s1*13 | % 3
  s1*6 |
  s1*6 | % 5
  s1*6 |
  s1*6 | % 7
  s1*6 |
  s1*6 | % 9
  s1*2 | \vf b8 \lh fis(e) \rh \vf b' cis \lh fis,(e) \rh \vf cis' | % 10a
  s1*3 |
  s1 | \vt fis8 e dis fis s2 | s2.. \vf a,8 |
  s1*3 |
  s1*3 |
  s2 \vth \tiny b4. \normalsize s8 | s1*5 | % 11
  s1*6 |
  s1*6 | % 13
  s1*6 |
  s1*6 | % 15
  s1*7 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*3 | s1\p | s |
  s1*15 | s1\f | s1*3 | % 2
  s1*2 | s1\dim | s | s\p | s1*8 |
  s1*6 | % 4
  s1 | s8 s2..\cresc | s1 | s\f | s | s2 s\f |
  s1*6 | % 6
  s1 | s\p | s1*4 |
  s1*2 | s1\cresc | s1*3 | % 8
  s1\f | s | s4. s8\dim s2 | s s\p | s1*2 |
  s1*6 | s1\p | s1*8 | % 10
  s1*6 |
  s1*6 | % 12
  s1 | s\cresc | s1*3 | s1\f |
  s1*3 | s8 s2..\dim | s1\p | s | % 14
  s1*2 | s1\cresc | s1*2 | s1\f |
  s1*7 |
}

pianoLHone = \relative {
  \global
  <b,, b'>2 <cis cis'>4 r | <dis dis'>2 <e e'>4 r | <ais ais'>2 <b b'>4 r8 <a a'> |
  <g g'>2 <fis fis'> \sectionFermataDown | <b fis'>4 \vo b'2 ais4 | % 1b
  b2~8 e~16 d(cis b) |
  cis8 s4 ais8 <fis b> gis a fis | % 2a
  s2 \crossStaff {s8 d'(cis) s} |
  \ov d,8 b b' cis d4 eis, |
  fis8 gis a fis b a gis fis | \vo s4 cis'( \rh <cis) gis'>8 cis fis(e) | % 2b
  \lh s1 | s2 a,8 b16 cis d8 cis |
  \vo b8 gis a b s2 | \ov fis,8 fis'4 g16 a s8 \vo \crossStaff {e' dis} s | \ov e,4. d16 e fis4 \vth 8 ais |
  \vo b4 s8 \ov a,16 b cis4 <cis, cis'> | % 2d
  fis4. g16 a b4 <b b'> | <e, e'> r8 q <d d'>4 r8 <cis cis'> |
  <fis fis'>4 r8 <b, b'> <e e'>4 r8 <a, a'> | % 2e
  <d d'>4 r8 <g g'> <cis, cis'>4 r8 <fis fis'> |
  <b, b'>8. 16 8 8 <cis cis'> <g g'>(<fis fis'>) <cis' cis'> |
  <d d'>8 <g, g'>(<fis fis'>) <dis' dis'> <e e'>16 <d d'> <c c'>8~16 <b b'> <ais ais'> <b b'> | % 2f
  <ais ais'>8 <gis gis'> <ais ais'> <fis fis'> <b b'> <cis cis'> <d d'> <b b'> |
  <e e'>8 <fis fis'> <g g'> <e e'> <ais ais'> <gis gis'> <ais ais'> <fis fis'> |
  <b b'>8 <a a'> <g g'> <fis fis'> <e e'>4 <fis fis'> | % 3a
  <g g'>4 <fis fis'>8 <e e'> <d d'> <cis cis'> <d d'> <e e'> |
  <fis fis'>2. 4~ | 8 <e e'> <fis fis'> <fis, fis'> <b b'>2~ |
  q4 g' e fis | b a' g8 e fis g | fis e d cis b4 a | % 3b
  b4 cis fis, fis' | b,8 cis d b cis4 cis, | fis4. g16 a b4 b' |
  e,4. fis16 g cis,4 fis | b, \vt r8 b' e4 fis | b,4 r8 b e, fis g e |
  \ov fis4. gis16 ais b8 cis d cis | b a16 b cis4 fis,8 gis ais fis | b4. a8 gis4 cis, | % 4a
  fis4. g16 a b8 a16 g a8 b | e,4. fis16 g \vt a8 g16 fis g8 a | d, d'4 cis8 b4 cis8 d16 e |
  \ov fis4 fis, <b,, b'>8. 16 8 8 | % 5a
  <cis cis'>8 <g g'>(<fis fis'>) <cis' cis'> <d d'> <fis, fis'>(<e e'>) <dis' dis'> |
  <e e'>16 <d d'> <c c'>8~16 <b b'>(<ais ais'> <b b'>) <a a'>8 <g' g'>(<fis fis'> <e e'>) |
  <d d'>8 <cis cis'>16 <b b'> <fis' fis'>2 <eis eis'>4 | % 5b
  <fis fis'>4 <e e'> <d d'>8 <b b'> <cis cis'> <d d'> |
  <cis cis'>8 <b b'> <a a'> <gis gis'> <fis fis'>4 <e e'> |
  <fis fis'>4 <gis gis'> <cis, cis'> <b' b'> | % 6a
  <a a'>8 <fis fis'> <fis' fis'> <gis gis'> <a a'>4 <bis, bis'> |
  <cis cis'>8 <dis dis'> <e e'> <cis cis'> <fis fis'> <e e'> <dis dis'> <cis cis'> |
  <bis bis'>8 <ais ais'> <bis bis'> <g g'> <cis cis'> <b b'> <a a'> <g g'> | % 6b
  <fis fis'>4 <gis gis'> <a a'>8 <a' a'> <gis gis'> <fis fis'> |
  <e e'>8 <dis dis'> <e e'> <fis fis'> <gis gis'>2 |
  q2~8 <fis fis'> <gis gis'> <gis, gis'> | % 7a
  <cis cis'>4. <d d'>16 <e e'> <fis fis'>4 <fis, fis'> |
  <b b'>4. <a a'>16 <b b'> <cis cis'>4 <cis, cis'> |
  <fis fis'>4. <e e'>16 <fis fis'> <gis gis'>4 <gis' gis'> | % 7b
  <cis, cis'>4. <d d'>16 <e e'> <fis fis'>4 <fis, fis'> |
  <b b'>4 r8 <b' b'> <a a'>4 r8 <gis gis'> |
  cis4 r8 <fis,, fis'> <b b'>4 r8 <e, e'> | % 8a
  <a a'>4 r8 <d d'> <gis, gis'>4 r8 <cis cis'> |
  <fis, fis'>8. <fis' fis'>16 8 8 <gis gis'> <d d'>(<cis cis'>) <gis' gis'> |
  <a a'>8 <d, d'>(<cis cis'>) <ais' ais'> <b b'>16(<a a'> <g g'>8)~16 <fis fis'>(<eis eis'> <fis fis'>) | % 8b
  <eis eis'>8 <dis dis'> <eis eis'> <cis cis'> <fis fis'> <gis gis'> <a a'> <fis fis'> |
  <b, b'>8 <cis cis'> <d d'> <b b'> <eis eis'> <dis dis'> <eis eis'> <cis cis'> |
  <fis fis'>8 <e e'> <d d'> <cis cis'> <b b'>4 <cis cis'> | % 9a
  <d d'>4 <cis cis'>8 <b b'> <a a'> <gis gis'> <a a'> <b b'> |
  <cis cis'>2. 4~ |
  q8 <b b'> <cis cis'> <cis, cis'> <fis fis'> a'' d cis | % 9b
  \vt b8 a16 b cis8 cis, fis gis ais fis |
  \ov b,8 b' a gis cis4 r8 cis, |
  d8 a'' dis, gis,, cis d' cis fis,, | % 10a
  b8 c' b <e, e'> a cis fis e |
  \vt d8 b e e, fis b cis a |
  \ov d8 cis d b e, <fis fis'>(<gis e'> <e d'>) | % 10b
  <a cis>4 r8 b <e, b'>4 r8 a |
  <d, a'>4 r8 <g b> <cis, gis'>4 r8 <fis, fis'> |
  <b, b'>8. 16 8 8 <cis cis'> <g g'>(<fis fis'>) <cis' cis'> | % 10c
  <d d'>8 <g, g'>(<fis fis'>) <dis' dis'> <e e'>16(<d d'> <c c'>8)~16 <b b'>(<ais ais'> <b b'>) |
  <ais ais'>8 <g' g'>(<fis fis'> <e e'>) <d d'> <cis cis'>16 <b b'> <fis' fis'>4~ |
  q4 <eis eis'> <fis fis'> r8 <e e'> | % 10d
  <d d'>8 <cis cis'> <d d'> <b b'> <cis cis'>4 <cis, cis'> |
  <fis fis'>4 r8 <b b'> <e e'>4 <e, e'> |
  <a a'>4 r8 q <d d'>4 r8 q | % 10e
  <g g'>8 <fis fis'> <e e'> <d d'> <e e'>4 <fis fis'> |
  <b, b'>4 <a a'> <g g'>8 <e' e'>(<d d'> <cis cis'>) |
  <fis fis'>8 <e e'> <d d'> <cis cis'> <b b'> <cis cis'> <d d'> <cis cis'> | % 11a
  <b b'>8 <a a'>16 <b b'> <cis cis'>8 <cis, cis'> <fis fis'>4 r |
  r8 <b' b'> <a a'> <fis fis'> <gis gis'>4 <cis, cis'> |
  <fis fis'>4 <f f'> <e e'> <e, e'> | % 11b
  <a a'>8 <a' a'> <g g'> <e e'> <fis fis'>4 <fis, fis'> |
  <b b'>8 <fis' fis'> <b b'>4~8 <fis fis'>(<eis eis'>) <b' b'> |
  <a a'>8 <gis gis'>16 <fis fis'> <a a'>4~8 <e e'>(<dis dis'>) <a' a'> | % 12a
  <g g'>16(<fis fis'>) <e e'>(<d d'>) <c c'>8 <b b'> <a a'> < g g'>16 <a a'> <b b'>8 8 |
  <e, e'>8 <e' e'>4 <d d'>8 <c c'> <b b'> <c c'>4 |
  <b b'>4 <cis cis'>8 <dis dis'> <e e'>4 r8 <fis fis'> | % 12b
  <gis gis'>8 <a a'> <b b'> <e, e'> <a a'>4 r8 <gis gis'> |
  <ais ais'>8 <b b'> <cis cis'> <fis, fis'> <b b'>4. <a a'>8 |
  <g g'>2 <fis fis'>4 <fis, fis'> | % 13a
  <b b'>8 <b' b'>4 <a a'>8 <g g'> <e e'> <fis fis'> <g g'> |
  <fis fis'>8 <e e'> <d d'> <cis cis'> <b b'>4 <a a'> |
  <b b'>4 <cis cis'> <fis, fis'> <e' e'> | % 13b
  <d d'>8 <b b'>4 <cis cis'>8 <d d'>4 <eis, eis'> |
  <fis fis'>8 <gis gis'> <a a'> <fis fis'> <b b'> <a a'> <gis gis'> <fis fis'> |
  <eis' eis'>8 <dis dis'> <eis eis'> <cis cis'> <fis fis'> <e e'> <d d'> <cis cis'> | % 14a
  <b b'>4 <cis cis'> <d d'> <cis cis'>8 <b b'> |
  <a a'>8 <gis gis'> <a a'> <b b'> <cis cis'>2 |
  q2~8 <b b'> <cis cis'> <cis, cis'> | % 14b
  <fis fis'>8 <fis ' fis'>4 <g g'>16 <a a'> <b b'>4 <b, b'> |
  <e e'>4. <d d'>16 <e e'> <fis fis'>4 <fis, fis'> |
  <b b'>4. <a a'>16 <b b'> <cis cis'>4 <cis, cis'> | % 15a
  <fis fis'>8 <fis' fis'>4 <g g'>16 <a a'> <b b'>4 <b, b'> |
  <e, e'>4 r8 <e' e'> <d d'>4 r8 <cis cis'> |
  <fis, fis'>4 r8 <b b'> <e, e'>4 r8 <a a'> | % 15b
  <d, d'>4 r8 <g g'> <cis, cis'>4 r8 <fis fis'> |
  <b b'>8. 16 8 8 <cis cis'> <g g'>(<fis fis'>) <cis' cis'> |
  <d d'>8 <g, g'>(<fis fis'>) <dis' dis'> <e e'>16(<d d'> <c c'>8)~16 <b b'> <ais ais'> <b b'> | % 16a
  <ais ais'>8 <gis gis'> <ais ais'> <fis fis'> <b b'> <cis cis'> <d d'> <b b'> |
  <e e'>8 <fis fis'> <g g'> <e e'> <ais ais'> <gis gis'> <ais ais'> <fis fis'> |
  <b b'>8 <a a'> <g g'> <fis fis'> <e e'>4 <fis fis'> | % 16b
  <g g'>4 <fis fis'>8 <e e'> <d d'> <cis cis'> <d d'> <e e'> |
  <fis, fis'>2. 4~ |
  q8 <e e'> <fis fis'>4 <b b'>2\fermata |
}

pianoLHtwo = \relative {
  \global \vt
  s1*4 | s4 d e fis | b, a' g8 e fis g |
  fis8 e d cis b4 a | b cis fis e | s1 | % 2a
  s1 | eis8 dis eis cis <<{fis e d cis} \new Voice {\vo s4 b'8 cis}>> \vt | % 2b
  b,4 cis d \ov cis8 b | a8 gis a b \vt cis2 |
  cis2~ \ov 8 b cis cis, | \vt s2 b''4 4 | s2. \vt fis4 | % 2c
  s1*9 |
  s1*3 | % 3a
  s1*98
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
            \addlyrics \wordsSopII
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
            \new Voice \pianoRHthree
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
    output-suffix = "single-sop1"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
            \new Voice \pianoRHthree
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
    output-suffix = "single-sop2"
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
            \addlyrics \wordsSopII
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
            \new Voice \pianoRHthree
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
            \new Voice \pianoRHthree
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
            \new Voice \pianoRHthree
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
            \new Voice \pianoRHthree
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
            \addlyrics \wordsSopII
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
            \new Voice \pianoRHthree
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
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
            \new Voice \pianoRHthree
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
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
            \addlyrics \wordsSopII
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
            \new Voice \pianoRHthree
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
            \new Voice \pianoRHthree
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
            \new Voice \pianoRHthree
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano1"} \teeny \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "soprano2"} \teeny \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
            \addlyrics {\tiny \wordsSopII}
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
            \new Voice \pianoRHthree
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
    output-suffix = "midi-sop1"
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
            \addlyrics \wordsSopIMidi
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
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
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
            \addlyrics \wordsSopIIMidi
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
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
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
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
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
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = "Soprano I"
            shortInstrumentName = "S1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano1" \sopranoI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = "Soprano II"
            shortInstrumentName = "S2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice = "soprano2" \sopranoII
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
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
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
