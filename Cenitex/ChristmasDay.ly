\version "2.19.80"

\header {
  title = "Christmas Day"
  composer = "William Garnet James 1895-1977"
  meter = "NORTH WIND (88.89.99)"
}

VerseOne = \lyricmode {
  \set stanza = "1."
  The north wind is tos- sing the leaves,
  the red dust is o- ver the town,
  the spar- rows are un- der the eaves
  and the grass in the pad- dock is brown,
  as we lift up our voi- ces and sing
  to the Christ child the hea- ven- ly King.

  \set stanza = "2."
  The tree- ferns in green gul- lies sway,
  the cool streams flow sil- ent- ly by,
  the joy- bells are greet- ing the day,
  and the chimes are a- drift in the sky,
  as we lift up our voi- ces and sing
  to the Christ child, the hea- ven- ly King.
}  

tempotrack = {
  \key f \major
  \time 4/4
}

SopranoMusicOne = \relative c'' {
  \key c \major
  \tempo 4.=100
  \time 9/8
  \oneVoice
  \partial 8 g8^\markup{UNISON}
  g4. c4 b8 a g f
  g2.~8 r g
  g4. c4 b8 a g fis
  g2.~8 r g
  a4. d4 c8 b a b
  c2. g4 8
  a4.~8 g a g e d
  e4.~e4 r8 e4 f8
  g4. c4 b8 a g f
  g2. 4 8
  a4. d4 c8 b a b
  c4.~c4 r8 r4 r8
  r2. r4.
  r2. r4.
  r2. r4 \bar "||"
}

SopranoMusicTwo = \relative c'' {
  \voiceOne \break g8^\markup{HARMONY}
  g4. c4 b8 a g f
  g2.~8 r \breathe g
  g4. c4 b8 a g fis
  g2. \breathe \bar "" \break g4.
  a4. d4 c8 b a b
  c2. \breathe g4 8
  a4.~8 g a g e d
  e2. \breathe \bar "" \break e4 f8
  g4. c4 b8a g f
  g2. \breathe g4 g8
  a4. f'4 e8 d c b
  c2.~c4 \oneVoice r8
  r2. r4.
  r2. r4.
  \bar "|."
}

NullMusic = \relative c'' {
  \key c \major
  \time 9/8
  \tempo 4.=100
  \partial 8 s8
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4
}

AltoMusic = \relative c'' {
  g8
  e4. g4 8 f e d
  d2.~8 r d
  c4. e4 8 fis e d
  d2. c4.
  f4. 4 8 f f g
  g4.(f) e4 8
  e4.(8)e c
  d c b
  b2. e4 f8
  g4. c4 b8 a g f
  g2. g4 8
  f4. a4 8 f f f
  e2.~e4 s8
  s2. s4.
  s2. s4.
}

TenorMusic = \relative c' {
  \voiceOne
  g8
  c4. 4 8 c c c
  c4.(b4.~8) r b
  c4. a4 c8 c c c
  b2. c4.
  c d4 8 d d d
  c2. c4 c8
  c4.~8 b a b a a
  gis2.e4 f8
  g4. c4 b8 a g f
  a2. c4 8
  c4. d4 c8 b c d
  c2.~c4 \oneVoice r8
  r2. r4.
  r2. r4. \bar "|."
}

BassMusic = \relative c' {
  g8
  c,4. e4 8 f g a % 16
  g2.(f8) r f
  e4. a4 8
  d, d d
  g4.(f) e % 20
  f4. d4 8 g g f
  e4.(d) c4 b'8
  a4.~8 e f g a f
  e2. e4 f8
  g4. c4 b8 a g f % 25
  g2. e4 8
  f4. d4 8 g g g
  c,2.~c4 s8
  s2. s4.
  s2. s4. \bar "|."
}

RHhigh = \relative c' {
  \key c \major
  \time 9/8
  \voiceOne
  \partial 8 <g g'>8(
  <g c g'>4. c'4 b8 <f a> <e g> <d f>
  <g, g'>2. ~ q4) <g d' g>8(
  <g c g'>4. c'4 b8 <fis a> <e g> <d fis>
  <b g'>2.~<g g'>4.)
  <a c f a>4. (d'4 c8 b a c % 5
  c2.) g4(8
  a4.~8 g a g e d
  <b e>2.) e4(f8
  <g, c g'>4. c'4 b8 <f a> <e g> <d f>
  <g, g'>2. ~ <g e' g>4) <g c g'>8( % 10
  <a c f a>4. d'4 c8 b a b
  <c, e g c>4.) c'4(b8 <f a> <e g> <d f>
  <c e g>4.) c'4( b8 <f a> <e g> <d f>
  <c e g>4.) \change Staff = "LH" <g c>4( b8 <f a> g f
  <e g>2. ~q4) \change Staff = "RH" s8
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. e'4(f8
  <g, c g'>4. c'4 b8 <f a> <e g> <d f>
  <c g>4.) g''4( f8 e8 d c
  <c, f a>4.) f'4( e8 <b d> <a c> <g b>
  <c, e g c>4.) c'4( b8 <f a> <e g> <d f>
  <c e >4.) c'4 b8( <f a> <e g> <d f>
  <g, c e g>2. ~ q4) r8
}

RHlow = \relative c' {
  \key c \major
  \time 9/8
  \voiceTwo
  \partial 8 s8
  s4. <c g'>4. c
  c4. f e4 s8
  s4. <c g'> c
  d4. e4 d8 d c b
  s4. f' f4 g8 % 5
  g4. f e4 d8
  <c e>4. <b d> c4 b8
  s2. b4.
  s4. <c g'> c4.
  c4. f s % 10
  s4. <d f a> <d f>
  s4. <c g'> c
  s4. <c g'> c
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. b4.
  s4. <c g'> c
  s4. <f g b> <e g bes>
  s4. <f a> f
  s4. <c g'> c
  s4. <c g'> c
  s2. s4.
}

PianoRHMusic = <<
  \RHhigh
  \RHlow
>>

PianoLHMusic = \relative c, {
  \key c \major
  \time 9/8
  \partial 8 r8
  <c g' e'>4. <e c' g'> <f c' a'>
  <e e'>4. <d d'> <c c'>4 <b b'>8
  <a a'>4. <a' e' a> <d a'>
  <g, g'>4. <f f'> <e e'>
  <f c' f>4. <d' a' c> <g d'>4 <f d'>8 % 5
  <e c'>4. <d d'> <c c'>4 <b b'>8
  <a e' a>4. f' <e g>4 <f a>8
  <e gis>2. <g, g'>4.
  <c, g' e'>4. <e c' g'> <f c' a'>
  <e e'>4. <d d'> <c c'>4 <e e'>8 % 10
  <f f'>4. <d d'> <g g'>
  <c, g' e'>4. <e c' g'> <f c' a'>
  <c  g' e'>4. <e c' g'> <f c' a'>
  <c  g' e'>4. \voiceTwo <e c'   > <f c'   >
  <c c'>2. ~ q4 s8 \oneVoice
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. <g' g'>4.
  <c, g' e'>4. <e c' g'> <f c' a'>
  <e e'>4. <d d'> <c c'>
  <f f'>4. <d d'> <g g'>
  <c, g' e'>4. <e c' g'> <f c' a'>
  <c g' e'>4. <e c' g'> <f c' a'>
  <c c'>2. ~ q4 r8
}

RHhighQuiet = \relative c' {
  \key c \major
  \time 9/8
  \voiceOne
  \partial 8 <g g'>8-\ppp(
  <g c g'>4. c'4 b8 <f a> <e g> <d f>
  <g, g'>2. ~ q4) <g d' g>8(
  <g c g'>4. c'4 b8 <fis a> <e g> <d fis>
  <b g'>2.~<g g'>4.)
  <a c f a>4. (d'4 c8 b a c % 5
  c2.) g4(8
  a4.~8 g a g e d
  <b e>2.) e4(f8
  <g, c g'>4. c'4 b8 <f a> <e g> <d f>
  <g, g'>2. ~ <g e' g>4) <g c g'>8( % 10
  <a c f a>4. d'4 c8 b a b
  <c, e g c>4.) c'4(b8 <f a> <e g> <d f>
  <c e g>4.) c'4( b8 <f a> <e g> <d f>
  <c e g>4.) <g c>4( b8 <f a> g f
  <e g>2. ~q4) s8
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. e'4(f8
  <g, c g'>4. c'4 b8 <f a> <e g> <d f>
  <c g>4.) g''4( f8 e8 d c
  <c, f a>4.) f'4( e8 <b d> <a c> <g b>
  <c, e g c>4.) c'4( b8 <f a> <e g> <d f>
  <c e >4.) c'4 b8( <f a> <e g> <d f>
  <g, c e g>2. ~ q4) r8
}

RHlowQuiet = \relative c' {
  \key c \major
  \time 9/8
  \voiceTwo
  \partial 8 s8
  s4. <c g'>4.-\ppp c
  c4. f e4 s8
  s4. <c g'> c
  d4. e4 d8 d c b
  s4. f' f4 g8 % 5
  g4. f e4 d8
  <c e>4. <b d> c4 b8
  s2. b4.
  s4. <c g'> c4.
  c4. f s % 10
  s4. <d f a> <d f>
  s4. <c g'> c
  s4. <c g'> c
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. b4.
  s4. <c g'> c
  s4. <f g b> <e g bes>
  s4. <f a> f
  s4. <c g'> c
  s4. <c g'> c
  s2. s4.
}

PianoRHMusicQuiet = <<
  \RHhighQuiet
  \RHlowQuiet
>>

PianoLHMusicQuiet = \relative c, {
  \key c \major
  \time 9/8
  \partial 8 r8
  <c g' e'>4.-\ppp <e c' g'> <f c' a'>
  <e e'>4. <d d'> <c c'>4 <b b'>8
  <a a'>4. <a' e' a> <d a'>
  <g, g'>4. <f f'> <e e'>
  <f c' f>4. <d' a' c> <g d'>4 <f d'>8 % 5
  <e c'>4. <d d'> <c c'>4 <b b'>8
  <a e' a>4. f' <e g>4 <f a>8
  <e gis>2. <g, g'>4.
  <c, g' e'>4. <e c' g'> <f c' a'>
  <e e'>4. <d d'> <c c'>4 <e e'>8 % 10
  <f f'>4. <d d'> <g g'>
  <c, g' e'>4. <e c' g'> <f c' a'>
  <c  g' e'>4. <e c' g'> <f c' a'>
  <c  g' e'>4. \voiceTwo <e c'   > <f c'   >
  <c c'>2. ~ q4 s8 \oneVoice
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. s4.
  s2. <g' g'>4.
  <c, g' e'>4. <e c' g'> <f c' a'>
  <e e'>4. <d d'> <c c'>
  <f f'>4. <d d'> <g g'>
  <c, g' e'>4. <e c' g'> <f c' a'>
  <c g' e'>4. <e c' g'> <f c' a'>
  <c c'>2. ~ q4 r8
}

\book {
  \score { % score, karaoke and complete MP3
    \context GrandStaff <<
      \context ChoirStaff <<
	\new Staff = women <<
	  \new Voice = sopranos {           \SopranoMusicOne \SopranoMusicTwo }
	  \new Voice = altos    { \voiceTwo \NullMusic \AltoMusic    }
	>>
	\new Lyrics \lyricsto "sopranos" { \VerseOne }
	\new Staff = men <<
	  \new Voice = tenors { \clef "bass"           \NullMusic \TenorMusic }
	  \new Voice = basses { \clef "bass" \voiceTwo \NullMusic \BassMusic  }
	>>
      >>
      \context PianoStaff <<
	\new Staff = RH { \PianoRHMusic }
	\new Staff = LH { \clef "bass" \PianoLHMusic }
      >>
    >>
    \layout {
      \context { \Staff \RemoveAllEmptyStaves }
    }
    \midi{}
  }
  \score { % soprano
    \context GrandStaff <<
      \context ChoirStaff <<
	\new Staff = women <<
	  \new Voice = sopranos {           \SopranoMusicOne \SopranoMusicTwo }
	>>
      >>
      \context PianoStaff <<
	\new Staff = RHQuiet { \PianoRHMusicQuiet }
	\new Staff = LHQuiet { \clef "bass" \PianoLHMusicQuiet }
      >>
    >>
    \midi{}
}
  \score { % alto
    \context GrandStaff <<
      \context ChoirStaff <<
	\new Staff = women <<
	  \new Voice = altos    { \voiceTwo \SopranoMusicOne \AltoMusic    }
	>>
      >>
      \context PianoStaff <<
	\new Staff = RHQuiet { \PianoRHMusicQuiet }
	\new Staff = LHQuiet { \clef "bass" \PianoLHMusicQuiet }
      >>
    >>
    \midi {
      \context { \Staff \RemoveAllEmptyStaves }
    }
  }
  \score { % tenor
    \context GrandStaff <<
      \context ChoirStaff <<
	\new Staff = men <<
	  \new Voice = tenors { \clef "bass"  \SopranoMusicOne \TenorMusic }
	>>
      >>
      \context PianoStaff <<
	\new Staff = RHQuiet { \PianoRHMusicQuiet }
	\new Staff = LHQuiet { \clef "bass" \PianoLHMusicQuiet }
      >>
    >>
    \midi {
      \context { \Staff \RemoveAllEmptyStaves }
    }
  }
  \score { % bass
    \context GrandStaff <<
      \context ChoirStaff <<
	\new Staff = men <<
	  \new Voice = basses { \clef "bass" \voiceTwo \SopranoMusicOne \BassMusic  }
	>>
      >>
      \context PianoStaff <<
	\new Staff = RHQuiet { \PianoRHMusicQuiet }
	\new Staff = LHQuiet { \clef "bass" \PianoLHMusicQuiet }
      >>
    >>
    \midi {
      \context { \Staff \RemoveAllEmptyStaves }
    }
  }
}

