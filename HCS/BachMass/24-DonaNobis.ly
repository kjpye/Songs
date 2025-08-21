\version "2.25.26"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "№ 24. Dona Nobis Pacem (chorus)"
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
  \tempo \markup {\with-color "red" "slow 4"} 2=90
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "157a" } s\breve*4
  \textMark \markup { \box "157b" } s\breve*3
  \textMark \markup { \box "157c" } s\breve*4
  \textMark \markup { \box "158a" } s\breve*2
  \mark \markup\circle\bold A       s\breve*2
  \textMark \markup { \box "158b" } s\breve*4
  \textMark \markup { \box "158c" } s\breve*3
  \textMark \markup { \box "159a" } s\breve*2
  \mark \markup\circle\bold B       s\breve
  \textMark \markup { \box "159b" } s\breve*4
  \textMark \markup { \box "159c" } s\breve*5
  \mark \markup\circle\bold C
  \textMark \markup { \box "160a" } s\breve*4
  \textMark \markup { \box "160b" } s\breve*3
  \textMark \markup { \box "160c" } s\breve*5
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

soprano = \relative {
  \global
  R\breve*2 | r2 a'(b) cis | d(cis4 b cis) a d2~ |
  d2 cis b1 | a2 r r1 | r2 d1 cis2 |
  d4(cis8 b a b g a b a b c b c b a | g4) e a2 d, r | r1 r2 a'( | b) cis d(cis4 b |
  cis4) fis, fis'2~4(e8 d e2~ | 4 d2) g4 cis, e d(cis) | b1 r | r d( | % 158a
  e2) fis g(fis4 e | fis) d g1 fis2 | e1 d | r1 r2 e~ |
  e2 dis e4(d8 c b c a b | c b c d c e d c b4) cis d2 | g,4 r cis1 b2 |
  e4 e a,2 4 r fis'2~ | 2 eis fis4(e8 d cis d b cis | d cis d e d fis e d cis4) 4 fis2 | % 159a
  b,2 r r d( | e) fis g(fis4 e | fis) d g1 fis2 | e d~4 b2 4 |
  a4 a b2 e,4 r a2( | b) cis d(cis4 b | cis) a d1 cis2 | b1 a | R\breve |
  d1(e2) fis | g(fis4 e fis) d g2~ | 2 fis e1 | d2 1 cis2 | % 160a
  d8(e d cis b cis a b cis d b cis dis e cis d | e1~4 d8 cis d e fis d | g1~2) fis |
  e\breve | d2 r4 d(e2~8 fis e d | cis4) a fis'1(e2~ | 4) a, d2~4 cis8(b) cis2 | d\breve\fermata |
  \bar "|."
}

Dnpc = \lyricmode { Do -- na no -- bis pa -- cem, }
dnpc = \lyricmode { do -- na no -- bis pa -- cem, }
d_npc = \lyricmode { do -- na __ no -- bis pa -- cem, }
dnpp = \lyricmode { do -- na no -- bis pa -- cem. }
dpc  = \lyricmode { do -- na pa -- cem, }
dc   = \lyricmode { do -- na, }
pc   = \lyricmode { pa -- cem, }
dnc  = \lyricmode { do -- na no -- bis, }

wordsSop = \lyricmode {
  \Dnpc \pc \pc \dnc \dnc
  \pc \dnc \dnpc \pc \pc \dnpc % 158
  \dnpc \dnc \dnpc \pc __ \dnpc \dnpc \pc
  \dnpc \pc \pc \dpc \dc \dnpp
}

MDnpc = \lyricmode { Do "na " no "bis " pa "cem, " }
Mdnpc = \lyricmode { do "na " no "bis " pa "cem, " }
Mdnpp = \lyricmode { do "na " no "bis " pa "cem. " }
Mdpc  = \lyricmode { do "na " pa "cem, " }
Mdc   = \lyricmode { do "na, " }
Mpc   = \lyricmode { pa "cem, " }
Mdnc  = \lyricmode { do "na " no "bis, " }

wordsSopMidi = \lyricmode {
  \MDnpc \Mpc \Mpc \Mdnc \Mdnc
  \Mpc \Mdnc \Mdnpc \Mpc \Mpc \Mdnpc % 158
  \Mdnpc \Mdnc \Mdnpc \Mpc \Mdnpc \Mdnpc \Mpc
  \Mdnpc \Mpc \Mpc \Mdpc \Mdc \Mdnpp
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  R\breve | r1 r2 d'( | e) fis g(fis4 e | fis) d g1 fis2 |
  e1 d | r r2 a'~ | a gis a4(g8 fis e dis d fis |
  fis8 e fis g fis g fis e d4) b fis'2 | b, r r1 | r2 d(e) fis | g(fis4 e fis) b, b'2~ |
  b4(a2) d4 g, b a(g) | fis1 r | r a( | b2) cis d(cis4 b | % 158a
  cis4) a d1 cis2 | b1 a2 d,( | e) fis g(fis4 e | fis) d a'1 g2 |
  fis1 e2 g~ | g fis g4(fis8 e d e cis d | e d e fis e g fis e d4) e fis2 |
  b,2 e~4 d cis a' | gis1 fis2 r | r d(e) fis | % 159a
  g2(fis4 e fis) d g2~ | g fis e1 | d2 r r4 d'2 4 | cis4 4 d8(cis b a g4) d g2~ |
  g4 fis d2(e) fis | f(fis4 e fis) d g2~ | g fis e1 | d1 r2 d( | e) fis g(fis4 e |
  fis4) d g1(fis2~ | 4 e8 d a'2~4 g8 fis b2) | a a fis a~ | a gis a8(e fis g a b g a | % 160a
  b4) fis b2~4 e, a2 | e4 r cis'2~4 b8(ais) b2~ | 4 4 e,2 d d( |
  e2) fis g(fis4 e | fis b2) 4 e,(gis b2~ | 4) e, a2~4 d, g2~ | 4(fis8 e fis4) b fis(e8 d e2) | fis\breve\fermata |
}

wordsAlto = \lyricmode {
  \Dnpc \pc \pc \dnc \dnpc
  \dnc \dnpc \pc \dnpc \pc \pc \dnc % 158
  \dnpc \dnpc \pc \dnc \dpc \dnpc \pc \dnpc
  \dpc \dc \dnpc \dnc \dnpc \dnpp
}

wordsAltoMidi = \lyricmode {
  \MDnpc \Mpc \Mpc \Mdnc \Mdnpc
  \Mdnc \Mdnpc \Mpc \Mdnpc \Mpc \Mpc \Mdnc % 158
  \Mdnpc \Mdnpc \Mpc \Mdnc \Mdpc \Mdnpc \Mpc \Mdnpc
  \Mdpc \Mdc \Mdnpc \Mdnc \Mdnpc \Mdnpp
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  r1 r2 a( | b) cis d(cis4 b | cis) a d1 cis2 | b1 a |
  r1 r2 d~ | d cis d4(cis8 b a b g a | b a b cis b d cis b a4) e a2 |
  d,1 r | r2 a'(b) cis | d(cis4 b cis) fis, fis'2~ | 4(fis2) a4 d, fis e(d) |
  cis1 r | d1(e2) fis | f(fis4 e fis) d a'2~ | a g fis1 | % 158a
  e2 a,(b) cis | d(cis4 b cis) a d2~ | d cis b1 | a2 e'4 4 dis(b2) 4 |
  c2(b) g r | r1 r2 b~ | b ais b4(a8 g fis g e fis |
  g8 fis g a g b a g fis4) g a2 | d,4 d'(cis) 4 4 d e2 | a, r r a( | % 159a
  b2) cis d(cis4 b | cis) a d1 c2 | c(b) a1 | r2 a(b) cis |
  d2(cis4 b cis) a d2~ | d cis b4(fis' e d | cis e d fis b,2) a~ | a g a b | g a(b) cis |
  d2(cis4 b cis) a d2~ | 4(cis8 b e2~4) a, d2( | e) d4(cis) b2 cis | d4(cis) b2 e2. 4 | % 160a
  fis4 d e2~4 4 fis2 | b, fis'2~8(g fis e fis4) d | 2(cis4) a4 2 2 |
  r2 a(b) cis | d(e4) fis d2(e~ | 4) cis2 d8(cis b4 a) b(g) | a(b8 cis d4) b a1 | a\breve\fermata |
}

wordsTenor = \lyricmode {
  \Dnpc \pc \pc \dnc \dnpc \dnc
  \dnpc \pc \dnpc \pc \dnpc \pc \dnpc % 158
  \dnc \dnpc \pc \dnpc \d_npc \dnpc
  \dnpc \dnpc \pc \dnpc \dnpc \dnpp
}

wordsTenorMidi = \lyricmode {
  \MDnpc \Mpc \Mpc \Mdnc \Mdnpc \Mdnc
  \Mdnpc \Mpc \Mdnpc \Mpc \Mdnpc \Mpc \Mdnpc % 158
  \Mdnc \Mdnpc \Mpc \Mdnpc \Mdnpc \Mdnpc
  \Mdnpc \Mdnpc \Mpc \Mdnpc \Mdnpc \Mdnpp
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  r2 d^\markup{\with-color "red" \bold "very soft"}
  (e) fis | g(fis4 e fis) d g2~ | g fis e1 | d r |
  r2 a'1^\markup{\with-color "red" \bold "start to get louder"} gis2 | a4(g8 fis e fis d e fis e fis g fis g fis e | d4) b e2 a,1 |
  r1 r2 d(e) fis g(fis4 e fis) b, b'2~4(a2) d4 | g, b a(g) fis1 |
  R\breve | r2 b1 ais2 | b8(cis a b cis d b cis d cis d e d e d cis | b1~4 cis) d2 | % 158a
  a2 g4(fis) e2 a | d,(e) a,1~ | 2 ais8(b gis ais b cis ais b cis d b cis | d cis d e c b c d b4) b e2 |
  a,2 b e r | R\breve | r1 r2 d~ |
  d2 cis d4(cis8 b a b gis a | b a b cis b d cis b a4) b cis2 | fis,4 r b'2~4 a g fis | % 159a
  e2(a) d, r | R\breve | r1 d( | e2) fis g(fis4 e |
  fis4) d g1 fis2 | e(a) d,4 r b'2~4(cis) d(b) g e a2 | b, r r1 | R\breve |
  r1 a( | b2) cis d(cis4 b | cis) a d1 cis2 | b1 a2 a'~ | % 160a
  a2 gis a8(b a g fis g e fis | gis a fis gis ais b gis ais b1~ | 4 a8 g a b cis a d4 a d2~ |
  d2) c b1~ | 2 a gis1 | a4 2 d,4 g(fis g) e | fis2.(g4 a2 a,) | d\breve\fermata |
}

wordsBass = \lyricmode {
  \Dnpc \pc \pc \dnc \dnpc \dnpc
  \pc \dnpc __ \dnpc \pc % 158
  \dnc \dnpc \dnpc \pc \dnpc
  \dnpc \pc \pc \dnpc \dnpp
}

wordsBassMidi = \lyricmode {
  \MDnpc \Mpc \Mpc \Mdnc \Mdnpc \Mdnpc
  \Mpc \Mdnpc \Mdnpc \Mpc % 158
  \Mdnc \Mdnpc \Mdnpc \Mpc \Mdnpc
  \Mdnpc \Mpc \Mpc \Mdnpc \Mdnpp
}

pianoRHone = \relative {
  \global
  r1 r2 a \vo | R\breve | r2 <fis' a> <g b> cis | d cis4 b cis a d2~ |
  d2 cis b1 | a2 r r a~ | a d1 cis2 |
  d4 cis8 b a b g a b a b c b c b a | g4 e a2 d, r | d d e a | <g b> cis d cis4 b |
  cis4 fis, fis'2~4 b, e2~ | 4 d2 g4 cis, e d cis | b1 a2 a | b cis <fis, d'>1 | % 158a
  e'2 <d fis> <d g> fis4 e | <d fis>4 d cis b cis a fis'2 | e2~2 <b d>1 | a2 1 e'2 |
  <c e>2 dis2 e4 \ov d8 c b c a b | c b c d c e d c b4 cis d2 | g,4 r \vo cis1 b2 |
  <b e>2 a4 2 r4 fis'2~ | 2 <cis eis> <cis fis>4 e8 d cis d b cis | d cis d e d fis e d cis2 fis | % 159a
  b,2 r r d | e fis g fis4 e | fis d g1 fis2 | e d~ <b d>4 b2 4 |
  a2 <d, b'> e <fis a> | <g b> cis d d | e <fis a> <g b> cis | d cis4 b cis a s2 | 2 cis b1 |
  a4 g8 fis g2 <e g> <d fis> | g a2 4 g8 fis b2 | a a gis a | <fis a> gis a cis, | % 160a
  d8 e d cis b cis a b cis d b cis dis e cis dis | e2 2~4 <b d>8 <ais cis> d8 e fis d | g1 2 <d fis> |
  e2 <fis a> <g b> cis | d d~8 cis b a <gis b>2 | <b cis>4 a8 g <fis a>1 <e g>2~ | g4 fis8 e fis4 b fis2 <cis e> | <fis, a d>\breve\fermata |
}

pianoRHtwo = \relative {
  \global \vt
  s1*2 | b2 cis d cis4 b | cis a d1 cis2 | fis4 d g1 fis2 |
  e1 d2 d~ | d cis d4 cis8 b a b g a | b a b4 r e a g8 fis e fis d e |
  fis8 e fis g fis4. e8 d4. e8 fis2 | b, a b cis | d cis4 b cis fis, fis'2~ | 4 e2 <e a>4 d fis e d |
  cis4 a'2 d4 g, b a g | fis1 e2 fis | g fis4 e fis d a'2~ | a g d' cis4 b | % 158a
  cis4 a4 2 b cis | b1 a4 a d d, | <e d'>2 <fis cis'> g fis4 e | fis d e e dis b g'2 |
  fis1 <e g>2 s | s\breve | s1 s4 e fis8 g e fis |
  g8 fis g a <e g>4 a8 g fis4 g a2 | gis2 2 fis e | a d, e <fis a> | % 159a
  g2 cis, <d fis>4 d g2 | g fis s1 | s2 r r4 d'2 4 | cis cis a2 g4 d <cis g'>2~ |
  g'4 fis cis b cis a d2~ | d fis4 e fis d g2~ | 2 d'1 cis2 | fis4 d g1 fis2 | e1 d2 r |
  d1 <a cis>4 a~2 | s4 <cis e>8 <b d> <a fis'>4 <a e'> a2 <d g> | <e g> <d fis> e2.~ <a, e'>4 | d2. cis8 d <d e>2 a8 b gis a | % 160a
  b4 <d, fis> e2 4 4 a8 b gis a | b cis ais b <fis cis'>2~fis8 g fis e fis4 s | d'4 cis8 b cis d e cis <a d>2 <fis a> |
  a1 e'4 fis g <e a> | <fis b> q b8 a gis fis e2 2 | e4 4 r d d r r2 | <a e'>4 a d2 <a d>4 <a cis>8 <a b> a4 a | s\breve |
}

pianoRHthree = \relative {
  \global \vth
  s1*2 | r1 r2 d' | e s1 fis4 e | s1*2 |
  s\breve*3 |
  s\breve*3 | s4 fis s1. |
  s\breve*4 | % 158a
  s\breve | s2 g'1 s2 | s\breve | s1. b,4 4 |
  s\breve*3 |
  s\breve | \vf r4 d s1. | s\breve | % 159a
  s2 fis,4 e s1 | s\breve*2 | s2 d'8 cis b a s1 |
  d,2 s1. | s1. \vth cis'4 b | \vf cis a s1 \vth fis'4 e | s\breve*2 |
  s1. \vo <d fis>2_~ | \vf q4 s2. fis4 d s2 | s\breve*2 | % 160a
  s\breve | s2 \once\hideNotes cis2^~ \vo cis4 s \vth b2 | s\breve |
  s\breve*5 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s\breve*45 | s\breve-\markup\italic "(trem.)" |
}

pianoLH = \relative {
  \global
  r2 <d, d'> <e e'> <fis fis'> |
  <g g'> <fis fis'>4 <e e'> <fis fis'> <d d'> <g g'>2~ | q <fis fis'> <e e'>1 |
  <d d'>1 a'' |
  r2 <a, a'>1 <gis gis'>2 | % 157b
  <a a'>4 g8 fis e fis d e fis e fis g fis g fis e |
  d4 <b b'> <e e'>2 <a, a'> a'' |
  d,2 d' g, <d, d'> | % 157c
  <e e'> <fis fis'> <g g'> <fis fis'>4 <e e'> |
  <fis fis'>4 <b, b'> b'2~4 a2 d4 |
  <g, g'>4 <b b'> <a a'> <g g'> <fis fis'>1~ |
  q8 e' fis g fis e d cis b2 cis | % 158a
  <<{\vo d'2} \new Voice {\vt d,4 fis}>> <b, b'>1 <ais ais'>2 |
  <b b'>8 cis a b cis d b cis d cis d e d e d cis |
  <b b'>1~4 <cis cis'> <d d'>2 |
  <a a'>2 <g g'>4 <fis fis'> <e e'>2 <a a'> | % 158b
  <d, d'>2 <e e'> <a, a'>1~ |
  q2 ais'8 b gis ais b cis ais b cis d b cis |
  d8 cis d e c b c d b cis dis b <e, e'>2 |
  <a, a'>2 <b b'> <e, e'> \clef treble g'''~ | % 158c
  g2 fis g4 fis8 e <<{\vo d8 e cis d | e d e fis e g fis e d4 s} \new Voice {\vt b2~ | b ais b4 a8 g}>> \ov \clef bass <d, d'>2~ |
  q2 <cis cis'> <d d'>4 cis'8 b a b gis a | % 159a
  b8 a b cis b d cis b a4 <b, b'> <cis cis'>2 |
  fis4 <fis fis'> <b b'>2~4 <a a'> <g g'> <fis fis'> |
  <e e'>2 <a a'> <d, d'>4 r cis'' b | % 159b
  cis4 a <<{\vo s2 e'~e | s} \new Voice {\vt d2~d c~ | c}>> \ov b2 <d,, d'>1 |
  <e e'>2 <fis fis'> <g g'> <fis fis'>4 <e e'> |
  <fis fis'>4 <d d'> <g g'>1 <fis fis'>2 | % 159c
  <e e'>2 <a a'> <d, d'>4 <fis fis'> <b b'>2~ |
  q4 <cis cis'> <d d'> <b b'> <g g'> <e e'> <a a'>2 |
  <d, d'>1 a''2 b |
  g2 a b cis |
  d2 cis4 b <a,, a'>1 | % 160a
  <b b'>2 <cis cis'> <d d'> <cis cis'>4 <b b'> |
  <cis cis'>4 <a a'> <d d'>1 <cis cis'>2 |
  <b b'>1 <a a'>2 <a' a'>~ |
  q2 <gis gis'> <a a'>8 b a g fis g e fis | % 160b
  gis8 a fis gis ais b gis ais b1~ |
  b4 a8 g a b cis a d4 <a a'> <d d'>2~ |
  q2 <c c'> <b b'>1~ | % 160b
  q2 <a a'> <gis gis'>1 |
  <a a'>2. <d, d'>4 <g g'> <fis fis'> <g g'> <e e'> |
  <fis fis'>2. <g g'>4 <a a'>2 <a, a'> |
  <d, d'>\breve\fermata |
}

#(set-global-staff-size 17)

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
            \new Voice \pianoRHthree
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
            \new Voice \pianoRHthree
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
            \new Voice \pianoRHthree
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
            \new Voice \pianoRHthree
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
            \new Voice \pianoRHthree
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
            \new Voice \pianoRHthree
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
            \new Voice \pianoRHthree
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
            \new Voice \pianoRHthree
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
