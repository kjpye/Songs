\version "2.18.2"

SopranoLyrics = \lyricmode {
  Rub- ber Duc- kie you're the one
  You make bath- time lots of fun.
  Rub- ber Duc- kie, I'm aw- full- y fond of you.
  Vo- do- dee- o.
  Rub- ber duc- kie joy of joys
  when I squeeze you you make noise
  Rub- ber duc- kie you're my ver- y best friend, it's true
  Ah Ever- y day when I make my way to the tub- by
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- duba duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of you
}  

AltoLyrics = \lyricmode {
  Rub- ber Duc- kie you're the one
  You make bath- time lots of fun.
  Rub- ber Duc- kie, I'm aw- full- y fond of you.
  Vo- do- dee- o.
  Rub- ber duc- kie joy of joys
  when I squeeze you you make noise
  Rub- ber duc- kie you're my ver- y best friend, it's true
  Ah Ah Ah Ah Ah Ah
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- duba duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of you
}  

TenorLyrics = \lyricmode {
  Rub- ber Duc- kie you're the one
  You make bath- time lots of fun.
  Rub- ber Duc- kie, I'm aw- full- y fond of you.
  Vo- do- dee- o.
  Rub- ber duc- kie joy of joys
  when I squeeze you you make noise
  Rub- ber duc- kie you're my ver- y best friend, it's true
  Ah Ah Ah Ah Ah Ah
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- duba duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of you
}  

BassLyrics = \lyricmode {
  Rub- ber Duc- kie you're the one
  You make bath- time lots of fun.
  Rub- ber Duc- kie, I'm aw- full- y fond of you.
  Vo- do- dee- o.
  Rub- ber duc- kie joy of joys
  when I squeeze you you make noise
  Rub- ber duc- kie you're my ver- y best friend, it's true
  Ah Ah Ah Ah Ah Ah Ah
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- duba duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of you
}  

tempotrack = {
  \key bes \major
  \time 4/4
}

SopranoMusic = \relative c' {
  \key bes \major
  \time 4/4
  r4 d8. cis16 d8. f16~f4
  ees4bes'8. a16~a2
  r4 f8. e16 f8. fis16~fis4
  g4 d'8. c16~c2
  r4 bes8. a16 bes8. f16 d4
  \times 2/3 {ees4 f ees} d4 c
  f1
  ees8. f16~f8. g16 f2
  r4 d8. c16 d8. f16~f4
  ees4 bes'8. a16~a2
  r4 f8. e16 f8. fis16~fis4
  g4 d'8.c16~c2
  r4 bes8. a16 bes8. f16 d8 d
  \times 2/3 {ees4 f ees} ees c
  f1
  g1
  r4 a8. a16 \times 2/3 {a4 g f}
  r4 g8. g16 \times 2/3 {g4 f ees}
  a4. a8~a2
  r4 a4 bes b
  r4 c8. bes16 c8. bes16 a4
  r4 bes8. a16 bes8. a16 g4
  c4(b8.) c16~c2
  f,8. g16 a4 g8. f16~f4
  r4 d8. cis16 d8. f16~f4
  ees4 bes'8. a16~a2
  r4 f8. e16 f8. fis16~fis4
  g4 d'8. c16~c2
  \repeat volta 2 {
    r4 bes8. a16 bes8. f16 d4
    \times 2/3 {ees4 f ees} d c
  }
  r4 bes'8. a16 bes8. f16 d4
  ees8. g16 bes4 d8.(bes16) c4
  bes1
  \bar "|."
}

AltoMusic = \relative c' {
  \key bes \major
  \time 4/4
  r4 d8. cis16 d8. d16~d4
  cis4 ees8. ees16~ees2
  r4 d8. cis16 d8. d16~d4
  d4 d8. ees16~ees2
  r4 d8. cis16 d8. d16 d4
  \times 2/3 {c4 d c} d c
  d1
  c8. c16~c8. c16 c2
  r4 d8. cis16 d8. d16~d4
  c4 ees8. ees16~ees2
  r4 d8. cis16 d8. d16~d4
  d4 d8. ees16~ees2
  r4 d8. cis16 d8. d16 d8 d
  \times 2/3 {c4 d c} d c
  d1~
  d2 d4(cis)
  <d f>2 <f a>
  <d g>2 <cis g'>
  <d f>2(<e f>)
  r4 f f f
  r4 f8. f16 f8. f16 f4
  r4 f8. f16 e8. e16 e4
  ees4~ees8. ees16~ees2
  c8. c16 c4 c8. c16~c4
  r4 d8. cis16 d8. d16~d4
  c4 ees8. ees16~ees2
  r4 d8. cis16 d8. d16~d4
  d4 d8. ees16~ees2
  \repeat volta 2 {
    r4 d8. cis16 d8. d16 d4
    \times 2/3 {c4 d c} d c
  }
  r4 d8. cis16 d8. d16 d4
  ees8. ees16 ees4 ees ees
  d1
  \bar "|."
}

TenorMusic = \relative c' {
  \key bes \major
  \time 4/4
  r4 bes8. a16 a8. a16~a4
  bes4 bes8. c16~c2
  r4 bes8. bes16 bes8. bes16~bes4
  bes4 bes8.bes16~bes2
  r4 bes8. bes16 bes8. bes16 g4
  \times 2/3 {bes4 bes bes} a a
  bes2(aes)
  g8. a16~a8. bes16 a2
  r4 bes8. a16 aes8. aes16~aes4
  bes4 bes8. c16~c2
  r4 bes8. bes16 bes8. bes16~bes4
  bes4 bes8. bes16~bes2
  r4 bes8. bes16 bes8. bes16 g8 g
  \times 2/3 {bes4 bes bes} a a
  bes1
  g1
  a4(d)cis(c)
  b2 a
  a2(cis)
  r4 a4 aes aes
  r4 a8. a16 a8. a16 a4
  r4 d8. d16 d8. d16 d4
  c4~c8. bes16(a2)
  a8. bes16 c4 bes8. a16~a4
  r4 bes8. a16 bes8. aes16~aes4
  bes4 bes8. c16~c2
  r4 bes8. bes16 bes8. bes16~bes4
  bes4 bes8. bes16~bes2
  \repeat volta 2 {
    r4 bes8. bes16 bes8. bes16 g4
    \times 2/3 {bes4 bes bes} a a
  }
  r4 bes8. bes16 bes8. bes16 g4
  bes8. bes16 bes4 a a
  bes1
  \bar "|."
}

BassMusic = \relative c {
  \key bes \major
  \time 4/4
  bes4~bes8. bes16 b8. b16~b4
  c4 c8. f16~f2
  bes,4 ~ bes8. bes16 d8. d16~d4
  ees4 g8. ges16 ~ ges2
  bes4~bes8 bes g8 g f4
  \times 2/3 {c4 c c} f f
  bes,4.~( bes8 b4.~b8)
  c8. f16~f8. f16 f4(f,)
  bes4 ~ bes8. bes16 b8. b16~b4
  c4 c8. f16~f2
  bes,4~bes8. bes16 d8. d16~d4
  ees4 g8. ges16~ges2
  bes4~bes8. bes16 g8. g16 f8. f16
  \times 2/3 {c4 c c} f4 f
  bes,1
  bes2 a4(e')
  d2 d
  e2 a
  d,2(e)
  r4 d des des
  r4 f8. f16 d8. d16 d4
  r4 g8. g16 c8. c16 c4
  c4~c8. g16~g2
  f8. f16 f4 f8. f16~f4
  bes,4~bes8. bes16 b8. b16~b4
  c4 c8. f16~f2
  bes,4~bes8. bes16 d8. d16~d4
  ees4 g8. ges16~ges2
  \repeat volta 2 {
    r4 bes8. bes16 g8. g16 f4
    \times 2/3 {d4 d d} c4 c
  }
  bes'4~bes8. bes16 g8. g16 f4
  c8. c16 c4 f4 f
  bes,1
  \bar "|."
}

\header {
  title = "Rubber Duckie"
}
%\include "satb.ly"
\score {
  \context GrandStaff <<
    \context ChoirStaff <<
      \new Staff = sopranos { \SopranoMusic }
      \addlyrics \SopranoLyrics
      \new Staff = altos { \AltoMusic }
      \addlyrics \AltoLyrics
      \new Staff = tenors { \clef "treble_8" \TenorMusic }
      \addlyrics \TenorLyrics
      \new Staff = basses { \clef "bass" \BassMusic }
      \addlyrics \BassLyrics
    >>
    \context PianoStaff <<
    >>
  >>
}
