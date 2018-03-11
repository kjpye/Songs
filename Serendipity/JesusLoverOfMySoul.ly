\version "2.18.2"

\header {
  title    = "Jesus, Lover of my Soul"
  poet     = "Charles Wesley"
  composer = "Simeon Butler Marsh"
}

\layout {
  % ragged-last-bottom = ##f
}

global = {
  \key ees \major
  \time 4/4
}

sop = \relative c'' {
  \global
  \voiceOne
  \repeat volta 3 {
    g4 bes c bes
    bes4. aes8 g2
    ees'4 d c bes
    g4 ees f2
    g4 bes c bes
    bes4. aes8 g2
    g4 a g f
    g4. f8 ees2
    ees4 aes g aes
    des4 c bes2
    c4 c d ees
    aes,4 g f2
    g4 bes c bes
    bes4. aes8 g2
    g4 aes g f
    g4. f8 ees2
  }
  ees1
  ees1
  \bar"|."
}

alt = \relative c' {
  \global
  \voiceTwo
  \repeat volta 3 {
    ees4 ees c ees
    ees4 d ees2
    ees4 ees ees d
    ees4 ees d2
    ees4 ees ees8(aes) g4
    f4 ees d2
    ees4 ees ees ees
    ees4 d ees2
    c4 ees ees ees
    ees4 ees g2
    ees4 ees aes g
    f4 ees d2
    ees4 ees ees8(aes) g4
    f4 ees d2
    ees4 ees ees ees
    ees4 d ees2
  }
  c1
  bes1
  \bar"|."
}

ten = \relative c' {
  \global
  \voiceOne
  \repeat volta 3 {
    bes4 bes ees bes
    c4 bes bes2
    bes4 bes aes aes
    bes4 a bes2
    bes4 g aes8(c) ees4
    d4 c b2
    c4 aes bes c
    bes4 aes g2
    aes4 c bes c
    bes4 c ees2
    c4 bes bes bes
    bes4 bes bes2
    bes4 g aes8(c) ees4
    d4 c b2
    c4 aes bes c
    bes4 aes g2
  }
  aes1
  g1
  \bar"|."
}

bas = \relative c {
  \global
  \voiceTwo
  \repeat volta 3 {
    ees4 g aes g
    f4 bes, ees2
    g4 g aes f
    ees4 c bes2
    ees4 ees ees ees f4 f g2
    c,4c bes a
    bes4 bes ees2
    ees4 ees ees aes
    g4 aes ees2
    aes4 g f ees
    d4 ees bes2
    ees4 ees ees ees
    f4 f g2
    c,4 c bes aes
    bes4 bes ees2
  }
  aes,1
  ees'1
  \bar"|."
}

trebleaccOne = \relative c' {
  \global
  \bar"|."
}

trebleaccTwo = \relative c' {
  \global
  \bar"|."
}

bassaccOne = \relative c' {
  \global
  \bar"|."
}

bassaccTwo = \relative c {
  \global
  \bar"|."
}

textOne = \lyricmode {
  \set stanza = "1."
  Je- sus, lov- er of my soul,
  Let me to Thy bos- om fly,
  While the near- er wat- ers roll,
  While the temp- est still is high:
  Hide me, O my Sav- iour, hide,
  Till the storm of life is past;
  Safe in to the hav- en guide;
  O re- ceive my soul at last
}

textTwo = \lyricmode {
  \set stanza = "2."
  Oth-er ref- uge have I none;
  Hangs my help- less soul on Thee;
  Leave, O leave me n ot a- lone,
  Still sup- port and com- fort me:
  All my trust on Thee is stayed,
  All my help from Thee I bring;
  Cov- er my def- ense- less head
  With the shad- ow of Thy wing.
}

textThree = \lyricmode {
  \set stanza = "3."
  Plent- eous grace with Thee is found,
  Grace to cov- er all my sin;
  Let the heal- ing streams a- bound;
  Make and keep me pure with- in:
  Thou of life the fount- ain art,
  Free- ly let me take of Thee;
  Spring Thou up with- in my heart,
  Rise to all e- tern- i- ty.
  A- men
}

\book {
  \score {
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice = sop << \sop >>
	\new Voice = alt << \alt >>
      >>
      \new Lyrics \lyricsto sop \textOne
      \new Lyrics \lyricsto sop \textTwo
      \new Lyrics \lyricsto sop \textThree
      \new Staff = men <<
	\new Voice = ten << \clef "bass" \ten >>
	\new Voice = bas << \clef "bass" \bas >>
      >>
    >>
    
    \layout {
      \context {
	\Staff
	\override DynamicText.direction = #UP
	\override DynamicText.staff-padding = #0
	\override DynamicLineSpanner.direction = #UP
      }
    }
  }
}
