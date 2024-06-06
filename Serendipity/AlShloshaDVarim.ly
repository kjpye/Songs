\version "2.25.16"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Al Shlosha D’Varim"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Allan E. Naplan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Pirkei Avot (Mishnah)"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
}

TempoTrack = {
  \tempo Andante 4=66
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s1*3 s1.
  \textMark \markup { \box "1b" } s1*4
  \textMark \markup { \box "1c" } s1*4
  \textMark \markup { \box "1d" } s1*4
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "2c" } s1*3
  \textMark \markup { \box "2d" } s1*3
  \textMark \markup { \box "3a" } s1*2
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "3c" } s1*3
  \textMark \markup { \box "4a" } s1*2
  \textMark \markup { \box "4b" } s1*2
  \textMark \markup { \box "4c" } s1*2
  \textMark \markup { \box "5a" } s1*2
  \textMark \markup { \box "5b" } s1*2
  \textMark \markup { \box "5c" } s1*3
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*3 | s1. | s1*8 | s1\mf | s1*3 |
  s1*12 | % 2
  s1\mf | s1*2 | s2 s\< | s1\! | s1*3 |
  s1 | s1\f | s1*4 | % 4
  s1*2 | s1\mf | s4\p s4.\> s\! | s1*3 |
}

soprano = \relative {
  \global
  R1*3 | R1. | \section R1*8 |
  ees'4^\markup\bold Women aes bes2 | r4 aes8 f g2 | f8 g aes f ees4 aes8 8 bes1 \breathe |
  ees,4 aes bes2 | r4 aes8 f g2 | f8 g aes f ees aes8 8(g) | % 2a
  aes2. \breathe r4 c8(bes) aes(c) bes4 g8 8 | aes(g) aes(bes) c4. \breathe 8 |
  des4 c8 bes aes4 \breathe c8 des | ees1 | 8(des16 c~8) ees16 16~8 bes4 8 |
  aes8(g) aes(bes) c4. \breathe 8 | des4 c8 bes aes4 8 g | aes2. r4 |
  c8^\markup "Treble I" (bes) aes(c) bes4 g8 \breathe g | aes(g) aes(bes) c4. \breathe 8 | % 3a
  des4 c8 bes aes4 \breathe c8 des | ees 1 | 8(des16 c~8) ees16 16~8 des4 \breathe 8 |
  aes8(g) aes(bes) c4. \breathe 8 | des4 c8 bes aes4 \breathe 8 bes | c2. r4 \section \key a \major
  R1 | cis8(b) a(cis) b4 gis8 \breathe 8 | % 4a
  a8(gis) a(b) cis4. \breathe 8 | d4 cis8 b a4 \breathe cis8 d |
  e1 \breathe | 8(d16 cis~8) e16 16~8 b4 \breathe 8 |
  a8(gis) a(b) cis4. \breathe 8 | d4 cis8 b a4 \breathe a8^\markup\italic rit. b | % 5a
  \after 4 ^\markup\italic "dim. gradually" cis2.^\markup\italic "a tempo" \breathe 8 b | cis2. \breathe cis8 b |
  cis4^\markup\italic "molto rit." (b) \breathe a gis | cis1 | R1\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  Al shlo -- sha, al shlo -- sha d’ -- va -- rim ha -- o -- lam ka -- yam,
  Al shlo -- sha,
  al shlo -- sha d' va -- rim ha -- o -- lam ka -- yam
  al __ ha -- e -- met v’ -- al __ ha -- din
  v’ -- al ha -- sha -- lom, ha -- sha -- lom
  al __ ha -- e -- met v’ -- al __ ha -- din
  v’ -- al ha -- sha -- lom ha -- sha -- lom
  al __ ha -- e -- met v’ -- al __ ha -- dia % 3
  v’ -- al ha -- sha -- lom. ha -- sha -- lom
  al __ ha -- e -- met v’ -- al __ ha -- din
  v’ -- al ha -- sha -- lom ha -- sha -- lom
  Al __ ha -- e -- met v’ -- al __ ha -- din % 4
  v’ al ha -- sha -- lom, ha -- sha -- lom.
  al __ ha -- e -- met v’ -- al __ ha -- din v’ -- al ha -- sha -- lom,
  ha -- sha -- lom ha sha -- lom,
  ha -- sha -- lom, __ ha -- sha -- lom.
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*3 | s1. | s1\mp | s1*11 |
  s1*12 | % 2
  s1\mf | s1*2 | s2 s\< | s1\! | s1*3 |
  s1 | s1\f | s1*4 | % 4
  s1*2 | s1\mf | s4\p s4.\> s\! | s1*3 |
}

bass = \relative {
  \global
  R1*3 | \time 6/4 R1. | \section \time 4/4
  ees4^\markup\bold Men aes bes2 | r4 aes8 f g2 | f8 des aes f ees4 aes8 8 | bes1 \breathe
  ees4 aes bes2 | r4 aes8 f g2 | f8 g aes f ees aes aes(g) | aes2. \breathe r4 | \break
  R1*4 |
  R1*12 | % 2
  \clef treble \break
  ees'4^\markup "Treble II" aes bes2 | r4 aes8 f g2 | % 3a
  f8 g aes f ees4 aes8 8 | bes1 | ees,4 aes bes2 |
  r4 aes8 f g2 | f8 g aes f ees aes8 8(g) | aes2. r4 \section \key a \major
  R1 | e4 a b2 | % 4a
  r4 a8 fis gis2 | fis8 gis a fis e4 a8 8 |
  b1 \breathe | e,4 a b2 |
  r4 a8 fis gis2 | fis8 gis a fis e a a^\markup\italic rit. (gis) | % 5a
  \after 4 ^\markup\italic "dim. gradually" a2.^\markup\italic "a tempo" \breathe a8 gis | a2. \breathe cis8 b |
  a2^\markup\italic "a tempo" \breathe 4 gis | a1 | R1\fermata
  \bar "|."
}

wordsBass = \lyricmode {
  Al shlo -- sha, al shlo -- sa d’ -- va -- rim ha -- o -- lam ka -- yam,
  Al shlo -- sha, al shlo -- sa d’ -- va -- rim ha -- o -- lam ka -- yam,

  Al shlo -- sha, al shlo -- sha d’ -- va -- rim ha -- o -- lam ka -- yam.
  Al shlo -- sha al shlo -- sha d’ -- va -- rim ha -- o -- lam ka -- yam.
  Al -- shlo -- sha al shlo -- sha d’ -- va -- rim ha -- o -- lam ka -- yam % 4
  Al shlo -- sha al shlo -- sha d’ -- va -- rim ha -- o -- lam ka -- yam ha -- sha -- lom,
  ha -- sha -- lom. ha -- sha -- lom.
}

pianoRH = \relative {
  \global
  <aes bes c ees>4 <c aes'> <ees bes'>2 |
  aes8(g f aes) <f aes>4 <g bes> |
  <aes, bes c ees>8. <c aes'>16~8 <ees c'>8 <ees bes'>4~8 aes16 g \time 6/4 |
  aes4 f ees1 \section \time 4/4 \break
  <aes, bes c ees>4 4 <bes ees g>8. <c ees aes>16~8 <bes ees g> | % 1b
  <aes c f>4 4 <bes ees g> q |
  <aes ees' f> <aes des f> <aes bes ees> <aes c ees> |
  <aes bes ees>4 q <g bes ees>8. <aes bes ees>16~8 <g bes ees>8 |
  <aes bes c ees>4 4 <bes ees g>8. <c ees aes>16~8 <bes ees g> | % 1c
  <aes c f>4 4 <bes ees g> q |
  <aes ees' f>4 <aes des f> <aes bes ees> <g bes ees> |
  <<{\vo <bes ees>2} \new Voice {\vt <aes c>4 c8 aes}>> \ov <f aes des>4-- <f aes bes des ees>-- |
  <aes bes c ees>4 4 <bes ees g>8. <c ees aes>16~8 <bes ees g> | % 1d
  <aes c f>4 4 <bes ees g> q |
  <aes ees f>4 <aes des f> <aes bes ees> <aes c ees> |
  <aes bes ees>2 <g bes ees>8. <aes bes ees>16~8 <g bes ees>8 |
  <aes bes c ees>4 4 <bes ees g>8. <c ees aes>16~8 <bes ees g> | % 2a
  <aes c f>4 4 <bes ees g> q |
  <aes ees' f>4 <aes des f> <aes bes ees> <g bes ees> |
  <aes' ees' aes>4 <es bes' ees> q <ees aes bes> | % 2b
  <ees aes c> <ees g c> <aes bes ees> <g bes ees> |
  <ees f aes c>4 q <aes bes ees> q8 c |
  <des, aes' ees'>4 <ees aes des> q <ees aes c> | % 2c
  <des aes' ees'>4 q <ees bes' ees> q |
  <aes ees' aes>4 <ees bes' ees> <g ees' g> <g bes ees> |
  <f des' f>4 4 <g ees' g> q | % 2d
  <f des' f>4 <aes des f> <aes bes ees> <g bes ees> |
  <ees aes c>4 8 bes'16 aes <c, ees aes>16-- g' q8 8 <des ees bes'>
  <aes bes c ees>4 <c ees aes> <bes ees g>8. <c ees aes>16~8 <bes ees g> | % 3a
  <aes c f>4 <c f> <bes ees g> q |
  <aes des f>16 aes f' ees des4 <aes bes ees>16 aes ees' des c4 | % 3b
  <aes bes ees>4 4 <g bes ees>8.-- <aes bes ees>16-- ~8 <g bes ees>-- |
  <aes bes c ees>4 <c ees aes> <bes ees g>8. <c ees aes>16~8 <bes ees g> |
  <aes c f>4 <c f> <bes ees g> q | % 3c
  <aes ees' f>4 <aes des f> <aes bes ees> <g bes ees> |
  <aes bes c ees>4 <c ees aes> <aes bes c ees> <c ees aes> \section | \key a \major
  <a d e>4 <b e b'> r16 <e, e'> <fis fis'> <gis gis'> <a a'> <b b'> <cis cis'> <d d'> | % 4a
  e'16(b a b) e(b a b) e(b a b) e(b a b) |
  e16(a, e a) e'(a, e a) e'(b e, b') <e, b' e>8-- q-- | % 4b
  <fis cis' fis>4 4 <e a b e> q |
  <d a' d>4 4 <e a b e> q | | % 4c
  e'16(b a b) e(b a b) e(b a b) e(b a b)
  e16(a, e a) e'(a, e a) e'(a, e a) <e b' e>8-- q-- | % 5a
  <d a' d>4 4 <d e a e'> q^\markup\italic rit. |
  e16^\markup\italic "a tempo" (b a b) e(b a b) e(b a b) e(b a b) | % 5b
  e16(b a b) e(b a b) e(b a b) e(b a b) |
  <<{\vo e4^\markup\italic "molto rit." d8 cis} \new Voice {\vt <a b>4. cis8}>> \ov <a b d>2 | % 5c
  <<{\vo r2 <gis' cis e>2~ | 1\fermata} \new Voice {\vt <a, b cis e>1 | s }>>
%  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp | s | s | s1. | s1\mp | s1*7 | s1\mf | s1*3 |
  s1*3 | s4\< s\! s\> s\! | s1*3 | s2 s4.\< s8\! | s1*3 | s2 s4\< s\! | % 2
  s1*7 | s4-\markup\italic "molto cresc." \after 8*5 \! s2.\< |
  s2 s\f\< | s1\mf | s1*2 | s4\< s\! s\> s\! | s1 | % 4
  s1*2 | s4\mf s2.-\markup\italic "dim. gradually" | s1\p | s1 | s2 s\p | s1 |
}

pianoLH = \relative {
  \global
  <aes, ees'>2 c8 g' c4 |
  des,8 aes' c4 ees,8 bes' ees4 |
  aes,,8 ees' aes4 c,8 g' ees'4 | \time 6/4
  des,8 aes' ees'4 ees,8 bes' ees f g2 \time 4/4 \section
  <aes,, ees'>2 <c, c'> | % 1b
  f8 c' f4 c,8 g' c ees |
  <des, des'>2 <aes' ees'> |
  <ees ees'>2 8. <f f'>16~8 g |
  <aes ees'>2 <c, c'> | % 1c
  f8 c' f4 c,8 g' c ees |
  <des, des'>2 <ees ees'> |
  <aes, aes'>2 <des des'>4-- <ees ees'>-- |
  <aes ees'>4. <aes, aes'>8 <c c'>4 4 | % 1d
  f8 c' f4 c,8 g' c ees |
  <des, des'>4. 8 <aes' ees'>4. <aes, aes'>8 |
  <ees' ees'>4 <ees, ees'> <ees' ees'>8. <f f'>16~8 g |
  <aes ees'>4. <aes, aes'>8 <c c'>4 4 | % 2a
  f8 c' f4 c,8 g' c ees
  <des, des'>4. 8 <ees ees'>4 <ees, ees'>4 |
  aes'16 ees' aes bes c4 aes,16 ees' aes bes c4 | % 2b
  aes,16 ees' aes bes c4 g,16 ees' g bes ees4 |
  f,,16 des' f aes des4 aes,16 ees' g c ees4 |
  des,,16 aes' des ees f4 aes,16 ees' aes bes c4 | % 2c
  des,,16 aes' des ees f g aes bes ees,, bes' ees f g aes bes c |
  aes,16 ees' aes bes c4 g,16 ees' f bes ees4 |
  f,,16 des' f aes des4 aes,16 ees' bes' c ees4 | % 2d
  des,,16 aes' des ees f4 ees,16 bes' ees aes bes4 |
  aes,16 ees' aes bes c4 <bes,, bes'>4 <ees ees'> |
  <aes, aes'>4. 8 <c c'>4 4 | % 3a
  f16 c' f g aes4 c,,16 g' c f g4 |
  <bes,, bes'>4~8 16 <b b'> <c c'>4 <aes aes'>8 <c c'>16 <des des'> | % 3b
  <ees ees'>4. 16 bes' q8. <f f'>16~8 g |
  <aes, aes'>4. 8 <c c'>4 4 |
  f16 c' f g aes4 c,,16 g' c f g4 | % 3c
  des,16 aes' des ees f4 ees,16 bes' ees f <ees, ees'>4 |
  <aes ees>4. <aes, aes'>8 <ges ges'>4. 8 \section \key a \major |
  <e e'>2 4.-> 8 | % 4a
  a'8 e' cis'4 gis,8 e' b'4 |
  gis,8 d' a'4 a,8 e' <b b'>-- <cis cis'>-- | % 4b
  d,16 a' d e fis4 a,16 e' a b cis4 |
  d,,16 a' d e fis4 e,16 b' e fis a8 gis | % 4c
  a,8 e' cis'4 gis,8 e' b'4 |
  fis,8 d' a'4 a,8 e' <b b'>-- <cis cis'>-- | % 5a
  d,16 a' d e fis4 e,16 b' e fis b4 |
  a,4 gis fis e | % 5b
  <a, a'>4 <gis gis'> <fis fis'>\! <e e'> |
  <d d'>2 <e e'> | % 5c
  <a a'>1~ | q\fermata |
%  \bar "|."
}

#(set-global-staff-size 20)

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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
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
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
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
%        \remove Metronome_mark_engraver
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
%        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
%        \consists Metronome_mark_engraver
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
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
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
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
%        \remove Metronome_mark_engraver
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
%        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
%        \consists Metronome_mark_engraver
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
    output-suffix = midi
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
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
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
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
