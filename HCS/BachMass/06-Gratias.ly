\version "2.25.26"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 6. Gratias (Chorus)"
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
  \time 4/2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup {"Alla breve." \with-color "red" { in 4 \rhythm { 2 } } } 2=80
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "42a" } s1*8
  \textMark \markup { \box "42b" } s1*6
  \textMark \markup { \box "42c" } s1*2
  \mark \markup\circle\bold A      s1*6
  \textMark \markup { \box "43a" } s1*8
  \mark \markup\circle\bold B
  \textMark \markup { \box "43b" } s1*8
  \textMark \markup { \box "43c" } s1*6
  \textMark \markup { \box "44a" } s1*6
  \mark \markup\circle\bold C
  \textMark \markup { \box "44b" } s1*8
  \textMark \markup { \box "44c" } s1*10
  \mark \markup\circle\bold D
  \textMark \markup { \box "45a" } s1*8
  \textMark \markup { \box "45b" } s1*8
  \textMark \markup { \box "45c" } s1*8
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

soprano = \relative {
  \global
  R\breve*2 | r2 a'(b cis | d) cis4 b cis(a d2~ |
  d2) cis4 4 b1 | a r | r2 d~4 4 cis4 4 |
  d4(cis8 b a b g a b a b c b c b a | g4) fis8 e a2 d, r | r1 r2 a'( | b cis d) cis4 b |
  cis4(fis, fis'2~4 b, e2~ | 4 d2 g4 cis, e) d cis | b2 b r1 | r d( | % 43a
  e2 fis g) fis4 e | fis(d g1) fis4 4 | e1 e | r r2 e~ |
  e4 e dis dis e(d8 c b c a b | c b c d c e d c b4) cis8 8 d2 | g,4 r cis2~4 4 b b |
  e4 8 8 a,2 4 r fis'2~ | 4 4 eis4 4 fis(e8 d cis d b cis | d cis d e d fis e d cis4) 8 8 fis2 | % 44a
  b,2 r r d( | e fis g) fis4 e | fis(d g1) fis4 4 | e e d2~4 b b b |
  a4 8 8 b2 e,4 r a2( | b cis d) cis4 b | cis(a d1) cis4 4 | b1 a | R\breve |
  d1(e2 fis | g) fis4 e fis(d g2~ | 2) fis4 4 e1 | d2 2~4 4 cis4 4 | % 45a
  d8(e d cis b cis a b cis d b cis dis e cis dis | e1~4 d8 cis d e fis d | g1.) fis4 4 | e\breve |
  d2 r4 d e e~8(fis e d | cis4) a fis'1(e2~ | 4 a, d2~4) cis8 b cis2 | d\breve\fermata
  \bar "|."
}

Gat = \lyricmode { Gra -- ti -- as a -- gi -- mus ti -- bi }
gat = \lyricmode { gra -- ti -- as a -- gi -- mus ti -- bi }
gatc = \lyricmode { gra -- ti -- as a -- gi -- mus ti -- bi, }
pmgc  = \lyricmode { pro -- pter mag -- nam glo -- ri -- am, }
pmgt  = \lyricmode { pro -- pter mag -- nam glo -- ri -- am tu -- am }
pmgtc = \lyricmode { pro -- pter mag -- nam glo -- ri -- am tu -- am, }
pmgtp = \lyricmode { pro -- pter mag -- nam glo -- ri -- am tu -- am. }

wordsSop = \lyricmode {
  \Gat \pmgtc \gatc
  \gat \pmgtc \pmgtc % 44
  \pmgtc \gat \pmgtc \gatc
  \gat \pmgtc \pmgtp
}

MGat = \lyricmode { Gra ti "as " a gi "mus " ti "bi " }
Mgat = \lyricmode { gra ti "as " a gi "mus " ti "bi " }
Mgatc = \lyricmode { gra ti "as " a gi "mus " ti "bi, " }
Mpmgc  = \lyricmode { pro "pter " mag "nam " glo ri "am, " }
Mpmgt  = \lyricmode { pro "pter " mag "nam " glo ri "am " tu "am " }
Mpmgtc = \lyricmode { pro "pter " mag "nam " glo ri "am " tu "am, " }
Mpmgtp = \lyricmode { pro "pter " mag "nam" glo ri "am " tu am. }

wordsSopMidi = \lyricmode {
  \MGat \Mpmgtc \Mgatc
  \Mgat \Mpmgtc \Mpmgtc % 44
  \Mpmgtc \Mgat \Mpmgtc \Mgatc
  \Mgat \Mpmgtc \Mpmgtp
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  R\breve | r1 r2 d'( | e fis g) fis4 e | fis(d g1) fis4 4 |
  e1 d | r r2 a'~ | 4 4 gis4 4 a(g8 fis e fis d e |
  fis8 e fis g fis g fis e d4) cis8 b fis'2 | b, r r1 | r2 d(e fis | g) fis4 e fis(b, b'2~ |
  b4 a2 d4 g, b) a g | fis2 2 r1 | r a( | b2 cis d) cis4 b | % 43a
  cis4(a d1) cis4 4 | b1 a2 d,( | e fis g) fis4 e | fis(d a'1) g4 4 |
  fis1 e2 g~ | 4 4 fis4 4 g(fis8 e d e cis d | e d e fis e g fis e d4) e8 8 fis2 |
  b,4 r e2~4 d cis a' | gis4 8 8 2 fis r | r d(e fis | % 44a
  g2) fis4 e fis(d g2~ | 2) fis4 4 e1 | d2 r r4 d'2 4 | cis4 4 d8(cis b a g4) d8 8 g2~ |
  g4 fis d2(e fis | g) fis4 e fis(d g2~ | 2) fis4 4 e1 | d r2 d( | e fis g) fis4 e |
  fis4(d g1 fis2~ | 4 e8 d a'2~4 g8 fis) b4 4 | a1 gis2 a~ | 4 4 gis4 4 a8(e fis gis a b gis a | % 45a
  b4 fis b2~4) e,8 8 a2 | e4 r cis'2~4 b b b | b4 8 8 e,2 d d( | e fis g) fis4 e |
  fis4(b2) 8 8 e,4 gis b2~ | 4 e, a2~4 d, g2~ | 4(fis8 e) fis4 b fis2(e) | fis\breve\fermata |
}

wordsAlto = \lyricmode {
  \Gat \pmgtc \gatc
  \gatc \gat \pmgtc % 43
  \pmgtc \gat \pmgtc \gatc \gat
  \pmgtc \pmgtc \gat \pmgtp
}

wordsAltoMidi = \lyricmode {
  \MGat \Mpmgtc \Mgatc
  \Mgatc \Mgat \Mpmgtc % 43
  \Mpmgtc \Mgat \Mpmgtc \Mgatc \Mgat
  \Mpmgtc \Mpmgtc \Mgat \Mpmgtp
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  r1 r2 a( | b cis d) cis4 b | cis(a d1) cis4 4 | b1 a |
  r1 r2 d~ | 4 4 cis4 4 d(cis8 b a b g a | b a b cis b d cis b a4) e8 8 a2 |
  d,1 r | r2 a'(b cis | d) cis4 b cis(fis, fis'2~ | 4 e2 a4 d, fis) e d |
  cis2 2 r1 | d1(e2 fis | g) fis4 e fis(d a'2~ | 2) g4 g fis1 | % 43a
  e2 a,(b cis | d) cis4 b cis(a d2~ | 2) cis4 4 b1 | a2 e'(dis) b4 4 |
  c2(b) g r | r1 r2 b~ | 4 4 ais ais b(a8 g fis g e fis |
  g8 fis g a g b a g fis4) g8 g a2 | d,4 d'8 8 cis4 4 4 d8 8 e2 | a, r r a( | % 44a
  b2 cis d) cis4 b | cis(a d1) c4 c | 2(b) a1 | r2 a(b cis |
  d2) cis4 b cis(a d2~ | 2) cis4 4 a fis' e d | cis(e) d(fis) b,2(a~ | a) g4 g a2(b) g a(b cis |
  d2) cis4 b cis(a d2~ | 4 cis8 b e2~4) a, d2 | e d4(cis) b2 cis4 4 | d(cis) b2 e2. 4 | % 45a
  fis2 e4 2 8 8 fis2 | b, fis'~4 8(e) fis4 d | 2 cis4 4 a2 2 | r a(b cis |
  d2) e4 fis b,2 e4 4 | 4 cis cis d b(a) b(g) | a(b8 cis) d4 b a1 | a\breve\fermata |
}

wordsTenor = \lyricmode {
  \Gat \pmgtc \gatc
  \gatc \gatc a -- gi -- mus ti -- bi \pmgtc
  \pmgtc \gatc \gat \pmgtc \gat __
  a -- gi -- mus ti -- bi \pmgtc \pmgtc \gat \pmgtp
}

wordsTenorMidi = \lyricmode {
  \MGat \Mpmgtc \Mgatc
  \Mgatc \Mgatc a gi "mus " ti "bi " \Mpmgtc
  \Mpmgtc \Mgatc \Mgat \Mpmgtc \Mgat
  a gi "mus " ti "bi " \Mpmgtc \Mpmgtc \Mgat \Mpmgtp
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  r2 d(e fis | g) fis4 e fis(d g2~ | g) fis4 4 e1 | d r |
  r2 a'~4 4 gis4 4 | a4(g8 fis e fis d e fis e fis g fis g fis e | d4) cis8 b e2 a,1 |
  r1 r2 d( | e fis g) fis4 e | fis(b, b'2~4 a2 d4 | g, b) a g fis2 2 |
  R\breve | r2 b~4 4 ais4 4 | b8(cis a b cis d b cis d cis d e d e d cis | b1~4) cis d2 | % 43a
  a4 4 g fis e2 a4 4 | d,2(e) a,1~ | 2 ais(b cis | d) c4 4 b2 e4 4 |
  a,2(b) e r | R\breve | r1 r2 d~ |
  d4 d cis4 4 d(cis8 b a b gis a | b a b cis b d cis b a4) b8 8 cis2 | fis,4 r b'2~4 a g fis | % 44a
  e4 8 8 a2 d, r | R\breve | r1 d( | e2 fis g) fis4 e |
  fis4(d g1) fis4 4 | e2(a) d,4 r b'2~ | 4 cis d8(c) b(a) g4 fis8 e a2 | d,1 r | R\breve |
  r1 a( | b2 cis d) cis4 b | cis(a d1) cis4 4 | b1 a2 a'~ | % 45a
  a4 4 gis4 4 a8(b a g fis g e fis | gis a fis fis ais b gis a b1~ | 4 a8 g a b cis a d4 a d2~ | 2) c4 4 b1~( |
  b2 a gis1) | a2 r4 d,(g) fis g e | fis2 4 g a2(a,) | d\breve\fermata |
}

wordsBass = \lyricmode {
  \Gat \pmgtc \gat
  \pmgc \pmgtc __ \gat \pmgtc
  \pmgtc \gat \pmgtc
  \gat \pmgt \pmgtp
}

wordsBassMidi = \lyricmode {
  \MGat \Mpmgtc \Mgat
  \Mpmgc \Mpmgtc \Mgat \Mpmgtc
  \Mpmgtc \Mgat \Mpmgtc
  \Mgat \Mpmgt \Mpmgtp
}

pianoRHone = \relative {
  \global \ov
  r1 r2 a | \vo r1 r2 d | e <fis a> <g b> cis | d cis4 b cis a d2~ |
  d2 cis b1 | a r2 a~ | 4 4 d2~4 4 cis4 4 |
  d4 cis8 b a b g a b a b c b c b a | g4 fis8 e <d a'>2 d r | r d e a | <g b> cis d cis4 b |
  cis4 fis, fis'2~4 b, e2 | 4 d2 g4 cis, e d cis | b1 a2 a | b cis <fis, d'>1 | % 43a
  e'2 <d fis>~<d g> fis4 e | fis d g1 fis2 | e1 <b d> | a2 2~2 e'~ |
  e4 4 dis dis e d8 c b c a b | c b c d c e d c b4 cis d2 | g,4 r cis2~2 b |
  e2 a,1 fis'2~ | 4 <d fis> eis4 4 fis e8 d cis d b cis | d cis d e d fis e d cis2 fis | % 44a
  b,2 fis4 e dis r d'2 | e fis g fis4 e | fis d g2~2 fis | e d~4 b2 4 |
  <g a>4 <fis a> b2 e, <fis a> | % 44c
  <g b> cis d <<{d2} \new Voice {\vth cis4 b}>> \vo |
  <<{e2} \new Voice {\vth cis4 a}>> \vo <fis' a>2 <g b> <<{cis2} \new Voice {\vth fis,4 e}>> \vo | d'2 cis4 b cis a d2~ | 2 cis b1 |
  a4 g8 fis g2~2 fis | g a~4 g8 fis <g b>2 | \ov <e g a>~<d fis a> \vo gis a | <fis a> gis <e a>1 | % 45a
  d8 e d cis b cis a b cis d b cis dis e cis dis | e2~2~<cis e>4 d8 cis d e fis d | g1~2 fis | s a b cis |
  d2. 4~8 cis b a b2~ | 4 <e, a>8 g <fis a>1 <e g>2~ | 4 fis8 e fis4 b fis2 <cis e> | \ov <fis, a d>\breve\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s1*2 | b2 cis d cis4 b | cis a d2~2 fis4 e | fis d g1 fis2 |
  e1 d2 2~ | 4 4 cis4 4 d cis8 b a2 | b8 a b cis e2 <e a>4 g8 fis e fis d e |
  fis2 4 s2. 2 | d4 cis a2 b cis | d cis4 b cis2 fis~ | 4 e fis e <d fis> fis e d |
  b'4 a2 d4 g, b a g | fis1 e2 fis | g2 fis4 e fis d a'2~ | 2 g d' cis4 b | % 43a
  <<{\vf cis4 a} \new Voice {\vt e2}>> \vt a2 b cis | % 43b
  b2 cis4 b cis a d2 | <e, d'> <fis cis'> g fis4 e | fis d e2 dis <g b> |
  <fis c'>2 <fis b> g s | s\breve | e8 d e fis e g fis e d4 e fis2 | % 43c
  e1~4 d cis' a | gis2 <gis cis> <fis cis'>4 r <e gis>2 | a r e <fis a> | % 44a
  g2 cis, d4 r g2~ | 2 fis s1 | s r4 d'2 4 | cis4 4 d8 cis b a g4 d <cis g'>2 |
  d2 cis4 b cis a d2~ | 2 fis4 e fis d g2~ | 2 d'~d cis | fis4 d g2~2 fis | e1 d2 r |
  d1 cis4 a d2 | % 45a
  <d fis>4 <cis e>8 <b d> <<{\vf fis'4 e fis d} \new Voice {\vt a2~2}>> d2 |
  s1 <b e>2~<cis e> | d4 cis <b d>2 d4 d cis cis |
  fis,2 e e a4 gis8 a | b cis a b <fis cis'>2~fis b | <b d> <a cis> a <a d> | <a e'> fis' g fis4 e | % 45b
  fis4 b~8 a gis fis e2~8 fis e d | cis2. d4 b a b2 | % 45c
  a4 b8 cis d4 <b d> <<{a2} \new Voice {\vf d4 cis8 b}>> a4 4 | s\breve |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global \ov
  r2 <d, d'> <e e'> <fis fis'> | <g g'> <fis fis'>4 <e e'> <fis fis'> <d d'> <g g'>2~ | q <fis fis'> <e e'>1 | <d d'> \vo a'' |
  r2 <a, a'>~4 4 <gis gis'> q | <a a'> g'8 fis e fis d e fis e fis g fis g fis e | d4 cis8 b <e, e'>2 <a, a'> a'' |
  d2 \vo a4 b8 c d4 cis8 b \ov <d,, d'>2 | % 42c
  <e e'> <fis fis'> <g g'> <fis fis'>4 <e e'> |
  <fis fis'>4 <b, b'> b'2~4 a2 d4 | <g, g'> <b b'> <a a'> <g g'> <fis fis'>1~ |
  q8 e' fis g fis e d cis b2 cis | \vo d'2 \ov <b, b'>2~4 q <ais ais'> q | % 43a
  <b b'>8 cis a b cis d b cis d cis d e d e d cis |
  <b b'>1~4 <cis cis'> <d d'>2 |
  <a a'>2 <g g'>4 <fis fis'> <e e'>2 <a a'> | <d, d'> <e e'> <a, a'>1~ | % 43b
  q2 <ais ais'> <b b'> <cis cis'> | <d d'> <c c'> <b b'> <e e'> |
  <a, a'>2 <b b'> <e, e'> g'''~ | 4 4 fis4 4 g fis8 e \vo d e cis d | % 43c
  s4 \ov b ais ais b r <d,, d'>2~ |
  q4 q <cis cis'> q <d d'> cis'8 b a b gis a | % 44a
  b a b cis b d cis b a4 <b, b'> <cis cis'>2 |
  fis4 <fis fis'> <b b'>2~4 <a a'> <g g'> <fis fis'> |
  <e e'>2 <a a'> <d, d'>4 d'' cis b | cis a d2~<d e>~ <c e>~ | % 44b
  <c d>2 b <d,, d'>1 | <e e'>2 <fis fis'> <g g'> <fis fis'>4 <e e'> |
  <fis fis'>4 <d d'> <g g'>1 <fis fis'>2 | % 44c
  <e e'> <a a'> <d, d'>4 <fis fis'> <b b'>2~ |
  q4 <cis cis'> <d d'>8 <c c'> <b b'> <a a'> <g g'>4 <e e'> <a a'>2 |
  <d, d'>2 g' a \vo d | e fis g fis4 e |
  fis4 s cis b \ov <a,, a'>1 | % 45a
  <b b'>2 <cis cis'> <d d'> <cis cis'>4 <b b'> |
  <cis cis'> 4 <a a'> <d d'>1 <cis cis'>4 4 | <b b'>1 <a a'>2 <a' a'>~ |
  q4 q <gis gis'> q <a a'>8 b a g fis g e fis | % 45b
  gis8 a fis gis ais b gis ais b1~ | 4 a8 g a b cis a d4 <a a'> <d d'>2~ |
  q2 <c c'> <b b'>1~ |
  q2 <a a'> <gis gis'>1 | <a a'>2. <d, d'>4 <g g'> <fis fis'> <g g'> <e e'> | % 45c
  <fis fis'>2. \vo g'4 a2 a,4 4 |
  \ov \repeat tremolo 32 {d,,32\fermata d'} |
}

pianoLHtwo = \relative {
  \global \vt
  s1*7 r1 |
  s1*6 | s2 d g s | s1*6 |
  s1*2 | d4 fis s2*3 | s1*4 | % 43a
  s1*8 |
  s1*2 | s1 s2 b~ | 4 s s1. |
  s1*6 | % 44a
  s1*8 |
  s1*7 s2 b | g a b cis |
  d2 s1. | s1*6 | % 45a
  s1*8 |
  s1*4 | s2. g,,4 a4 8 8 a,2 | s\breve |
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

#(set-global-staff-size 18)

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
