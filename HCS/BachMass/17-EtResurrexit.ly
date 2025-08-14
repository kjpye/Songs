\version "2.25.26"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 17. Et Resurrexit (chorus)"
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
  \key b \minor
  \time 3/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=90
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "99a" } s2.*3
  \textMark \markup { \box "99b" } s2.*4
  \textMark \markup { \box "99c" } s2.
  \mark \markup\circle\bold A      s2.*3
  \textMark \markup { \box "100a" } s2.*4
  \textMark \markup { \box "100b" } s2.*4
  \textMark \markup { \box "101a" } s2.
  \mark \markup\circle\bold B       s2.*3
  \textMark \markup { \box "101b" } s2.*4
  \textMark \markup { \box "102a" } s2.*4
  \textMark \markup { \box "102b" } s2.*4
  \textMark \markup { \box "102c" } s2.*4
  \textMark \markup { \box "103a" } s2.*4
  \textMark \markup { \box "103b" } s2.*4
  \textMark \markup { \box "103c" } s2.*2
  \mark \markup\circle\bold C       s2.*2
  \textMark \markup { \box "103d" } s2.*4
  \textMark \markup { \box "104a" } s2.*2
  \mark \markup\circle\bold D       s2.*2
  \textMark \markup { \box "104b" } s2.*4
  \textMark \markup { \box "104c" } s2.*4
  \textMark \markup { \box "105a" } s2.*4
  \textMark \markup { \box "105b" } s2.*2
  \mark \markup\circle\bold E       s2.*2
  \textMark \markup { \box "105c" } s2.*4
  \textMark \markup { \box "105d" } s2.*4
  \textMark \markup { \box "105e" } s2.*2
  \mark \markup\circle\bold F       s2.*2
  \textMark \markup { \box "106a" } s2.*4
  \textMark \markup { \box "106b" } s2.*4
  \textMark \markup { \box "106c" } s2.*2
  \mark \markup\circle\bold G       s2.*2
  \textMark \markup { \box "107a" } s2.*4
  \textMark \markup { \box "107b" } s2.*4
  \textMark \markup { \box "107c" } s2.*4
  \textMark \markup { \box "108a" } s2.*4
  \textMark \markup { \box "108b" } s2.*4
  \textMark \markup { \box "108c" } s2.*4
  \textMark \markup { \box "108d" } s2.*4
  \textMark \markup { \box "108e" } s2.*4
}

dynamicsSopI = {
  \override DynamicTextSpanner.style = #'none
}

sopranoI = \relative {
  \global
  r4 r8 a' d e | fis(\tuplet 3/2 {g16 fis e} fis8) g fis e | d4 a r |
  R2.*4 |
  R2.*4 |
  R2.*2 | r4 r8 a d e | fis(\tuplet 3/2 {g16 fis e} fis8) b a g | % 100a
  fis16(g \repeat unfold 5 {fis g} | fis8 d16 cis d8) a c4~ | % 100b
  c8 b d g4 e8 | cis16(a) b(cis) d(e) fis(g) a8 g16 fis |
  e8 8 r e, a b | cis8(\tuplet 3/2 {d16 cis b} cis8) d cis b | % 101a
  a 8 16(gis fis8) 8 b cis | d(cis16 b e8) gis, a d |
  cis8 b r b(cis) d | e(\tuplet 3/2 {fis16 e d} e4. fis16 e | % 101b
  d8 \tuplet 3/2 {e16 d cis} d4. e16 d |
  cis8 \tuplet 3/2 {d16 cis b} cis4. d16 cis |
  b16 a b cis b cis b cis b cis b cis | d cis d e d e d e d e d e | % 102a
  cis16 b cis d cis d cis d cis d cis d | e d e fis e fis e fis e fis e fis |
  d8) d r d cis(gis) | a16(b cis d e8) a, cis(b) | a4 r r | R2. | % 102b
  R2.*4 |
  R2.*4 | % 103a
  R2.*4 |
  R2.*2 | r4 r8 e a(b) | cis(\tuplet 3/2 {d16 cis b} cis8 e) a, cis |
  d8 fis16(e d8) d(cis) b16 ais | % 103d
  b8(\tuplet 3/2 {cis16 b a} b8) e16 fis g8 b, |
  ais16(b cis8) fis, e' d cis | b8(\tuplet 3/2 {cis16 b a} b8) cis fis,(a) |
  b4 r r | R2. | r4 r r8 a | % 104a
  fis'8(\tuplet 3/2 {g16 fis e} fis8) 16 e fis8 g16 fis |
  e8 d16(cis d8) r r d~ | 8 cis16(b cis8 e) a e | % 104b
  fis8 e16(d e8) r r fis,~ | 8 16(e fis4) r8 fis |
  g8 fis16 e cis'8 b16(ais) b(cis d8~ | % 104c
  16 cis e8~16 d cis b d8 cis\trill) | b4 r r | R2. |
  R2.*4 | % 105a
  R2.*4 |
  R2.*4 |
  R2.*4 |
  R2.*2 | r4 r8 a(d) e | fis \tuplet 3/2 {g16(fis e} fis8) g fis e |
  d4 d r | R2.*3 | % 106a
  R2.*4 |
  R2. | r4 r8 a(d) e | fis \tuplet 3/2 {g16(fis e} fis8) g fis e | d8 16(cis b8) b(e) fis |
  g8 fis16(e a8) cis, d g | fis e r cis(dis) e | % 107a
  fis8(\tuplet 3/2 {g16 fis e} fis4. g16 fis |
  e8 \tuplet 3/2 {g16 fis e} e4. fis16 e |
  d8 \tuplet 3/2 {e16 d cis} d2~ | 2.~ | % 107b
  8 \tuplet 3/2 {cis16 b a} e' fis e fis e fis e fis | e2.~ |
  e8 dis) b d fis d | e e r g(fis) cis | % 107c
  d16(e) fis g a8 d, fis(e) | d4 r r |
  R2.*20 | % 108
}

Erc     = \lyricmode { Et re -- sur -- re -- xit, }
erc     = \lyricmode { et re -- sur -- re -- xit, }
rc      = \lyricmode { re -- sur -- re -- xit, }
rtdc    = \lyricmode { re -- sur -- re -- xit ter -- ti -- a di -- e, }
rt_dc   = \lyricmode { re -- sur -- re -- xit ter -- ti -- a __ di -- e, }
r_tdc   = \lyricmode { re -- sur -- re -- xit __ ter -- ti -- a di -- e, }
t_dc    = \lyricmode { ter -- ti -- a __ di -- e, }
ertdc   = \lyricmode { et re -- sur -- re -- xit ter -- ti -- a di -- e, }
ert_dc  = \lyricmode { et re -- sur -- re -- xit ter -- ti -- a __ di -- e, }
rsss    = \lyricmode { re -- sur -- re -- xit se -- cun -- dum scri -- ptu -- ras; }
rs_ss   = \lyricmode { re -- sur -- re -- xit se -- cun -- dum __ scri -- ptu -- ras; }
eaicc   = \lyricmode { et a -- scen -- dit in cœ -- lum, }
eai_cc  = \lyricmode { et a -- scen -- dit in __ cœ -- lum, }
aicc    = \lyricmode { a -- scen -- dit in cœ -- lum, }
%ai_cc   = \lyricmode { a -- scen -- dit __ in cœ -- lum, }
a_icc   = \lyricmode { a -- scen -- dit __ in cœ -- lum, }
DPc     = \lyricmode { De -- i Pa -- tris, }
sadeDPc = \lyricmode { se -- det ad dex -- te -- ram De -- i Pa -- tris, }
s_adeDPc = \lyricmode { se -- det __ ad dex -- te -- ram De -- i Pa -- tris, }
sadDPc  = \lyricmode { se -- det ad dex -- tram De -- i Pa -- tris, }
sadDPs  = \lyricmode { se -- det ad dex -- tram De -- i Pa -- tris; }
adDPc   = \lyricmode { ad dex -- tram De -- i Pa -- tris, }
ac      = \lyricmode { a -- scen -- dit, }
eivecgc = \lyricmode { et i -- te -- rum ven -- tu -- rus est cum glo -- ri -- a, }
nefc  = \lyricmode { non e -- rit fi -- nis, }
crnefc  = \lyricmode { cu -- jus re -- gni non e -- rit fi -- nis, }
crnefp  = \lyricmode { cu -- jus re -- gni non e -- rit fi -- nis. }
cr_nefc = \lyricmode { cu -- jus re -- gni __ non e -- rit fi -- nis, }
rtds_ss = \lyricmode { re -- sur -- re -- xit ter -- ti -- a di -- e se -- cun -- dum __ scri -- ptu -- ras; }
rtdsss  = \lyricmode { re -- sur -- re -- xit ter -- ti -- a di -- e se -- cun -- dum scri -- ptu -- ras; }
crc     = \lyricmode { cu -- jus re -- gni, }
eivecgc = \lyricmode { et i -- te -- rum ven -- tu -- rus est cum glo -- ri -- a, }
vecgc   = \lyricmode { ven -- tu -- rus est cum glo -- ri -- a, }
cgc     = \lyricmode { cum glo -- ri -- a, }
jv_emc  = \lyricmode { ju -- di -- ca -- re vi -- vos __ et mor -- tu -- os, }
jvemc   = \lyricmode { ju -- di -- ca -- re vi -- vos et mor -- tu -- os, }
vemc    = \lyricmode { vi -- vos et mor -- tu -- os, }

wordsSopI = \lyricmode {
  \Erc \rc
  \erc \rtdc \rtdc % 100
  \erc \rc __ \erc \rc \rs_ss
                                % 102
  \eaicc \sadeDPc \adDPc
  \ac \aicc __ \aicc __ \s_adeDPc % 104
  \cr_nefc
  \cr_nefc __ \cr_nefc % 106
  \crnefc \crnefp
}

MErc     = \lyricmode { "Et " re sur re "xit, " }
Merc     = \lyricmode { "et " re sur re "xit, " }
Mrc      = \lyricmode { re sur re "xit, " }
Mrtdc    = \lyricmode { re sur re "xit " ter ti "a " di "e, " }
Mtdc     = \lyricmode { ter ti "a " di "e, " }
Mertdc   = \lyricmode { "et " re sur re "xit " ter ti "a " di "e, " }
Mrsss    = \lyricmode { re sur re "xit " se cun "dum " scri ptu "ras; " }
Meaicc   = \lyricmode { "et " a scen "dit " "in " cœ "lum, " }
Maicc    = \lyricmode { a scen "dit " "in " cœ "lum, " }
MDPc     = \lyricmode { De "i " Pa "tris, " }
MsadeDPc = \lyricmode { se "det " "ad " dex te "ram " De "i " Pa "tris, " }
MsadDPc  = \lyricmode { se "det " "ad " dex "tram " De "i " Pa "tris, " }
MsadDPs  = \lyricmode { se "det " "ad " dex "tram " De "i " Pa "tris; " }
MadDPc   = \lyricmode { "ad " dex "tram " De "i " Pa "tris, " }
Mac      = \lyricmode { a scen "dit, " }
Meivecgc = \lyricmode { "et " i te "rum " ven tu "rus " "est " "cum " glo ri "a, " }
Mnefc    = \lyricmode { "non " e "rit " fi "nis, " }
Mcrnefc  = \lyricmode { cu "jus " re "gni " "non " e "rit " fi "nis, " }
Mcrnefp  = \lyricmode { cu "jus " re "gni " "non " e "rit " fi "nis. " }
Mrtdsss  = \lyricmode { re sur re "xit " ter ti "a " di "e " se cun "dum " scri ptu "ras; " }
Mcrc     = \lyricmode { cu jus re "gni, " }
Meivecgc = \lyricmode { "et " i te "rum " ven tu "rus " "est " "cum " glo ri "a,c" }
Mvecgc   = \lyricmode { ven tu "rus " "est " "cum " glo ri "a, " }
Mcgc     = \lyricmode { "cum " glo ri "a, " }
Mjvemc   = \lyricmode { ju di ca "re " vi "vos " "et " mor tu "os, " }
Mvemc    = \lyricmode { vi "vos " "et " mor tu "os, " }

wordsSopIMidi = \lyricmode {
  \MErc \Mrc
  \Merc \Mrtdc \Mrtdc % 100
  \Merc \Mrc \Merc \Mrc \Mrsss
                                % 102
  \Meaicc \MsadeDPc \MadDPc
  \Mac \Maicc \Maicc \MsadeDPc % 104
  \Mcrnefc
  \Mcrnefc \Mcrnefc % 106
  \Mcrnefc \Mcrnefp
}

dynamicsSopII = {
  \override DynamicTextSpanner.style = #'none
}

sopranoII = \relative {
  \global
  r4 r8 fis' a cis | d(\tuplet 3/2 {e16 d cis} d8) d d cis | d4 d r |
  R2.*4 |
  R2.*4 |
  r4 r8 e, a b | cis16(d cis b a g a b cis d b cis | d e d cis d8) a a cis d(\tuplet 3/2 {e16 d cis} d8) d d cis | % 100a
  d16(e d e d e d e d e d e | d8 a16 g a8) 8 4~ | % 100b
  a8 g b d(e) b | a a a e' d8 16 16 |
  cis8 8 r e e, gis | a8(\tuplet 3/2 {b16 a g} a8) g a eis | % 101a
  fis8 cis'16(b a8) cis8 fis, a | a(gis a) b e, a |
  a8 gis r g(ais) b | c(\tuplet 3/2 {d16 cis b} cis4. d16 cis | % 101b
  b8 \tuplet 3/2 {cis16 b a} b4. cis16 b | a8 \tuplet 3/2 {b16 a gis} a2~ |
  a2.~ | 8 \tuplet 3/2 {gis16 fis e} b' cis b cis b cis b cis | % 102a
  b2.~ | 8) ais fis(a cis) b16 a |
  b8 b r b e(d) | cis16(d cis b a8) a a(gis) | a4 r r | R2. | % 102b
  R2.*4 |
  R2.*4 | % 103a
  R2.*4 |
  R2.*2 | r4 r8 e e(gis) | a(gis) a(cis) d(e) |
  a,4 8 b g fis | 8. 16 e8 b'16(ais b8) e | % 103d
  cis4 ais8 8 b cis | 8(\tuplet 3/2 {e16 d cis} fis8) e8 16(d cis d) |
  b4 r r | R2. | r4 r8 e, e' e | r a, d d16(cis d8) cis | % 104a
  b4 b r8 b | a(e a cis) e cis | 4 4 r | r8 b~16(ais) b8 r dis |
  e8(fis16 g fis4. g16 fis | e8) ais, b b b(a) | b4 r r | R2. |
  R2.*16 | % 105abcd
  R2.*2 | r4 r8 fis8(a) cis | d \tuplet 3/2 {e16( d cis} d8) d d cis |
  d4 a r | R2.*3 | % 106a
  R2.*3 | r4 r8 e(a) b |
  cis16(d cis b a g a b cis d b cis | d e d cis d8) a a cis | % 106c
  d8 \tuplet 3/2 {e16(d cis} d8) cis d ais | b b16(cis d8) fis(e) d |
  d8(cis) d e d d | d cis r c(b) b | a(e fis a dis, b'~ | 8 cis16 d a2~ | % 107a
  a8) e r fis d fis | b4 8 e,(gis) b | % 107b
  e8 16(d cis8) a e a | cis4 8 fis,(ais) cis |
  fis8 16(e dis8) fis dis b | b a r cis d a | d,4. a'8 a(g) | fis4 r r | % 107c
  R2.*20 | % 108
}

wordsSopII = \lyricmode {
  \Erc \rc
  \erc \rc \rtdc \rtdc % 100
  \erc \rc __ \erc \rc \rtds_ss
                                % 102
  \eai_cc \sadeDPc \adDPc
  \ac \a_icc \aicc \sadDPs % 104
  \cr_nefc
  \crc \cr_nefc __ \crnefc % 106
  \crnefc \crnefc \crnefc \nefc fi -- nis.
}

wordsSopIIMidi = \lyricmode {
  \MErc \Mrc
  \Merc \Mrc \Mrtdc \Mrtdc % 100
  \Merc \Mrc \Merc \Mrc \Mrtdsss
                                % 102
  \Meaicc \MsadeDPc \MadDPc
  \Mac \Maicc \Maicc \MsadDPs % 104
  \Mcrnefc
  \Mcrc \Mcrnefc \Mcrnefc % 106
  \Mcrnefc \Mcrnefc \Mcrnefc \Mnefc fi nis.
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  r4 r8 d' d a | a'4 8 b(a) g | fis4 4 r |
  R2.*4 |
  R2.*2 | r4 r8 a, d e | fis16( g fis e d cis d e fis g fis g |
  e16 fis e d cis b cis d e fis e fis | g a g fis e d e fis g a fis g | a b a g a8) fis a a | a(\tuplet 3/2 {b16 a g} a8) b fis a | % 100a
  a16(b \repeat unfold 5 {a b} | a8) fis d4 8 8 | % 100b
  4 8 8 g, g' | e8(fis16 g a8) g fis a16 a |
  a8 a r cis, e e | 4. 8 8 gis | cis,4 8 fis8 8 8 | 8 e e(d) cis(a) | % 101a
  cis8 d r gis(fis) 8 | e d cis e ais,(cis) | d cis b d gis,(b) | cis b fis'(e) a(gis) |
  fis16(gis fis e dis8) fis b, fis' | e4 e r | r8 gis16(fis eis8) cis eis(g | fis) cis fis4 8 8 % 102a
  fis8 e r gis a(e) | a,4. fis'8 e4 | e r r | R2. |
  R2.*4 |
  R2.*4 | % 103a
  R2.*4 |
  R2.*2 | r4 r8 cis8 e d( | cis b) a a a'4~ |
  a8 16(g fis8) 8 e e | d8. cis16 b8 g'4 8 | fis4 8 8 b, fis' | 4. cis8 fis4 |
  fis4 r r | R2.*2 | r8 fis b a16(g a8) a | % 104a
  b8(gis) e4 r8 e | e(a16 gis a8) e r g | fis4 4 r | r r8 a8~16(g) a8 |
  r4 r8 fis4 e16 fis | g8 8 fis e d16(e fis8) | 4 r r | R2. |
  R2.*16 | % 105abcd
  R2.*2 | r4 r8 d4 a8 | a'4 8 b a g |
  fis4 4 r | R2.*3 | % 106a
  R2. | r4 r8 a,(d) e | fis16(g fis e d cis d e fis g fis g | e fis e d cis b cis d e fis e fis |
  g16 a g fis e d e fis g a fis g | a b a g) a8 fis a a | 4 8 8 8 cis | fis,4 8 b4 8 |
  b8(a) a g a b | a a r e(fis) g | a(\tuplet 3/2 {b16 a g} a4. b16 a | g8 \tuplet 3/2 {a16 g fis} g4. a16 g | % 107a
  fis8 \tuplet 3/2 {g16 fis e} fis4. g16 fis | % 107b
  e d e fis e fis e fis e fis e fis |
  g fis g a g a g a g a g a | fis e fis g fis g fis g fis g fis g |
  a16 g a b a b a b a b a b | % 107c
  g8) e r e a g | fis16(g fis e d8) d d(cis) | d4 r r |
  R2.*20 | % 108
}

wordsAlto = \lyricmode {
  \Erc \rc \erc
  \rc \rtdc \ertdc % 100
  \erc \rc __ \erc \rc \rt_dc \t_dc \rc
  \rc \rtdsss % 102
  \eaicc __ \sadeDPc \adDPc
  \a_icc \aicc se -- det, \sadDPs % 104
  \crnefc
  \crnefc \nefc \crnefc % 106
  \crnefc fi -- nis.
}

wordsAltoMidi = \lyricmode {
  \MErc \Mrc \Merc
  \Mrc \Mrtdc \Mertdc % 100
  \Merc \Mrc \Merc \Mrc \Mrtdc \Mtdc \Mrc
  \Mrc \Mrtdsss % 102
  \Meaicc \MsadeDPc \MadDPc
  \Maicc \Maicc se "det, " \MsadDPs % 104
  \Mcrnefc
  \Mcrnefc \Mnefc \Mcrnefc % 106
  \Mcrnefc fi nis.
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  r4 r8 a' fis e | d4 8 4 a8 | a4 4 r |
  R2.*4 |
  R2.*3 | r4 r8 d a' b |
  cis,16(d cis b a g a b cis d cis d | e fis e d cis b cis d e fis d e | fis g fis e fis8) d d a | a(fis d') d a a | % 100a
  a8(fis'16 e fis8 a d, fis | a,8) d a4~8 g16 fis | % 100b
  g16(a b8) 8 4 8 | cis(d16 e fis8) cis d8 16 16 |
  e8 e r e e b | a gis cis(b) cis4 | fis8 a,16(b cis8) 8 d cis | b b cis(d) e(fis) | % 101a
  e8 b r e16(d cis8) b | ais fis fis'2~ | 8 gis16 a e2~ | 8 8 a(cis,) e(a,) |
  b8 fis b(dis) fis(dis) | b b ais e e'(b) | gis'4 cis, r | 8 fis cis8 8 8 16 16 | % 102a
  b8 b r d e(gis) | cis, fis e(d cis d) | cis4 r r | R2. |
  R2.*4 |
  R2.*8 | % 103ab
  R2.*2 | r4 r8 a a e'~ | 8 4 8 fis(g |
  fis8 cis) d fis, cis'8 8 | b(d) g b,(cis) cis | 4 8 fis, fis' e | d(cis d) g cis,4 |
  d4 r r | R2. | r8 e, e' e cis4 | a8 8 r a d e16 fis | % 104a
  b,4 4 r8 8 | cis(e16 d e8) cis r cis | cis(ais) fis4 r | r r r8 b~ |
  b8(ais16 b cis8) d16 cis b4~ | 8 cis d g fis(cis) | d4 r r | R2. |
  R2.*16 | % 105a-d
  R2.*2 | r4 r8 a'(fis) e | d4 8 8 8 a |
  a4 a r | R2.*3 | % 106a
  R2.*2 | r4 r8 d,(a') b | cis16(d cis b a g a b cis d cis d |
  e16 fis e d cis b cis d e fis d e | % 106c
  fis16 g fis e) fis8 d d a | 4 8 e' fis cis | d(b) fis fis(b) d |
  e4 d8 cis a e' | fis16(g) a8 r a16(g fis8) e | d(e16 fis b,2~ | 8) fis r cis'(e) cis | % 107a
  a8(cis) fis, b d cis | b(d) gis, b4 8 | a(cis e, a cis4~ | 8 e ais, cis fis4~ |
  fis8 a) fis dis b b | b e r e d fis | b,(d16 cis d8) a fis16(g a8) | 4 r r |
  R2.*20 | % 108
}

wordsTenor = \lyricmode {
  \Erc \rc \erc
  \rc \rtdc \rtdc % 100
  \erc __ \erc \rc \rc \rtdc \rc
  \rc \t_dc \rtdsss % 102
  \eaicc \sadDPc \adDPc
  \aicc \aicc \aicc \sadDPs % 104
  \crnefc
  \crnefc \nefc \crnefc % 106
  \crc \crnefc
  \crnefc \nefc fi -- nis.
}

wordsTenorMidi = \lyricmode {
  \MErc \Mrc \Merc
  \Mrc \Mrtdc \Mrtdc % 100
  \Merc \Merc \Mrc \Mrc \Mrtdc \Mrc
  \Mrc \Mtdc \Mrtdsss % 102
  \Meaicc \MsadDPc \MadDPc
  \Maicc \Maicc \Maicc \MsadDPs % 104
  \Mcrnefc
  \Mcrnefc \Mnefc \Mcrnefc % 106
  \Mcrc \Mcrnefc
  \Mcrnefc \Mnefc fi nis.
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  r4 r8 d fis a | d4 8 g,8(a) a, | d4 d r |
  R2.*4 |
  R2. | r4 r8 a d e | fis16(g fis e d cis d e fis g fis g | a b a g fis g fis e d e fis d |
  g16 a g fis g8) e c e | a, a' r g16(fis e8) a | fis d r d fis a | d4. g,8 a a, | % 100a
  d8(d'16 cis d8 a16 g a8 fis16 e | fis8) d16(e fis8) a(fis) e16 d | % 100b
  g8 16(fis g8) b e, g | a(g fis) e fis e16 d |
  a'8 8 r e cis e | a, e' a(b) a(gis) | fis(cis) fis, a' d, fis | b, d cis(b) cis(d) | % 101a
  e8 e r e e' d | cis b ais cis fis,(ais) | b a gis b e,(gis) | a(gis) fis a(cis,) e |
  dis16(cis dis e fis8) b dis b | e4 e, r | r8 eis16(fis gis8) cis cis,(e) | fis4. cis'8 ais fis | % 102a
  b8 b r b, cis(e) | fis e16(d cis8) d(e4) | a,4 r r | R2. |
  R2.*4 |
  R2.*8 | % 103ab
  R2.*2 | r4 r8 a cis(e) | a(e) a, g' fis(e |
  d8 a') d b(e,) fis | g fis(g) e cis e | fis(cis) fis, fis' gis(ais | b) fis dis e fis4 |
  b,4 r r | R2. | r4 r r8 a | d(cis b d) fis a | % 104a
  gis4 4 r8 gis, | a(cis e a) cis e | ais,4 4 r | b b, r8 b' |
  e8 cis ais fis d b' | g(fis16 e d8) e fis4 | b, r r | R2. |
  R2.*4 | % 105a
  R2.*2 | r4 r8 fis' b cis | d \tuplet 3/2 {e16(d cis)} d8 e,16(f) gis(a) b(cis) |
  d8 cis16(b) cis8 fis, gis16(fis) eis(fis) % 105c
  b8 \tuplet 3/2 {cis16(b a)} b8(cis,16 dis eis fis gis a |
  b8) a16(gis) a8 cis b16(a) gis(fis) |
  eis4 r16 cis(dis) eis fis(eis fis gis |
  a16 b a gis a fis eis fis gis ais) b(cis) | % 105d
  d8 \tuplet 3/2 {e16(d cis} d8) b gis4~ |
  gis8(a16 b a gis) fis(e) d(cis) cis'8~ |
  cis8 d16(cis) b(a gis fis d'8) cis |
  b16(ais)b4 d,8 cis dis16(eis) | % 105e
  fis16(gis) a(b) cis8 fis, cis16(d) cis8 |
  fis,4 r8 d'(fis) a | d4 8 g, a a, |
  d4 d r | R2.*3 | % 106a
  r4 r8 a(d) e | % 106b
  fis16(g fis e d cis d e fis g fis g |
  a16 b a g fis g fis e d e fis d |
  g8) 16(fis g8) e cis e |
  a8 a r g16(fis) e8 a | fis d r d(fis) a | d4 d,8 e d cis | b4 8 d(g) b | % 106c
  e,8(g) fis e dis g | a a, r a'4 g8 | fis(e dis fis b, dis | e d cis e a, cis | % 107a
  d8 cis b d fis a | gis16 fis gis a) b8 g e g | % 107b
  a4 a,8 a'4 8 | ais16(gis ais b) cis8 ais fis ais |
  b4 b,8 8 8 8 | e a, r e'(fis) a | b a16g fis8. g16 a4 | d, r r | % 107c
  R2.*20 | % 108
}

wordsBass = \lyricmode {
  \Erc \rc \erc
  \rc \rc \erc \r_tdc __ \ertdc % 100
  \erc \rc \erc \rc \ert_dc \t_dc \rc
  \rt_dc \rsss % 102
  \eaicc \sadDPc \adDPc\aicc \aicc \sadDPc \DPc
                                % 104
  \eivecgc \vecgc \cgc \jv_emc \jvemc \vemc \crnefc
  \crnefc \nefc \crc \nefc \crnefc % 106
  \crnefc \crc \nefc \nefc \crnefp
}

wordsBassMidi = \lyricmode {
  \MErc \Mrc \Merc
  \Mrc \Mrc \Merc \Mrtdc \Mertdc % 100
  \Merc \Mrc \Merc \Mrc \Mertdc \Mtdc \Mrc
  \Mrtdc \Mrsss % 102
  \Meaicc \MsadDPc \MadDPc\Maicc \Maicc \MsadDPc \MDPc
                                % 104
  \Meivecgc \Mvecgc \Mcgc \Mjvemc \Mjvemc \Mvemc \Mcrnefc
  \Mcrnefc \Mnefc \Mcrc \Mnefc \Mcrnefc % 106
  \Mcrnefc \Mcrc \Mnefc \Mnefc \Mcrnefp
}

pianoRHone = \relative {
  \global \ov
  r4 r8 <d' fis a> <d a' d> <a' cis e> |
  <a d fis>8 \tuplet 3/2 {<e' g>16 [ <d fis> <cis e> ] } <d fis>8 <d g b>-. [ <d fis a>-. <a cis e g>-. ] |
  \vo fis'16 e d e fis g a b a g fis e |
  d8 e16 fis g8 a g16 fis e d | % 99b
  e8 fis16 g a g a b a g fis e |
  fis8 \tuplet 3/2 {g16 fis e} fis8 g a b |
  e,16 a gis fis e d cis d e fis e fis |
  e8 fis16 gis a8 <fis b> e <d e gis> | % 99c
  \ov <a cis e a>4 r r |
  r8 <fis, a d>8-.(q-. q-. q-. q-.) |
  r8 <a d fis>-.(q-. q-. q-. q-.) |
  r8 <g cis e>-.(q-. q-. q-. q-.) | % 100a
  r8 <cis e g>-.(q-. q-. q-. q-.) |
  r8 <a d fis>-.(q-.) <d fis a> [ <d a' d> <a' cis e> ] |
  <a d fis>8 \tuplet 3/2 {<e' g>16 <d fis> <cis e>} <d fis>8 <d g b> <d fis a> <a cis e g> |
  <a d fis>8 r <fis a d> r <a d fis> r | % 100b
  <d fis a>8 r r q16 <e g> <d fis a>8 <a c>~ |
  q8 <b d b'>16 a' <g b>8 <d g>16 fis <e g>8 <b e> |
  cis16 a b cis \vo d e fis g a8 g16 fis |
  \ov <cis e g>8 <cis a'>16 [ <d b'> ] <e cis'> <fis d'> <e cis'> <fis d'> <e cis'> <fis d'> <e cis'> <d b'> | % 101a
  <cis a'>8 \tuplet 3/2 {<b d>16 <a cis> <gis b>} <a cis>8 <e gis d'> <e a cis> <cis eis b'> |
  <cis fis a>16(<eis gis> <fis a>8) \repeat unfold 4 {<fis' ais>16 <gis b>} |
  <fis a>8 \vo cis16( [ b ] ) e8 gis, a d |
  <a cis>8(b) \ov <e, gis>16 <fis a> <g b>8-. <fis ais cis>-. <fis b d>-. | % 101b
  <cis' e>8 \tuplet 3/2 {<d fis>16(<cis e> <b d>)} <cis e>8-. 16(<b d>) <cis e>8-. <d fis>16(<cis e>) |
  <fis, b d>8 \tuplet 3/2 {<cis' e>16(<b d> <a cis>)} <b d>8-. 16(<a cis>) <b d>8-. <e, cis' e>16(<b' d>) |
  <e, a cis>8 \tuplet 3/2 {<b' d>16(<a cis> <gis b>)} <a cis>8-. 16(<gis b>) <a cis>8-. <e a d>16(cis') |
  <fis, b>8 <fis, b> <fis b dis> <b dis fis> \vo b'4~ | % 102a
  \ov <b, e a b>8 <gis b e> <b e gis> <e gis b> <gis b d> <gis b> |
  <gis b cis>8 <gis, cis> <gis cis eis> <cis e gis> \vo cis'4~ |
  \ov <cis, fis b cis>8 <ais cis fis> <cis fis ais> <fis ais cis> <fis ais cis e> <fis ais cis> |
  <fis b d>8 <e b' e>16(d') <e, a cis>8 <gis d' fis> \vo e'16 d cis b | % 102b
  a4. \ov <fis a>8 <e a cis> <d e gis b> |
  <cis e a>4 r8 <a cis e> <a e' a> <e' gis b> |
  <e a cis>8 \tuplet 3/2 {<b' d>16 <a cis> <gis b>} <a cis>8 <a d fis> <a cis e> <e gis b d> |
  \vo cis'16 b a b cis d e fis e d cis b | % 102c
  \ov <fis a>8 <gis b>16 <a cis> \vo d8 e d16 cis b a |
  <gis b>8 cis16 d e d e fis \ov <a, cis e> <b d> <a cis> <gis b> |
  <a cis>8 \tuplet 3/2 {<b d>16 <a cis> <gis b>} \vo cis8 d e fis |
  \ov <gis, b>4 r8 8 <ais cis> <b d> | % 103a
  <cis e>8 \tuplet 3/2 {<d fis>16 <cis e> <b d>} <cis e>8 <e g> <d fis> <cis e> |
  <b d>8-. 16(<ais cis>) <b d>8-. 16(<a cis>) <cis e>8-. <b d>16(<ais cis>) |
  <b d>16 <ais cis> b q \vo d e fis g fis e d cis |
  \ov <b d>16 e <d fis>(<cis e>) <b d> fis q(<ais cis>) <b d> cis q(<cis e>) | % 103b
  <b d>16 cis b <a cis> <b d> <cis e> <d fis>8 <cis e> <b d> |
  <a cis>8-. 16(<gis b>) <a cis>8-. 16(<gis b>) <b d>8-. <a cis>16(<gis b>) |
  <a cis>16 <gis b> a q \vo cis d e fis e d cis b |
  \ov <a cis>16 d q <gis, b> \vo cis8 e16 fis e fis e fis | % 103c
  8 fis16 gis a8 <fis b> e <d e g> |
  <cis e a>4. \ov r8 r4 | r4 r8 <cis, e a> <d fis a d> <g a cis e> |
  \vo fis'16 e d e fis8 \ov r8 r4 | % 103d
  r4 r8 <e g>16(<d fis>) <e g>8 <cis e>16(<b d>) |
  <cis e>8 <ais cis>16(<gis b>) <fis a cis>8 <ais, fis'> <b fis' b> <e fis cis'> |
  \vo d'8 \tuplet 3/2 {e16(d cis)} d8 g fis e |
  \ov <fis, b d>16 e' d cis b ais <b d> <cis e> <b d fis>8 <b e g> | % 104a
  <cis fis a>8 \tuplet 3/2 {<g' b>16(<fis a> <e g>)} <fis a>8-. 16(<e g>) <fis a>8-. <b, g' b>16(<fis' a>) |
  <b, e g>8 \tuplet 3/2 {<fis' a>16(<e g> <d fis>)} <e g>8-. 16(<d fis>) <e g>8 <a, fis' a>16(<e' g>) |
  <a, d fis>8 \tuplet 3/2 {<e' g>16(<d fis> <cis e>)} <d fis>8-. 16(<e g>) <d fis>8-. <a e' g>16(<d fis>) |
  \vo e8 \tuplet 3/2 {b16(a gis)} d'4. 8~ | % 104b
  d8 \tuplet 3/2 {cis16(b a)} e' fis e fis e fis e fis |
  e4. 4 8~ |
  e8 \tuplet 3/2 {dis16(cis b)} \repeat unfold 4 {fis' g}
  e8 fis16 g fis4. g16 fis | % 104c
  <g, b e>8 <g ais> <fis b> <e g> fis <ais e'> |
  \ov <fis b d>8 cis'16 d b8 <d, fis> <fis b> <fis ais cis> |
  <fis b d>8 \tuplet 3/2 {<cis' e>16(<b d> <ais cis>)} <b d>8 <a c fis> <g b e> <fis a dis> |
  <g b e>8 r <e g> <g b e> <e ais> <d fis b> | % 105a
  <e g ais cis>8 \tuplet 3/2 {<b' d>16(<ais cis> <gis b>)} <ais cis>8 <g cis e> <fis b d> <e ais cis> |
  <fis b d>8 r <d fis> <fis b d> <b d fis> <fis b d> |
  \vo b8 \tuplet 3/2 {c16(b a)} \ov <dis, b'>8 <b' fis' a> <b e g> <b dis fis> |
  \vo <e g>16 fis e fis g a b(ais) cis(b) ais(gis) | % 105b
  \ov <d fis>16(<cis e> <b d> <ais e'>) <fis b fis'>8 <g b> \vo d'16(cis b ais) |
  \ov <d, fis b>8 r <fis b d> r q r |
  <e b' d>8 r <e gis b d> r q r |
  <e b' d>8 r <e a cis> r <cis a' cis> r | % 105c
  <cis gis' b>8 r q r q r |
  q8 r <cis fis a> r <d fis b> r |
  <gis, cis eis>8 r \vo \crossStaff cis \ov r <cis fis cis'> r |
  <cis fis a>8 r <a cis fis> r <fis' ais fis'> r | % 105d
  <fis b d>8 r q r <gis b d> r |
  q8 r <e b' d> r <e a cis> r |
  <a fis'>8 r <d, fis b> r <d fis d'> r |
  <b d fis>8 r <d fis b> r <cis gis' b> r | % 105e
  <cis fis a>8 r <a cis fis> r <gis cis eis> r |
  <a cis fis>4 r8 <d fis a> <d a' d> <a' cis e> |
  <a d fis>8 \tuplet 3/2 {<e' g>16(<d fis> <cis e>)} <d fis>8 <d g b>-. [ <d fis a>-. <a cis e g>-. ] |
  \vo fis'16 e d e fis g a b a g fis e | % 106a
  d8 e16 fis g8 a g16 fis e d |
  e8 fis16 g a g a b a g fis e |
  fis8 \tuplet 3/2 {g16(fis e)} fis8 g a b |
  \ov <cis, e>4 r r | % 106b
  <d fis a>8 r <d fis a d> r <d fis a> r |
  <a d fis>8 <fis a d>-.( [ q-. q-. q-. q-. ] ) |
  r8 <e g cis>-.( [ q-. q-. q-. q-. ] ) |
  r8 <g cis e>-.( [ q-. q-. q-. q-. ] ) | % 106c
  <fis a d>8 <fis' a>16 <e g> \repeat unfold 4 {<d fis> <e g>} |
  <d fis>8 \tuplet 3/2 {<e g>16(<d fis> <cis e>)} <d fis>8 <a cis g'> <a d fis> <fis ais e'> |
  <fis b d>8 <d' fis>16 <cis e> \repeat unfold 4 {<b d> <cis e>} |
  <b d>8 <a cis fis>16 e' <a, d a'>8 <g cis> <f a d> <b e g> | % 107a
  \vo <d fis>8 e \ov <a, cis>16 <b d> <cis e>8 <b dis fis> <b e g> |
  <b dis fis a>8 \tuplet 3/2 {<g' b>16(<fis a> <e g>)} <fis a>8-. q16(<e g>) <fis a>8-. <b, g' b>16(<fis' a>) |
  <b, e g>8 \tuplet 3/2 {<fis' a>16(<e g> <d fis>)} <e g>8-. 16(<d fis>) <e g>8-. <a, fis' a>16(<e' g>) |
  <a, d fis>8 \tuplet 3/2 {<e' g>16(<d fis> <cis e>)} <d fis>8-. 16(<cis e>) <a d fis>8-. <a d g>16(fis') | % 107b
  \vo e16 d \repeat unfold 5 {e fis} |
  g16 fis g a \repeat unfold 4 {g <fis a>} |
  fis16 e \repeat unfold 5 {fis g} |
  a16 g <fis a> <e b'> \repeat unfold 4 {<fis a> <g b>} | % 107c
  g8 a16 g fis8 b a16 g fis e |
  d16 e fis g a d, d'4 cis8 |
  d4 \ov r8 <cis, e> <dis fis> <e g> |
  <fis a>8 \tuplet 3/2 {<g b>16(<fis a> <e g>)} <fis a>8 <a c> <g b> <fis a> | % 108a
  <e g>8-. 16(<dis fis>) <e g>8-. 16(<dis fis>) <fis a>8-. <e g>16(<d fis>) |
  \vo g16 fis e fis g a b c b a g fis |
  \ov <e g>16 a q <dis, fis> e b cis d e fis g <fis a> |
  <e g>16 fis e <d fis> <e g> <fis a> <g b>8 <fis a> <e g> | % 108b
  <d fis>8-. 16(<cis e>) <d fis>8-. 16(<cis e>) <e g>8-. <d fis>16(<cis e>) |
  \vo fis16 e d e fis g a b a g fis e |
  \ov <d fis>16 g q <cis, e> d q <d fis> <e g> <fis a> <g b> <fis a> <g b> |
  \vo a16 b a b a g fis g a g fis e | % 108c
  \ov <b d>16 e d cis b ais b cis <b d> <cis e> <d fis> <e g> |
  <fis a>8 \tuplet 3/2 {<g b>16(<fis a> <e g>)} <fis a>8-. 16(<e g>) <fis a>8-. <b, g' b>16(<fis' a>) |
  <b, e g>8 \tuplet 3/2 {<fis' a>16(<e g> <d fis>)} <e g>8-. 16(<d fis>) <e g>8-. <a, fis' a>16(<e' g>) |
  <a, d fis>8 \tuplet 3/2 {<e' g>16(<d fis> <cis e>)} <d fis>8-. 16(<cis e>) <d fis>8-. <a d g>16(fis') | % 108d
  \vo e16 d \repeat unfold 5 {e fis} |
  \ov <d e g>16 fis \repeat unfold 5 {<e g> <fis a>} |
  \vo fis16 e \repeat unfold 5 {fis g} |
  \ov <e fis a>16 g \repeat unfold 5 {<fis a> <g b>} | % 108e
  \vo g8 <e a>16 g <d fis>8 b' a16 g fis e |
  \ov d16 <cis e> <d fis> <e g> <d fis a>8 <b d g> <a cis e> <a cis e a> |
  <a d fis>2.\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  s2.*2 | <a' d>8 a d d d d |
  b8 <g cis>16 <a d> <b e>8 <a e'> a <gis b> | % 99b
  <a cis>8 a cis cis d cis |
  d8 \tuplet 3/2 {e16 d cis} d e d e d e d e |
  cis8 r a a16 b cis d cis d |
  a16 d cis b cis8 d cis b16 a | s2.*3 | % 99c
  s2.*4 | % 100a
  s2.*3 | s4 a8 <a cis> <a d> q |
  s2.*3 | s8 <e gis> <e a> d e <fis a> | % 101a
  e8 16 <dis fis> s2 | s2.*3 |
  s2 <dis fis>8 <b fis' a> | s2. | s2 <e gis>8 <cis gis' b> | s2. | % 102a
  s2 a'8 e | cis fis e s4. | s2.*2 |
  e8 e a cis16 b cis8 e, | s4 <fis b>8 <e b'> <e a> <dis fis> | e e gis <gis b> s4 | s a8 16 b a b a b |
  s2.*3 | s4 b8 <b d> b ais | % 103a
  s2.*3 | s4 a8 a a gis |
  s4 a8 cis16 b cis8 gis | e'16 d cis b cis8 b cis b16 a | a4. r8 r4 | s2. |
  <fis a>8 a <a d> s4. | s2.*2 | <d, fis>8 <fis ais> <fis b> <b e> <ais cis> <fis ais cis> |
  s2.*4 | % 104a
  b8 e, <e gis> <gis b> e <e b'> | <e a> e <a cis> e a b | cis8 \tuplet 3/2 {d16(cis b)} cis8 fis, cis' <fis, cis'> | <fis b> fis <b d> d <b e> <b dis> |
  <g b>8 s cis b16 ais b cis d8 | s2 d,16 e fis8 | s2.*2 |
  s2.*3 | <dis fis>8 <e g> s2 | % 105a
  b'16 a g a b8 e e e | s2 <fis, b>8 <cis fis> | s2.*2 |
  s2.*4 |
  s2.*4 |
  s2.*4 |
  <a' d>8 a d d d d | b <g cis>16 <a d> <b e>8 <a e'> a <gis b> | <a cis> a cis cis d cis | d16 e d cis d e d e d e d e | % 106a
  s2.*8 |
  s2. | a,8 16 <gis b> s2 | s2.*2 | % 107a
  s2. | b8 <b d> q q q q | d cis <cis e> q q q | cis q q q q q |
  e8 dis8 8 8 8 8 | e <a, e'> <a d> <cis g'> d a | fis d'16 e fis8 a16 g fis8 e | <d fis>4 s2 |
  s2.*2 | e16 dis e dis e8 g e dis | s2. | % 108a
  s2.*2 | d16 cis d cis d8 <d fis> d cis | s2. |
  <d fis>8 <cis e> d cis d a | s2.*3 |
  s2. | b8 d d d d d | s2. | cis8 e e e e e |
  s2. | e8 a, a d d cis | s2.*2 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLH = \relative {
  \global \ov
  r4 r8 <d, d'> <fis fis'> <a a'> |
  <d d'>4 r8 <g, g'> <a a'> <a, a'> |
  <d d'> <d'' fis> [ <a d fis> <fis a d> <d fis a> <fis a d> ] |
  <g, g'>8 <fis fis'> <e e'> <cis cis'> <d d'> <b b'> | % 99b
  <a a'>4 r8 <a' a'>16 <g g'> <fis fis'>8 <a a'> |
  <d, d'>8 <a' a'> <d d'> <b b'> <fis fis'> <g g'> |
  <a a'>8 <b b'> <cis cis'> <b b'> <a a'> <b b'> |
  <cis cis'>8 <a a'> <fis fis'> <d d'> <e e'> <e, e'> | % 99c
  <a a'>8 <a' a'>16 [ <b b'> ] <a a'>8 <g g'> <fis fis'> <e e'> |
  <d d'>4 r r | <d, d'> r r |
  <d' d'>4 r r | <d, d'> r r | <d' d'> r8 q <fis fis'> <a a'> | % 100a
  <d d'>4 r8 <g, g'> <a a'> <a, a'> |
  <d d'>8 r <d, d'> r <d' d'> r | % 100b
  d'8 <fis, fis'>16 <e e'> <fis fis'>8 <a a'> <fis fis'> <d d'> |
  <g, g'>8 <g' g'>16 <fis fis'> <g g'>8 <b b'> <e, e'> <g g'> |
  <a a'> <g g'> <fis fis'> <e e'> <fis fis'> <d d'> |
  <a' a'>8 r a <e e'> <cis cis'> <e e'> | % 101a
  <a, a'>8 <e' e'> <a a'> <b b'> <a a'> <gis gis'> |
  <fis fis'> fis q <a a'> <d, d'> <fis fis'> |
  <b, b'>8 <d d'> <cis cis'> <b b'> <cis cis'> <d d'> |
  <e e'>8 <gis gis'>16 <fis fis'> <e e'>8 8 <e' e'> <d d'> | % 101b
  <cis cis'>8 <b b'> <ais ais'> <cis cis'> <fis, fis'> <a a'> |
  <b b'>8 <a a'> <gis gis'> <b b'> <e, e'> <gis gis'> |
  <a a'>8 <gis gis'> <fis fis'> <a a'> <cis, cis'> <e e'> |
  <dis dis'>8-.(q-. q-. q-. q-. q-.) | % 102a
  <e e'>8-.(q-. q-. q-. q-. q-.) |
  <eis eis'>8-.(q-. q-. q-. q-. q-.) |
  <fis fis'>8-.(q-. q-. q-. q-. q-.) |
  b8 <gis gis'> <a a'> <b, b'> <cis cis'> <e e'> | % 102b
  <fis fis'>8 <e e'>16 <d d'> <cis cis'>8 <d d'> <e e'> <e, e'> |
  <a a'>4 r8 8 <cis cis'> <e e'> |
  <a a'>8 <gis gis'> <fis fis'> <d d'> <e e'> <e, e'> |
  <a a'>8 <a'' cis> <e a cis> <cis e a> <a cis e> <cis e a> | % 102c
  <d, d'>8 <cis cis'> <b b'> <gis gis'> <a a'> <fis fis'> |
  <e e'>4 r8 <e' e'>16 <d d'> <cis cis'>8 <e e'> |
  <a, a'>8 <e' e'> <a a'> <fis fis'> <cis cis'> <d d'> |
  <e e'>8 [ <b b'> ] <e, e'> e'''16 [ fis ] e8 d | % 103a
  cis8 b ais cis fis, ais | b fis' b, fis' ais, fis' |
  b, d, fis <b,, b'> <d d'> <fis fis'> |
  <b b'>8 <fis fis'> <b, b'> b'' gis b | e b gis b e, g | % 103b
  a8 e' a, e' gis, e' | a, cis, e <a,, a'> <cis cis'> <e e'> |
  <a a'>8 [ <e e'> <a, a'> ] <a' a'>16 <gis gis'> <a a'>8 <cis cis'>16 <b b'> | % 103c
  <cis cis'>8 <a a'> <fis fis'> <d d'> <e e'> <e, e'> |
  <a a'> <e' e'> <a a'> <e e'> <cis cis'> <e e'> |
  <a, a'> <e' e'> <a a'> <g g'> <fis fis'> <e e'> |
  <d d'>8 <a a'> <d, d'> <b' b'> <e e'> <fis fis'> | % 103d
  <g g'>8 <fis fis'> <g g'> <e e'> <cis cis'> <e e'> |
  <fis fis'>8 <cis cis'> <fis, fis'> <fis' fis'> <gis gis'> <ais ais'> |
  <b b'>8 <fis fis'> <d d'> <e e'> <fis fis'> <fis, fis'> |
  <b b'>8 fis' b <b, b'> <a a'> <g g'> | % 104a
  <fis fis'>8 <cis' cis'> <dis dis'> <fis fis'> <b, b'> <dis dis'> |
  <e e'>8 <d d'> <cis cis'> <e e'> <a, a'> <cis cis'> |
  <d d'> <cis cis'> <b b'> <d d'> <fis, fis'> <a a'> |
  <gis gis'>8-.(q-. q-. q-. q-. q-.) | % 104b
  <a a'>8-.(q-. q-. q-. q-. q-.) |
  <ais ais'>8-.(q-. q-. q-. q-. q-.) |
  <b b'>8-.(q-. q-. q-. q-. q-.) |
  <e, e'>8 <cis' cis'> <ais ais'> <fis fis'> <d' d'> <b b'> | % 104c
  <g' g'>8 <fis fis'>16 <e e'> <d d'>8 <e e'> <fis fis'> <fis, fis'> |
  <b b'>8 fis''16 [ e ] d8 b d fis | b b, b r r4 |
  r8 \repeat unfold 5 {b'16 cis} | b8 b, b r r4 | % 105a
  r8 \repeat unfold 5 {b'16 cis} | a b a g fis e dis cis b8 b' |
  e,8 g16 fis e8 cis ais fis | % 105b
  <b, b'>8 <cis cis'> <d d'> <e e'> <fis fis'> <fis, fis'> |
  <b b'> d' fis b d16 cis b a | gis8 e e, e' gis, e' |
  a,8 cis e a b16 a gis fis | eis8 cis gis cis cis, cis' | % 105c
  fis,8 a cis fis d b |
  <<{\vo s4 \crossStaff <eis gis> s4} \new Voice {\vt cis8 eis, gis b a gis}>> |
  \ov fis8 cis fis a d cis | b fis b cis16 d e(d cis b) | % 105d
  e8 e, fis gis a b16 cis | d(cis b a) d8 fis b, cis |
  d8 e16 fis e(d cis b) eis8 cis | fis d a b cis cis, | % 105e
  fis4 r8 <d d'> <fis fis'> <a a'> | <d d'>4 r8 <g, g'> <a a'> <a, a'> |
  <d d'>8 <d'' fis> [ <a d fis> <fis a d> <d fis a> <fis a d> ] | % 106a
  <g, g'>8 <fis fis'> <e e'> <cis cis'> <d d'> <b b'> |
  <a a'>4 r8 <a' a'>16 <g g'> <fis fis'>8 <a a'> |
  <d, d'>8 <a' a'> <d d'> <b b'> <fis fis'> <g g'> |
  <a a'>8 a16 b a8 g fis e | % 106b
  d \clef treble <d'' fis a>-.( [ q-. q-. q-. q-. ] ) \clef bass |
  <d,, d'>4 r r | <d, d'> r r |
  <d' d'>4 r r | <d, d'> r8 <d' d'> <fis fis'> <a a'> | % 106c
  <d d'>8 <d, d'> q <e e'> <d d'> <cis cis'> |
  <b b'>8 <b' b'>16 <ais ais'> <b b'>8 <d d'> <g, g'> <b b'> |
  <e, e'>8 <g g'> <fis fis'> <e e'> <fis fis'> <g g'> | % 107a
  <a a'> <cis cis'>16 <b b'> <a a'>8 a q <g g'> |
  <fis fis'>8 <e e'> <dis dis'> <fis fis'> <b, b'> <dis dis'> |
  <e e'>8 <d d'> <cis cis'> <e e'> <a, a'> <cis cis'> |
  <d d'>8 <cis cis'> <b b'> <d d'> <fis, fis'> <a a'> | % 107b
  <gis gis'>8-.(q-. q-. q-. q-. q-.) |
  <a a'>8-.(q-. q-. q-. q-. q-.) |
  <ais ais'>8-.(q-. q-. q-. q-. q-.) |
  <b b'>8-.(q-. q-. q-. q-. q-.) | % 107c
  e8 <cis cis'> <d d'> <e e'> <fis fis'> <a a'> |
  <b b'>8 <a a'>16 <g g'> <fis fis'> <e e'> <fis fis'> <g g'> <a a'>8 <a, a'> |
  <d, d'>4 r8 \clef treble a''''16 b a8 g |
  fis8 e dis fis b, d | e b' e, b' dis, b' | % 108a
  e,8 [ g, b ] \clef bass <e,, e'> <g g'> <b b'> |
  <e e'>8 [ <e, e'> q ] \clef treble <e'' g>16(<d fis>) <cis e g>8 <e g> |
  a8 e cis e a, cis | d a' d, a' cis, a' \clef bass | % 108b
  d,8 [ fis, a ] <d,, d'> <fis fis'> <a a'> |
  <d d'>8 [ <d, d'> q ] a'' <fis d'> <a e'> |
  <<{\vo fis'8 \tuplet 3/2 {g16(fis e)}} \new Voice {\vt d8 [ a ] }>> \ov <d fis> <e g> <d fis> cis | % 108c
  <b fis>8 d, <fis d'> <b, b'> <a a'> <g g'> |
  <fis fis'>8 <e e'> <dis dis'> <fis fis'> <b, b'> <dis dis'> |
  <e e'> <d d'> <cis cis'> <e e'> <a, a'> <cis cis'> |
  <d d'>8 <cis cis'> <b b'> <d d'> <fis, fis'> <a a'> | % 108d
  <gis gis'>8 <gis' b e> [ <b e gis> <e gis b> <gis b e> ] <gis,, gis'> |
  <a a'>8 <cis' e a> [ <e a cis> <a cis e> <cis e g> ] <a,, a'> |
  <ais ais'>8 <ais' cis fis> [ <cis fis ais> <fis ais cis> <ais cis fis> ] <ais,, ais'> |
  <b b'>8 <dis' fis b> [ <fis b dis> <b dis fis> <dis fis a> ] <b,, b'> | % 108e
  e8 <cis cis'> <d d'> <g g'> <fis fis'> <a a'> |
  <b b'>8 <a a'>16 <g g'> <fis fis'>8 <g g'> <a a'> <a, a'> |
  \repeat tremolo 12 {d,32 d'} |
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
          >>
          \new Dynamics \teeny \dynamicsPiano
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
          >>
          \new Dynamics \teeny \dynamicsPiano
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
          >>
          \new Dynamics \teeny \dynamicsPiano
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
          >>
          \new Dynamics \teeny \dynamicsPiano
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
          >>
          \new Dynamics \teeny \dynamicsPiano
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
          >>
          \new Dynamics \teeny \dynamicsPiano
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
          >>
          \new Dynamics \teeny \dynamicsPiano
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
          >>
          \new Dynamics \teeny \dynamicsPiano
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
          >>
          \new Dynamics \teeny \dynamicsPiano
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
          >>
          \new Dynamics \teeny \dynamicsPiano
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
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
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
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
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
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
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
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
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
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
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
