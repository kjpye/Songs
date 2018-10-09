% Original from John Lemcke

\version "2.12.1"

\include "english.ly"

\header {
  title = "My Country"
  composer = "Melody: Gustav Holst"
  arranger = "Arrangement: Stephen Sharp 2008"
  poet = "Words: Dorothea Makellar"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  ragged-last-bottom = ##t
  top-margin = 5\mm
  bottom-margin = 5\mm
  line-width = 180\mm
  left-margin = 20\mm
}

#(set-global-staff-size 14)

global = {
  \key c \major
  \time 3/4
}

soprano = \relative c'' {
  \global
  % Music follows here.
  \crescTextCresc
  s2 e,8^\mf( g) |
  a4.^\< c8\noBeam b g | c( d c4) b | a8 b a4 g | e2 e8( g) |
  a4. c8\noBeam b8. g16 | c8( d e4) e | e8 d c4 d | c2^\f
  %\set fontSize = #-2
  \override NoteHead #'font-size = #-4
  \override Stem #'font-size = #-4
  %\override Stem #'length-fraction = #(magstep -2)
  g8^\mp( e) |
  d4.^\< d8\noBeam c e | d4 g
  %\override Stem #'length-fraction = #(magstep 0)
  %\set fontSize = #0
  \override Stem #'font-size = #0
  \override NoteHead #'font-size = #0
  g8( e) |d4. d8\noBeam e g | a2 a8( b) |
  c8. c16 b4 a | g c e, |d8 c d4 e | g2^\mf e8^\<( g) |
  a4. c8\noBeam b g | c( d c4) b | a8 b a4 g | e2 e8( g) |
  a4. c8\noBeam b8. g16 | c8( d e4) e | e8 d c4 d | c2^\f r4 |
}

alto = \relative c' {
  \global
  % Music follows here.
  s2 e8( g) |
  f4. a8\noBeam g f | g4( e) g | c,8 d c4 d | c2 e8( g) |
  f4. a8\noBeam g8. f16 | e8( f g4) c | c a a | g2 g8( e) |
  d4. d8\noBeam c e | d4 g, g8( a) | b4. b8\noBeam c e | f2 f8( g) |
  a8. a16 a4 f | g f c |a8 c a4 c | d4 c e8( g) |
  f4. a8\noBeam g f | g4( e) g | c,8 d c4 d | c2 e8( g) |
  f4. a8\noBeam g8. f16 | e8( f g4) c | c a a | g2 r4 |
}

tenor = \relative c {
  \global
  % Music follows here.
  s2 e8( g) |
  c4. c8\noBeam d d | e( f e4) c | f8 f c4 b | c2 e8( b) |
  c4. c8\noBeam d8. d16 | c4 c e | g8 f e4 d | e2 e8( c) |
  b4. b8\noBeam c a | b4 g c | b4. d8\noBeam c b | c2 d4 |
  e8. c16 c4 c | c c g | c8 a a4 a | g2 e'8( b)
  c4. c8\noBeam d d | e( f e4) c | f8 f c4 b | c2 e8( b) |
  c4. c8\noBeam d8. d16 | c4 c e | g8 f e4 f | e2 r4 |
}

bass = \relative c {
  \global
  % Music follows here.
  s2 e8( g) |
  f4. e8\noBeam d b' | c4 g e | a8 g f4 g | a2 a8( g) |
  f4. e8\noBeam d8. b'16 | c4 g e | f8 f f4 f | c2 c8( e) |
  g4. g8\noBeam a f | g4 b, e | g b, c8 g' | f4( e) d |
  a'8. a16 g4 f | e d c | f8 e d4 c | b( a) g |
  f4. c'8\noBeam d b' | c4 g e | a8 g f4 g | a2 a8( g) |
  f4. e8\noBeam d8. b'16 | c4 g e | f8 f f4 f | c2 r4 |
}

sopranoVerseOne = \lyricmode {
  % Lyrics follow here.
  I love a sun -- burnt country,
  a land of sweep -- ing plains,
  of rag -- ged moun -- tain ranges,
  of droughts and flood -- ing rains.
  \markup {\italic (The }
    \markup {\italic stark }
    \markup {\italic white }
    \markup {\italic ring-}
    \markup {\italic barked }
    \markup {\italic for } --
    \markup {\italic ests,) }
  all tra -- gic to the moon,
  the sap -- phire mis -- ted moun -- tains,
  the hot gold hush of noon.
  I love her far hor -- izons,
  I love her jew -- el sea,
  her beau -- ty and her terror,
  the wide brown land for me.
}

sopranoVerseTwo = \lyricmode {
  \set stanza = "Unison -"
  % Lyrics follow here.
  Core of my heart my country,
  land of the rain -- bow gold.
  For flood and fire and famine,
  she pays us back three fold.
  An o -- pal hear -- ted coun -- try
  a wil -- ful lav -- ish land.
  All you who have not loved her,
  you will not un -- der -- stand.
  Though earth holds ma -- ny splendours,
  wher -- ev -- er I may die,
  I know to what brown country
  my hom -- ing thoughts will fly.
}

altoVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.

}

altoVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.

}

tenorVerseOne = \lyricmode {
  % Lyrics follow here.
  I love a sun -- burnt country,
  a land of sweep -- ing plains,
  of rag -- ged moun -- tain ran -- ges,
  of droughts and flood -- ing rains.
  The stark white ring- -- barked for -- ests,
  all tra -- gic to the moon,
  the sap -- phire mis -- ted moun -- tains,
  the hot gold hush of noon.
  I love her far hor -- izons,
  I love her jew -- el sea,
  her beau -- ty and her terr -- or,
  the wide brown land for me.

}

tenorVerseTwo = \lyricmode {
  % Lyrics follow here.
  Core of my heart my country,
  land of the rain -- bow gold.
  For flood and fire and fam -- ine,
  she pays us back three fold.
  An o -- pal hear -- ted coun -- try
  a wil -- ful lav -- ish land.
  All you who have not loved her,
  you will not un -- der -- stand.
  Though earth holds ma -- ny splendours,
  wher -- ev -- er I may die,
  I know to what brown coun -- try
  my hom -- ing thoughts will fly.

}

bassVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.

}

bassVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.

}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "flute"
      %      instrumentName = "S."
    } { \soprano }
    \addlyrics { \sopranoVerseOne }
    \addlyrics { \sopranoVerseTwo }
    \new Staff \with {
      midiInstrument = "oboe"
      %      instrumentName = "A."
    } { \alto }
    %    \addlyrics { \altoVerseOne }
    %    \addlyrics { \altoVerseTwo }
    \new Staff \with {
      midiInstrument = "clarinet"
      %      instrumentName = "T."
    } { \clef "treble_8" \tenor }
    \addlyrics { \tenorVerseOne }
    %    \addlyrics { \tenorVerseTwo }
    \new Staff \with {
      midiInstrument = "fretless bass"
      %      instrumentName = "B."
    } { \clef bass \bass }
    %    \addlyrics { \bassVerseOne }
    %    \addlyrics { \bassVerseTwo }
  >>
  \layout { indent = 0 }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 76 4)
    }
  }
}
