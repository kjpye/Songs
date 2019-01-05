\version "2.19.82"
\include "predefined-ukulele-fretboards.ly"

global = {
  \time 2/2
  \key bes \major
  \tempo 4 = 150
}

melody = \relative c' {
  \global
  s1
  s1
  s1
  s2 \bar "||" f4 g \bar "||"
  bes4 bes bes bes~ % 5
  bes4 a g2
  a4 bes b c~
  c2. bes4
  a4 bes b c~
  c4 a2 f4 % 10
  g1~
  g2. f4
  g4 g g g~
  g4 f d2
  ees4 f fis g~ % 15
  g2. g4
  bes4 bes bes bes~
  bes4 a2 bes4c1~
  c4 \bar "||" d2 c4 \bar "||"
  bes4 a bes f % 20
  g2 f
  r4 des'2 c4
  bes1
  des4 c bes2
  des4 c bes d~ % 25
  d1~
  d2. d4
  d2 cis4 c~
  c4 d2 cis4
  c2 b4 bes~ % 30
  bes2. bes4
  c4. a8 bes4b
  c4 d2 bes4
  a4 f g f~
  f2 d'4 c % 35
  \repeat volta 2 {
    bes4 a bes f~
    f4 g2 a4
    bes4 a bes f~
    f2 g4 a
    bes4 a bes d~ % 40
    d4 c bes2
    g1~
    g2 g4 g
    g4 a bes c~
    c4 bes2 c4 % 45
    d4 cis d ees~
    ees4 d2 d4
    d4 cis d bes
    bes4 c2 bes4~
  }
  \alternative {
    {
      bes1 ~ % 50
      bes4 r d c
    }
    {
      bes1 ~
      bes2. r4
    }
  }
  \bar "|."
}

ukulele = \chordmode {
  c1:7
  ees4 f2:7 bes4
  s2 f:7
  bes2 \bar "||" f2:7
  bes1 % 5
  s1
  f1:7
  s1
  f1:7
  s1 % 10
  bes1:6
  s1
  g1:7
  s1
  c1:m % 15
  s1
  c1:7
  s1
  f2:7 ees4 aes:7
  f4:7 f2.:7 % 20
  bes1
  bes2:7 bes:7 %%%
  ges2:7 f:7
  bes1
  ges1:7
  s2. bes4 % 25
  s1
  s1
  d1:7
  s1
  g1:m % 30
  s1
  c1:7
  s1
  f2 c4:7 f
  s2 f:7 % 35
  \repeat volta 2 {
    bes1
    s1
    s1
    s2 ees4 f:7
    bes2. bes4:7 % 40
    s1
    ees1
    s1
    s2. ees4:m6
    s1 % 45
    bes4 bes bes:7 g:7 %%%%%%
    s1
    c1:7
    ees4 f2.:7
  }
  \alternative {
    {
      bes1 % 50
      s2 f:7
    }
    {
      bes2 f:7
      bes1
    }
  }
}

trebleOne = \relative c' {
  \global
  \voiceOne
  <ees bes' d>4 <e bes' cis> <e bes' d> <e g bes>
  <ees g bes>4 <ees  c>2 <d f bes>4~
  q4 <d f>8 q g4 f
  <d f bes>2 \bar "||" f4 g
  <d f bes>4 q q q~
  q <d f a> g2
  <c, ees a>4 <c g' bes> <d gis b> c'4~
  c2. a4
  <c, ees a>4 <c g' bes> <d gis b> <ees a c>~
  q4 <c ees a>2 <c ees f>4
  g'1~
  g2. f4 <b, f' g>4 q q q~
  4 <b d f> d2
  s1*22
  \repeat volta 2 {
    <f bes>4 <d f a> <d f bes> <bes d f>~
    q4 <bes d g>2 <d f a>4
    <d f bes>4 <d f a> <d f bes> f4~
    f2 g4 a
    <d, f bes>4 <d f a> <d f bes> <f aes d>~
    q4 <f aes c> bes2
    g1~
    g2. g4
    <bes, ees g>4 <c ees a> <ees g bes> <ees ges c>~
    q4 <ees ges bes>2 <ees ges c>4
    <f bes d> <e bes' cis> <f bes d> <f b ees>~
    q4 <f b d>2 q4
    <e bes' d> <e bes' c> <e bes' d> <e g bes><ees g bes> <ees a c>2 bes'4~
  }
  \alternative {
    {
      bes1~
      bes4 r d c
    }
    {
      \oneVoice <d, f bes>4 <d f>8 q g4 f
      <d f bes>2. r4
    }
  }
  \bar "|."
}

trebleTwo = \relative c' {
  \global
  \voiceTwo
  s1
  s1
  s2 <a ees'>
  s2 \bar "||" q
  s1 % 5
  s2 r4 <bes d>
  s1
  <ees a>4 q r <c ees>
  s1
  s1 % 10
  r4 <bes d> r q
  r4 q r q
  s1
  s2 r4 <f b>
  <c' ees>2 q4 q~ % 15
  q4 q r q
  s1
  s1
  <ees a>4 q <ees g> <ees ges>
  <ees f>4 \bar "||" s2. % 20
  s1
  r4 <cis e> r <bes d>
  s1
  <d f>4 q r q
  <fes bes>2 r4 <bes, ees> % 25
  <fes' a>2 <des fes>4 <d f>~
  q4 q r q
  r4 q r q
  r4 <fis a> r q~
  q4 q2 q4
  r4 <d g> r q~
  q4 q r q
  r4 e <e g> q
  s1
  s2. <a, ees'>4
  ~q4 q <ees' a>2
  \repeat volta 2 {
    s1
    s1
    s2. <bes d>4~
    q4 q <bes ees> <c ees>
    s1
    s2 r4 <d a'>
    <bes ees>4 q r q
    r4 q r q
    s1
    s1
    s1
    s1
    s1
    s2. <d f>4~
  }
  \alternative {
    {
    q4 q r q
    q4 r <ees a>2
    }
    {
      s2 <a, ees'>
      s1
    }
  }
  \bar "|."
}

bass = \relative c {
  \global
  c4 r c r
  f,4 r f r
  bes4 r f2
  bes4 bes, \bar "||" f'2
  bes4 r f r
  bes4 r bes r
  f4 r f r
  c'4 r f, r
  c'4 r f, r
  c'4 r f, r
  bes4 r a r
  g4 r f r
  d'4 r g, r
  d'4 r g, r
  c4 r c r
  g4 r c r
  g'4 r c, r
  g4 r c r
  f,4 f' g aes
  a4 \bar "||" r f2
  bes,4 r f r
  bes4 r bes r
  <ges ges'>4 r <f f'> r
  bes4 r f r<ges ges'>4 r q r
  q4 r q r
  bes4(f' g a
  g2 f)
  a,4 r d r
  a4 r d r
  g,4 r d' r
  g4 r d r
  g,4 r c r
  g4 r c r
  f,4 r c' r
  f,4 r f'2
  \repeat volta 2 {
    bes,4 r f r
    bes4 r f r
    bes4 r f r
    bes4 r f r
    bes4 r f r
    bes4 r f' r
    ees4 r d r
    c4 r bes r
    ees4 r bes r
    ees4 r ees r
    <bes bes'>4 r <aes aes'> r
    <g g'>4 r q r
    c4 r c r
    f4 r f, r
  }
  \alternative {
    {
    bes4(f' g a
    g2 f)
    }
    {
      bes,4 r f2
      bes4 f bes, r
    }
  }
}

verseOne = \lyricmode {
  Now there's all sorts of rem- e- dies that you can buy
  No mat- ter what ail- ment you've got,
  But I've got a spe- cial one you ought to try
  You'll find it's the best of the lot.

  It's me Aun- tie Mag- gie's home- made rem- e- dy
  Gua- ren- teed nev- er to fail
  Now that's the stuff that will do the trick
  It's sold at ev- 'ry chem- ist for 'one and a kick'
  Now if you get lum- ba- go, rheu- mat- ics or gout
  or a pain in your Rob- ert E. Lees,
  _ Don't kick up a shin- dy you'll nev- er get wind- y
  With Aun- tie Mag- gie's rem- e- dy

  If you
}

MverseOne = \lyricmode {
}

verseTwo = \lyricmode {
}

MverseTwo = \lyricmode {
}

verseThree = \lyricmode {
}

MverseThree = \lyricmode {
}

\book {
  \header {
    title = "Auntie Maggie's Remedy"
    composer = "George Formby, Eddie Latta"
  }

  \score {
    <<
      \new ChordNames { \ukulele }
      \new FretBoards { \set Staff.stringTunings = #ukulele-tuning \transpose c bes \ukulele }
      \context GrandStaff {
	<<
	  \new Staff = melody { \melody }
	  \addlyrics \verseOne
	  \addlyrics \verseTwo
	  \addlyrics \verseThree
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
