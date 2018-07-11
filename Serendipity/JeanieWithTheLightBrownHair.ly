\version "2.19.80"

tempotrack = {
  \key f \major
  \time 4/4
}

RehearsalTrack = {
  \partial 8 \mark \markup { \circle "1a" } s8
  s1 s1
  \mark \markup {\circle "1b"}
  s1 s1 s1
  \mark \markup {\circle "2a"}
  s1 s1 s1
  \mark \markup {\circle "2b"}
  s1 s1
  \mark \markup {\circle "3a"}
  s1 s1
  \mark \markup {\circle "3b"}
  s1 s1 s1
  \mark \markup {\circle "4a"}
}

SopranoTempo = \relative c'' {
  \key f \major
  \time 4/4
  \partial 8 s8
  s1
}

SopranoMusic = \relative c'' {
  \key f \major
  \time 4/4
  \partial 8 d8^\mp
  c4. a8 bes a g f
  a4 c,8(d) f2
  f4 g8 a f'4 d
  c8. a16 g8 f g4 r8 d'
  c4. a8-- bes-- a-- g f % 5
  a4 c,8(d) g2
  g8 b c d e(f) a, d
  c4 b8 b c2
  g8.^\p a16 g8 f g4 a8. g16
  f8. e16 f8 a c2 % 10
  d8.^\mf c16 d8  f c4\<a8.\>g16\!
  f4\>d8. d16 c4.\! \breathe d'8^\mp
  c4. a8 bes a g f
  a4 c,8(d) f2
  g8^\mp a f'8. d16 c8 d f,8. g16
  a4 a8 g f4. r8
  r8 f8^\p 
}

SopranoLyrics = \lyricmode {
  I dream of Jean- ie with the light brown __ hair,
  Borne, like a va- por, on the sum- mer air;
  I see her trip- ping where the bright streams play,
  Hap- py as the dai- sies that dance on her way.
  Ma- ny were the wild notes her mer- ry voice would pour,
  Ma- ny were the blithe birds that war- bl'd them o'er;
  I dream of Jean- ie with the light brown hair,
  Float- ing, like a va- por, on the soft sum- mer air,
}

AltoTempo = \relative c' {
  \key f \major
  \time 4/4
  \partial 8 s8
  s1
}

AltoMusic = \relative c'' {
  \key f \major
  \time 4/4
  \partial 8 bes8^\mp
  a4. f8 f f e f
  f4 c c2
  d4 e8 f d'4 bes
  f8. f16 e8 d e4 r8 bes'
  a4. f8-- f-- f-- e f % 5
  f4 c d2
  g8 g g g g(a) f a
  g4 g8 g g2
  e8. f16 e8 d e4 e8. e16
  f8. c16 a8 c f2 % 10
  f8.^\mf f16 f8 d f4\<e8.\> e16\!
  d4\> b8. b16 c2 \breathe
  r8 c^\p f a c4. c,8~
  c4 r r2
  g'8^\mp g b8. b16 c8 f, f8. f16
  \bar "|."
}

AltoLyrics = \lyricmode {
  I dream of Jean- ie with the light brown hair,
  Borne, like a va- por, on the sum- mer air;
  I see her trip- ping where the bright streams play,
  Hap- py as the dai- sies that dance on her way.
  Ma- ny were the wild notes her mer- ry voice would pour,
  Ma- ny were the blithe birds that war- bl'd them o'er;
  I dream of Jean- ie, __
  Float- ing, like a va- por, on the soft sum- mer air,
}

TenorMusic = \relative c {
  \key f \major
  \time 4/4
  \partial 8 r8
  r8 f^\p\< a c\! d c bes a
  c4 bes a2\<
  a2\!( bes
  c4 g2) r4
  r8 f8^\p\< a c--\! d-- c-- bes a
  c4 b a2
  b8 f g a c4 bes8 f'
  e4 f8 f e2
  bes2^\pp bes2(
  a1)
  bes8.^\mf a16 bes8 f f4\< a8.\> a16\!
  a4\> f8. f16 e4 bes'^\mp
  a4. c8 d c bes a
  c4 bes a2
  b8 c d8. f16 f8 c a8. bes16
  \bar "|."
}

TenorLyrics = \lyricmode {
  I dream of Jean- ie with the light brown hair,
  Ah, __
  I see her trip- ping where the bright streams play,
  Hap- py as the dai- sies that dance on her way.
  Ah, Ah, __
  Ma- ny were the blithe birds that war- bl'd them o'er;
  I dream of Jean- ie with the light brown hair,
  Float- ing, like a va- por, on the soft sum- mer air,
}

BassMusic = \relative c {
  \key f \major
  \time 4/4
  \partial 8 r8
  r1
  r2 r8 f4^\p(c8
  d2 bes
  a4 b c) r
  f,1^> % 5 % 5
  r2 e'4^\mp g8 a
  g2 c,4 f
  g4 g c,2
  r8 c4^\pp(c8) r c4 c8
  r2 r8 f4\<c8\! % 10
  bes8.^\mf bes16 bes8 bes a4\< cis8.\! cis16\!
  d4\> g,8. g16 c2\! \breathe
  r1
  r8 c~c c d2
  g,8^\mp g g'8. g16 a8 a d,8. des16
  \bar "|."
}

BassLyrics = \lyricmode {
  Ah, __ Ah, __
  Ah, see her hap -py, all on her way.
  Ah, __ Jean- ie
  Ah, and
  Ma- ny were the blithe birds that war- bl'd them o'er;
  Ah __ so fair, 
  Float- ing, like a va- por, on the soft sum- mer air,
}


\header {
  title = "Jeanie With The Light Brown Hair"
  composer = "Stephen Porter"
  poet     = "Stephen Porter"
  arranger = "arr. Alice Parker & Robert Shaw"
}

global = {
  \key f \major
  \time 4/4
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff = "sopranos" <<
        \new Voice { \RehearsalTrack }
%	\sopranoTempo
        \new Voice = sopranos \with { \remove "Note_heads_engraver" \remove "Rest_engraver" \consists "Completion_heads_engraver" \consists "Completion_rest_engraver" } { << \global \SopranoMusic >> }
        \context Lyrics = "sopranos" \lyricsto "sopranos" \SopranoLyrics
      >>
      \new Staff = "altos" <<
        \new Voice = "altos" { << \global \AltoMusic >> }
        \context Lyrics = "altos" \lyricsto "altos" \AltoLyrics
      >>
      \new Staff = "tenori" <<
        \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
        \context Lyrics = "tenors" \lyricsto "tenors" \TenorLyrics
      >>
      \new Staff = "basses" <<
        \new Voice = "basses" { \clef bass << \global \BassMusic >> }
        \context Lyrics = "basses" \lyricsto "basses" \BassLyrics
      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \SopranoMusic >>
        << \global \AltoMusic >>
      >>
      \new Staff <<
        \clef bass
        \set Staff.printPartCombineTexts = ##f
        \partcombine
        << \global \TenorMusic >>
        << \global \BassMusic >>
      >>
    >>
  >>
}
