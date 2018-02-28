\version "2.19.80"

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
  Rub- a- dub duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of you
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
  Ah Ever- y day when I make my way to the tub- by
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- dub duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of you
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
  Ah Ever- y day when I make my way to the tub- by
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- dub duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of you
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
  Ah Ah Ah Ah Ah Ah
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- dub duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of you
  Rub- ber duc- kie I'm aw- ful- ly fond of you
}  

tempotrack = {
  \key bes \major
  \time 4/4
}

SopranoMusic = \relative c' {
  \key bes \major
  \time 4/4
  r4 d8. c16 d8. f16~f4
  \bar "|."
}

AltoMusic = \relative c' {
  \key bes \major
  \time 4/4
  r4 d8. c16 d8. d16~d4
  \bar "|."
}

TenorMusic = \relative c' {
  \key bes \major
  \time 4/4
  r4 bes8. a16 a8. a16~a4
  \bar "|."
}

BassMusic = \relative c {
  \key bes \major
  \time 4/4
  bes4~bes8. bes16 b8. b16~b4
  c4 c8 f~f2
  bes,4 ~ bes8. bes16 d8. d16~d4
  ees4 g8. ges16 ~ ges2
  \bar "|."
}

\header {
  title = "Rubber Duckie"
}
\include "satb.ly"
%\score {
%  \ChoirStaff {
%    \new Staff = sopranos {
%      new Voice = sopranos { \SopranoMusic }
%    }
%  }
%}
