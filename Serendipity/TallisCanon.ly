\version "2.19.80"

SopranoMusic = \relative c'' {
  \key g \major
  \time 4/2
  \tempo 2=80
  \repeat volta 2 {
    \partial 2 g2
    g2 fis g g
    a2 a b \bar "||" g
    c2 c b b
    a2 a g \bar "||" d'
    c2 a b b
    a2 a g \bar "||" d
    e2 fis g b
    a2 a g
  }
  \bar "|."
}

AltoMusic = \relative c' {
  \key g \major
  \time 4/2
  \repeat volta 2 {
    \partial 2 d2
    d2 d b d
    e2 d d g
    g2 fis g d
    e2 d d g
    e2 fis g g
    e2 d d d
    c2 c b d
    c2 a b
  }
  \bar "|."
}

TenorMusic = \relative c' {
  \key g \major
  \time 4/2
  \repeat volta 2 {
    \partial 2 b2
    a2 a g g
    g2 fis g g
    a2 a b g
    c2 c b b
    a2 a g d'
    c2 a b b
    a2 a g d
    e2 fis g
  }
  \bar "|."
}

BassMusic = \relative c' {
  \key g \major
  \time 4/2
  \repeat volta 2 {
    \partial 2 g2
    d2 d e b
    c2 d g, b
    a2 a g g'
    g2 fis g b,
    c2 d g, g'
    a2 fis g g,
    c2 a e' b
    c2 d g,
  }
  \bar "|."
}

verseOne = \lyrics {
  Glor- y to Thee, my God, this day,
  For all the mer- cies on my way;
  Glor- y to Thee for strength re- newed,
  For e- very thought by Thee im- bued.
}

verseTwo = \lyrics {
  Sup- ply my need, be Thou my store,
  My treas- ure and my bound- less lore;
  Teach me to use Thy gifts, Thy grace,
  And ev- er see Thy hol- y Face.
}

\header {
  title = "Tallis Canon"
  composer = "T. Tallis"
}

\book { % all parts
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
	  \new Voice = "sopranos" { \voiceOne \SopranoMusic }
	  \new Voice = "altos" { \voiceTwo \AltoMusic }
	  \context Lyrics = "firstverse" \lyricsto "sopranos" \verseOne
	  \context Lyrics = "secondverse" \lyricsto "sopranos" \verseTwo
	>>
	\new Staff = "tenori" <<
	  \new Voice = "tenors" { \clef bass \voiceOne \TenorMusic }
	  \new Voice = "basses" { \clef bass \voiceTwo \BassMusic }
	>>
      >>

    >>
    \layout{}
    \midi{}
  }
}

\book { % soprano
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
	  \new Voice = "sopranos" { \voiceOne \unfoldRepeats \SopranoMusic }
	>>
      >>

    >>
    \midi{}
  }
}

\book { % alto
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
	  \new Voice = "altos" { \voiceTwo \unfoldRepeats \AltoMusic }
	>>
      >>

    >>
    \midi{}
  }
}

\book { % tenor
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
	  \new Voice = "tenors" { \clef bass \voiceOne \unfoldRepeats \TenorMusic }
	>>
      >>

    >>
    \midi{}
  }
}

\book { % bass
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
	  \new Voice = "basses" { \clef bass \voiceTwo \unfoldRepeats \BassMusic }
	>>
      >>

    >>
    \midi{}
  }
}
