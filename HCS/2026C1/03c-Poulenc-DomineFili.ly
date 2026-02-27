\version "2.25.34"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Gloria"
  subtitle    = "IV. Domine fili unigenite"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Poulenc"
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
  \numericTimeSignature
  \key g \major
  \time 4/4
  \partial 8
}

TempoTrack = {
  \tempo "Trés vite et joyeux" 4=112
%  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \mark \markup\bold\circle "36"
  \textMark \markup { \box "27a" } s8 s1*2
  \textMark \markup { \box "27b" } s1*2
  \textMark \markup { \box "27c" } s1*2
  \textMark \markup { \box "28a" } s1*3
  \mark \markup\bold\circle "37"
  \textMark \markup { \box "28b" } s1 \time 3/4 s2. \time 4/4 s1 |
  \textMark \markup { \box "29a" } \time 3/4 s2.*3
  \textMark \markup { \box "29b" } \time 4/4 s1
  \mark \markup\bold\circle "38"   s1
  \textMark \markup { \box "30a" } s1*3
  \mark \markup\bold\circle "39"
  \textMark \markup { \box "30b" } s1 \time 3/4 s2. \time 4/4 s1
  \textMark \markup { \box "31a" } \time 3/4 s2.*3
  \textMark \markup { \box "31b" } \time 4/4 s1*2
  \mark \markup\bold\circle "40"
  \textMark \markup { \box "32a" } s1 \time 3/4 s2. \time 4/4 s1
  \textMark \markup { \box "32b" } \time 3/4 s2.*3 |
  \textMark \markup { \box "33a" } \time 4/4 s1
  \mark \markup\bold\circle "41"   s1
  \textMark \markup { \box "33b" } s1 \time 3/4 s2. \time 4/4 s1
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s8 s1*6 |
  s1*4 s2. s1 | % 28
  s2.*3 | s1\ff s |
  s1*3 | s1\ff s2. s1 |
  s2.*3 | s1\ff s | % 31
  s1\omit\p-\markup{\dynamic p \italic subito} s2. s1 | s2. s\ff s |
  s1*2 | s1 s2. s1 |
}

soprano = \relative {
  \global
  r8 R1*6 |
  R1*4 R2. R1 | % 28
  R2. | e''4 b8 a b r | e4 b8 a b r | % 29a
  d4-- d-- d-- d8 r | R1 |
  R1*3 | % 30a
  fis4. d8 cis b a r | b d fis,8. 16 8 r | fis'4. d8 cis b a r |
  b8 d fis,8. 16 8 r | R2.*2 | % 31a
  a4 4 4 8 r | R1 |
  f'4. c8 b e c r | c b c8. 16 8 r | R1 | % 32a
  R2. | d4 g,8 a d r | d4 g,8 a d r |
  d4 4 4 8 r | R1 | % 33a
  R1 | g,4 b c | e8 r r4 r2 |
  \bar "|."
}

DDu = \lyricmode { Do -- mi -- ne De -- us u -- ni -- ge -- ni -- te }
Dfu = \lyricmode { Do -- mi -- ne fi -- li u -- ni -- ge -- ni -- te }
JCe = \lyricmode { Je -- su Chris -- te! }

wordsSop = \lyricmode {
  \JCe \JCe \JCe
  \DDu \DDu % 30
  \JCe
  \Dfu \JCe \JCe
  \JCe \JCe % 33
}

MDDu = \lyricmode { "\nDo" mi "ne " De "us " u ni ge ni "te " }
MDfu = \lyricmode { "\nDo" mi "ne " fi "li " u ni ge ni "te " }
MJCe = \lyricmode { "\nJe" "su " Chris "te! " }

wordsSopMidi = \lyricmode {
  \MJCe \MJCe \MJCe
  \MDDu \MDDu % 30
  \MJCe
  \MDfu \MJCe \MJCe
  \MJCe \MJCe % 33
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s8 s1*6 |
  s1*3 | s1\ff s2. s1\f | % 28
  s2.*3 | s1\ff s |
  s1*3 | s1\ff s2. s1 |
  s2. s\mf s | s1\ff s | % 31
  s1\omit\p-\markup{\dynamic p \italic subito} s2. s1\mf | s2. s\ff s |
  s1*2 | s1 s2. s1 |
}

alto = \relative {
  \global
  r8 R1*6 |
  R1*3 e'4. 8 8 d e r | e a g8.-> e16 8 r8 | e4. 8 8 8 g r | % 28
  e8 a g8. e16 8 r | g4 e8 c d r | g4 e8 c e r | % 29a
  d4-- d-- d-- d8 r | R1 |
  R1*3 | % 30a
  a'4. fis8 e d cis r | d fis a,8. 16 8 r | a'4. fis8 e d cis r |
  d8 fis a,8. 16 8 r | b'4 fis8 e fis r | b4 fis8 e fis r | % 31a
  a,4 4 4 8 r | R1 |
  a'4. f8 e b' e, r | a f e8. 16 8 r | ees'4. c8 a d bes r | % 32a
  c8 g a8. 16 8 r | g4 bes,8 ees f r | g4 bes,8 ees f r |
  d4 4 4 8 r | R1 | % 33a
  R1 | e4 g g | b8 r r4 r2 |
}

wordsAlto = \lyricmode {
  \Dfu \Dfu % 28
  \JCe \JCe \JCe
  \DDu \DDu
  \JCe \JCe \JCe % 31
  \Dfu \Dfu \JCe \JCe
  \JCe \JCe
}

wordsAltoMidi = \lyricmode {
  \MDfu \MDfu % 28
  \MJCe \MJCe \MJCe
  \MDDu \MDDu
  \MJCe \MJCe \MJCe % 31
  \MDfu \MDfu \MJCe \MJCe
  \MJCe \MJCe
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s8 s1*6 |
  s1*4 s2. s1\f | % 28
  s2.*3 | s1\ff s |
  s1*3 | s1\ff s2. s1 |
  s2. s\mf s | s1\ff s | % 31
  s1\omit\p-\markup{\dynamic p \italic subito} s2. s1\mf | s2. s\ff s |
  s1*2 | s1 s2. s1 |
}

tenor = \relative {
  \global
  r8 | R1*6 |
  R1*4 | R2. | e'4. 8 8 8 g r | % 28
  e8 a, g'8. e16 8 r | b4 g8 e fis r | b4 g8 e fis r | % 29a
  e'4-- e-- e-- e8 r | R1 |
  R1*3 | % 30a
  cis4. g8 a b cis r | c b fis'8. 16 8 r | cis4. g8 a b cis r |
  d8 b fis'8. 16 8 r | d4 8 b cis r | d4 8 b cis r | % 31a
  b4 4 4 8 r | R1 |
  d4. 8 gis,8 8 a r | f d a'8. 16 8 r | g'4. ees8 d d ees r | % 32a
  g8 ees g8. 16 fis8 r | d4 g,8 bes d r | d4 g,8 bes c r |
  ees4 4 4 8 r | R1 | % 33a
  c4 e g e8 r | b4 c e | g8 r r4 r2 |
}

wordsTenor = \lyricmode {
  \Dfu
  \JCe \JCe \JCe % 29
  \DDu \DDu
  \JCe \JCe \JCe
  \Dfu \Dfu \JCe \JCe % 32
  \JCe \JCe \JCe
}

wordsTenorMidi = \lyricmode {
  \MDfu
  \MJCe \MJCe \MJCe % 29
  \MDDu \MDDu
  \MJCe \MJCe \MJCe
  \MDfu \MDfu \MJCe \MJCe % 32
  \MJCe \MJCe \MJCe
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s8 s1*6 |
  s1*3 | s1\ff s2. s1\f | % 28
  s2.*3 | s1\ff s |
  s1*3 | s1\ff s2. s1 |
  s2. s\mf s | s1\ff s | % 31
  s1 s2. s1\mf | s2. s\ff s |
  s1*2 | s1 s2. s1 |
}

bass = \relative {
  \global
  r8 R1*6 |
  R1*3 | e4. 8 8 d e r | e a g8.-> e16 8 r | 4. 8 8 8 g r | % 28
  e8 a g8. e16 8 r | c4 8 a b r | c4 8 a b r | % 29a
  d4-- d-- d-- d8 r | R1 |
  R1*3 | % 30a
  fis4. 8 8 8 8 r | fis8 8 8. 16 8 r | fis4. 8 8 8 8 r |
  fis8 8 8. 16 8 r | g(b) g e fis r | g(b) g e fis r | % 31a
  a,4 4 4 8 r | R1 |
  R1 | R2. | c'4. a8 fis d g r | % 32a
  ees8 c d d d r | ees4 8 c d r | ees4 8 c d r |
  d4 4 4 8 r | R1 | % 33a
  e4 g c b8 r | a4 e b' | c8 r r4 r2 |
}

wordsBass = \lyricmode {
  \Dfu \Dfu % 28
  \JCe \JCe \JCe
  \DDu \DDu
  \JCe \JCe \JCe %$ 31
  \Dfu \JCe \JCe
  \JCe \JCe \JCe
}

wordsBassMidi = \lyricmode {
  \MDfu \MDfu % 28
  \MJCe \MJCe \MJCe
  \MDDu \MDDu
  \MJCe \MJCe \MJCe %$ 31
  \MDfu \MJCe \MJCe
  \MJCe \MJCe \MJCe
}

pianoRHone = \relative {
  \global \vo
  b''16(c | d8) g,16(a b8) d,16(fis g fis g8~16) r b,16(c |
  d8) g,16(a b8) d,16(fis g fis g8~8) r |
  \ov <b, d fis b>4-. <c e b'>8-. <d fis b>-. <fis b d>-> <d fis b> r16 fis16(g a | % 27b
  \vo b8) a16(b c b a b d8) b->~16 r g8-. |
  <d' f>4-> <c e>8-. <g c>-. <a d>4-> \ov r8 b'16(c | % 27c
  \vo d8) g,16(a b8) d,16(fis g fis g8)~16 \ov r b,16(c |
  \vo d8) g,16(a b8) d,16(fis g fis g8) r4 | % 28a
  \ov <b, d fis b>4-. <c e b'>8-. <d fis b>-. <fis b d>->(<d fis b>) r16 fis(g a |
  \vo b8 a16 b c b a b) d8-. b-. r4 |
  \ov <g e'>8-.-- d16( [ e ] ) g(e d e) g,(e' d e) g(e d e) | % 28b
  \vo c16 a' e a b, g' e g b, g' e g |
  \ov g,16(e' d e) g(e d e) g,(e' d e) g(e d e) |
  \vo c16(a' e a) b,(g' e g) b,( g' e g) | % 29a
  <b e>4-- <g b>8-- <e a>-- <fis b>4-- |
  <b e>4-- <g b>8-- <e a>-- <fis b>4-- |
  <d e d'>4-- q--\laissezVibrer \lh e16(fis g a) \ss \rh d \hs r b'(c | % 29b
  d8) g,16(a b8) d,16(fis g fis g8)~16 \ov r b,(c |
  \vo d8) g,16(a b8) d,16(fis g8) g-. r4 | % 30a
  \ov <b, d fis b>4-- <c e b'>8-. <d fis b>-. <fis b d>-> <d fis b> r16 fis(g a |
  \vo b8 a16 b c b a b) d8-. b-. r4 |
  a16 cis(fis cis) a(cis) fis,(d') e,(cis') d,(b') a8 r | % 30b
  d,16(b') fis(d') \ov a,(fis' cis a') a,(fis' c a')
  \vo a16 cis(fis cis) a(cis) fis,(d') e,(cis') d,(b') a8 r |
  d,16(b') fis(d') a,(fis' cis a') a,(fis' c a') | % 31a
  <fis b>4-- fis8-- e-- fis4-- | <fis b>-- fis8-- e-- fis4-- |
  \ov <a, b d a'>4-- <a b d g>--\laissezVibrer \lh b16(cis d e) \rh a r fis'(g | % 31b
  \vo a8) d,16(e fis8) a,16 cis d cis d8 r4 |
  \ov <a d f>4.(<f a d>8 <e b'> [ <e b' e> ] <e a c>) r | % 32a
  <d a' d>8-- <d f a>-- \vo <a' c>4-- c8 r |
  \ov <g c ees>4.(<ees g c>8 <d a'> [ <d a' d> ] <d g bes>) r |
  <c g' c>8-- <ees g>-- \vo a4--~8 r | % 32b
  d4--(g,8 [ a ] d) r | d4--(g,8 [ a ] d) r |
  \ov <d,e d'>4-- q--\laissezVibrer e16(fis g a) d r b'(c | % 33a
  \vo d8) g,16(a b8) d,16(fis g fis g8) r4 |
  e,4--^\markup\bold "sans ralentir" g-- b-- e-- | g-- b-- c-- | % 33b
  \ov <g c e>8 r r^\markup\italic "sans ralentir" <c, d g>16(fis, <b d g>8) r b, r |
}

pianoRHtwo = \relative {
  \global \vt
  r8 | g''16(d) r8 e16(c) r8 b8 16(d b g) r8 |
  g16(d) r8 e16(c) r8 b8 8~8 r |
  s1 | <d fis>2 4. s8 | % 27b
  bes16 f bes d g(e) e(c) fis d \lh d \rh d' r8 s | % 27c
  g16 d r8 e16 c r8 b a(b16) s8. |
  g4 c, b8 b r4 | s1 | <d fis>2 8 8 r4 | % 28a
  s1 | c8 e b4 b | s1 |
  c8 e b4 b | g'16 e(g b) e, b c a d b(d fis) | % 29a
  g16 e(g b) e, b c b d b(d fis) |
  s1 | g'16(d) r8 e16(c) r8 b b~16 s8. | % 29b
  g4 c, b8 b r4 | s1 | <d fis>2 8 8 r4 | % 30a
  a'4 s8 fis e d cis r | d8 fis s2 | a4 s8 fis e [ d ] cis r |
  d8 fis a,4 a | d16 b d fis d(b) d(b) cis a cis fis | % 31a
  d16 b d fis d(b) d(b) cis a cis fis |
  s1 | d'16(a) r8 b16(g) r8 fis8 8 r4 | % 31b
  s1 | s4 e16 c(e a c8) r | s1 | % 32a
  s4 <d, g>16 a(d g) fis8 r | % 32b
  \repeat unfold 2 {<g bes>16( [ d ] ) q(d) <bes ees>( [ g ] ) <ees' g>(a,) <d f a>8 r |}
  s1 | g'16(d) r8 e16(c) r8 b b r4 | % 33a
  c,16 g(b c) e b(c e) g d(e g) c g(b c) | % 33b
  e16 b c e g d e g a e g a | s1 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s8\f s1*2 | s1\ff s | s\ff s |
  s1 s\ff s | s\ff s2. s1\f | % 28
  s2. s\ff s | s2..\ff s8\ff | s1 |
  s1 s\ff s | s1\f s2. s1 |
  s2. s\mf s | s1\ff s | % 31
  s1\p s2. s1\p | s2. s\f s |
  s2\ff s-\markup "m.g." s1\ff | s\f | s2. s4. s8\ff s4 s-\markup\italic sec |
}

pianoLHone = \relative {
  \global \clef treble
  r8 | b'-. g-. e-. c-. d-. g,->~8 r \clef bass |
  <g b>8-. <e g>-. <fis a>-. <d fis>-. <d g>-. <g, d'>~q r |
  g16(a b c) d(e fis g) b8-. [ g-. ] g, r | % 27b
  g16(a b c) d(e fis g) b8-. [ g-. ] g, r |
  \vo bes8 8 c c d s d'8 r \clef treble | % 27c
  \ov b'8-. g-. e-. c-. d-. g,~g r \clef bass | \ov
  <g b>16(<a c> <b d>) r <d, fis>(<e g> <fis a>) r <d g>8-. <g, d'>-. r4 | % 28a
  g16(a b c) d(e fis g) b8 g g, r | g16(a b c) d(e fis g) b8-. g-. r4 |
  <e,, e'>8 [ 8 ] 8 8 <e' e'> [ <e, e'> ] q q | % 28b
  <a a'>8 [ <c c'> ] <e e'> [ <e, e'> ] q q |
  q8 [ q ] q [ q ] <e' e'> [ <e, e'> ] q q |
  <a a'>8 [ <c c'> ] <e, e'> [ q ] q q | % 29a
  <c' c'> [ <e e'> ] <c c'> [ <a a'> ] <b b'> <d d'> |
  <c c'> [ <e e'> ] <c c'> [ <a a'> ] <b b'> <d d'> |
  d'16(e fis g) a(b d c) \clef treble s2 | % 29b
  b'8-. [ g-. ] e-. [ c-. ] d-. [ g,-. ] ~8 r \clef bass |
  <fis a>16(<a c> <b d>) r <d, fis>(<e g> <fis a>) r <d g>8-. <g, d'>-. r4 | % 30a
  g16(a b c) d(e fis g) b8 g g, r |
  g16(a b c) d(e fis g) b8-. g-. r4 |
  <fis,, fis'>8 [ q ] q [ <fis' fis'> ] <fis, fis'> [ q ] q r | % 30b
  <b b'>8 [ <d d'> ] <fis fis'> [ <fis, fis'> ] q q |
  q8 [ q ] q [ <fis' fis'> ] <fis, fis'> [ q ] q r |
  <b b'>8 [ <d d'> ] <fis fis'> [ <fis, fis'> ] q q | % 31a
  <g g'> [ <b b'> ] <g g'> [ <e e'> ] <fis fis'> <fis' fis'> |
  <g, g'> [ <b b'> ] <g g'> [ <e e'> ] <fis fis'> <fis' fis'> |
  a16(b cis d) e(fis g a) s2 | fis'8-. [ d-. ] b-. [ g-. ] a-. d, r4 | % 31b
  d'16(e f e) d(d b a) gis(b e, gis a8) r | % 32a
  f16(a) d,(fis) a4 <a,, a'>8 r |
  c''16(d ees d) c(bes a g) fis(a) d,(fis) g8 r |
  ees16(g) c,(ees) d4(d'8) r | % 32b
  <ees,, ees'>4.-> <c c'>8-> <d d'>-> [ <d' d'>-> ] |
  <ees, ees'>4.-> <c c'>8-> <d d'>-> r |
  d'16(e fis g) a(b c d) s2 \clef treble | % 33a
  b'8-. [ g-. ] e-. [ c-. ] d-. g,-. r4 \clef bass |
  \vo a,4 e' g b \clef treble | c e g | % 33b
  \ov c8 r r \clef bass \ov <d,, fis g>16(b' <d, g>8) r <g,, g'> r |
}

pianoLHtwo = \relative {
  \global \vt
  s8 | s1*2 |
  s1*2 |
  bes,,4 c d8 r r4 | s1 |
  s1*4 s2. s1 | % 28
  s2.*3 | s1*2 |
  s1*3 | s1 s2. s1 |
  s2.*3 | s1*2 | % 31
  s1 s2. s1 | s2.*3 |
  s1*2 | % 33a
  <<{\vf a1} \new Voice {\vt a'8 4 4 4 4*1/2}>> | % 33b
  r8 a'4 4 8 | s1 |
}

#(set-global-staff-size 19)

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
