\version "2.25.26"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 20. Sanctus (chorus)"
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
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup \bold\with-color "red" { \rhythm { 8. 16 } ⇒ \rhythm { \tuplet 3/2 {4 8 } } } 4=120 s1*47
  \tempo 8=120
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "126a" } s1*3
  \textMark \markup { \box "126b" } s1*3
  \textMark \markup { \box "127a" } s1*3
  \textMark \markup { \box "127b" } s1
  \mark \markup\circle\bold A       s1*2
  \textMark \markup { \box "128a" } s1*3
  \textMark \markup { \box "128b" } s1
  \mark \markup\circle\bold B       s1*2
  \textMark \markup { \box "129a" } s1*3
  \textMark \markup { \box "129b" } s1
  \mark \markup\circle\bold  C      s1*2
  \textMark \markup { \box "130a" } s1*4
  \textMark \markup { \box "130b" } s1*2
  \mark \markup\circle\bold D       s1*2
  \textMark \markup { \box "131a" } s1*2
  \mark \markup\circle\bold E       s1*2
  \textMark \markup { \box "131b" } s1*4
  \mark \markup\circle\bold F
  \textMark \markup { \box "132a" } s1*4
  \textMark \markup { \box "132b" } s1*3
  \textMark \markup { \box "133a" } s4.*8
  \textMark \markup { \box "133b" } s4.*8
  \textMark \markup { \box "134a" } s4.*2
  \mark \markup\circle\bold G       s4.*6
  \textMark \markup { \box "134b" } s4.*7
  \mark \markup\circle\bold H       s4.
  \textMark \markup { \box "135a" } s4.*8
  \textMark \markup { \box "135b" } s4.*5
  \mark \markup\circle\bold I       s4.*3
  \textMark \markup { \box "136a" } s4.*8
  \mark \markup\circle\bold K
  \textMark \markup { \box "136b" } s4.*8
  \textMark \markup { \box "137a" } s4.*7
  \mark \markup\circle\bold L
  \textMark \markup { \box "137b" } s4.*7
  \textMark \markup { \box "138a" } s4.*5
  \mark \markup\circle\bold M       s4.*3
  \textMark \markup { \box "138b" } s4.*7
  \textMark \markup { \box "139a" } s4.*7
  \textMark \markup { \box "139b" } s4.*5
  \mark \markup\circle\bold N       s4.*2
  \textMark \markup { \box "140a" } s4.*7
  \textMark \markup { \box "140b" } s4.*7
}

dynamicsSopI = {
  \override DynamicTextSpanner.style = #'none
}

sopranoI = \relative {
  \global
  fis''4 d \tuplet 3/2 4 {d8(cis d e d e} |
  fis4) d \tuplet 3/2 4 {e8(d e fis e fis} |
  g4) d \tuplet 3/2 4 {cis8(b cis d cis d} |
  \tuplet 3/2 4 {e8 d e cis b cis d cis d e d e} | % 126b
  \tuplet 3/2 4 {fis8 e fis b, cis d e fis gis a gis a} |
  \tuplet 3/2 4 {d,8 e fis e fis d cis b cis a cis b} |
  \tuplet 3/2 {cis8 d e)} 4 r2 | % 127a
  \tuplet 3/2 {cis8(d e)} 4 r2 |
  \tuplet 3/2 {d8(e fis)} 4 r2 |
  R1 | \tuplet 3/2 4 {cis8(d e fis e fis d e fis g fis g} | % 127b
  \tuplet 3/2 4 {e8 fis g a g a fis e fis d fis e} |
  fis4) d r2 | d4 a r2 | g'4 d \tuplet 3/2 4 {g8(a g fis g fis} | % 128a
  \tuplet 3/2 4 {8 fis e g a g fis g fis e fis e} | fis1~ | 2) 2 |
  d1~ | 2 2 | 1(| % 129a
  e2) b | e8. b16 cis4~\tuplet 3/2 {cis8 b cis} b4~ | \tuplet 3/2 {b8(ais) b} ais8. 16 b4 r |
  e4 b \tuplet 3/2 4 {g'8(a g e fis e} | % 130a
  \tuplet 3/2 4 {cis8 b cis e d e} a4) cis, |
  d4 a \tuplet 3/2 4 {fis'8(g fis d e d} |
  \tuplet 3/2 4 {b8 cis d g, a) b} a8. 16 fis4 |
  g4 a4 8. 16 4 | R1*2 | r4 b~\tuplet 3/2 4 {8(cis b a b g} | % 130b
  \tuplet 3/2 4 {fis8 gis a b a b gis a b cis b cis} | % 131a
  \tuplet 3/2 4 {a8 b cis d cis d b cis d e d e} |
  cis1~ | 2) 2 |
  cis1( | d2) a | fis'1~ | 2 2 | % 131b
  \tuplet 3/2 4 {b,8(a b d cis d} fis4) b, | % 132a
  b4 gis \tuplet 3/2 4 {gis'8(a gis e fis e} |
  \tuplet 3/2 4 {cis8 b cis e d e} a4) cis, |
  fis4 4 \tuplet 3/2 {eis8(fis) gis} cis,4 |
  d4 d \tuplet 3/2 {cis8(d) e} a,4 | % 132b
  b4 4 \tuplet 3/2 4 {a8(b cis d) cis b} |
  gis'8. cis,16 fis2(eis8.) fis16 \section \time 3/8 |
  fis8 r r | R4.*7 | % 133a
  R4.*4 | a,8 8 8 | fis'8 8 8 | b, b cis16(d | e fis g fis e d |
  cis8) b16(a) d8~ | 16(e) cis8.(d16) | d8 fis16(g fis e | % 134a
  d16 cis b cis d b | cis d e fis e d | cis b a8 cis |
  d8. e32 d cis16 d | e d e) fis e(d) |
  cis8 a8 16(b | cis d e d cis e | d8) d d | 16(b e d e8~ | % 134b
  e16 cis d e) d(e) | fis(e) 4~ | 8 d r | r e16(fis g e |
  fis16 g e fis g e | fis g a g fis g | e d cis d e fis | % 135a
  g8) b, e | e dis r | R4.*2 | dis8 fis8 8 |
  fis8 e e | e(fis16 g a8~ | a) dis, e | a,8. b16 g fis | % 135b
  g(a) fis8.(e16) | 8 g'4~ | 8 e a | fis4.~ |
  fis8 d g | e4 8 | fis,8 8 8 | d' d d | gis,8 8 ais16(b | % 136a
  cis16 d e d cis b | ais8) gis16(fis) b8~ | 16(cis) ais8.(b16) |
  b8 r r | R4.*3 | fis'8 8 8 | 8 d r | r cis16(d e cis | % 136b
  d16 e cis d e cis |
  d8.) 16 a8 | a a a | fis'8 8 8 | b, b cis16(d | % 137a
  e16 fis g fis e d | cis8) b16(a) d8~ | 16(e) cis8.(d16) |
  d8 fis16(g fis e | d cis b cis d b | cis d e fis e d | % 137b
  cis16 b a b cis e | d cis d e cis d | e d e) fis e(d) | cis8 a e'~ |
  e8 a16(g) fis(e) | d8(g4~ | 8) b, e | e e, d'16(e | % 138a
  fis16) e e(g fis e) | d8(a) fis | r d'16(c b d | g8) e b |
  cis16(d e d cis b | a8) g16(fis) b8~ | 16(c) a8.(b16) | % 138b
  b8 e16(fis g e | a8 a,16 b cis a | d cis d e fis d | b a b cis d b |
  g'16 fis e d cis b | cis d e fis g e | fis e d cis b d | % 139a
  e4.~ | 8) cis a | fis' d r | a a a |
  fis'8 8 8 | b, b cis16(d | e fis g fis e d | cis8) b16(a) d8~ | % 139b
  d16(e) cis8.(d16) | 8 c16(b c d | b cis d cis d e |
  cis16 d e d e fis | d e fis e fis g | e fis g fis g a | % 140a
  fis16 g a g fis g | e d e fis g e | fis g e fis g e | fis g a g fis g |
  e16 cis d e fis g | a g fis e d cis | d b cis d e fis | % 140b
  g16 fis e d cis b | a8.) g'16 fis8~ | 16(e) 8.(d16) | 4.\fermata |
  \bar "|."
}

Sc    = \lyricmode { San -- ctus, }
sc    = \lyricmode { san -- ctus, }
sDDSc = \lyricmode { san -- ctus Do -- mi -- nus De -- us Sa -- ba -- oth, }
sDDSp = \lyricmode { san -- ctus Do -- mi -- nus De -- us Sa -- ba -- oth. }
DDSp  = \lyricmode { Do -- mi -- nus De -- us Sa -- ba -- oth. }
sDDc  = \lyricmode { san -- ctus Do -- mi -- nus De -- us, }
DSp   = \lyricmode { De -- us Sa -- ba -- oth. }

Pscetg_ec = \lyricmode { Ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a __ e -- jus, }
pscetgec  = \lyricmode { ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a e -- jus, }
pscetg_ec = \lyricmode { ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a __ e -- jus, }
pscgec    = \lyricmode { ple -- ni sunt cœ -- li glo -- ri -- a e -- jus, }
pscetc = \lyricmode { ple -- ni sunt cœ -- li et ter -- ra, }
pscetgc  = \lyricmode { ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a, }
pscetgep = \lyricmode { ple -- ni sunt cœ -- li et ter -- ra glo -- ri -- a e -- jus. }
scetgep  = \lyricmode { sunt cœ -- li et ter -- ra glo -- ri -- a e -- jus. }
scetg_ec  = \lyricmode { sunt cœ -- li et ter -- ra glo -- ri -- a __ e -- jus, }
etgec     = \lyricmode { et ter -- ra glo -- ri -- a e -- jus, }
pscgc     = \lyricmode { ple -- ni sunt cœ -- li glo -- ri -- a, }
pscc      = \lyricmode { ple -- ni sunt cœ -- li, }
pgec      = \lyricmode { ple -- ni glo -- ri -- a e -- jus, }
pgc       = \lyricmode { ple -- ni glo -- ri -- a, }
gc        = \lyricmode { glo -- ri -- a, }
gec       = \lyricmode { glo -- ri -- a e -- jus, }
g_ec      = \lyricmode { glo -- ri -- a __ e -- jus, }
g_ep      = \lyricmode { glo -- ri -- a __ e -- jus. }
gegec      = \lyricmode { glo -- ri -- a e -- jus glo -- ri -- a e -- jus, }
pc        = \lyricmode { ple -- ni, }

wordsSopI = \lyricmode {
  \Sc \repeat unfold 11 \sc
  \sDDSc % 129b
  \sc \sc \sc \sDDSc \sc
  \sc \sc % 131b
  \sc \sc \sc \sDDSc \sDDSp

  \Pscetg_ec % 133
  \gec \gc \gec \gec
  \pscc \scetg_ec \pscetc
  \pscetg_ec \pscgc % 136
  \pscetg_ec \gec \pscetg_ec
  \gc \g_ec \gec
  \pscetg_ec \g_ep % 139
}

MSc    = \lyricmode { San "ctus, " }
Msc    = \lyricmode { san "ctus, " }
MsDDSc = \lyricmode { san "ctus " Do mi "nus " De "us " Sa ba "oth, " }
MsDDSp = \lyricmode { san "ctus " Do mi "nus " De "us " Sa ba "oth. " }
MDDSp  = \lyricmode { Do mi "nus " De "us " Sa ba "oth. " }
MsDDc  = \lyricmode { san "ctus " Do mi "nus " De "us, " }
MDSp   = \lyricmode { De "us " Sa ba "oth. " }


MPscetgec = \lyricmode { Ple "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a " e "jus, " }
Mpscetgec = \lyricmode { ple "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a " e "jus, " }
Mpscgec   = \lyricmode { ple "ni " "sunt " cœ "li " glo ri "a " e "jus, " }
Mpscetc   = \lyricmode { ple "ni " "sunt " cœ "li " "et " ter "ra, " }
Mpscetgc  = \lyricmode { ple "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a, " }
Mpscetgep = \lyricmode { ple "ni " "sunt " cœ "li " "et " ter "ra " glo ri "a " e "jus. " }
Mscetgep  = \lyricmode { "sunt " cœ "li " "et " ter "ra " glo ri "a " e "jus. " }
Mscetgec  = \lyricmode { "sunt " cœ "li " "et " ter "ra " glo ri "a " e "jus, " }
Metgec     = \lyricmode { "et " ter "ra " glo ri "a " e "jus, " }
Mpscgc     = \lyricmode { ple "ni " "sunt " cœ "li " glo ri "a, " }
Mpscc      = \lyricmode { ple "ni " "sunt " cœ "li, " }
Mpgec      = \lyricmode { ple "ni " glo ri "a " e "jus, " }
Mpgc       = \lyricmode { ple "ni " glo ri "a, " }
Mgc        = \lyricmode { glo ri "a, " }
Mgec       = \lyricmode { glo ri "a " e "jus, " }
Mgep       = \lyricmode { glo ri "a " e "jus. " }
Mgegec     = \lyricmode { glo ri "a " e "jus " glo ri "a " e "jus, " }
Mpc        = \lyricmode { ple "ni, " }

wordsSopIMidi = \lyricmode {
  \MSc \repeat unfold 11 \Msc
  \MsDDSc % 129b
  \Msc \Msc \Msc \MsDDSc \Msc
  \Msc \Msc % 131b
  \Msc \Msc \Msc \MsDDSc \MsDDSp

  \MPscetgec % 133
  \Mgec \Mgc \Mgec \Mgec
  \Mpscc \Mscetgec \Mpscetc
  \Mpscetgec \Mpscgc % 136
  \Mpscetgec \Mgec \Mpscetgec
  \Mgc \Mgec \Mgec
  \Mpscetgec \Mgep % 139
}

dynamicsSopII = {
  \override DynamicTextSpanner.style = #'none
}

sopranoII = \relative {
  \global
  d''4 a \tuplet 3/2 4 {a8(g a cis b cis} |
  d4) a \tuplet 3/2 4 {b8(a b c b c} |
  d4) b \tuplet 3/2 4 {g8(fis g a g a} |
  \tuplet 3/2 4 {cis8 b cis g fis g a g a cis b cis} | % 126b
  d8.) a16 b4~\tuplet 3/2 {8 gis a} a4~ |
  \tuplet 3/2 {a8(gis) a} g8. a16 4 \tuplet 3/2 {e8(a g} |
  \tuplet 3/2 {a8 b cis)} 4 r2 | % 127a
  \tuplet 3/2 {a8(b cis)} 4 r2 |
  \tuplet 3/2 {fis,8(g a)} 4 r2 |
  R1 | \tuplet 3/2 {e8(fis g} a4~\tuplet 3/2 {8 g a} b4~ | % 127b
  \tuplet 3/2 4 {b8 a b cis b cis d cis d a d cis} |
  d4) a r2 | a4 fis r2 | d'4 b \tuplet 3/2 4 {e8(fis e d e d} | % 128a
  \tuplet 3/2 4 {cis8 d cis e fis e d e d cis d cis} | d1~ | 2) cis |
  b1~ | 2 a b1~ | % 129a
  b2 2 | 4(\tuplet 3/2 {ais8 b) cis} d8. 16 fis,4 | g8.(e'16) cis4 b8. 16 4 |
  b4 g \tuplet 3/2 4 {e'8(fis e b cis b} | % 130a
  \tuplet 3/2 4 {a8 g a cis b cis} e4) a, |
  a4 fis \tuplet 3/2 4 {d'8(e d a b a} |
  \tuplet 3/2 4 {b8 a b e, fis g a b cis d cis d} |
  \tuplet 3/2 4 {g,8 a b a b g fis e fis d e fis} | % 130b
  g4) g r fis'~ | \tuplet 3/2 {8(g fis e fis d} cis4) 4 |
  r4 d~\tuplet 3/2 4 {8(e d cis d b} |
  a4) fis b8. 16 gis4 | cis a d8. 16 b4 | a1~ | 2 gis | % 131a
  a1~ | 2 2 | d1~ | 2 cis |
  \tuplet 3/2 4 {gis8(e fis b ais b} d4) fis, | % 132a
  gis4 e \tuplet 3/2 4 {d'8(e d b cis b} |
  \tuplet 3/2 4 {a8 gis a cis b cis} e4) a, | a(b2) a4 |
  a4(gis2) fis4 | fis \tuplet 3/2 {eis8(fis gis} a4 \tuplet 3/2 {gis8 a b} | % 132b
  cis4) 4 4. 8 \section \time 3/8 |
  cis8 r r | R4.*7 | % 133a
  R4.*8 |
  R4.*2 | fis,8 8 8 | d' d d | g, g a16(b | cis d e d cis b | % 134a
  a8) gis16(fis) cis'8~ | 16(d) b8.(cis16) |
  cis8 e16(fis e d | cis b a b cis a | b cis d e d cis | % 134b
  b16 a g a b8\trill | cis8. b16 a b | cis b cis) d cis(b) |
  a8 fis r | r cis'16(d e cis |
  d16 e cis d e cis | d e fis e d e | cis b a b cis d | % 135a
  e8) g, g | g fis r | R4.*2 | fis8 b b |
  b8 g g | e(a16 b c8)~ | c a a | fis'8. dis16 e a, | % 135b
  g16(fis) fis(g a8) | g b e | cis4.~ | 8 a d |
  b4.~ | 16(d) cis8 b | ais4 8 | fis'8 8 8 | 8 e16(d) cis(d) | % 136a
  e8 e, e'~ | 16(cis d e) fis(g) | fis(e) cis8.(b16) |
  b8 r r | r cis16(d e cis | d e cis d e cis | d e fis e d e | % 136b
  cis16 d e d cis e | d e fis e d fis | e d cis b cis e | a, g a b cis a |
  d16 e fis e d e | cis b cis d e cis | d4.~ | 16 fis e d e fis | % 137a
  g16 fis e d cis b | a8) b16(cis) d8 | b a r |
  fis8 8 8 | d' d d | g, g a16(b | cis d e d cis b | % 137b
  a8) gis16(fis) cis'8~ | 16(d) b8.(cis16) | 8 e16(fis e d |
  cis16 b a b cis a | b cis d e d cis | b a g a b8\trill | % 138a
  cis8. b16 a b | cis b cis) d cis(b) | a8(fis) d | r fis'16(e d fis | e8) e e |
  e8(e, a16 b | c a b c) d8 | f, a(d,) | d b'16(cis d b | % 138b
  cis16 b cis d e cis | d8 a16 g fis a | g fis f a b8~ |
  b16 c b a g fis | g a b cis d e | d8) a fis | b16(g a b cis d | % 139a
  e4.~ | 8) a, d | cis a r |
  d8 d d | d d e16(fis) | g8 g, g | g e fis16 g | % 139b
  a8 4 | 8 16(g a b | g a b a b cis |
  a16 b cis b cis d | b cis d cis d e | cis d e d e fis | d e fis e d e | % 140a
  cis16 b cis d e cis | d e cis d e cis | d e fis e d e |
  cis16 a b cis d e | fis4.~ | 4.~ | 8 b, cis16 d | % 140b
  e8.) cis16 d8~ | 16(e) cis8.(d16) | 4.\fermata |
}

wordsSopII = \lyricmode {
  \Sc \sc \sc \sDDSc \sc
  \sc \sc \sc % 127
  \sc \sc \sc
  \sc \sc \sDDSc % 129
  \sc \sc \sc \sc \sc \sDDSc
  \sc \sc \sc % 131
  \sc \sc \sc \sDDSp

  \Pscetg_ec \gec \gec % 134
  \pscc \scetg_ec \pc \pscetc
  \pscetgec \gec
  \pscetg_ec \gec % 137
  \gc \gec \gc
  \gec \pscetc \etgec \g_ep
}

wordsSopIIMidi = \lyricmode {
  \MSc \Msc \Msc \MsDDSc \Msc
  \Msc \Msc \Msc % 127
  \Msc \Msc \Msc
  \Msc \Msc \MsDDSc % 129
  \Msc \Msc \Msc \Msc \Msc \MsDDSc
  \Msc \Msc \Msc % 131
  \Msc \Msc \Msc \MsDDSp

  \MPscetgec \Mgec \Mgec % 134
  \Mpscc \Mscetgec \Mpc \Mpscetc
  \Mpscetgec \Mgec
  \Mpscetgec \Mgec % 137
  \Mgc \Mgec \Mgc
  \Mgec \Mpscetc \Metgec \Mgep
}

dynamicsAltoI = {
  \override DynamicTextSpanner.style = #'none
}

altoI = \relative {
  \global
  a'4 fis \tuplet 3/2 4 {fis8(e fis g fis g} |
  a4) fis \tuplet 3/2 4 {g8(fis g a g a} |
  b4) g \tuplet 3/2 4 {e8(fis e fis e fis} |
  \tuplet 3/2 4 {g8 fis g e d e fis e fis g fis g} | % 126b
  a4) fis gis8. 16 e4 | fis8.(d'16) b4 a8. 16 4 |
  e'4 cis \tuplet 3/2 4 {a8(gis a b a b} | % 127a
  cis4) a \tuplet 3/2 4 {b8(a b cis b cis} |
  d4) a \tuplet 3/2 4 {gis8(fis gis a gis a} |
  \tuplet 3/2 4 {b8 a b gis fis gis a gis a b a b} | % 127b
  cis4~ \tuplet 3/2 {8 b) cis} d4~\tuplet 3/2 {8 cis d} |
  e4~\tuplet 3/2 {8(d) e} \tuplet 3/2 4 {a,8(g) a fis(a fis)} |
  a4 fis r2 | fis4 d \tuplet 3/2 4 {b'8(c b a b a} | % 128a
  \tuplet 3/2 {g8 a b)} 4 a~\tuplet 3/2 {8(b a} |
  \tuplet 3/2 {g8 a g} a4~\tuplet 3/2 4 {8 b a g a g} | a1 | b2) fis | % 128b
  fis1( | g2) d | g1~ | % 129a
  g2 fis | \tuplet 3/2 4 {g8(a b e, fis) g} fis8. 16 \tuplet 3/2 {d8 e(fis} | % 129b
  \tuplet 3/2 {e8 d cis~} 8.) fis16 8. 16 4 |
  g4 e \tuplet 3/2 4 {b'8(c b g a g} | % 130a
  \tuplet 3/2 4 {e8 d e g fis g} cis4) e, |
  fis4 d \tuplet 3/2 4 {a'8(b a fis g fis} |
  d8.) 16 e4~\tuplet 3/2 {8 d e} d4~ |
  \tuplet 3/2 {d8(cis) d} cis8. 16 d4 d'~ | % 130b
  \tuplet 3/2 4 {d8(e d cis d b} a4) a |
  r4 b~\tuplet 3/2 4 {8(cis b a b g} |
  \tuplet 3/2 {fis8 e fis} g4~\tuplet 3/2 {8 fis g} a4~ |
  \tuplet 3/2 {a8 b cis} d,4~\tuplet 3/2 {8 cis d} e4~ | % 131a
  \tuplet 3/2 {e8 d e} fis4~\tuplet 3/2 {8 e fis)} b,4 | e1( | fis2) cis |
  fis1~ | 2 g | a1( | b2) fis | % 131b
  \tuplet 3/2 4 {d8(cis d fis e fis} b4) d, | % 132a
  e4 b \tuplet 3/2 4 {b'8(cis b gis a gis} |
  \tuplet 3/2 4 {e8 d e g fis g} cis4) e, | fis(gis2) fis4 |
  fis4(e2) d4 | % 132b
  d4 cis~8. fis16 \tuplet 3/2 {eis8(fis gis~} |
  \tuplet 3/2 4 {gis8 a b a b) gis} 4. fis8 \section \time 3/8 |
  fis8 r r | R4.*7 | % 133a
  R4.*8 |
  R4.*2 | d8 8 8 | b' b b | e, e fis16(g | a b cis b a g | % 134a
  fis8) e16(d) a'8~ | 16(b) gis8.(a16) |
  a8 cis16(d cis b | a g fis g a fis | g a b c b a | g fis e fis g8\trill | % 134b
  a8. g16 fis g | a g a) b a(g) | fis(g) a8 r | R4. |
  R4.*2 | cis8 8 8 | b b r | r fis16(g a fis | % 135a
  g16 a fis g a fis | g a b a g a | fis e fis) g a(fis) |
  g8 e b'~ | b(a16 g fis e | dis8 c'16 b c8~ | 16 b a) g e'(a, | % 135b
  b8) 4 | 8 g16(a b g | a4.~ | 8 fis) d |
  r8 g16(a b g | cis8 e,16 fis g e | fis8.) 16 8 | 8 b b | % 136a
  b8 gis e | e(g) g | fis8. 16 8 | g8(fis4) |
  fis8 r r | r ais16(b cis ais | b cis ais b cis ais | % 136b
  b16 cis d cis b cis | ais b cis b ais cis | b cis d cis b d |
  cis16 b a b g a | fis g e fis g e |
  fis16 g a g fis g | e8.) 16 8 | R4. | r8 b'16(c b a | g4.~ | % 137a
  g16 e fis g) a(fis) | g8 16(fis g a) |
  fis4 r8 | R4.*5 | cis8 8 8 | % 137b
  a'8 8 8 | d, d e16(fis | g a b a g fis | e8) d16(cis) fis8~ | % 138a
  fis16(g) e8.(fis16) | 8 a16(b a g | fis e d e fis d | e fis g a g fis |
  e16 d c d e8\trill | fis8. e16 d e | fis e fis) g fis(e) | % 138b
  d8 b r | R4. | r8 fis'16(g a fis | d cis d e fis d |
  b'16 a g fis e d | e fis g a b cis | a g fis e d fis | % 139a
  g4.~ | 8 a16 g fis e | d8) d' a | a e r |
  a8 a a | b g g | g(e) e | 8. 16 a8~ | 16(g) 4 | fis8 a(fis | d) b' gis | % 139b
  e8(cis') ais | fis(d' b~ | b) a a | a d a | 4.~ | a~ | a~ | % 140a
  a4 8 | cis8 8 8 | b b b | 4 g8 | e a a | b(a4) | 4.\fermata |
}

wordsAltoI = \lyricmode {
  \Sc \sc \sc \sDDSc
  \sc \sc \sc \sDDSc % 127
  \sc \sc \sc \sc
  \sc \sc \sDDSc % 129
  \sc \sc \sc \sDDSc \sc \sc
  \sc \sc \sc % 131
  \sc \sc \sc \sDDc \DSp

  \Pscetg_ec \gec % 134
  \pscgec \g_ec \pgc
  \pscetgec \gc
  \gec \pscetg_ec % 137
  \gec \gec
  \pscetg_ec \pscc \pscetc
  \pscetgep % 140
}

wordsAltoIMidi = \lyricmode {
  \MSc \Msc \Msc \MsDDSc
  \Msc \Msc \Msc \MsDDSc % 127
  \Msc \Msc \Msc \Msc
  \Msc \Msc \MsDDSc % 129
  \Msc \Msc \Msc \MsDDSc \Msc \Msc
  \Msc \Msc \Msc % 131
  \Msc \Msc \Msc \MsDDc \MDSp

  \MPscetgec \Mgec % 134
  \Mpscgec \Mgec \Mpgc
  \Mpscetgec \Mgc
  \Mgec \Mpscetgec % 137
  \Mgec \Mgec
  \Mpscetgec \Mpscc \Mpscetc
  \Mpscetgep % 140
}

dynamicsAltoII = {
  \override DynamicTextSpanner.style = #'none
}

altoII = \relative {
  \global
  \tuplet 3/2 {fis'8(g a)} 4 r2 |
  \tuplet 3/2 {fis8(g a)} 4 r2 |
  \tuplet 3/2 {g8(a b)} 4 r2 |
  R1 | \tuplet 3/2 4 {fis8(g a d, e) fis} e8. 16 cis4 | % 126b
  d4 e4 8. 16 4 |
  cis'4 a \tuplet 3/2 4 {e8(d e gis fis gis} | % 127a
  a4) e \tuplet 3/2 4 {fis8(e fis g fis g} |
  a4) fis \tuplet 3/2 4 {d8(cis d e d e} |
  \tuplet 3/2 4 {gis8 fis gis d cis d e d e gis fis gis} | % 127b
  a4~\tuplet 3/2 {8 g) a fis(e d b') a b} |
  \tuplet 3/2 {g8(fis e} a8.) 16 8. 16 4 |
  \tuplet 3/2 {fis8(g a)} 4 \tuplet 3/2 4 {8(b a g a g} | % 128a
  \tuplet 3/2 {fis8 g a)} 4 \tuplet 3/2 4 {g8(a g fis g fis} |
  b4) g a2~ |
  a2. 4 | fis1~ | 2 cis | % 128b
  d1~ | 2 fis | b,1~ | % 129a
  b2 dis | \tuplet 3/2 4 {g8(fis g cis, d e fis gis ais b ais b} | % 129b
  \tuplet 3/2 4 {e,8 fis g fis g e d cis d b cis d} |
  \tuplet 3/2 4 {e8 dis e g fis g} b4) e, | % 130a
  e4 cis \tuplet 3/2 4 {cis'8(d cis a b a} |
  \tuplet 3/2 4 {fis8 e fis a g a} d4) fis, |
  g4(b8.) e,16 fis8. g16 a8.(d,16) |
  e8.(b16) cis8.(e16) fis8. 16 4 | R1 | r4 g~\tuplet 3/2 4 {8(a g fis g e} | % 130b
  d4) d r e~ |
  \tuplet 3/2 {e8(d e} fis4~\tuplet 3/2 {8 e fis} gis4~ | % 131a
  \tuplet 3/2 {gis8 fis gis} a4~\tuplet 3/2 {8 g a} b8.) g16 |
  cis,1~ | 2 eis |
  cis1( | fis2) g | fis1~ | 2 cis | % 131b
  b'4 fis \tuplet 3/2 4 {d'8(e d b cis b} | % 132a
  \tuplet 3/2 4 {gis8 fis gis b a b} e4) gis, |
  a4 e \tuplet 3/2 4 {cis'8(d cis a b a} |
  fis4) d cis8. 16 4 |
  b'4 b a8. 16 4 | gis8. 16 4 fis d | % 132b
  cis4~\tuplet 3/2 {8(d b} cis4.) 8 \section \time 3/8 |
  cis8 r r | R4.*5 | d8 8 8 | b' b b | % 133a
  e,8 e fis16(g | a b cis b a g | fis8) e16(d) a'8~ | 16(b) gis8.(a16) | % 133b
  a8 cis16(d cis b | a g fis g a fis | g a b c b a | g fis e fis g e |
  a16 fis g a b a | g fis e) a g(a) | fis8 d a'16(g | fis e d e fis d | % 134a
  e16 fis g a g fis | e d cis d e8\trill | fis8. g32 fis e16 fis |
  gis16 fis gis) a gis(fis) |
  e8(cis) a | r cis'16(b a cis | b8) b b | b(b, e16 fis | g e fis g) a8 | % 134b
  d,8 e(a,) | d r r | R4. |
  R4.*2 | e8 a a | g g r | r dis16(e fis d | e fis dis e fis dis | % 135a
  e16 fis g fis e fis | dis cis dis) e fis(dis) |
  b8 b g'~ | g(fis16 e fis g | a8) fis8 8 | 8. g16 e(dis) | % 135b
  e8(b4) | 8 e16(fis g e | a8 cis,16 d e cis | d4.~ |
  d8) g r | r cis,16(d e cis | fis8 ais,16 b cis ais | d4.~ | % 136a
  d8 cis16 b cis8~ | 4.~ | 16 ais b cis) d(cis) | d(b) fis'8(e) |
  d8 b16(cis d b | fis'8) 8 8 | b fis8 8 | d16(cis b cis d b | % 136b
  fis'8) fis, r | r d'16(e fis d | a'8) a a | d a a |
  fis16(e d e fis d | a'8) a,  r | R4. | r8 g'16(fis g a | % 137a
  b16 c b a g fis | e cis) d(e) fis8 | e a, r |
  d8 d d | b' b b | e, e fis16(g | a b cis b a g | % 137b
  fis8) e16(d) a'8~ | 16(b) gis8.(a16) 8 cis16(d cis b |
  a16 g fis g a fis | g a b cis b a | g fis e fis g8\trill | % 138a
  a8. g16 fis g | a g a) b a(g) | fis8 d d16(e | fis g a g fis a | g8) g g |
  g16(e a g a8~ | 16 fis g a) g(a) | b(a) 4 | g8 16(a b g | % 138b
  e16 d e fis g e | a g fis e d fis | g4.~ |
  g16 a b8 b, | e b' a~ | a d,16 e fis d | b e fis g a b | % 139a
  a4.~ | 8) fis8 8 | e cis r |
  fis8 8 8 | g b b | b(b,) b | cis e a, | d(e4) | fis8 d(fis | g) e gis | % 139b
  a8(fis) ais | b(g b | cis) e, e | fis d d | e4.( | d8 e cis | a d a' | % 140a
  e4) a,8 | a' a a | fis8 8 8 | b,(e) e | a(e) fis | g8 4 | fis4.\fermata |
}

wordsAltoII = \lyricmode {
  \Sc \sc \sc \sDDSc
  \sc \sc \sc \sDDSc % 127
  \repeat unfold 5 \sc
  \sc \sc \sc % 129
  \sc \sc \sDDSc \sc \sc
  \sc \sc \sc % 131
  \sc \sc \sc \sDDSc \DDSp

  \Pscetg_ec \gegec % 133
  \gc \gec
  \pscgec \gc \gec \pgec
  \pscetc \pscetgec % 136
  \pscetg_ec \gec
  \gc \gec \gec
  \pscetgec \pscc % 139
  \pscetc \pscetgep
}

wordsAltoIIMidi = \lyricmode {
  \MSc \Msc \Msc \MsDDSc
  \Msc \Msc \Msc \MsDDSc % 127
  \repeat unfold 5 \Msc
  \Msc \Msc \Msc % 129
  \Msc \Msc \MsDDSc \Msc \Msc
  \Msc \Msc \Msc % 131
  \Msc \Msc \Msc \MsDDSc \MDDSp

  \MPscetgec \Mgegec % 133
  \Mgc \Mgec
  \Mpscgec \Mgc \Mgec \Mpgec
  \Mpscetc \Mpscetgec % 136
  \Mpscetgec \Mgec
  \Mgc \Mgec \Mgec
  \Mpscetgec \Mpscc % 139
  \Mpscetc \pscetgep
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global \tuplet 3/2 {d'8(e fis)} 4 r2 |
  \tuplet 3/2 {d8(e fis)} 4 r2 |
  \tuplet 3/2 {b,8(c d)} 4 r2 |
  R1 | \tuplet 3/2 {a8(b cis} d8.) 16 gis,8. 16 cis4 | % 126b
  fis,8.(b16) 4 cis8. 16 4 |
  a'4 e \tuplet 3/2 4 {cis8(b cis d cis d} | % 127a
  e4) cis \tuplet 3/2 4 {d8(cis d e d e} |
  fis4) d \tuplet 3/2 4 {b8(a b cis b cis} |
  \tuplet 3/2 4 {d8 cis d b a b cis b cis d cis d} | % 127b
  e4) cis fis8. 16 d4 | cis e fis8. 16 4 |
  \tuplet 3/2 {d8(e fis)} 4 \tuplet 3/2 4 {8(g fis e fis e} | % 128a
  \tuplet 3/2 {d8 e fis)} 4 \tuplet 3/2 4 {d8(e d c d c} |
  \tuplet 3/2 {b8 c d)} 4 a2~ |
  a2. 4 | d1~ | 2 fis | % 128b
  b,1~ | 2 d | g,1~ | % 129a
  g2 b | \tuplet 3/2 {b8(cis d} e8.) 16 ais,8. 16 d4 | e cis d8. 16 4 | % 129b
  \tuplet 3/2 4 {b8(a b e dis e} g4) b, | % 130a
  cis4 a \tuplet 3/2 4 {g'8(a g e fis e} |
  \tuplet 3/2 4 {d8 cis d fis e fis} a4) a, | b4 b cis8. 16 a4 |
  b8.(g'16) e4 d8. 16 4 | % 130b
  r4 e~\tuplet 3/2 {8(fis e d e cis} |
  b4) b r cis~ | \tuplet 3/2 4 {cis8(d cis b cis a} e'4) e |
  d4~\tuplet 3/2 4 {8(e) d b(a gis cis) d cis} | % 131a
  \tuplet 3/2 {cis8(b a} d8.) 16 \tuplet 3/2 {8(cis) b} e4 |
  a,1~ | 2 cis |
  a1~ | 2 e' | d1~ | 2 fis | % 131b
  fis4 d \tuplet 3/2 4 {fis8(g fis fis g fis} | % 132a
  \tuplet 3/2 4 {e8 d e gis fis gis} 4) gis, |
  cis4 a \tuplet 3/2 4 {e'8(fis e e fis e} |
  d4) b gis8. 16 a4 |
  b4 b cis8. 16 4 | b8. 16 cis4 4 b | % 132b
  \tuplet 3/2 4 {b8(a gis fis eis fis g b) a} b4 \section \time 3/8 |
  a8 a a | fis'8 8 8 | b, b cis16(d | e fis g fis e d | % 133a
  cis8) b16(a) d8~ | 16(e) cis8.(d16) | 8 fis16(g fis e | d cis b cis d b |
  cis16 d e fis e d | cis b a b cis a | d cis d e fis e | % 133b
  d16 cis b) e d(e) | cis(d e8) a, | r d16(e fis d | g8) g g | 4.~ |
  g8 e fis | b,16(g a4) | d,8 a'16(b cis a | d e fis e d fis | % 134a
  g16 fis e d cis d | e fis g) e a8 | d, b r | R4. |
  cis8 8 8 | a' a a | d, d e16(fis | g a b a g fis | % 134b
  e8) d16(cis) fis8~ | 16(g) e8.(fis16) | 8 r r | R4. |
  R4.*2 | a,8 cis a | e' e r | R4.*3 | b8 b b | % 135a
  g'8 g g | cis,8 8 dis16(e | fis g a g fis e | dis8) cis16(b) e8~ | % 135b
  e16(fis) dis8.(e16) | 8 r r | r a,16(b cis a | d8 fis,16 g a fis |
  b8) d r | R4. | r8 fis,16(gis ais fis | b4.~ | % 136a
  b8 cis16 d e fis | g a g fis e d | cis8) ais fis | b8(fis4) |
  fis8 r r | R4.*3 | fis'8 ais, fis' | d b r | R4.*2 | % 136b
  R4.*2 | r8 d16(e fis d | g fis g a g fis | e4.~ | % 137a
  e16 a, d cis) b(a) | b(g') e8(a,) |
  a4 r8 | R4.*5 | a8 a a | % 137b
  fis'8 8 8 | b, b cis16(d | e fis g fis e d | cis8) b16(a) d8~ | % 138a
  d16(e) cis8.(d16) | 8 fis16(g fis e | d c b c d b | c d e fis e d |
  c16 b a b c8\trill | d8. c16 b c | d c d) e d(c) | b8 d r | % 138b
  a4.~ | 8(d, d'~ | d) b b |
  e16(fis g8 g,~ | 8) e e | a8(b16 cis d b | g b cis d e fis | % 139a
  e16 d e8 cis | a) a a | a cis r |
  d8 d d | d d cis16(b) | e4 e,8 | e(cis') d | a8 4 | 8 8(d~ | d) b e | % 139b
  e8(cis) fis | 8(d g~ | 8) e cis | d a a | 4.~ | a~ | a~ | % 140a
  a4 8 | cis8 8 fis | d d b | g(b) e | 4 d8 | b e(a,) | 4.\fermata
}

wordsTenor = \lyricmode {
  \Sc \sc \sc \sDDSc
  \sc \sc \sc \sDDSc % 127
  \repeat unfold 5 \sc
  \sc \sc \sDDSc % 129
  \sc \sc \sc \sDDSc \sc \sc
  \sDDSc \sc \sc \sc % 131
  \sc \sc \sc \sDDSc \DDSp

  \Pscetg_ec \gec \pscetgec % 133
  \pscetg_ec
  \pscc \pscetg_ec \pgec
  \pscgec % 136
  \pscetg_ec
  \gec \gc
  \gc \gec \pscetgec \pscc % 139
  \pscetc \pscetgep
}

wordsTenorMidi = \lyricmode {
  \MSc \Msc \Msc \MsDDSc
  \Msc \Msc \Msc \MsDDSc % 127
  \repeat unfold 5 \Msc
  \Msc \Msc \MsDDSc % 129
  \Msc \Msc \Msc \MsDDSc \Msc \Msc
  \MsDDSc \Msc \Msc \Msc % 131
  \Msc \Msc \Msc \MsDDSc \MDDSp

  \MPscetgec \Mgec \Mpscetgec % 133
  \Mpscetgec
  \Mpscc \Mpscetgec \Mpgec
  \Mpscgec % 136
  \Mpscetgec
  \Mgec \Mgc
  \Mgc \Mgec \Mpscetgec \Mpscc % 139
  \Mpscetc \Mpscetgep
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global d'4 d, r2 | d'4 d, r2 | d'4 d, r2 |
  R1 | d'4 d, cis'8. 16 cis,4 | b'4 e, a8. 16 4 |
  a4 a, r2 | a'4 a, r2 | a'4 a, r2 | % 127a
  R1 | a'4 a, b'8. 16 b,4 | cis'4 a d8. 16 4 |
  \repeat unfold 3 {d4 d, r2 |} % 128a
  R1 | d'4 d, cis'8. 16 cis,4 | b'4 b, ais'8. 16 4 |
  b4 b, a'8. 16 a,4 | g' g, fis'8. 16 4 | g4 g, fis'8. 16 fis,4 | % 129a
  e'4 e, dis'8. 16 4 | e'4 e, d'8. 16 d,4 | cis' fis, b8. 16 4 |
  \tuplet 3/2 4 {g8(fis g b a b} e4) g, | % 130a
  a4 e \tuplet 3/2 4 {8(fis e cis' d cis} |
  \tuplet 3/2 4 {a8 g a c b c} fis,4) d | g4 g, fis'8. 16 fis,4 |
  e'4 a, d8. 16 4 | R1 | r2 r4 a'~ | \tuplet 3/2 4 {8(b a g a fis} e4) a, | % 130b
  d'4 d, e'8. 16 e,4 | fis fis, gis'8. 16 4 | % 131a
  a4 a, gis'8. 16 gis,4 | fis' fis, eis'8. 16 4 |
  fis4 fis, e'8. 16 4 | d' d, cis'8. 16 4 | d d, cis'8. 16 cis,4 | % 131b
  b'4 b, ais'8. 16 4 |
  d4 b \tuplet 3/2 {8(ais b d e d} | \tuplet 3/2 4 {b a b d cis d} b4) e, | % 132a
  e4 cis \tuplet 3/2 4 {a'8(g a cis d cis} |
  \tuplet 3/2 4 {d8 cis d gis, a b cis, dis eis fis gis a} |
  \tuplet 3/2 4 {b8 a b e, fis gis a, b cis d e fis} | % 132b
  \tuplet 3/2 4 {gis8 fis gis cis, dis eis fis gis) a b cis d} |
  eis,4 fis cis' cis, \section \time 3/8 |
  fis8 r r | R4.*7 | % 133a
  R4.*8 |
  R4.*8 | % 134a
  a,8 a a | d' d d | b, b cis16(d | e fis g fis e d | % 134b
  cis8) b16(a) d8~ | 16(e) cis8.(e16) | 8 16(e fis d | a'8) a a |
  d8 a a | fis16(e d e fis d | a'8) a, r | r e'16(fis g e | % 135a
  b'8) b b | e b b | g16(fis e dis g e | b'8) b, r |
  r8 e16(fis g e | a8) a a | fis8 8 8 | b g c | % 135b
  b16 a b8(b,) e r r | R4. | r8 d16(e fis d |
  g8) g, r | R4.*2 | r8 b16(cis d b | e d e fis e d | % 136a
  cis16 b cis d e cis | fis8) e d | e(fis fis,) |
  b8 r r | R4.*3 | r8 fis'16(gis ais fis | b8) b, r | R4.*2 | % 136b
  R4. | r8 a'16(b cis a | d8.) d,16 8 | R4. | % 137a
  r8 e16(fis g e | a8 fis) b | g a(a,) |
  d4 r8 | R4.*6 | % 137b
  R4.*5 | d8 d d | b' b b | e, e fis16(g | % 138a
  a16 b c b a g | fis8) e16(d) g8~ | 16(a) fis8.(g16) | % 138b
  g8 4~ | 8 fis e | fis4.~ | 8 e d |
  4.~ | 8(d) cis | d4.~ | 8 cis b | cis16(b a b cis a | % 139a
  d16 cis d e fis g | a g a b cis a |
  d16 e d cis b a | g a g fis e d | cis d e d cis b | % 139b
  a16 e' a g) fis(e) | d8 a'(a,) | d fis(e | g) gis e |
  a8 ais fis | b(b,) g | cis(cis') a | d d,16(e fis d | % 140a
  a'8) a a | d a a | fis16(e f e fis g |
  a8) a, a | fis'8 8 8 | b, b cis16(d | e fis g fis e d | % 140b
  cis8 b16 a) d8 | g a(a,) | d4.\fermata
}

wordsBass = \lyricmode {
  \Sc \sc \sc \sDDSc
  \sc \sc \sc \sDDSc % 127
  \sc \sc \sc \sDDSc
  \sDDSc \sDDSc \sDDSc
  \sc \sc \sc \sDDSc \sc % 130
  \repeat unfold 4 \sDDSc
  \sc \sc \sc \sDDSp

  \Pscetg_ec \pscetc % 134
  \pscetc \pscetgec \pgec
  \pgc
  \gec % 137
  \pscetg_ec \pscetgc
  \gec \pscetgc
  \pscetc \scetgep % 140
}

wordsBassMidi = \lyricmode {
  \MSc \Msc \Msc \MsDDSc
  \Msc \Msc \Msc \MsDDSc % 127
  \Msc \Msc \Msc \MsDDSc
  \MsDDSc \MsDDSc \MsDDSc
  \Msc \Msc \Msc \MsDDSc \Msc % 130
  \repeat unfold 4 \MsDDSc
  \Msc \Msc \Msc \MsDDSp

  \MPscetgec \Mpscetc % 134
  \Mpscetc \Mpscetgec \Mpgec
  \Mpgc
  \Mgec % 137
  \Mpscetgec \Mpscetgc
  \Mgec \Mpscetgc
  \Mpscetc \Mscetgep % 140
}

pianoRHone = \relative {
  \global \ov
  \tuplet 3/2 {<d'' fis>8(<e g> <d fis a>)} 8. <a d fis>16 <d fis a>8. <fis, a d>16 <e g cis>8. <a cis e g>16 |
  \tuplet 3/2 {<a d fis>8(<e' g> <d fis a>)} 8. <fis, a d>16 <d g b>8. <b' d g>16 <a c fis>8. <a d fis a>16 |
  \tuplet 3/2 {<d g b>8(<a' c> <b d>)} <g b d>8. <g, b>16 <a cis e g>8 r <a d fis> r |
  <g cis e>8 r <a cis e g> r <a d fis> r <g cis e> r | % 126b
  \tuplet 3/2 {<fis a d>8 <g b e> <a cis fis>} \vo \tuplet 3/2 {b cis d} \ov \tuplet 3/2 4 {<gis, cis e> <a d fis> <b e gis> <a cis a'> <b d gis> <cis e a>} |
  \tuplet 3/2 4 {<fis, b d> <gis e'> <a fis'> <g b e> <a fis'> <g b d> <e a cis> <d g b> <e a cis> <cis e a> <e a cis> <a cis e>} |
  \tuplet 3/2 {<a cis e>8(<b d fis> <cis e a>)} 8. <e, a cis>16 <a cis e>8. <cis, e a>16 <b d gis>8. <gis' b d>16 | % 127a
  \tuplet 3/2 {<a cis e>8 <b d gis> <cis e a>} 8. <cis, e a>16 <a d fis>8. <fis' a d>16 <e g cis>8. <cis' e>16 |
  \tuplet 3/2 {<d fis a>8 <e g cis> <fis a d>} 8. <d fis>16 <e gis b d>8 r <e a cis> r |
  <d gis b>8 r <gis b d> r <e a cis> r <d gis b> r | % 127b
  <a cis e>8. <e a cis>16 <a cis fis>8. <fis a cis>16 <b d fis>8. <fis b d>16 <b d g>8. <g b d>16 |
  <b e g>8. <g cis e>16 <cis e a>8. <e, a cis>16 <d' fis a>8. <a d fis>16 <d a' d>8. <cis e a>16 |
  \tuplet 3/2 {<d fis>8 <e g> <d fis a>} 8. <a d fis>16 <d fis a>8. <fis, a d>16 <e g cis>8. <cis' e g>16 | % 128a
  \tuplet 3/2 {<d fis>8 <e g> <d fis a>} 8. <fis, a d>16 <d g b>8. <b' e g>16 <c, fis a>8. <a' c fis>16 |
  \tuplet 3/2 {<g' b>8 <a c> <b d>} 8. <d,, g b>16 \tuplet 3/2 4 {<e g cis>8 <d fis b> <e g cis> <fis a d> <e g cis> <fis a d>} |
  \tuplet 3/2 4 {<f cis e>8 <fis b d> <g cis e> <e g cis> <d fis b> <e g cis> <fis a d> <e g cis> <fis a d> <g cis e> <fis b d> <g cis e>} | % 128b
  \tuplet 3/2 4 {<fis d'>8 <g cis e> <a d fis> <fis d'> <g cis e> <a d fis> <fis d'> <g cis e> <a d fis> <fis d'> <g cis e> <a d fis>} |
  \tuplet 3/2 4 {<fis d'>8 <cis' e> <d fis> <fis, d'> <cis' e> <d fis> <cis fis> <b e g> <ais d fis> <g cis e> <fis b d> <e cis'>} |
  <fis b d>8. <d fis b>16 <fis b d>8. <d fis b>16 <b' d fis>8. <fis b d>16 <b d fis>8. <fis b d>16 | % 129a
  \repeat unfold 2 {<b d g>8. <g b d>16} \tuplet 3/2 4 {<a d a'>8 <g c e> <fis b d> <e a c> <d g b> <c a'>} |
  \tuplet 3/2 4 {<b g'>8 <c fis a> <d g b> <b g'> <c fis a> <d g b> <b g'> <c fis a> <d g b> <b g'> <c fis a> <d g b>} |
  \repeat unfold 2 {<g b e>8. <e g b>16} \tuplet 3/2 4 {<b' fis'>8 <e c'> <dis b'> <c a'> <b g'> <a fis'>} | % 129b
  <b e g>8. <g b e>16 \vo cis'4 s b |
  \ov <cis, e b'>8. <cis e cis'>16 \vo ais'4 \ov <d, fis b>8. <b d fis>16 <d fis b>8. <b d fis>16 |
  <b e g>2 2 | <e g a cis>2 2 | <d fis a c>2 2 | % 130a
  \tuplet 3/2 4 {<d b'>8 <cis e a> <d fis b> <e a> <fis a> <g b> <fis a> <d b'> <e a cis> <fis d'> <e g cis> <fis a d>} |
  \tuplet 3/2 4 {<b, g'>8 <cis a'> <d b'> <cis e a> d' <cis, e g>} <d fis>8. <fis, a>16 \vo fis'4~ | % 130b
  \tuplet 3/2 4 {<d fis>8 g fis e fis d cis d e} a4~ |
  \tuplet 3/2 4 {a8 b a g a fis e fis g} a4 |
  d,4~\tuplet 3/2 {8 cis d} e4~\tuplet 3/2 {8 d e} |
  fis8. e16 \ov \tuplet 3/2 4 {<b d>8 <a cis> <b d> <g b> <a cis> <b d> <cis e> <b d> <cis e>} | % 131a
  \tuplet 3/2 4 {<a cis>8 <b d> <cis e> <d fis> <cis e> <d fis> <b d> <cis e> <d fis> <b e> d e} |
  \tuplet 3/2 4 {<cis a'>8 <d gis b> <e a cis> <cis a'> <d gis b> <e a cis> <cis a'> <d gis b> <e a cis> <cis a'> <d gis b> <e a cis>} |
  \tuplet 3/2 4 {<fis a>8 <gis b> <a cis> <fis a> <gis b> <a cis> <gis cis> <fis d'> <eis cis'> <d b'> <cis a'> <b gis'>} |
  <a cis fis>8. <a, cis fis>16 <cis fis a>8. <a cis fis>16 \repeat unfold 2 {<fis' a cis>8. <cis fis a>16} | % 131b
  \repeat unfold 2 {<fis a d>8. <d fis a>16} \tuplet 3/2 4 {<a' e'>8 <d g b> <cis fis a> <b e g> <a d fis> <g e'>} |
  \tuplet 3/2 4 {<fis d'>8 <g cis e> <a d fis> <fis d'> <g cis e> <a d fis> <fis d'> <g cis e> <a d fis> <fis d'> <g cis e> <a d fis>} |
  \tuplet 3/2 4 {<b d>8 <cis e> <d fis> <b d> <cis e> <d fis> <cis g> <b e g> <ais d fis> <g cis e> <fis b d> <e cis'>} |
  <fis b d>2 2 | <b d e gis>2 2 | <a cis e g>2 2 | % 132a
  \tuplet 3/2 4 {<a d fis>8 e' fis <d d'> cis <d fis> <cis eis> fis gis <a, cis> d <a cis fis>} |
  \tuplet 3/2 4 {<b d>8 cis d <b b'> a <b d> <a cis> d e <fis, a> b <fis a d>} | % 132b
  \tuplet 3/2 {<gis b>8 a q} <gis eis' gis>8. <b cis>16 <a cis>8. fis'16 \tuplet 3/2 {<b, eis>8 fis' gis} |
  \tuplet 3/2 4 {<a, gis'>8 a' b <cis, a'> <d b'> <b gis'>} \vo gis'4.\trill fis8 \section \time 3/8 |
  fis8 \ov r r | <a,, d' fis>8 r r | <d g b> r r | <g, b e> r r | % 133a
  <g' cis>8 r <fis d'> | <d e b'> <cis e a> <g a cis> | <fis a d>4 r8 | <d' g b> r r |
  <cis e>8 r r | <cis a'> r r | <d fis a> r r | <fis a> <d gis> r | % 133b
  <cis a'>8 r r | <a' d fis> r r | <e g b> r r | q r r |
  <g a e'>8 r <fis a d> | <e b' d> <e g a cis> r | <d fis a d> r r | % 134a
  <d fis b d>8 r r | <e g cis> r r | q r r |
  <fis a d>8 r \vo cis'16 d | e8 r gis,16 a |
  cis8 8 8 | a' a a | d, d e16 fis | g a b a g fis | % 134b
  e8 d16 cis d'8 | <fis, a> <g a> <e a> | a16 g a8 r | \ov <a, cis e>4 r8 |
  <a d fis>4 r8 | q4 r8 | <cis e a> <a cis e> <e a cis> | <e g b> <b' e g> r | % 135a
  <g b e>8 <fis b dis> r | <e g>4 r8 | q4 r8 | <fis b dis> <b dis fis> q |
  <g b>8 <b e g> q~ | 8 <a fis'>16 <g e'> <a fis'> g' | % 135b
  <c, a'>8 <a c dis fis> <a e' fis> | \vo fis'8. g16 e dis |
  e8 b' a | \ov <b, e g> r r | <a cis e g> r r | <a d fis> r r |
  <b d fis>8 r r | <b cis e> r r | \vo e16 g fis e fis cis | % 136a
  \ov <fis, b d>4.~ | <gis b d>8 \vo cis16 d e fis | g a g fis e d |
  cis16 ais b cis d cis | e b fis'8 [ e ] |
  \ov <fis, b d>8 fis'8 8 | 4.~\startTrillSpan | 4.~ | 4.~ | % 136b
  fis8 <fis, ais cis>\stopTrillSpan <ais cis fis> |
  <b d>16 e fis g a b | a8 [ <cis, e a> ] <e, a cis> |
  <fis a d>8 <a cis a'> <a cis e> |
  <a d fis>8 <d fis a> q | <e a cis> <d fis a> <e a cis> | % 137a
  <fis a d>8 <d fis a> q | \vo b' g16 fis g a | s4 g8 |
  g8. a16 fis8 | fis16 b e, fis g a | \ov
  <d, fis>16 <e g> <fis a> <g b> <fis a> <e g> | % 137b
  <d fis>16 <cis e > <b d> <cis e> <d fis> <b d> |
  <cis e>16 <d fis> <e g> <fis a> <e g> <d fis> |
  <cis e>16 <b d> <a cis> <b d> <cis e> cis |
  d16 <cis e> <d fis> <e g> <cis e> d |
  <cis e>16 <b d> <e b'> <fis a> <e gis> <d fis> |
  <cis e>16 d cis b cis e | \vo
  a8 8 8 | d, d e16 fis | g a b a g fis | e8 d16 cis fis8~ | % 138a
  fis16 g e8. fis16 | 8 8 8 | d' d d | g, g a16 b | \ov
  <e, a c>16 d' e d <e, cis'> b' | \vo s4 <g b>8 | % 138b
  b16 c a8. b16 | s8 e,16 fis g e | a8 cis,16 [ d e cis ] |
  s8 d16 e fis d | b8 16 [ cis d b ] | \ov
  <b g'>16 <a c fis> <g b e> <fis a d> <e f cis> <d fis b> | % 139a
  <e g cis>16 <fis a d> <g b e> <a cis fis> <b d g> <cis e>
  <a fis'>16 <g b e> <fis a d> e' <b fis'> d |
  b16 <g b e> <a cis fis> <b d g> <cis e a> <d fis b> |
  <a e' a>4.~ | 16 e' fis g <d a'> b' |
  <e, cis'>16 <fis d'> <e cis'> <d b'> <e a> <cis g'> |
  <d fis>8 <a d fis> q | \vo b' b b | e, [ e ] fis16 g \ov | % 139b
  <cis, e a>16 b' <e, cis'> b' a g | \vo fis g e8. [ d16 ] |
  \ov <a d fis>8 <a d> <a d fis> | <b d g> <gis b e> <b e gis> |
  <cis e a>8 <ais cis fis> <cis fis ais> | % 140a
  <d fis b> <b d g> <d g b> | <e g e'> <e a> <e a cis> |
  \vo s8 fis16 g a fis \ov | <a, cis e g>8 <a cis e> r |
  <a d fis>8 <a cis e a> r | <d fis a d> <d fis a> r |
  <cis e a>8 <a cis e> <e a cis> | <cis' fis a> q q | % 140b
  <b d fis>8 q <b d fis b> | <b fis' b> <b e> <g b e> |
  <a cis e>8. <e' a cis>16 <d fis a d>8 |
  <fis b d>16 <g e'> <e g a cis>8. <d fis a d>16 | q4.\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s1*4 | s4 fis'8. <fis b>16 s2 | s1 |
  s1*6 | % 127
  s1*6 |
  s1*4 | s4 <e' g>8. <cis e>16 <d fis cis'>8. <ais d fis>16 <d fis>8. <b d>16 | s4 <cis e>8. <cis fis>16 s2 | % 129
  s1*4 | % 130ab
  <<{\vt s2. \tuplet 3/2 {d8 e, fis} |
     \tuplet 3/2 {g8 b a} g4 a fis'~ |
     \tuplet 3/2 4 {fis8 g fis e fis d} cis4~\tuplet 3/2 {8 b cis} | }
    \new Voice {\vt s2. \once\hideNotes d4~ |
                \once\hideNotes d4 s2. |
                s1 |}
  >>
  \vt \tuplet 3/2 {fis,8 e fis} g4~\tuplet 3/2 {8 fis g} a4~ |
  \tuplet 3/2 {a8 gis a} s2. | s1*7 | % 131
  s1*6 | s2 <cis fis>4 <b eis>8 <b cis> \section \time 3/8 |
  <a cis>8 r r | s4.*15 | % 133
  s4.*6 | s4 a8 | gis r d | % 134a
  <cis a'>8 a'16 gis a b | cis d e d cis e | b8 b b | b b e | % 134b
  a,4 <fis' a>16 <e g> | d8 e a, | <a fis'> <d fis> r | s4. |
  s4.*11 | <a dis>16 cis b8 g16 fis | g c <b dis>8 <b dis fis> | s4.*3 | % 135
  s4.*2 | <ais cis>8 8 ais | s4. | s8 cis16 b cis8 | <cis e>4 cis8 | % 136a
  s16 ais~8 fis | g8 <fis ais cis>4 |
  s4.*8 | % 136b
  s4.*3 | d'8 <b e> q | s4. | <cis e>16 cis d e fis d | d~<d e> cis8 8 | % 137a
  s4.*7 |
  <cis e>8 a'16 g <cis, fis> e | b8 b b | b b e | a,4~16 b | % 138a
  cis8 16 d cis b | <a d>8 r r | <d fis> r r | <b e> r r |
  s4. | <c a'>8 [ g'16 fis ] d e | fis e fis g fis e | % 138b
  <d b'>8 e [ <b d> ] | <cis e>8 <e, a> <g cis> |
  <a d fis a>8 d <a c> | g g fis |
  s4.*8 | <b d>8 8 <cis e>16 <d fis> | b8 b b | s4. | d8 <a cis>16 a a a | s4.*2 | % 139
  s4.*3 | <fis' d'>8 d [ d ] | s4.*10 | % 140
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  \repeat unfold 3 {<d d'>8 d,32 [ d' d, d' ] ~<d, d'>4 r2 |}
  R1 | <d' d'>8 d,32 [ d' d, d'~ ]  <d, d'>4 <cis' cis'> <cis, cis'> | % 126b
  <b' b'>8 b,32 [ b' b, b' ] <e, e'>4 <a a'>8 a,32 [ a' a, a' ] ~<a, a'>4 |
  \repeat unfold 3 {<a' a'>8 a,32 [ a' a, a' ] ~ <a, a'>4 r2 | } % 127a
  R1 | <a' a'>8 a,32 [ a' a, a' ] ~ <a, a'>4 <b' b'> <b, b'> | % 127b
  <cis' cis'>8 a32 [ a' a, a' ]  ~ <a, a'>4 <d d'>8. <d, d'>16 <fis fis'>8. <a a'>16 |
  \repeat unfold 3 {<b b'>8 b,32 [ b' b, b' ] ~<b, b'>4 r2 | } % 128a
  R1 | <d' d'>4 <d, d'> <cis' cis'> <cis, cis'> | % 128b
  <b' b'>4 <b, b'> <ais' ais'> <ais, ais'> |
  <b' b'>4 <b, b'> <a' a'> <a, a'> | % 129a
  <g' g'>4 <g, g'> <fis' fis'> <fis, fis'> |
  <g' g'>4 <g, g'> <fis' fis'> <fis, fis'> |
  <e' e'>4 <e, e'> <dis' dis'> <dis, dis'> | % 129b
  <e' e'>4 <e, e'> <d' d'> <d, d'> |
  <cis' cis'> <fis fis'> <b b'> <b, b'> |
  <e e'>4 <e, e'> r2 | <a' a'>4 <a, a'> r2 | % 130a
  <d d'>4 <d, d'> r2 | <g' g'>4 <g, g'> <fis' fis'> <fis, fis'> |
  <e' e'>4 <a, a'> <d d'> <d, d'> | % 130b
  <e' e'>4 <e, e'> <fis' fis'> <fis, fis'> |
  <g' g'>4 <g, g'> <a' a'> <a, a'> |
  <b' b'>4 <b, b'> <cis' cis'> <cis, cis'> |
  <d d'>4 <d, d'> <e' e'> <e, e'> | % 131a
  <fis' fis'>4 <fis, fis'> <gis' gis'> <gis, gis'> |
  <a' a'>4 <a, a'> <gis' gis'> <gis, gis'> |
  <fis' fis'>4 <fis, fis'> <eis' eis'> <eis, eis'> |
  <fis' fis'>4 <fis, fis'> <e' e'> <e, e'> | % 131b
  <d' d'>4 <d, d'> <cis' cis'> <cis, cis'> |
  <d'' d'>4 <d, d'> <cis' cis'> <cis, cis'> |
  <b' b'>4 <b, b'> <ais' ais'> <ais, ais'> |
  <b' b'>4 <b, b'> r2 | <e e'>4 <e, e'> r2 | <a' a'>4 <a, a'> r2 | % 132a
  \tuplet 3/2 4 {d'8 cis d gis, a b cis dis eis fis eis fis} |
  \tuplet 3/2 4 {b,8 a b e, fis gis a b cis d cis d} | % 132b
  \tuplet 3/2 4 {gis,8 fis gis cis, dis eis fis gis a b cis d} |
  <eis, eis'>4 <fis fis'> <cis' cis'> <cis, cis'> \section \time 3/8 |
  <fis, fis'>8 r r | r d''16 e fis d | g8 g, r | r e'16 fis g e | % 133a
  a8 fis b | g a a, | d4 r8 | r g16 a b g |
  a8 cis a | fis g a | d, d' cis | b e e, | a a,16 b cis a | % 133b
  d8 d' r | r e,16 dis e fis | g8 a b |
  a8 cis d | g, a a, | d d, d'~ | d fis b~ | b e, a~ | a a, a' | d, e fis | e d e | % 134a
  <a,, a'>8 8 8 | <fis' fis'> q q | <b, b'> q <cis cis'>16 <d d'> | % 134b
  <e e'>16 <fis fis'> <g g'> <fis fis'> <e e'> <d d'> |
  <cis cis'>8 <b b'>16 <a a'> <d d'>8~ |
  q16 <e e'> <cis cis'>8. <d d'>16 | q8 <fis fis'> <d d'> | <a' a'>4 r8 |
  a4 r8 | <a, a'>4 r8 | q4 r8 | r <e' e'> q | % 135a
  <b' b'>4 r8 | q4 r8 | <b, b'>4 r8 | q4 r8 |
  <e e'>8 e16 fis g e | <a, a'>8 8 8 | fis'16 e fis g a fis | % 135b
  <b, b'>8 <g g'> <c c'> | <b b'>16 [ <a a'> ] <b b'>8 8 |
  <e, e'>8 r r | <a a'> r r | d r r |
  <g, g'>8 r r | cis r r | <fis, fis'> r r | % 136a
  b16 ais b cis d b | e d e fis e d | cis b cis d e cis |
  fis8 <e e'> <d d'> | <e e'> <fis fis'> <fis, fis'> |
  <b b'>8 r r | <fis'' ais cis> r r | <fis b d> r r | % 136b
  <fis, b d fis>8 r r | <fis ais cis fis> r r | b,8 b' <b, b'> |
  <cis cis'>8 <a' a'> r | <d, d'> a' r |
  a,8 a' r | <a, a'> r r | <d d'> r r | <g, g'> r r | % 137a
  e'16 d e fis g e | a8 <fis fis'> <b b'> | <g g'> <a a'> <a, a'> |
  d8 d' [ fis ] | b, r b'~ | b e, a~ | a e a, | d e fis | e d e | a, a' [ a ] | % 137b
  fis'8 8 8 | b, b cis16 d | e fis g fis e d | cis8 b16 a d8~ | % 138a
  d16 e cis8. d16 | <d,, d'>8 8 8 | <b' b'> q q | <e, e'> [ q ] fis16 g |
  a16 b c b a g | fis8 e16 d g8 | <g, g'> <d' d'> <d, d'> | % 138b
  <g g'>8 <g' g'>4~ | 8 <fis fis'> <e e'> | <fis fis'>4.~ | 8 <e e'> <d d'> |
  <e e'>4.~ | 8 <d d'> <cis cis'> | <d d'>4.~ | 8 <cis cis'> <b b'> | % 139a
  <cis cis'>16 b' a b cis a | d, cis d e fis g | a g a b cis a |
  d16 e d cis b a | g a g fis e d | cis d e d cis b | % 139b
  a16 e' a g fis e | <d d'>8 <a' a'> <a, a'> |
  <d d'>8 <fis fis'> <d d'> | <g g'> <gis gis'> <e e'> |
  <a a'>8 <ais ais'> <fis fis'> | <b b'> <b, b'> <g g'> | % 140a
  <cis cis'>8 <cis' cis'> <a a'> | <d d'> d16 [ e fis d ] |
  <a a'>8 a a | <a d a'> a a | <a, a'> d'16 [ d d d ] |
  a8 <a, a'> q | <fis' fis'> q q | <b, b'> q <cis cis'>16 <d d'> | % 140b
  <e e'>16 [ <fis fis'> ] <g g'> <fis fis'> <e e'> <d d'> |
  <cis cis'>8 [ <b b'>16 <a a'> ] <d d'>8 | <g, g'>8 a16 [ a' a, a' ] |
  \repeat tremolo 6 {d,,32 d'} |
  
}

pianoLHtwo = \relative {
  \global
}

#(set-global-staff-size 16)

\book {
  \paper {
    output-suffix = single
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
            \addlyrics \wordsAltoI
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
            \addlyrics \wordsAltoII
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
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
    output-suffix = "single-alto1"
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
            \addlyrics \wordsAltoI
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
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
    output-suffix = "single-alto2"
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
            \addlyrics \wordsAltoII
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
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
%   \unfoldRepeats
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
            \addlyrics \wordsAltoI
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
            \addlyrics \wordsAltoII
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
            \addlyrics \wordsAltoI
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
            \addlyrics \wordsAltoII
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto1"} \teeny \dynamicsAltoI
            \new Voice \altoI
            \addlyrics {\tiny \wordsAltoI}
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = "alto2"} \teeny \dynamicsAltoII
            \new Voice \altoII
            \addlyrics {\tiny \wordsAltoII}
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
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
          \new Staff = piano   \with {
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
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
          \new Staff = piano   \with {
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
    output-suffix = "midi-alto1"
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
            \addlyrics \wordsAltoIMidi
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
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
          \new Staff = piano   \with {
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
    output-suffix = "midi-alto2"
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
            \addlyrics \wordsAltoIIMidi
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
          \new Staff = piano   \with {
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
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
          \new Staff = piano   \with {
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
                                % Single alto I staff
          \new Staff = "alto1" \with {
            instrumentName = "Alto I"
            shortInstrumentName = "A1"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto1"} \dynamicsAltoI
            \new Voice \altoI
%            \addlyrics \wordsAltoIMidi
          >>
                                % Single alto II staff
          \new Staff = "alto2" \with {
            instrumentName = "Alto II"
            shortInstrumentName = "A2"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = "alto2"} \dynamicsAltoII
            \new Voice \altoII
%            \addlyrics \wordsAltoIIMidi
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
          \new Staff = piano   \with {
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
