\version "2.19.80"

\header {
  title = "Lord for Thy Tender Mercy's Sake"
  composer = "attrib Farrant (c. 1680)"
  % Remove default LilyPond tagline
  tagline = ##f
}
#(set-global-staff-size 16)

%\paper {
%  #(set-paper-size "a4")
%  line-width = 180\mm
%  left-margin = 20\mm
%  bottom-margin = 10\mm
%  top-margin = 10\mm
%}

global = {
  \key f \major
  \time 2/2
  \tempo 4=120
}

soprano = \relative c' {
  \global
  f1^\markup{Lento}
  f2. g4
  a2 g
  f2 bes
  g1
  r2 g
  a4 b c2
  c2 b
  c1
  c2 bes
  a1
  g2 f
  g4(a) bes2
  a2 g
  f2 a4 a
  g2 f
  g2 e
  f1
  f2. g4
  a2 bes
  a1
  a2. bes4
  c2 a
  d1
  c1~
  c1
  \repeat volta 2 {
    r1
    r2 f,
    c'2 c
    bes2 a4 g
    a2 a
    f1~
    f2^\markup{\italic cresc} f
    bes2 bes
    a2 g4 g
    f2 g
    e2 a
    d,4(e) f2
    e2 f
    g2 e
  }
  \alternative {
    {
      f1
      r1
    }
    {
      f1^\fermata
    }
  }
  \bar "|."
}

alto = \relative c' {
  \global
  c1
  d2. e4
  f2 e
  d2. f4
  e1
  r2 e
  f2 e
  g2 g4 f
  e1
  c2 d4(e)
  f1
  e2 d
  e2 f
  f2 d
  d2 f4 f
  e2 d
  d2 c4(bes)
  a1
  c2 c
  f2 f
  f1
  f2 f
  f2 f
  f1
  e1
  r1
  \repeat volta 2 {
    r2 c
    f2 f
    e2 d4 c
    d2  e
    f1
    r1
    r2 c^\markup{\italic cresc}
    d2 g
    c2 e4 e
    d2 d
    c2 c
    bes2 a4(bes)
    c2 c
    d2 c
  }
  \alternative {
    {
      a1
      r1
    }
    {
      a1^\fermata
    }
  }
  \bar "|."
}

tenor = \relative c' {
  \global
  a1
  a2. c4
  c2 c
  a2 d
  c1
  r2 c
  c2 c
  d2 d4 d
  c1
  a2 bes
  c1
  c2 a
  c2 d
  c2 bes
  a2 c4 c
  c2 a
  bes2 g
  f1
  a2. bes4
  c2 d
  c1
  c2. bes4
  a2 a
  bes1
  g2 g
  a2 a
  \repeat volta 2 {
    g2 a4 c
    bes4(a) g(f)
    g2 a
    bes2 bes
    c2 a^\markup{\italic cresc}
    d2 d
    c2 bes4 a
    g2 g
    f2 c'4 c
    a2 bes
    g2 f
    f2 f
    g2 a
    g2 g
  }
  \alternative {
    {
      f2 f
      a2 a
    }
    {
      a1^\fermata
    }
  }
  \bar "|."
}

bass = \relative c' {
  \global
  g1
  d2. c4
  f2 c
  d2 bes
  c1
  r2 c
  f2 bes
  g2 g4 g
  c,1
  a'2 g
  f1
  c2 d
  c2 bes
  f'2 g
  d2 a4 a
  c2 d
  bes2 c
  f,1
  f'2 f
  f2 d
  f1
  f2 f
  f2 f
  bes,1
  c2 c
  f2 f
  \repeat volta 2 {
    e2 d4 c
    d2 d
    c2 bes4 a
    g2 g
    f2 f'^\markup{\italic cresc}
    bes2 bes
    a2 g4 f
    f2 e
    f2 c4 c
    d2 g,
    c2 f
    bes,2 d
    c2 a
    bes2 c
  }
  \alternative {
    {
      f,2f
      f'2 f
    }
    {
      f,1^\fermata
    }
  }
  \bar "|."
}

wordsSop = \lyricmode {
  Lord, for the ten- der mer- cy's sake lay not our sins to our charge,
  but for- give that is past and give us grace to a- mend our sin- ful lives,
  to de- clare from sin and in- cline to vir- tue,
  that we may walk with a per- fect hert,
  that we may walk with a per- fect heart be- fore Thee now and e- ver- more,
  more.
}

wordsAlto = \lyricmode {
  Lord, for the ten- der mer- cy's sake lay not our sins to our charge,
  but for- give that is past and give us grace to a- mend our sin- ful lives,
  to de- clare from sin and in- cline to vir- tue,
  that we may walk with a per- fect hert,
  that we may walk with a per- fect heart be- fore Thee now and e- ver- more,
  more.
}

wordsTenor = \lyricmode {
  Lord, for the ten- der mer- cy's sake lay not our sins to our charge,
  but for- give that is past and give us grace to a- mend our sin- ful lives,
  to de- clare from sin and in- cline to vir- tue,
  that we may walk with a per- fect hert, a per- fect heart,
  that we may walk with a per- fect heart, with a per- fect heart,  be- fore Thee now and e- ver- more. That we may
  more.
}

wordsBass = \lyricmode {
  Lord, for the ten- der mer- cy's sake lay not our sins to our charge,
  but for- give that is past and give us grace to a- mend our sin- ful lives,
  to de- clare from sin and in- cline to vir- tue,
  that we may walk with a per- fect hert, with a pre- fect heart,
  that we may walk with a per- fect heart, with a per- fect heart,
  be- fore Thee now and e- ver- more. That we may
  more.
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" \soprano
      \new Lyrics \lyricsto "soprano" \wordsSop
    >>
    \new Staff <<
      \new Voice = "alto"    \alto
      \new Lyrics \lyricsto "alto" \wordsAlto
    >>
    \new Staff  <<
      \new Voice = "tenor" { \clef "treble_8" \tenor }
      \new Lyrics \lyricsto "tenor" \wordsTenor
    >>
    \new Staff <<
      \new Voice = "bass" { \clef bass \bass }
      \new Lyrics \lyricsto "bass" \wordsBass
    >>
  >>

  \layout { indent = 1.5\cm }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
