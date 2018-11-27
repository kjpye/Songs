\version "2.19.80"

\header {
  title = "In the Bleak Mid-winter"
  subtitle = \markup {\italic {They presented unto him gifts (Matthew Ii. 11)}}
  composer = "Gustav Holst (1874-1934)"
  poet = "Christina Georgina Rossetti (1830-94)"
  meter = "CRANHAM (6 5. 6 5. D. Irregular.)"
}

commonlyrics = \lyricmode {
  In the bleak mid- win- ter,
  Fros- ty wind made moan,
  Earth stood hard as i- ron,
  Wat- er like a stone;
  Snow had fal- len, snow on snow,
  Snow on snow,
  In the bleak mid- win- ter,
  Long a- go

  Our God, heaven can- not hold Him,
  Nor earth sus- tain;
  Heaven and earth shall flee a- way
  When He comes to reign:
  In the bleak mid- win- ter
  A sta- ble- place suf- ficed
  The Lord God Al- might- y,
  Je- sus Christ.
  Ang- els and arch- ang- els
  May have gath- ered there,
  Cher- u- bim and Ser- a- phim
  Thronged the air;
  But His moth- er on- ly,
  In her maid- en bliss,
  Wor- shipped the Be- lov- ed
  With a kiss.

  What can I give Him,
  Poor as I am?
  If I were a shep- herd
  I would bring a lamb;
  If I were a wise man,
  I would do my part;
  Yet what can I give Him--
  Give my heart.
}  

tempotrack = {
  \key f \major
  \time 4/4
}

SopranoMusic = \relative c'' {
  \key f \major
  \time 4/4
  a4. bes8 c4 a
  g2 f4 r
  g4. a8 g4 d
  g2. r4
  a4. bes8 c4 a % 5
  g2 f4 r
  g4 a g4. f8
  f2. r4
  bes4. a8 bes4 c
  d4 d a r % 10
  c4(a) g(f)
  e2. r4
  a4. bes8 c4 a
  g2 f4 r
  g4(a g4.)f8 % 15
  f2.

      a4
  a4. bes8 c4 a
  g2 f4 r
  g4.(a8) g4 d
  g2. r4 % 20
  a4. bes8 c4 a
  g4. g8 f2
  g4 a g4. f8
  f2. r4
  bes4. a8 bes4 c % 25
  d2 a4 c
  c4 a g f
  e2. r4
  a4. bes8 c4 a
  g2 f4 r % 30
  g4(a g4.)f8
  f1

  a4. bes8 c4 a
  g2 f4 r
  g4. a8 g4 d % 35
  g2. r4
  a4. bes8 c4 a
  g4. g8 f4 r
  g4(a g4.) f8
  f2. r4 % 40
  bes4. a8 bes4 c
  d2 a4 r
  c4 a g f
  e2. r4
  a4. bes8 c4 a % 45
  g2 f4 r
  g4(a g4.)f8
  f1

  a4.(bes8) c4 a
  g2 f4 r % 50
  g4.(a8) g4 d
  g2. r4
  a4. bes8 c4 a
  g2 f4 r
  g4 a g4. f8 % 55
  f2. r4
  bes4. a8 bes4 c
  d2 a4 r
  c4 a g f
  e2. r4 % 60
  a4. bes8 c4 a
  g2 f4 r
  g4(a g4.)f8
  f1 \bar "||"
}

%SopranoLyrics = \commonlyrics

AltoMusic = \relative c' {
  \key f \major
  \time 4/4
  f4. f8 f4 c
  d2 d4 r
  d4. d8 d4 c
  bes2. r4
  c4. f8 f4 c % 5
  d2 d4 r
  f4 f e4. f8
  f2. r4
  f4. f8 f4 ees4
  d4 d f r % 10
  f4(e) d2
  c2. r4
  c4. f8 f4 c
  d2 d4 r
  f2(e4.) f8 % 15
  f2.
     f4
  f4. f8 f4 c
  d2 d4 r
  d2 d4 c
  bes2. r4 % 20
  c4. f8 f4 c
  d4. d8 d4 r
  f4 f e4. f8
  f2. r4
  f4. f8 f4 ees4 % 25
  d2 f4 f
  f4 e d d
  c2. r4
  c4. f8 f4 c
  d2 d4 r % 30
  f2(e4.) f8
  f1

  f4. f8 f4 c
  d2 d4 r
  d4. d8 d4 c % 35
  bes2. r4
  c4. f8 f4 c
  d4. d8 d4 r
  f2(e4.) f8
  f2. r4 % 40
  f4. f8 f4 ees4
  d2 f4 r
  f4 e d d
  c2. r4
  c4. f8 f4 c % 45
  d2 d4 r
  f2(e4.) f8
  f1

  f2 f4 c
  d2 d4 r % 50
  d2 d4 c
  bes2. r4
  c4. f8 f4 c
  d2 d4 r
  f4 f e4. f8 % 55
  f2. r4
  f4. f8 f4 ees
  d2 f4 r
  f4 e d d
  c2. r4 % 60
  c4. f8 f4 c
  d2 d4 r
  f2(e4.) f8
  f1
}

AltoLyrics = \commonlyrics

TenorMusic = \relative c' {
  \key f \major
  \time 4/4
  c4. c8 c4 f,
  a2 a4 r
  g4. d8 d4 f
  f2(a4) r
  f4. c'8 c4 f, % 5
  a2 a4 r
  d4 d bes4. a8
  a2. r4
  bes4. c8 bes4 a
  bes4 bes a r %10
  f4(c') bes(a)
  g2. r4
  f4. c'8 c4 f,
  a2 a4 r
  d2(bes4.) a8 % 15
  a2.
      c4
  c4. c8 c4 f,
  a2 a4 r
  g4.(d8) d4 f
  f2(a4) r % 20
  f4. c'8 c4 f,
  a4. a8 a4 r
  d4 d bes4. a8
  a2. r4
  bes4. c8 bes4 a % 25
  bes2 a4 f
  f4 c' bes a
  g2. r4
  f4. c'8 c4 f,
  a2 a4 r % 30
  d2(bes4.) a8
  a1

  c4. c8 c4 f,
  a2 a4 r
  g4. d8 d4 f % 35
  f2(a4) r
  f4. c'8 c4 f,
  a4. a8 a4 r
  d2(bes4.) a8
  a2. r4 % 40
  bes4. c8 bes4 a
  bes2 a4 r
  f4 c' bes a
  g2. r4
  f4. c'8 c4 f, % 45
  a2 a4 r
  d2(bes4.) a8
  a1

  c2 c4 f,
  a2 a4 r % 50
  g4.(d8) d4 f
  f2(a4) r
  f4. c'8 c4 f,
  a2 a4 r
  d4 d bes4. a8 % 55
  a2. r4
  bes4. c8 bes4 a
  bes2 a4 r
  f4 c' bes a
  g2. r4
  f4. c'8 c4 f,
  a2 a4 r
  d2(bes4.) a8
  a1
}

%TenorLyrics = \commonlyrics

BassMusic = \relative c {
  \key f \major
  \time 4/4
  f4. g8 a4 f
  d2 d4 r
  bes4. c8 bes4 a
  g2(c4) r
  f4. g8 a4 f % 5
  d2 d4 r
  bes4 bes c4. f8
  f2. r4
  d4. f8 d4 c
  bes4 bes d r % 10
  a2 bes
  c2. r4
  f4. g8 a4 f
  d2 d4 r
  bes2(c4.) f8 % 15
  f2.
      f4
  f4. g8 a4 f
  d2 d4 r
  bes4.(c8) bes4 a
  g2(c4) r % 20
  f4. g8 a4 f
  d4. d8 d4 r
  bes4 bes c4. f8
  f2. r4
  d4. f8 d4 c % 25
  bes2 d4 a4
  a4 a bes bes
  c2. r4
  f4. g8 a4 f
  d2 d4 r % 30
  bes2(c4.) f8
  f1

  f4. g8 a4 f
  d2 d4 r
  bes4. c8 bes4 a % 35
  g2(c4) r
  f4. g8 a4 f
  d4. d8 d4 r
  bes2(c4.) f8
  f2. r4 % 40
  d4. f8 d4 c
  bes2 d4 r
  a4 a bes c
  c2. r4
  f4. g8 a4 f % 45
  d2 d4 r
  bes2(c4.) f8
  f1

  f4.(g8) a4 f
  d2 d4 r % 50
  bes4.(c8) bes4 a
  g2(c4) r
  f4. g8 a4 f
  d2 d4 r
  bes4 bes c4. f8 % 55
  f2. r4
  d4. f8 d4 c
  bes2 d4 r
  a4 a bes c
  c2. r4 % 60
  f4. g8 a4 f
  d2 d4 r
  bes2(c4.) f8
  f1
}

%BassLyrics = \commonlyrics

TwoVoicesPerStaff = ##t
\include "satb.ly"
%\score {
%  \ChoirStaff {
%    \new Staff = sopranos {
%      new Voice = sopranos { \SopranoMusic }
%    }
%  }
%}
