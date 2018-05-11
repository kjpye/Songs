\version "2.19.80"

global = {
  \key f \major
  \time 6/8
  \dynamicUp
  \tempo 4. = 115
}

rehearsalTrack = {
  \partial 8 s8
  \set Score.currentBarNumber = #5
  \mark \markup { \box 5 }
  s2. s2. s2. s2.
  \mark \markup { \circle "4a" }
  s2. s2. s2. s2.
  \mark \markup { \circle "4b" }
  s2. s2. s2. s2.
  \mark \markup { \circle "4c" }
  s2. s2. s2. s2.
  \mark \markup { \circle "5a" }
  s2. s2. s2. s2.
  \mark \markup { \circle "5b" }
  s2. s2. s2. s2.
  \mark \markup { \circle "6a" }
  s2. s2. s2. s2.
  \mark \markup { \circle "6b" }
  s2. s2. s2. s2.
  \mark \markup { \circle "7a" }
  s2. s2. s2. s2.
  \mark \markup { \circle "7b" }
  s2. s2. s2. s2.
  \mark \markup { \circle "8a" }
  s2. s2. s2. s2.
  \mark \markup { \circle "8b" }
  s2. s2. s2. s2.
  \mark \markup { \circle "9a" }
  s2. s2. s2. s2. s2.
  \set Score.currentBarNumber = #63
  \mark \markup { \box "63(10a)" }
  s2. s2. s2. s2. s2.
  \mark \markup { \circle "10b" }
  s2. s2.
  \set Score.currentBarNumber = #71
  \mark \markup { \box "71" }
  s2.
  \mark \markup { \circle "11a" }
  s2. s2. s2. s2.
  \mark \markup { \circle "11b" }
  s2. s2. s2.
  \set Score.currentBarNumber = #80
  \mark \markup { \box "80(12a)" }
  s2.
  \set Score.currentBarNumber = #94
  \mark \markup { \box "94(13b)" }
  s2. s2. s2. s2.
  \mark \markup { \circle "14a" }
  s2. s2. s2. s2.
  \mark \markup { \circle "14b" }
  s2. s2. s2. s2.
  \mark \markup { \circle "15a" }
  s2. s2.
  \set Score.currentBarNumber = #109
  \mark \markup { \box "109" }
  s2.
  \mark \markup { \circle "15b" }
  s2. s2. s2. s2. s2.
  \bar "|."
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
				% page 9
  c4.--^\markup{A little louder} a4 d8
  c4.-- a8 r f'
  a4-- a8~a4 f8
  f4.-- f8 r d
  f4-- f8 f-> r d
				% page 10 (after skipping some bars)
  f4.~f8 r d
  f4.--~f8 r f
  g4.--~g8 r d
  f4.--~f8 r d
  f4.--~f8 r d
  f4.--~f8 r f
  d4.-~d8 r d
  <a c>4.~q8 r d
				% page 11
  f4.--d4 d8
  c4.-- d4 <c f>8^\markup{div}
  <d g>4.~ q4 <bes d>8
  <c f>4.--~ q8 r d
  f4.-- d4-- d8
  c4.-- d4-. <a c>8^\markup{div}
  <c f>8-- q q~ q4 <a c>8
				% page 12
  bes8 a4--~ a8 r8 d^\f
				% page 13
  c4.--~c8 r a
  c4.--~c8 r a
  bes8-- bes bes--~bes4 bes8
  bes8-- a4~a a8
				% page 14
  c4.--~c8 r a
  c4.--~c4 a8
  bes8-- bes bes--~bes4 bes8
  bes8 a4~a8 r f
  a8-- c c--~c4 c8
  d8-- c4~c8 r a
  bes8-- bes bes--~bes4 bes8
  bes8 c4~c f,8
				% page 15
  a8 c c--~c4 c8
  d8 c4~c8 r a
  bes8-- bes bes--~bes4 f'8
  g8-- a4-- ^\sfz\< ~ a4.~
  a2.~
  a4.^\fff \! ~ a8 r
    \override NoteHead.style = #'cross
    bes,8^\markup{Shout emphatically}
  bes8-- bes bes--~bes4 bes8
  bes8 bes8 r r4.
  \bar "|."
}

sopranoOneWords = \lyricmode {
  E- yo! E- yo! O- go ni fun O- lu- wa!
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
  E- jo! E- jo! O- go ni fun O- lu- wa!
  E- jo! E- jo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  A- bi Je- su Kris- ti!
  A- la- fia! I- re- po! E- pà- te- wö!
  E- yo! E- yo! E- jo! E- jo! E- yo! E- yo! E- jo! E- jo!
  A- bi Je- su Kris- ti!
  E- jo! E- jo!
  A- bi Je- su Kris- ti!
  O- go ni fun O- lu wa!
  E- jo! E- jo! O- go ni fun O- lu- wa!
  E- jo! E- jo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
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
				% page 9
  c4.--^\markup{A little louder} a4 d8
  c4.-- a8 r d
  <c f>4--^\markup{div} q8~q4 <c d>8
  q4.-- c8 r d
  <c d>4-- q8 <c ees>8-> r a
				% page 10
  c4.~~c8 r a
  c4.--~c8 r c
  d4.--~d8 r a
  c4.--~c8 r a
  c4.--~c8 r a
  c4.--~c8 r c
  bes4.--~bes8 r4
  r4 f8 f4 r8
				% page 11
  r4 a8 a4.--
  r4 a8 a4.--
  r4 f8 f4.--
  r4 a8 a4.--
  r4 a8 a4.--
  r4 a8 a4.--
  r4 g8 g4 g8
				% page 12
  g8 f4--~f8 r f8^\f
				% page 13
  a4.--~a8 r f
  a4.--~a8 r f
  f8-- f f--~f4 f8
  g8-- f4~f f8
				% page 14
  a4.--~a8 r f
  a4.--~a8 r f
  f8-- f f--~f4 f8
  g8-- f4~f8 r c
  f8-- a a--~a4 a8
  bes8-- a4~a8 r f
  f8-- f f--~f4 f8
  g8 a4~a c,8
				% page 15
  f8-- a a~ a4 a8
  bes8 a4~a8 r f
  f8-- f f--~f4 d'8
  d8-- f4--^\sfz \< ~f4.~
  f2.~
  f4.^\fff \! ~f8 r8
    \override NoteHead.style = #'cross
    bes,8^\markup{Shout emphatically}
  bes8-- bes bes--~bes4 bes8
  bes8 bes8 r r4.
  \bar "|."
}

sopranoTwoWords = \lyricmode {
  E- yo! E- yo! O- go ni fun O- lu- wa!
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
  E- jo! E- jo! O- go ni fun O- lu- wa!
  E- jo! E- jo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  A- bi Je- su Kris- ti!
  A- la- fia! I- re- po! E- pà- te- wö!
  E- yo! E- yo! E- jo! E- jo!
  E- yo! E- yo! E- jo! E- jo!
  E- yo! E- yo! E- jo! E- jo!
  E- yo! E- yo! E- jo! O- lu- wa!
  E- jo! E- jo! O- go ni fun O- lu- wa!
  E- jo! E- jo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
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
				% page 9
  c4.--^\markup{A little louder} a4 c8
  c4.-- a8 r <f a>^\markup{div}
  <g c>4-- q8~q4 <a c>8
  bes4.-- a8 r a
  bes4-- bes8 a8 r4
				% page 10
  r4 a8 a4.--
  r4 a8 a4.--
  r4 bes8 bes4.--
  r4 a8 a4.--
  r4 a8 a4.--
  r4 a8 a4.--
  r4 g8 g4.--
  r4 f8 f8-- r d
				% page 11
  f4.-- f4 g8
  a4.-- f4-. f8
  d8-- f f--~ f4 f8
  g8-- a4~a8 r d,
  f4.-- f4-- g8
  a4.-- f4-. f8
  a8-- g g--~g4 f8
				% page 12
  c8 c4~c8 r4
				% page 13
  r4 f8^\f f4.--
  r4 f8 f4-- c8
  d8-- d d--~d4 d8
  f8-- f4~f r8
				% page 14
  r4 f8 f4.--
  r4 f8 f4-- c8
  d8-- d d--~d4 d8
  c8-- c4~c8 r4
  r4 f8 f4.--~
  f4 f8 f4-- f8
  d4-- d8 r4 d8
  f8 f4~f r8
				% page 15
  r4 f8 f4.~
  f4 f8 f4 f8
  d8-- d d--~d4 bes'8
  d8-- f4--^\sfz\< ~ f4. ~
  f2. ~
  f4.^\fff\! ~ f8 r
    \override NoteHead.style = #'cross
    bes,8^\markup{Shout emphatically}
  bes8-- bes bes--~bes4 bes8
  bes8 bes8 r r4.
  \bar "|."
}

altoOneWords = \lyricmode {
  E- yo! E- yo! O- go ni fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  E- jo! E- jo! O- go ni fun O- lu- wa!
  E- jo! E- jo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  A- bi Je- su Kris- ti!
  A- la- fia! I- re- po! E- pà- te- wö!
  E- yo! E- yo! E- jo! E- jo!
  E- yo! E- yo! E- jo! E- jo!
  A- bi Je- su Kris- ti!
  O- go ni fun O- lu- wa!
  A- bi Je- su Kris- ti!
  O- go ni fun O- lu- wa!
  E- jo! E- jo! O- go ni fun O- lu- wa!
  E- jo! E- jo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  O- go ni fun O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
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
				% page 9
  r2.^\markup{A little louder}
  r4. r4 d8
  c4-- c8~c4 c8
  f4.-- f8 r f
  c4-- c8 f-> r4
				% page 10
  r4 <c f>8 q4.--
  r4 q8 q4.--
  r4 <bes f'>8 q4.--
  r4 <c f>8 q4.--
  r4 q8 q4.--
  r4 q8 q4.--
  r4 <c d>8 q4.--
  r4 f8 f4-- r8
				% page 11
  r4 <c f>8^\markup{div} q4.--
  r4 q8 q4.--
  r4 <bes d>8 q4.--
  r4 <c f>8 q4.--
  r4 q8 q4.--
  r4 q8 q4.--
  r4 bes8 bes4-- c8
				% page 12
  c8 c4~c8 r4
				% page 13
  r4 c8^\f c4.--
  r4 c8 c4-- c8
  bes8-- bes bes--~bes4 bes8
  c8-- c4~c r8
				% page 14
  r4 c8 c4.--
  r4 c8 c4-- c8
  bes8-- bes bes--~bes4 bes8
  a8-- a4~a8 r4
  r4 c8 c4.--~
  c4 c8 c4-- c8
  bes4-- bes8 r4 bes8
  c8 c4~c r8
				% page 15
  r4 c8 c4.~
  c4 c8 c4 c8
  bes8-- bes bes--~ bes4 bes8
  f'8-- f4--^\sfz\< ~ f4. ~
  f2. ~
  f4.^\fff\! ~ f8 r
    \override NoteHead.style = #'cross
    bes8^\markup{Shout emphatically}
  bes8-- bes bes--~bes4 bes8
  bes8 bes8 r r4.
  \bar "|."
}

altoTwoWords = \lyricmode {
  E- yo! E- yo! O- go ni fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  E- yo! E- yo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  E- jo! E- jo! O- go ni fun O- lu- wa!
  E- jo! E- jo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  A- la- fia! I- re- po! E- pà- te- wö!
  E- yo! E- yo! E- jo! E- jo!
  E- yo! E- yo! E- jo! E- jo!
  E- yo! E- yo! E- jo! E- jo!
  E- yo! E- yo! E- jo! O- lu- wa!
  E- jo! E- jo! O- go ni fun O- lu- wa!
  E- jo! E- jo! O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa! O- lu- wa!
  O- go ni fun O- go ni fun O- lu- wa!
  O- go ni fun O- lu- wa!
}

\header {
  title    = "Ogo ni fun Oluwa"
  subtitle = "Glory to God in the Highest"
  composer = "Rosephanye Powell"
  poet     = "Rosephanye Powell"
}

\book {
  \score { % full score
    <<
      \new ChoirStaff <<
	\new Staff <<
	  \new Voice { \rehearsalTrack }
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
      \new PianoStaff <<
	\new Staff <<
	  \set Staff.printPartCombineTexts = ##f
	  \partcombine
	  << { \global \sopranoOneNotes } >>
	  << { \global \sopranoTwoNotes } >>
	>>
	\new Staff <<
	  \set Staff.printPartCombineTexts = ##f
	  \partcombine
	  << { \global \altoOneNotes } >>
	  << { \global \altoTwoNotes } >>
	>>
      >>
    >>
    \layout{}
  }
}

\book {
\score { % vocal score
  \new ChoirStaff <<
    \new Staff <<
      \new Voice { \rehearsalTrack }
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

\score { % soprano 1 midi
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

\score { % soprano 2 midi
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

\score { % alto 1 midi
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

\score { % Alto 2 midi
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
}