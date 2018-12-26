\version "2.19.82"
\include "predefined-ukulele-fretboards.ly"

global = {
  \time 2/2
  \key g \major
  \tempo 4 = 120
}

melody = \relative c'' {
  \global
  \repeat volta 2 {
    r1
    r2 r4 g
  }
  \repeat volta 2 {
    b4 b b g8 a
    bes4 bes bes g8 a
    b4 b8 g a4 g % 5
    b2. d,4
    c'4 c8 c a4 a8 ais
    b8 ais b g~g4 g
    a4 a b e,
    a2~a4 d, % 10
    c'4 c a a8 b
    c4 c a a8 ais
    b4 g8 g a a g4
    b2. b8 b
    a4 a b4. e,8 % 15
    a4 a b e,8 e
    b'4 b8 b cis b a4
  }
  \alternative {
    { d2 r4 g, }
    { d'4 d d d }
  }
  \repeat volta 5 {
    b1~
    b4 d d d % 20
    b1~
    b4 d d d
    b4 g b g
    bes4 g bes a
    g1~ % 25
    g4 g a b
    c2 e,~
    e4 g a g
    b2 d~
    d2 b % 30
    a4 b cis d
    e4 cis b a
    d1~
    d4 d d d
    b1~ % 35
    b4 d d b
    d4 b d b
    d4 b2 b4
    b4 g b g
    b4 g b g % 40
    bes4 g bes g
    bes4 g a g
    b1~b4 b b b
    e1~
    e4
    b e b
    b4 g b g
    bes4 g bes g
  }
  \alternative {
    { 
      g1~
      g4 d' d d
    }
    { 
      g,1~
      g2. r4
    }
  }
  \bar "|."
}

ukulele = \chordmode {
  \global
  \repeat volta 2 {
    s1
    s1
  }
  \repeat volta 2 {
    g1
    dis:7
s1*13
  }
  \alternative {
    { s1 }
    { s1 }
  }
  \repeat volta 5 {
    s1*30
  }
  \alternative {
    { s1 | s1 }
    { s1 | s1 }
  }
  \bar "|."
}

trebleOne = \relative c'' {
  \global
  \repeat volta 2 {
    r4 <a d> <b e>8 <a d> <g b>4
    \voiceOne a8(b a g) a4->(g) \oneVoice
  }
  \repeat volta 2 {
    <d g b>4 q <e g b> <e g>8 a
    <des, g bes>4 q q <des g>8 a'
    <d, g b>4 q8 g <c, ees a>4 <c e g> % 5
    <e g b> <ees g b> <d g b> d
    <d fis c'>4 q <c fis a> q8 ais'
    <d, g b>8 ais' b <b, d g> ~ q4 g'
    <cis, g' a>4 q <cis g' b> <cis e>
    \voiceOne a'2~a4 d, \oneVoice % 10
    <c a' c>4 q <c g' a> q8 b'
    <c, f c'>4 <c g' c> <c f a> a'8 ais
    \voiceOne b4(g) a(g)
    <b, b'>2. b'4 \oneVoice
    <cis, g' a>4 q <d g b>4. e8 % 15
    <cis g' a>4 q <d g b>4. e8
    <d g b>4 q \voiceOne cis'8 b a4 \oneVoice
  }
  \alternative {
    { <d, a' c d>2 r4 g }
    { <d a' c d>4 <d d'> q q }
  }
  \repeat volta 5 {
    <e g b>4 <d g b>8 q <e g b>4 <d g b>8 q
    <e g b>4 <fis ais d> q q
    <e g b>4 <d g b>8 q <e g b>4 <d g b>8 q
    <e g b>4 <fis ais d>4 q q
    <e g b>4 <d g>8 q <e g b>4 <d g>8 q
    <e g bes>4 <d g>8 q <cis bes'> g' <c, fis a>4
    <b e g>4 <b' e>8 <a d> <b e>4 <a d>4
    <e g b>4 g( <fis a> <f b>)
    <e c'>2 <c e>~
    q4 <c ees g> <c ees a> <c ees g>
    <d g b>2 <g b d>~
    q2 \voiceOne <g b> \voiceOne
    <cis, g' a>4 <d g b> <e g cis> <g b d>
    <g cis e>4 <g cis> <g b> <g a>
    \voiceOne d'8 e d4 b8 d b4
    a4 \oneVoice <fis ais d> q q
    <e g b> <d g b>8 q <e g b>4 <d g b>8 q
    <e g b>4 \voiceOne <b' d> q <g b> \oneVoice
    <d d'>4 <e g b>8 q <d d'>4 <e g b>
    <d g b d>4 <d g b>2 q4
    <b b'>2 q
    q2 q
    <cis g' bes>4 <cis g'> <cis g' b> <cis g'>
    <cis g' bes>4 <cis g'> <cis g' a> <cis g'>
    b'1~
    b4 <dis, a' b> q q
    <e gis e'>4 <d gis d'>8 q <d gis b>4 <d e gis>8 q
    \voiceOne e4 b' e-> b
    b4-. g-. b-. g-.
    bes4 g \oneVoice <cis, g' b>-^ <c f a>-.
  }
  \alternative {
    { 
      \voiceOne <b d g>4 e'8-. e-. <b d>4-. <fis b>8-. q-.
      <e a>4-. \oneVoice <fis ais d>4-^ q-^ q-^
    }
    { 
      <b, d g>4 <b' e>8-- <a d>-- <b e>4-- <a d>--
      <e g b>2 <g b d g>4-^-\arpeggio r
    }
  }
  \bar "|."
}

trebleTwo = \relative c' {
  \global
  \repeat volta 2 {
    s1
    \voiceTwo e4 e ees2
  }
  \repeat volta 2 {
    s1*7
    c4 <c e>8 q <c d>4 s
    s1
    s1
    b2 c
    r4 <e g> <d g> r
    s1
    s1
    s2 <cis g'>
  }
  \alternative {
    { s1 }
    { s1 }
  }
  \repeat volta 5 {
    s1*11
    s2 e4(d)
    s1*2
    <fis a>2 fis4 fis
    e4 s4 s2
    s1
    s4 g8 e g4 e
    s1*2
    r4 <d g> r <dis g>
    r4 <e g> r <dis g>
    s1
    s1
    <e g>4 <d g>8 q <e g>4 <d g>
    <e g>4 s s2
    s1
    d2 <d e>2
    cis8(e cis4) cis8(e cis4)
    cis8(e cis4) s2
  }
  \alternative {
    {
      s1 | s1
    }
    {
      s1 | s1      
    }
  }
  \bar "|."
}

bass = \relative c {
  \global
  \repeat volta 2 {
    g4-.(d' g d)
    c'-. c-. c2-.
  }
  \repeat volta 2 {
    <g, d'>2 <g e'>
    <ees ees'>2 <ees ees'>
    <g d'>2 <g ees'> % 5
    <g e'>4 <g ees> <g d'> r
    <a a'>2d
    g,4 d' g r
    <e, e'>4 r a r
    d2~d4 r % 10
    <a e'>2 ees'
    d4 ees d r
    <g, d'>2 <g d'>
    g1
    <e e'>2 a
    q2 a
    <e' b'>2 <a, e'>
  }
  \alternative {
    { <d a'>2 r }
    { <d a'>2 r }
  }
  \repeat volta 5 {
    <g, e'>4-. <g d'>-. <g e'>-. <g d'>-.
    <g e'>4-. <d' c'>-. q-. q-.
    <g, e'>4-. <g d'>-. <g e'>-. <g d'>-.
    <g e'>4-. <d' c'>-. q-. q-.
    <g, e'>4-. <g d'>-. <g e'>-. <g d'>-.
    <g e'>4-. <g d'>-. ees'-. d-.
    <g, d'>4-. q-. q-. q-.
    q4-. b'( g a)
    <<
      {\voiceOne r4 g8-. g-. a4-. g8-. g-.
       a4-. s4 s2
       r4 d,(e g8 a) |
       b8(e d4) \oneVoice <e, b'>2--}
      \new Voice { \voiceTwo
		   c1~
		   c4 <c g'> <c a'> <c g'>
		   g1~ |
		   g2}
    >>
    a4(e' a b
    cis4) e8(dis d4 cis)
    d2 d4 d
    <d, c'>4 d'-. d-. d-.
    <g, e'>4 <g d'> <g e'> <g d'>
    <d e'>4 <g d'> q q
    q <g e'> <g d'> <g e'>
    <f d'>4 <g e'> q <g d'>
    q2 <g dis'>
    <g e'>2 <g dis'>
    ees4 ees'8 ees ees,4 ees'8 ees
    ees,4 ees8 ees ees,4 ees'8 ees
    <g, e'>4 <g d'> <g e'> <g d'>
    <g e'> <fis fis'> q <f f'>
    <e e'>4 b' e gis
    b2 <e, b' gis'>2-\arpeggio
    <a e'>4-. q-. q-. q-.
    <e e'>4-. q-. <ees ees'>-^ <d d'>-.
  }
  \alternative {
    { 
      <g, d'>4 \change Staff = "treble" \voiceTwo g''8-. g-. fis4-. d8-. d-.
      c4-. \change Staff = "bass" \oneVoice <d, c'>4-^ q-^ q-^
    }
    { 
      <g, d'> e''8-- d-- e4-- d--
      << {\voiceOne b2} \new Voice { \voiceTwo e,8(d e4)} >> \oneVoice <g, d' b'>-^-\arpeggio r
    }
  }
  \bar "|."
}

verseOne = \lyricmode {
  Now Mis- ter Wu was a laun- dry man in a shop with an old green door,
  He iron's all _ day your _ li- nen a- way, he real- ly makes me sore;
  He's lost his heart to a Chin- ese girl,
  and his laun- dry's _ all _ gone wrong,
  All _ day he'll flirt, and scorch your shirt, _
  that's why I'm _ sing- ing this song.
  Now
  _
  
  Oh Mis- ter Wu, what shall I do?
  I've got these kind of Lime- house Chin- ese Laun- dry Blues.
  This fun- ny feel- ing, keeps round me steal- ing,
  Why don't you throw your sweet- heart ov- er, do.

  My vest's so short that it won't fit my lit- tle bro- ther
  And my new Sun- day shirt has got a per- for- a- ted rud- der
  Mis- ter Wu, I'm tel- ling you,
  I've got these kind of Lime- house Chin- ese Laun- dry Blues.

  Oh, Mis- ter

  Blues.
}

MverseOne = \lyricmode {
}

verseTwo = \lyricmode {
  Now ev- 'ry night when the sun goes down and the stars have be- gun to peep,
  You'll find there's a kind of a mys- ter- y round the old green door will creep,
  There's Mis- ter Wu and his Chin- ese girl,
  with a pipe and a bot- tle of wine,
  Whilst the laun- dry's get- ting soak- ming wet,
  hang- ing out on the back- yard _ _ _ line.

  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Now Mis- ter Wu, he's got a naugh- ty eye that flick- ers,
  You ought to see it wob- ble when he's iron- ing lad- ies' blous- es.
}

MverseTwo = \lyricmode {
}

verseThree = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _
  A boy went there and took some lan- dry for his Mam- mie,
  Mis- ter Wu _ burned holes in Mam- mies' nice new Sun- day cam- mie.
}

verseFour = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _
  Now Mis- ter Wu, he owned a busi- ness rath- er trick- y,
  He starched my shirt and col- lars _ and nev- er touched my wasit- coat.
}

verseFive = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _
  Now Mis- ter Wu at wash- ing shirts is bver- y hand- y,
  But he'd go broke if all the men wore shirts like mis- ter Gand- hi.
}

MverseThree = \lyricmode {
}

\book {
  \header {
    title = "Chinese Laundry Blues"
    composer = "Jack Cottrell"
  }

  \score {
    <<
      \new ChordNames { \ukulele }
      \new FretBoards { \set Staff.stringTunings = #ukulele-tuning \transpose d c \ukulele }
      \context GrandStaff {
	<<
	  \new Staff = melody { \melody }
	  \addlyrics \verseOne
	  \addlyrics \verseTwo
	  \addlyrics \verseThree
	  \addlyrics \verseFour
	  \addlyrics \verseFive
	  \context PianoStaff
	  <<
	    \new Staff = "treble" <<
	      \new Voice { \trebleOne }
              \new Voice { \trebleTwo }
	    >>
	    \new Staff = "bass" <<
	      \new Voice { \clef bass \bass }
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
	\addlyrics { \MverseOne \MverseTwo \MverseThree }
	\context PianoStaff
	  <<
	    \new Staff = treble <<
	      \new Voice { \unfoldRepeats \trebleOne }
	      \new Voice { \unfoldRepeats \trebleTwo }
            >>
	    \new Staff = bass <<
	      \new Voice { \clef bass \unfoldRepeats \bass }
	    >>
	  >>
      >>
    }
    \midi {}
  }
}
