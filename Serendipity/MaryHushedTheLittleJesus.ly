\version "2.18.2"

SopranoLyrics = \lyricmode {
  Ma- ry hushed the lit- tle Je- sus,
  Crad- led sweet- ly on her breast;
  Soft- ly gent- ly, 'till His spir- it
  Sank at last to peace- ful rest.

  Moth- ers since have rocked their bab- ies,
  Croon- ing low, sweet mel- o- dies;
  In- fants fair, and warm, and love- ly,
  Lured to sleep by lul- la- bies.

  None who grew to nob- ler man- hood,
  None who so showed God's own face,
  Je- sus, lit- tle hu- man bab- y,
  Je- sus Sav- iour of our race.
}  

tempotrack = {
  \key des \major
  \time 3/4
  \tempo 4=72
}

dynamics = {
  s2.^\pp
  s2.
  s2.
  s2.
  s2.^\markup{\italic cres.}
  s2.
  s2.
  s2.
  s2.^\pp
  s2.
  s2.
  s2.
  s2.^\markup{\italic cres.}
  s2.
  s2.^\markup{\italic{dim et rall.}}
  s2.

  s2.^\mf
  s2.
  s2.
  s2.
  s2.^\markup{\italic dim.}
  s2.
  s2.
  s2.
  s2.^\markup{\italic cres.}
  s2.
  s2.
  s2.
  s2.^\p
  s2.
  s2.
  s2.

  s2.^\p
  s2.
  s2.
  s2.
  s2.^\markup{\italic cres.}
  s2.
  s2.
  s2.
  s2.^\markup{\italic dim.}
  s2.
  s2.
  s2.
  s2.^\pp
  s2.
  s2.^\markup{\italic rall.}
  s2.
  s2.
}

SopranoMusic = \relative c' {
  \key des \major
  \time 3/4
  \repeat volta 3 {
    f2 \tempo 4=72 ges4
    aes2 bes4
    aes2 ges4
    f2 ees4
    des2 des4
    ges2 ges4
    bes4(aes) ges
    aes2.
    des2 des4
    f,2 f4
    bes4(aes) bes
    aes2 f4
    f4(ees) des
    f2 bes4
    aes4(f) ees
    des2.^\fermata
    \bar "||"
  }
  \bar "|."
}

AltoMusic = \relative c' {
  \key des \major
  \time 3/4
  \repeat volta 3 {
    des2 c4
    des4(ees) f
    ees4(des) des
    c2 c4
    des4(c) c
    des2 des4
    ees4(f) bes,
    des2(c4)
    des2 des4
    c2 c4
    des2 des4
    des2 des4
    des4(c) bes
    des2 f4
    f8(ees des4) c4
    bes2(aes4)-\fermata
  }
  \bar "|."
}

TenorMusic = \relative c' {
  \key des \major
  \time 3/4
  \repeat volta 3 {
    aes2 aes4
    aes2 des4
    c4(bes) bes
    aes2 g4
    f2 f4
    ges4(aes) bes
    c4(des) ees
    aes,2.
    f4(ges) f
    aes4(f) aes
    bes2 ges4
    aes2 aes4
    g2 g4
    aes2 des4
    c4(bes8 aes) ges4
    ges2(f4)-\fermata
  }
  \bar "|."
}

BassMusic = \relative c {
  \key des \major
  \time 3/4
  \repeat volta 3 {
    des2 ees4
    f2 f4
    ges4(f) ees
    aes,2 aes4
    bes2 bes4
    ees2 ees4
    ges4(f) ees
    f2.
    bes,2 bes4
    aes2 aes4
    ges2 ges'4
    f2 f4
    ees2 ees4
    aes,2 aes4
    aes2 aes4
    des2._\fermata
  }
  \bar "|."
}

\header {
  title    = "Mary Hushed the Little Jesus"
  composer = "E. C. Burchett, 1884 - 1966"
  poet     = "Nancy Cornell"
}

\score {
  \context GrandStaff <<
    \context ChoirStaff <<
      \new Staff <<
        \new Voice = sopranos { \voiceOne \unfoldRepeats \SopranoMusic }
        \new Voice = altos    { \voiceTwo \unfoldRepeats \AltoMusic }
      >>
      \new Dynamics \dynamics
      \new Lyrics \lyricsto sopranos \SopranoLyrics
      \new Staff <<
        \clef "bass"
        \new Voice = tenors { \voiceOne \unfoldRepeats \TenorMusic }
        \new Voice = basses { \voiceTwo \unfoldRepeats \BassMusic }
      >>
    >>
  >>
  \layout {}
  \midi {}
}
