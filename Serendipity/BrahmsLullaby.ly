\version "2.25.0"

global = {
  \key ees \major
  \time 3/4
  \dynamicUp
  \tempo 4. = 115
}

rehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "2a" } \partial 8 s8 s2.*4
  \mark \markup { \circle "2b" } s2.*5
  \mark \markup { \circle "3a" } s2.*4
  \mark \markup { \circle "3b" } s2.*4 s2 s8
  \mark \markup { \circle "3c" } s8 s2.*4
  \mark \markup { \circle "4a" } s2.*5
  \mark \markup { \circle "4b" } s2.*4
  \mark \markup { \circle "4c" } s2.*4 s2 s8
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
  ees2 r8 \bar "||" r
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
  ees2 r8
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

wordsMidi = \lyricmode {
  "Gu" "ten " A "bend, " "gute " "Nacht, "
  "\nmit " Ros "en " be "dacht, "
  "\nmit " Näg "lein " be "steckt, "
  "\nschlupt " un "ter " "die " "Deck: "
  "\nMor" "gen " "früh, " "wenn " "Got " "will, "
  "\nwirst " "du " wie "der " ge "weckt, "
  "\nmor" "gen " "früh, " "wenn " "Got " "will, "
  "\nwirst " "du " wei "der " ge "weckt.\n"

  "\nGu" "ten " A "bend, " "gute " "Nacht, "
  "\nvon " Eng "lein " be "wacht, "
  "\ndie " zei "gen " "im " "Traum "
  "\ndir " Christ kind "leins " "Baum: "
  "\nSchlaf " "nu " se "lig " "und " "süß, "
  "\nschau " "im " "Raum's " Par a "dies, "
  "\nSchlaf " "nu " se "lig " "und " "süß, "
  "\nschau " "im " "Raum's " Pa ra "dies. "
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
  ees2 r8 \bar "||" r
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
  ees2 r8
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
  g2 r8 \bar "||" r
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
  g2 r8
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
  ees2 r8 \bar "||" r
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
  ees2 r8
  \bar "|."
}

pianoRH = \relative c'' {
  \partial 8  <g bes>8^\markup{\italic{Teneramente con noto.}} ~ (
  q8 <ees g>8 <g bes>4 ) r8 q~(
  q8 <ees g> <g bes>4 ) r8 q~ (
  q8 <ees g>4 ) bes <g' bes>8~ (
  q8 <ees g>4 bes ) <g' bes>8 (
  q8 <ees' g>4 q q8~ % 2b
  q8 <d aes'>4 <aes d> ) <g bes>8~ (
  q8 <f aes>4 <bes, f'> ) <aes' c>8 ~ (
  q8 <f aes>4 <bes, f'> ) <aes' c>8 ~ (
  q8 <f aes>4 <aes d> <aes f'>8~
  q8 <g ees'>4 <g bes> ) <ees des' ees>8 ~ ( % 3a
  q8 <aes c> ) <c ees>4. <aes c>8
  <g bes>8 (<ees g>) <g bes>4. <ees g>8
  <d f>8(<bes d> <d ees> <aes c> <d ees> <g bes>)
  <ees g>2 r8 <ees des' ees>~( % 3b
  q8 <aes c>) <c ees>4. <aes c>8
  <g bes>8(<ees g>) <g bes>4. <ees g>8
  <d f>8(bes' <ees, g> c' <f, aes> d')
  <g, bes ees>2 r8 \bar "||" <g bes>8 ~ (
  q8 <ees g>) <g bes>4 r8 q8 ~ ( % 3c
  q8 <ees g>) <g bes>4 r8 q8 ~ (
  q8 <ees g>4 bes) <g' bes>8~ (
  q8 <ees g>4 bes) <g' bes>8 ~ (
  q8 <ees' g>4 q q8 ~ % 4a
  q8 <d aes'>4 <aes d>) <g bes>8 ~ (
  q8 <f aes>4 <bes, f'>) <aes' c>8 ~ (
  q8 <f aes>4 <bes, f'>) <aes' c>8 ~ (
  q8 <f aes>4 <aes d> <aes f'>8 ~
  q8 <g ees'>4 <g bes>) <ees des' ees>8 ~ ( % 4b
  q8 <aes c>) <c ees>4. <aes c>8
  <g bes>8(<ees g>) <g bes>4. <ees g>8
  <d f>8(<bes d> <d f> <aes c> <d f> <g, bes>)
  <ees g>2 r8 <ees des' ees>8 ~ ( % 4c
  q8 <aes c>) <c ees>4. <aes c>8
  <g bes>8(<ees g>) <g bes>4. <ees g>8
  <d f>8(bes' <ees, g> c' <f, aes> d')
  <g bes ees>2 r8
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
  ees,4 <bes' ees g> r8 \bar "||" r
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
  ees,4 <bes' ees g> r8
  \bar "|."
 }
  
\header {
  title    = "Lullaby"
  subtitle = "(Wiegenlied)"
  composer = "Johannes Brahms"
}

\book {
  \bookOutputSuffix "single"
  \score { % full score
    <<
      \new ChoirStaff <<
	\new Staff <<
         \new Voice { \rehearsalTrack }
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
  \score { % full score
    <<
      \new ChoirStaff <<
	\new Staff <<
         \new Voice { \rehearsalTrack }
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

\book {
  \bookOutputSuffix "midi"
  \score { % full score
    <<
      \new ChoirStaff <<
	\new Staff = soprano <<
         \new Voice { \rehearsalTrack }
	  \new Voice { \global \sopranoNotes }
	  \addlyrics { \wordsMidi }
	>>
	\new Staff = alto <<
	  \new Voice { \global \altoNotes }
	>>
	\new Staff = tenor <<
	  \new Voice { \clef "treble_8" \global \tenorNotes }
        >>
        \new Staff = bass <<
	  \new Voice { \clef bass \global \bassNotes }
	>>
      >>
      \new PianoStaff <<
	\new Staff <<
	  { \global \pianoRH }
	  { \global \pianoLH }
	>>
      >>
    >>
    \midi  {}
  }
}
