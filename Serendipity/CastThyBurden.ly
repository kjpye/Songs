% Original from John Lemcke

\version "2.12.1"

\include "english.ly"

\header {
  title = "“Cast Thy Burden Upon the Lord.”"
  subtitle = "Elijah, No. 15"
  %instrument = "Choral."
  composer = "Felix Mendelssohn"
  % Remove default LilyPond tagline
  tagline = ##f
}

#(set-global-staff-size 12)

\paper {
  #(set-paper-size "a4")
  ragged-last-bottom = ##t
  line-width = 180\mm
  left-margin = 20\mm
  %  bottom-margin = 10\mm
  top-margin = 10\mm
}

tempoMark = {
  \once \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \once \override Score.RehearsalMark #'break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature #'break-align-anchor-alignment = #LEFT
  \mark \markup {
    "Piu Adagio "
    \small \general-align #Y #DOWN \note #"4" #1 = 52
  }
}

global = {
  \tempoMark
  \key ef \major
  \time 4/4
}

soprano = \relative c' {
  \global
  % Music follows here.
  \partial 2
  ef4^\pp ef8( f) |
  g4 c8\noBeam c bf4 af |
  g1^\markup { \halign #-0.4
    \bracket { \pad-x #0.5
      \musicglyph #"scripts.ufermata"
    }
  }
  g4 bf bf af |
  f2 ef4\fermata ef8( f) |
  g4 c8^\markup { \italic "cresc." } \noBeam c bf4 af8\noBeam af |
  g4 g8\noBeam g g2\fermata |
  g4 bf~bf af8\noBeam g |
  f2 ef4\fermata f |
  f^\< g af af\! |
  g2.\fermata c4^\markup { \italic "cresc." } |
  ef c^\< g a\! |
  bf2.\fermata bf4 |
  bf g^\< af bf\! |
  c c2\fermata bf4^\p |
  af g f2 |
  ef2 r2 |
  r1
}

alto = \relative c' {
  \global
  % Music follows here.
  \partial 2
  bf4^\pp bf8( d) |
  ef4 ef8\noBeam ef d4 f |
  ef1\fermata |
  ef4 ef ef ef |
  ef( d) ef\fermata bf8( d) |
  ef4 g8^\markup { \italic "cresc." } \noBeam g f4 f8\noBeam ef |
  d4 d8\noBeam d d2\fermata |
  c4( d) ef ef8\noBeam ef |
  ef4( d) ef\fermata d |
  d^\< e f f\! |
  ef2.\fermata f4^\markup { \italic "cresc." } |
  ef g g f8( ef) |
  d2.\fermata f4 |
  ef ef^\< ef f8( g)\! |
  af4 af2\fermata ef4^\p |
  ef ef ef( d) |
  ef2 r2 |
  r1
}

tenor = \relative c' {
  \global
  % Music follows here.
  \partial 2
  g4^\pp g8( af) |
  bf4 af8\noBeam g f4 bf |
  bf1\fermata |
  bf4 bf bf c |
  f,( af) g\fermata g8( af) |
  bf4 ef8^\markup { \italic "cresc." } \noBeam ef d4 c8\noBeam c |
  b4 b8\noBeam b b2\fermata |
  ef4 bf~bf c8\noBeam c |
  af2 g4\fermata bf |
  bf^\< bf c c\! |
  c2.\fermata af4^\markup { \italic "cresc." } |
  g ef'8( d) c4 c |
  bf2.\fermata af4|
  g bf^\< ef df\! |
  c ef2\fermata ef4^\p
  af, c f,( af) |
  g2 r2 |
  r1
}

bass = \relative c {
  \global
  % Music follows here.
  \partial 2
  ef4^\pp g8( f) |
  ef4 af,8\noBeam af bf4 d |
  ef1\fermata |
  ef4 g g, af |
  bf2 ef4\fermata g8( f) |
  ef4 c8^\markup { \italic "cresc." } \noBeam c d[( ef)] f\noBeam f |
  g4 g8\noBeam g g2\fermata |
  c,4 g~g af8\noBeam af |
  bf2 ef4\fermata bf' |
  af^\< g f f\! |
  c2.\fermata c4^\markup { \italic "cresc." } |
  c c8( d) ef4 f |
  bf,2.\fermata d4 |
  ef df^\< c bf\! |
  af af2\fermata g4^\p |
  c af bf2 |
  ef2 r2|
  r1
}

verse = \lyricmode {
  % Lyrics follow here.
  Cast thy bur -- den up -- on the Lord;
  and He shall sus -- tain thee:
  He ne -- ver will suf -- fer the right -- eous to fall;
  He is at thy right hand.
  Thy mer -- cy, Lord is great, and far a -- bove the heavens.
  Let none be made a -- sham -- ed that wait up -- on Thee!

}

right = \relative c' {
  \global
  % Music follows here.
  \override Staff.Rest #'staff-position = #0
  \partial 2 r2^\markup {"Piu Adagio"} |
  <<{r1}\\{s2. s8 s8\pp}>> |
  <<
    {r16 \stemUp bf( ef g \stemDown bf ef g bf) bf2~\fermata |
      bf2 ~ bf4 r |
    } \\
    {g,,1 | s1|}
  >>
  r2 r4\fermata r4 | r1 |
  r16 \stemUp g( b d \stemDown g b d g) g2\fermata ~ | g ~ g4 r |
  r1\fermata | r1
  r16\pp \stemUp c,,( ef g \stemDown c ef g c) c4\fermata~c4~ |
  c2 r2 |
  r16 \stemUp bf,,( d f \stemDown bf d f bf) bf4\fermata~bf4~|
  bf4 r4 r2 |
  r16 \stemUp ef,,( af c \stemDown ef_\markup { \italic "cresc." }
  af c ef) ef4\fermata~ef4~ |
  ef4 r4 r2|
  r16 \stemUp bf,,\( ef g \stemDown bf ef g bf\)
  <<{\stemDown ef,4 \slurDown bf16( ef g bf)}\\
    {\stemUp \slurUp ef4( bf4)}>> |
  <<{\stemDown < af d, >8. <ef g>16 <ef g>4\fermata}\\
    {\stemUp bf'2^\fermata}>> s2 |
}

left = \relative c {
  \global
  % Music follows here.
  \override Rest #'staff-position = #0
  \partial 2 r2 | r1 |
  <ef, bf' ef>1\sustainOn_\fermata |
  r1\sustainOff | r1 | r1 |
  <g, g' b d>1\sustainOn\fermata |
  r1\sustainOff | r1\fermata | r1 |
  << {<ef'' g>2.}\\{<c c,>2.\sustainOn\fermata}>>
  r4\sustainOff |
  r1 |
  << {<f bf d>2.}\\{<bf,, bf'>2.\sustainOn\fermata}>>
  r4\sustainOff |
  r1 |
  << {<c' ef af c>2.}\\{<af, af'>2.\sustainOn\fermata}>>
  r4\sustainOff |
  r1 |
  << {<ef'' g>2^\pp}\\{<ef, bf'>2\sustainOn}>>
  \clef treble
  <<
  {<g'' bf>4}\\{r16 bf, ef g}
  >>
  s16 s16 s16 s16\sustainOff |
  <<
    {\stemUp bf2} \\
  {\stemDown ef,2\fermata} \\
  {\stemNeutral
    f8. g16 g4\fermata}
  >>
  s2 |
}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1.2 . 1)
    midiInstrument = "flute"
    instrumentName = "Soprano"
  } { \soprano }
  \addlyrics { \verse }
  \new Staff \with {
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1.2 . 1)
    midiInstrument = "oboe"
    instrumentName = "Alto"
  } { \alto }
  \addlyrics { \verse }
  \new Staff \with {
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1.2 . 1)
    midiInstrument = "clarinet"
    instrumentName = "Tenor"
  } { \clef "treble_8" \tenor }
  \addlyrics { \verse }
  \new Staff \with {
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1.2 . 1)
    midiInstrument = "fretless bass"
    instrumentName = "Bass"
  } { \clef bass \bass }
  \addlyrics { \verse }
>>

pianoPart = \new PianoStaff \with {
  instrumentName = "PIANO"
} <<
  \new Staff = "right" \with {
    \override VerticalAxisGroup #'minimum-Y-extent = #'(-1.2 . 1)
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \choirPart
    \pianoPart
  >>
  \layout {
    %#(layout-set-staff-size 15)
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 52 4)
    }
  }
}
