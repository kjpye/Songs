\version "2.19.80"
%\include "../include/merge-rests.ly"

\header {
  title = "Jerusalem"
  subtitle = "And did those feet in ancient time"
  composer = "C. Hubert H. Parry"
  poet     = "William Blake"
}

\layout {
  ragged-last-bottom = ##f
%  system-count = 10
%  page-count = 2
}

global = {
  \key d \major
  \time 3/4
}

tempoMark = {
  \tempo 4=90
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
}

dynamics = {
  s4.^\f s8^\mf s4^\markup{\italic cresc.}
  s4. s4. \<
  s8^\ff \! s4. \> s4 \!
  s2.^\mf
  s2.
  s2.
  s2.
  s4. s8^\p s4\<
  s4. \> s4.
  s4 \! s2
}

melody = \relative c' {
  \global
  r2.
  r2.
  r2.
  r4 r8 d8^\mf fis a
  b4.\< d8\! b a16\>(g) % 5
  a2\< b8\! a16 g
  a8 fis e4 d
  b4. d8^\p\< fis a
  b4. d8\! cis b16\>(a)
  b4.\! b8 cis fis, % 10
  a8 gis fis4 e
  a4. e8^\mf\< e fis
  g4.\! b8 a8. e16
  g4. fis8^\markup{\italic{poco cresc}} g a
  b4. d8 c a % 15
  b4. g8^\f\< b d\!
  e8. d16 cis4 cis8. b16
  a4. a8^\markup{\italic{poco rit.}} d b
  a8. b16 fis4 e
  d2 r4 % 20
  r2.
  r2.
  r4 d4^\mf fis8\< a b4. d8->\! b-> a16(g)
  a2 b8-> a16 g
  a8 fis e4 d % 25
  b4. d8\< fis a
  b4 d->\! cis8-> b16(a)
  b4. b8 cis fis,
  a8. gis16 fis4 e
  a4. e8^\p e fis % 30
  g4. b8 a8. e16
  g4. e8 g\< a
  b4 d->\! c8 a
  b4. g8^\markup{\italic Allargando} b\< d
  e4.^\ff\! d8 cis8. b16 % 35
  a4. a8^\markup{\italic rit.}\< d b
  a8->\! b fis4-- e--
  d2.~
  d4 r r
  r2. % 40
  \bar "|."
}

trebleOne = \relative c'' {
  \global
  <a d fis a>4. <fis a>8(g8. fis16)
  <b, b'>4. b'8(~<b cis> <ais e'>)
  <e e'>8(<d d'>) cis'(b) a8.(g16)
  <a, d fis a>4. <fis a d>8 <a d fis> <a e' a>
}

trebleTwo = \relative c' {
  \global
  s4. d8~d dis
  <dis fis> e~e d e g
  <fis b>4 <d fis> <b d>8 e
  s2.
}

bassOne = \relative c {
  \global
  <fis a d fis>4. <d fis>8(~<d g>) c'
  r8 <b, e b'> r <b dis b'> r <g' ais e>
  r8 fis(cis' b) a8. g16
  <d, a' fis'>4 r d'8 c
}

bassTwo = \relative c {
  \global
  r8 <fis,, fis'> <b b'>4. <a a'>8
  <g g'>4 <fis fis'> <e e'>
  <b' b'>2 <g' d'>8 e'
  s4 <d,, d'>2 ~
  d'2
  s4
}

words = \lyricmode {
  And did those feet in an- cient time
  Walk up- on Eng- land's moun- tains green?
  And was the Ho- ly Lamb of God
  On Eng- land's plea- sant pas- tures seen?
  And did the Coun- ten- ance Di- vine
  Shine forth up- on our cloud- ed hills?
  And was Je- ru- sa- lem build- ed here
  A- mong these dark Sa- tan- ic mills?

  Bring me my bow of burn- ing gold!
  Bring me my ar- rows of de- sire!
  Bring me my spear! O clouds un- fold!
  Bring me my Cha- ri- ot of Fire.
  I will not cease from men- tal fight;
  Nor shall my sword sleep in my hand
  Till we have built Je- ru- sa- lem
  In Eng- land's green and plea- sant land.
}

\book {
  \score {
  <<
    \new Staff <<
      \new Voice = vocal << \melody >>
      \new Lyrics \lyricsto vocal \words
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice { \voiceOne \trebleOne }
        \new Voice { \voiceTwo \trebleTwo }
      >>
      \new Dynamics { \dynamics }
      \new Staff <<
        \new Voice { \clef bass \voiceOne \bassOne }
        \new Voice {            \voiceTwo \bassTwo }
      >>
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
    \midi {}
  }
}
