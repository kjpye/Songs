\version "2.25.27"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 19. Confiteor (chorus)"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
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
  \key fis \minor
  \time 2/2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120 s1*120
  \tempo "Adagio." 4=100 s1*26
  \tempo "Vivace ed allegro." 4=110
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "113a" } s1*7
  \textMark \markup { \box "113b" } s1*7
  \textMark \markup { \box "113c" } s1*2
  \mark \markup\circle\bold A       s1*5
  \textMark \markup { \box "114a" } s1*7
  \textMark \markup { \box "114b" } s1*3
  \mark \markup\circle\bold B       s1*4
  \textMark \markup { \box "114c" } s1*7
  \textMark \markup { \box "115a" } s1
  \mark \markup\circle\bold C       s1*6
  \textMark \markup { \box "115b" } s1*7
  \textMark \markup { \box "115c" } s1*2
  \mark \markup\circle\bold D       s1*5
  \textMark \markup { \box "116a" } s1*6
  \textMark \markup { \box "116b" } s1*3
  \mark \markup\circle\bold E       s1*3
  \textMark \markup { \box "116c" } s1*7
  \textMark \markup { \box "117a" } s1*5
  \mark \markup\circle\bold F       s1
  \textMark \markup { \box "117b" } s1*6
  \textMark \markup { \box "117c" } s1*7
  \mark \markup\circle\bold G
  \textMark \markup { \box "118a" } s1*7
  \textMark \markup { \box "118b" } s1*5
  \mark \markup\circle\bold H       s1*2
  \textMark \markup { \box "118c" } s1*7
  \textMark \markup { \box "119a" } s1*7
  \textMark \markup { \box "119b" } s1*7
  \mark \markup\circle\bold I
  \textMark \markup { \box "119c" } s1*7
  \textMark \markup { \box "120a" } s1*7
  \textMark \markup { \box "120b" } s1*6
  \textMark \markup { \box "120c" } s1*6
  \mark \markup\circle\bold K       s1
  \textMark \markup { \box "121a" } s1*6
  \textMark \markup { \box "121b" } s1*6
  \textMark \markup { \box "121c" } s1*6
  \textMark \markup { \box "122a" } s1*5
  \mark \markup\circle\bold L       s1
  \textMark \markup { \box "122b" } s1*6
  \textMark \markup { \box "122c" } s1*5
  \textMark \markup { \box "123a" } s1*6
  \textMark \markup { \box "123b" } s1*2
  \mark \markup\circle\bold M       s1*4
  \textMark \markup { \box "123c" } s1*6
  \textMark \markup { \box "124a" } s1*6
  \textMark \markup { \box "124b" } s1*6
  \textMark \markup { \box "124c" } s1*4
  \mark \markup\circle\bold N       s1*3
  \textMark \markup { \box "125a" } s1*5
  \textMark \markup { \box "125b" } s1*5
  \textMark \markup { \box "125c" } s1*6
}

dynamicsSopI = {
  \override DynamicTextSpanner.style = #'none
}

sopranoI = \relative {
  \global
  r2 cis'' | d2. 4 | cis fis, fis'2~ | 2 eis | fis fis,~ | 4(gis) a fis | b1 |
  a2 fis' | e4(d) e(cis) d1 | cis2 2~ | 2 b4 a | g a b2~ | 2 a4 cis |
  fis1 | eis2 r | R1*5 |
  r2 e4 e | e a, d2~ | 4 cis8(b) cis4 a | b1 | a4 cis(d) fis, | g b a g | fis(ais b) d | % 114a
  cis1 | b2 r | r cis | d2. 4 | cis fis, fis'2~ | 2 eis | fis2. 4 |
  e4 cis d2~ | 4 cis8(bis) cis4 4 | 4 fis, b2~ | 4 a8(gis) a4 fis | gis1~ | 2(fis~ | 4) e8(dis) e4 cis |
  dis1 | cis2 r | r cis'4 4 | 4 fis, b2~ | 4 a8(gis) a4 e | fis2 4 d' | e2. 4 | % 115a
  d2 r | r a | b2. 4 | a d, d'2~ | 2 cis | d a~ | 4(b) cis a |
  d1 | cis2 r | R1 | r2 e | fis2. 4 | e gis fis e | dis b e dis |
  cis2 dis | e4(fis gis2~ | 4 fis8 e dis4) cis | bis gis cis2~ | 2(bis) | cis2 4 4 | % 116a
  cis4 fis, b2~ | 4 a8(gis) a4 fis | gis(cis2 bis4) | cis2 fis4 4 | 4 b, e2~ | 4 d8(cis) d4 b |
  cis4(d2 cis4)~ | 4 b fis'2~ | 4 e d(cis~ | 4 d8 cis b a b4) | e,2 r | r r4 b' | cis2. 4 |
  b4 fis e'2~ | 2 d | cis2 2 | b2. gis4 | a fis r2 | e'4 4 4 a, | % 117a
  d2.(cis8 b | cis4) fis, fis'2~ | 4 eis8(dis) eis2 | fis1 | r2 d4 d | d gis, cis2~ |
  cis4 b8(a) b4 gis | a1~ | 2 gis | r2 b | cis2. 4 | b e, e'2~ | 2 cis |
  ais2 r | R1 | r2 a4 a | a d, g2~ | 4 fis8(e) fis4 d | g2(fis) | e r | % 118a
  R1 | r2 c' | d2. c4 |b  e, e'2~ | 2 dis | e r | r d |
  d2 cis | c b4(a) | b a g2~ | 4 fis e2~ | 4 fis g a | bes1~ | 1 |
  a2 d~ | d ees | 1~ | 1 | d2 e | f1~ | 2 e4(d) | % 119a
  cis4 a b cis | d a f d | gis1( | g | fis | f~ | 2 e4 d) |
  e2 a4(bes) | c1( | bis) | cis2 cis,4 b' | a1~ | 4 4 bes2~ | 4 a a2~ | \section \key b \minor
  a4(f cis) d | gis1 | a2 4 4 | 2 fis4 d | d'1~ | 2 a4 fis | fis'1~ | % 120a
  fis4 4 4 4 | 4(e8 fis g4) fis8(e) | fis4 a fis d | e1 | d2 r | R1 |
  R1*7 |
  R1*3 | r2 a | e'1~ | 4 d4 2~ | % 121a
  d4 d cis4 4 | d(fis,8 a d4 a8 d | fis4) d a a | 1~ | 1 | 2 r |
  a4 a a a | cis(a8 cis e4 cis8 e | g4) g a8(g) fis(e) | fis4(d) d,2 | a'4 4 2~ | 2 fis4 d |
  d'2 a4 fis | fis'4 4 4 4 | 4(e8 fis g4) fis8(e) | fis4 a fis d | e1 | d2 r | % 122a
  r2 b4 e | cis a4 8(b gis a | b cis a b cis d b cis | d e cis d b4) b | cis2 d | e1~ |
  e4 e d d | cis8(d cis d e fis d e | fis4) b, e2~ | 4 a, b gis | a(b8 cis d2) |
  cis2 r | R1*5 | % 123a
  R1*6 |
  r2 b | e1~ | 4(d) cis fis | b,(d) cis(b) | a1~ | 2 e |
  e1 | r4 gis b e | cis(a8 cis e4 cis8 e | g4 fis8 g a g) fis e | fis1~ | 1~ | % 124a
  fis4 d b8(cis d b | e1~ | 8 d cis b a b cis a | d1) | d4 b g' g | r a, g' g |
  g4(cis,8 e g2~ | 4 cis,8 e g4) g | fis2 r4 fis8(g) | fis4 e8(d) e4 d8 cis | d4 4 r2 | R1*2 |
  R1 | r2 cis8(d b cis d e cis d e fis d e | fis g e fis d4) d | e2(fis | % 125a
  g4) g, g'2~ | 2 fis | e4 a, a'2~ | 2 g | fis4 d a8(b g a |
  b8 cis a b cis d b cis | d e cis d e fis d e | fis4) e8(d) fis(e d cis) | d4 a fis' d | a' d,8 e fis4(e) | d r r2^\markup{\halign #RIGHT \with-color "red" \large\bold "SIT--orchestra"} |
  \bar "|."
}

Cc   = \lyricmode { Con -- fi -- te -- or, }
cc   = \lyricmode { con -- fi -- te -- or, }
cubc = \lyricmode { con -- fi -- te -- or u -- num ba -- pti -- sma, }
c_ubc = \lyricmode { con -- fi -- te -- or __ u -- num ba -- pti -- sma, }
cubcc = \lyricmode { con -- fi -- te -- or u -- num ba -- pti -- sma con -- fi -- te -- or, }
ubc  = \lyricmode { u -- num ba -- pti -- sma, }
ub   = \lyricmode { u -- num ba -- pti -- sma }
uc   = \lyricmode { u -- num, }
cirpc    = \lyricmode { con -- fi -- te -- or in re -- mis -- si -- o -- nem pec -- ca -- to -- rum, }
irpc = \lyricmode { in re -- mis -- si -- o -- nem pec -- ca -- to -- rum, }
irpp = \lyricmode { in re -- mis -- si -- o -- nem pec -- ca -- to -- rum. }
i_rpc = \lyricmode { in __ re -- mis -- si -- o -- nem pec -- ca -- to -- rum, }
irc      = \lyricmode { in re -- mis -- si -- o -- nem, }
cubirpc = \lyricmode { con -- fi -- te -- or u -- num ba -- pti -- sma in re -- mis -- si -- o -- nem pec -- ca -- to -- rum, }
cubirpc = \lyricmode { con -- fi -- te -- or u -- num ba -- pti -- sma in re -- mis -- si -- o -- nem pec -- ca -- to -- rum, }
c_ub_ir_pc = \lyricmode { con -- fi -- te -- or u -- num ba -- pti -- sma in re -- mis -- si -- o -- nem pec -- ca -- to -- rum, }
cubi_rpp = \lyricmode { con -- fi -- te -- or u -- num ba -- pti -- sma in __ re -- mis -- si -- o -- nem pec -- ca -- to -- rum. }
cubirpp  = \lyricmode { con -- fi -- te -- or u -- num ba -- pti -- sma in re -- mis -- si -- o -- nem pec -- ca -- to -- rum. }
ubirpc  = \lyricmode { u -- num ba -- pti -- sma in re -- mis -- si -- o -- nem pec -- ca -- to -- rum, }
ubirc   = \lyricmode { u -- num ba -- pti -- sma in re -- mis -- si -- o -- nem, }
i_pc    = \lyricmode { in __ pec -- ca -- to -- rum, }
pc      = \lyricmode { pec -- ca -- to -- rum, }
E_ec    = \lyricmode { Et __ ex -- pe -- cto, }
Ermc    = \lyricmode { Ex -- pe -- cto re -- sur -- re -- cti -- o -- nem mor -- tu -- o -- rum, }
ermc    = \lyricmode { ex -- pe -- cto re -- sur -- re -- cti -- o -- nem mor -- tu -- o -- rum, }
ermp    = \lyricmode { ex -- pe -- cto re -- sur -- re -- cti -- o -- nem mor -- tu -- o -- rum. }
erc    = \lyricmode { ex -- pe -- cto re -- sur -- re -- cti -- o -- nem, }
rc      = \lyricmode { re -- sur -- re -- cti -- o -- nem, }
rmc     = \lyricmode { re -- sur -- re -- cti -- o -- nem mor -- tu -- o -- rum, }
rmp     = \lyricmode { re -- sur -- re -- cti -- o -- nem mor -- tu -- o -- rum. }
mc      = \lyricmode { mor -- tu -- o -- rum, }
Ec      = \lyricmode { Ex -- pe -- cto, }
ec      = \lyricmode { ex -- pe -- cto, }
eec     = \lyricmode { et ex -- pe -- cto, }
e_ec    = \lyricmode { et __ ex -- pe -- cto, }
Evvsc   = \lyricmode { Et vi -- tam ven -- tu -- ri sæ -- cu -- li, }
Evv_sc  = \lyricmode { Et vi -- tam ven -- tu -- ri __ sæ -- cu -- li, }
evvsc   = \lyricmode { et vi -- tam ven -- tu -- ri sæ -- cu -- li, }
e_vvsc  = \lyricmode { et __ vi -- tam ven -- tu -- ri sæ -- cu -- li, }
ev_vsc  = \lyricmode { et vi -- tam __ ven -- tu -- ri sæ -- cu -- li, }
ex_vvsc = \lyricmode { ex -- pe -- cto __ vi -- tam ven -- tu -- ri sæ -- cu -- li, }
exv_vsc = \lyricmode { ex -- pe -- cto vi -- tam __ ven -- tu -- ri sæ -- cu -- li, }
vvsc    = \lyricmode { vi -- tam ven -- tu -- ri sæ -- cu -- li, }
vsc     = \lyricmode { ven -- tu -- ri sæ -- cu -- li, }
v_sc    = \lyricmode { ven -- tu -- ri __ sæ -- cu -- li, }
evc     = \lyricmode { ex -- pe -- cto vi -- tam, }
Ac      = \lyricmode { A -- men, }
Ap      = \lyricmode { A -- men. }
eeermp  = \lyricmode { et ex -- pe -- cto ex -- pe -- cto re -- sur -- re -- cti -- o -- nem mor -- tu -- o -- rum. }

wordsSopI = \lyricmode {
  \Cc \cubc \ubc \ubc \ub
  \irpc \i_rpc \cc \cubirpc \pc % 114
  \irpc \cc \cc \cubc \cubirpc
  \irpc \irpc \pc \cc
  \cubirpc \irpc \cc \cc % 117
  \irpc \cc \cubirpp
  \E_ec \ermc \ermc
  \eec \ec \ermp % 120
  \Ermc \rmc \eec \ec
  \ermc \rmc \rmp
  \Evv_sc % 123
  \vsc \Ac \Ac \evvsc \vsc \Ac
  \repeat unfold 8 \Ac \vsc \Ap
}

MCc      = \lyricmode { Con fi te "or, " }
Mcc      = \lyricmode { con fi te "or, " }
Mcubc    = \lyricmode { con fi te "or " u "num " ba pti "sma, " }
Mcubcc   = \lyricmode { con fi te "or " u 'num " ba pti 'sma " con fi te "or, " }
Mubc     = \lyricmode { u "num " ba pti "sma, " }
Mub      = \lyricmode { u "num " ba pti "sma " }
Muc      = \lyricmode { u "num " }
Mcirpc   = \lyricmode { con fi te "or " "in " re mis si o "nem " pec ca to "rum, " }
Mirpc    = \lyricmode { "in " re mis si o "nem " pec ca to "rum, " }
Mirpp    = \lyricmode { "in " re mis si o "nem " pec ca to "rum. " }
Mirc     = \lyricmode { "in " re mis si o "nem, " }
Mcubirpc = \lyricmode { con fi te "or " u "num " ba pti "sma " "in " re mis si o "nem " pec ca to "rum, " }
Mcubirpp  = \lyricmode { con fi te "or " u "num " ba pti "sma " "in " re mis si o "nem " pec ca to "rum. " }
Mubirpc  = \lyricmode { u "num " ba pti "sma " "in " re mis si o "nem " pec ca to "rum, " }
Mubirc   = \lyricmode { u "num " ba pti "sma " "in " re mis si o "nem, " }
Mipc     = \lyricmode { "in " pec ca to "rum, " }
Mpc      = \lyricmode { pec ca to "rum, " }
MEec     = \lyricmode { "Et " ex pe "cto, " }
MErmc    = \lyricmode { Ex pe "cto " re sur re cti o "nem " mor tu o "rum, " }
Mermc    = \lyricmode { ex pe "cto " re sur re cti o "nem " mor tu o "rum, " }
Mermp    = \lyricmode { ex pe "cto " re sur re cti o "nem " mor tu o "rum. " }
Merc     = \lyricmode { ex pe "cto " re sur re cti o "nem, " }
Mrc      = \lyricmode { re sur re cti o "nem, " }
Mrmc     = \lyricmode { re sur re cti o "nem " mor tu o "rum, " }
Mrmp     = \lyricmode { re sur re cti o "nem " mor tu o "rum. " }
Mmc      = \lyricmode { mor tu o "rum, " }
MEc      = \lyricmode { Ex pe "cto, " }
Mec      = \lyricmode { ex pe "cto, " }
Meec     = \lyricmode { "et " ex pe "cto, " }
MEvvsc   = \lyricmode { "Et " vi "tam " ven tu "ri " sæ cu "li, " }
Mevvsc   = \lyricmode { "et " vi "tam " ven tu "ri " sæ cu "li, " }
Mexvvsc  = \lyricmode { ex pe "cto " vi "tam " ven tu "ri " sæ cu "li, " }
Mvvsc    = \lyricmode { vi "tam " ven tu "ri " sæ cu "li, " }
Mvsc     = \lyricmode { ven tu "ri " sæ cu "li, " }
Mevc     = \lyricmode { ex pe "cto " vi "tam, " }
MAc      = \lyricmode { A "men, " }
MAp      = \lyricmode { A "men. " }
Meeermp  = \lyricmode { "et " ex pe "cto " ex pe "cto " re sur re cti o "nem " mor tu o "rum. " }

wordsSopIMidi = \lyricmode {
  \MCc \Mcubc \Mubc \Mubc \Mub
  \Mirpc \Mirpc \Mcc \Mcubirpc \Mpc % 114
  \Mirpc \Mcc \Mcc \Mcubc \Mcubirpc
  \Mirpc \Mirpc \Mpc \Mcc
  \Mcubirpc \Mirpc \Mcc \Mcc % 117
  \Mirpc \Mcc \Mcubirpp
  \MEec \Mermc \Mermc
  \Meec \Mec \Mermp % 120
  \MErmc \Mrmc \Meec \Mec
  \Mermc \Mrmc \Mrmp
  \MEvvsc % 123
  \Mvsc \MAc \MAc \Mevvsc \Mvsc \MAc
  \repeat unfold 8 \MAc \Mvsc \MAp
}

dynamicsSopII = {
  \override DynamicTextSpanner.style = #'none
}

sopranoII = \relative {
  \global
  R1 | r2 fis' | a2. 4 | gis cis, cis'2~ | 2 b | cis cis,~ | 4(dis) eis cis |
  fis4(gis8 a b2) | e, cis | gis'2. b4 | a2 2~ | 2 gis4 fis | eis fis gis2 | cis, cis' |
  cis2(bis) | cis r | R1*3 | r2 b4 b | b e, a2~ |
  a4 gis8(fis) gis4 e | fis1 | e4 gis(a) e | fis a g fis | e(a2) d4 | 2(cis~ | 2 b~ | % 114a
  b2 a~ | a) g4 r | r2 cis4 4 | 4 fis, b2~ | 4 a8(gis) a4 fis | gis1 | fis2 r |
  R1 | r2 gis | a2. 4 | gis cis, cis'2~ | 2 bis | cis4 e dis cis | bis cis r e |
  fis2. 4 | e cis8(dis) e4 fis | gis2 gis, | r2 r4 b | cis2. b4 | a cis b a | gis2 e | % 115a
  r2 r4 gis | a2. g4 | fis a g fis | e d8(cis) d4 fis | a2 e | r a | cis2. 4 |
  b4 e, e'2~ | e dis | e cis | d2. 4 | cis2 b~ | b a4 cis | fis,2 gis |
  e2 fis | gis4 a b2~ | 4 a ais dis, | gis bis cis e | ais,2(gis) | 2 r | % 116a
  d'4 d d gis, | cis2. b8(a) | b4 eis, a2 | gis fis | gis2. 4 | fis2 r |
  r4 ais b cis | fis,2 b | r r4 cis | d2. 4 | cis b cis d | e2 a, | r4 e fis2~ |
  fis4 4 e cis | cis'2 b4(a) | gis2 a~ | a gis4 cis | 2(bis) | cis gis | % 117a
  a2. 4 | gis cis2 d8(e) | d4 cis8(b) cis2~ | 4 cis, fis2~ | 4(b8 a gis4) fis | gis e r2 |
  r2 b' | cis2. 4 | b e, e'2~ | 2 d | cis e,~ | 4(fis) gis e | a2(e) |
  cis2 cis' | d2. 4 | cis fis, fis'2~ | 2(e)~ | 4 a, d2 | r fis4 4 | 4 b, e2~ | % 118a
  e4 d8(cis) d4 b | cis2(c) | b4 cis d2~ | 2 cis4(b) ais2 a | gis g | fis(f) |
  e2 r | r d'~ | 4 c b2~ | 4 a g2~ | 4 fis e fis | g1~ | 1 |
  fis2 a~ | 2 a | bes1( | c) | d2 cis | d1~ | 4 b e2~ | % 119a
  e4 cis d e | a,2 d | d,4(e) f2 | e1~ | 4(d8 cis d2~ | 1~ | 2 cis4 b) |
  cis2 r | r dis | 1 | cis4 4 gis'2~ | 2 fis | e2. 4 | d a' d2~ \section \key b \minor |
  d4 d, e f | d1 | e2 r | a4 4 2~ | 2 fis4 d | d'1~ | 2 a4(fis) | % 120a
  d4 d'4 2~ | 4 4 2~ | 4 d, fis a | cis1 | d2 r | R1 |
  R1*7 |
  R1 | r2 a | d1~ | 2(cis) | b b | a fis | % 121a
  b4 b a a | 2.(d,8 fis | a4) a fis4 4 | e1( | cis | d2 fis~ |
  fis1) | e2 r | a4 a a a | a(d,8 fis a4 fis8 a | d4) d a2~ | 4 4 2~ |
  a2 fis4 d | d'4 2 4~ | 4 4 4 4 | d d, fis a | cis1 | d2 r | % 122a
  R1*4 | r2 fis,4 b | gis e g8(a fis g |
  a8 b gis a b cis a b | cis4) a a a | a8(b gis a b cis a b | cis d) e(cis) d4 e | a, a b2 |
  a2 r | R1*5 | % 123a
  R1*5 | r2 a |
  d1~ | 2 cis4 4 | 4(b2) a4 | a(gis8 fis) gis2 | a r | r4 cis e cis |
  b4(e,8 gis b4 gis8 b | d4 cis8 d e d) cis b | cis1~ | 1( | d1)~ | d~ | % 124a
  d4(g8 fis e4) b | c1~ | 4(fis8 e d4) a | b1~ | b | a2 r4 e |
  e'4 e r e | cis e a, e' | d2 r4 d8(cis) | d4 b b a8 a | 4 4 r2 | R1*2 |
  R1 | r2 a8(b g a | b cis a b cis d b cis | d e cis d b4) b | a1 | % 125a
  g2 e'~ | e d~ | 4 cis8(b a b g a | b cis a b cis d b cis | d4) a d2 |
  d2 cis4(a) | fis2 e4 e' | d e8(fis) g4 e | fis d d d | d4 8 8 4(cis) | d r r2 |
}

wordsSopII = \lyricmode {
  \Cc \cubc \cubc \ubirpc
  \i_rpc \irpc \cc \cubc \cubc % 114
  \cubc \cc \cubc \cc \cc \cubirpc
  \pc \irpc \cubc \cubc \cc
  \cubc \cc \irpc \cc \cubc % 117
  \cc \cc \irpc \cubi_rpp
  \E_ec \ermc \ec \ermc
  \eec \ermp % 120
  \Ec \ermc \rc \e_ec
  \ermc \rc \rmp
  \Evvsc \vsc % 123
  \Ac \Ac \Ac \evvsc \vsc \Ac
  \Ac \Ac \Ac __ \Ac \ex_vvsc \vsc \Ap
}

wordsSopIIMidi = \lyricmode {
  \MCc \Mcubc \Mcubc \Mubirpc
  \Mirpc \Mirpc \Mcc \Mcubc \Mcubc % 114
  \Mcubc \Mcc \Mcubc \Mcc \Mcc \Mcubirpc
  \Mpc \Mirpc \Mcubc \Mcubc \Mcc
  \Mcubc \Mcc \Mirpc \Mcc \Mcubc % 117
  \Mcc \Mcc \Mirpc \Mcubirpp
  \MEec \Mermc \Mec \Mermc
  \Meec \Mermp % 120
  \MEc \Mermc \Mrc \Meec
  \Mermc \Mrc \Mrmp
  \MEvvsc \Mvsc % 123
  \MAc \MAc \MAc \Mevvsc \Mvsc \MAc
  \MAc \MAc \MAc \MAc \Mexvvsc \Mvsc \MAp
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  R1*3 | r2 cis' | d2. 4 | cis fis, fis'2~ | 2 eis |
  fis2. gis4 | a(b) cis(a) | b(a gis2)~ | 2 fis~ | 2 d' | cis eis, | fis4 gis a2~ |
  a2(gis4 fis) | gis2 r | R1 | r2 fis4 4 | 4 b, e2~ | 4 dis8(cis) dis4 b | cis1 |
  b4 dis(e) b | cis e d cis | b(e2) cis4 | d2(e) | a, r4 b'~ | b g e e | fis d d fis | % 114a
  g2(fis)~ | 4 e b'2~ | 4 4 ais2 | fis r | R1 | r2 cis'4 4 | 4 fis, b2~ |
  b4 a8(gis) a4 fis | gis1 | fis4 cis fis4 4 | eis gis cis, dis | e2(dis) | cis4 4 bis cis | gis'2 2 |
  dis4 fis e dis | e8(fis) gis4 4 fis | e(dis) cis gis' | a2. 4 | gis e e gis | cis fis, b b | b e, a2~ | % 115a
  a4 gis8(fis) gis4 eis | fis2.(e4 | d) b e d | cis(b) a2 | r e' | fis2. 4 | e a, a'2~ |
  a2 gis | a4 2 4 | gis cis, fis2~ | 4 e8(d) e4 b | cis2(dis) | e r | b'4 b b e, |
  a2.(gis8 fis | e2) d | cis dis | 4 fis e cis | dis1 | cis2 a'4 4 | % 116a
  a4 b8(a) gis2~ | 4 fis8(eis) fis2~ | 4 gis8(a) dis,2 | eis r | dis(e) | fis2 2 |
  fis2 r | r fis | 2 2 | 1 | e2 r | R1 | e2 e |
  dis2 cis | fis gis | R1 | fis2 e | fis1 | e2 e | % 117a
  fis2. 4 | eis cis fis a | b1 | a2 cis4 4 | 4 fis, b2~ | 4 a8(g) a4 fis |
  gis2 2 | R1 | r2 e | fis2. 4 | e a, a'2~ | 2 gis | a g4 4 |
  g4 cis, fis2~ | 4 8(e) fis4 d | a'(b c2) | b cis4 4 | 4 fis, b2~ | 4 a8(g) a4 fis | gis2(ais) | % 118a
  b4 fis2 d4 | g2(a4 g | fis e) d2 | r e | fis2. 4 | e cis cis'4 4 | 4 fis, b2~ |
  b4 a8(gis) a4 4 | a(fis g a | d, fis b, cis8 dis | e4) dis e b | e d cis c | bes(a) g(a) | bes(g e'2) |
  a,2 fis'~ | 2 2 | ges1~ | 2.(f4) | 2 e | d4 e f d | b'2 2 | % 119a
  a2 e | f d | b b | bes4(a g) bes | a2 a | b b | a4(a'2 gis4) |
  a2 r | r fis4(g) | a(dis, gis2) | 2 r | r cis,4 d | e a, g'2~ | 4 f f e \section \key b \minor |
  d4(gis,2 a4 | f'2 e4 d) | cis2 r | R1 | r2 a'4 a | 1~ | 2 fis4 d | % 120a
  a'4 a a a | a(gis8 a b4) a8(g) | a2. d,4 | g a8(b) a2 | a r | R1 |
  R1*7 |
  r2 d, | g1~ | 2(fis) | e e~ | 4 fis g e | a2. g8(fis) | % 121a
  e2. fis8(g) | a1~ | a | 2 r | e4 e e e | fis(d8 fis a4 fis8 a |
  d4) d e8(d) cis(b) | a1~ | 2 2 | fis4 a4 2~ | 2 fis4 d | d'2 a4 fis |
  a1~ | 4 a a a | a(g8 a b4) a8(g) | a2 d, | r e4 a | fis d e8(fis d e | % 122a
  fis8 gis e fis gis a fis gis | a b gis a fis4) 4 | gis2 a | b1~ | 4 b a fis | e cis' b gis |
  fis2 b, | a1~ | 4 d b e | e e e e | e fis fis(e) |
  e2 r | R1*5 | % 123a
  R1*2 | r2 e | a1~ | 2 gis4 4 | a a e e |
  fis2 e~ | 2 4 4 | d(e2) fis4 | 4(e8 d e2~ | 4 a,8 cis e4 cis8 e | a4 gis8 a b a) gis fis |
  gis1~ | 1( | a1)~ | a~ | a~ | 2 a | % 124a
  b1~ | 4 g e8(g fis e | a1~ | 8 g fis a d, fis e d | g1) | 4 e e' e |
  r4 a, e2~ | 4 a a a | 2 r4 a8(g) | a4 g8(fis) g4 fis8 e | fis4 4 r2 | R1 | r2 d8(e cis d |
  e8 fis d e fis g e fis | g a fis g e4) e | fis2(g | a8 b g a fis4) 4 | e2(a,) | % 125a
  b2 r | R1 | r2 e8(fis d e | fis g e fis g a fis g | a4) fis r2 |
  r2 a | 1~ | 4 g8(fis) b4 a~ | a a b b | a b8 b a4(g) | fis4 r r2 |
}

wordsAlto = \lyricmode {
  \Cc \cubc __ \uc \ubirpc
  \i_rpc \i_rpc \pc \irc \pc \cubc \ubirpc % 114
  \cubirpc \pc \cc \cc \irpc \irpc
  \pc \irpc \cubirpc
  \cubirpc \cc \cirpc % 117
  \irpc \pc \ubirpc \irpp
  \E_ec \ermc \mc \mc \ermc
  \eec \ermp % 120
  \Ermc \rmc \eec \ec \erc
  \rmc \rmc \rmp
  \Evvsc \vvsc % 123
  \Ac \Ac \Ac \evvsc \vsc \Ac \Ac
  \Ac \Ac \Ac \exv_vsc \Ap
}

wordsAltoMidi = \lyricmode {
  \MCc \Mcubc \Muc \Mubirpc
  \Mirpc \Mirpc \Mpc \Mirc \Mpc \Mcubc \Mubirpc % 114
  \Mcubirpc \Mpc \Mcc \Mcc \Mirpc \Mirpc
  \Mpc \Mirpc \Mcubirpc
  \Mcubirpc \Mcc \Mcirpc % 117
  \Mirpc \Mpc \Mubirpc \Mirpp
  \MEec \Mermc \Mmc \Mmc \Mermc
  \Meec \Mermp % 120
  \MErmc \Mrmc \Meec \Mec \Merc
  \Mrmc \Mrmc \Mrmp
  \MEvvsc \Mvvsc % 123
  \MAc \MAc \MAc \Mevvsc \Mvsc \MAc \MAc
  \MAc \MAc \MAc \Mexvvsc \MAp
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  R1*4 | r2 fis | a2. 4 | gis cis, cis'2~ |
  cis2 b | cis a | gis4(a) b(gis) | a(b) cis(a) | d2 gis, | cis2 2~ | 2 fis4 cis |
  a4 fis d'2 | g, cis4 4 | 4 fis, b2~ | 4 a8(gis) a4 fis | gis1 | fis4 ais(b) fis | gis b a gis |
  fis4(b2) gis4 | a2(b) | e, r | r4 b'2 4 | cis a d2 | b4 e2 cis4 | d2.(cis8 b | % 114a
  e2. dis8 cis | fis4 b,) e d~ | d cis4 2 | b r | R1 | r2 cis | d2. 4 |
  cis4 fis, fis'2~ | 2 eis | fis4 e d b | cis(eis,) fis a | gis fis gis2 | cis, r | r gis' |
  a2. 4 | gis cis, cis'2~ | 4 bis cis e~ | e dis8 cis dis2 | e r | R1 | r2 cis | % 115a
  d2. 4 | cis fis, fis'2~ | 4 4 e2~ | 4 fis8(g) a4 fis | e1 | d2 r | R1 |
  R1 | r2 a | cis2. 4 | b e, e'2~ | 2 dis | 4 gis, cis4 4 | b dis e e |
  e4 a, dis2~ | 4 cis b a8(gis) | a4 fis r2 | r4 gis'2 e4 | dis(e fis2)~ | 2 eis | % 116a
  fis4 4 4 b, | eis cis fis cis | 8(b a4~8 gis fis4) | cis'2 r | R1 | r2 fis4 4 |
  fis4 e8(d) e2~ | 4 d8(cis) d4 b | fis2 2 | r2 r4 b~ | b e, a2~ | 4 gis8(fis) e4 fis | gis2 ais |
  b4(a gis2) | fis4 ais(b) fis | cis' eis fis2~ | 4 dis b eis | cis(cis8 e dis2) | gis,2 r | % 117a
  R1*3 | cis1( | d) | e |
  e1 | e~ | 2 r | R1 | e1 | e | e |
  e1 | d~ | 2 r | R1 | d | d | cis | % 118a
  b1 | e | fis~ | 2 r | R1 | e | d |
  e1 | d~ | 2 4 b | g a b2~ | 4(a) g(fis) | e2 e' | d(cis) |
  d2 d~ | d a4(c) | ees2.(des4 | c bes c2)~ | 4 bes g'2 | f4 g a f | d2 b | % 119a
  e2. 4 | d2 a | b4(cis d2 | e) e, | fis4 a d fis | d b gis b | d,2(e4 f) |
  e2 r | r a | a(fis) | gis r | r a4 fis | e e' e e | r d2 e4 \section \key b \minor |
  f2(e4 d~ | d c bes2) | e,2 r | r a4 a | 1 | fis4 d d'2~ | 1~ | % 120a
  d4 d d d | 2. g,4 | fis a d fis | e2.(fis8 g) | fis2 r | R1 |
  R1*6 | r2 a, |
  d1~ | 2(cis) | d a~ | 4 b cis a | b1 | cis2 d4 e8(fis) | % 121a
  g2.(fis8 e) | d2 r | a4 a a a | cis(a8 cis e4 cis8 e | g4) g a8(g) fis(e) | d1~ |
  d1( | cis)~ | 1 | d2 a4 a | 1 | fis4 d d'2 |
  a4 fis fis'2~ | 4 d d d | 2. g,4 | fis a d fis | g,1 | a2 r | % 122a
  R1*2 | r2 cis4 fis | d b gis8(a fis gis | a b gis a b cis a b | cis d cis d e4) b |
  a2 e' | e1 | d2 gis,4 b | a cis b cis8(d) | cis4 4 fis,(gis) |
  a2 r | R1*5 | % 123a
  R1*3 | r2 a | d1~ | 2 cis4 4 |
  b4 b e e | a,2 a~ | 4(b) cis4 4 | d(e8 fis e4) e, | e'1~ | e~ |
  e2. 4 | e b gis e | a(e8 a cis4 a8 cis | e4 d8 e cis e) fis g | fis(e d4~8 e d e | d1~ | % 124a
  d4 e8 fis g4) fis | e8(fis e d cis2~ | 4 d8 e fis4) e | d8(e d cis b2) | b r4 b | e e r b |
  cis4 4 2~ | 4(a8 cis e4) cis8(e) | fis4 a, d2~ | 4 4 b fis8 a | 4 4 8(b g a | b cis a b cis d b cis | d e cis d b4) b |
  cis2(dis | e8 fis d e cis4) 4 | b2(e | a,4) ais b8(cis a b | cis d b cis dis e c dis | % 125a
  e8 fis d e cis d b cis | a b g a b cis a b | cis d e d cis d b cis | d e cis d e fis d e | fis2) 4 4 |
  fis2(e | d a~ | 4) b2 e4 | d fis fis g | d4 8 8 a2 | a4 r r2 |
}

wordsTenor = \lyricmode {
  \Cc \cubc \ubc \ubirc \pc \i_rpc
  \irpc \pc \cc \cubc \ubc \cc % 114
  \cubcc \c_ubc \cc \cubirpc
  \pc \irpc \irpc \i_rpc
  \i_rpc \c_ub_ir_pc __ % 117
  \irpp
  \E_ec \ermc \rmc \ermc
  \eec \ermp \Ermc % 120
  \rmc \eec \ec
  \ermc \rmc \rmp
  \Evvsc \vvsc % 123
  \vsc \Ac \Ac \Ac \evvsc \vsc \Ac \Ac
  \Ac \Ac \Ac \evc \vsc \Ap
}

wordsTenorMidi = \lyricmode {
  \MCc \Mcubc \Mubc \Mubirc \Mpc \Mirpc
  \Mirpc \Mpc \Mcc \Mcubc \Mubc \Mcc % 114
  \Mcubcc \Mcubc \Mcc \Mcubirpc
  \Mpc \Mirpc \Mirpc \Mirpc
  \Mirpc \Mcubirpc % 117
  \Mirpp
  \MEec \Mermc \Mrmc \Mermc
  \Meec \Mermp \MErmc % 120
  \Mrmc \Meec \Mec
  \Mermc \Mrmc \Mrmp
  \MEvvsc \Mvvsc % 123
  \Mvsc \MAc \MAc \MAc \Mevvsc \Mvsc \MAc \MAc
  \MAc \MAc \MAc \Mevc \Mvsc \MAp
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  R1*6 | r2 cis |
  d2. 4 | cis fis, fis'2~ | 2 eis | fis4 gis a fis | b1~ | 2 a4(gis) | a(gis) fis e |
  d1 | cis2 r | R1*5 |
  R1*2 | r2 a'4 a | a d, g2~ | 4 fis8(e) fis4 d | e1 | d4 fis(g) d | % 114a
  e4 cis fis e | dis(g2) fis4 | eis2(fis) | b,2 r | R1*3 |
  R1*4 | r2 gis' | a2. 4 | gis4 cis, cis'2~ |
  cis2 bis | cis cis,~ | 4(dis) e cis | fis1 | e4 e'2 4 | 4 a, d2~ | 4 cis8(b) cis4 a | % 115a
  b1~ | 4 a8(gis) a4 a | a d, g2~ | 4 fis8(e) fis4 d | e2(a) | d, r | R1 |
  r2 e | fis2. 4 | e a, a'2~ | 2 gis | a4 fis b a | gis e a a | a dis, gis2~ |
  gis4 fis8(e) fis4 b, | e2(eis | fis fisis | gis1 | fisis2 gis) | cis,1 | % 116a
  R1*3 | gis'2(a) | b b | b r |
  r2 b | b b | b1 | a2 r | R1 | a2 a | gis fis |
  b2 cis | R1 | b2 a | b1 | a2 r | r cis4 4 | % 117a
  cis4 fis, b2~ | 4 a8(gis) a4 fis | gis1 | fis | R1*2 |
  R1*2 | r2 cis'4 4 | 4 fis, b2~ | 4 a8(gis) a4 a, | e'2 2 | R1 |
  r2 ais | b2. 4 | a d, d'2~ | d cis | d d,~ | 4(e) fis d | e2.(fis4) | % 118a
  b,2 b'4 4 | b e, a2~ | 4 8(g) a4 d, | g1 | fis4 b, b'2~ | 2 ais b2. a4 |
  gis4 e a g | fis d e fis | g(a b g | e fis) g(e) | c(d) e(d) | cis1 | d~ |
  d2 d'~ | d c | bes1( | a) | bes1~ | 2 a | gis1( | % 119a
  g1 | f~ | 2) e4(d) | cis a' b cis | d a fis d | gis,1 | a~ |
  a2 r | r a'4(g) | fis1 | e2 r | r fis4 a | cis2. 4 | d d, d c \section \key b \minor |
  b1( | bes) | a2 r | R1 | a'4 4 2~ | 2 fis4 d | a' a d a | % 120a
  fis4(d8 fis a4 fis8 a | d4) 4 2~ | 4 d, d d | d1 | 2 r | R1 |
  R1*7 |
  R1*2 | r2 d( | a'1)~ | 2 g | fis b4 a | % 121a
  g4(e) a(g) | fis(d8 fis a4 fis8 a | d4) d e8(d) cis(b) | a1~ | a~ | a~ |
  a1~ | a~ | a | d,2 r | r a'4 4 | a1 |
  fis4 d d'2 | 4 d,8(fis a4) fis8(a) | d4 4 2~ | 4 d, d d | d1 | 2 r | % 122a
  R1*5 | e'4 a, gis e |
  fis8(gis e fis gis a fis gis | a b a b cis d b cis | d4) d, d' d | cis b8(a) gis4 e | a fis d(e) |
  a,2 r | R1*5 | % 123a
  R1*4 | r2 e' | a1~ |
  a2 gis4 4 | a(b) cis(a) | fis gis a fis | d(b) e(d) | cis1( | a |
  e'1)~ | e~ | 2 cis | a4 a' cis a | d(d,8 fis a4 fis8 a | c4 b8 c d c) b a | % 124a
  g8(a b a g fis e d | cis2. d8 e | fis g a g fis e d cis) | b4 b' b8(a) g(fis) | e4(b'8 g e4 g8 e | cis4 g'8 e cis4 e8 cis |
  a4. cis8 e4 cis8 e | a4 e8 a cis4) a8(cis) | d2 r4 b | fis b g a8 a | d,4 d r2 | R1*2 |
  R1*5 | % 125a
  r2 e8(fis d e | fis g e fis g a fis g | a4) a, r a'8(g | fis4 g8 fis e4) fis8(e) | d(cis d e fis g e fis |
  g8 a fis g a b g a | b cis a b cis d b cis | d4) b g(a) | d,4 d'8(cis) b(a) b4 | fis g8 g a2 | d,4 r r2 |
}

wordsBass = \lyricmode {
  \Cc \cubc \ubirpc
  \i_rpc \cc \cubirpc % 114
  \irpc \cc \cubirpc
  \cubirpc
  \irpc \irpc % 117
  \cc \cubirpc \cubirpp __
  \E_ec __ \ermc __ \ermc
  \eeermp % 120
  \Ermc \eec
  \ermc \rc \rmp
  \Evv_sc \v_sc % 123
  \vsc \Ac \vsc \vsc \Ac
  \Ac \Ac \Ac \Ac \vsc \Ap
}

wordsBassMidi = \lyricmode {
  \MCc \Mcubc \Mubirpc
  \Mirpc \Mcc \Mcubirpc % 114
  \Mirpc \Mcc \Mcubirpc
  \Mcubirpc
  \Mirpc \Mirpc % 117
  \Mcc \Mcubirpc \Mcubirpp
  \MEec \Mermc \Mermc
  \Meeermp % 120
  \MErmc \Meec
  \Mermc \Mrc \Mrmp
  \MEvvsc \Mvsc % 123
  \Mvsc \MAc \Mvsc \Mvsc \MAc
  \MAc \MAc \MAc \MAc \Mvsc \MAp
}

pianoRHone = \relative {
  \global \vo
  r2 cis'' | d2. 4 | cis fis, fis'2~ | 2 eis(fis) <fis, b> | cis' a4 fis | b1 |
  a2 fis' | e4(d) e(cis) | d1 | cis2 2~ | 2 <gis b>4 <fis a> | % 113b
  \ov <eis gis>4 <fis a> <cis eis gis b>2~ | \vo b' a4 cis |
  fis1 | \ov <gis, cis eis>2 cis,4 4 | cis fis, b2~ | % 113c
  4 a8 gis <a fis'>4 <fis fis'> | \vo fis' b, e2~ | 4 dis8 cis b'4 4 |
  b4 e, a2~ |
  a4 gis8 fis <gis e'>4 e' | e a, d2~ | 4 cis8 b cis4 a | % 114a
  b1 | a4 cis d d | d2 cis~ | 2 b4 <b d> |
  cis1 | <a b>2 b~ | 4 4 cis4 4 | d2. 4 | cis4 fis, fis'2~ | % 114b
  fis2 eis | fis2. 4 |
  e4 cis d2~ | 4 cis8 bis cis4 4 | 4 fis, b2~ | 4 a8 gis cis2~ | % 114c
  cis2 bis | cis4 <cis e> <bis dis> cis | bis cis r e |
  fis2. 4 | e cis8 dis e4 fis | gis2 cis,4 4 | 4 fis, b4 4 | % 115a
  cis2. b4 | a cis b d | e2. 4 |
  d2 r | r a | b2. 4 | a d, d'2~ | d cis | d a~ | 4 b cis a | % 115b
  d2 <d e> | <cis e> dis | e cis | d e | fis2. 4 | e gis fis e | dis b e dis | % 115c
  cis2 dis | e4 fis gis2~ | 4 fis8 e dis4 cis | % 116a
  bis4 gis cis2~ | <ais cis> <gis bis> | <gis cis> <a cis>4 4 |
  d4 4 2 | cis2. b8 a | b4 cis2 bis4 | cis2 fis4 4 | 4 b, e2~ | 4 d8 cis d4 b | % 116b
  cis4 d2 cis4~ | 4 b fis'2~ | 4 e d cis~ | <cis d> d8 cis b a d4 | % 116c
  cis4 b cis d | e2 a,4 b | cis2. 4 |
  <fis, b>4 fis e'2~ | <cis e> d | <gis, cis> cis | % 117a
  b2. cis4 | 2 bis | e4 e e a, |
  d2. cis8 b | cis4 fis, fis'2~ | <d fis>4 <cis eis>8 <b dis> <cis eis>2 | % 117b
  fis2 cis4 4 | 4 b8 a \ov <gis b d>4 <fis b d> | <gis b d> <e gis> \vo cis'2~ |
  cis4 b8 a b2 | cis2. 4 | b4 e, e'2~ | 2 <b d> % 117c
  cis2. 4 | b e, <gis e'>2~ | e' cis |
  ais2 cis | d2. 4 | cis4 fis, <c' fis>2~ | fis e~ | % 118a
  e4 a, <b d>2~ | b4 a8 gis fis'4 4 | 4 b, e2~ |
  e4 d8 cis d4 b | <g cis>2 cis | d d~ | d e~ | <ais, e'> <a dis> | % 118b
  e'4 cis, cis'4 4 | 4 fis, <b d>2 |
  d2 cis | c d~ | <b d>4 <a c> <g b>2 | <gis b>4 <fis a> <e g>2~ | % 118c
  \ov q4 <d fis> <cis e g> <c fis a> \vo | <g' bes>1 | q |
  a2 d~ | d ees | ees1 | <c ees> | d2 <cis e> | <d f>1 | f2 e~ | % 119a
  <cis e>4 <a cis> <b d> <cis e> | d a d2 | d,4 e f2 | % 119b
  <e g>1 | e4 d8 cis d2 | \ov <b d f>1 | <a d f>4 <d f a>(<cis e a>) <b d gis!> |
  <cis e a>2 \vo a'4 bes | c1 | bis | <gis cis>2 gis4 <gis b> % 119c
  a1 | 4 4 <g bes>2~ | 4 <f a> <a d>2~ \section \key b \minor |
  q4 <d, f> <cis e> <d f> | gis1 | \ov <cis, e a>2 r | % 120a
  r4 d8 <d fis> <d fis a>4 <d fis>8 <d fis a> |
  <d fis d'>4 <d fis>8 <d fis a> <d fis d'>4 <fis a>8 <fis a d> |
  <a d fis>4 a8 d <a d fis>4 <a d a'>8 <a d fis> |
  <fis a d>4 <fis a fis'>8 <fis a d> <fis a>4 <fis a d>8 <a d fis> |
  <d fis a>4 4 4 4 | % 120b
  4 <d e g>8 <d fis a> <d g b>4 <d fis a>8 <d e g> |
  <d fis a>4 <d fis>8 <d fis a> <d fis d'>4 <d fis a> |
  <a cis e g>4 <d fis>8 <e g> <cis a'> <e g> <d fis> <cis e> |
  <d fis>4 <a cis e>8 fis' <a, d>4 <a cis e> |
  <a d fis>8 gis' e fis <b, e gis> a' fis gis |
  <e a>8 b' gis a <e b'> cis' a b | % 120c
  <e, cis'>4 <d fis b>8 <cis a'> <b fis' b>4 <b e gis> |
  <cis e a>4 <e, a>8 <e a cis> <e a e'>4 <a cis>8 <a cis e> |
  <a cis e g>4 a8 <a cis> <a cis e>4 <a cis>8 <a cis e> |
  <a d fis>4 <fis a d>8 <a d fis> <d fis a>4 <a d fis>8 <d fis a> |
  <d fis a d>4 <fis, a d>8 <a d fis> <d fis a>4 <a d fis>8 <d fis a> |
  <e a cis>4 <e a>8 <cis e> <a cis>4 r |
  r4 <fis' a>8 <d fis> <b d>4 r | r4 <e b'>8 <b g'> <cis e>4 r | % 121a
  r4 d8 <d a'> <d fis d'>4 r | r2 \vo <a cis>2 | <b e>1~ | e4 d d2~ |
  <b d>4 4 <a cis> cis | d \ov <fis, a>8 d' <a fis'>4 <fis a d>8 fis' | % 121b
  <d fis a>4 r r2 | r4 <cis e>8 <cis e a> <e a cis>4 <e a>8 <e a cis> |
  <e a cis e>4 r r2 | r4 <d fis>8 <d fis a> <d fis a d>4 <fis a>8 <fis a d> |
  <fis a d e>4 r r2 | e4 <cis e>8 <cis e a> <e a cis>4 <e a>8 <e a cis> | % 121c
  <e a cis e>4 r r2 | r4 d,8 <d fis> <d fis a>4 <d fis>8 <d fis a> |
  <d fis a d>4 fis8 <fis a> <fis a d>4 <fis a>8 <fis a d> |
  <fis a d fis>4 a8 <a d> <a d fis>4 <d fis a>8 <a d fis> |
  <fis a d>4 <a d fis>8 <fis a d> <fis a>4 <a d>8 <a d fis> | % 122a
  <a d fis a>4 4 4 4 |
  <d fis a>4 <d e g>8 <d fis a> <d g b>4 <d fis a>8 <d e g> |
  <d fis a>4 <d fis>8 <d fis a> <d fis d'>4 <d fis a> |
  <a cis d g>4 <d fis>8 <e g> <cis a'> <e g> <d fis> <cis e> |
  <a d fis>4 <fis a d> e2 |
  fis2 \vo b4 e | cis a4 2 | b2 <ais cis> | % 122b
  d4 cis b2 | cis d | e1~ |
  e2 d | cis4 8 d e fis d e | fis8 gis e fis gis a fis gis | % 122c
  a8 b gis a b cis a b |
  \ov <e, cis'>4 <d fis b>8 <cis a'> <d fis b>4 <b d e gis> |
  <cis e a>4 <cis e cis'>8 <cis e a> <cis e>4 <a cis e a>8 <a cis e> | % 123a
  <a cis>4 <cis e a>8 <cis e> cis4 <e, a cis e>8 <e a cis> |
  <cis e a>4 <a' cis e>8 <a cis> a4 8 <a cis> |
  <a cis e>4 a8 <a cis> <a cis e>4 <a cis>8 <a cis e> |
  <a cis e a>4 <e' a cis> q q | q <d b'>8 <e cis'> <fis d'>4 <e cis'>8 <d b'> |
  <e cis'>4 cis8 <cis e> <cis e a>4 <a cis e> | % 123b
  <gis b d>4 \vo <a cis>8 <b d> <gis e'> <b d> <a cis> <gis b> |
  \ov <e a cis>4 <e' a>8 <cis e> <a cis>4 r | r <a' cis>8 <fis a> <cis fis>4 r |
  r4 <d fis>8 <b d> <e, b'>4 r | r <e a>8 <d b'> <e cis'>4 <cis e a> |
  <fis b d>2~ <e b' d> | \vo e'2~2~ | 4 e cis fis | b,(d) cis(b) \ov | % 123c
  a4 <cis e>8 <cis e a> <e a cis>4 <e a>8 <e a cis> | <e a cis e>4 r r2 |
  r4 b8 <b d e> <b d e gis>4 <b d e>8 <b d e gis> | % 124a
  <d e gis b>4 cis8 d e d cis b |
  cis4 <cis e>8 <cis e a> <e a cis>4 <e a>8 <e a c> |
  <e g cis e>4 fis8 g a g fis e |
  fis4 <a, d fis a>8 <a d fis> <a d>4 <a d fis>8 <a d> |
  a4 d8 <d fis> <d fis a>4 <d g>8 <d fis a> |
  <d g b>4 <e g>8 <fis a> <g b>4 <b, b'>8 <b g'> | % 124b
  <g b e>4 b'8 g e4 <a, cis fis>8 <b e g> |
  <cis fis a>4 <d fis>8 <e g> <fis a>4 <a, a'>8 <a fis'> |
  <a b d>4 a'8 fis d4 <g, b e>8 <a d fis> |
  <b e g>4 e8 fis g4 <b, e g>8 <b d fis> |
  <a e' g>4 g'8 fis g4 <a, cis g'>8 <a d fis> |
  <a cis e g>4 <a cis>8 <a e'> <a g'>4 \vo g' | % 124c
  g \ov <a, cis>8 <a e'> <a g'>4 \vo g' |
  <a, d fis>8 e' d e <d fis> <e g> <fis a> <g b> |
  <fis a>4 <e g>8 <d fis> <b e g>4 <a d fis>8 <a cis e> |
  <a d fis>4 <fis a d> a,8 b g a |
  b8 cis a b cis d b cis | d e cis d \vo d e cis d |
  e8 fis d e fis g e fis | g a fis g cis d b cis | % 125a
  <b d>8 e <a, cis> <b d> <cis e> fis <b, d> <cis e> |
  fis8 g e fis d4 d | e e fis fis |
  g4 s <e g> q | q q <d fis> q | e s a a | % 125b
  a a \ov <e g>8 a <d, fis> <e g> | <fis a>4 <d fis a> \vo <fis a>2 |
  a2 a | a a | \ov <fis a>4 e8 d \vo s4 e | % 125c
  \ov <a, d fis>8 <fis' a> [ <e g> <fis a> ] <d fis> <fis a> <e g> <fis a> |
  <d fis>4 <d g>16(fis e d) <d fis>8 <fis a> <e g> <fis a> | <a, d fis>4 r r2 |
}

pianoRHtwo = \relative {
  \global \vt
  R1 | r2 fis' | a2. 4 | gis2 cis2~ | 2 \once\hideNotes fis,2^~ | <cis fis>4 gis' cis,2 | cis4 dis eis cis |
  fis4(gis8 a b4) gis | a b cis a | <gis b> a gis~ <gis b> | a2 <fis a>~ | % 113b
  <d fis a>2 d | s2 \once\hideNotes cis2~ | 2 a' |
  <a cis>2 gis4 fis | s1*3 | gis,1 | fis4 ais <b dis> b | cis1 | % 113c
  b4 dis e e | fis1 | e4 gis a <cis, e> | fis4 a g fis | % 114a
  <cis e>4 a'2 <fis b>4~ | <g b> b a g | fis <d ais'> d fis |
  <g b>2 <fis a>~ | fis4 e <e g> d~ | d cis <cis ais'>2 | % 114b
  <fis cis'>4 fis b2~ | 4 a8 gis a4 fis | gis2 2 | <fis cis'>4 fis b2~ |
  b4 a8 gis a4 fis~ | <fis gis>2 <eis gis> | <fis a>4 e fis <fis a> | % 114c
  <eis gis>4 cis <cis a'> <dis fis> | <e gis>2~ <dis gis>~ |
  <cis gis'>4 gis' fis2 | fis4 e8 dis s4 gis |
  <a dis>1 | <gis cis>4 gis cis2~ | 4 bis gis e | e dis8 cis dis2 | % 115a
  <e gis>4 a8 gis <e a>4 <e gis> | fis2 4 <a b> | <gis b> e <e a>2~ |
  a4 gis8 fis gis4 <eis gis> | <fis a>2. <e g>4 | <d fis> <b a'> <e g> <d fis> | % 115b
  <cis e>4 d8 cis d4 fis | <e a>2 e | fis2. 4 | e2 a4 4 |
  a2 gis | a4 2 4 | gis cis fis,2~ | 4 e8 d e4 <b' d> | % 115c
  <cis e>2 <b dis> | b a4 cis | fis,2 gis |
  e2 fis | gis4 a <b d>2 | b4 a ais dis, | dis fis e2 | dis4 e fis2 | 2 eis | % 116a
  <fis a cis>4 b8 a <fis b>4 gis | <eis gis b> <fis a>8 <eis gis> <fis a>4 fis~ | % 116b
  fis4 gis8 a <dis, a'>2 | <eis gis>2 fis | gis2. 4 | fis2 2 |
  fis4 ais b cis | fis,2 d'4 b | fis2 2 | 2. <fis b>4 | % 116c
  e4 4 a2~ | 4 gis8 fis e4 fis | e4 4 <e fis>2 |
  dis2 g | fis4 ais b <fis a> | cis e <fis a>2~ | 2 <e gis> | % 117a
  <fis a>4 <dis fis>8 e fis2 | <e cis'>2 <e gis> |
  <fis a>2. 4 | <eis gis>4 cis fis d'8 e | b2 b | % 117b
  <a cis>2 fis~ | 4 4 s2 | s a4 fis |
  gis2 b4 gis | <e a>1~ | 4 e <e gis>2 | fis2. 4 | % 117c
  e2 <e a>2~ | 4 e gis e | a2 <e g> |
  <cis g'>4 cis fis2~ | 4 8 e fis4 d | a' b a a | <a b>2 <g cis>~ | % 118a
  q4 fis8 e fis4 d | g2 a4 fis | gis2 ais |
  b4 fis2 d4 | e2~2 | <fis b>4 e d' c | b e, cis' b | % 118b
  fis2. 4 | <e gis> cis <e g>2 | <d fis>4 fis4 \once\hideNotes \vo b2_~ |
  \vt b4 a8 gis s2 | a4 fis <g b> a | d, fis b, cis8 dis | % 118c
  e4 dis e b | s1 | bes2 e | d <cis e> |
  <d fis>2 <fis a>~ | 2 2 | s1 | ges2. f4 | c' bes g2 | f4 g a f | <b d> b e d | % 119a
  a4 s e2 | f2 4 d | <b gis'>1 | bes4 a g bes | <a fis'>1 | s1*2 | % 119b
  s2 r | r dis | <dis a'>4 dis~ <dis gis>2 | cis4 4 4 s | % 119c
  r2 cis4 d | e a, gis' e | d4 2 s4 \section \key b \minor |
  fis4 gis,2 a4 | <d fis>2 e4 d | s1*5 | % 120a
  s1*6 |
  s1*7 |
  s1*3 | s2 e2~ | 4 fis g e | a2 fis4 g8 fis | % 121a
  e2. <fis a>8 g | a4 s2. | s1*4 |
  s1*6 |
  s1*6 | % 122a
  s2 gis | a4 gis fis2 | gis cis,4 fis | d s2. | r2 fis4 b | gis cis b gis |
  a2 b | a4 a a a | 2 b | e4 e e e | s1 |
  s1*6 | % 123a
  s1 | s4 e, e e | s1*4 |
  s1 | <e a d>2~ <e a cis> | <a cis>4 <e b'>2 <fis a>4 | <fis a>4(<e gis>8 <d fis>) <e gis>2 | s1*2 |
  s1*6 | % 124a
  s1*6 |
  s2. a8 cis | <a e'>4 <a cis>8 <a e'> s4 <a cis>8 e' | s1*4 | s2 b,4 4 |
  cis2 dis | e8 fis d e e4 e | fis4 4 g g | <a d> <g ais> <fis b>8 cis' a b | cis d b cis dis e cis dis | % 125a
  e8 fis d e cis d b cis | a b g a b cis a b | cis d e d <cis e> fis d e | <d fis> g <cis, e> <d fis> <e g> a <d, fis> <e g> | s2 d4 d |
  <d fis>4 <d g>8 fis <cis e>4 <cis fis>8 e | d e cis d e fis d e | s2 <b fis'>8 e <a, d> cis | s1*3 |
}

pianoRHthree = \relative {
  s1*4 | s2 \vf r4 d' | s1*2 |
  s1*6 | \vth fis4 gis s2 |
  s2 \vth bis | s1*6 |
  s1*2 | s4 \vf e,2 s4 | d2 e | s1 | s2 e | s1 | % 114a
  s1*5 | s2 \vth cis'4 4 | s1 |
  s1*6 | gis2~ \vt <e gis>4 s |
  s1*3 | s2. a4 | s \vf e s2 | s1*2 | % 115a
  s1*7 |
  s1*7 |
  s1*2 | \vth cis'2 s | s1*3 | % 116a
  s4 \vf fis,4 s2 | s1 | s4 e s2 | s1*3 |
  s1 | s2 fis | s1 | \vth d'2 s | s1*2 | s2 \vo \once\hideNotes fis,2 ~ | % *** shift note
  \once\hideNotes \vt fis4 s2. | s1*5 | % 117a
  s1 | s2. \vf a4 | s1*4 |
  s1*7 |
  s1*7 | % 118a
  s1 | s2 \vth a4 gis | s1 | s2 \vf e | s1*2 | s2 fis |
  e2~ <e a> | d2 s | s1*5 |
  s1*4 | fis2 s | s1 | s2 b | % 119a
  s1*7 |
  s1 | s2 \vth fis4 g | s1*2 | \vt gis2 \vo fis | \vth e2. s4 | s2 \vt f4 e |
  s1*20 | % 120
  s1*18 |
  s1*6 | % 122a
  s1*3 | \vf b'2 b | s1*2 |
  s1*5 |
  s1*18 | % 123
  s1*19 |
  s1*16 | % 125
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLH = \relative {
  \global
  <fis, fis'>4 <gis gis'> <a a'> <fis fis'> |
  <b b'>4 <fis fis'> <d d'> <b b'> |
  <fis' fis'>4 <e e'> <d d'> <cis cis'> |
  <b b'>4 <a a'>8 <b b'> <cis cis'>4 cis' |
  d4 <d, d'>8 <cis cis'> <d d'>4 <b b'> |
  <fis' fis'>4 <eis eis'> <fis fis'> <a a'> |
  <gis gis'>4 <fis fis'> <gis gis'> <cis, cis'> |
  <d d'>4 <cis cis'> <d d'> d | % 113b
  cis4 fis <fis fis'>8 <eis eis'> <fis fis'>4~ |
  q4 q <eis eis'> <dis dis'>8 <eis eis'> |
  <fis fis'>4 <gis gis'> <a a'> <fis fis'> |
  b4 <b, b'> <b' b'>8 <a a'> <b b'>4~ |
  q4 <cis cis'>8 <b b'> <a a'>4 <gis gis'> |
  <a a'>4 <gis gis'> <fis fis'> <e e'> |
  <d d'>4 <cis cis'> <d d'>2 | <cis cis'>2 r | d' r4 dis | e eis fis d | % 113c
  b4 d cis b | ais fis b <dis fis> | <e gis> <cis b'> <fis a> <e gis> |
  <<{\vo fis4 b2 4} \new Voice {\vt dis,4 b e gis}>> \ov | % 114a
  <a cis>4 <fis e'> <b d> <a cis> |
  <gis b>4 e <a, a'> q~ |
  q4 <d, d'> <g g'>2~ |
  q4 <fis fis'>8 <e e'> <fis fis'>4 <d d'> | <e e'>2 <a, a'> |
  <d d'>4 <fis fis'> <g g'> <d d'> |
  <e e'>4 <cis cis'> <fis fis'> <e e'> | % 114b
  <dis dis'> <e e'>8 <fis fis'> <g g'>4 <fis fis'> |
  <eis eis'>2 <fis fis'> | <b, b'>4 cis' d b |
  fis'4 a d cis | b gis cis cis, | fis b a gis |
  a8 b cis2 b4~ | 4 a8 gis cis4 b | a b8 cis d4 b | cis eis, fis a | % 114c
  gis4 fis <gis, gis'> <gis, gis'> | <a a'> a'8 gis a4 <a, a'> |
  <gis gis'>4 <cis cis'>8 <bis bis'> <cis cis'>2~ |
  q2 <bis bis'> | <cis cis'>4 <e e'>8 <dis dis'> <cis cis'>4 <dis dis'> | % 115a
  <e e'>4 <gis gis'> <e e'> <cis cis'> |
  <fis fis'>4 gis8 a b4 <b, b'> |
  e4 <e, e'> <e' e'>2~ | 4 <a, a'> <d d'> <b b'> |
  <e e'>4 <fis fis'>8 <gis gis'> <a a'>4 <fis fis'> |
  b4 <b, b'> <b' b'>2~ | 4 <a a'>8 <gis gis'> <a a'>2~ | % 115b
  q4 <d, d'> <g g'>2~ | 4 <fis fis'>8 <e e'> <fis fis'>4 <d d'> |
  <a' a'>4 <g g'> <a a'> <a, a'> | <d d'> <e e'> <fis fis'> <d d'> |
  <a' a'>4 <gis gis'> <fis fis'> <gis gis'>8 <a a'> |
  <b b'>4 cis8 d e4 <e, e'> | <fis fis'> fis8 e fis4 <fis fis'> | % 115c
  <e e'>4 <a, a'> <a' a'>2~ | 4 <gis gis'>8 <fis fis'> <gis gis'>4 <e e'> |
  <a a'>4 <fis fis'> <b b'> <a a'> | <gis gis'> <e e'> <a a'>2~ |
  q4 <dis, dis'> <gis gis'>2~ |
  q4 <fis fis'>8 <e e'> <fis fis'>4 <b, b'> | % 116a
  <e e'>4 4 <eis eis'> q | <fis fis'> q <fisis fisis'> q |
  <gis gis'>4 q q q | <fisis fisis'> q <gis gis'> q | <cis, cis'>1 |
  q1 | q | q~ | 4 <cis' cis'> <b b'> <a a'> | % 116b
  <gis gis'>4 <gis, gis'> <fis fis'> <e e'> |
  <b' b'>4 <b' b'> <ais ais'> <gis gis'> |
  <ais ais'>4 <fis fis'> <gis gis'> <ais ais'> | % 116c
  <b b'>4 b8 ais b4 <cis, cis'> | <d d'> <cis cis'> <d d'> <e e'> |
  <fis fis'>4 fis8 eis fis4 <gis, gis'> |
  <a a'>4 <gis gis'> <a a'> <b b'> | <cis cis'> <b b'> <cis cis'> <dis dis'> |
  <e e'>4 cis' ais <fis fis'> |
  b4 <b, b'>2 <ais ais'>8 <gis gis'> | % 117a
  <ais ais'>4 <fis' fis'>2 <eis eis'>8 <dis dis'> |
  <eis eis'>4 <cis cis'> <fis fis'> <e e'> |
  <dis dis'>4 <b b'> <e e'>2~ |
  q4 <dis dis'>8 <cis cis'> <dis dis'>4 <gis, gis'> |
  <cis cis'>4 <gis' gis'> <cis cis'>2~ |
  q4 <fis, fis'> <b b'>2~ | 4 <a a'>8 <gis gis'> <a a'>4 <fis fis'> | % 117b
  <gis gis'>2 <cis, cis'> | <fis fis'>4 <gis gis'> <a a'> <fis fis'> |
  <b b'>4 <d d'>8 <cis cis'> <b b'>4 <a a'> |
  <gis gis'>4 <cis cis'>8 <b b'> <cis cis'>4 <a a'> |
  e'4 <e, e'>8 <fis fis'> <gis gis'>4 <e e'> | % 117c
  <a a'>4 a8 b cis4 a | e e'8 d e4 cis |
  a4 fis <b, b'> <cis cis'>8 <d d'> |
  <e e'>4 <fis fis'>8 <gis gis'> <a a'>4 <a, a'> |
  <e e'>4 <e' e'>2 <d d'>4 | <cis cis'> <d d'> <e e'> <cis cis'> |
  <fis fis'>4 <gis gis'> <ais ais'> <fis fis'> | % 118a
  b4 cis d b | fis g a fis | <b, b'> <cis cis'>8 <d d'> <e e'>4 <ais, ais'> |
  <b b'>4 <cis cis'> <d d'> <b b'> |
  <g g'>4 <e e'> <b' b'> <d d'> | <e e'> <d d'> <cis cis'> <fis fis'> |
  b4 <b b'>8 <ais ais'> <b b'>2~ | % 118b
  q4 <e, e'> <a a'>8 <g g'> <fis fis'> <e e'> |
  <d d'>4 <e e'> <fis fis'> <d d'> |
  <g g'>4 <fis fis'> <g g'> <a a'>8 <g g'> |
  <fis fis'>4 b <b b'>2~ | 2 <ais ais'> |
  <b b'>4 <d d'>8 <cis cis'> <b b'>4 <a a'> |
  <gis gis'>4 <e e'> <a a'> <g g'> | % 118c
  <fis fis'>4 <d d'> <e e'> <fis fis'> |
  <g g'>4 <a a'> <b b'> <g g'> | <e e'> <fis fis'> <g g'> <e e'> |
  <c c'>4 <d d'> <e e'> <d d'> | <cis cis'>-.(q-. q-. q-.) |
  <d d'>4-.(q-. q-. q-.) |
  q4-.(q-. q-. q-.) | q-.(q-. <c c'>-. q-.) | <bes bes'>-.(q-. q-. q-.) | % 119a
  <a a'>4-.(q-. q-. q-.) | <bes bes'>-.(q-. q-. q-.) | q-.(q-. <a a'>-. q-.) |
  <gis gis'>4-.(q-. q-. q-.) |
  <g g'>4-.(q-. q-. q-.) | <f f'>-.(q-. q-. q-.) | % 119b
  q <f' f'> <e e'> <d d'> | <cis cis'> <a a'> <b b'> <cis cis'> |
  <d d'>4 <a a'> <fis fis'> <d d'> | <gis gis'>-.(q-. q-. q-.) |
  <a a'>4-.(q-. q-. q-.) |
  q2 r | r <a' a'>4(<g g'>) | <fis fis'>-.(q-. q-. q-.) | % 119c
  <eis eis'>4-.(q-. q-. q-.) | <fis fis'>-.(q-. q-. q-.) |
  <cis cis'>4-.(q-. q-. q-.) | <d d'>-.(q-. q-. q-.) \section \key b \minor |
  <b b'>4-.(q-. q-. q-.) | <bes bes'>-.(q-. q-. q-.) | % 120a
  <a a'>4 <g g'> <fis fis'> <e e'> |
  <d d'> <d'' fis a>8 8 4 r |
  \repeat unfold 3 {<d, d'>4 <d' fis a>8 8 4 r |}
  r4 d8 fis <a, a'>4 fis'8 a | <d, d'>4 4 4 4 | % 120b
  q4 d8 fis <a, a'>4 fis'8 a | <d, d'>4 4 4 4 |
  q4 <a a'> <fis fis'> <a a'> |
  <d, d'> <fis fis'>8 <a a'> <d d'>4 <cis cis'>8 <b b'> |
  <cis cis'>4 <b b'>8 <a a'> <gis gis'>4 <fis fis'>8 <e e'> | % 120c
  <a a'>4 <fis fis'> <d d'> <e e'> |
  <a, a'>4 <a'' cis>8 e cis4 e8 cis | a4 <a a'>4 4 4 |
  <d, d'>4 <d' d'>8 <a a'> <fis fis'>4 <a a'>8 <fis fis'> |
  <d d'>4 <a' a'>8 <fis fis'> <d d'>4 <fis fis'>8 <d d'> |
  <a a'>4 r r <cis' cis'>8 <a a'> |
  <fis fis'>2 r4 <b b'>8 <g g'> | <e e'>2 r4 <a a'>8 <fis fis'> | % 121a
  <d d'>2 r4 <fis fis'>8 <d d'> | <a a'>4 <e' e'> < a a'>2~ |
  q2 <g g'> | <fis fis'> <b b'>4 <a a'> |
  <g g'>4 <e e'> <a a'> <g g'> | % 121b
  <fis fis'>4 <<{\vo d''8 a g4 a8 g | d4} \new Voice {\vt d4 r2 | r4}>> \ov a8 d <fis, fis'>4 d'8 fis |
  <a, a'>4 g''8 e cis4 e8 cis | a4 e8 a <cis, cis'>4 a'8 cis |
  <d, d'>4 a''8 fis d4 fis8 d |
  a4 <a, a'>8 <fis fis'> <d d'>4 <fis fis'>8 <d d'> | % 121c
  <a a'>4 a'''8 e cis4 e8 cis | a4 cis,8 a fis4 a8 fis |
  d4 <d' fis a>8 8 4 r |
  \repeat unfold 3 {<d, d'>4 <d' fis a>8 8 4 r |}
  r4 d,8 fis a4 fis8 a | d4 <d, d'>4 4 4 | % 122a+
  q4 d8 fis a4 fis8 a | d4 <d, d'> q q | q d cis' a |
  d4 cis8 b e4 e, | a b8 cis d2~ | d cis | % 122b
  <<{\vo s4 b' gis2 | a b |} \new Voice {\vt d,2 r | R1 |}>> \ov
  e4 e,4 8 fis d e |
  fis8 gis e fis gis a fis gis | a b a b cis d b cis | % 122c
  d4 d <d d'> q | <cis cis'> <b b'>8 <a a'> <gis gis'>4 <e e'> |
  <a a'>4 <fis fis'> <d d'> <e e'> |
  <a, a'>4 a''8 cis e4 cis8 e | <a,, a'>4 <a' cis>8 e' a4 a,8 cis | % 123a
  <a, a'>4 a'8 cis e4 cis8 e | <a,, a'>4 cis'8 e r4 e,8 a |
  cis4 a,8 cis <e, e'>4 cis'8 e | <a, a'>4 q q q |
  q4 a8 cis <e, e'>4 cis'8 e | <a, a'>4 4 4 4 | q2 r4 cis'8 a | % 123b
  fis2 r4 8 d | b2 r4 e8 cis | a4 <e e'> <a a'>2~ |
  q2 <gis gis'> | <a a'>4 <b b'> <cis cis'> <a a'> | % 123c
  <fis fis'>4 <gis gis'> <a a'> <fis fis'> | <d d'> <b b'> <e e'> <e, e'> |
  <a a'>4 a'''8 e cis4 e8 cis | a4 e8 a <cis, cis'>4 a'8 cis |
  <e, e'>4 gis'8 e b4 e8 b | gis4 b,8 e <gis, gis'>4 e'8 gis | % 124a
  <a, a'>4 e''8 cis a4 cis8 a | e4 e,8 g <cis, cis'>4 a'8 cis |
  <d, d'>4 d8 fis a4 fis8 a | c4 b8 c d c b a |
  g4 <b b'> <g g'> <e e'> | <cis cis'> <e e'> <cis cis'> <a a'> | % 124b
  <fis fis'>4 <a' a'> <fis fis'> <d d'> | <b b'> <d d'> <b b'> <g g'> |
  <e e'>4 b''8 g e4 g8 e | cis4 g'8 e cis4 e8 cis |
  a4 a'8 cis <e, e'>4 cis'8 e | <a, a'>4 e'8 a <cis, cis'>4 a8 cis | % 124c
  d4 <d, d'> <d' d'> <b b'> | <fis fis'> <b b'> <g g'> <a a'> |
  <d, d'>4 d <<{\vo fis'2 | gis ais | b4} \new Voice {\vt d,2~ | 2 cis | b4}>> \ov d4 g2~ |
  g2 fis | e a~ | a g | fis g~ | g fis | % 125a
  e4 e,4 8 fis d e | fis g e fis g a fis g | % 125b
  a4 <a, a'> r <a' a'>8 <g g'> |
  <fis fis'>4 <g g'>8 <fis fis'> <e e'>4 <fis fis'>8 <e e'> |
  <d d'>8 cis d e fis g e fis |
  g8 a fis g a b g a | b cis a b cis d b cis | % 125c
  d4 <b b'> <g g'> <a a'> | <d, d'> r <b' b'> r |
  <fis fis'>4 r <a a'> r | <d, d'> r r2 |
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
            \new Voice \sopranoI
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
            \new Voice \sopranoII
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
            \new Voice \pianoLH
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
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
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
            \new Voice \sopranoI
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
            \new Voice \sopranoII
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
            \new Voice \sopranoI
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
            \new Voice \sopranoII
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
            \new Voice \sopranoI
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
            \new Voice \sopranoII
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
            \new Voice \sopranoI
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
            \new Voice \sopranoII
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
            \new Voice \sopranoI
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
            \new Voice \sopranoII
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
            \new Voice \sopranoI
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
            \new Voice \sopranoII
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
            \new Voice \pianoLH
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
            \new Voice \sopranoI
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
            \new Voice \sopranoII
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
            \new Voice \sopranoI
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
            \new Voice \sopranoII
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
            \new Voice \sopranoI
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
            \new Voice \sopranoII
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
            \new Voice \sopranoI
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
            \new Voice \sopranoII
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
            \new Voice \sopranoI
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
            \new Voice \sopranoII
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
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
            \new Voice \sopranoI
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
            \new Voice \sopranoII
%            \addlyrics \wordsSopIIMidi
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
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
            \new Voice \sopranoI
%            \addlyrics \wordsSopIMidi
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
            \new Voice \sopranoII
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
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
            \new Voice \sopranoI
%            \addlyrics \wordsSopIMidi
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
            \new Voice \sopranoII
%            \addlyrics \wordsSopIIMidi
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
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
            \new Voice \sopranoI
%            \addlyrics \wordsSopIMidi
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
            \new Voice \sopranoII
%            \addlyrics \wordsSopIIMidi
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
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
            \new Voice \sopranoI
%            \addlyrics \wordsSopIMidi
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
            \new Voice \sopranoII
%            \addlyrics \wordsSopIIMidi
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
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice \pianoRHthree
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
