\version "2.18.2"
%\include "../include/merge-rests.ly"

#(set-global-staff-size 19)

\header {
  title    = "Deep River"
%  poet     = "Joseph M. Scriven"
%  composer = "Charles Crozat Converse"
}

\layout {
  ragged-last-bottom = ##f
}

global = {
  \key ees \major
  \time 4/4
}

sop = \relative c'' {
  \global
  \voiceOne
  \repeat volta 2 {
    g2(~g8 f ees4)
    f4 c2 ees4
    ees4 ees ees'4. c8
    bes4 g2(f4)
    g2(g8 f ees4)
    f4 c ees4. ees8
    ees8. ees16 g4 f8. ees16 c8. c16
    ees4 ees2.^\markup{\italic FINE}
  }
  c'8 c4 d8(c) bes g4
  bes4(g2)bes8. bes16
  c4(ees) d(c)
  bes4(g2) bes4
  c4(ees) d(c)
  bes4(g2) bes4
  c4(ees) d(c)
  bes4(g2) bes4
  g8. g16 g8. g16 g8(f) ees f
  g8(f4) ees8g8(f4) ees8
  g2~g8 f ees f
  g4(^\markup{\italic{D.C. al FINE}} bes2.)
  \bar"|."
}

alt = \relative c' {
  \global
  \voiceTwo
  \repeat volta 2 {
    ees2 ees
    c4 c2 c4
    bes4 bes g'4. g8
    d4 d2.
    bes4(des2.)
    c4 c c4. c8
    c8. c16 ees4 c8. c16 c8. c16
    bes4 bes2.
  }
  ees8 ees4 ees8 ees4 ees
  d2. d8. d16
  ees4(g) f(ees)
  d2. d4
  ees4(g) f(ees)
  d2. d4
  ees4(g) f(ees)
  d2. d4
  des8. des16 des8. des16 c4 c8 c
  c4. c8 c4. c8
  ees2~ees8 c c c
  d1
  \bar"|."
}

ten = \relative c' {
  \global
  \voiceOne
  \repeat volta 2 {
    bes2(bes8 aes g4)
    aes4 aes2 aes4
    g4 g c4. c8
    bes4 bes2(aes4)
    g2 bes8(aes g4)
    bes4 bes bes4. bes8
    g8. g16 c4 aes8. aes16 aes8. aes16
    g4 g2.
  }
  g8 g4 g8 g4 c
  bes2. bes8. bes16
  g2 g
  bes2. bes4
  g2 a
  bes2. bes4
  g2 g
  bes2. bes4
  bes8. bes16 bes8. bes16 aes4 g8 g
  aes4. g8 aes4. c8 c4(a4~a8) a a a
  bes4(aes2.)
  \bar"|."
}

bas = \relative c {
  \global
  \voiceTwo
  \repeat volta 2 {
    ees2 ees
    aes,4 aes2 aes'4
    ees4 ees ees4. ees8
    g4 g(bes,2)
    ees2 ees
    aes,4 aes aes4. aes8
    c8. c16 c4 f8. f16 bes,8. bes16
    ees4 ees2.
  }
  c8 c4 c8 c4 c
  g'2. g8. g16
  c,2 c
  g'2. g4
  c,2 f
  g2. g4
  c,2 c
  g'2. g4
  ees8. ees16 ees8. ees16 aes,4 c8 c
  aes4. c8 f4. aes8
  a4(f4~f8)f8 f f
  bes,1
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
  Deep Riv- er, my home is o- ver Jor- dan,
  Deep Riv- er, Lord, I want to cross o- ver in- to camp- ground,
  O don't you want to go to the gos- pel feast,
  That prom- ised land where all is peace,
  O don't you want to go to that prom- ised land
  that land where all is peace?
}

\book {
  \score {
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice = sop << \sop >>
	\new Voice = alt << \alt >>
      >>
      \new Lyrics \lyricsto sop \textOne
      \new Lyrics \lyricmode { Deep,2 deep _1*3 Deep,2 deep }
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
