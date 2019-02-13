\version "2.19.80"

\header {
  title = "Drink To Me Only With Thine Eyes"
  composer = "Traditional"
  poet     = "Ben Jonson"
  % Remove default LilyPond tagline
  tagline = ##f
}
#(set-global-staff-size 24)

%\paper {
%  #(set-paper-size "a4")
%  line-width = 180\mm
%  left-margin = 20\mm
%  bottom-margin = 10\mm
%  top-margin = 10\mm
%}

global = {
  \key f \major
  \time 3/4
}

partOne = \relative c'' {
  \global
  r2.
  r2.
  r2.
  r2.
  a4 a a % 5
  bes2 bes4
  c4(bes) a
  g4(a) bes
  c4(f,) bes
  a2 g4 % 10
  f2.~
  f2 r4
  r2.
  r2.
  r2. % 15
  r2.
  r2.
  r2.
  r2.
  r4 r c % 20
  c4(a) c
  f2 e4
  ees4(c) ees
  d2 c4
  d2 c4
  c4(d) f
  c2.~
  c2 r4
  a'4 a c
  d2 bes4
  c2 c4
  f4(e) \breathe d4
  c2 d4
  c4(a) g
  a2.~
  a2 r4
  r2.
  r2. \key des \major
  r2.
  r2.
  r2.
  r4 r aes
  bes4 aes bes
  f4 ges2
  aes2.~
  aes2 r4 \key e \major
  r2.
  r2.
  r4 r b
  b2 b4
  b2 b4
  r4 b b
  b2. \key f \major
  r4 r c4
  c4(a) c
  e2 c4
  c4(f) e
  e4(d) c
  d2 c4
  c4(bes) a
  a2.(
  g2) r4
  a4 \( a a
	bes2 bes4
	c4(cis) d
	f2 bes,4
  a2 bes4
	a4 \) r \breathe g
  f2.~
  f2.~
  f2.~
  f4 r r
  \bar "|."
}

partTwo = \relative c'' {
  \global
  r2.
  r2.
  r2.
  r2.
  r2. % 5
  r2.
  r2.
  r2.
  r2.
  r2. % 10
  r2.
  r2.
  a4 a a
  bes2 bes4
  c4(bes) a % 15
  g4(a) bes
  c4(f,) bes
  a2 g4
  f2.~
  f2 a4 % 20
  a4(f) a
  c2 c4 c4(a) c
  c2 c4
  c4(bes) c
  c4(bes) a
  a2.(
  g2) r4
  a4 a a
  bes2 bes4
  c4(bes)a
  g4(a) bes
  c4(f,) bes
  a2 g4
  f2.~f2 r4
  r2.
  r2. \bar "||" \key des \major
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2. \bar "||" \key e \major
  gis4 gis gis
  a2 a4
  b4(a) gis
  fis4(gis) a
  b4(e,) a
  gis2 fis4
  e2. \bar "||" \key f \major
  r4 r c'
  a4(f) a
  c2 c4
  c4(a) c
  c2 c4
  d2 c4
  c4(bes) a
  a2.(
  g2) r4
  f4 f f
  g2 g4
  a4(bes) a
  g4(a) bes
  c4(f,) f
  f4 r e
  d4(c2) ~
  c2. ~
  c2. ~
  c4 r r \bar "|."
}

partThree = \relative c' {
  \global
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  r2.
  c4 d f
  f4(e) g
  c,4(f) a
  bes4(a) g
  c,2 c4
  d4(f) e
  d2.(
  c2) a'4
  a4(f) a
  a2 a4
  g4(a) g
  fis4(a) a
  a4(g) a
  a4(bes) f
  d4(f) d
  f4(e) r
  g4 f a
  a4(g) bes
  a4(bes) c
  g2 g4
  a2 c,4
  d4(f)e
  d4(c2)~
  c2 r4
  r2.
  r2. \bar "||" \key des \major
  f4 f f
  des2 ges4
  aes4(ges) f
  ees4(f) ges
  aes4(des,) ges
  f2 ees4
  des2.~
  des2 r4 \bar "||" \key e \major
  r2.
  r2.
  r4 r b
  b4(gis') fis
  b,2 b4
  r4 b b
  gis'2. \bar "||" \key f \major
  r4 r c,
  f4(c) f
  a2 a4
  a4(f) a
  a2 a4
  bes2 a4
  a4(g) f
  f4(d f
  e2) r4
  c4 f e
  ees4(d) des
  c4(g') f
  d2 des4
  c2 d4
  c4 r c
  d4(c) c
  <a a'>2. ~
  q2.~
  q4 r r \bar "|."
}

pianoRH = \relative c''' {
  d8(c c, d' c c,)
  d'8(c c, d' c c,)
  d'8(c c, d' c c,)
  d'8(c c, d' c c,)
  r8 d'(c c,)c(c')
}

pianoLHone = \relative c' {
  \clef bass
  \voiceOne
  r4. e~
  e2.
}

pianoLHtwo = \relative c, {
  \clef bass
  \voiceTwo
  <e a c>2.~
  q2.
}

wordsOne = \lyricmode {
  Drink to me on- ly with thine eyes and I will pledge with mine

  The thirst that from the soul doth rise doth ask a drink di- vine
  But might I of love's nec- tar sip I would not change for thine.
  I sent thee a ro- sy wreath.
  A hope there could not with- ered be.
  But thou there- on didst on- ly breathe and sent'st it back to me
  Since when it grows and smells I swear not of it- self but thee.
}

wordsTwo = \lyricmode {
  Or leave a kiss with- in the cup and I'll not ask for wine
  The thirst that from the soul doth rise doth ask a drink di- vine
  But might I of love's nec- tar sip I would not change for thine.
  As giv- ing it a hope that there it could not with- ered be.
  But thou there- on didst on- ly breathe and sent'st it back to me
  Since when it grows and smells I swear not of it- self but thee.
}

wordsThree = \lyricmode {
  Or leave a kiss with- in the cup and I'll not ask for wine
  The thirst that from the soul doth rise doth ask a drink, a drink di- vine
  But might I of love's nec- tar sip I would not change for thine.
  I sent thee late a ro- sy wreath not so much hon- ouring thee.
  A hope it could not with- ered be.
  But thou there- on didst on- ly breathe and sent'st it back to me
  Since when it grows and smells I swear not of it- self but thee, but thee.
}

\score {
  <<
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "partone" \partOne
      \new Lyrics \lyricsto "partone" \wordsOne
    >>
    \new Staff <<
      \new Voice = "parttwo" \partTwo
      \new Lyrics \lyricsto "parttwo" \wordsTwo
    >>
    \new Staff <<
      \new Voice = "partthree" \partThree
      \new Lyrics \lyricsto "partthree" \wordsThree
    >>
  >>
  \new PianoStaff <<
    \new Staff <<
      \new Voice \pianoRH
    >>
    \new Staff <<
      \new Voice \pianoLHone
      \new Voice \pianoLHtwo
    >>
  >>
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
