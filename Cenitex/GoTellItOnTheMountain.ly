\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "Go Tell It on the Mountain"
  copyright = \today
}

global = {
  \key e \major
  \time 4/4
  \tempo 4=120
}

melodyA = \relative c'' {
  gis2 gis8 fis e cis
  e4.(cis8) e2
  fis8 fis4 e8 fis4. e8
  gis4 b cis8(b ~ b4)
  gis2 gis8 fis e cis
  e4.(cis8) e4 a
  b8(gis4) e8 gis8(fis4) e8
  e1
}

melodyB = \relative c'' {
  gis2^\markup{\musicglyph #"scripts.segno"} gis8 fis e cis
  e4.(cis8) e2
  fis8 fis4 e8 fis4. e8
  gis4 b cis8(b ~ b4)
  gis2 gis8 fis e cis
  e4.(cis8) e4 a
  b8(gis4) e8 gis8(fis4) e8
  e2.^\fermata^\markup{FINE}
}

melodyC = \relative c' {
  b4
  fis'4. e8 fis4 gis8(fis)
  e2 e4 r8 b
  fis'4. e8 fis4. gis8
  b2. b,4
  fis'4. e8 fis4 g8(fis)
  e4.(cis8) e4 a
  gis4. e8 gis8(fis4) e8
  e1-\markup{D.S. \musicglyph #"scripts.segno" last time}
}

accTrebleA = \relative c' {
  <gis b>2 q
  q2 q
  a8 a4. a2
  q4 <b e> <cis g'>8 <b gis'> ~ q4
  <gis b>2 q2
  q2 q4 <a cis>
  <b e>2 <a dis>
  <gis b>4 b8 b cis b gis fis
}

accTrebleB = \relative c' {
  <gis b>2 q2
  s1
  a8 a4. a2
  <gis b>4 <b e> <cis g'>8 <b gis'>8 ~ q4
  <gis b>2 q
  s2. <a cis e>4
  <b e>2 <a dis>
  <gis b>2.-\fermata
  }

accTrebleC = \relative c' {
  s4
  a2 a
  gis2 gis
  a2 a
  <b e>2. s4
  a2 a
  gis2 gis4 <a cis e>
  <b e>2 <a dis>
  <gis b>4 b8 b cis b gis fis
}

accBassOneA = \relative c {
  r4 b2 b4
  r4 b2 b4
  b4 b b b
  e,4 gis a8 e' cis b
  r4 b2 b4
  r4 b2 a4
  b4 b b, b
  r4 b'8 b cis b gis fis
}

accBassOneB = \relative c {
  r4 b2 b4
  gis'8 b b b cis4 b
  b,4 b b b
  e,4 gis a8 e' cis b
  r4 b2 b4
  gis'8 b b b cis b r4
  b,4 b b, b
  r4 b' ~ <b e>-\fermata
  }

accBassOneC = \relative c {
  r4
  b4 b b b
  e, e e e
  b' b b b
  e,4 b' g'2
  b,4 b b b
  e, e e a
  b4 b b, b
  e4 e'8 e fis e cis b
}

accBassTwoA = \relative c, {
  e2 e
  e2 e
  s1
  s1
  e2 e
  e2 e4 s
  s1
  e2 s
}

accBassTwoB = \relative c, {
  e2 e
  s1
  s1
  s1
  e2 e
  s1
  s1
  e2.-\fermata
}

accBassTwoC = \relative c, {
  s4
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
}

guitarA = \chordmode {
  e1
  e1
  b1:7
  e1
  e1
  e2. a4
  e2 b2:7
  e1
}

guitarB = \chordmode {
  e1
  e1
  b1:7
  b1:7
  e1
  e2. a4
  e2
  b2:7
  e2.
}

guitarC = \chordmode {
  e4
  b1:7
  e1
  b1:7
  e1
  bes1
  e2. a4
  e2 b2:7
  e1
}

melody     = { \melodyA     \repeat volta 2 { \melodyB     \bar "||" \melodyC     } }
accTreble  = { \accTrebleA  \repeat volta 2 { \accTrebleB  \bar "||" \accTrebleC  } }
accBassOne = { \accBassOneA \repeat volta 2 { \accBassOneB \bar "||" \accBassOneC } }
accBassTwo = { \accBassTwoA \repeat volta 2 { \accBassTwoB \bar "||" \accBassTwoC } }
guitar     = { \guitarA     \repeat volta 2 { \guitarB     \bar "||" \guitarC     } }

prelim =\lyricmode {
  Go tell it on the moun- tain,
  O- ver the hills and ev- 'ry- where,
  Go tell it on the moun- tain
  That Je- sus Christ is born.
}

refrain =\lyricmode {
  Go tell it on the moun- tain,
  O- ver the hills and ev- 'ry- where,
  Go tell it on the moun- tain
  That Je- sus Christ is born.
}

firstverse = \lyricmode {
  \set stanza = "1. "
  Down in a lone- ly man- ger,
  The hum- ble Christ was born,
  And God sent out sal- va- tion
  That bless- ed Christ- mas morn.
}

secondverse = \lyricmode {
  \set stanza = "2. "
  While shep- herds kept their watch, ""
  O'er si- lent flocks by night,
  Be hold! through- out the heav- ens
  There shone a ho- ly light.
}

Mwords =\lyricmode {
  "Go " "tell " "it " "on " "the " "moun" "tain,"
  "/O" "ver " "the " "hills " "and " "ev" "'ry" "where,"
  "/Go " "tell " "it " "on " "the " "moun" "tain"
  "/That " "Je" "sus " "Christ " "is " "born."
  "\Go " "tell " "it " "on " "the " "moun" "tain,"
  "/O" "ver " "the " "hills " "and " "ev" "'ry" "where,"
  "/Go " "tell " "it " "on " "the " "moun" "tain"
  "/That " "Je" "sus " "Christ " "is " "born."
  "\Down " "in " "a " "lone" "ly " "man" "ger,"
  "/The " "hum" "ble " "Christ " "was " "born,"
  "/And " "God " "sent " "out " "sal" "va" "tion"
  "/That " "bless" "ed " "Christ" "mas " "morn."
  "\Go " "tell " "it " "on " "the " "moun" "tain,"
  "/O" "ver " "the " "hills " "and " "ev" "'ry" "where,"
  "/Go " "tell " "it " "on " "the " "moun" "tain"
  "/That " "Je" "sus " "Christ " "is " "born."
  "\While " "shep" "herds " "kept " "their " "watch, " ""
  "/O'er " "si" "lent " "flocks " "by " "night,"
  "/Be " "hold! " "through" "out " "the " "heav" "ens"
  "/There " "shone " "a " "ho" "ly " "light."
  "\Go " "tell " "it " "on " "the " "moun" "tain,"
  "/O" "ver " "the " "hills " "and " "ev" "'ry" "where,"
  "/Go " "tell " "it " "on " "the " "moun" "tain"
  "/That " "Je" "sus " "Christ " "is " "born."
}

\book
{
  \score { % this version for the printed page
    <<
      \new ChordNames {
	\set chordChanges = ##t
        \guitar
      }
	\context Staff = melody <<
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \oneVoice << \global \melody >> }
	>>
	\context Lyrics = firstverse { s1 }
	\context Lyrics = secondverse { s1 }
        \context PianoStaff <<
	  \context Staff = treble <<
	    \context Voice = accMelody { \voiceOne \global \melody    }
            \context Voice = accTreble { \voiceTwo \global \accTreble }
          >>
	  \context Staff = bass <<
	    \clef bass
	    \context Voice = bassOne { \voiceOne \global \accBassOne }
            \context Voice = bassTwo { \voiceTwo \global \accBassTwo }
	  >>
        >>
	\context Lyrics = firstverse \lyricsto sopranos {\prelim \refrain \firstverse}
	\context Lyrics = secondverse \lyricsto sopranos {\prelim \refrain \secondverse}
    >>
    \layout {
    }
  }
  \score { % this version for the printed page
    <<
%      \new ChordNames {
%	\set chordChanges = ##t
%        \guitar
%      }
	\context Staff = melody <<
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \oneVoice { \global \unfoldRepeats \melody \melodyB } }
	>>
	\context Lyrics = firstverse { s1 }
        \context PianoStaff <<
	  \context Staff = treble <<
	    \context Voice = accMelody { \voiceOne \global \unfoldRepeats \melody \melodyB }
            \context Voice = accTreble { \voiceTwo \global \unfoldRepeats \accTreble \accTrebleB }
          >>
	  \context Staff = bass <<
	    \clef bass
	    \context Voice = bassOne { \voiceOne \global \unfoldRepeats \accBassOne \accBassOneB }
            \context Voice = bassTwo { \voiceTwo \global \unfoldRepeats \accBassTwo \accBassTwoB }
	  >>
        >>
      \context Lyrics = firstverse \lyricsto sopranos \Mwords
    >>
    \midi {
    }
%    \layout {}
  }
}