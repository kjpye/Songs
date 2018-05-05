global = {
  \key f \major
  \time 6/8
  \dynamic up
}

sopranoOneNotes = \relative c' {
  \partial 8 f8^\mf
}

sopranoOneWords = \lyricmode {
  E- yo!
}

sopranoTwootes = \relative c' {
  \partial 8 f8^\mf
}

sopranoTwoWords = \lyricmode {
  E- yo!
}

altoOneNotes = \relative c' {
  \partial 8 f8^\mf
}

altoOneWords = \lyricmode {
  E- yo!
}

altoTwoNotes = \relative c' {
  \partial 8 f8^\mf
}

altoTwoWords = \lyricmode {
  E- yo!
}

\header {
  title    = "Ogo ni fun Oluwa"
  subtitle = "Glory to God in the Highest"
  composer = "Rosephanye Powell"
  poet     = "Rosephanye Powell"
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "sopranoOne" <<
        \global
        \sopranoOneNotes
      >>
      \new Lyrics \lyricsto "sopranoOne" \sopranoOneWords
    >>
    \new Staff <<
      \new Voice = "sopranoTwo" <<
        \global
        \sopranoTwoNotes
      >>
      \new Lyrics \lyricsto "sopranoTwo" \sopranoTwoWords
    >>
    \new Staff <<
      \new Voice = "altoOne" <<
        \global
        \altoOneNotes
      >>
      \new Lyrics \lyricsto "altoOne" \altoOneWords
    >>
    \new Staff <<
      \new Voice = "altoTwo" <<
        \global
        \altoTwoNotes
      >>
      \new Lyrics \lyricsto "altoTwo" \altoTwoWords
    >>
  >>
}
