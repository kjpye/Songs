\version "2.19.82"
\include "predefined-ukulele-fretboards.ly"

global = {
  \time 2/2
  \key g \major
  \tempo 4 = 150
}

melody = \relative c' {
  \global
  s1
  s1
  s1
  s2. \bar "||" d4
  \repeat volta 3 {
    b'4 b b b % 5
    b4 b c b
    b4 a a e
    a2. a8 a
    a4 a a a
    a4 a b a % 10
    a4 g fis g
    b2. d,4
    b'4 b b b
    b4 b c b
    b4 a a e % 15
    a2. r4
    a4. ais8 b4 ais
    a4 ais b ais
    a4 e b' bes
    a2. b8 a % 20
    g8 g e4 d e
    g4 e d2
    b'4 b a8 g a4
    g2. g4
    c4 c c c % 25
    c4 b b4. ais8
    b8 ais b ais b ais b ais
    b8 ais b4 a4. d,8
    b'4 b b8 b b4
    b4 b c4. b8 % 30
    b8 ais b ais b ais b ais
    b4 bes a b8 a
    g8 g e4 d e
    g4 e d2
    b'4 b a8 g a4 % 35
    g4 fis e2
    b'4 b a8 g a4
  }
  \alternative {
    { g2 r4 d }
    { g2. r4 }
  }
  \bar "|."
}

ukulele = \chordmode {
  s1
  s1
  s1
  s2. d4:7
  \repeat volta 3 {
  }
  \alternative {
    { s1 }
    { s1 }
  }
}

trebleOne = \relative c'' {
  \global
  \voiceOne
  g8 g e4 d e
  g4 e d2
  b'4 b a8 g a4
  g2. \bar "||" d4
  \repeat volta 3 {
    b'4 b b b % 5
    b2 c4 b
    b4 a a e
    a2. a8 a
    a4 a a a
    a4 a b a % 10
    a4 g fis g
    b2. d,4
    b'4 b b b
    b4 b c b
    b4 a a e % 15
    a2. r4
    a4. ais8 b4 ais
    a4 ais b ais
    a4 e b' bes
    a2. b8 a % 20
    g8 g e4 d e
    g4 e d2
    b'4 b a8 g a4
    g1
    c4 c c c % 25
    c4 b b4. ais8
    b8 ais b ais b ais b4
    b8 ais b4 a2
    b4 b b8 b b4
    b4 b c2 % 30
    b8 ais b ais b ais b ais
    b4 bes a b8 a
    g8 g e4 d e
    g4 e d2
    b'4 b a8 g a4 % 35
    g4 fis e2
    b'4 b a8 g a4
  }
  \alternative {
    { g2 r4 d }
    { <b d g>2. r4 }
  }
  \bar "|."
}

trebleTwo = \relative c' {
  \global
  \voiceTwo
  r4 <b d> r q
  r4 q r <gis b>
  r4 cis r <c fis>
  r4 <b d> r \bar "||" c
%  \repeat volta 3 {
%  }
%  \alternative {
%    { s1 }
%    { s1 }
%  }
%  \bar "|."
}

bass = \relative c {
  \global
  g4 r d r
  g4 r e r
  a4 r d, r
  g4 fis e \bar "||" d
  \repeat volta 3 {
    g4 r d r % 5
    f4 r e r
    a4 r e r
    a4 r e r
    d4 r a' r
    d,4 r d r % 10
    g4 r d r
    g4 r d r
    g4 r d r
    f4 r e r
    a4 r e r
    a4 r e a
    d,4 r a' r
    e4 r a r
    e4 r a r
    d,4 fis e d
    g4 r d r
    g4 r e r
    a4 r d, r
    
  }
  \alternative {
    { g4 fis e d }
    { g4 d g, r }
  }
}

verseOne = \lyricmode {
  Now I know I'm not hand- __ _ some __ _ no good looks or wealth
  But the girls I chase say my plain face will com- prom- ise their healkth
  Now I know fel- lers worse rhan me bow- leg- ged and boss- eyed
  Walk- ing out with love- ly wo- men cling- ing to their side

  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ Look at Em- press Jo- se- phine the most at- trac- tive wo- man that _ ev- er was seen
  _ Yet Na- po- le- on short and fat _ cap- ti- vates a love- ly look- ing dame like that.
}

verseTwo = \lyricmode {
  Last night I went out walk- ing my in- ten- tions were to click
  But the sights I saw while walk- ing out they near- ly made me sick
  I must ad- mit I saw some girls at- trac- tive lit- tle dears
  Arm in arm with ug- ly men with caul- i- flow- er ears

  Now if wo- men like them like men like those why don't wo- men like me
  _ What can the at- tract- ion be _ that's the thing that al- ways starts _ to wor- ry me
  Al- tho' I have- _ n't got a bean I've got a lot of things the girls have nev- er seen.

  Now if wo- men like them like men like those
  Why don't wo- men like me hey hey
  Why don't wo- men like me?

  _ me?
}

verseThree = \lyricmode {
  Now I went for my hol- i- days down to the gay sea- side
  I __ _ saw a lot of things there be- ing hid- den by the tide
  The way the wo- men jumped a- round the men ther by the sea
  Made me think that there is still a good chance left for me

  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Of all the shapes and siz- es there I've got a chance of click- ing yes I do _ de- clare
  _ I don't want _ to be a nark I saw a lot of things be- low the wat- er mark.
}

verseFour = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _

  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ Take Lord Nel- son with one limb
  _ La- dy Wil- liam Ham- il- ton she fell _ for him
  With one eye and _ one hand gone west
  _ she ran like the dev- il and she grabbed the rest.
}

Mverse = \lyricmode {
}

\book {
  \header {
    title = "Why Don't Women Like Me?"
    composer = "George Formby, Jack Cottrell, Bud Bennet"
  }

  \score {
    \context GrandStaff {
      <<
        \new ChordNames { \ukulele }
	\new FretBoards { \set Staff.stringTunings = #ukulele-tuning \ukulele }
	\new Staff = melody { \melody }
	\addlyrics \verseOne
	\addlyrics \verseTwo
	\addlyrics \verseThree
	\addlyrics \verseFour
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
    \layout {}
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody { \unfoldRepeats \melody }
	\addlyrics { \Mverse }
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
