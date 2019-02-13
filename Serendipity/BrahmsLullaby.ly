\version "2.19.82"

global = {
  \key ees \major
  \time 3/4
  \dynamicUp
  \tempo 4. = 115
}

rehearsalTrack = {
}

sopranoNotes = \relative c'' {
  \voiceOne
  \partial 8 r8^\markup{\italic{Teneramente con moto.}}
  r2.
  r4 r g8^\p g
  bes4. g8 g4
  bes4 r g8(bes)
  ees4 \<  d4. c8 \!
  c4(\> bes) f8 \! (g)
  aes4 f f8(g)
  aes4 r f8(aes)
  d8(c) bes4 d
  ees4 r ees,8 ees
  ees'2 c8 aes
  bes2 g8 ees
  aes4 bes \< c \!
  \grace g8 bes2 ees,8 ees
  ees'2 c8 aes
  bes2 g8 ees
  aes4 \grace {bes16 aes} g4 f
  ees2 r4
  r2.
  r4 r g8^\p g
  bes4. g8 g4
  bes4 r g8(bes)
  ees4 \<  d4. c8 \!
  c4(\> bes) f8 \! (g)
  aes4 f f8(g)
  aes4 r f8(aes)
  d8(c) bes4 d
  ees4 r ees,8 ees
  ees'2 c8 aes
  bes2 g8 ees
  aes4 bes \< c \!
  \grace g8 bes2 ees,8 ees
  ees'2 c8 aes
  bes2 g8 ees
  aes4 \grace {bes16 aes} g4 f
  ees2 r4
  \bar "|."
}

verseOne = \lyricmode {
  Gu- ten A- bend, gute Nacht,
  mit Ros- en be- dacht,
  mit Näg- lein be- steckt,
  schlupt un- ter die Deck:
  Mor- gen früh, wenn Got will,
  wirst du wie- der ge- weckt,
  mor- gen früh, wenn Got will,
  wirst du wei- der ge- weckt.
}

verseTwo = \lyricmode {
  Gu- ten A- bend, gute Nacht,
  von Eng- lein be- wacht,
  die zei- gen im Traum
  dir Christ- kind- leins Baum:
  Schlaf nu se- lig und süß,
  schau im Raum's Par- a- dies,
  Schlaf nu se- lig und süß,
  schau im Raum's Pa- ra- dies.
}

altoNotes = \relative c' {
  \voiceTwo
  \partial 8 r8
  r2.
  r4 r ees8 ees
  g4. ees8 ees4
  g4 r g
  ees4 ees4. ees8
  d2 d4
  d4 d d
  d4 r d
  f8(ees) d4 f
  ees4 r ees8 ees
  ees4(aes) ees8 aes
  g2 ees8 ees
  d4 d d
  ees2 ees8 ees
  ees4(aes) ees8 aes
  g2 ees8 ees
  d4 ees8(c) d4
  ees2 r4
  r2.
  r4 r ees8 ees
  g4. ees8 ees4
  g4 r g
  ees4 ees4. ees8
  d2 d4
  d4 d d
  d4 r d
  f8(ees) d4 f
  ees4 r ees8 ees
  ees4(aes) ees8 aes
  g2 ees8 ees
  d4 d d
  ees2 ees8 ees
  ees4(aes) ees8 aes
  g2 ees8 ees
  d4 ees8(c) d4
  ees2 r4
  \bar "|."
}

tenorNotes = \relative c' {
  \voiceOne
  \partial 8 r8
  r2.
  r4 r bes8^\p bes
  bes4. bes8 bes4
  bes4 r bes
  bes4 bes4. g8
  aes2 bes4
  bes4 bes bes
  bes4 r bes
  aes4 bes aes
  g4 r ees8 ees
  ees'4(c) aes8 c
  ees2 bes8 g
  f4 g aes
  g2 ees8 ees
  ees'4(c) aes8 c
  ees2 bes8 g
  f4 bes aes
  g2 r4
  r2.
  r4 r bes8^\p bes
  bes4. bes8 bes4
  bes4 r bes
  bes4 bes4. g8
  aes2 bes4
  bes4 bes bes
  bes4 r bes
  aes4 bes aes
  g4 r ees8 ees
  ees'4(c) aes8 c
  ees2 bes8 g
  f4 g aes
  g2 ees8 ees
  ees'4(c) aes8 c
  ees2 bes8 g
  f4 bes aes
  g2 r4
  \bar "|."
}

bassNotes = \relative c {
  \voiceTwo
  \partial 8 r8
  r2.
  r4 r ees8 ees
  ees4. g8 g4
  ees4 r ees
  g4 g4. ees8
  f2 aes8(g)
  f4 aes aes8(g)
  f4 r aes8(f)
  bes,4 bes' bes,
  ees4 r ees8 ees
  ees2 ees8 ees
  ees2 ees8 ees
  bes4 bes bes
  ees2 ees8 ees
  ees2 ees8 ees
  ees2 ees8 ees
  bes4 bes bes
  ees2 r4
  r2.
  r4 r ees8 ees
  ees4. g8 g4
  ees4 r ees
  g4 g4. ees8
  f2 aes8(g)
  f4 aes aes8(g)
  f4 r aes8(f)
  bes,4 bes' bes,
  ees4 r ees8 ees
  ees2 ees8 ees
  ees2 ees8 ees
  bes4 bes bes
  ees2 ees8 ees
  ees2 ees8 ees
  ees2 ees8 ees
  bes4 bes bes
  ees2 r4
  \bar "|."
}

pianoRH = \relative c'' {
  \partial 8  <g bes>8^\markup{\italic{Teneramente con noto.}} ~ \(
  q8 <ees g>8 <g bes>4 \) r8 q~\(
  q8 <ees g> <g bes>4 \) r8 q~ \(
  q8 <ees g>4 \) bes <g' bes>8
  \bar "|."
 }
  
pianoLH = \relative c, {
  \partial 8 r8
  ees4 g'(bes,)
  ees,4 g'(bes,)
  ees,4 g'(bes,)
  ees,4 g'(bes,)
  ees,4 bes''( bes,)
  ees,4 f'(bes,)
  ees,4 f'(bes,)
  ees,4 f'(bes,)
  ees,4 bes''(bes,)
  ees,4 bes''(ees,)
  ees,4 aes'(aes,)
  ees4 g'(bes,)
  ees,4 f'(bes,)
  ees,4 g'(bes,)
  ees,4 aes'(aes,)
  ees4 g'(bes,)
  ees,4 bes''(bes,)
  ees,4 <bes' ees g> r
  ees,4 g'(bes,)
  ees,4 g'(bes,)
  ees,4 g'(bes,)
  ees,4 g'(bes,)
  ees,4 bes''( bes,)
  ees,4 f'(bes,)
  ees,4 f'(bes,)
  ees,4 f'(bes,)
  ees,4 bes''(bes,)
  ees,4 bes''(ees,)
  ees,4 aes'(aes,)
  ees4 g'(bes,)
  ees,4 f'(bes,)
  ees,4 g'(bes,)
  ees,4 aes'(aes,)
  ees4 g'(bes,)
  ees,4 bes''(bes,)
  ees,4 <bes' ees g> r
  \bar "|."
 }
  
\header {
  title    = "Lullaby"
  subtitle = "(Wiegenlied)"
  composer = "Johannes Brahms"
}

\book {
  \score { % full score
    <<
      \new ChoirStaff <<
	\new Staff <<
%         \new Voice { \rehearsalTrack }
	  \new Voice = "soprano" <<
	    \global
	    \sopranoNotes
	  >>
          \new Voice = "alto" <<
	    \global
	    \altoNotes
	  >>
	  \new Lyrics \lyricsto "soprano" { \verseOne \verseTwo }
	>>
	\new Staff <<
	  \new Voice = "tenor" <<
            \clef "bass"
	    \global
	    \tenorNotes
	  >>
	  \new Voice = "bass" <<
            \clef "bass"
	    \global
	    \bassNotes
	  >>
	>>
      >>
      \new PianoStaff <<
	\new Staff <<
	  { \global \pianoRH }
	>>
	\new Staff <<
	  { \clef bass \global \pianoLH }
	>>
      >>
    >>
    \layout{}
  }
}
