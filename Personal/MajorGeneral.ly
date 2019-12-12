\version "2.19.80"

global = {
  \time 4/4
  \key ees \major
  \tempo 4 = 120
}

majorgeneral = \relative c' {
  \oneVoice
  \global
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r2 r4 r8 bes % ^\markup{MAJOR-GENERAL.}
  bes8 c bes c bes c bes c
  bes8 c bes c bes g ees bes
  aes'8 bes aes bes aes bes aes bes
  aes8 bes aes bes aes f d bes
  bes'8 c bes c bes c bes c
  bes8 c bes c bes g ees g
  f8 g f g f g a bes
  | bes8 a g a bes bes, bes bes'16 bes
  | bes8 ces bes ces bes ces bes ces
  | bes8 ces bes aes ges f ees ees'
  | des8 ees des ees des ees des ees
  | des8 bes des ces bes aes ges ces
  | bes8 ces bes ces bes ces bes ces
  | bes8 ces bes aes ges f ees4
  | r2-\fermata r4 r8 d
  | ees8 d ees d ees d ees d
  | ees8 ges f ees bes' bes, bes \bar "||" s8
  s1
  s1
  s1
  s1
  s1
  s1
  s1
}

soprano = \relative c'' {
  \oneVoice
  \global
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r2 r4 r8 \voiceOne bes8^\f^\markup{CHORUS}
}

alto = \relative c' {
  \oneVoice
  \global
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s2 s4 s8 \voiceTwo d
}

tenor = \relative c' {
  \oneVoice
  \global
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s2 s4 s8 \voiceOne bes8^\f
}

basses = \relative c' {
  \oneVoice
  \global
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s2 s4 s8 \voiceTwo bes8
}

treble = \relative c'' {
  \global
  | bes4^\markup{\bold \italic{Allegro vivace.}} bes bes bes
  | bes4 bes bes bes8 bes'
  | bes8 c bes c bes c bes c
  | bes8 c bes c bes g ees bes
  | bes'8 c bes c bes c bes c
  | bes8 c bes c bes g ees bes
  | bes'8 c d ees d c bes a
  | bes8 c d ees d c bes a
  | bes8 c d ees d c bes aes
  | ges8 bes <bes, f'> bes' <bes, f'>4 r
  \bar "||"
  | <g, bes>-\pp q q q
  | q4 q q q
  | q4 q q q
  | q4 q q q
  <f bes d>4 q q q
  q4 q q q
  <g bes f>4 q q q
  <g bes ees>4 q q q
  <f bes d>4 q q q
  <f c' ees>4 q <f bes d> r
  <aes bes f'>4 q q q
  q4 q <ges bes ees> <ges bes>
  <ces des aes'>4 q q q
  q4 q <bes des ges> <bes des>
  <aes bes f'>4 q q q
  q4 q <ges bes ees> <ges bes>
  r1-\fermata
  <a ees' ges>4 q q q
  q4 q <bes d bes'> r
}

bass = \relative c' {
  \global
  bes4 4 4 4
  bes4 4 4 4
  ees,4 <g bes ees> ees q
  ees4 q ees q
  ees4 <aes bes d> ees q
  ees4 q ees q
  <ees g bes ees>4 <g bes ees> <aes bes d f> q
  <g aes ees>4 q <aes bes d f> q
  <g aes ees>4 q <aes c ees f> <f c' ees>
  <bes ees g> <aes d aes'> <ees' g> r
  ees,, bes' ees, bes'
  ees, bes' ees, bes'
  ees, bes' ees, bes'
  ees, bes' ees, bes'
  ees, bes' ees, bes'
  ees, bes' ees, bes'
  ees, bes' ees, bes'
  ees, bes' ees, bes'
  f4 d f d
  f4 f <bes, bes'> r
  d'4 bes d bes
  d4 bes ees ees,
  f'4 des f des
  f4 des ges ges,
  d'4 bes d bes
  d4 bes ees ees,
  r1-\fermata
  <ces ces'>4 q q q
  q4 q <bes bes'> r
}

mgwordsOne = \lyricmode {
  I am the ver- y pat- tern of a mod- ern maj- or gen- er- al;
  I've in- for- mat- ion ve- ge- ta- ble, a- ni- mal, and mi- ne- ral;
  I know the Kings of Eng- land, and I quote the fights his- to- ri- cal,
  From Ma- ra- thon to Wa- ter- loo, in or- der ca- te- go- ri- cal.
  I'm _ ve- ry well ac- quaint- ed, too,  with mat- ters ma- the- ma- ti cal;
  I un- der- sytand e- qua- tions, both the sim- ple and quad- ra- ti- cal;
  A- bout bi- no- mial The- o- rem I'm teem- ing with a lot o' news,
  With ma- ny cheer- ful facts a- bout the square of the hy- po- ten- use;
}

mgwordsTwo = \lyricmode {
  I know our my- this his- to- ry, King Ar- thur's, and Sir Ca- ro- doc's,
  I an- swer hard a- cros- tics, I've a pret- ty taste for Pa- ra- dox;
  I quote, in E- le- gi- acs, all the crimes of He- lio- ga- ba- lus!
  In co- nics I can floor pe- cu- li- a- ri- ties pa- ra- bo- lous,
  I can tell un- doubt- ed Ra- pha- els from Ge- rard Dows and Zoff- an- ies.
  I know the croak- ing cho- rus from the "\"Frogs\"" of A- ris- to- pha- nes!
  Then I can hum a fugue, of which I've heard the mu- sic's din a- fore,
  And whis- tle all the airs from that in- fer- nal non- sense, Pin- a- fore!
}

choruswordsOne = \lyricmode {
  With
}

choruswordsTwo = \lyricmode {
  And
}

\book {
  \header {
    title = "I Am the Very Pattern of a Modern Major-General"
    subtitle = "Pirates of Penzance"
    composer = "Arthur Sullivan"
    poet = "W. S. Gilbert"
  }

  \score {
    \context GrandStaff {
      <<
        \context ChoirStaff {
	  <<
	    \new Staff = women <<
	      \new Voice = sopranos {
		\soprano
		\addlyrics \choruswordsOne
		\addlyrics \choruswordsTwo
	      }
	      \new Voice = altos {
		\alto
	      }
	    >>
	    \new Staff = men <<
	      \clef bass
	      \new Voice = tenors {
		\tenor
	      }
	      \new Voice = basses {
		\basses
	      }
	      \new Voice = majorgeneral {
		\majorgeneral
	      }
	      \addlyrics \mgwordsOne
	      \addlyrics \mgwordsTwo
	    >>
	  >>
	  }
	\context PianoStaff {
	  <<
	    \new Staff = treble {
	      \treble
	    }
	    \new Staff = bass {
	      \clef bass
	      \bass
	    }
	  >>
	}
      >>
    }
  \layout {
    indent = 1.5\cm
    \context {
      \Staff \RemoveAllEmptyStaves
    }
  }
  \midi {
  }
}
