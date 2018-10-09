% Original from John Lemcke

\version "2.12.1"

\include "english.ly"

\header {
  title = "ES IST EIN' ROS'"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  ragged-last-bottom = ##t
  line-width = 180\mm
  left-margin = 20\mm
  %  bottom-margin = 10\mm
  % top-margin = 10\mm
}

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
  \partial 2
}

soprano = \relative c'' {
  \global
  % Music follows here.
  \cadenzaOn
  c2 \bar"|" c4 c d c \bar"|" c2 a bf \bar"|"
  a4 g2 \bar"|" f e4 \bar"|" f2 \bar"||" \break
  c'2 \bar"|" c4 c d c \bar"|" c2 a bf \bar"|"
  a4 g2 \bar"|" f e4 \bar"|" f2 \bar"||" \break
  r4 a \bar "|" g e f d \bar"|" c2. \bar"||" c'4 \bar"|"
  c c d c \bar "|" \break c2 a bf \bar "|"
  a4 g2 \bar "|" f e4 \bar "|" f2 \bar ".|"
  \cadenzaOff

}

alto = \relative c'' {
  \global
  % Music follows here.
  \cadenzaOn
  a2 a4 f f f e2 d d c d4 (d8) a c2 c
  a'2 a4 f f f e2 d d c d4 (d8) a c2 c
  r4 f d c c b c8 (d e2) e4 g f f f e2 d d f4 d (e) f (g) c, c2
  \cadenzaOff
}

tenor = \relative c' {
  \global
  % Music follows here.
  \cadenzaOn
  c2 c4 a bf a g2 f f a4 (c) bf a2 g4 a2
  c2 c4 a bf a g2 f f a4 (c) bf a2 g4 a2
  r4 c bf a a g g2. g4 g a bf a g2 fs g c4 bf a (a) g2 a
  \cadenzaOff
}

bass = \relative c {
  \global
  % Music follows here.
  \cadenzaOn
  f2 f4 f bf f c2 d bf f'4 e d (d) c2 f
  f2 f4 f bf f c2 d bf f'4 e d (d) c2 f
  r4 f g a f g c,2. c4 e f bf f c2 d g, a4 bf c (c) c2 f
  \cadenzaOff
}

verseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  Es ist ein' Ros' ent -- sprung -- en
  Aus ein -- er Wur -- zel zart,
  Als uns die Al -- ten sung -- en:
  Aus Jes -- se kam die Art;
  Und hat ein Blüm -- lein bracht,
  Mit -- ten im kal -- ten Wint -- er,
  Wohl zu der hal -- ben Nacht.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Das Rös -- lein das ich mei -- ne,
  Da -- von Es -- ai -- as sagt,
  Hat uns geb -- racht all -- ei -- ne
  Mar -- ie die rei -- ne Magd.
  Aus Got -- tes ew' -- gem Rat
  Hat sie ein Kind ge -- bo -- ren,
  Wohl zu der hal -- ben Nacht.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "piano"
      instrumentName = \markup \center-column { "S." "A." }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \lyricsto "soprano" \verseOne
    \new Lyrics \lyricsto "soprano" \verseTwo
    \new Staff \with {
      midiInstrument = "piano"
      instrumentName = \markup \center-column { "T." "B." }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout {
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
