\version "2.19.80"

global = {
  \key f \major
  \time 6/8
  \dynamicUp
  \tempo 4. = 115
}

sopranoOneNotes = \relative c' {
  \partial 8 f8^\mf
  a4.~ a8 r f
  a4. ~ a8 r f
  d8-- f f--~ f4 f8
  g8-- a4~a8 r f
  a4.-- ~ a8 r f % Page 4 Bar 5
  a4.-- ~ a8 r f
  d8-- f f ~ f4 f8
  g8-- f4 ~ f8 r f
  a8-- c c--~ c4 c8
  d8-- c4~c8 r a
  f8-- f f--~f4 f8
  g8-- a4~a8 r f
  a8-- c c--~c4 c8
  d8-- c4~c8 r a
  f8-- f f--~f4 f8
  g8-- f4~f8 r f
  a4.--~a8 r f % page 5
  a4.-- ~ a8 r f
  d8-- f f--~f4 f8
  g8-- a4~a8 r f
  a4.--~a8 r f
  a4.--~a8 r f
  d8-- f f~f4 f8
  g8-- f4~f8 r f
  a8-- c c--~c4 c8 % page 6
  d8--c4~c8 r a
  f8-- f f--~f4 f8
  g8-- a4~a8 r f
  a8-- c c--~c4 c8
  d8-- c4~c8 r a
  f8-- f f--~f4 f8
  g8-- f4~f8 r a^\f
  c4.-- ~c8 r a % page 7
  c4.-- ~ c8 r a
  bes8-- bes bes--~bes4 bes8
  bes8-- a4~a8 r a
  c4.--~c8 r a
  c4.--~c8 r a
  bes8-- bes bes--~bes4 bes8
  bes8-- a4~a8 r f
				% page 8
  a8-- c c--~c4 c8
  d8 c4~c8 r a
  bes8-- bes bes--~bes4 bes8
  bes8-- bes4~bes8 r f
  a8-- c c--~c4 c8
  d8 c4~c8 r a
  bes8-- bes bes--~bes4 bes8
  bes8-- a4~a8 r a
}

sopranoOneWords = \lyricmode {
  E- yo! E- yo! O- go nu fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  E- jo! E- jo! O- go nu fun O- lu- wa!
  E- jo! E- jo! O- go nu fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
}

sopranoTwoNotes = \relative c' {
  \partial 8 f8^\mf
  a4.~ a8 r f
  a4. ~ a8 r f
  d8-- f f--~ f4 f8
  g8-- a4~a8 r f
  a4.-- ~ a8 r f % Page 4 Bar 5
  a4.-- ~ a8 r f
  d8-- f f ~ f4 f8
  g8-- f4 ~ f8 r f
  a8-- c c--~ c4 c8
  d8-- c4~c8 r a
  f8-- f f--~f4 f8
  g8-- a4~a8 r f
  a8-- c c--~c4 c8
  d8-- c4~c8 r a
  f8-- f f--~f4 f8
  g8-- f4~f8 r f
  a4.--~a8 r f % page 5
  a4.-- ~ a8 r f
  d8-- f f--~f4 f8
  g8-- a4~a8 r f
  a4.--~a8 r f
  a4.--~a8 r f
  d8-- f f~f4 f8
  g8-- f4~f8 r c
  f8-- a a~a4 a8 % page 6
  bes8-- a4~a8 r f
  d8-- d d--~d4 d8
  d8-- f4~f8 r c
  f8-- a a--~a4 a8
  bes8-- a4~a8 r f
  d8-- d d~d4 d8
  d8-- f4~f8 r f^\f
  a4.--~a8 r f
  a4.--~a8 r f
  f8-- f f--~f4 f8
  g8-- f4~f8 r f
  a4.--~a8 r f
  a4.--~a8 r f
  f8-- f f--~f4 f8
  g8-- f4~f8 r c
				% page 8
  f8-- a a--~ a4 a8
  bes8 a4~a8 r a
  f8-- f f--~f4 f8
  g8-- a4~a8 r c,
  f8-- a a--~ a4 a8
  bes8 a4~a8 r a
  f8-- f f--~f4 f8
  g8-- f4~f8 r a
  \bar "|."
}

sopranoTwoWords = \lyricmode {
  E- yo! E- yo! O- go nu fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  E- jo! E- jo! O- go nu fun O- lu- wa!
  E- jo! E- jo! O- go nu fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
}

altoOneNotes = \relative c' {
  \partial 8 f8^\mf
  a4.~ a8 r f
  a4. ~ a8 r f
  d8-- f f--~ f4 f8
  g8-- a4~a8 r f
  a4.-- ~ a8 r f % Page 4 Bar 5
  a4.-- ~ a8 r f
  d8-- f f ~ f4 f8
  g8-- f4 ~ f8 r c
  f8-- a a--~a4 a8
  bes8-- a4~a8 r f
  d8-- d d--~d4 d8
  d8-- f4~f8 r c
  f8-- a a--~a4 a8
  bes8 a4~a8 r f
  d8-- d d--~d4 d8
  d8-- c4 ~ c8 r r
  r4 f8 f4.-- % page 5
  r4 f8 f4-- c8
  d8-- d d--~d4 d8
  f8-- f4~f8 r4
  r4 f8 f4.--
  r4 f8 f4-- c8
  d8-- d d--~d4 d8
  c8-- c4~c8 r4
  r4 f8 f4.--~ % page 6
  f4 f8 f4-- c8
  bes4--bes8 r4 bes8
  c8-- c4~c8 r4
  r4 f8 f4.~
  f4 f8 f4-- c8
  bes4-- bes8 r4 bes8
  c8-- c4~c8 r4
  r4 f8 f4.-- % page 7
  r4 f8 f4-- f8
  f8-- f f--~f4 f8
  f8-- f4 ~ f8 r4
  r4 f8 f4.--
  r4 f8 f4-- f8
  f8-- f f--~f4 f8
  f8-- f4 ~ f8 r4
				% page 8
  r4 f8 f4.--~
  f4 f8 f4-- f8
  d4-- d8 r4 d8
  f8-- f4~f8 r4
  r4 f8 f4.--~
  f4 f8 f4-- f8
  d4-- d8 r4 d8
  c8-- c4~c8 r8 a'
}

altoOneWords = \lyricmode {
  E- yo! E- yo! O- go nu fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  E- jo! E- jo! O- go nu fun O- lu- wa!
  E- jo! E- jo! O- go nu fun O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
}

altoTwoNotes = \relative c' {
  \partial 8 f8^\mf
  a4.~ a8 r f
  a4. ~ a8 r f
  d8-- f f--~ f4 f8
  g8-- a4~a8 r f
  a4.-- ~ a8 r f % Page 4 Bar 5
  a4.-- ~ a8 r f
  d8-- f f ~ f4 f8
  g8-- f4 ~ f8 r c
  f8-- a a--~a4 a8
  bes8-- a4~a8 r f
  d8-- d d--~d4 d8
  d8-- f4~f8 r c
  f8-- a a--~a4 a8
  bes8 a4~a8 r f
  d8-- d d--~d4 d8
  d8-- c4 ~ c8 r r
  r4 c8 c4.-- % page 5
  r4 c8 c4-- c8
  bes8-- bes bes--~bes4 bes8
  c8-- c4~c8 r4
  r4 c8 c4.--
  r4 c8 c4-- c8
  bes8-- bes bes--~bes4 bes8
  a8-- a4~a8 r4 % page 6
  r4 c8 c4.--~
  c4 c8 c4-- c8
  bes4-- bes8 r4 bes8
  c8-- c4~c8 r4
  r4 c8 c4.--~c4 c8 c4-- c8
  bes4-- bes8 r4 bes8
  a8-- a4~a8 r4
  r4 f'8 f4.-- % page 7
  r4 f8 f4-- c8
  d8-- d d--~d4 d8
  d8-- d4 ~ d8 r4
  r4 f8 f4.--
  r4 f8 f4-- c8
  d8-- d d--~d4 d8
  d8-- d4 ~ d8 r4
				% page 8
  r4 f8 f4.--~
  f4 f8 f4-- c8
  bes4-- bes8 r4 bes8
  c8-- c4~c8 r4
  r4 f8 f4.--~
  f4 f8 f4-- c8
  bes4-- bes8 r4 bes8
  bes8-- c4~c8 r4

}

altoTwoWords = \lyricmode {
  E- yo! E- yo! O- go nu fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  E- jo! E- jo! O- go nu fun O- lu- wa!
  E- jo! E- jo! O- go nu fun O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
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
  \layout{}
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
    >>
    \new Staff <<
      \new Voice = "altoOne" <<
        \global
        \altoOneNotes
      >>
    >>
    \new Staff <<
      \new Voice = "altoTwo" <<
        \global
        \altoTwoNotes
      >>
    >>
  >>
  \midi{}
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "sopranoOne" <<
        \global
        \sopranoOneNotes
      >>
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
    >>
    \new Staff <<
      \new Voice = "altoTwo" <<
        \global
        \altoTwoNotes
      >>
    >>
  >>
  \midi{}
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "sopranoOne" <<
        \global
        \sopranoOneNotes
      >>
    >>
    \new Staff <<
      \new Voice = "sopranoTwo" <<
        \global
        \sopranoTwoNotes
      >>
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
    >>
  >>
  \midi{}
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "sopranoOne" <<
        \global
        \sopranoOneNotes
      >>
    >>
    \new Staff <<
      \new Voice = "sopranoTwo" <<
        \global
        \sopranoTwoNotes
      >>
    >>
    \new Staff <<
      \new Voice = "altoOne" <<
        \global
        \altoOneNotes
      >>
    >>
    \new Staff <<
      \new Voice = "altoTwo" <<
        \global
        \altoTwoNotes
      >>
      \new Lyrics \lyricsto "altoTwo" \altoTwoWords
    >>
  >>
  \midi{}
}
