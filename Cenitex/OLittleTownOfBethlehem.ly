\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

timekey = { \time 4/2 \key f \major }

descantmusic = \relative c' {
  c2 % 1
  f f4(g) a2 bes % 2
  c f e d % 3
  d c g c
  c1. \break c,2
  f f4(g) a2 bes
  c f e d
  d c g c
  c1. \break f,4(a)
  c2 e f g
  c,(f) e2. d4
  c2 c d a4(bes)
  c1 \break c,
  f2 f4(g) a2 bes
  c d ees f
  d a4(bes) c2 c
  c1.
}
sopranomusic = \relative c' {
  \partial 2 c2 % 1
  f f f g % 2
  a4(g) a(bes) c2 a %3
  bes a4(f) g2 g % 4
  f1. c2 % 5
  f f f g % 6
  a4(g) a(bes) c2 a % 7
  bes a4(f) g2 g % 8
  f1. f4(a) % 9
  c2. d4 c(bes) a(g) % 10
  f(g a bes) c2 c, % 11
  f a g f % 12
  c1 c % 13
  f2 f f g % 14
  a4(g) a(bes) c2 a % 15
  bes a4(f) g2 g % 16
  f1. \bar "|."% 17
}
altomusic = \relative c' {
  c2 % 1
  c d c d4(e) % 2
  f2 f e d % 3
  d f f e
  f1. c2
  c d c d4(e)
  f2 f e c
  c f f e
  f1. f2
  e2. d4 e2 c
  c(f) e c
  c c bes a4(bes)
  c1 c
  c2 d c d4(e)
  f2 f e d
  d f f e
  f1.
}
tenormusic = \relative c' {
  g2 % 1
  a bes c bes % 2
  c f, g f
  bes c d c4(bes)
  a1. g2
  a bes c bes
  c f, e f
  bes c d c4(bes)
  a1. a2
  a2. f4 c'2 c4(bes)
  a2(f) g e
  f f d4(e) f2
  e1 f2(g)
  a bes c bes
  c f, g f
  bes c4(a) c2 c4(bes)
  a1.
}
bassmusic = \relative c {
  e2 % 1
  f bes a g % 2
  f d c d % 3
  g, a bes c % 4
  f1. e2 % 5
  f bes a g %6
  f d c d
  g, a bes c
  f1. d2
  a2. bes4 c2 d4(e)
  f2(d) c c4(bes)
  a2 f bes d
  c1 d2 e
  f bes a g
  f e c d
  g, a4(d) c2 c
  f1.
}

verseone = \lyricmode {
  \set stanza = "1. "
  O lit -- tle town of Beth -- le -- hem,
  How still we see thee lie!
  A -- bove thy deep and dream -- less sleep
  The si -- lent stars go by,
  Yet in they dark streets shin -- eth
  The ev -- er -- last -- ing light;
  The hopes and fears of all the years
  Are met in thee to -- night.
}

versetwo = \lyricmode {
  \set stanza = "2. "
  O morn -- ing stars, to -- geth -- _ er
  Pro -- claim the ho -- ly birth,
  And prais -- es sing to God the King,
  And peace to men on earth;
  For Christ is born of Ma -- ry;
  And gath -- ered all a -- bove,
  While mor -- tals sleep, the an -- gels keep
  Their watch of wond -- 'ring love.
}

versethree = \lyricmode {
  \set stanza = "3. "
  How si -- lent -- ly, how si -- lent -- ly,
  The won -- drous gift is giv'n!
  So God im -- parts to hu -- man hearts
  The bless -- ings of his heav'n.
  No ear may hear his com -- ing;
  But in this world of sin,
  Where meek souls will re -- ceive him, still
  The dear Christ en -- ters in.
}

versefour = \lyricmode {
  \set stanza = "4. "
  O ho -- ly Child of Beth -- le -- hem,
  Des -- cend to us, we pray;
  Cast out our sin, and en -- ter in,
  Be born in us to -- day.
  We hear the Christ -- mas an -- gels
  The great glad ti -- dings tell:
  O come to us, a -- bide with us,
  Our Lord Em -- man -- u -- el.
}

\book
{
  \header {
    title = "O Little Town of Bethlehem"
    copyright = \today
  }

  \score {
    \new ChoirStaff <<
      \new Staff = "descant" <<
        \set Staff.instrumentName = "Descant"
        \new Voice = "descant" { \timekey \descantmusic }
      >>
      \new Lyrics \lyricsto "descant" { \versefour }
      \new PianoStaff <<
        \new Staff = "treble" <<
          \new Voice = trebleone { \voiceOne \timekey \sopranomusic }
          \new Voice = trebletwo { \voiceTwo \timekey \altomusic }
        >>
        \new Lyrics \lyricsto "trebleone" { \verseone }
        \new Lyrics \lyricsto "trebleone" { \versetwo }
        \new Lyrics \lyricsto "trebleone" { \versethree }
        \new Staff = "bass" <<
          \new Voice = bassone { \clef "bass" \voiceOne \timekey \tenormusic }
          \new Voice = basstwo { \voiceTwo \timekey \bassmusic }
        >>
      >>
    >>

    \layout {
      \context {
                                % a little smaller so lyrics
                                % can be closer to the staff
        \Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
    }

    \midi {
      \context {
        \Staff
        \remove "Staff_performer"
      }
      \context {
        \Voice
        \consists "Staff_performer"
      }
      \context {
        \Score
        tempoWholesPerMinute = #(ly:make-moment 80 4)
      }
    }
  }
}
