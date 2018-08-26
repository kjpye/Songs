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
  s1 s1 s1
  \mark \markup {\circle "4b"}
  s1 s1
  \mark \markup {\circle "5a"}
  s1 s1 s1
  \mark \markup {\circle "5b"}
  s1 s1 s1
  \mark \markup {\circle "6a"}
  s1 s1 s1
  \mark \markup {\circle "6b"}
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
  g8^\mp a f'8. d16 c8 d f,8. g16 % 15
  a4 a8 g f4. r8
  r8 f8^\p g bes c bes4.~\>
  bes2 r8 f a c
  f2 d4 r
  r2 r8 d^\pp(c bes % 20
  a4 bes8 c d c) r f,(
  c'4 bes a2)
  g4^\p\< f'\! e8 c4.
  g4\>( d' c2)\!
  r8 bes4^\p^\markup{\italic Darkly} bes8 r c4 bes8 % 25
  r8\<a4 c8\! r f4-> c8
  r4 r8 d16^\f(e) f4 e
  d2^\markup{\italic{molto decresc.}}(c4.^\pp) \breathe d8^\p^\markup{\italic Sweetly}
  c4. a8\<bes\>a g\! f
  a4 c,8\>(d) f2\! \breathe % 30
  g8\< a\! f'8.\> d16\! c8 d^\markup{\italic ten.} \override BreathingSign.text = \markup { \musicglyph "scripts.caesura.straight"} \breathe f,8^- g^-
  a4 a8^\markup{\italic{molto rit.}} g f4.\> s8\!
  \bar "|."
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
  I long for Jean- ie, __
  I long for Jean- ie,
  Ah, __ Ah, __
  Sigh- ing, sigh- ing,
  Ah, __
  Sigh- ing, sigh- ing, sob- bing, sob- bing,
  The __ lost one, Ah, __
  I long for Jean- ie, and my heart bows __ low,
  Ne- ver- more to find her where the bright wa- ters flow.
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
  g'8^\mp g b8. b16 c8 f, f8. f16 % 15
  f4 e8 e f4. r8
  r2 r8 bes^\p a g
  c,4. c8 r2
  r2 r8 f f f
  f4. f8 r bes^\pp(a g % 20
  f4 g8 a) r f(bes a
  c,4 g' f2)
  r2 c4^\p\< a'\!
  g8\> e f4(e2)\!
  r8 e4^\p e8 r e4  e8 % 25
  r8\< f4 f8\! r8 a4-- a8
  r2 r8 f16^\f(g) a8 a
  d4\> b,8.^\p\! b16 c4. \breathe bes'8^\p
  a4. f8\< f\> f\! e f
  f4 g\> f2\! \breathe
  f8\< f g8.\> g16 a8\! f8^\markup{\italic ten.} \breathe f8-- f--
  f4 e8^\markup{\italic{molto rit.}} e f4.\> s8\!
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
  I long for Jean- ie,
  I long for Jean- ie,
  Ah, __ Ah, __
  Sigh- ing, sigh- ing, Ah, __
  Sigh- ing, Sigh- ing, sob- bing, sob- bing,
  The __ one that comes not a- gain,
  I long for Jean- ie, and my heart bows low,
  Ne- ver more to find her where the bright wat- ers flow.
}

TenorMusic = \relative c {
  \key f \major
  \time 4/4
  \partial 8 r8
  r8 f^\p\< a c\! d c bes a
  c4 bes a2\<
  a2\!( bes
  c4 g2) r4
  r8 f8^\p\< a c--\! d-- c-- bes a % 5
  c4 b a2
  b8 f g a c4 bes8 f'
  e4 f8 f e2
  bes2^\pp bes2(
  a1) % 10
  bes8.^\mf a16 bes8 f f4\< a8.\> a16\!
  a4\> f8. f16 e4 bes'^\mp
  a4. c8 d c bes a
  c4 bes a2
  b8 c d8. f16 f8 c a8. bes16 % 15
  c8(e16 d) c8 bes a4. \breathe e'8^\mf
  c4. a8 bes a g f
  a4 c,8(d) f2
  f4 g8 a f'4d
  c8 a g f g4.\> d'8^\p\! % 20
  c4. a8 bes a g f
  a4 c,8(d) f2
  g8^\mp\< b c d\! d(f) a, d
  c4\> b8. b16 c2\!
  g8.^\mp a16 g8 f g4 a8 g % 25
  f8.\< e16 f8 a\! c2
  d8. c16 d8 f c4 a8. g16
  f4\> d8. d16 c4.\! \breathe c8^\p
  c'4. c8\< d\> c\! bes a
  f4 bes\> a2\! \breathe
  g8\< g\! b8.\> f'16\! f8 a,^\markup{\italic ten.} \breathe a8-- bes--
  c4 c8^\markup{\italic{molto rit.}} bes a4.\> s8\!
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
  I long for Jean- ie with the day dawn __ smile,
  Ra- diant in glad- ness, warm with win- ning guile,
  I hear her me- lo- dies, like joys gone __ by,
  Sigh- ing round my heart __ o'er the fond hopes that die;
  Sigh- ing like the night wind, and sob- bing like the rain,
  Wait- ing for the lost one that comes not a- gain,
  I long for Jean- ie and my heart bows low,
  Ne- ver- more to find her where the bright wat- ers flow.
}

BassMusic = \relative c {
  \key f \major
  \time 4/4
  \partial 8 r8
  r1
  r2 r8 f4^\p(c8
  d2 bes
  a4 b c) r
  f,1^> % 5
  r2 e'4^\mp g8 a
  g2 c,4 f
  g4 g c,2
  r8 c4^\pp(c8) r c4 c8
  r2 r8 f4\<c8\! % 10
  bes8.^\mf bes16 bes8 bes a4\< cis8.\! cis16\!
  d4\> g,8. g16 c2\! \breathe
  r1
  r8 c~c c d2
  g,8^\mp g g'8. g16 a8 a d,8. des16 % 15
  c4 c8 c f4. r8
  r8 f8^\p f f f4. f8~
  f1
  a,4^\mf c8 f bes4 bes
  a8 f d d c4.\> r8\! % 20
  r8 f8^\p f f f4. f8
  c4 c d2
  g4^\p\< g,\! c4 f
  g2\>(c,)\!
  r8 c4^\p c8 r c4 c8 % 25
  r8\< f4 f8\! r f4-> f8
  bes,8. f'16 bes8 bes a4 cis,8. cis16
  d4\> g8. g16 c4.\! \breathe c8^\p
  f,4(f8) f\< f\> f\! f f
  c4 c\> d2\! \breathe % 30
  g8\< g\! g,8.\> g16\! c8 c^\markup{\italic ten.} \breathe d8-- des--
  c4 c,8^\markup{\italic{molto rit.}} c f4.\> s8\!
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
  I long for Jean- ie, Ra- diant in glad- ness,
  warm with win- ning guile,
  I hear her notes, like joys gone by
  Sigh- ing, sigh- ing, Ah, __
  Sigh- ing, sigh- ing, sob- bing, sob- bing,
  Wait- ing for the lost one that comes not a- gain,
  I long for Jean- ie, and my heart bows low,
  Ne- ver-m more to find her where the bright wa- ters flow.
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
  \layout {}
  \midi {}
}
