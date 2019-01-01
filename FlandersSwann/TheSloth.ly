\version "2.19.80"

global = {
  \time 3/4
  \key bes \major
  \tempo 4 = 132
  \set Score.voltaSpannerDuration = #(ly:make-moment 3/4)
  \partial 4
}

melody = \relative c {
  \global
  s4
  s2.
  s2.
  s2.
  s2.
  s2. % 5
  s2.
  s2.
  s2 f4
  \repeat volta 3 {
    bes2 d4
    f2 bes,4 % 10
    ees2 g4
    bes2 bes4
    a2 f4
    ees2 c4
    bes2 r4 % 15
    r4 r f4
    bes2 d4
    f2 bes,4
    ees2 g4
    bes2 d4 % 20
    c2 bes4
    a2 g4
    f2.~ %
    f4 r f
    bes2 a4 % 25
    c2 bes4
    c,2 b4
    d2 c4
    c'2 bes4
    d2 c4 % 30
    a2. %
    r4 r f4
    bes,2 d4
    f2 bes,4
    ees2 g4 % 35
    bes2 bes4
  }
  \alternative {
    {
      a2 f4
      ees2 c4
      bes2. %
      r4 r f % 40
    }
    {
      a'2 f4
      ees2 c4
      bes2.
      r2.
      bes'8 bes bes a a a
      c8 c c c bes bes
      f8 f f f fis fis
      g8 g g g g f
      f8 f f f f d
      g8 g g g g f
      a8 a a a a a
      a8 a a a a a
      r4 c b
      d8 d d d c4
      g8 g g g gis4
      a8 a a a a4
      r4 f8 f f4
      r4 f8 f f4
      d8 ees f4 4 %%%%%?
      g8 f g f g a
      bes8 bes bes bes a a
      c4 bes r
      f8 f f f fis fis
      g4 f r
      r8 f c' bes c bes
      c8 bes c bes c d
      c2.
      r4 r d
      c2 bes4
      ges4 d' d
      c2 bes4
      f4 r fis
      g2 ees4
      a2 f4
      bes2.
      r4 r f,
    }
    {
      \time 4/4
      f'4 f'8( g f4) f,
      ees4 f'8(ees f4) c,
      bes1 r
    }
  }
  \bar "|."
}

trebleOne = \relative c''' {
  \global
  \oneVoice
  d4(
  c2 bes4
  ges2) d'4(
  c2 bes4
  f2) <fis, fis'>4(
  <g g'>2) ees'4( % 5
  <a, a'>2) f'4(
  <bes, d bes'>2.)
  <d, f>4 <c ees> <a c>
  \repeat volta 3 {
    r4 f4(<bes d>)
    r4 f4(<bes f'>)% 10
    r4 bes(<ees g>)
    r4 bes(<ees g>)
    r4 bes(<ees f>)
    r4 f,(<a ees'>)
    r4 f(f) %%%%% 15
    <f ees' f>2.
    r4 f(<bes d>)
    r4 f4(<bes f'>)
    r4 <bes ees g>2
    r4 <ees g>2 % 20
    \voiceOne r4 <e g>2 \oneVoice
    r4 g,4(<bes e>)
    r4 <a c f>2
    r4 <a c f> q
    r4 <f bes d>(<d' f>) % 25
    r4 <bes d f>(<d fis bes>)
    r4 <g, c>(<ees' g>)
    r4 <bes c>(<ees g>)
    r4 <c e>(<e g>)
    r4 <bes c>(<e g>) % 30
    r4 <a, c>(q) %%%%%
    \voiceOne f'2 <a, c ees f>4 \oneVoice
    r4 f(<bes d f>)
    r4 q(<f' bes>)
    r4 <bes, ees g> r % 35
    r4 <ees g>2
  }
  \alternative {
    {
      r4 <bes d f> r
      r4 <f a c ees>2
      r4 f(f) %%%%%%%%
      r4 <c' ees> <a c> % 40
    }
    {
      r4 <bes d f> r
      r4 <f a c ees>2
      r4 <f bes> <bes d>
      <ees f>2.
      bes''2 a4 % 45
      c2 bes4
      f2 fis4
      g4 r d
      \voiceOne f2 d4
      g2 f4 % 50
      a2.~
      a2 g4 \oneVoice
      c2 b4
      d2 c4
      g2 gis4 % 55
      a2 g4
      f2 <f a>4
      <g bes>2 <a c>4
      <bes d>2 s4
      r4 r f4 % 60
      bes2 a4
      c2 bes4
      <bes, d f>2 <bes d fis>4->
      <bes d g>4-> r ges'->
      f2 bes4 % 65
      c2 d4
      c2.~
      c2 <d, d'>4
      <c c'>2 <bes bes'>4
      <ges ges'>4 ges' <d d'>
      <c c'>2 <bes bes'>4
      <f f'>2 <fis ais e' fis>4
      <bes g'>2 <g ees'>4
      <c, a'>2 <a f'>4
      <bes d bes'>2.
      <a c ees>2.
    }
    {
      \time 4/4
      <bes d f>2 r
      <f a ees'>2 r
      \voiceOne r4 <bes' d>8 <f c'> <d bes'> <bes' d> <d bes'> <f c'>
      <bes d>1 \oneVoice
    }
  }
  \bar "|."
}

trebleTwo = \relative c' {
  \global
  \voiceTwo
  s4
  s2.
  s2.
  s2.
  s2.
  s2. % 5
  s2.
  s2.
  s2.
  \repeat volta 3 {
    s2.
    s2. % 10
    s2.
    s2.
    s2.
    s2.
    s2. % 15
    s2.
    s2.
    s2.
    s2.
    s2. % 20
    c2(bes4)
    s2.
    s2.
    s2.
    s2. % 25
    s2.
    s2.
    s2.
    s2.
    s2. % 30
    s2.
    <f a>4 <g bes> s4
    s2.
    s2.
    s2. % 35
    s2.
  }
  \alternative {
    {
      s2.
      s2.
      s2.
      s2. % 40
    }
    {
      s2.
      s2.
      s2.
      s2.
      s2. % 45
      s2.
      s2.
      s2.
      r4 <f' bes>2
      r4 <g bes>2 % 50
      r4 <a ees'> q
      q2 r4
      s2.
      s2.
      s2. % 55
      s2.
      s2.
      s2.
      s2.
      s2. % 60
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
      s2.
    }
    {
      \time 4/4
      s1
      s1
      <f, bes d>1~
      q1
    }
  }
  \bar "|."
}

bassOne = \relative c, {
  \global
  r4
  <ees ees'>4(<bes'' ees g>2)
  <ees,, bes' ges'>4-\arpeggio(<bes'' ees ges>2)
  <d,, bes' f'>4-\arpeggio(<bes'' d f>2)
  <f,, d' bes'>4-\arpeggio(<bes'' d f>) <cis, ais'>
  <c bes'>4(<g' ees'>2) % 5
  <f, c a'>4-\arpeggio(<a' ees' d>2)
  <bes,, bes'>4 d' g(
  f2.)
  \repeat volta 3 {
    <bes,, bes'>2.
    <d d'>2. % 10
    <ees ees'>2.
    <c c'>2.
    <f f'>2.
    <f, f'>2.
    <bes bes'>2. % 15
    <f f'>4-.->
    <g g'>-.->
    <a a'>-.->
    <bes bes'>2.
    <d d'>2. % 20
    <ees ees'>2(g'4
    bes2.)
    <g, e'>2.
    <c, c'>2.
    <f f'>4.(g'8 g g) %%%%%%%%% 25
    ees4(d) c
    <bes, bes'>2.
    <d d'>2.
    <ees ees'>2.
    g'2. % 30
    bes2.
    <g, e'>2.
    <f f'>2.
    <ees ees'>4-.-> <d d'>-.-> <c c'>-.->
    <bes bes'>2. % 35
    <d d'>2.
    <ees ees'>2 g'4(
    bes2) g4(
  }
  \alternative {
    {
      f2) f4(
      f,2) f4(
      d'2.) %%%%%%% % 40
      \clef treble f'' \clef bass
    }
    {
      f,,2 f4
      f,2 f4
      <bes, bes'>2.
      f''4(g a)
      <bes, f'>4(<f' bes d>2) % 45
      <f, bes d>4(<f' bes d>2)
      <bes, f'>4(<f' bes d>2)
      <f, bes d>4(<f' bes d>2)
      <bes, f'>4(<bes' d>2)
      <f, d'>4(<bes' d>2) % 50
      <c, f a>4(a' c
      f2) r4
      <c,, c'>4(<g'' c ees>2)
      ees4(<g c>2)
      c,4(<c' ees g>2) % 55
      ees,4(<g c>2)
      f4(<a ees' f>2)
      <f, f'>4(<a' ees' d>2)
      <bes,, bes'>4(f'' <bes d>4)
      <f a ees' f>2. % 60
      <bes,, bes'>4(<f'' bes d>2)
      f,4(<f' bes d>2)
      <bes, f'>2 <f' bes d>4->
      <f bes d>4-> r r
      <bes, f'>4(<f' bes d>2) % 65
      <bes, f'>4(<bes' d f>2)
      << ees,2.~
         \new Voice {s4 g2~}
	 \new Voice {s4 s c~}
      >> % 67
      <ees, g c ees>2 r4
      <ees, ees'>4(<g' c ees>2)
      <ees, bes' ges'>4-\arpeggio(<bes'' ees ges>2) % 70
      <d,, bes' f'>4-\arpeggio(<bes'' d f>2)
      <d, bes'>4(d') <cis, fis ais>
      <c g'>4(<bes' ees>2)
      <f, c'>4(<a' ees' f>2)
      <bes, f'>4(<f' d'>2)
      f4(ees) c
    }
    {
      \time 4/4
      f2 r
      f,2 r
      <bes, bes'>1 ~
      q1
    }
  }
  \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  A Brad- y- pus or Sloth am I,
  I live a life of ease,
  Con- tent- ed not to do or die
  But id- le as I please;
  I have three toes on eith- er foor
  Or half- a- doz on both;
  With leaves and fruits and shoots to eat
  How sweet to be a sloth.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  The world is such a cheer- ful place
  When viewed from up- side down;
  It makes a rise of ev- 'ry fall,
  A smile of ev- 'rh frown;
  I watch the fleet- ing flut- ter by
  Of but- ter- fly or moth
  And think of all the things I'd ry
  If _ _ _ _ _ _ I were not a Sloth.
}

verseThree = \lyricmode {
  \set stanza = "3."
  I could climb the ve- y high- est Him- a- lay- as,
  Be a- mong the great- est ev- er ten- nis play- ers,
  Al- ways win at chess or mar- ry a prin- cess or
  Stud- y hard and be an em- in- ent pro- fes- sor,
  I could be a mill- ion- aire, play the clar- i- net,
  Trav- el ev- 'ry- where,
  Learn to cook, catch a crook,
  Win a war, then write a book a- bout it,
  I could paint a Mon- a Li- sa,
  I could be an- oth- er Cae- sar,
  Com- pose an or- a- tor- i- o that was sub- lime:
  The door's not shut on my gen- ius but
  I just don't have the time!
}

verseFour = \lyricmode {
  \set stanza = "4."
  For days and days a- mong the trees
  I sleep and dream and doze,
  Just gent- ly sway- ing in the breeze
  Sus- pend- ed by my toes;
  While eag- er beav- ers o- ver- head
  Rush through the un- der- growth,
  I watch the clouds be- neath my feet--
  How
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  sweet _ to be _ a sloth.
}

MverseOne = \lyricmode {
}

MverseTwo = \lyricmode {
}

MverseThree = \lyricmode {
}

MverseFour = \lyricmode {
}

\book {
  \header {
    title = "The Sloth"
    composer = "Michael Flanders, Donald Swann"
  }

  \score {
    <<
      \context GrandStaff {
        <<
	  \new Staff = melody { \melody }
	  \addlyrics { \verseOne The }
	  \addlyrics { \verseTwo \verseThree For }
	  \addlyrics { \verseFour }
	  \context PianoStaff
	    <<
	      \new Staff = treble <<
	      \new Voice { \trebleOne }
              \new Voice { \trebleTwo }
	    >>
	    \new Staff = bass <<
	      \new Voice { \clef bass \bassOne }
	    >>
	  >>
        >>
      }
    >>
    \layout {}
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody { \unfoldRepeats \melody }
	\addlyrics { \MverseOne }
	\addlyrics { \MverseTwo }
	\addlyrics { \MverseThree }
	\context PianoStaff
	  <<
	    \new Staff = treble <<
	      \new Voice { \unfoldRepeats \trebleOne }
	      \new Voice { \unfoldRepeats \trebleTwo }
            >>
	    \new Staff = bass <<
	      \new Voice { \clef bass \unfoldRepeats \bassOne }
	    >>
	  >>
      >>
    }
    \midi {}
  }
}
