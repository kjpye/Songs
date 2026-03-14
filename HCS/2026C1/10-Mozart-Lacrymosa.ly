\version "2.25.35"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Requiem"
  subtitle    = "№7 Lacrymosa"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Mozart"
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
  \key f \major
  \time 12/8
}

TempoTrack = {
  \tempo Larghetto 4=60
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "41a" } s1.*3
  \textMark \markup { \box "41b" } s1.*3
  \textMark \markup { \box "41c" } s1.*2
  \mark \markup\circle\bold G      s1.
  \textMark \markup { \box "42a" } s1.*3
  \textMark \markup { \box "42b" } s1.*2
  \mark \markup\bold\circle H      s1.
  \textMark \markup { \box "42c" } s1.*4
  \textMark \markup { \box "43a" } s1.*2
  \mark \markup\bold\circle I      s1.*2
  \textMark \markup { \box "43b" } s1.*3
  \textMark \markup { \box "43c" } s1.*4
}

dynamicsVocal = {
  \override DynamicTextSpanner.style = #'none
  s1.*2 | s1.\p | s1.*3 | s1.\cresc | s\f | s-\markup\italic "sotto voce" |
  s1. | s\f | s1.*3 | s1.\p | s1.*4 |
  s1.*2 | s1.\f | s1.*8 |
}

soprano = \relative {
  \global
  R1.*2 | a'4.~8(f') d8 4. cis8 r r |
  a4.~8(f') d8 4. cis8 r r | d,8 r r e r r f r r g r r | % 41b
  a8 r r b r r c r r d r r |
  ees4. e f fis | g gis a a,8 r r | a4.~8(bes) a8 4.~8(f') d | % 41c
  cis4.~8(d) e8 4. d4 r8 | ees4.~8(g) ees8 4. d8 r r | d4.~8(f) e8 4. d8 r r | % 42a
  d4.~8(g) f8 4. e4 r8 | 4.~4 a,8 4. 4 r8 | b4. c d d |
  d4. c b b | b c d c4(f8) | 4.~8(d) b c4.~8(bes) g | f4 r8 r4. r2. |
  R1.*2 | a4.~8(f') d8 4. cis8 r r | a4.~8(g') d8 4.(cis8) r r | % 43a
  r2. d4. c | bes a g f | e d cis(d |
  e4. f e) e | d4 r8 r4. r2. | d'1. | d\fermata |
  \bar "|."
}

Ae         = \lyricmode { A -- men! }
dec        = \lyricmode { do -- na e -- is, }
dere       = \lyricmode { do -- na e -- is re -- qui -- em! }
Dere       = \lyricmode { Do -- na e -- is re -- qui -- em! }
HepDc      = \lyricmode { Hu -- ic er -- go par -- ce De -- us, }
JDe        = \lyricmode { Je -- su Do -- mi -- ne! }
Ldic       = \lyricmode { La -- cry -- mo -- sa di -- es il -- la, }
Ldip       = \lyricmode { La -- cry -- mo -- sa di -- es il -- la. }
pJc        = \lyricmode { pi -- e Je -- su, }
qrefjhrc   = \lyricmode { qua re -- sur -- get ex fa -- vil -- la ju -- di -- can -- dus ho -- mo re -- us, }
q_re_fjhrc = \lyricmode { qua __ re -- sur -- get ex __ fa -- vil -- la ju -- di -- can -- dus ho -- mo re -- us, }

wordsSop = \lyricmode {
  \Ldic \qrefjhrc \Ldip
  \q_re_fjhrc \HepDc \pJc \JDe
  \Dere __ \dec \dere \Ae
}

MAe         = \lyricmode { "\nA" "men! " }
Mdec        = \lyricmode { "\ndo" "na " e "is, " }
Mdere       = \lyricmode { "\ndo" "na " e "is " re qui "em! " }
MDere       = \lyricmode { "\nDo" "na " e "is " re qui "em! " }
MHepDc      = \lyricmode { "\nHu" "ic " er "go " par "ce " De "us, " }
MJDe        = \lyricmode { Je "su " Do mi "ne! " }
MLdic       = \lyricmode { La cry mo "sa " di "es " il "la, " }
MLdip       = \lyricmode { "\nLa" cry mo "sa " di "es " il "la. " }
MpJc        = \lyricmode { "\npi" "e " Je "su, " }
Mqrefjhrc   = \lyricmode { "\nqua " re sur "get " "ex " fa vil "la " ju di can "dus " ho "mo " re "us, " }

wordsSopMidi = \lyricmode {
  \MLdic \Mqrefjhrc \MLdip
  \Mqrefjhrc \MHepDc \MpJc \MJDe
  \MDere \Mdec \Mdere \MAe
}

alto = \relative {
  \global
  R1.*2 | \repeat unfold 2 {f'4.~8(d) a' g4. 8 r r |}
  a,8 r r cis r r d r r e r r | f r r b, r r e r r g r r | % 41b+
  g4. g f a | g d' d cis8 r r | g4.~4 8 f4.~8(d) a' |
  g4.~4 cis,8 a'4. f4 r8 | bes4.~8(g) bes8 4. 8 r r | a4.~4 g8 f4.~8(bes) aes | % 42a
  aes4.~4 8 4. 4 r8 | e4.~8(a) g8 4. f4 r8 | aes4. 4. 4. 4. |
  aes4. 4. 4. 4. | g4. g g c, | d~8(f) 8 4.(e4) 8 | f4 r8 r4. r2. |
  R1.*2 | f4.~8(d) a' g4. 8 r r | f4.~8(d) a' g4.~8 r r | % 43a
  R1. | ees4. ees e d | bes b a a |
  cis4.(d2.) cis4. | d4 r8 r4. r2. | g1. | fis\fermata |
}

wordsAlto = \lyricmode {
  \Ldic \qrefjhrc \Ldip
  \q_re_fjhrc \HepDc \pJc \JDe
  \Dere __ \dec \dere \Ae
}

wordsAltoMidi = \lyricmode {
  \MLdic \Mqrefjhrc \MLdip
  \Mqrefjhrc \MHepDc \MpJc \MJDe
  \MDere \Mdec \Mdere \MAe
}

tenor = \relative {
  \global
  R1.*2 | \repeat unfold 2 {d'4.~8(a) f bes4. a8 r r |}
  f8 r r a r r a r r c r r | c r r gis r r a r r b r r | % 41b+
  c4. c c ees | d f f e8 r r | 4.~8(d) cis d4.~8(a) f |
  bes4.~8(a) 8 4. 4 r8 | ees'4.~8(bes) g' f4. 8 r r | 4.~8(d) a d4. 8 r r | % 42a
  f4.~8(d) b g4.~8(c) bes | 4.~8(a) e'8 4. d4 r8 | f4. f f f |
  f4. f f f | f e e f | bes,(aes4) 8 a4.(bes4) 8 | a4 r8 r4. r2. |
  R1.*2 | d4.~8(a) f bes4. a8 r r | 4.~4 f8 bes4.(a8) r r | % 43a
  r2. d4. fis | g g, bes a | g f e(f |
  a2.)~4. a | 4 r8 r4. r2. | bes1. | a\fermata |
}

wordsTenor = \lyricmode {
  \Ldic \qrefjhrc \Ldip
  \q_re_fjhrc \HepDc \pJc \JDe
  \Dere __ \dec \dere \Ae
}

wordsTenorMidi = \lyricmode {
  \MLdic \Mqrefjhrc \MLdip
  \Mqrefjhrc \MHepDc \MpJc \MJDe
  \MDere \Mdec \Mdere \MAe
}

bass = \relative {
  \global
  R1.*2 | \repeat unfold 2 {d4.~4 8 e4. a,8 r r |}
  d8 r r a r r d r r c r r | f r r e r r a, r r g r r | % 41b+
  c4. bes' a c | b bes a4. 8 r r | cis,4. a d a |
  e'4. a, f' a, | g' g, aes aes' | a a, bes bes' | % 42a
  b4. b, c c' | cis cis, d' d,4 r8 | d'4. c b b |
  b4. c des des | d c bes a | bes,\(d\) c~4 8 | f,4 r8 r4. r2. |
  R1.*2 | d'4.~4 8 e4. a,8 r r | d4.~4 8 e4.~8 r r | % 43a
  d'4. c bes a | g c, cis d | g,(gis a2.)~ |
  2.~4. 4. | d4 r8 r4. r2. | g1. | d\fermata |
}

wordsBass = \lyricmode {
  \Ldic \qrefjhrc \Ldip
  \qrefjhrc \HepDc \pJc \JDe
  \Dere __ \dec \dere \Ae
}

wordsBassMidi = \lyricmode {
  \MLdic \Mqrefjhrc \MLdip
  \Mqrefjhrc \MHepDc \MpJc \MJDe
  \MDere \Mdec \Mdere \MAe
}

pianoRHone = \relative {
  \global
  r8 cis''8(d) r a'(bes) r d,(cis) r c'(bes) |
  r8 a(d) r bes(g) r e(f) r a(cis,) |
  \vo r8 cis(d) r a'(bes) r d,(cis) r bes'(a) |
  r8 cis,(d) r a'(bes) r d,(cis) r bes'(a) | % 41b
  r8 d,,(a) r e'(a,) r f'(d) r g(c,) |
  r8 a'(f) r b(e,) r c'(a) r d(g,) |
  r8 ees'(c) r e(c) r f(c) r fis(a,) | % 41c
  r8 g'(f,) r gis'(gis,) r a'(a,) r a(a,) |
  \ov r8 e'(a,) r bes'(a) r d,(a) r f''(d) |
  r8 g,(bes,) r d'(e) r a,(a,) r cis'(d) | % 42a
  \vo r8 ees(ees,) r g'(ees) r ees(f,) r d'(bes) |
  r8 d(d,) r f'(e) r e(f,) r d'(aes') |
  r8 aes(aes,) r g'(f) r f(g,) r e'(bes') | % 42b
  r8 bes(bes,) r a'(g) r g(a,) r f'(d') |
  \ov r8 f,,(b) r f(c') r f,(d') r f,(d') |
  r8 f,(d') r f,(c') r f,(b) r f(b) | % 42c
  r8 g(b) r g(c) r e,(d') r c(f) |
  r8 d(f) r d'(b) r c(a) r bes(g) |
  r8 f,(f') r f,(f') r f,(f') a,(c f) |
  \vo f4.~8(d b) r c'(a) r bes(g) | % 43a
  r8 e(f) r cis'(d) r d,(cis) r a'(cis,) |
  r8 cis(d) r a'(bes) r d,(cis) r bes'(a) |
  r8 cis,(d) r a'(bes) r d,(cis) r bes'(a) |
  r8 cis,(d) r bes'(a) r cis,(d) r d'(c) | % 43b
  r8 d,(ees) r bes'(a) r f(ees) r a(d) |
  r8 e,(d) r d'(f,) r c(e) r f(d') |
  r8 e,(a) r d(f,) r e(a) r cis(e,) | % 43c
  r8 cis(d) r g(fis) r bes(a) r d(c) |
  r8 bes(g) r g(d) r d(bes) r bes(g) |
  \ov <fis a d fis>1.\fermata |
}

pianoRHtwo = \relative {
  \global\vt
  s1.*2 | f'4 r8 a4 r8 g4 r8 <g cis>4 r8 |
  <f d'>4 r8 a4 r8 g4 r8 <g cis>4 r8 | % 41b
  f,4 r8 <a cis>4 r8 <a d>4 r8 <c e>4 r8 |
  <c f>4 r8 <gis b>4 r8 <a e'>4 r8 <b g'>4 r8 |
  <c g'>4 r8 <g' c>4 r8 <f c'>4 r8 <a ees'>4 r8 | % 41c
  <g d'>4 r8 <d' f>4 r8 <a d f>4 r8 <a cis e>4 r8 | s1. |
  s1. | <ees bes'>4 r8 q4 r8 <f bes>4 r8 q4 r8 | % 42a
  <f a>4 r8 a4(g8) f4 r8 bes4(aes8) |
  <aes f'>4 r8 <g d'>4 r8 <g c>4 r8 q4 r8 | % 42b
  <g e'>4 r8 <a e'>4(g8) <g e'>4 r8 <f d'>4 r8 | s1. |
  s1.*4 | % 42c
  r8 f8(bes) r4. c4.~8 bes g | % 43a
  f4 r8 <a d>4 r8 <g bes>4 r8 <e a>4 r8 |
  f4 r8 a4 r8 g4 r8 <g cis>4 r8 |
  <f d'>4 r8 a4 r8 g4 r8 <g cis>4 r8 |
  <f d'>4 r8 d'4 r8 bes4 r8 <d fis a>4 r8 | % 43b
  <g, bes>4 r8 <g a e'>4 r8 <g bes e>4 r8 <f a d>4 r8 |
  <g bes>4 r8 <b d>4 r8 <a cis>4 r8 <d f>4 r8 |
  <cis e>4 r8 <d f>4 r8 <a d e>4 r8 <a cis e>4 r8 | % 43c
  <f a d>4 r8 <a c>4 r8 <c f>4 r8 <f a>4 r8 |
  <bes, d>4 r8 <g bes>4 r8 <d g>4 r8 <bes d>4 r8 | s1. |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1.\p | s1.*5 | s1.\cresc | s\f | s\p |
  s1. | s\f | s1.*3 | s1.\p | s1.*4 |
  s1. | s4. s2.\f s4. | s1.*9 |
}

pianoLH = \relative {
  \global
  <d' f>4 r8 <f a>4 r8 <e g>4 r8 <g cis>4 r8 |
  <f d'>4 r8 \clef bass <g, e'>4 r8 <a d>4 r8  <a g'>4 r8 |
  <d,, d'>4 r8 <f f'>4 r8 <e e'>4 r8 <a, a'>4 r8 |
  <d d'>4 r8 <f f'>4 r8 <e e'>4 r8 <a, a'>4 r8 | % 41b
  <d d'>4 r8 <a a'>4 r8 <d d'>4 r8 <c c'>4 r8 |
  <f f'>4 r8 <e e'>4 r8 <a, a'>4 r8 <g g'>4 r8 |
  <c c'>4 r8 <bes' bes'>4 r8 <a a'>4 r8 <c c'>4 r8 | % 41c
  <b b'>4 r8 <bes bes'>4 r8 <a a'>4 r8 <a, a'>4 r8 |
  <cis' e g>4 r8 <a cis g'>4 r8 <d f>4 r8 <a d f>4 r8 |
  <e' g bes>4 r8 <a, cis a'>4 r8 <f' a>4 r8 <a, d f>4 r8 | % 42a
  <g g'>4 r8 <g, g'>4 r8 <aes aes'>4 r8 <aes' aes'>4 r8 |
  <a a'>4 r8 <a, a'>4 r8 <bes bes'>4 r8 <bes' bes'>4 r8 |
  <b b'>4 r8 <b, b'>4 r8 <c c'>4 r8 <c' c'>4 r8 | % 42b
  <cis cis'>4 r8 <cis, cis'>4 r8 <d d'>4 r8 <d' d'>4 r8 |
  <d f aes d>4 r8 <c f a c>4 r8 <b f' a b>4 r8 q4 r8 |
  <b f' aes b>4 r8 <c f aes c>4 r8 <des f aes des>4 r8 q4 r8 | % 42c
  <d f g d'>4 r8 <c e g c>4 r8 <bes e g bes>4 r8 <a c f a>4 r8 |
  <bes d f bes>4 r8 <d f aes>4 r8 <c f a>4 r8 <c e bes'>4 r8 |
  <f a>4 r8 <a, c ees f>4 r8 <bes d f>4 r8 <c ees f>4 r8 |
  <bes d bes'>4 r8 <d f aes>4 r8 <c f a>4 r8 <c e bes'>4 r8 | % 43a
  <f a>4 r8 <f, f'>4 r8 <e e'>4 r8 <a, a'>4 r8 |
  <d d'>4 r8 <f f'>4 r8 <e e'>4 r8 <a, a'>4 r8 |
  <d d'>4 r8 <f f'>4 r8 <e e'>4 r8 <a, a'>4 r8 |
  <d d'>4 r8 <fis fis'>4 r8 <g g'>4 r8 <d d'>4 r8 | % 43b
  <ees ees'>4 r8 <c c'>4 r8 <cis cis'>4 r8 <d d'>4 r8 |
  <g, g'>4 r8 <gis gis'>4 r8 <a a'>4 r8 q4 r8 |
  q4 r8 q4 r8 q4 r8 q4 r8 | % 43c
  <d d'>4 r8 q4 r8 q4 r8 q4 r8 |
  <g g'>4 r8 <d d'>4 r8 <bes bes'>4 r8 <g g'>4 r8 |
  <d' d'>1.\fermata_\markup\italic trem. |
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
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
%            \clef "bass"
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
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
%            \clef "bass"
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
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
%            \clef "bass"
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
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
%            \clef "bass"
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
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
%            \clef "bass"
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
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
%            \clef "bass"
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
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
%            \clef "bass"
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsVocal
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
%            \clef "bass"
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
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
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
%            \clef "bass"
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsVocal
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsVocal
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
