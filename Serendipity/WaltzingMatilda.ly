\version "2.25.0"

tempotrack = {
  \key f \major
  \time 2/4
  \repeat volta 3 {
    s1
    \time 3/2 s1.
    \time 3/4 s2.
    s2.
    \time 4/4 s1 % 5
    s1
    \time 3/2 s1.
    \time 3/4 s2.
    s2. % 10
    \time 4/4 s1
    s1
    s1
    s1
    \time 3/2 s1. % 15
    \time 3/4 s2.
    s2.
  } \alternative {
    {
      \time 4/4 s1
    }
    {
      \time 4/4 s1
    }
  }
  \bar "|."
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \textMark \markup { \box 5 }
  \textMark \markup { \box "1a" }
  s2 s2
  \textMark \markup { \box "2a" }
  s2 s2 s2
  \textMark \markup { \box "2b" }
  s2 s2 s2
  \textMark \markup { \box "3a" }
  s2 s2 s2
  \textMark \markup { \box "3b" }
  s2 s2 s2
  \textMark \markup { \box "4a" }
  s2 s2
  \textMark \markup { \box "4b" }
  s2 s2
  \textMark \markup { \box "5a" }
  s2 s2 s2
  \textMark \markup { \box "5b" }
  s2 s2 s2
  \textMark \markup { \box "3a" } % back to the chorus
  s2 s2 s2
  \textMark \markup { \box "3b" }
  s2 s2 s2
  \textMark \markup { \box "4a" }
  s2 s2
  \textMark \markup { \box "6a" } % forward to page 6 for the third verse
  s2 s2
  \textMark \markup { \box "6b" }
  s2 s2 s2
  \textMark \markup { \box "7a" }
  s2 s2
  \textMark \markup { \box "7b" }
  s2 s2 s2
  \textMark \markup { \box "8a" }
  s2 s2 s2
  \textMark \markup { \box "8b" }
  s2 s2
  \textMark \markup { \box "9a" }
  s2 s2 s2
  \textMark \markup { \box "9b" }
  s2 s2 s2
  \textMark \markup { \box "10a" }
  s2 s2 s2 s2 s2 s2
  \textMark \markup { \box "10b" }
  s2 s2 s2 s2 s2 s2
  \textMark \markup { \box "11a" }
  s2 s2
  \textMark \markup { \box "11b" }
  s2 s2
  \textMark \markup { \box "12a" }
  s2 s2
  \textMark \markup { \box "12b" }
}

SopranoTempo = \relative c'' {
  \key f \major
  \time 2/4
  \tempo Gaily 4=88
  s16^\mp s s s s8 s % 1
  s8 s16 s s s s8
  s8s16 s s8 s16 s
  s16 s s8 s^\markup{\italic ten} s 16 s
  s8 s16 s s8 s % 5
  s16 s s s s s s8
  s8 s16 s s8 s16 s
  s8 s16 s s8 s
  s8^\mf ^\< s16 s s8 s
  s8^\f \! s16 s s8 s % 10
  s8 s16 s16 s8 s16 s
  s8 ^\> s16 s \! s8^\fermata ^\mf s16^\mp s
  s8 s16 s s8 s
  s16 s s s s s s8
  s8 s16 s s8 s16 s
  s8 s16 s s4
  s4 s8. s16
  s16 s s s s8 s
  s8 s s8.^\f s16
  s8^^ s8 s^\markup{\italic ten} s16^\mp s
  s8. s16 s8. s16
  s16 s s s s^. s^. s8^-
  s8^\mf s s^^ s
  s8 s^-^\mp s4
  s8^\mf^\< s16 s s8 s % start chorus
  s8^\f \! s16 s s8 s % 10
  s8 s16 s16 s8 s16 s
  s8 ^\> s16 s \! s8^\fermata ^\mf s16^\mp s
  s8 s16 s s8 s
  s16 s s s s s s8
  s8 s16 s s8 s16 s
  s8 s16 s s4
  s2
  s2
  s8^\f s s4
  s8^^ s^^ s4^^^\fermata
  s2
  s2
  s4 s8^\f s16 s
  s8 s16 s s8 s16 s
  s4. s8
  s8^\mf^\< s16 s s8 s\!
  s8^\f s16 s s8 s % psss 8
  s8 s16 s s8 s16 s
  s8^\> s16 s s4^\mf\!
  s2
  s2
  s8 s s4
  s8 s s4
  s2
  s2
  s2
  s2
  s2^\fermata
  s2
  s2
  s2
  s2
  s4^\pp(s8 s
  s2^\pp ~
  s2~
  s2~
  s2^\markup{Rit}~
  s2 ^\> ~
  s2 \! )
  s8^\mf^\markup{Tempo primo}^\< s16 s s8 s
  s8^\f\! s16 s s8 s
  s8 s16 s s8 s16 s
  s8^\> s16 s s8^\mf^\fermata \! s16^\p s
  s8 s16 s s8 s16 s
  s8 s16 s s s s8
  s8 s16 s s8^^ s16 s
  s8^\> s16 s16^\pp\! s8 s
  \bar "|."
}

%SopranoMusic = \relative c'' {
%  \key f \major
%  \time 2/4
%  \tempo 4=88
%  a16^\mp a a a g8-- g-- % 1
%  f8 a16 f d-- e-- f8--
%  c8f16 a c8 c16 c
%  c16 c c8 c^\markup{\italic ten} f,16 g
%  a8 a16 a g8 g % 5
%  f16 g a f d e f8
%  c8 f16 a c8 bes16 a
%  g8 16 g f8 r
%  c'8^\mf ^\< c16 c c8 a % start chorus
%  f'8^\f \! 16 f e8 d % 10
%  c8 16 16 d8 c16 c
%  c8 ^\> bes16 a \! g8^\fermata ^\mf f16^\mp g
%  a8 16 a g8 g
%  f16 g a f d e f8
%  c8 f16 a c8 bes16 a
%  g8 g16 g f4 % end chorus
%  f4 c'8. 16
%  d16 e f c d8 d
%  c8 r e8.^\f f16 % page 5
%  g8^^ c,8 r^\markup{\italic ten} d16^\mp e
%  f8. c16 d8. bes16
%  c16 bes a c bes^. c^. d8^-
%  c8^\mf r f^^ r
%  r8 c^-^\mp f,4
%  c'8^\mf ^\< c16 c c8 a % start chorus
%  f'8^\f \! 16 f e8 d % 10
%  c8 16 16 d8 c16 c
%  c8 ^\> bes16 a \! g8^\fermata ^\mf f16^\mp g
%  a8 16 a g8 g
%  f16 g a f d e f8
%  c8 f16 a c8 bes16 a
%  g8 g16 g f4 % end chorus
%  r2 % page 6
%  r2
%  f'8^\f c r4
%  c8^^ c^^ c4^^^\fermata
%  r2
%  r2
%  r4 c,8^\f f16 a
%  c8 bes16 a g8 16 g
%  f4. r8
%  c'8^\mf^\< 16 c c8 a\!
%  f'8^\f f16 f e8 d % page 8
%  c8 16 c d8 c16 c
%  c8^\> bes16 a g4^\mf\!
%  r2
%  r2
%  c8^\f(f) c4(
%  c8) c f,4
%  r2
%  r2
%  r2
%  r2
%  r2^\fermata
%  r2
%  r2
%  r2
%  r2
%  c4^\pp(f8 a
%  c2^\pp ~
%  c2~
%  c2~
%  c2^\markup{Rit}~
%  c2 ^\> ~
%  c2 \! )
%  c8^\mf^\markup{Tempo primo}^\< 16 c c8 a % page 11
%  f'8^\f\! 16 f e8 d
%  c8 16 c d8 c16 c
%  c8^\> bes16 a g8^\mf^\fermata \! f16^\p g
%  a8 16 a g8 a16 g % page 12
%  f8 a16 f d e f8
%  c8 f16 a c8^^ bes16 a
%  g8^\> g16 g16^\pp\! f8-. r
%  \bar "|."
%}

SopranoMusic = \relative c'' {
  \key f \major
  \time 2/4
  a16 a a a g8-- g-- % 1
  f8 a16 f d-- e-- f8--
  c8 f16 a c8 c16 c
  c16 c c8 c f,16 g
  a8 a16 a g8 g % 5
  f16 g a f d e f8
  c8 f16 a c8 bes16 a
  g8 16 g f8 r
  c'8 c16 c c8 a % start chorus
  f'8 16 f e8 d % 10
  c8 16 16 d8 c16 c
  c8 bes16 a g8 f16 g
  a8 16 a g8 g
  f16 g a f d e f8
  c8 f16 a c8 bes16 a
  g8 g16 g f4 % end chorus
  f4 c'8. 16
  d16 e f c d8 d
  c8 r e8. f16 % page 5
  g8^^ c,8 r d16 e
  f8. c16 d8. bes16
  c16 bes a c bes^. c^. d8^-
  c8 r f^^ r
  r8 c^- f,4
  c'8 c16 c c8 a % start chorus
  f'8 16 f e8 d % 10
  c8 16 16 d8 c16 c
  c8 bes16 a g8 f16 g
  a8 16 a g8 g
  f16 g a f d e f8
  c8 f16 a c8 bes16 a
  g8 g16 g f4 % end chorus
  r2 % page 6
  r2
  f'8 c r4
  c8^^ c^^ c4^^
  r2
  r2
  r4 c,8 f16 a
  c8 bes16 a g8 16 g
  f4. r8
  c'8 16 c c8 a
  f'8 f16 f e8 d % page 8
  c8 16 c d8 c16 c
  c8 bes16 a g4
  r2
  r2
  c8(f) c4(
  c8) c f,4
  r2
  r2
  r2
  r2
  r2
  r2
  r2
  r2
  r2
  c4(f8 a
  c2 ~
  c2~
  c2~
  c2~
  c2~
  c2)
  c8 16 c c8 a % page 11
  f'8 16 f e8 d
  c8 16 c d8 c16 c
  c8 bes16 a g8 f16 g
  a8 16 a g8 a16 g % page 12
  f8 a16 f d e f8
  c8 f16 a c8^^ bes16 a
  g8 g16 g16 f8-. r
  \bar "|."
}

SopranoLyrics = \lyricmode {
  Once a jol- ly swag- man camped by a bil- la- bong,
  Un- der the shade of a cool- i- bah tree;
  And he sang as he watched and wait- ed till his bil- ly boiled;
  "'You'll" come a- waltz- ing Ma- til- da, with "me!'"
  Waltz- ing Ma- til- da, Waltz- ing Ma- til- da, % start chorus
  You'll come a- waltz- ing Ma- til- da, with me;
  And he sang as he watched and wait- ed till his bil- ly boiled:
  'You'll come a- waltz- ing, Ma- til- da, with me!' % end chorus
  \set stanza = "2." Down came a jol- ly jol- ly jum- buck
  Up jumped the swag- man
  And he sang and stowed that jum- buck in his tuck- er- bag,
  'You'll come with me!'
  Waltz- ing Ma- til- da, Waltz- ing Ma- til- da, % start chorus
  You'll come a- waltz- ing Ma- til- da, with me;
  And he sang as he stowed that jum- buck in his tuck- er- bag:
  'You'll come a- waltz- ing, Ma- til- da, with me!' % end chorus
  \set stanza = "3." Troop- ers! One, two, three,
  'You'll come a- waltz- ing, Ma- til- da, with me!'
  \set stanza = "4." Waltz- ing Ma- til- da,
  Waltz- ing Ma- til- da,
  You'll come a- waltz- ing a- til- da with me;
  You'll come with me!'
  Ah
  \set stanza = "7." Waltz- ing Ma- til- da, Waltz- ing Ma- til- da,
  You'll come a- waltz- ing, a- til- da, with me;
  And his ghost may be heard as you pass by that bil- la- bong:
  'You'll come a- waltz- ing, Ma- til- da, with me!'
}

SopranoLyricsMidi = \lyricmode {
  "Once " "a " jol "ly " swag "man " "camped " "by " "a " bil la "bong, "
  "\nUn" "der " "the " "shade " "of " "a " cool i "bah " "tree; "
  "\nAnd " "he " "sang " "as " "he " "watched " "and " wait "ed " "till " "his " bil "ly " "boiled; "
  "\n'You'll " "come " a waltz "ing " Ma til "da, " "with " "me!' "
  "\nWaltz" "ing " Ma til "da, " Waltz "ing " Ma til "da, " % start chorus
  "\nYou'll " "come " a waltz "ing " Ma til "da, " "with " "me; "
  "\nAnd " "he " "sang " "as " "he " "watched " "and " wait "ed " "till " "his " bil "ly " "boiled: "
  "\n'You'll " "come " a waltz "ing, " Ma til "da, " "with " "me!' " % end chorus
  \set stanza = "2."
  "\nDown " "came " "a " jol "ly " jol "ly " jum "buck "
  "\nUp " "jumped " "the " swag "man "
  "\nAnd " "he " "sang " "and " "stowed " "that " jum "buck " "in " "his " tuck er "bag, "
  "\n'You'll " "come " "with " "me!' "
  "\nWaltz" "ing " Ma til "da, " Waltz "ing " Ma til "da, " % start chorus
  "\nYou'll " "come " a waltz "ing " Ma til "da, " "with " "me; "
  "\nAnd " "he " "sang " "as " "he " "stowed " "that " jum "buck " "in " "his " tuck er "bag: "
  "\n'You'll " "come " a waltz "ing, " Ma til "da, " "with " "me!' " % end chorus
  \set stanza = "3."
  "\nTroop" "ers! " "One, " "two, " "three, "
  "\n'You'll " "come " a waltz "ing, " Ma til "da, " "with " "me!' "
  \set stanza = "4."
  "\nWaltz" "ing " Ma til "da, "
  "\nWaltz" "ing " Ma til "da, "
  "\nYou'll " "come " a waltz "ing " a til "da " "with " "me; "
  "\nYou'll " "come " "with " "me!' "
  "\nAh "
  \set stanza = "7."
  "\nWaltz" "ing " Ma til "da, " Waltz "ing " Ma til "da, "
  "\nYou'll " "come " a waltz "ing, " a til "da, " "with " "me; "
  "\nAnd " "his " "ghost " "may " "be " "heard " "as " "you " "pass " "by " "that " bil la "bong: "
  "\n'You'll " "come " a waltz "ing, " Ma til "da, " "with " "me!' "
}


AltoTempo = \relative c' {
  \key f \major
  \time 2/4
  s8^\mp s s s % 1
  s8 s16 s s s s8
  s8 s16 s s8 s16 s
  s16 s s8 s^\markup{\italic ten} s16 s
  s8 s s s
  s16 s s s s s s8
  s8 s s s
  s8 s s s
  s8^\mf ^\< s16 s s8 s \!
  s8^\f \! s16 s s8 s 
  s8 s16 s s8 s16 s
  s8 ^\> s16 s \! s8^\fermata ^\mf s16^\mp s
  s8 s16 s s8 s
  s16 s s s s s s8
  s8 s s s
  s8 s s4
  s8 s16 s s8 s16 s
  s16(s) s s s s s8
  s8 s16 s s8 s16 s
  s8 16 s s8^\markup{\italic ten} s16^\mf s
  s8 16 s s8 s
  s16 s s s s s s8
  s8^\< s16 s\! s8^\f s16 s
  s8 16 s s4
  s8^\mf ^\< s16 s s8 s \!
  s8^\f \! s16 s s8 s 
  s8 s16 s s8 s16 s
  s8 ^\> s16 s \! s8^\fermata ^\mf s16^\mp s
  s8 s16 s s8 s
  s16 s s s s s s8
  s8 s s s
  s8 s s4
  s2 % psss 6
  s2
  s8^\f s s4
  s8 s s4^\fermata
  s2
  s2
  s4 s8^\f s16 s
  s8 s16 s s8 s16 s
  s4. s8
  s8^\mf^\< s16 s s8 s\!
  s8^\f s16 s s8 s
  s8 s16 s s8 s16 s
  s8^\> s16 s s4^\mf\!
  s2
  s2
  s8^\f(s) s(s16) s
  s8 s16 s s4
  s2
  s2
  s2
  s2
  s4^\fermata s8^\p s
  s8 s s s
  s4 s8 s
  s8(s)s s
  s8^\> s s4
  s2^\pp\! ~
  s2~
  s2~
  s2~
  s2^\markup{Rit.}~
  s2^\>~
  s2\!
  s8^\mf^\markup{Tempo primo}^\< s16 s s8 s
  s8^\f\! s16 s s8 s
  s8 s16 s16 s8 s16^\> s
  s8 s16 s s8^\mf^\fermata \! s8
  s2
  s2
  s2
  s8 s^-^\pp s s8
  \bar "|."
}

%AltoMusic = \relative c' {
%  \key f \major
%  \time 2/4
%  c8^\mp f d-- e-- % 1
%  f8 e16 e d-- c-- bes8--
%  c8 f16 f g8 f16 f
%  e16 e f8 g^\markup{\italic ten} d16 e
%  f8 c d e
%  f16 f e e d c bes8
%  c8 r c' f,
%  d8 e f r
%  a8^\mf ^\< f16 f g8 a \! % start chorus
%  bes8^\f \! a16 a c8 bes 
%  c8 f,16 f f8 f16 f
%  a8 ^\> g16 f \! e8^\fermata ^\mf d16^\mp e
%  f8 e16 e d8 e
%  f16 f e e d c bes8
%  c8 r c' r
%  r8 e, f4 % end chorus
%  a8 16 a g8 g16 g
%  f16(g) a f d e f8
%  c8f16 a c8 16 c
%  c8 16 c c8^\markup{\italic ten} f,16^\mf g
%  a8 16 a g8 g
%  f16 g a f d e f8
%  c8^\< f16 a\! c8^\f bes16 a
%  g8 16 g f4
%  a8^\mf ^\< f16 f g8 a \! % start chorus
%  bes8^\f \! a16 a c8 bes 
%  c8 f,16 f f8 f16 f
%  a8 ^\> g16 f \! e8^\fermata ^\mf d16^\mp e
%  f8 e16 e d8 e
%  f16 f e e d c bes8
%  c8 r c' r
%  r8 e, f4 % end chorus
%  r2 % page 6
%  r2
%  a8^\f f r4
%  g8^^ g^^ g4^^^\fermata
%  r2
%  r2 % page 7
%  r4 c,8^\f d16 f
%  e8 d16 c d8 e16 e
%  f4. r8
%  a8^\mf^\< f16 f g8 a\!
%  bes8^\f a16 a c8 bes % page 8
%  c8 f,16 f f8 f16 f
%  a8^\> g16 f e4^\mf\!
%  r2
%  r2
%  c'8^\f(a) a(g16) f
%  e8 e16 e f4
%  r2
%  r2
%  r2
%  r2
%  r4^\fermata d8^\p e
%  f8^\markup{\italic Melodramatically}(g) a a
%  g4 a8 g
%  f8(g)a f
%  d8^\> e f4
%  c2^\pp\! ~
%  c2~
%  c2~
%  c2~
%  c2^\markup{Rit.}~
%  c2^\>~
%  c2\!
%  a'8^\mf^\markup{Tempo primo}^\< f16 f g8 a % page 11
%  bes8^\f\! a16 a c8 bes
%  c8 f,16 f16 f8 f16^\> f
%  a8 g16 f e8^\mf^\fermata \! r8
%  r2 % page 12
%  r2
%  r2
%  r8 e^-^\pp f-. r8
%  \bar "|."
%}

AltoMusic = \relative c' {
  \key f \major
  \time 2/4
  c8 f d-- e-- % 1
  f8 e16 e d-- c-- bes8--
  c8 f16 f g8 f16 f
  e16 e f8 g d16 e
  f8 c d e
  f16 f e e d c bes8
  c8 r c' f,
  d8 e f r
  a8 f16 f g8 a % start chorus
  bes8 a16 a c8 bes 
  c8 f,16 f f8 f16 f
  a8 g16 f e8^\fermata d16 e
  f8 e16 e d8 e
  f16 f e e d c bes8
  c8 r c' r
  r8 e, f4 % end chorus
  a8 16 a g8 g16 g
  f16(g) a f d e f8
  c8f16 a c8 16 c
  c8 16 c c8 f,16 g
  a8 16 a g8 g
  f16 g a f d e f8
  c8 f16 a c8 bes16 a
  g8 16 g f4
  a8 f16 f g8 a % start chorus
  bes8 a16 a c8 bes 
  c8 f,16 f f8 f16 f
  a8 g16 f e8^\fermata d16 e
  f8 e16 e d8 e
  f16 f e e d c bes8
  c8 r c' r
  r8 e, f4 % end chorus
  r2 % page 6
  r2
  a8 f r4
  g8^^ g^^ g4^^^\fermata
  r2
  r2 % page 7
  r4 c,8 d16 f
  e8 d16 c d8 e16 e
  f4. r8
  a8 f16 f g8 a
  bes8 a16 a c8 bes % page 8
  c8 f,16 f f8 f16 f
  a8 g16 f e4
  r2 % page 8b
  r2
  c'8(a) a (g16) f % page 9
  e8 e16 e f4
  r2
  r2
  r2
  r2
  r4^\fermata d8 e
  f8(g) a a
  g4 a8 g
  f8(g)a f
  d8 e f4
  c2 ~
  c2~
  c2~
  c2~
  c2~
  c2~
  c2
  a'8 f16 f g8 a % page 11
  bes8 a16 a c8 bes
  c8 f,16 f16 f8 f16 f
  a8 g16 f e8 r8
  r2 % page 12
  r2
  r2
  r8 e^- f-. r8
  \bar "|."
}

AltoLyrics = \lyricmode {
  Once a swag- man camped by a bil- la- bong,
  Un- der the shade of a cool- i- bah tree;
  And he sang and watched and wait- ed till his bil- ly boiled;
  "'You'll" come you'll come with "me!'"
  Waltz- ing Ma- til- da, Waltz- ing Ma- til- da, % start chorus
  You'll come a- waltz- ing Ma- til- da, with me;
  And he sang as he watched and wait- ed till his bil- ly boiled:
  'You'll come. with me! % end chorus
  \set stanza = "2." Down came a jum- buck to drink at the bil- la- bong,
  Up jumped the swag- man and grabbed him with glee,
  And he sang as he stowed that jum- buck in his tuck- er- bag,
  'You'll come a- waltz- ing, Ma- til- da with me!'
  Waltz- ing Ma- til- da, Waltz- ing Ma- til- da, % start chorus
  You'll come a- waltz- ing Ma- til- da, with me;
  And he sang as he stowed that jum- buck in his tuck- er- bag:
  'You'll come. with me! % end chorus
  \set stanza = "3." Troop- ers! One, two, three:
  You'll come a- waltz- ing, Ma- til- da, with me!'
  \set stanza = "4." Waltz- ing Ma- til- da,
  Waltz- ing Ma- til- da,
  You'll come a- waltz- ing Ma- til- da, with me;
  You'll come Ma- til- da, with me!'
  \set stanza = "6."And his
  ghost may be heard as you pass by that bil- la- bong:
  Ah
  \set stanza = "7." Waltz- ing Ma- til- da,
  Waltz- ing Ma- til- da,
  You'll come a- waltz- ing, Ma- til- da, with me;
  with me!'
}

AltoLyricsMidi = \lyricmode {
  "Once " "a " swag "man " "camped " "by " "a " bil la "bong, "
  "\nUn" "der " "the " "shade " "of " "a " cool i "bah " "tree; "
  "\nAnd " "he " "sang " "and " "watched " "and " wait "ed " "till " "his " bil "ly " "boiled; "
  "\n'You'll " "come " "you'll " "come " "with " "me!' "
  "\nWaltz" "ing " Ma til "da, " Waltz "ing " Ma til "da, " % start chorus
  "\nYou'll " "come " a waltz "ing " Ma til "da, " "with " "me; "
  "\nAnd " "he " "sang " "as " "he " "watched " "and " wait "ed " "till " "his " bil "ly " "boiled: "
  "\n'You'll " "come. " "with " "me! " % end chorus
  \set stanza = "2."
  "\nDown " "came " "a " jum "buck " "to " "drink " "at " "the " bil la "bong, "
  "\nUp " "jumped " "the " swag "man " "and " "grabbed " "him " "with " "glee, "
  "\nAnd " "he " "sang " "as " "he " "stowed " "that " jum "buck " "in " "his " tuck er "bag, "
  "\n'You'll " "come " a waltz "ing, " Ma til "da " "with " "me!' "
  "\nWaltz" "ing " Ma til "da, " Waltz "ing " Ma til "da, " % start chorus
  "\nYou'll " "come " a waltz "ing " Ma til "da, " "with " "me; "
  "\nAnd " "he " "sang " "as " "he " "stowed " "that " jum "buck " "in " "his " tuck er "bag: "
  "\n'You'll " "come. " "with " "me! " % end chorus
  \set stanza = "3."
  "\nTroop" "ers! " "One, " "two, " "three: "
  "\nYou'll " "come " a waltz "ing, " Ma til "da, " "with " "me!' "
  \set stanza = "4."
  "\nWaltz" "ing " Ma til "da, "
  "\nWaltz" "ing " Ma til "da, "
  "\nYou'll " "come " a waltz "ing " Ma til "da, " "with " "me; "
  "\nYou'll " "come " Ma til "da, " "with " "me!' "
  \set stanza = "6."
  "\nAnd " "his "
  "\nghost " "may " "be " "heard " "as " "you " "pass " "by " "that " bil la "bong: "
  "\nAh "
  \set stanza = "7."
  "\nWaltz" "ing " Ma til "da, "
  "\nWaltz" "ing " Ma til "da, "
  "\nYou'll " "come " a waltz "ing, " Ma til "da, " "with " "me; "
  "\nwith " "me!' "
}

TenorTempo = \relative c {
  \key f \major
  \time 2/4
  s16^\mp s s8 s4 % 1
  s2
  s2
  s4 s^\markup{\italic ten}
  s2 % 5
  s2
  s2
  s2
  s8^\mf ^\< s s4 % start chorus
  s2 % 10
  s2^\f \!
  s8^\> s s4 ^\mf \!
  s8 s ^\mp s4
  s2
  s2 % 15
  s2
  s2
  s2
  s2
  s4 s^\f % 20
  s2^\mp
  s8^\< s\! s^\mf^\> s\!
  s2^\mp
  s2
  s2^\mf ^\< % 25
  s2
  s2^\f \!
  s4^\> s ^\fermata ^\mf \!
  s8 s^\mp s4
  s2 % 30
  s2
  s2
  s2^^^\f
  s2
  s2 % 35
  s2
  s2^\ff^\markup{\italic Roughly}
  s2
  s4 s8^^^\> s16 s \!
  s2^\f % 40
  s2
  s8^\mf^\< s s s\!
  s2^\<
  s2^\f\!
  s4^\> s^\mf\!
  s2^\ff^\markup{\italic Roughly}
  s2
  s2^\f
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2^\pp
  s2
  s2
  s2^\markup{Rit.}
  s2^\>
  s2\!
  s2^\mf^\markup{Tempo primo}^\<
  s4 s8 s \!
  s2
  s4^\> s^\mf^\fermata \!
  s2
  s2
  s2
  s8 s^\pp s4
  \bar "|."
}

%TenorMusic = \relative c {
%  \key f \major
%  \time 2/4
%  f16^\mp g a c d8-- c-- % 1
%  a8 f16 a c16 a a8
%  c,8 f16 a c8 a16 a
%  bes16 bes c8 d^\markup{\italic ten} c
%  c8 f d c
%  a16 g f a f e d8
%  c8 f16 a c8 d16 d
%  bes8 c16 c a8 r
%  f8^\mf ^\< a16 a bes8 c % start chorus
%  d8  c16 c d8 e
%  f8^\f \! (c) bes c
%  d8^\> g, c^\fermata ^\mf \! r
%  r8 c^\mp bes c
%  d8 c bes16 a g8
%  c,8 r c' r
%  r8 c a4 % end chorus
%  c4 g8. g16
%  a16 g f a f8 g
%  f8(c b') a % page 5
%  d8(f e^\f) r
%  d8^\mp(c bes g
%  a8^\< c\! f^\mf^\> bes,\!)
%  a8^\mp r a r
%  r8 g^- a4
%  f8^\mf ^\< a16 a bes8 c % start chorus
%  d8  c16 c d8 e
%  f8^\f \! (c) bes c
%  d8^\> g, c^\fermata ^\mf \! r
%  r8 c^\mp bes c
%  d8 c bes16 a g8
%  c,8 r c' r
%  r8 c a4 % end chorus
%  a8^^^\f a16 a g8 g % page 6
%  f16 g a f d^- e^- f8^-
%  c'8 a16 c f8 c
%  d8^^ f^^ e4^^^\fermata
%  a,8^\ff^\markup{\italic Roughly} a16 a g8 g
%  f16 g a f bes^- c^- d8^-
%  c8 f,16 a c8^^^\> bes16 a\!
%  g8^\f(a) bes c^-
%  a4. r8
%  f8^\mf^\< a16 a bes8 c\!
%  d8^\< c16 c d8 e % page 8
%  f8^\f\!(c) bes c
%  d8^\> g, c4^\mf\!
%  a8^\ff^\markup{\italic Roughly} a16 a g8 g
%  f16 g a f bes^- c^- d8^-
%  c8^\f f,16 a c8^^ bes16 a % page 9
%  g8 16 g a4
%  r2
%  r2
%  r2
%  r2
%  r2^\fermata
%  r2
%  r2
%  r2
%  r2
%  r2
%  c,4^\pp( f8 a
%  c2~
%  c2~
%  c2^\markup{Rit.}~
%  c2^\>~
%  c2\! )
%  f,8^\mf^\markup{Tempo primo}^\< a16 a bes8 c % page 11
%  d8 c16 c d8 e \!
%  f8(c) bes c
%  d8^\> g, c^\mf^\fermata \! r
%  r2 % page 12
%  r2
%  r2
%  r8 c8--^\pp a-. r
%  \bar "|."
%}

TenorMusic = \relative c {
  \key f \major
  \time 2/4
  f16 g a c d8-- c-- % 1
  a8 f16 a c16 a a8
  c,8 f16 a c8 a16 a
  bes16 bes c8 d c
  c8 f d c % 5
  a16 g f a f e d8
  c8 f16 a c8 d16 d
  bes8 c16 c a8 r
  f8 a16 a bes8 c % start chorus
  d8  c16 c d8 e % 10
  f8(c) bes c
  d8 g, c^\fermata r
  r8 c bes c
  d8 c bes16 a g8
  c,8 r c' r % 15
  r8 c a4 % end chorus
  c4 g8. g16
  a16 g f a f8 g
  f8(c b') a % page 5
  d8(f e) r % 20
  d8(c bes g
  a8 c f bes,)
  a8 r a r
  r8 g^- a4
  f8 a16 a bes8 c % start chorus
  d8  c16 c d8 e
  f8(c) bes c
  d8 g, c^\fermata r
  r8 c bes c
  d8 c bes16 a g8
  c,8 r c' r
  r8 c a4 % end chorus
  a8^^ a16 a g8 g % page 6
  f16 g a f d^- e^- f8^-
  c'8 a16 c f8 c
  d8^^ f^^ e4^^^\fermata
  a,8 a16 a g8 g
  f16 g a f bes^- c^- d8^-
  c8 f,16 a c8^^ bes16 a
  g8(a) bes c^-
  a4. r8
  f8 a16 a bes8 c
  d8 c16 c d8 e % page 8
  f8(c) bes c
  d8 g, c4
  a8 a16 a g8 g
  f16 g a f bes^- c^- d8^-
  c8 f,16 a c8^^ bes16 a % page 9
  g8 16 g a4
  r2
  r2
  r2
  r2
  r2^\fermata
  r2
  r2
  r2
  r2
  r2
  c,4( f8 a
  c2~
  c2~
  c2~
  c2~
  c2)
  f,8 a16 a bes8 c % page 11
  d8 c16 c d8 e
  f8(c) bes c
  d8 g, c r
  r2 % page 12
  r2
  r2
  r8 c8-- a-. r
  \bar "|."
}

TenorLyrics = \lyricmode {
  Once a jol- ly swag- man camped by a bil- la- bong,
  Un- der the shade of a cool- i- bah tree;
  And sang and watched and wait- ed till his bil- ly boiled;
  "'You'll" come a- waltz- ing Ma- til- da, with "me!'"
  Waltz- ing Ma- til- da, Waltz- ing a- til- da, % start chorus
  You'll come, you'll come with me;
  and wait- ed till his bil- ly boiled;
  'You'll come, with me!' % end chorus
  \set stanza = "2." Down came a jol- ly jol- ly jum- buck
  Up with glee sang
  'You'll come with me!'
  Waltz- ing Ma- til- da, Waltz- ing a- til- da, % start chorus
  You'll come, you'll come with me;
  that jum- buck in his tuc- ker bag:
  'You'll come, with me!' % end chorus
  \set stanza = "3." Up rode the squat- ter, mount- ed on his thor- ough- bred,
  Up rode the troop- ers, One, two, three:
  'Whose is that jum- buck you've got in your tuck- er- bag?
  You'll come a- waltz- ing, Ma- til- da, with me!'
  \set stanza = "4." Waltz- ing Ma- til- da,
  Waltz- ing Ma- til- da,
  You'll come, you'll come with me;
  'Whose is that jum- buck you've got in your tuck- er- bag?
  You'll come a- waltz- ing, Ma- til- da, with me!'
  Ah
  \set stanza = "7." Waltz- ing Ma- til- da, Waltz- ing Ma- til- da,
  You'll come, you'll come with me;
  with me!'
}

TenorLyricsMidi = \lyricmode {
  "Once " "a " jol "ly " swag "man " "camped " "by " "a " bil la "bong, "
  "\nUn" "der " "the " "shade " "of " "a " cool i "bah " "tree; "
  "\nAnd " "sang " "and " "watched " "and " wait "ed " "till " "his " bil "ly " "boiled; "
  "\n'You'll " "come " a waltz "ing " Ma til "da, " "with " "me!' "
  "\nWaltz" "ing " Ma til "da, " Waltz "ing " a til "da, " % start chorus
  "\nYou'll " "come, " "you'll " "come " "with " "me; "
  "\nand " wait "ed " "till " "his " bil "ly " "boiled; "
  "\n'You'll " "come, " "with " "me!' " % end chorus
  \set stanza = "2."
  "\nDown " "came " "a " jol "ly " jol "ly " jum "buck "
  "\nUp " "with " "glee " "sang "
  "\n'You'll " "come " "with " "me!' "
  "\nWaltz" "ing " Ma til "da, " Waltz "ing " a til "da, " % start chorus
  "\nYou'll " "come, " "you'll " "come " "with " "me; "
  "\nthat " jum "buck " "in " "his " tuc "ker " "bag: "
  "\n'You'll " "come, " "with " "me!' " % end chorus
  \set stanza = "3."
  "\nUp " "rode " "the " squat "ter, " mount "ed " "on " "his " thor ough "bred, "
  "\nUp " "rode " "the " troop "ers, " "One, " "two, " "three: "
  "\n'Whose " "is " "that " jum "buck " "you've " "got " "in " "your " tuck er "bag? "
  "\nYou'll " "come " a waltz "ing, " Ma til "da, " "with " "me!' "
  \set stanza = "4."
  "\nWaltz" "ing " Ma til "da, "
  "\nWaltz" "ing " Ma til "da, "
  "\nYou'll " "come, " "you'll " "come " "with " "me; "
  "\n'Whose " "is " "that " jum "buck " "you've " "got " "in " "your " tuck er "bag? "
  "\nYou'll " "come " a waltz "ing, " Ma til "da, " "with " "me!' "
  "\nAh "
  \set stanza = "7."
  "\nWaltz" "ing " Ma til "da, " Waltz "ing " Ma til "da, "
  "\nYou'll " "come, " "you'll " "come " "with " "me; "
  "\nwith " "me!' "
}

BassTempo = \relative c {
  \key f \major
  \time 2/4
  s2^\mp
  s2
  s2
  s4 s^\markup{\italic ten}
  s2 % 5
  s2
  s2
  s2
  s2^\mf ^\<
  s2^\f \! % 10
  s2
  s4 ^\> s4^\mf \!
  s2
  s2
  s2 % 15
  s2
  s2
  s2
  s2
  s4 s^\f % 20
  s2
  s2
  s2^\mp
  s2
  s2^\mf ^\< % 25
  s2^\f \!
  s2
  s4 ^\> s^\mf \!
  s2
  s2 % 30
  s2
  s2
  s2^\f
  s2
  s2 % 35
  s2
  s2^\ff^\markup{\italic Roughly}
  s2
  s4 s^\>
  s2^\f % 40
  s2
  s2^\mf^\<
  s2^\f\!
  s2
  s4^\> s^\mf\! % 45
  s2^\ff^\markup{\italic Roughly}
  s2
  s2^\f
  s4 s^\<
  s2^\ff\! % 50
  s2
  s2
  s2
  s2
  s2 % 55
  s2
  s2
  s2
  s2
  s2 % 60
  s4 s^\pp
  s2
  s2^\markup{Rit.}
  s2^\>
  s2\! % 65
  s2^\mf^\markup{Tempo primo}^\<
  s2^\f\!
  s2
  s4^\> s^\mf \!
  s2 % 70
  s2
  s2
  s8 s^\pp s4
  \bar "|."
}

%BassMusic = \relative c {
%  \key f \major
%  \time 2/4
%  f8^\mp d bes-- c-- % 1
%  d8 c16 c bes-- a-- g8--
%  c8 d16 d e8 f16 f
%  g16 g a8 bes^\markup{\italic ten} c
%  f,8 a, bes c
%  d16 d c c bes a g8
%  c8 e c' r
%  r8 c, f r
%  f2^\mf ^\< % start chorus
%  bes2^\f \!
%  a4 bes8 a
%  g8 ^\> g c,^\fermata^\mf \! r
%  r2
%  r2
%  c8 r c' r
%  r8 c, f4 % end chorus
%  f4 e8. e16
%  d8(c) bes4
%  a8(a' g) f % page 5
%  bes8(d c^\f) r
%  r2
%  r2
%  c8^\mp r c, r
%  r8 e^- f4
%  f2^\mf ^\< % start chorus
%  bes2^\f \!
%  a4 bes8 a
%  g8 ^\> g c,^\fermata^\mf \! r
%  r2
%  r2
%  c8 r c' r
%  r8 c, f4 % end chorus
%  f8^\f 16 f e8 c
%  d16 e f bes g^- a^- bes8^-
%  c,8 f16 a c8 a
%  bes8^^ d^^ c4^^^\fermata
%  a8^\ff^\markup{\italic Roughly} a16 a g8 g
%  f16 g a f d^- e^- f8^-
%  c8 f16 a c8^^^\> bes16 a
%  g8^\f(a) bes c^-
%  f,4. r8
%  f2^\mf^\<
%  bes2^\f\! % page 8
%  a4 bes8 a
%  g8^\> g c,4^\mf\!
%  a'8^\ff^\markup{\italic Roughly} a16 a g8 g
%  f16 g a f d^- e^- f8^-
%  c8^\f f16 a c8^^ bes16 a
%  g8 16 g f4^\<
%  a8^\ff\! 16 a g8 16 g
%  f16 g a f d e f8
%  c8 f16 a c8^^ 16 c
%  c8^^ c c4(
%  c4^\fermata) r
%  r2
%  r2
%  r2
%  r2
%  r2
%  r2
%  r4 f,,8--^\pp a--
%  c4^^ bes8 a
%  g4^\markup{Rit.} g
%  f2^\> ~
%  f2\!
%  f'2^\mf^\markup{Tempo primo}^\< % page 11
%  bes2^\f\!
%  a4 bes8 a
%  g8^\> g c,^\mf^\fermata \! r
%  r2 % page 12
%  r2
%  r2
%  r8 c--^\pp f-. r
%  \bar "|."
%}

BassMusic = \relative c {
  \key f \major
  \time 2/4
  f8 d bes-- c-- % 1
  d8 c16 c bes-- a-- g8--
  c8 d16 d e8 f16 f
  g16 g a8 bes c
  f,8 a, bes c
  d16 d c c bes a g8
  c8 r c' r
  r8 c, f r
  f2 % start chorus
  bes2
  a4 bes8 a
  g8 g c,^\fermata r
  r2
  r2
  c8 r c' r
  r8 c, f4 % end chorus
  f4 e8. e16
  d8(c) bes4
  a8(a' g) f % page 5
  bes8(d c) r
  r2
  r2
  c8 r c, r
  r8 e^- f4
  f2 % start chorus
  bes2
  a4 bes8 a
  g8 g c,^\fermata r
  r2
  r2
  c8 r c' r
  r8 c, f4 % end chorus
  f8 16 f e8 c
  d16 e f bes g^- a^- bes8^-
  c,8 f16 a c8 a
  bes8^^ d^^ c4^^^\fermata
  a8 a16 a g8 g
  f16 g a f d^- e^- f8^-
  c8 f16 a c8^^ bes16 a
  g8(a) bes c^-
  f,4. r8
  f2
  bes2 % page 8
  a4 bes8 a
  g8 g c,4
  a'8 a16 a g8 g
  f16 g a f d^- e^- f8^-
  c8 f16 a c8^^ bes16 a
  g8 16 g f4
  a8 16 a g8 16 g
  f16 g a f d e f8
  c8 f16 a c8^^ 16 c
  c8^^ c c4(
  c4^\fermata) r
  r2
  r2
  r2
  r2
  r2
  r2
  r4 f,,8-- a--
  c4^^ bes8 a
  g4 g
  f2 ~
  f2
  f'2 % page 11
  bes2
  a4 bes8 a
  g8 g c,^\fermata r
  r2 % page 12
  r2
  r2
  r8 c-- f-. r
  \bar "|."
}

BassLyrics = \lyricmode {
  Once a swag- man camped by a bil- la- bong,
  Un- der the shade of a cool- i- bah tree;
  And sang and watched and wait- ed till his bil- ly boiled;
  "'You'll" come with "me!'"
  come, come You'll come, you'll come with me; % start chorus
  'You'll come, with me!' % end chorus
  \set stanza = "2." Down came a jum- buck
  Up with glee
  'You'll come with me!'
  come, come You'll come, you'll come with me; % start chorus
  'You'll come, with me!' % end chorus
  \set stanza = "3." Up rode the squat- ter, mount- ed on his thor- ough- bred,
  Up rode the troop- ers, One, two, three:
  'Whose is that jum- buck
  you've got in your tuck- er- bag?
  You'll come a- waltz- ing, ma- til- da, with me!'
  \set stanza = "4." Come,
  come, You'll come, you'll come with me;
  'Whose is that jum- buck you've got in your tuck- er- bag?
  You'll come a- waltz- ing, Ma- til- da, with me!'
  \set stanza = "5." Up jumped the swag- man and sprang in- to the bil- la- bong,
  'You'll ne- ver take me a- live.' said he.
  'Ne- ver take me a- live! He! He!'
  \set stanza = "7." Come, come
  You'll come, you'll come with me;
  with me!
}

BassLyricsMidi = \lyricmode {
  "Once " "a " swag "man " "camped " "by " "a " bil la "bong, "
  "\nUn" "der " "the " "shade " "of " "a " cool i "bah " "tree; "
  "\nAnd " "sang " "and " "watched " "and " wait "ed " "till " "his " bil "ly " "boiled; "
  "\n'You'll " "come " "with " "me!' "
  "\ncome, " "come " "You'll " "come, " "you'll " "come " "with " "me; " % start chorus
  "\n'You'll " "come, " "with " "me!' " % end chorus
  \set stanza = "2."
  "\nDown " "came " "a " jum "buck "
  "\nUp " "with " "glee "
  "\n'You'll " "come " "with " "me!' "
  "\ncome, " "come " "You'll " "come, " "you'll " "come " "with " "me; " % start chorus
  "\n'You'll " "come, " "with " "me!' " % end chorus
  \set stanza = "3."
  "\nUp " "rode " "the " squat "ter, " mount "ed " "on " "his " thor ough "bred, "
  "\nUp " "rode " "the " troop "ers, " "One, " "two, " "three: "
  "\n'Whose " "is " "that " jum "buck "
  "\nyou've " "got " "in " "your " tuck er "bag? "
  "\nYou'll " "come " a waltz "ing, " ma til "da, " "with " "me!' "
  \set stanza = "4."
  "\nCome, "
  "\ncome, " "You'll " "come, " "you'll " "come " "with " "me; "
  "\n'Whose " "is " "that " jum "buck " "you've " "got " "in " "your " tuck er "bag? "
  "\nYou'll " "come " a waltz "ing, " Ma til "da, " "with " "me!' "
  \set stanza = "5."
  "\nUp " "jumped " "the " swag "man " "and " "sprang " in "to " "the " bil la "bong, "
  "\n'You'll " ne "ver " "take " "me " a "live.' " "said " "he. "
  "\n'Ne" "ver " "take " "me " a "live! " "He! " "He!' "
  \set stanza = "7."
  "\nCome, " "come "
  "\nYou'll " "come, " "you'll " "come " "with " "me; "
  "\nwith " "me! "
}

PianoDynamics = {
  \tempo Gaily 4=88
  s2
  s2
  s2
  s4 s4^\markup{\italic ten.}
  s2
  s2
  s2
  s2
  s2^\mf^\<
  s2\!^\f
  s2
  s4\> s8^\mf\! s^\mp
  s8 s^\mp s4
  s2
  s2
  s2
  s2^\mf^\markup{alto prominent}
  s2
  s2
  s4 s^\markup{\italic ten.} % Need mp on sop line
  s2^\mp
  s2
  s2^\mp s2
  s2^\mf
  s2
  s2
  s4 s8^\mf s^\mp
  s8 s^\mp s4
  s2
  s2
  s2
  s2
  s2
  s2 % Need f on sop line
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2
  s2^\ff
  s2
  s2^\f s2^\markup{strict time}
  s2
  s2
  s2
  s2
  s4 s^\p
  s2^\markup{\italic Melodramatically}
  s2
  s2
  s2
  s2
  s2^\pp
  s4 s^\pp
  s2
  s2^\markup{Rit.}
  s2
  s2
}


\header {
  title = "Waltzing Matilda"
  composer = "Marie Cowan"
  arranger = "arr. Thomas Wood"
  poet = "A. B. (Banjo) Paterson"
}
%\include "satb.ly"
%\score {
%  \ChoirStaff {
%    \new Staff = sopranos {
%      new Voice = sopranos { \SopranoMusic }
%    }
%  }
%}

\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #10
}

global = {
%  \key c \major
%  \time 4/4
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
	  \new Voice \RehearsalTrack
	  \new Voice \SopranoTempo
	  \new Voice = "sopranos" { << \global \SopranoMusic >> }
	  \context Lyrics = "sopranos" \lyricsto "sopranos" \SopranoLyrics
	>>
	\new Staff = "altos" <<
          \new Voice \AltoTempo
	  \new Voice = "altos" { << \global \AltoMusic >> }
	  \context Lyrics = "altos" \lyricsto "altos" \AltoLyrics
	>>
	\new Staff = "tenori" <<
          \new Voice \TenorTempo
	  \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
	  \context Lyrics = "tenors" \lyricsto "tenors" \TenorLyrics
	>>
	\new Staff = "basses" <<
          \new Voice \BassTempo
	  \new Voice = "basses" { \clef bass << \global \BassMusic >> }
	  \context Lyrics = "basses" \lyricsto "basses" \BassLyrics
	>>
      >>
				%    \new PianoStaff <<
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \partCombine
        << \global \SopranoMusic >>
        << \global \AltoMusic >>
      >>
      \new Dynamics \PianoDynamics
      \new Staff <<
        \clef bass
        \set Staff.printPartCombineTexts = ##f
        \partCombine
        << \global \TenorMusic >>
        << \global \BassMusic >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "single-noacc"
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
	  \new Voice \RehearsalTrack
	  \new Voice \SopranoTempo
	  \new Voice = "sopranos" { << \global \SopranoMusic >> }
	  \context Lyrics = "sopranos" \lyricsto "sopranos" \SopranoLyrics
	>>
	\new Staff = "altos" <<
          \new Voice \AltoTempo
	  \new Voice = "altos" { << \global \AltoMusic >> }
	  \context Lyrics = "altos" \lyricsto "altos" \AltoLyrics
	>>
	\new Staff = "tenori" <<
          \new Voice \TenorTempo
	  \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
	  \context Lyrics = "tenors" \lyricsto "tenors" \TenorLyrics
	>>
	\new Staff = "basses" <<
          \new Voice \BassTempo
	  \new Voice = "basses" { \clef bass << \global \BassMusic >> }
	  \context Lyrics = "basses" \lyricsto "basses" \BassLyrics
	>>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-noacc"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
	  \new Voice \RehearsalTrack
	  \new Voice \SopranoTempo
	  \new Voice = "sopranos" { << \global \SopranoMusic >> }
	  \context Lyrics = "sopranos" \lyricsto "sopranos" \SopranoLyrics
	>>
	\new Staff = "altos" <<
          \new Voice \AltoTempo
	  \new Voice = "altos" { << \global \AltoMusic >> }
	  \context Lyrics = "altos" \lyricsto "altos" \AltoLyrics
	>>
	\new Staff = "tenori" <<
          \new Voice \TenorTempo
	  \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
	  \context Lyrics = "tenors" \lyricsto "tenors" \TenorLyrics
	>>
	\new Staff = "basses" <<
          \new Voice \BassTempo
	  \new Voice = "basses" { \clef bass << \global \BassMusic >> }
	  \context Lyrics = "basses" \lyricsto "basses" \BassLyrics
	>>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-noacc-sop"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
	  \new Voice \RehearsalTrack
	  \new Voice \SopranoTempo
	  \new Voice = "sopranos" { << \global \SopranoMusic >> }
	  \context Lyrics = "sopranos" \lyricsto "sopranos" \SopranoLyrics
	>>
	\new Staff = "altos" <<
          \magnifyStaff #4/7
          \new Voice \AltoTempo
	  \new Voice = "altos" { << \global \AltoMusic >> }
	  \context Lyrics = "altos" \lyricsto "altos" {\tiny \AltoLyrics}
	>>
	\new Staff = "tenori" <<
          \magnifyStaff #4/7
          \new Voice \TenorTempo
	  \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
	  \context Lyrics = "tenors" \lyricsto "tenors" {\tiny \TenorLyrics}
	>>
	\new Staff = "basses" <<
          \magnifyStaff #4/7
          \new Voice \BassTempo
	  \new Voice = "basses" { \clef bass << \global \BassMusic >> }
	  \context Lyrics = "basses" \lyricsto "basses" {\tiny \BassLyrics}
	>>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-noacc-alto"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
          \magnifyStaff #4/7
	  \new Voice \RehearsalTrack
	  \new Voice \SopranoTempo
	  \new Voice { << \global \SopranoMusic >> }
	  \addlyrics {\tiny \SopranoLyrics}
	>>
	\new Staff = "altos" <<
          \new Voice \AltoTempo
	  \new Voice { << \global \AltoMusic >> }
	  \addlyrics \AltoLyrics
	>>
	\new Staff = "tenori" <<
          \magnifyStaff #4/7
          \new Voice \TenorTempo
	  \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
	  \context Lyrics = "tenors" \lyricsto "tenors" {\tiny \TenorLyrics}
	>>
	\new Staff = "basses" <<
          \magnifyStaff #4/7
          \new Voice \BassTempo
	  \new Voice = "basses" { \clef bass << \global \BassMusic >> }
	  \context Lyrics = "basses" \lyricsto "basses" {\tiny \BassLyrics}
	>>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-noacc-tenor"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
          \magnifyStaff #4/7
	  \new Voice \RehearsalTrack
	  \new Voice \SopranoTempo
	  \new Voice { << \global \SopranoMusic >> }
	  \addlyrics {\tiny \SopranoLyrics}
	>>
	\new Staff = "altos" <<
          \magnifyStaff #4/7
          \new Voice \AltoTempo
	  \new Voice = "altos" { << \global \AltoMusic >> }
	  \context Lyrics = "altos" \lyricsto "altos" {\tiny \AltoLyrics}
	>>
	\new Staff = "tenori" <<
          \new Voice \TenorTempo
	  \new Voice { \clef "treble_8" << \global \TenorMusic >> }
	  \addlyrics \TenorLyrics
	>>
	\new Staff = "basses" <<
          \magnifyStaff #4/7
          \new Voice \BassTempo
	  \new Voice = "basses" { \clef bass << \global \BassMusic >> }
	  \context Lyrics = "basses" \lyricsto "basses" {\tiny \BassLyrics}
	>>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-noacc-bass"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
          \magnifyStaff #4/7
	  \new Voice \RehearsalTrack
	  \new Voice \SopranoTempo
	  \new Voice = "sopranos" { << \global \SopranoMusic >> }
	  \context Lyrics = "sopranos" \lyricsto "sopranos" {\tiny \SopranoLyrics}
	>>
	\new Staff = "altos" <<
          \magnifyStaff #4/7
          \new Voice \AltoTempo
	  \new Voice = "altos" { << \global \AltoMusic >> }
	  \context Lyrics = "altos" \lyricsto "altos" {\tiny \AltoLyrics}
	>>
	\new Staff = "tenori" <<
          \magnifyStaff #4/7
          \new Voice \TenorTempo
	  \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
	  \context Lyrics = "tenors" \lyricsto "tenors" {\tiny \TenorLyrics}
	>>
	\new Staff = "basses" <<
          \new Voice \BassTempo
	  \new Voice = "basses" { \clef bass << \global \BassMusic >> }
	  \context Lyrics = "basses" \lyricsto "basses" \BassLyrics
	>>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}


\book {
  \bookOutputSuffix "midi-sop"
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
	  \new Voice \RehearsalTrack
	  \new Voice \SopranoTempo
	  \new Voice = "sopranos" { << \global \SopranoMusic >> }
	  \context Lyrics = "sopranos" \lyricsto "sopranos" \SopranoLyricsMidi
	>>
	\new Staff = "altos" <<
          \new Voice \AltoTempo
	  \new Voice = "altos" { << \global \AltoMusic >> }
	>>
	\new Staff = "tenori" <<
          \new Voice \TenorTempo
	  \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
	>>
	\new Staff = "basses" <<
          \new Voice \BassTempo
	  \new Voice = "basses" { \clef bass << \global \BassMusic >> }
	>>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}


\book {
  \bookOutputSuffix "midi-alto"
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
	  \new Voice \RehearsalTrack
	  \new Voice \SopranoTempo
	  \new Voice = "sopranos" { << \global \SopranoMusic >> }
	>>
	\new Staff = "altos" <<
          \new Voice \AltoTempo
	  \new Voice = "altos" { << \global \AltoMusic >> }
	  \context Lyrics = "altos" \lyricsto "altos" \AltoLyricsMidi
	>>
	\new Staff = "tenori" <<
          \new Voice \TenorTempo
	  \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
	>>
	\new Staff = "basses" <<
          \new Voice \BassTempo
	  \new Voice = "basses" { \clef bass << \global \BassMusic >> }
	>>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}


\book {
  \bookOutputSuffix "midi-tenor"
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
	  \new Voice \RehearsalTrack
	  \new Voice \SopranoTempo
	  \new Voice = "sopranos" { << \global \SopranoMusic >> }
	>>
	\new Staff = "altos" <<
          \new Voice \AltoTempo
	  \new Voice = "altos" { << \global \AltoMusic >> }
	>>
	\new Staff = "tenori" <<
          \new Voice \TenorTempo
	  \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
	  \context Lyrics = "tenors" \lyricsto "tenors" \TenorLyricsMidi
	>>
	\new Staff = "basses" <<
          \new Voice \BassTempo
	  \new Voice = "basses" { \clef bass << \global \BassMusic >> }
	>>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}


\book {
  \bookOutputSuffix "midi-bass"
  \score {
    <<
      \new ChoirStaff <<
	\new Staff = "sopranos" <<
	  \new Voice \RehearsalTrack
	  \new Voice \SopranoTempo
	  \new Voice = "sopranos" { << \global \SopranoMusic >> }
        >>
	\new Staff = "altos" <<
          \new Voice \AltoTempo
	  \new Voice = "altos" { << \global \AltoMusic >> }
        >>
	\new Staff = "tenori" <<
          \new Voice \TenorTempo
	  \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
        >>
	\new Staff = "basses" <<
          \new Voice \BassTempo
	  \new Voice = "basses" { \clef bass << \global \BassMusic >> }
	  \context Lyrics = "basses" \lyricsto "basses" \BassLyricsMidi
	>>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

