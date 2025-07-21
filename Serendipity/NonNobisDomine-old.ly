% Original from John Lemcke

\version "2.25.0"

\include "english.ly"

\header {
  title = "Non Nobis Domine"
  % Remove default LilyPond tagline
  tagline = ##f
}

#(set-global-staff-size 17)

global = {
  \key bf \major
  \numericTimeSignature
  \time 4/4
  % This causes quavers to be beamed in pairs not 4s
  \set Timing.beamExceptions = #'()

  \partial 4

  % 2.12.3 style Set beams for 1/8 notes in 4/4 time) to end on the 1/4 beat
  %#(score-override-auto-beam-setting '(end 1 8 4 4) 1 4)
  %#(score-override-auto-beam-setting '(end 1 8 4 4) 3 4)

}

soprano = \relative c'' {
  \global
  % Music follows here.
  r4 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
  % bar 18
  f,1^\p f~f2 g(~g2. a4 bf2)
  d2(~d2. c4) c2. (bf4) bf2 ( g2~g4-> f4~f8) r8 r4
  R1 R1 R1 R1 R1 R1 R1

  %bar 34 3/4
  r2. g8(f)
  \key c \major
  e?4 c' c b8 a e f g2 f8(e) f4 d' c8(b) a(g) f4(e2)
  c'8(b) c4 b8(c) a4 c g f8(g) e4 f8(e)f4 f' e8(d) c(b) c2~c8 r8 r4

  %bar 42 3/4
  c2^"Soprano or Tenor Solo (opt.)" d4 e8(f) g4. c,8 c2 g'4 (f8 e) d4 e8(f) g4. c,8 c2
  e4. e8 e4(d) g4. f8 e2 d4 d c4. f8^"[End Solo]" f4(e2)
  %  g8^"Unison"(f) e4 c' c b8 a e f g2 f8(e) f4 d' c8(b) a(g) f4(e2)
  %  c'8(b) c4 b8(c) a4 c g f8(g) e4 f8(e)f4 f' e8(d) c(b) c2.

  %bar 50 3/4
  g,8^\f(f) e4 c' c b8 a e f g2 f8(e) f4 d' c8(b) a(g) f4(e2)
  c'8(b) c4 b8(c) a4 c g' f8(g) e4 a,8(g) f4 f' e8(d) c(b) c2~c8 r8

  %bar 58 3/4
  a8(g) f2 f'2^\< e4(d) c\!(b^\ff)
  <<  { \stemDown \slurDown a2^"Rit." (g4 f g1)} \new Voice {c1~c} >>
  \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  r4 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
  %bar 18
  d2.^\p (<c ef>4) d2 (ef d) f4(ef8 d c4 ef2.) ef4 (d) f2( g4 a8 bf g2)
  f4 (g8 a f2) g2 ef2 (~ef4-> d4~d8) r8 r4
  R1 R1 R1 R1 R1 R1 R1

  %bar 34 3/4
  r2. d4
  \key c \major
  e?4 e f fs g8 r8 g f e(d) cs4 d f d f d(c8 d e4) gs
  a g! g8(f) e(f) e4 d d8(c) d(cs) d4 a' g8(f) e(d) f4(e4~e8) r8

  %bar 42 3/4
  g8(f) e4 c' c b8 a e f g2 f8(e) f4 d' c8(b) a(g) f4(e2)
  c'8(b) c4 b8(c) a4 c g f8(g) e4 f8(e)f4 f' e8(d) c(b) c2.

  %bar 50 3/4
  g8^\f(f) e4 f fs g8 f e d c2 bf4 c8(d) e(g) fs4 f8(e) d4(c d)
  e8(d)e4 d8(e) e4 f e' d8(e) c4 f,8(e) d4 a' gs gs  a(d, cs)

  %bar 58 3/4
  cs4  d2 a'^\< g a4\!(g) << {g1~g} {c1~c} >>
}

tenor = \relative c {
  \global
  % Music follows here.
  r4 R1 R1 R1 R1 R1 R1 R1 r2.^"All Men"

  %bar 10 3/4
  f8 (ef) d4 bf' bf a8 g d ef f2
  ef8 (d) ef4 c' bf8 (a) g (f) ef4 (d2)
  bf'8 (a) bf4 a8 (bf) g4 bf f ef8 (f) d4 ef8 (d)
  ef4 ef' d8 (c) bf (a) bf2.

  %bar 18 3/4
  f8^\mp (ef) d4 bf' bf a8 g d ef f2
  ef8 (d) ef4 c' bf8 (a) g (f) ef4 (d2)
  bf'8 (a) bf4 a8 (bf) g4 bf f ef8 (f) d4 ef8 (d)
  ef4 ef' d8 (c) bf (a) bf2 r2

  %bar 27
  bf2^\mf c4 d8(ef) f4. bf,8 bf2 f'4 (ef8 d) c4 d8(ef) f4. bf,8 bf2
  d4. d8 d4(c) f4. ef8 d2 c4 c bf4.ef8 ef4(d2)

  %bar 34 3/4
  b4
  \key c \major
  c4 g c b8 a c d e(d) c bf a(g) f(g) a4 c8(b) a(g) g4( c8 b c4) e
  e d8(e) c4 a b g d'8(c) b(bf) a4 f' e8(d) c(b)a4(g4~g8) r8

  %bar 42 3/4
  g8(f) e4 c' c b8 a e f g2 f8(e) f4 d' c8(b) a(g) f4(e2)
  c'8(b) c4 b8(c) a4 c g f8(g) e4 f8(e)f4 f' e8(d) c(b) c2.

  %bar 50 3/4
  g8^\f(f) g4 a a c8 c g a a2 a8(g)
  <f a>8^\markup { \italic divisi }(<g b>) <a c>(<g b>)
  <<{a4} \new Voice {\stemDown a4}>> <g b> <g b>(<f a>2)
  <e c'>8(<gs b>)
  <<{\stemUp c4 b8(c) a4} \new Voice {\stemDown a4 gs4 a4} >> <a c>4
  c4. c8 c4 cs d f e8(d) c(b) c4(a g )

  %bar 58 3/4
  a8(g) a2 \stemDown f'^\< e4(d) c\!(b)^\ff \stemNeutral
  << {\slurUp \stemUp f'2 (e4 d e1)} \new Voice {\tieDown c1~c} >>
}

bass = \relative c {
  \global
  % Music follows here.
  f8^"Solo Bass" (ef) d4 bf' bf a8 g d ef f2
  ef8 (d) ef4 c' bf8 (a) g (f) ef4 (d2)
  bf'8 (a) bf4 a8 (bf) g4 bf f ef8 (f) d4 ef8 (d)
  ef4 ef' d8 (c) bf (a) bf2.
  %bar 10 3/4
  f8 (ef) d4 bf' bf a8 g d ef f2
  ef8 (d) ef4 c' bf8 (a) g (f) ef4 (d2)
  bf'8 (a) bf4 a8 (bf) g4 bf f ef8 (f) d4 ef8 (d)
  %ef4 ef' d8 (c) bf (a)
  ef4 ef' d8 (c) bf (a)

  %bar 18
  bf2^\p (a) <bf d>2. (<c ef>4) c bf2.~bf2 bf4 (c bf2)
  bf2(~bf4 c8 d ef2)
  a,4 (bf8 c d2 c) f,4 (g8 a bf2) r4

  %bar 26 3/4
  f8(ef) d4^\mf bf' bf a8 g d ef f2
  ef8 (d) ef4 c' bf8 (a) g (f) ef4 (d2)
  bf'8 (a) bf4 a8 (bf) g4 bf f ef8 (f) d4 ef8 (d)
  ef4 ef' d8 (c) bf (a) bf2.

  %bar 34 3/4
  g4
  \key c \major
  c,4 c d ds8 ds e?8 f e2 a,4 d8(e) f4 g b,? c c~c8 d e4
  a4 g f e8(f) g4 b, c  d8(e) f(e) d4 g g, c2~c8 r8

  %bar 42 3/4
  g'8(f) e4 c' c b8 a e f g2 f8(e) f4 d' c8(b) a(g) f4(e2)
  c'8(b) c4 b8(c) a4 c g f8(g) e4 f8(e)f4 f e8(d) c(b) c2.

  %bar 50 3/4
  g4^\f  c d ds e8 f g f ef4(d) cs d8(e) f(e) ef4 d c2(b4) e,
  a b c d c4. c8 c4 a d c b e

  %bar 58 3/4
  f(bf, a) a d2 << {d^\< a' f\!} {s2 s2 s4 s4^\ff}>>
  << { \slurUp c'2( b4 a g1)} \new Voice {\tieDown c,1~c} >>
}

sopranoVerse = \lyricmode {
  % Lyrics follow here.
  %bar 16
  Mm - - - - -
  %bar 32 3/4
  Non no -- bis do -- mi -- ne do -- mi -- ne, non no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,

  %bar 40 3/4
  %  Non no -- bis do -- mi -- ne do -- mi -- ne, non no -- bis do -- mi -- ne,
  %  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,
  Non no -- bis do -- mi -- ne, Non no -- bis do -- mi -- ne,
  no -- mi -- ni no -- mi -- ni, o da glo -- ri -- am.

  %bar 48 3/4
  Non no -- bis do -- mi -- ne do -- mi -- ne, non no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,
  tu o da glo -- ri -- am.

}

sopranoVerseMidi = \lyricmode {
  % Lyrics follow here.
  %bar 16
  "Mm "     
  %bar 32 3/4
  "\nNon " no "bis " do mi "ne " do mi "ne, " "non " no "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "

  %bar 40 3/4
  %  Non no -- bis do -- mi -- ne do -- mi -- ne, non no -- bis do -- mi -- ne,
  %  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,
  "\nNon " no "bis " do mi "ne, " "Non " no "bis " do mi "ne, "
  "\nno" mi "ni " no mi "ni, " "o " "da " glo ri "am. "

  %bar 48 3/4
  "\nNon " no "bis " do mi "ne " do mi "ne, " "non " no "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "
  "\ntu " "o " "da " glo ri "am. "

}

altoVerse = \lyricmode {
  % Lyrics follow here.
  %bar 16
  Mm - - - - - - -
  %bar 32 3/4
  Non no -- bis do -- mi -- ne, do -- mi -- ne, non no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri  -- am,

  %bar 40 3/4
  Non no -- bis do -- mi -- ne do -- mi -- ne, non no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,

  %bar 48 3/4
  Non no -- bis do -- mi -- ne do -- mi -- ne, non no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,
  tu o da glo -- ri -- am.
}

altoVerseMidi = \lyricmode {
  % Lyrics follow here.
  %bar 16
  "Mm "       
  %bar 32 3/4
  "\nNon " no "bis " do mi "ne, " do mi "ne, " "non " no "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "

  %bar 40 3/4
  "\nNon " no "bis " do mi "ne " do mi "ne, " "non " no "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "

  %bar 48 3/4
  "\nNon " no "bis " do mi "ne " do mi "ne, " "non " no "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "
  "\ntu " "o " "da " glo ri "am. "
}

tenorVerse = \lyricmode {
  % Lyrics follow here.
  Non no -- bis do -- mi -- ne, do -- mi -- ne, non no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,

  Non no -- bis do -- mi -- ne, do -- mi -- ne, non no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,

  Non no -- bis do -- mi -- ne, Non no -- bis do -- mi -- ne,
  no -- mi -- ni no -- mi -- ni, o da glo -- ri -- am.

  Non no -- bis do -- mi -- ne, do -- mi -- ne, do -- mi -- ne,
  no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,

  %bar 40 3/4
  Non no -- bis do -- mi -- ne do -- mi -- ne, non no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,

  %bar 48 3/4
  Non no -- bis do -- mi -- ne do -- mi -- ne, non no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,
  tu o da glo -- ri -- am.
}

tenorVerseMidi = \lyricmode {
  % Lyrics follow here.
  "Non " no "bis " do mi "ne, " do mi "ne, " "non " no "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "

  "\nNon " no "bis " do mi "ne, " do mi "ne, " "non " no "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "

  "\nNon " no "bis " do mi "ne, " "Non " no "bis " do mi "ne, "
  "\nno" mi "ni " no mi "ni, " "o " "da " glo ri "am. "

  "\nNon " no "bis " do mi "ne, " do mi "ne, " do mi "ne, "
  "\nno" "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "

  %bar 40 3/4
  "\nNon " no "bis " do mi "ne " do mi "ne, " "non " no "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "

  %bar 48 3/4
  "\nNon " no "bis " do mi "ne " do mi "ne, " "non " no "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "
  "\ntu " "o " "da " glo ri "am. "
}

bassVerse = \lyricmode {
  % Lyrics follow here.
  Non no -- bis do -- mi -- ne, do -- mi -- ne, non no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,
  Non no -- bis do -- mi -- ne, do -- mi -- ne, non no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri
  %o da glo -- ri -- am,

  %bar 16
  Mm - - - - - - -

  %bar 24 3/4
  Non no -- bis do -- mi -- ne, do -- mi -- ne, non no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,

  %bar 32 3/4
  Non no -- bis do -- mi -- ne, do -- mi -- ne,
  non no -- bis do -- mi -- ne, do -- mi -- ne,
  no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,

  %bar 40 3/4
  Non no -- bis do -- mi -- ne do -- mi -- ne, non no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,

  %bar 48 3/4
  Non no -- bis do -- mi -- ne do -- mi -- ne, non no -- bis do -- mi -- ne,
  sed no -- mi -- ni, sed no -- mi -- ni, tu o da glo -- ri -- am,
  tu o da glo -- ri -- am.
}

bassVerseMidi = \lyricmode {
  % Lyrics follow here.
  "Non " no "bis " do mi "ne, " do mi "ne, " "non " no "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "
  "\nNon " no "bis " do mi "ne, " do mi "ne, " "non " no "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo "ri "
  %o da glo -- ri -- am,

  %bar 16
  "\nMm "       

  %bar 24 3/4
  "\nNon " no "bis " do mi "ne, " do mi "ne, " "non " no "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "

  %bar 32 3/4
  "\nNon " no "bis " do mi "ne, " do mi "ne, "
  "\nnon " no "bis " do mi "ne, " do mi "ne, "
  "\nno" mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "

  %bar 40 3/4
  "\nNon " no "bis " do mi "ne " do mi "ne, " "non " no "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "

  %bar 48 3/4
  "\nNon " no "bis " do mi "ne " do mi "ne, " "non " no "bis " do mi "ne, "
  "\nsed " no mi "ni, " "sed " no mi "ni, " "tu " "o " "da " glo ri "am, "
  "\ntu " "o " "da " glo ri "am. "
}

rehearsalMidi = #(define-music-function
  (name midiInstrument lyrics) (string? string? ly:music?)
  #{
    \unfoldRepeats <<
      \new Staff = "soprano" \new Voice = "soprano" { s1*0\f \soprano }
      \new Staff = "alto" \new Voice = "alto" { s1*0\f \alto }
      \new Staff = "tenor" \new Voice = "tenor" { s1*0\f \tenor }
      \new Staff = "bass" \new Voice = "bass" { s1*0\f \bass }
      \context Staff = $name {
        \set Score.midiMinimumVolume = #0.5
        \set Score.midiMaximumVolume = #0.5
        \set Score.tempoWholesPerMinute = #(ly:make-moment 88/4)
        \set Staff.midiMinimumVolume = #0.8
        \set Staff.midiMaximumVolume = #1.0
        \set Staff.midiInstrument = $midiInstrument
      }
      \new Lyrics \with {
        alignBelowContext = $name
      } \lyricsto $name $lyrics
    >>
#})

rightOne = \relative c'' {
  \global
  % Music follows here.
  s4 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
  f,4\pp f'2. f,1~f2 g(~g2. a4 bf2)
  d2(~d2. c4) c2. (bf4) bf2 g2(~g4 f4~f8) s8 s4

  %bar 25
  s1 s1 s1 s1 s1 s1 s1 s2.

  %bar32 3/4
  g8 f
  \key c \major
  <g, c e? >4 <c e c'>4 <c f c'>4 <c fs b>8 a'
  <c, e>8 <d f> <e g> <d f> <c e> <bf d> <a cs f> <g e'>
  <a d f>4 <d a' d> <d a' c>8 <g b> <d f a> g
  <g, d' f>4 <c e>8 <b d> <c e>4 <d gs c>8 b'
  <e, a c>4 <d gs b>8 <e c'> <c a'>4 <c c'>4
  <b e g>4 <g d' f>8 g'8 <g, e'>4 <b d f >8 <bf cs e>
  <a d f>4 <f' a f'> <e g e'>8 <d f d'> <c e c'> <b d b'>
  %  \tieDown
  %  <c c'>2 ~ <c c'>8
  \override TieColumn.tie-configuration =
  #'((2.0 . 1) (-7.0 . -1))
  <c c'>2~<c c'>8

  %bar 40 3/4
  r8 r4
  %Trumpet
  \stemDown
  c'2^"Trumpet" d4 e8(f) g4. c,8 c2 g'4 (f8 e) d4 e8(f) g4. c,8 c2
  e4. e8 e4(d) g4. f8 e2 d4 d c4. f8 f4(e2)
  \stemNeutral
  %s1 s1 s1 s1 s1 s1 s1 s2.

  %bar 48 3/4
  <g,, g'>8\f <f f'>
  <e e'>4 <c' f c'> <c fs c'> <c g' b>8 <c f a>
  e8 <d f> <a c g'>2 <bf f'>8 e
  <a, c f>8 <g b d> <a c e> <g b g'> <a c fs>4 f'8 e
  <b d f>4 \staccato <a c e> \tenuto <d f a d> c'8 b
  <c, e a c>4 <d gs b>8 <e c'> <c e a>4 <c f c'>
  \stemDown <g' e' g>4 <f d' f>8 <g e' g> \stemNeutral <e c' e>4 <g, cs f>8 e'
  <a, d f>4 <f' a f'> <e gs e'>8 d' <d, gs c> b'
  <c, a' c>4 <a d> (<g cs>) <a a'>8 g'
  <a, d f>2 <d f a f'> <e g e'>4 (<d f d'>) <c a' c> (<b g'b>)
  \override TieColumn.tie-configuration =
  #'((2.0 . 1) (-7.0 . -1))
  <c c'>1~<c e g c>1

}

rightTwo = \relative c' {
  \global
  % Music follows here.
  r4 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
  s1 d2 ef d f4 ef8 d c4 ef2. ef4 (d) f2 g4 a8 bf g2
  f4 g8 a f2 g2 ef2~ef4 d4~d8 r8 r4

  %bar 25
  R1 R1 R1 R1 R1 R1 R1 r2.

  %bar32 3/4
  <b! d>4
  \key c \major
  s1
  s4 c4 s2
  s1
  s1
  s2
  \once \override NoteColumn.force-hshift = #1.9 gs'8 f8
  \once \override NoteColumn.force-hshift = #1.9 e8 [f8]
  s2
  \once \override NoteColumn.force-hshift = #1.9 d8 c s4
  s1
  \once \override NoteColumn.force-hshift = #1.9 f4 e4 ~ e8

  %bar 40 3/4
  r8 r4 s1 s1 s1 s1 s1 s1 s1 s2. s4

  %bar 49
  s1
  s2. a,8 g
  s2. <g b>4
  s2. <d' e gs>4
  s1
  s1
  s1
  s1
  s1
  s1
  \once \override NoteColumn.force-hshift = #1.9 <f g a>2^"Rit." <e g>4 <d f> s1

}

left = \relative c {
  \global
  % Music follows here.
  r4 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1 R1
  r2 f2 bf2. (c4) c (bf2.~bf2) bf4 (c bf2)
  bf2~bf4 c8 d ef2
  a,4 bf8 c d2 c f,4 g8 a bf2~bf8 r8 r4

  %bar 25
  R1 R1 R1 R1 R1 R1 R1 r2.

  %bar32 3/4
  <g, g'>4
  \key c \major
  %  <c, c'>4 <c c'> <d d'> ds8 ds e?8 f e2 a,4 d8(e) f4 g b,? c c~c8 d e4
  %[ a4 g f e8(f) g4 b, c  d8(e) f(e) d4 g g, c2~c8 r8

  <c, c'>4 <c c'> <d d'> <ds ds'>
  <e e'>4 e'2 a,4
  d8 e f4 g b,c <c c,>~<c c,>8 <d d,> <e e,>4
  <a a,>4 <g g,> <f f,> <e e,>8(<f f,>)
  <g g,>4 b, c  d8(e)
  <f f,>(<e e,>) <d d,>4 <g g,> g,
  <c c,>2~<c c,>8

  %bar 40 3/4
  r8 r4 R1 R1 R1 R1 R1 R1 R1 r2.

  %bar 48 3/4
  <g g,>4
  <c c,> <d d,> <ds ds,> <e e,>8 <f f,> g f ef4(d) cs d8(e) f(e) ef4 d c2(b4) e,
  <a a,>4 <b b,> <c c,> <d d,>
  <c c,>2. <a a,>4
  <d d,> <c c,> <b b,> <e e,>
  <f f,> <bf, bf,> (<a a,>) <a a,>
  <d d,>4-. <d d,>2-> <d d,>4-> ^\<
  <a' a,>2 << {g2} \\ {<f f,>} >>
  <c c,>1\! ^\ff ~ <c c,>1->


}

choirPart = \new ChoirStaff <<
  \new Staff \with {
    midiInstrument = "flute"
    instrumentName = "S"
  }
  { \soprano }
  \addlyrics { \sopranoVerse }

  \new Staff \with {
    midiInstrument = "oboe"
    instrumentName = "A"
  }
  { \alto }
  \addlyrics { \altoVerse }

  \new Staff \with {
    midiInstrument = "clarinet"
    instrumentName = "T"
  }
  { \clef "treble_8" \tenor }
  \addlyrics { \tenorVerse }

  \new Staff \with {
    midiInstrument = "bassoon"
    instrumentName = "B"
  }
  { \clef bass \bass }
  \addlyrics { \bassVerse }
>>

pianoPart = \new PianoStaff <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
    printPartCombineTexts = ##f
  }
%  \set PianoStaff.instrumentName = #"Piano"
  {
    << \rightOne \\ \rightTwo >>
    %  \partCombine \rightOne \rightTwo
  }
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\book {
  \bookOutputSuffix "single"
  \paper {
    #(set-paper-size "a4")
    top-margin = 10\mm
    bottom-margin = 5\mm
    line-width = 180\mm
    left-margin = 15\mm
    %ragged-bottom = ##t
    %check-consistency = ##t
    %two-sided = ##t
    %inner-margin = 20\mm
  }

  \score {
    <<
      \choirPart
      \pianoPart
    >>
    \layout {
      \context {
        %    \Staff \RemoveEmptyStaves
        %    \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
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
      \choirPart
      \pianoPart
    >>
    \layout {
      \context {
        %    \Staff \RemoveEmptyStaves
        %    \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-sop"
  \paper {
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
      \new ChoirStaff
      <<
        \new Staff \with {
          midiInstrument = "flute"
          instrumentName = "S"
        }
        { \soprano }
        \addlyrics { \sopranoVerse }
        
        \new Staff \with {
          midiInstrument = "oboe"
          instrumentName = "A"
        }
        { \magnifyStaff #4/7 \alto }
        \addlyrics { \tiny \altoVerse }
        
        \new Staff \with {
          midiInstrument = "clarinet"
          instrumentName = "T"
        }
        { \magnifyStaff #4/7 \clef "treble_8" \tenor }
        \addlyrics { \tiny \tenorVerse }
        
        \new Staff \with {
          midiInstrument = "bassoon"
          instrumentName = "B"
        }
        { \magnifyStaff #4/7 \clef bass \bass }
        \addlyrics { \tiny \bassVerse }
      >>
      \new PianoStaff <<
        \new Staff = "right" \with {
          midiInstrument = "acoustic grand"
          printPartCombineTexts = ##f
        }
                                %  \set PianoStaff.instrumentName = #"Piano"
        {
          \magnifyStaff #4/7
          << \rightOne \\ \rightTwo >>
                                %  \partCombine \rightOne \rightTwo
        }
        \new Staff = "left" \with {
          midiInstrument = "acoustic grand"
        } { \magnifyStaff #4/7 \clef bass \left }
      >>
    >>
    \layout {
      \context {
                                %    \Staff \RemoveEmptyStaves
        %    \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-bass"
  \paper {
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
      \new ChoirStaff
      <<
        \new Staff \with {
          midiInstrument = "flute"
          instrumentName = "S"
        }
        { \magnifyStaff #4/7 \soprano }
        \addlyrics { \tiny \sopranoVerse }
        
        \new Staff \with {
          midiInstrument = "oboe"
          instrumentName = "A"
        }
        { \magnifyStaff #4/7 \alto }
        \addlyrics { \tiny \altoVerse }
        
        \new Staff \with {
          midiInstrument = "clarinet"
          instrumentName = "T"
        }
        { \magnifyStaff #4/7 \clef "treble_8" \tenor }
        \addlyrics { \tiny \tenorVerse }
        
        \new Staff \with {
          midiInstrument = "bassoon"
          instrumentName = "B"
        }
        { \clef bass \bass }
        \addlyrics { \bassVerse }
      >>
      \new PianoStaff <<
        \new Staff = "right" \with {
          midiInstrument = "acoustic grand"
          printPartCombineTexts = ##f
        }
                                %  \set PianoStaff.instrumentName = #"Piano"
        {
          \magnifyStaff #4/7
          << \rightOne \\ \rightTwo >>
                                %  \partCombine \rightOne \rightTwo
        }
        \new Staff = "left" \with {
          midiInstrument = "acoustic grand"
        } { \magnifyStaff #4/7 \clef bass \left }
      >>
    >>
    \layout {
      \context {
                                %    \Staff \RemoveEmptyStaves
        %    \override VerticalAxisGroup.remove-first = ##t
      }
    }
  }
}

% Rehearsal MIDI files:
#(define output-suffix "midi-soprano")
\book {
  \score {
    \rehearsalMidi "soprano" "soprano sax" \sopranoVerseMidi
    \midi { }
  }
}

#(define output-suffix "midi-alto")
\book {
  \score {
    \rehearsalMidi "alto" "soprano sax" \altoVerseMidi
    \midi { }
  }
}

#(define output-suffix "midi-tenor")
\book {
  \score {
    \rehearsalMidi "tenor" "tenor sax" \tenorVerseMidi
    \midi { }
  }
}

#(define output-suffix "midi-bass")
\book {
  \score {
    \rehearsalMidi "bass" "tenor sax" \bassVerseMidi
    \midi { }
  }
}
