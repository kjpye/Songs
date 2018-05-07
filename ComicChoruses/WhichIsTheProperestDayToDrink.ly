\version "2.18.2"

global = {
  \time 6/8
  \key g \major
  \tempo 4. = 120
}

soprano = \relative c'' {
  \global
  \repeat volta 2 {
    g8 fis g a a b % 1
    c4 b8 a4.
    b8 a b c4 b8
    b4. a
  }
  \repeat volta 2 {
    r2.*4 % 5
  }
  \repeat volta 2 {
    g8. fis16 g8 a4 b8 % 9
    c4 d8 e4 d8 % 10
    c8 b a d4 c8
    b4. a4 r8
  }
  \repeat volta 2 {
    g8. fis16 g8 a4 b8
    c4 d8 e4 d8
    c8 b a d4 c8 % 15
    b4. a4 r8
    r4 r8 g'4.
    r4 r8 g4.
    g8. a16 g8 fis4 a8
    g4. g4 r8 % 20
    r2.
    r4 r8 g4 fis8
    g4 d8 r4 r8
    r2.
    g4 d8 e4 d8 % 25
    g4 d8 e4 d8
    a'8 d, g g4 fis8
    g4. g4 r8
    d4 d,8 r4 r8
    d'4 d,8 r4 r8 % 30
    d'8 d, d r4 r8
    d'4. d4 r8
    g4 d8 e4 d8
    g4 d8 e4 d8
    a'8 d, g g4 fis8 % 35
    g4. g
  }
}

alto = \relative c'' {
  \global
  \repeat volta 2 {
    b8 a g g fis g
    a4 g8 fis4.
    g8 fis g a4 g8
    g4. fis
  }
  \repeat volta 2 {
    r2.*4
  }
  \repeat volta 2 {
    b8. a16 g8 fis4 g8
    a4 b8 c4 b8
    a8 g fis b4 a8
    g4. fis4 r8
  }
  \repeat volta 2 {
    b8. a16 g8 fis4 g8
    a4 b8 c4 b8
    a8 g fis b4 a8
    g4. f4 r8
    g4. r4 r8
    d4. r4 r8
    d'8. d16 d8 d4 d8
    d4. d4 r8
    r4 r8 g4 fis8
    g4 fis8 r4 r8
    g8. fis16 g8 e4 a8
    a4. fis
    d4 b8 c4 b8
    d4 b8 c4 b8
    d8 d d d4 d8
    d4. d4 r8
    b8. a16 g8 g fis g
    a4 g8 fis4.
    g8 a b c4 b8
    b4. a4 r8
    b4 d8 g4 g,8
    b4 d8 g4 g,8
    d'8 d d d4 d8
    d4. d
  }
}
  
tenor = \relative c'' {
  \global
  \repeat volta 2 {
    r2.*4
  }
  \repeat volta 2 {
    b8. c16 d8 e c b
    a8(b)c d4.
    b8. a16 b8 c4 a8
    b4. b
  }
  \repeat volta 2 {
    r4 r8 d4.
    r2.
    fis8. g16 a8 g4 fis8
    g4. d4 r8
  }
  \repeat volta 2 {
    d4. r4 r8
    d4. g
    fis8. g16 a8 g4 fis8
    g4. d4 r8
    b8. c16 d8 e c b
    a8(b) c d4 r8
    b8. a16 b8 c4 a8
    b4. b4 r8
    d4 b8 e4 c8
    d4 b8 e4 c8
    d8. c16 b8 g'4 fis8
    g4. d
    b4 d8 g4 g,8
    b4 d8 g4 g,8
    c8 c b b4 a8
    b4. b4 r8
    g8. a16 b8 b a b
    c4 b8 a4.
    b8 a g a4 g8
    g4. fis4 r8
    4 b8 c4 b8
    d4 b8 c4 b8
    a8 fis g d4 d8
    g4. g
  }
}

bass = \relative c'' {
  \global
  \repeat volta 2 {
    r2.*4
  }
  \repeat volta 2 {
    g8. a16 b8 c a g
    fis8(g) a b4.
    g8. fis16 g8 a4 fis8
    g4. g
  }
  \repeat volta 2 {
    r2.
    r4 r8 g4.
    d'8. d16 d8 d4 d8
    d4. d,4 r8
  }
  \repeat volta 2 {
    r4 r8 d4.
    r4 r8 g4.
    d'8. d16 d8 d4 d8
    d4. d,4 r8
    g8. a16 b8 c a g
    fis8(g) a b4 r8
    g8. fis16 g8 a4 fis8
    g4. g4 r8
    b4 g8 c4 a8
    b4 g8 c4 a8
    b8. a16 g8 b4 cis8
    d4. d,
    g4 g8 g4 g8
    g4 g8 g4 g8
    fis8 fis g d4 d8
    g4. g4 r8
    r4 r8 d'4 d,8
    r4 r8 d'4 d,8
    r4 r8 d'4 d,8
    g4. d4 r8
    d'4 g,8 g4 g8
    g4 g8 g4 g8
    c8 c b b4 a8
    b4. b
  }
}

which = \lyricmode { Which is the pro- per- est day to drink? }
each  = \lyricmode { Each is the pro- per- est day, I think; }
why   = \lyricmode { Why should I name but one day? }
tell  = \lyricmode { Tell me but yours, I'll men- tion my day, }
letus = \lyricmode { Let us but fix on some day. }
mon   = \lyricmode { Mon- day. }
monq  = \lyricmode { Mon- day? }
tues  = \lyricmode { Tues- day, }
wed   = \lyricmode { Wednes- day, }
thur  = \lyricmode { Thurs- day, }
fri   = \lyricmode { Fri- day, }
sat   = \lyricmode { Sat- ur- day, }
sun   = \lyricmode { Sun- day, }
days  = \lyricmode { \tues \wed \thur \fri \sat \sun \mon }

sopranoWordsOne = \lyricmode {
  \which Sat- ur- day, Sun- day, Mon- day?
  \tell \letus
  \tell \letus
  Why, why, \letus
  Bra- vo! Bra- vo!
  \days
  \tues \thur \sat \mon
  \days
}

sopranoWordsTwo = \lyricmode {
}

altoWordsOne = \lyricmode {
  \which Sat- ur- day, Sun- day, Mon- day?
  \tell \letus
  \tell \letus
  Why, why, \letus
  Bra- vo! Bra- vo! \why
  \days
  \which \sat \sun \monq
  \days
}

altoWordsTwo = \lyricmode {
}

tenorWordsOne = \lyricmode {
  \each \why
  Why? \why
  Why, why, why, \why
  \each \why
  \days
  \days
  \which \sat \sun \monq
  \days
}

tenorWordsTwo = \lyricmode {
}

bassWordsOne = \lyricmode {
  \each \why
  Why? \why
  Why, why, why, \why
  \each \why
  \days
  \days
  \which \sat \sun \monq
  \days
}

bassWordsTwo = \lyricmode {
}

\book {
  \header {
    title    = "Which is the Properest Day to Drink"
    composer = "Thomas Arne"
  }
  \score {
    \context GrandStaff <<
      \context ChoirStaff <<
	\new Staff = soprano { \soprano	}
	\addlyrics \sopranoWordsOne
	\new Staff = alto { \alto }
	\addlyrics \altoWordsOne
	\new Staff = tenor { \tenor }
	\addlyrics \tenorWordsOne
	\new Staff = bass { \bass }
	\addlyrics \bassWordsOne
      >>
      \context PianoStaff <<
	    \new Staff <<
	      \set Staff.printPartCombineTexts = ##f
	      \partcombine
              << \soprano >>	      
	      << \alto >>
	    >>
	    \new Staff <<
              \clef "bass"
	      \set Staff.printPartCombineTexts = ##f
	      \partcombine
              << \transpose g g,, \tenor >>	      
	      << \transpose g g,, \bass >>
	    >>
      >>
    >>
    \layout {}
    \midi {}
  }
}

\book {
  \header {
    title    = "Which is the Properest Day to Drink"
    composer = "Thomas Arne"
  }
  \score {
    \context GrandStaff <<
      \context ChoirStaff <<
	\new Staff = soprano { \soprano	}
	\addlyrics \sopranoWordsOne
	\new Staff = alto { \alto }
	\addlyrics \altoWordsOne
	\new Staff = tenor { \tenor }
	\addlyrics \tenorWordsOne
	\new Staff = bass { \bass }
	\addlyrics \bassWordsOne
      >>
    >>
    \layout {}
  }
}


