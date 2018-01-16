\version "2.19.80"

global = {
  \time 2/2
  \key ees \major
  \tempo 4 = 120
}

melodyOne = \relative c'' {
  \global
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  \bar "||"
}

melodyTwo = \relative c'' {
  bes8^\ff^\markup{JOE (SOLO)}  aes g4 g bes8 aes
  g4 bes c ees
  bes8 aes g4 g bes8 aes
  g4 ees f2
  g8 f ees4 ees g8 f
  ees4 ees f aes
  g8 f ees4 ees g8 f
  ees4 f ees2
}

melodyThree = \relative c'' {
  d4-\mf^\markup{MALE CHORUS} bes c4. ees8
  d4 bes c4. ees8
  d4 bes c ees
  d4 bes c2
  bes4 g a4. c8
  bes4 g a4. c8
  bes4 g a4. c8
  bes4 g aes2
  bes8-\p^\markup{JOE (SOLO)} aes g4 g bes8 aes
  g4 bes c ees
  bes8 aes g4 g bes8 aes
  g4 aes f2
  aes8 g f4 f aes8 g
  f4 f g bes
  aes8 g f4 f aes8 g
  f4 g f2~
  f4 r r2
  \repeat volta 2 {
    bes,4^\p^\markup{Burthen} bes c8 ees4 c8
    bes4 bes c8 ees4 f8
    g4 g f8 ees4 f8
    g4 bes c8 bes4 c8
    bes4 bes g8 f4 g8
    bes4 bes g8 f4 g8
    ees1 ~
    ees2 ~ 4 r8 bes
    bes4 bes c8 ees4 c8
    bes4 bes c8 ees4 f8
    g4 bes c8 bes4 c8
    ees4 ees\< d8 c4 d8 \!
    bes4 bes g8 f4 g8
    bes4 bes g8 f4 g8
    ees1 ~
    ees4 r r2
    d'4 bes c4. ees8
    d4 bes c2
    d8. 16 bes4 c8. 16 ees4
    d4 bes c2
    bes8 r g4 a2
    bes4 g a2
    bes8. 16 g8. 16 a4 c8. 16
    bes4 g f2 \>
    \! bes,4-\pp bes c8 ees4 c8
    bes4 bes c8 ees4 f8
    g4 bes c8 bes4 c8
    ees4 ees \< f8 ees4 f8 \!
    g4-\f g f8 ees4 f8
    g4 g f8 ees f4
  }
  \alternative {
    {
      ees4 r r2
      r1
    }
    {
      ees1 ~
      ees4 r r2
    }
  }
}

melodyFour = \relative c'' {
  \bar "|."
}

trebleOne = \relative c'' {
  \global
  bes4->_\ff^\markup{Moderato} bes-> c8-> ees4-> c8->
  <<
    { \voiceOne r4 <g' bes>8-. <f aes>-. <ees g>4-. q-.
      <g bes>8-. <f aes>-. <ees g>4-. q2->
      f,4 f g8 f4 g8
      g4 g f8 ees4 f8
      <ees g>4 q <d f>8 <c ees> <d f>4
      <g, ees'>2. bes16 \< (c ees g\!
      bes1-\fermata)
    }
    {
      \new Voice {
	\voiceTwo bes1 ~
	bes1
	<aes, ces>2 <aes f'>
	<bes f>4 <g d'> <g c>2
	aes2 aes
	s1
	ees'4 c d2-\fermata
      }
    }
  >> \oneVoice
}

trebleTwo = \relative c'' {
  <<
    { \voiceOne
      bes 8 aes g4 g bes8 aes
      g4 bes c ees
      bes8 aes g4 g bes8 aes
      g4 ees f2
      g8 f ees4 ees g8 f
      ees4 ees f aes
      g8 f ees4 ees g8 f
      <a, ees'>4 <aes d f> <g bes ees>2
    }
    { \new Voice
      { \voiceTwo
	r4 <bes ees>-.-\arpeggio q4-.-\arpeggio r
	q4-.-\arpeggio <bes ees g>-.-\arpeggio r <ees aes c>-.-\arpeggio
	r4 <bes ees>-.-\arpeggio q-.-\arpeggio r
	q4-.-\arpeggio <g bes>-.-\arpeggio r <aes bes d>-.-\arpeggio
	r4 <g d'>-.-\arpeggio q-.-\arpeggio r
	q4-.-\arpeggio q-.-\arpeggio r <aes c ees>-.-\arpeggio
	r4 <g bes>-.-\arpeggio q-.-\arpeggio r
	s1
      }
    }
  >> \oneVoice
  \bar "||"
}

trebleThree = \relative c'' {
  <<
    { \voiceOne
      <bes d>4 <g bes> <a c>4. <c ees>8
      <bes d>4 bes c4. ees8
      s4. <g, bes>8 s4. <ees c' ees>8
      <d bes' d>4 <g bes> <fis c'>2
      <d bes'>4 <bes g'> <c a>4. <ees c'>8
      <d bes'>4 <bes g'> <c a>4. <ees c'>8
      <d bes'>4 <bes g'> a'4. c8
      bes4 g aes2->
      <g bes>8 <f aes> <ees g>4 q <g bes>8 <f aes>
      <ees g>4 <g bes> <aes c> <c ees>
      bes8 aes g4 g bes8 aes
      <bes, e g>4 <bes e aes> <c f>2
      aes'8 g f4 f aes8 g
      <aes, ces f>4 q <g bes g'> <bes ees g bes>-\arpeggio
      aes'8 g f4 f aes8 g
      f4 g ees(g)
      g4(f d c)
      \repeat volta 2 {
	bes4 bes c8 f4 c8
	bes4 bes c8 ees4 f8
	g4 g f8 ees4 f8
	g4 bes c8 bes4 c8
	bes4-- bes-- g8 f4 g8
	bes4-- bes-- g8 f4 g8
	ees1 ~
	ees2 ~ ees4 r8 bes
	bes4 bes c8 ees4 c8
	bes4 bes c8 d4 f8
	g4 bes c8 bes4 c8
	ees4 ees d8 c4 d8
	bes4 bes g8 f4 g8
	bes4 bes g8 f4 g8
	ees1 ~
	ees4 d8(ees fis g bes a)
	d4( bes c4. ees8
	d4 bes c2)
	d8.(16 bes4 c8. 16 ees4
	d4 bes c2)
	bes4( g a c
        <d, bes'>4 <bes g'> <c a'>4. <ees c'>8)
	bes'8.( 16 g8. 16 a8. 16 c8. 16 bes4 g f2->)
	bes,4 bes c8 ees4 c8
	bes4 bes c8 ees4 f8
	g4 bes c8 bes4 c8
	<ees, ees'>4 q <f f'>8 <ees ees'>4 <f f'>8
	<g g'>4 q <f f'>8 <ees ees'>4 <f f'>8
	<g g'>4-- q-- <f f'>8-- (<ees ees'>8) s4
      }
      \alternative {
	{
	  ees'4-- s ees,-> g8 f
	  <bes, ees>4-> <aes c>-> c->(bes)
	}
	{
	  <ees g bes ees>4 ees'-> g8-> ees4-> c8->
	  ees4-> r r2
	}
      }
    }
    { \new Voice
      { \voiceTwo
	d2 g4. fis8
	d2 g4. a8
	<bes d>4. s8 <a c>4. s8
	s4 f8( ees d2)
	s1
	s1
	s2 <c g>4(<c fis>)
	<d g>4 <bes d> <aes ees>(<aes d>)
	d2. d4~
	d2 c4(ees)
	e4 <bes e> q <des ees>8 <c ees>
	s2 bes4(aes)
	<ces f>4 <aes c> q <c f>
	s1
	<ces des f>4 <ces des> q q ~
	q4 <g g'> <c g'>2
	<aes c>2 <aes bes>4 <d, c'>
	\repeat volta 2 {
	  <ees g>2-\arpeggio q-\arpeggio
	  q2-\arpeggio <aes c>-\arpeggio
	  <g bes>2-\arpeggio <aes c>-\arpeggio
	  <g bes ees>2-\arpeggio <c ees>-\arpeggio
	  <bes d>2-\arpeggio c
	  <bes ees>2-\arpeggio c4(d)
	  r4 bes8 g c aes4 f8
	  bes4(g4~ g) r
	  <ees g>2-\arpeggio q-\arpeggio
	  <ees, g>2-\arpeggio <aes c>-\arpeggio
	  <g bes ees>2-\arpeggio <c ees g>-\arpeggio
	  <ees bes'>2-\arpeggio <ees a>-\arpeggio
	  <d aes'>2-\arpeggio <aes c ees>-\arpeggio
	  <c ees aes>2-\arpeggio <aes c d>-\arpeggio
	  <g bes>4 q c8 aes4 c8
	  <g bes>4 s c ~ c
	  g'2(fis)
	  g4.( f8 ees4 d)
	  d2 ees
	  d4~<d g> <d fis>2
	  s1
	  s1
	  d4(bes c ees)
	  d4 <bes d> <aes c>(<aes d>)
	  <ees g>2-\arpeggio q-\arpeggio
	  q-\arpeggio <aes c>-\arpeggio
	  <bes ees g>2-\arpeggio <d aes'>-\arpeggio
	  <g c>2-\arpeggio <a c>-\arpeggio
	  <bes ees>2-\arpeggio <g c>-\arpeggio
	  <aes c>2-\arpeggio <aes bes>4-\arpeggio <f aes bes f'>-- -\arpeggio
	}
	\alternative {
	  {
	    <ees g>8 f ees4 ces2
	    s2 aes2
	  }
	  {
	    s4 bes' aes2
	    g4 r r2
	  }
	}
      }
    }
  >> \oneVoice
  
}

trebleFour = \relative c''' {
}

bassOne = \relative c' {
  \global
  bes4-> bes-> c8-> ees4-> c8->
  <<
    { \voiceOne
      r4 <g, ees'>8-. <bes f>-. <ees g>4-. q-.
      <g, ees'>8-. <bes f>-. <ees g>4-. q2->
      aes,2 ces
      bes4 b c2
      <f, c'>2 <bes, bes'>
      <ees bes'>2. r4
      aes'1-\fermata
    }
    { \new Voice { \voiceTwo bes1_v ~
		  bes1
		  s1
		  s1
		  s1
		  s1
		  f2(bes,)
		}
    }
  >> \oneVoice
  
}


bassTwo = \relative c {
  <ees, ees'>4-. r r <bes bes'>-.
  r2 <aes' aes'>4-. r
  <ees ees'>4-. r r <bes bes'>-.
  r2 q4-. r
  <ees ees'>4-. r r q-.
  r2 <aes, aes'>4 r
  <bes bes'>4 r r <c c'>
  <f c'>4 <bes, bes'> <ees ees'> ees-.
}

bassThree = \relative c {
  r4 <g d'> r <g ees'>
  r4 <g d'> r <g ees'>
  r4 <g d'> r <c g'>
  r4 <g g'> <a a'>(<d, d'>)
  <<
    { \voiceOne
      g4(d') g,(d')
      g,4(d') g,4(fis')
      g4(f e ees)
    }
    { \new Voice
      { \voiceTwo
	g,2 g
	g2 g
	g1
      }
    }
  >> \oneVoice
  <g d'>4 bes f->(bes)
  r4 ees,(ees'-.) r
  ees,4(ees'-.) r aes,
  r4 c,(c'-.) r
  c,4(c'-.) f,(f'-.)
  r4 d,(d'-.) r
  des,4(d'-.) ees,(ees'-.)
  <des, aes'>4 q q q~
  q4 <bes bes'> <ees bes'>2
  bes2 s
  \repeat volta 2 {
    <ees bes'>2-\arpeggio <c g' c>-\arpeggio
    <ees bes'>2-\arpeggio <aes ees'>-\arpeggio
    <ees bes'>2-\arpeggio <aes, aes'>-\arpeggio
    <ees' bes'>2-\arpeggio <c' g'>-\arpeggio
    <f aes>2-\arpeggio <bes, aes'>-\arpeggio
    <f' aes>2-\arpeggio <bes, aes'>-\arpeggio
    <ees, bes' g'>4-\arpeggio r <aes ees'>2
    <ees bes'>2(ees'4-.) r
    <ees, bes'>2-\arpeggio <c g' c>-\arpeggio
    <ees bes'>2-\arpeggio <aes ees'>-\arpeggio
    <ees bes'>2-\arpeggio <c g' c>-\arpeggio
    <g' g'>2 <ges ges'>
    <f f'>2 <bes, bes'>
    <f' f'>2 <bes, bes'>
    <ees ees'>4 r <aes ees'>2
    <ees bes'>4 r ees'(d)
    <<
      { \voiceOne
	<bes' d>2( <a c>
	<g bes>2 <fis a>)
	<e g>2( <fis a>
	<g bes>2 <a c>)
	d,( ees
	g2 fis)
	g4(d ees fis)
      }
      { \new Voice
	{ \voiceTwo
	  r4 g r d
	  r g, r d'
	  r g, r d'
	  r g, r d'
	  r g, r g
	  r4 g r g
	  r4 g r g
	}
      }
    >> \oneVoice
    g'4(g,) aes->(bes)
    <ees, bes'>2-\arpeggio <c g' c>-\arpeggio
    <ees bes'>-\arpeggio <aes ees'>-\arpeggio
    <ees bes'>2-\arpeggio <bes bes'>
    <c c'>2 <f, f'>
    <bes bes'>2 <c c'>
    <<
      { \voiceOne ees''4-- ees-- }
      { \new Voice { \voiceTwo f,2 } }
    >> \oneVoice <bes, f' d'>8-- -\arpeggio(c') q4-- -\arpeggio
  }
  \alternative {
    {
      <ees,, bes' g'>4-\arpeggio r <aes ees'>2->
      <g ees'>4-> <f ees'>-> <bes d>2->
    }
    {
      <ees, bes' g'>4-\arpeggio <g' bes>-^ <f c'>-^ <bes d>-^
      <ees, bes' ees>4-^ r r2
    }
  }
}

bassFour = \relative c {
}

firstVerse = \lyricmode {
  Nig- gers all work on de Mis- sis- sip- pi,
  Nig- gers all work while de white folks play,
  Pull- ing dose boats from de dawn to sun- set
  Git- tin' no rest till de judge- ment day.

  Don't l.ook up and' don't look down,
  you don't dast  make de white boss frown;
  Bend your knees an' bow yo' head,
  an' pull dat rope un- til yo're dead.

  let me go 'way from de Mis- sis- sip- pi,
  Let me go 'way from de white men boss,
  Show me dat stream called de riv- er Jor- dan,
  Dat's de ol' stream dat I long to cross.

  Ol' man riv- er, dat ol' man riv- er,
  He must know sump- in', but don't say noth- in',
  He just eeps roll- in'
  He keeps on roll- in' a- long.
  He don't plant 'ta- ters, he don't plant cot- ton,
  An' dem dat plants 'em is soon for- got- ten;
  But ol' man riv- er he jes keeps rol- lin' a- long.

  You an' me, we sweat and strain,
  Bo- dy all ach- in' an' racked wid pain.
  "\"Tote" dat "barge!\""
  "\"Lift" dat "bale,\""
  Git a lit- tle drunk an' you'll land in jail.
  Ah gits wea- ry an' sick of try- in',
  Ahm tired of liv- in'
  An' feared of dy- in',
  But Ol' man riv- er he jes keeps roll- in' a- long.
  
  long.
}

secondVerseA = \lyricmode {
}

secondVerseB = \lyricmode {
}

secondVerseC = \lyricmode {
}

secondVerseD = \lyricmode {
}

MfirstVerse = \lyricmode {
}

MsecondVerseB = \lyricmode {
}

MsecondVerseD = \lyricmode {
}

\book {
  \header {
    title = "Ol' Man River"
    composer = "Jerome Kern"
    poet = "Oscar Hamerstein IInd"
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody {
	  \melodyOne \melodyTwo \melodyThree \melodyFour
	}
	\addlyrics \firstVerse
	\addlyrics { \secondVerseA \secondVerseB \secondVerseC \secondVerseD}
	\context PianoStaff {
	  <<
	    \new Staff = treble {
	      \trebleOne \trebleTwo \trebleThree \trebleFour
	    }
	    \new Staff = bass {
	      \clef bass
	      \bassOne \bassTwo \bassThree \bassFour
	    }
	  >>
	}
      >>
    }
    \layout {}
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody {
	  \melodyOne \melodyTwo \unfoldRepeats \melodyThree \melodyTwo \melodyFour
	}
	\addlyrics { \firstVerse \secondVerseB \secondVerseD }
	\context PianoStaff {
	  <<
	    \new Staff = treble {
	      \trebleOne \trebleTwo \unfoldRepeats \trebleThree \trebleTwo \trebleFour
	    }
	    \new Staff = bass {
	      \clef bass
	      \bassOne \bassTwo \unfoldRepeats \bassThree \bassTwo \bassFour
	    }
	  >>
	}
      >>
    }
    \midi {}
  }
}
