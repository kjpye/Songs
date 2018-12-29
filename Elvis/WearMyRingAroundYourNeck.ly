\version "2.19.82"
\include "predefined-guitar-fretboards.ly"

global = {
  \time 2/2
  \key c \major
  \tempo 4 = 120
  \partial 4*3
}

melody = \relative c'' {
  \global
  s2.
  s1
  s1
  s1
  s4 \bar "||" \break g8 g g4 a
  \repeat volta 2 {
    \repeat volta 2 {
      g1 |
      r4 g8 g c,4 d |
      e4 r r2 |
      r4 g g a |
      g1 |
      r4 bes bes bes |
      g4 r r2 |
      r2 g4 a |
      g1 |
      r4 c c d |
      c1 ~ |
      c4 c b a |
      g2 g4 g |
      g4 g, a b |
    }
    \alternative {
      { c4 r r2 |
	r4 g'8 g g4 g }
      { c,4 r r2}
    }
    r2 r4 c' |
    c4 c c c |
    ees4(d) c c
    c4 c e, a
    g2. c4
    c4 c c c
    ees4 d c c
    c4 c e, a
    g2. c4
    c4 c c c
    ees4(d) c c
    c4 c e, a
    g2. g4
    a4 a a a
    a4 b c cis
    d1~
    d4 ees8 ees ees4 ees
    c1
    r4 c e, a
    g1
    r4 g g a
    g1
    r4 bes bes bes
    g1
    r2 g4 a
    g1
    r4 c c c
    c1~
    c4 c b a
    g2 g4 g
    g4 g, a b
  }
  \alternative {
    {c1|r4 g'8 g g4 a}
    {c1~|c2. r4}
  }
  \bar "|."
}

guitar = \chordmode {
  \global
  s2. |
  s1 |
  s1 |
  s1 |
  s1 |
  \repeat volta 2 {
    \repeat volta 2 {
      c1 |
      s2. g4:7 |
      c1 |
      s1 |
      s1 |
      s1 |
      g1:7 |
      s1 |
      c1 |
      c1:7 |
      f1:7 |
      s1 |
      c1 |
      g1:7 |
    }
    \alternative {
      {c2. f4 | c1}
      {c2 f:7}
    }
    c1:7 |
    f1:7 |
    s1 |
    c1 |
    c1:7 |
    f1:7 |
    s1 |
    c1 |
    c1:7 |
    f1:7 |
    s1 |
    c1 |
    s1 |
    d1:7 |
    s1 |
    g2:7 d:7 % ???
    g1:7 |
    c1 |
    s1 |
    s1 |
    s1 |
    s1 |
    s1 |
    g1:7 |
    s1 |
    c1 |
    c1:7 |
    f1 |
    s1 |
    c1 |
    g1:7 |
  }
  \alternative {
    {c2 f:7 | g1:7}
    {c2 f:7 | c1}
  }
}

trebleOne = \relative c'' {
  \global
  \voiceOne
  c4 b a |
  g2 g4 g |
  <b, f' g>4 g a b |
  <e, g a c>2 <c' ees a>4 q |
  <b f' g>4 \bar "||" \break g'8 g g4 g |
  \repeat volta 2 {
    \repeat volta 2 {
      <c, e g>4 <e g c>2(<c e a>4 % 5
      <c e g>4) g'8 g c,4 d |
      <g, c e>4 <e' g c>2(<c e a>4 |
      <c e g>4) q q <c e a> |
      <c e g>4 <e g c>2(<c e a>4 |
      <c e g>4) <c e bes'> q q % 10
      <b f' g>4 <f' b d>2(<d f b>4 |
      g2) g4 a |
      <c, e g>4 <e g c>2(<c e a>4 |
      <c e g>4) <e bes' c>4 q <e bes' d> |
      <f a c>4 <a c f>2(<f a d>4 % 15
      <f a c>4) q <c f b> <c f a> |
      g'2 g4 g |
      <b, f' g>4 g g b |
    }
    \alternative {
      {<e, g c>4 <e' g c>2(<c f a>4 |
	       <c e g c>4) g'8 g g4 a}
      {<e, g c>2 <c' ees a>4(q}
    }
    <c e g c>2.) <e bes' c>4 |
    <ees a c>4 q q q
    <g a ees'>4 <f a d> <ees a c> q
    <e g c>4 q <g, c e> <c e a> % 25
    <c e g>2. <e bes' c>4
    <ees a c>4 q q q
    <g a ees'>4 <f a d> <ees a c> q
    <e g c>4 q <g, c e> <c e a>
    <c e g>2. <e bes' c>4 % 30
    <ees a c>4 q q q
    <g a ees'>4 <f a d> <ees a c> q
    <e g c>4 q <g, c e> <c e a>
    <c e g>2. g'4
    <c, fis a>4 q q q % 35
    q4 <d f b> <e f c'> <e bes' cis>
    d'1~
    d4 ees8 ees ees4 ees
    c4 <e, g c>2(<c e a>4
    <c e g>4) <e g c> <c e> <c e a>
    <c e g>4 <e g c>2(<c g a>4
    <c e g>4) q q <c e a>
    <c e g> <e g c>2( <c e a>4
    <c e g>4) <c e bes'> q q
    <b f' g>4 <f' b d>2(<d f b>4
    g2) g4 a
    <c, e g>4 <e g c>2(<c e a>4
    <c e g>4) <e bes' c> q <e bes' d>
    <f a c>4 <a c f>2(<f a d>4
    <f a c>4) q <c f b> <c f a>
    g'2 g4 g
    <b, f' g>4 g a b
  }
  \alternative {
    {<e, g c>2 <c' ees a>4(q | <b f'g>4) g'8 g g4 a}
    {<e, g c>2 <c' ees a>4(q | <c e g c>2) s4 r}
  }
  \bar "|."
}

trebleTwo = \relative c' {
  \global
  \voiceTwo
  r4 r2 |
  r4 <a c> r <c e> |
  s1 |
  s1 |
  s4 \bar "||" \break s4 s2 |
  \repeat volta 2 {
    \repeat volta 2 {
      s1
      <c e>4 q r <f, b>
      s1
      s1
      s1
      s1
      s1
      r4 <b f'> r q
      s1
      s1
      s1
      s1
      r4 <c e> r q
      s1
    }
    \alternative {
      {s1|s1}
      {s1}
    }
    s1*15
    <f b>2 <fis c'>4 q
    <f b>4 r r2
    s1*7
    r4 <b, f'> r q
    s1*4
    r4 <c e> r q
    s1
  }
  \alternative {
    {s1|s1}
    {s1|s2 <c' e g c>4^> s}
  }
  \bar "|."
}

bass = \relative c, {
  \global
  r4 r2 |
  <c c'>4 r q r |
  g'4 r r2 |
  c,4 g' f2 |
  g4 \bar "||" \break
  r r2
  \repeat volta 2 {
    \repeat volta 2 {
      <c, c'>4 r g' r
      <c, c'>4 r g' r
      <c, c'>4 r g' r
      <c, c'>4 r g' r
      <c, c'>4 r g' r
      <c, c'>4 r g' r
      <d  d'>4 r g  r
      <d  d'>4 r g  r
      <c, c'>4 r g' r
      <c, c'>4 r g' q
      f4 r q r
      f4 r f r
      q4 r q r
      f4 r r2
    }
    \alternative {
      {c4 r g' f | q4 r r2}
      {c4 g' f2}
    }
    c'4 bes a g
    f4 r q r
    f4 r f r
    q4 r g r
    c8 c bes4 a g
    f4 r q r
    f4 r f r
    q4 r g r
    c8 c bes4 a g
    f4 r q r
    f4 r f r
    q4 r g r
    c,4 a' g e
    d4 r a' r
    d4 r d, r
    g4 g aes aes
    g4 r r2
    q4 r g r
    q4 r g r
    q4 r g r
    q4 r g r
    q4 r g r
    q4 r g r
    q4 r g r
    q4 r g r
    q4 r g r
    q4 r g q
    f4 r q r
    f4 r f r
    q4 r q r
    g4 r r2
  }
  \alternative {
    {c,4 g' f2|g4 r r2}
    {c,4 g' f2|c'4 g <c, c'>_> r}
  }
  \bar "|."
}

verseOne = \lyricmode {
  Won't you wear my ring up a- round your neck
  To tell the world I'm yours, by heck,
  Let them see your love for me,
  And let them see by the ring a- round your neck
  Won't you wear my
}

MverseOne = \lyricmode {
}

verseTwo = \lyricmode {
  _ _ _ _ ring up a- round your neck
  To tell the world I'm yours, by heck,
  Let them know I love you so,
  And let them know by the ring a- round your
  _ _ _ _ _ neck.
  They say that go- ing stead- y is not the pro- per thing.
  They say that we're too young to know the mean- ing of a ring.
  I on- ly know I love you and that you love me too.
  So, dar- ling, please do what I ask of you.
  Won't you wear my ring a- round my neck
  To tell the world I'm yours, by heck.
  Let them see your love for me,
  And let them see by the ring a- round your neck.
  Won't you wear my

  neck.
}

MverseTwo = \lyricmode {
}

verseThree = \lyricmode {
}

MverseThree = \lyricmode {
}

verseFour = \lyricmode {
}

MverseFour = \lyricmode {
}

\book {
  \header {
    title = "Wear My Ring Around Your Neck"
    composer = "Bert Carroll & Russell Moody"
  }

  \score {
    <<
      \new ChordNames { \guitar }
      \new FretBoards { \guitar }
      \context GrandStaff {
	<<
	  \new Staff = melody { % \RemoveEmptyStaves
				\override Staff.VerticalAxisGroup.remove-first = ##t
				\melody }
	  \addlyrics \verseOne
	  \addlyrics \verseTwo
				%	\addlyrics \verseThree
				%	\addlyrics \verseFour
	  \context PianoStaff
	  <<
	    \new Staff = treble <<
	      \new Voice { \trebleOne }
	      \new Voice { \trebleTwo }
	    >>
	    \new Staff = bass <<
	      \new Voice { \clef bass \bass }
	    >>
	  >>
	>>
    }
    >>
    \layout {
      \context {
%	\Staff \RemoveEmptyStaves
				% To use the setting globally, uncomment the following line:
				% \override VerticalAxisGroup.remove-first = ##t
      }
    }
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
