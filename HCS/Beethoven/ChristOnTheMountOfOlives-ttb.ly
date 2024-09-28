\version "2.25.19"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
%  title       = "title"
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
  \key c \major
  \time 4/4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup\box      "42d" s1*5
  \textMark \markup\box      "43a" s1*6
  \textMark \markup\box      "43b" s1*5
  \textMark \markup\box      "43c" s1*6
  \textMark \markup\box      "44a" s1*6
  \textMark \markup\box      "44b" s1*6
  \textMark \markup\box      "44c" s1*6
  \textMark \markup\box      "45a" s1*6
  \textMark \markup\box      "45b" s1*6
  \textMark \markup\box      "45c" s1*7
}

dynamicsTenorI = {
  \override DynamicTextSpanner.style = #'none
  s1 | s2. s4\omit\p-\markup{\italic sempre \dynamic p} | s1*3 |
  s1*8 | s4 s2.\cresc | s1\p | s1*3 | s4 s2.\cresc | s1\p | s1*2 | % 43
  s1*18 |
  s4 s2.\cresc | s1\f | s\p | s1*9 | s4 s2.\cresc | s1\p | s | s4 s2.\f | s1\f | s\p | s |
}

tenorI = \relative {
  \global
  R1 | r2 r4 c' | 4. 8 4. 8 | 4 4 r4 c | 4. 8 4. 8 | % 42d
  c4 c r c | d4. 8 4 4 | d r r d | e r r e | e r r e | d d d d | % 43a
  d4 r r2 | R1 | r4 d d d | d-. e-. r2 | d2 d |
  d4 r r2 | R1 | r4 d d d | d-. e-. r2 | d2 d | b4 r r2 |
  R1*6 | % 44a
  r2 r4 aes | 4 4 4 4 | 4 4 r4 4 | a r r a | bes r r bes | b b b b |
  c4 r r2 | r4 d d d | d r r ees | d d d d | d r r2 | R1 |
  r4 d d d | e2. 4 | d r d r | e r r2 | R1 | r4 d d d | % 45a
  e2. 4 | d r d r | c r r2 | R1*3 |
  r4 b8(c) d(e) f(d) | c4-. c-. r2 | c2 b | c4 2 4 | 4-. 4-. r2 | b2 b | c4 r r2 |
}

wordsTenorI = \lyricmode {
  Wir ha -- ben ihn ge -- se -- hen nach die -- sem Ber -- ge ge -- hen,
  ent -- flie -- hen kann er nicht,
  ent -- flieh’n, ent -- flieh’n,
  ent -- flie -- hen kann -- er nicht,
  ja sei -- ner war -- tet das Ge -- richt,
  ja sei -- ner war -- tet das Ge -- richt,
  Wir ha -- ben ihn ge -- se -- hen,
  ent flieh’n, ent flieh’n,
  ent -- flie -- hen kann er nicht,
  ent -- flie -- hen nicht,
  ent -- flie -- hen kann er nicht!
  ja sei -- ner war -- tet das Ge -- richt!
  ja sei -- ner war -- tet das Ge -- richt!
  ja sei -- ner war -- tet das Ge -- richt,
  sei -- ner war -- tet das Ge -- richt.
}

dynamicsTenorII = {
  \override DynamicTextSpanner.style = #'none
  s1 | s2. s4\omit\p-\markup{\italic sempre \dynamic p} | s1*3 |
  s1*8 | s4 s2.\cresc | s1\p | s1*3 | s4 s2.\cresc | s1\p | s1*2 | % 43
  s1*18 |
  s4 s2.\cresc | s1\f | s\p | s1*9 | s4 s2.\cresc | s1\p | s | s4 s2.\f | s1\f | s\p | s |
}

tenorII = \relative {
  \global
  R1 | r2 r4 e | 4. f8 g4. a8 | g4 e r e | 4. d8 g4. a8 |
  g4 e r c' | 4. 8 4 4 | b4 r r b | b r r b | c r r c | c c c c | % 43a
  b4 r r2 | r4 e8(d) c b a g | fis4 d8(e) f(g) a(f) | g4-. g-. r2 | g2 fis |
  g4 r r2 | R1 | r4 fis8(g) a(b) c(a) b4-. c-. r2 | b2 a | g4 r r2 |
  R1*6 | % 44a
  r2 r4 ees4 | f f f f | ees4 4 r4 4 | f r r f | f r r f | g g g g |
  g4 r r c | c c c c | b g c2~ | 4 4 4 4 | b r r2 | R1 |
  r4 b b b | c2. 4 | c r b r | c r r2 | R1 | r4 b b b | % 45a
  c2. 4 | c r b r | g r r2 | r2 r4 fis | g f e g | a r r2 |
  r4 g8(a) b(c) d(b) | c4-. a-. r2 | d,2 d | e4 fis2 4 | g-. g-. r2 | g2 g | e4 r r2 |
}

wordsTenorII = \lyricmode {
  Wir ha -- ben ihn ge -- se -- hen nach die -- sem Ber -- ge ge -- hen,
  ent -- flie -- hen kann er nicht,
  ent -- flieh’n, ent -- flieh’n,
  ent -- flie -- hen kann -- er nicht,
  sein war -- tet das Ge -- richt
  ja sei -- ner war -- tet das Ge -- richt,
  ja sei -- ner war -- tet das Ge -- richt,
  Wir ha -- ben ihn ge -- se -- hen,
  ent flieh’n, ent flieh’n,
  ent -- flie -- hen kann er nicht,
  ent -- flie -- hen kann er nicht,
  ent -- flie -- hen kann er nicht!
  ja sei -- ner war -- tet das Ge -- richt!
  ja sei -- ner war -- tet das Ge -- richt!
  ent -- flie -- hen kann er nicht,
  ja sei -- ner war -- tet das Ge -- richt,
  sei -- ner war -- tet das Ge -- richt.
}

wordsMidi = \lyricmode {
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1 | s2. s4\omit\p-\markup{\italic sempre \dynamic p} | s1*3 |
  s1*8 | s4 s2.\cresc | s1\p | s1*3 | s4 s2.\cresc | s1\p | s1*2 | % 43
  s1*18 |
  s4 s2.\cresc | s1\f | s\p | s1*9 | s4 s2.\cresc | s1\p | s | s4 s2.\f | s1\f | s\p | s |
}

bass = \relative {
  \global
  R1 | r2 r4 c | 4. d8 e4. f8 | e4 c r c | 4. d8 e4. f8 |
  e4 c r e | f4. 8 fis4 4 | g r r g | e r r e | a r r a | fis4 4 4 4 | % 43a
  g4 b8(a) g fis e d | c4 r r2 | r4 c c c | b-. c-. r2 | d2 d |
  g4 r r2 | R1 | r4 d8(e) fis(g) a(fis) g4-. c,-. r2 | g'2 fis | g4 r r2 |
  R1*6 | % 44a
  r2 r4 c, | des4 4 4 4 | c c r c | c r r c | d r r d | d d d d |
  ees4 c aes'2~ | 4 f fis fis | g r r aes | f f fis fis | g r4 r2 | R1 |
  r4 g g g | 2. 4 | a4 r g r | g r r2 | R1 | r4 g g g | % 45a
  g2. 4 | a r g r | c, r r cis | d c b dis | e d c e | f a8(g) f(e) d(c) |
  b4 f' f f | e-. f-. r2 | g2 g | c, 4 2 4 | d-. d-. r2 | d2 d | c4 r r2 |
}

wordsBass = \lyricmode {
  Wir ha -- ben ihn ge -- se -- hen nach die -- sem Ber -- ge ge -- hen,
  ent -- flie -- hen kann er nicht,
  ent -- flieh’n, ent -- flieh’n,
  ent -- flie -- hen kann -- er nicht,
  sein war -- tet das Ge -- richt
  ja sei -- ner war -- tet das Ge -- richt,
  ja sei -- ner war -- tet das Ge -- richt,
  Wir ha -- ben ihn ge -- se -- hen,
  ent flieh’n, ent flieh’n,
  ent -- flie -- hen kann er nicht,
  ent -- flieh’n, __
  ent -- flie -- hen nicht,
  ent -- flie -- hen kann er nicht!
  ja sei -- ner war -- tet das Ge -- richt!
  ja sei -- ner war -- tet das Ge -- richt!
  ent -- flie -- hen kann er nicht,
  ent -- flie -- hen nicht,
  ent -- flie -- hen nicht,
  ja sei -- ner war -- tet das Ge -- richt,
  sei -- ner war -- tet das Ge -- richt.
}

pianoRHone = \relative {
  \global
  \vo g''4 \ov g,8.(fis16) g4 8.(fis16) |
  g4 r r g16(f e d) |
  <c c'>4. 8 4. 8 |
  q4 8.(<b b'>16) <c c'>4-. 8.(<b b'>16) |
  <c c'>4. 8 4. 8 |
  <c c'>4 8.(<b b'>16) <c c'>4-. <g c>4~( | % 43a
  <a c d>4) <a' c d> r q |
  r4 <g b d> q r |
  r <gis b e> q r |
  r <a c e> q r |
  r4 <d, a' d>8.(<cis cis'>16) <d a' d>4-. 8.(<c c'>16) |
  <d g b d>4 r r2 | % 43b
  r4 <e e'>2(<fis fis'>8. <g g'>16) |
  <a a'>4 \vo d4-.( d-. d-.) |
  \ov <g, d'>4-. <e g e'>-. r2 |
  r4 <d d'> r q |
  \vo d'4 d2(c8. d16) | % 43c
  e4-. e'8(d c b a8. g16) |
  a4 d,-.(d-. d-.) |
  \ov <g, d'>4-. <e g e'>-. r2 |
  r4 <d d'> r q |
  q g'8.(fis16 g4 \vo aes8. g16 |
  aes4 g8. fis16 g4) <fis a>4~ | % 44a
  a4 g8.(fis16 g4 aes8. g16 |
  aes4 g8. fis16) g4 <fis a> |
  g4 \ov <g,, g'>8.(<fis fis'>16) <g g'>4 8.(<fis fis'>16) |
  <g g'>4-. r r \lh aes8.(g16) |
  aes4-. 8.(g16) aes4-. 8.(g16) |
  aes4-. 4-. 4-. <c, ees aes>-. | % 44b
  <des f aes>4-. 4-. 4-. 4-. |
  <c ees aes>4 \rh \ov <c'' ees>4-.(q-.) <aes, c ees>-.( |
  <a c ees>4-.) <a' c f>4-.(q-.) <a, c ees> |
  <bes d>4 <d' f>4-.(q-.) <bes, d f>-. |
  <b d f>-. <g' b f'>4-.(q-. q-.) |
  <g c ees>4 r r <c, ees>^\sf( | % 44c
  <c d>) q-.(q-. q-.) |
  <b d>4 <g g'> <c c'>2~ |
  q8 <d c' d>4 4 4 8 |
  <d b' d>4 <g, g'>2 4~ |
  q4 2 4~ |
  q4 \vo g'2 f4 | % 45a
  \ov <g, c e>4 <e' c' e>2 4 |
  r4 <d a' c d> r <d g b d> |
  <e g c e>4 <g, g'>2 4~ |
  q4 2 4~ |
  q4 \vo g'2 f4 |
  \ov <g, c e>4 <e' c' e>2 4 | % 45b
  r4 <d a' c d> r <d g b d> |
  <e g c>8 <e g> r <d e gis> r <cis e a> r <a e' a> |
  r8 <a f' a> r <c e ais> r <b dis b'> r <b fis' b> |
  r8 <b g' b> r <f' g b> r <e g c> r <c g' c> |
  r8 <c a' c> r <a' c f> r <a d f> r q |
  <g d' e>4 \vo g' g g | % 45c
  \ov <c, g'>4-. <a c a'>-. r2 |
  r4 <g c d g> r <g b d g> |
  <g c e>4 <c, fis c'>2 4 |
  <d g c>4 q r2 |
  r4 <d g b> r q |
  \vo <e g c>4(c'8. b16 c4 a8. gis16) |
}

pianoRHtwo = \relative {
  \global \vt
  b'4 s2. | s1*4 |
  s1*6 | % 43a
  s1*2 | s4 fis8(g a b c a) | s1*2 |
  d,4 d'8(c b a g fis) | e4 e'2 fis8. g16 | fis4 fis,8(g a b c a) | s1*2 | s2. b4~ |
  b4 c2 4 | b4 r r b~ | b c2 4 | b4 s2. | s1*2 | % 44a
  s1*6 |
  s1*6 |
  s4 <g, d'> q q | s1*4 | s4 q q q | % 45a
  s1*6 |
  s4 <g' b>8(<a c>) <b d>(<c e>) <d f>(<b d>) | s1*5 | c,1 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\p s2.\pp | s2. s4\omit\p-\markup{\italic sempre \dynamic p} | s1*3 |
  s1*8 | s4 s2.\cresc | s1\p | s1*3 | s4 s2.\cresc | s1\p | s | s4 s2.\cresc | % 43
  s2. s4\sf | s1\p\cresc | s2. s4\sf | s1\p | s2. s4\pp | s1 | % 44a
  s1*8 | s2 s\sf | s1*3 |
  s4 s2.\cresc | s1\f | s\p | s1*2 | s4 s2.\cresc | s1\f | s\p | s\pp | s1*3 | s4 s2.\cresc | s1\p | s | s4 s2.\fz | s1\f | s\p | s4 s2\cresc s8. s16\omit\f |
}

pianoLHone = \relative {
  \global \vo
  d'4 \ov <g,, g'>8.(fis'16) q4 g8.(fis16) |
  q4 r r g,16(f e d) |
  <c c'>4. <d d'>8 <e e'>4. <f f'>8 |
  <e e'>4 <c c'>4 r q |
  q4. <d d'>8 <e e'>4. <f f'>8 |
  <e e'>4 <c c'> r <e e'> | % 43a
  <f f'>4 r <fis' a c d> r |
  <g b d>4 r r q |
  <e gis b e>4 r r q |
  <a c e>4 r r q |
  <d, fis c' d>4 <d fis c'> q q |
  <g b>4 <b, b'>8(<a a'> <g g'> <fis fis'> <e e'> <d d'>) | % 43b
  <c c'>4 c''8(<b d> <a c> <g b> <fis a> <e g>) |
  <d fis>4 \vo d8(e f g a f) |
  g4 c,-. \ov r2 |
  <d g b>4 r <d fis a> r |
  <g b>4 <b, b'>8(<a a'> <g g'> <fis fis'> <e e'> <d d'>) | % 43c
  <c c'>4-. <c' c'>8(<b b'> <a a'> <g g'> <fis fis'> <e e'>) |
  <d d'>4 \vo d'8(e fis g a fis) |
  g4-. c,-. \ov r2 |
  <d g b>4 r <d fis a> r |
  <g b>4 \vo g'2 f4~ |
  f4 e2 ees4 | d4 g2 f4~ | f e2 ees4 | d4 s2. | s1*2 | % 44a
  s1*2 | s4 \ov <a,, a'>8.(g16) q4 r | r4 <f f'>8.(e'16) q4 r | r4 <bes bes'>8.(a16) q4 r | r <g g'>8.(fis'16) q4 q |
  <c c'>4 q <aes' aes'>2_\fz ~ | % 44c
  q4 <f f'>4-.(<fis fis'>-. q-.) |
  <g g'>4 r r <aes aes'>4_\fz ( |
  <f f'>4) q <fis fis'> q |
  <g g'>4 <g, g'>8.(fis'16) q4 <aes, aes'>8.(g16) |
  <aes aes'>4 8.(fis'16) q4 <bes, bes'>8.(aes16) |
  <bes bes'>4 <b b'>-.(q-. q-.) | % 45a
  <c c'>4 <c' c'>8(<b b'> <a a'> <g g'> <f f'> <e e'>) |
  <f f'>4 r <g g'> r |
  c4 <g, g'>8.(fis'16) q4 <aes, aes'>8.(g16) |
  <aes aes'>4 8.(gis'16) q4 <bes, bes'>8.(aes16) |
  <bes bes'>4 <b b'>-.(q-. q-.) |
  <c c'>4 <c' c'>8(<b b'> <a a'> <g g'> <f f'> <e e'>) | % 45b
  <f f'>4 r <g g'> r |
  <c, c'>4 <bes bes'> <a a'> <cis cis'> |
  <d d'>4 <c c'> <b b'> <dis dis'> |
  <e e'>4 <d d'> <c c'> <e e'> |
  <f f'>4 <a a'>8(<g g'> <f f'> <e e'> <d d'> <c c'>) |
  <b b'>4 <f' f'>-. q-. q-. | % 45c
  <e e'>4-. <f f'>-. r2 |
  <g g'>4 r q r |
  <c, c'>4 <aes aes'>2 4 |
  <g g'>4 q r2 |
  q4 r q r |
  \vo c'4(e2 f4\laissezVibrer) |
}

pianoLHtwo = \relative {
  \global \vt
  g4 s2. | s1*4 |
  s1*6 | % 43a
  s1*2 | s4 c,4-.(c-. c-.) | b-. c-. s2 | s1 |
  s1*2 | s4 c c c | b4-. c-. s2 | s1 | s4 g'2.~ |
  g4 g-.(g-. g-.) | 1~ | 4 g-.(g-. g-.) | % 44a
  g4 <g,, g'>8.(<fis fis'>16) <g g'>4 8.(<fis fis'>16) |
  <g g'>4 r r <aes aes'>8.(g16) |
  <aes aes'>4 8.(g16) q4 8.(g16) |
  <aes aes'>4 4 4 4 | q4 q q q | q4 \vt s2. | s1*3 | % 44b
  s1*6 |
  s1*18 | c4 c'2. |
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
          }
          <<
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics \wordsTenorI
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = II
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsTenorII
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
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
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = II
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsTenorII
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
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
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
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
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = II
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \teeny \dynamicsPiano
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
