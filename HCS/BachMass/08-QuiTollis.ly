\version "2.25.26"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 8. Qui Tollis Peccata"
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
  \partial 4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "53a" } s4 s2.*6
  \textMark \markup { \box "53b" }    s2.*4
  \textMark \markup { \box "53c" }    s2.*3
  \mark \markup\circle\bold A         s2.
  \textMark \markup { \box "54a" }    s2.*4
  \textMark \markup { \box "54b" }    s2.*4
  \textMark \markup { \box "54c" }    s2.*4
  \textMark \markup { \box "55a" }    s2.
  \mark \markup\circle\bold B         s2.*3
  \textMark \markup { \box "55b" }    s2.*4
  \textMark \markup { \box "55c" }    s2.*4
  \textMark \markup { \box "56a" }    s2.*3
  \mark \markup\circle\bold C
  \textMark \markup { \box "56b" }    s2.*4
  \textMark \markup { \box "56c" }    s2.*5
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

soprano = \relative {
  \global
  r4 | R2.*5 | r4 r cis''8(ais) |
  fis4 4 4 | d'2.~4(cis) b | ais2 4 |
  r4 a8 g g fis | eis4 4 r | r r cis'8(a) | fis4 4 4 |
  d'2.~ | 4(c8 b) e4 | 2 g,4 | r e'8 d cis b | % 54a
  ais4 4 r | r b8(cis) d(g,) | e'2.~2 4 |
  d4 b c8 b | b(a) d2 | r4 gis,8(fis) eis(fis) | d'4(cis8 b) a(gis) |
  cis4.(d16 cis b a b8) | a4 r r | R2. | r4 r b8(a) | % 55a
  eis4 4 4 | d'2.~ | 4(cis) b | a8(gis) a4 fis~ |
  fis8 b16 ais b8 cis d b | eis,4(cis) eis | fis8 gis ais(b) cis(fis,) | fis'(e dis cis) bis(cis) |
  bis8(cis dis4) e | r dis4. bis8 | cis16 gis cis8~16(bis) cis(dis) b8.(cis16) | % 56a
  cis4 4. e8 | ais,4 cis8 ais fis cis' | d2.~ | 4(cis) b |
  a2 4 | r g8(fis) g(b) | eis,4. a8 fis4~ | 8 d' cis(ais b4) | ais2.\fermata
  ^\markup{\halign #RIGHT \with-color "red" \large\bold SIT}
  \bar "|."
}

Qtpmc = \lyricmode { Qui tol -- lis pec -- ca -- ta mun -- di, }
qtpmc = \lyricmode { qui tol -- lis pec -- ca -- ta mun -- di, }
tpmc  = \lyricmode {     tol -- lis pec -- ca -- ta mun -- di, }
mc    = \lyricmode { mi -- se -- re -- re, }
mnc   = \lyricmode { mi -- se -- re -- re no -- bis, }
m_nc  = \lyricmode { mi -- se -- re -- re __ no -- bis, }
mne   = \lyricmode { mi -- se -- re -- re no -- bis! }
m_ne  = \lyricmode { mi -- se -- re -- re __ no -- bis! }
de    = \lyricmode { de -- pre -- ca -- ti -- o -- nem }
dc    = \lyricmode { de -- pre -- ca -- ti -- o -- nem, }
dnc   = \lyricmode { de -- pre -- ca -- ti -- o -- nem no -- stram, }
d_nc  = \lyricmode { de -- pre -- ca -- ti -- o -- nem __ no -- stram, }
dnp   = \lyricmode { de -- pre -- ca -- ti -- o -- nem no -- stram. }
sdc   = \lyricmode { su -- sci -- pe de -- pre -- ca -- ti -- o -- nem, }
sdnc   = \lyricmode { su -- sci -- pe de -- pre -- ca -- ti -- o -- nem no -- stram, }

wordsSop = \lyricmode {
  \Qtpmc \mnc \qtpmc
  \mnc \mnc \mc mi -- se -- re -- re __ no -- bis!
  \Qtpmc \sdc \dnc
  \dnc \sdnc \dnp
}

MQtpmc = \lyricmode { "Qui " tol "lis " pec ca "ta " mun "di, " }
Mqtpmc = \lyricmode { "qui " tol "lis " pec ca "ta " mun "di, " }
Mtpmc  = \lyricmode {        tol "lis " pec ca "ta " mun "di, " }
Mmc    = \lyricmode { mi se re "re, " }
Mmnc   = \lyricmode { mi se re "re " no "bis, " }
Mm_nc  = \lyricmode { mi se re "re " no "bis, " }
Mmne   = \lyricmode { mi se re "re " no "bis! " }
Mm_ne  = \lyricmode { mi se re "re " no "bis! " }
Mde    = \lyricmode { de pre ca ti o "nem " }
Mdc    = \lyricmode { de pre ca ti o "nem, " }
Mdnc   = \lyricmode { de pre ca ti o "nem " no "stram, " }
Md_nc  = \lyricmode { de pre ca ti o "nem " no "stram, " }
Mdnp   = \lyricmode { de pre ca ti o "nem " no "stram. " }
Msdc   = \lyricmode { su sci "pe " de pre ca ti o "nem, " }
Msdnc   = \lyricmode { su sci "pe " de pre ca ti o "nem " no "stram, " }

wordsSopMidi = \lyricmode {
  \MQtpmc \Mmnc \Mqtpmc
  \Mmnc \Mmnc \Mmc mi se re "re " no "bis! "
  \MQtpmc \Msdc \Mdnc
  \Mdnc \Msdnc \Mdnp
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  fis'8(d) | b4 b b | g'2.~ | 4(fis) e | dis2 4 | r d8 cis cis b | ais4 4 r |
  r4 d8(e) fis(b,) | g'2.~8(fis e4 d | cis d) e |
  fis2 4 | r eis gis | 8(eis) fis4 r | r r fis8(d) |
  b4 b b | g'2.~ | 4(fis) e | 2 4 | % 54a
  r4 cis ais' | b(d,8 e fis d | g2.~4 cis,)fis |
  fis2 4 | e8 fis gis4 a | b(gis) cis, | g' b, cis~ |
  cis8 fis8 8(b, d cis) | 4 r r | r r fis8(d) | b4 b b | % 55a
  gis'2.~ | 4(fis) eis | b'2 cis,4 | r fis4. d8 |
  b4 d8 e fis d | gis4(eis) gis | fis2 cis4 | d8 cis bis(dis) gis(fis) |
  a2 e8(fis16 gis) | fis4. a8 bis, dis | cis gis gis'4(dis) | % 56a
  e4 gis e | cis fis4 4 | 2 4 | b,(gis') gis |
  gis4(fis) 4 | r d d | gis,4. cis8 fis,4~ | 8 fis' eis2 | fis2.\fermata |
}

wordsAlto = \lyricmode {
  \Qtpmc \mnc \mnc \mc qui __ \tpmc
  \mnc \mnc mi -- se -- re -- re no -- bis!
  \Qtpmc \sdnc \dc __
  \dnc \sdnc \dnp
}

wordsAltoMidi = \lyricmode {
  \MQtpmc \Mmnc \Mmnc \Mmc "qui " \Mtpmc
  \Mmnc \Mmnc mi se re "re " no "bis! "
  \MQtpmc \Msdnc \Mdc
  \Mdnc \Msdnc \Mdnp
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  r4 | r r b8(g) | e4 e e | c'2.~4(b) a | gis2 4 | r g8 fis fis e |
  d4 d r | r b'8(c) d(g,) | e'2.~( | 4 d cis |
  bis4 cis) dis | gis,2 4 | r a cis | 8(ais) b4 r |
  r4 r b8(g) | e4 e e | cis'2.~ | 4(b) ais | % 54a
  e'2 fis,4 | r b8(a) g(fis) | e(fis g a b g | cis4) ais cis |
  b4 b a | g8(fis eis gis) cis(b) | d2 a8(b16 cis) b4. d8 eis,(gis) |
  fis8(cis)  cis'4(gis) | a r cis8(a) | fis4 4 4 | d'2.~ | % 55a
  d4(cis) b | 2 4 | r gis'4. eis8 | fis4 a,8 b cis a |
  d2.~ | 4 gis, cis~ | 4 4 4 | b8 cis dis4 e |
  fis4(dis) gis, | d' fis, gis~ | 8 cis8 8(fis,) a(gis) | % 56a
  gis4 cis r | r fis, ais | b d b | gis4. cis8 8 8 |
  cis2 4 | r b b | 4. a8 b4~ | 8 fis cis'2 | 2.\fermata |
}

wordsTenor = \lyricmode {
  \Qtpmc \mnc \mnc \mc
  qui \tpmc \mnc \m_nc \m_ne
  \Qtpmc \sdc \sdc \dnc
  \d_nc \sdnc \dnp
}

wordsTenorMidi = \lyricmode {
  \MQtpmc \Mmnc \Mmnc \Mmc
  "qui " \Mtpmc \Mmnc \Mm_nc \Mm_ne
  \MQtpmc \Msdc \Msdc \Mdnc
  \Md_nc \Msdnc \Mdnp
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  r4 | R2.*6 |
  r4 r fis8(d) | b4 b b | g'2.~ | 4(fis) e |
  dis2 4 | r d8 cis cis b | a4 a r | R2. |
  R2. | r4 r e'8(c) | a4 a a | g'2.~ | % 54a
  g4(fis) e | d2 4 | r e8(fis) g(e) | ais4 fis ais |
  b4 fis8(e) dis(e16 fis) | b,4(b') a | gis eis fis | b, gis(cis) |
  fis,4 r gis'8(eis) | cis4 4 4 | a'2.~ | 4(g8 fis) b4 | % 55a
  b2 d,4 | r b'4. gis8 | cis2 r4 | r fis,8 gis a fis |
  b2.~ | 4 4 4 | a fis g8(fis) | fis gis a4 gis |
  r4 dis8(cis) bis(cis) | a'4(gis8 fis) e(dis) | e16(fis gis8~8 a16 gis fis e) fis8 | % 56a
  e4 cis r | r ais'4. fis8 | b4 4 d | eis,4. 8 8 8 |
  fis2 4 | r b b, | cis4. 8 d4 | b cis2 | fis,2.\fermata |
}

wordsBass = \lyricmode {
  \Qtpmc \mnc
  \qtpmc \mnc \mc \mne
  \Qtpmc \sdnc \de
  \dnc \sdnc \dnp
}

wordsBassMidi = \lyricmode {
  \MQtpmc \Mmnc
  \Mqtpmc \Mmnc \Mmc \Mmne
  \MQtpmc \Msdnc \Mde
  \Mdnc \Msdnc \Mdnp
}

pianoRHone = \relative {
  \global \vo
  <fis' b>4~ | 2. | <g b> | <<{b4 a} \new Voice {\vth e2}>> <g a>4 | \vo
  a4 g b~ | 8 cis(b ais b cis) | ais2 cis4 |
  fis16(g fis e) fis(e d cis) b(d cis b) | b'4 r r | % 53b
  b16(a b c) b(a g fis) e(g fis e) | cis'4 \ov e,16(d cis b) ais(cis b ais) |
  \vo fis'16(e fis gis) \ov fis(e dis cis) bis(dis cis bis) | % 53c
  <eis gis b>16(a b c) b(a gis fis) eis(gis fis eis) |
  \vo a4 \ov cis,16(b a gis) fis(a gis fis) |
  fis'16(e fis g) fis(e d cis) b(d cis b) |
  <d f b>16(<cis a'> <d b'> <e c'>) \vo b'(a g a) b(g fis e) | % 54a
  \ov <c e g>8(<e, g c>16 <f d'>) <g c e>8(<d' f>) <e g>(<g, e'>) |
  \vo <cis e g>2. | g'16(fis g a) g(fis e d) e(cis d e) |
  \ov <ais, e'>16(<b d> <cis e> <d fis>) <cis e>(<b d> <a cis> <gis b>) <fis a>(<a cis> <g b> <fis a>) | % 54b
  \vo fis'16(e fis g) fis(e d cis) b(d c b) |
  <e g>4 \ov b16(a g fis) \vo r8 b |
  g'16(e) e(fis) fis(d) d(e) e(cis) cis(d) |
  d4 dis dis | e eis eis | % 54c
  \ov <b eis>16(<gis b>) q(<b' d>) q(<gis b>) q(<a cis>) q(<fis a>) q(<g b>) |
  \vo b2 4 |
  b16(gis) a(fis) g4 8. fis16 | % 55a
  \ov fis16(b, cis d) cis(b a gis) fis(a g fis) |
  <fis' a>16(<e g> <a cis> <b d>) <fis a>(<e g> <d fis> e) d(fis e d) |
  <fis b d>8 g,16 [ a ] b c \vo d4 8 |
  \ov <d gis b d>2 4 | d'16(cis d e) d(cis b a) b(gis a b) | % 55b
  eis,16(<a, fis'> <b gis'> <cis a'>) <b gis'>(<a fis'> <gis eis'> <fis dis'>) <eis cis'>(<gis eis'> <fis dis'> <eis cis'>) |
  \vo a'4 fis2 |
  fis16(e fis g) fis(e d cis) b(d cis b) | gis'2 4 | % 55c
  gis16(eis) eis(fis) fis(d) d(e) e(cis) cis(d) |
  d16(b) b(a') a(fis) fis(gis) gis(e) e(fis) |
  \ov <bis, fis'>16(<fis dis'>) q(<fis' a>) q(<dis fis>) q(<e fis>) q(<cis e>) q(<d fis>) | % 56a
  \vo fis2 4 | \ov <cis fis>16(<bis dis>) <cis e>(cis) \vo dis4\startTrillSpan ~8. cis16\stopTrillSpan |
  cis8 gis'16 a gis(dis e dis) cis(e dis cis) | ais'2 r8 cis | % 56b
  cis16(ais) ais(b) b(g) g(a) a(fis) fis(gis) | 2 4 |
  gis16(eis) eis(fis) fis(d) d(e) e(cis) cis(d) | % 56c
  d8. b16 \ov <g b>(<b d>) q(<d g>) q(<g b>) q(<b d>) |
  d4. cis8 b16(a b gis) | <fis a> <eis gis> <fis a>(<gis b>) \vo gis4. fis8 |
  \ov <ais, cis fis>2.\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  d'4~ | 8(b) d(b) d(b) | d(b) d(b) d(b) | c(b) c(b) c(a) |
  fis'8(b,) dis(b) fis'(b,) | gis'(eis) gis(eis) gis(eis) |
  <e g>8(fis) e(g) <cis, ais'>(fis) |
  cis'4 b8 ais b4 | d16(c d e) d(c b a) g(b a g) | e'2 4 | e16(d e fis) s2 | % 53b
  dis4 s2 | s2. | cis16(b cis d) s2 | s2. |
  s4 d16 cis b8 c d | s2. | g,8(e) cis(d e g) | <cis e>4~8 r r4 | % 54a
  s2. | <b d>4~8 s4. | b16(a b c) b(a g fis) e(g fis e) | cis'8(d) cis(b) ais(c) |
  <fis, cis'>16(ais) ais(b) b(g) g(a) a(fis) fis(g) | % 54c
  g16(e) e(d') d(b) b(cis) cis(a) a(b) | s2. |
  g'16(eis) eis(fis) fis(b,) b(eis) eis(cis) cis(eis) |
  fis4 16(eis) fis(dis) eis8._\trill fis16 | s2.*2 | s4. e,16 fis g a b8 | % 55a
  s2.*3 | cis16(b cis d) cis(b a gis) fis(a g fis) |
  <b d>4~8 s4. | d16(b) b(cis) cis(a) a(b) b(gis) gis(a) | 4 <fis ais>2 | fis8 r bis2 |
  s2. | d16(bis) bis(cis) cis(fis,) fis(bis) bis(gis) gis(bis) | s4 cis bis8. cis16 | % 56a
  cis4 e8 r cis16(b ais gis) | e'(d e fis) e(d cis b) ais(g' fis e) | % 56b
  d2 4 | d16(b) b(cis) cis(a) a(b) b(gis) gis(a) |
  <a cis>8(<b d>) <a cis>(<gis b>) <fis a>(<e g>) | % 56c
  <fis a>16 fis fis(g) s2 |
  b'16(eis,) eis(gis) gis(cis,) cis(eis) fis4 |
  s4 \vt eis4. fis8 | s2. |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global \ov
  r4 | <d, d'>4-. d'-. d-. | <e, e'>-. e'-. e-. | <a,, a'>-. a'-. a-. |
  <b, b'>4-. b'-. b-. | <eis,, eis'>4-. eis'-. eis-. | <fis, fis'>-. fis'-. fis-. |
  <b, b'>8 \vo e'' [ d(cis) ] d4 | <g,, g'>8 c' [ b(a) ] b4 | % 53b
  <e,, e'>8 a'' [ g(fis) g(e) ] | fis,(e') fis,(cis') fis(cis) |
  <bis,, bis'>8 e'' [ dis(gis) fis(gis) ] | % 53c
  <cis,,, cis'> cis'' [ gis(b) gis(c) ] |
  r8 b a(gis) a(cis) | r fis, b(cis) d4 |
  s8 d f(d) f(b,) | \ov <c,, c'>4 c' c | <cis, cis'> cis' cis | <ais, ais'> ais'4 4 | % 54a
  \vo r8 b' cis(d) e(cis) | <b,, b'>4 <d' fis b>2 | % 54b
  <b, b'>4 <e' g b>2 | \once\autoBeamOff <b, b'>8 b'' ais2 |
  <b,, b'>4 <fis'' b>2 | \ov <b,, b'>4 <b' b'> <a a'> | % 54c
  <gis gis'>4 <eis eis'> <fis fis'> | <b, b'> <gis gis'> <cis cis'> |
  <fis, fis'>4 <cis' cis'> <cis, cis'> | \vo r8 cis'' fis(<gis b>) cis(eis) | % 55a
  <d,, d'>8 d' [ e fis g a ] | r8 <b d>16 c d8(cis b d) |
  r8 b gis(a) b(d) | <eis,,, eis'>4 <gis'' b d>2 | % 55b
  r8 fis gis(a) b16(g cis8) | <fis,, fis'>4 <a' cis>2 |
  <fis, fis'>4 <b' d>2 | r8 a gis [ (fis) eis(gis) ] | % 55c
  r8 gis ais(b) cis(a) | \ov <fis,, fis'>4 <fis' fis'> <e e'> |
  <dis dis'>4 <bis bis'> <cis cis'> | <fis fis'> <dis dis'> <gis gis'> | % 56a
  <cis, cis'>4 <gis' gis'> <gis, gis'> |
  <cis cis'>8 \vo gis'' [ cis(gis) ] e16(g fis e) | % 56b
  r8 b'8 cis(ais) fis'16(e d cis) |
  r8 fis, b(d) fis,(b) | r gis eis(cis') gis(b) |
  \ov <fis,, fis'>4 <fis' fis'> q | \vo r8 fis' g(a b d) | % 56c
  \ov <cis,, cis'>4. 8 <d d'>4 | <b b'> <cis cis'> <cis, cis'> |
  <fis fis'>2.\fermata |
}

pianoLHtwo = \relative {
  \global \vt
  s4 s2.*6 |
  s8 r b4 b | s8 r g4 g | s8 r e4 e | fis, r r |
  s8 r bis'4 4 | s8 r cis,4 4 | \vo <fis,, fis'>8 \vt r fis'4 4 | \vo <d d'>8 \vt r d'4 4 |
  \vo <g,, g'>8 \vt r g''4 4 | s2.*3 | % 54a
  \vo <fis,, fis'>8 \vt r fis''4 4 | s4 b, b | s b b | s4 b b |
  s4 b b | s2.*3 |
  s2. | <fis, fis'>8 s fis''4 <fis a> | s4 d d | <g,, g'>8 r g''4 4 | % 55a
  <gis,, gis'>8 r gis''4 4 | s4 eis eis | <cis, cis'>8 r cis'4 4 | s fis fis |
  s4 fis4 4 | <fis, fis'>8 r fis4 4 | q8 r fis'4 4 | s2. |
  s2.*3 | % 56a
  s4 cis4 4 | \vo <fis,, fis'>8 \vt r fis''4 4 | \vo <b,, b'>8 \vt r b'4 4 | \vo <eis,, eis'>8 \vt r eis''4 4 |
  s2. | \vo <b, b'>8 \vt r b'4 4 | s2.*3 |
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
