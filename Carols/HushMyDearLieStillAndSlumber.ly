\version "2.19.81"

\header {
  title = "Hush! My Dear, Lie Still and Slumber"
  subtitle = "A lullaby for any child"
  composer = "An old melody"
  arranger = "arr. A.E. Floyd"
  poet = "Isaac Watts"
}

verseOne = \lyricmode {
  Hush? my dear, lie still and slumb- er,
  Ho- ly Ang- els guard my bed!
  Heav- 'nly bles- sings with- out num- ber
  Gent- ly fal- ling on thy head.
  How much bet- ter thou'rt at- tend- ed
  Than the Son of God could be.
  When from Heav- en He des- cend- ed,
  And be- came a child like thee!
}  

verseTwo = \lyricmode {
  Soft and eas- y is thy crad- le;
  Coarse and hard thy Sav- iour lay,
  When his birth- place was a stab- le
  And his soft- est bed was hay.
  See the kind- ly shep- herds round Him,
  Tel- ling won- ders from the sky!
  Where they sought Him, there they found Him,
  With His Vir- gin Moth- er by.
}  

verseThree = \lyricmode {
  Lo, he slum- bers in His man- ger,
  Where the mean- est ox- en fed;
  Peace, my darl- ing, here's no dan- ger!
  Here's no one a- near they bed!
  May'st thou live to know and fear Him,
  Trust and love Him all thy days;
  Then go dwell for- ev- er near Him,
  See His face and sing His praise.
}  

SopranoMusic = \relative c' {
  \key des \major
  \time 4/4
  \voiceOne
  s1
  \repeat volta 3 {
    f4 \( f8(ees) des4 des
    ees4 ees f des \)
    aes'4 \( aes8(ges) f4 f
    ees8 (des) ees(f) des2 \)
    f4 \( f8(ees) des4 des
    ees4 ees f des \)
    aes'4 \( aes8(ges) f4 f
    ees8 (des) ees(f) des2 \)
    f4 \( f8(ges) aes4 aes
    bes4 bes aes f \)
    f4 \( f8(ges) aes4 aes
    bes8(c) des( bes) aes2 \)
    f4 \( f8(ees) des4 des
    ees4 ees f des \)
    aes'4 \( aes8(ges) f4 f
    ees8(des) ees(f) des2 \)
    s1
    s1
    s2
  }
}

AltoMusic = \relative c' {
  \key des \major
  \time 4/4
  \tempo 4 = 48
  \magnifyMusic 0.63 {\override Score.SpacingSpanner.spacing-increment = #(* 1.2 0.63) aes8 bes des c aes bes des c}
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  \voiceTwo
  des4 des8(ees) f4 f
  ges4 ges f des
  des4 des8(ees) f4 f
  ges8(aes) bes(ges) ees(f ges ees)
  s1
  s1
  s1
  s2 \magnifyMusic 0.63 {\override Score.SpacingSpanner.spacing-increment = #(* 1.2 0.63) s8 des8 \( ees f
  ges8 f ges ees \) f \( f ges aes
  bes8 aes bes ges aes \) ees' \( des bes
  aes4(ges) \) }
}

\score {
  \new ChoirStaff {
    \new Staff = sopranos <<
      \new Voice = sopranos { \SopranoMusic }
      \new Voice = altos    { \AltoMusic    }
      \new Lyrics \lyricsto sopranos \verseOne
      \new Lyrics \lyricsto sopranos \verseTwo
      \new Lyrics \lyricsto sopranos \verseThree
    >>
  }
}
