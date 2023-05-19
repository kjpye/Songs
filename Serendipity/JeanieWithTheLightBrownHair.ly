\version "2.25.0"

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=60
  s8 s1*31
  s4 \tempo 4=45 s s4.
}

RehearsalTrack = {
  \textMark \markup {\box "1a"} s8 s1 s1
  \textMark \markup {\box "1b"} s1 s1 s1
  \textMark \markup {\box "2a"} s1 s1 s1
  \textMark \markup {\box "2b"} s1 s1
  \textMark \markup {\box "3a"} s1 s1
  \textMark \markup {\box "3b"} s1 s1 s1
  \textMark \markup {\box "4a"} s1 s1 s1
  \textMark \markup {\box "4b"} s1 s1
  \textMark \markup {\box "5a"} s1 s1 s1
  \textMark \markup {\box "5b"} s1 s1 s1
  \textMark \markup {\box "6a"} s1 s1 s1
  \textMark \markup {\box "6b"}
}

dynamicsSop = {
  s8\mp | s1 | s |
  s1*3 |
  s1*3 | % 2a
  a1\p | s |
  s2\mf s4\< s\> | s2\> s4.\! s8\mp | % 3a
  s1 | s | s\mp |
  s1 | s8 s2\p s4.\> | s1 | % 4a
  s1 | s2 s8 s4.\pp |
  s1 | s | s4\p\< s2.\! | % 5a
  s2\> s\! | s8 s\p s2. | s4.\< s8\! s2 |
  s4. s8\f s2 | s2\omit\decresc-\markup\italic "molto decresc." s4.\pp s8\p | s4. s8\< s4\> s4\! | % 6a
  s4 s4\> s2\! | s8\< s\! s8.\> s16\! s8 s4.-\markup\italic ten. | s4 s-\markup\italic "molto rit."  s4\> s8\!
}

SopranoMusic = \relative c'' {
  \key f \major \dynamicUp
  \time 4/4
  \partial 8 d8 | c4. a8 bes a g f | a4 c,8(d) f2 |
  f4 g8 a f'4 d | c8. a16 g8 f g4 r8 d' | c4. a8-- bes-- a-- g f |
  a4 c,8(d) g2 | g8 b c d e(f) a, d | c4 b8 b c2 | % 2a
  g8. a16 g8 f g4 a8. g16 | f8. e16 f8 a c2 |
  d8. c16 d8  f c4 a8. g16\! | f4 d8. d16 c4. \breathe d'8 | % 3a
  c4. a8 bes a g f | a4 c,8(d) f2 | g8 a f'8. d16 c8 d f,8. g16 |
  a4 a8 g f4. r8 | r8 f8 g bes c bes4.~ | bes2 r8 f a c | % 4a
  f2 d4 r | r2 r8 d(c bes |
  a4 bes8 c d c) r f,( | c'4 bes a2) | g4 f' e8 c4. | % 5a
  g4( d' c2) | r8 bes4^\markup{\italic Darkly} bes8 r c4 bes8 | r8 a4 c8 r f4-> c8 |
  r4 r8 d16(e) f4 e | d2(c4.) \breathe d8^\markup{\italic Sweetly} | c4. a8 bes a g f | % 6a
  a4 c,8(d) f2 \breathe | g8 a f'8. d16 c8[d] \caesura f,8^- g^- | a4 a8 g f4.
  \bar "|."
}

SopranoLyrics = \lyricmode {
  I dream of Jean -- ie with the light brown __ hair,
  Borne, like a va -- por, on the sum -- mer air;
  I see her trip -- ping where the bright streams play,
  Hap -- py as the dai -- sies that dance on her way.
  Ma -- ny were the wild notes her mer -- ry voice would pour,
  Ma -- ny were the blithe birds that war -- bl'd them o'er;
  I dream of Jean -- ie with the light brown hair,
  Float -- ing, like a va -- por, on the soft sum -- mer air,
  I long for Jean -- ie, __
  I long for Jean -- ie,
  Ah, __ Ah, __
  Sigh -- ing, sigh -- ing,
  Ah, __
  Sigh -- ing, sigh -- ing, sob -- bing, sob -- bing,
  The __ lost one, Ah, __
  I long for Jean -- ie, and my heart bows __ low,
  Ne -- ver -- more to find her where the bright wa -- ters flow.
}

SopranoLyricsMidi = \lyricmode {
  "I " "dream " "of " Jean "ie " "with " "the " "light " "brown "  "hair, "
  "\nBorne, " "like " "a " va "por, " "on " "the " sum "mer " "air; "
  "\nI " "see " "her " trip "ping " "where " "the " "bright " "streams " "play, "
  "\nHap" "py " "as " "the " dai "sies " "that " "dance " "on " "her " "way. "
  "\nMa" "ny " "were " "the " "wild " "notes " "her " mer "ry " "voice " "would " "pour, "
  "\nMa" "ny " "were " "the " "blithe " "birds " "that " war "bl'd " "them " "o'er; "
  "\nI " "dream " "of " Jean "ie " "with " "the " "light " "brown " "hair, "
  "\nFloat" "ing, " "like " "a " va "por, " "on " "the " "soft " sum "mer " "air, "
  "\nI " "long " "for " Jean "ie, " 
  "\nI " "long " "for " Jean "ie, "
  "\nAh, "  "Ah, " 
  "\nSigh" "ing, " sigh "ing, "
  "\nAh, " 
  "\nSigh" "ing, " sigh "ing, " sob "bing, " sob "bing, "
  "\nThe "  "lost " "one, " "Ah, " 
  "\nI " "long " "for " Jean "ie, " "and " "my " "heart " "bows "  "low, "
  "\nNe" ver "more " "to " "find " "her " "where " "the " "bright " wa "ters " "flow. "
}

dynamicsAlto = {
  s8\mp | s1 | s |
  s1*3 |
  s1*3 | % 2a
  s1 | s |
  s2\mf s4\< s\> | s1\> | % 3a
  s8 s2..\p | s1 | s\mp |
  s1 | s2 s8 s4.\p | s1 | % 4a
  s1 | s2 s8 s4.\pp |
  s1 | s | s2 s4\p\< s\! | % 5a
  s2\> s\! | s8 s2..\p | s4.\< s8\! s2 |
  s2 s8 s4.\f | s4\> s\p s4. s8\p | s4. s8\< s\> s4.\! | % 6a
  s4 s\> s2\! | s8\< s\! s8.\> s16\! s8 s4.-\markup\italic ten. | s4 s-\markup\italic "molto rit." s4\> s8\!
}
  
AltoMusic = \relative c'' {
  \key f \major \dynamicUp
  \time 4/4
  \partial 8 bes8 | a4. f8 f f e f | f4 c c2 |
  d4 e8 f d'4 bes | f8. f16 e8 d e4 r8 bes' | a4. f8-- f-- f-- e f |
  f4 c d2 | g8 g g g g(a) f a | g4 g8 g g2 | % 2a
  e8. f16 e8 d e4 e8. e16 | f8. c16 a8 c f2 |
  f8. f16 f8 d f4 e8. e16 | d4 b8. b16 c2 \breathe | % 3a
  r8 c f a c4. c,8~ | c4 r r2 | g'8 g b8. b16 c8 f, f8. f16 |
  f4 e8 e f4. r8 | r2 r8 bes a g | c,4. c8 r2 | % 4a
  r2 r8 f f f | f4. f8 r bes(a g |
  f4 g8 a) r f(bes a | c,4 g' f2) | r2 c4 a' | % 5a
  g8 e f4(e2) | r8 e4 e8 r e4 e8 | r8 f4 f8 r8 a4-- a8 |
  r2 r8 f16(g) a8 a | d4 b,8. b16 c4. \breathe bes'8 | a4. f8 f f e f | % 6a
  f4 g f2 \breathe | f8 f g8. g16 a8[f] \caesura f8-- f-- | f4 e8 e f4.
  \bar "|."
}

AltoLyrics = \lyricmode {
  I dream of Jean -- ie with the light brown hair,
  Borne, like a va -- por, on the sum -- mer air;
  I see her trip -- ping where the bright streams play,
  Hap -- py as the dai -- sies that dance on her way.
  Ma -- ny were the wild notes her mer -- ry voice would pour,
  Ma -- ny were the blithe birds that war -- bl'd them o'er;
  I dream of Jean -- ie, __
  Float -- ing, like a va -- por, on the soft sum -- mer air,
  I long for Jean -- ie,
  I long for Jean -- ie,
  Ah, __ Ah, __
  Sigh -- ing, sigh -- ing, Ah, __
  Sigh -- ing, Sigh -- ing, sob -- bing, sob -- bing,
  The __ one that comes not a -- gain,
  I long for Jean -- ie, and my heart bows low,
  Ne -- ver more to find her where the bright wat -- ers flow.
}

AltoLyricsMidi = \lyricmode {
  "I " "dream " "of " Jean "ie " "with " "the " "light " "brown " "hair, "
  "\nBorne, " "like " "a " va "por, " "on " "the " sum "mer " "air; "
  "\nI " "see " "her " trip "ping " "where " "the " "bright " "streams " "play, "
  "\nHap" "py " "as " "the " dai "sies " "that " "dance " "on " "her " "way. "
  "\nMa" "ny " "were " "the " "wild " "notes " "her " mer "ry " "voice " "would " "pour, "
  "\nMa" "ny " "were " "the " "blithe " "birds " "that " war "bl'd " "them " "o'er; "
  "\nI " "dream " "of " Jean "ie, " 
  "\nFloat" "ing, " "like " "a " va "por, " "on " "the " "soft " sum "mer " "air, "
  "\nI " "long " "for " Jean "ie, "
  "\nI " "long " "for " Jean "ie, "
  "\nAh, "  "Ah, " 
  "\nSigh" "ing, " sigh "ing, " "Ah, " 
  "\nSigh" "ing, " Sigh "ing, " sob "bing, " sob "bing, "
  "\nThe "  "one " "that " "comes " "not " a "gain, "
  "\nI " "long " "for " Jean "ie, " "and " "my " "heart " "bows " "low, "
  "\nNe" "ver " "more " "to " "find " "her " "where " "the " "bright " wat "ers " "flow. "
}

dynamicsTenor = {
  s8 | s s\p\< s8 s\! s2 | s2 s\< |
  s1\! | s | s8 s\p\< s8 s\! s2 |
  s1*3 | % 2a
  s1\pp | s |
  s2\mf s4\< s\> | s2.\> s4\mp | % 3a
  s1*3 |
  s2.. s8\mf | s1 | s | % 4a
  s1 | s2 s4.\> s8\p |
  s1 | s | s4.\mp\< s8\! s2 | % 5a
  s2\> s\! | s1\mp | s4.\< s8\! s2
  s1 | s2\> s4.\! s8\p | s4. s8\< s\> s4.\! | % 6a
  s4 s\> s2\! | s8\< s\! s8.\> s16\! s8 s4.-\markup\italic ten. | s4 s-\markup\italic "molto rit." s4\> s8\! 
}
  
TenorMusic = \relative c {
  \key f \major \dynamicUp
  \time 4/4
  \partial 8 r8 | r8 f a c d c bes a | c4 bes a2 |
  a2( bes | c4 g2) r4 | r8 f8 a c-- d-- c-- bes a |
  c4 b a2 | b8 f g a c4 bes8 f' | e4 f8 f e2 | % 2a
  bes2 bes2( | a1) | 
  bes8. a16 bes8 f f4 a8. a16 | a4 f8. f16 e4 bes' | % 3a
  a4. c8 d c bes a | c4 bes a2 | b8 c d8. f16 f8 c a8. bes16 |
  c8(e16 d) c8 bes a4. \breathe e'8 | c4. a8 bes a g f | a4 c,8(d) f2 | % 4a
  f4 g8 a f'4 d | c8 a g f g4. d'8 |
  c4. a8 bes a g f | a4 c,8(d) f2 | g8 b c d d(f) a, d | % 5a
  c4 b8. b16 c2 | g8. a16 g8 f g4 a8 g | f8. e16 f8 a c2 |
  d8. c16 d8 f c4 a8. g16 | f4 d8. d16 c4. \breathe c8 | c'4. c8 d c bes a | % 6a
  f4 bes a2 \breathe | g8 g b8. f'16 f8[a,] \caesura a8-- bes-- | c4 c8 bes a4.
  \bar "|."
}

TenorLyrics = \lyricmode {
  I dream of Jean -- ie with the light brown hair,
  Ah, __
  I see her trip -- ping where the bright streams play,
  Hap -- py as the dai -- sies that dance on her way.
  Ah, Ah, __
  Ma -- ny were the blithe birds that war -- bl'd them o'er;
  I dream of Jean -- ie with the light brown hair,
  Float -- ing, like a va -- por, on the soft sum -- mer air,
  I long for Jean -- ie with the day dawn __ smile,
  Ra -- diant in glad -- ness, warm with win -- ning guile,
  I hear her me -- lo -- dies, like joys gone __ by,
  Sigh -- ing round my heart __ o'er the fond hopes that die;
  Sigh -- ing like the night wind, and sob -- bing like the rain,
  Wait -- ing for the lost one that comes not a -- gain,
  I long for Jean -- ie and my heart bows low,
  Ne -- ver -- more to find her where the bright wat -- ers flow.
}

TenorLyricsMidi = \lyricmode {
  "I " "dream " "of " Jean "ie " "with " "the " "light " "brown " "hair, "
  "\nAh, " 
  "\nI " "see " "her " trip "ping " "where " "the " "bright " "streams " "play, "
  "\nHap" "py " "as " "the " dai "sies " "that " "dance " "on " "her " "way. "
  "\nAh, " "Ah, " 
  "\nMa" "ny " "were " "the " "blithe " "birds " "that " war "bl'd " "them " "o'er; "
  "\nI " "dream " "of " Jean "ie " "with " "the " "light " "brown " "hair, "
  "\nFloat" "ing, " "like " "a " va "por, " "on " "the " "soft " sum "mer " "air, "
  "\nI " "long " "for " Jean "ie " "with " "the " "day " "dawn "  "smile, "
  "\nRa" "diant " "in " glad "ness, " "warm " "with " win "ning " "guile, "
  "\nI " "hear " "her " me lo "dies, " "like " "joys " "gone "  "by, "
  "\nSigh" "ing " "round " "my " "heart "  "o'er " "the " "fond " "hopes " "that " "die; "
  "\nSigh" "ing " "like " "the " "night " "wind, " "and " sob "bing " "like " "the " "rain, "
  "\nWait" "ing " "for " "the " "lost " "one " "that " "comes " "not " a "gain, "
  "\nI " "long " "for " Jean "ie " "and " "my " "heart " "bows " "low, "
  "\nNe" ver "more " "to " "find " "her " "where " "the " "bright " wat "ers " "flow. "
}

dynamicsBass = {
  s8 | s1 | s2 s8 s4.\p |
  s1*3 |
  s2 s\mp | s1 | s | % 2a
  s8 s\pp s2. | s2 s8 s4\< s8\! |
  s2\mf s4\< s\! | s2\> s\! | % 3a
  s1 | s | s\mp |
  s1 | s8 s\p s2. | s1 | % 4a
  s1\mf | s2 s4.\> s8\! |
  s8 s\p s2. | s1 | s4\p\< s2.\! | % 5a
  s2\> s\! | s8 s\p s2. | s8 s4\< s8\! s2 |
  s1 | s2\> s4.\! s8\p | s4. s8\< s\> s4.\! | % 6a
  s4 s\> s2\! | s8\< s\! s8.\> s16\! s8 s4.-\markup\italic ten. | s4 s-\markup\italic "molto rit." s4\> s8\!
}
  
BassMusic = \relative c {
  \key f \major \dynamicUp
  \time 4/4


  \partial 8 r8 | r1 | r2 r8 f4(c8 |
  d2 bes | a4 b c) r | f,1 |
  r2 e'4 g8 a | g2 c,4 f | g4 g c,2 | % 2a
  r8 c4(c8) r c4 c8 | r2 r8 f4 c8 |
  bes8. bes16 bes8 bes a4 cis8. cis16 | d4 g,8. g16 c2 \breathe | % 3a
  r1 | r8 c~c c d2 | g,8 g g'8. g16 a8 a d,8. des16 |
  c4 c8 c f4. r8 | r8 f8 f f f4. f8~ | f1 | % 4a
  a,4 c8 f bes4 bes | a8 f d d c4. r8 |
  r8 f8 f f f4. f8 | c4 c d2 | g4 g, c4 f | % 5a
  g2(c,) | r8 c4 c8 r c4 c8 | r8 f4 f8 r f4-> f8 |
  bes,8. f'16 bes8 bes a4 cis,8. cis16 | d4 g8. g16 c4. \breathe c8 | f,4(f8) f f f f f | % 6a
  c4 c d2 \breathe | g8 g g,8. g16 c8[c] \caesura d8-- des-- | c4 c,8 c f4.
  \bar "|."
}

BassLyrics = \lyricmode {
  Ah, __ Ah, __
  Ah, see her hap -py, all on her way.
  Ah, __ Jean -- ie
  Ah, and
  Ma -- ny were the blithe birds that war -- bl'd them o'er;
  Ah __ so fair, 
  Float -- ing, like a va -- por, on the soft sum -- mer air,
  I long for Jean -- ie, Ra -- diant in glad -- ness,
  warm with win -- ning guile,
  I hear her notes, like joys gone by
  Sigh -- ing, sigh -- ing, Ah, __
  Sigh -- ing, sigh -- ing, sob -- bing, sob -- bing,
  Wait -- ing for the lost one that comes not a -- gain,
  I long for Jean -- ie, and my heart bows low,
  Ne -- ver -- more to find her where the bright wa -- ters flow.
}

BassLyricsMidi = \lyricmode {
  "Ah, "  "Ah, " 
  "\nAh, " "see " "her " "hap " "-py, " "all " "on " "her " "way. "
  "\nAh, "  Jean "ie "
  "\nAh, " "and "
  "\nMa" "ny " "were " "the " "blithe " "birds " "that " war "bl'd " "them " "o'er; "
  "\nAh "  "so " "fair, " 
  "\nFloat" "ing, " "like " "a " va "por, " "on " "the " "soft " sum "mer " "air, "
  "\nI " "long " "for " Jean "ie, " Ra "diant " "in " glad "ness, "
  "\nwarm " "with " win "ning " "guile, "
  "\nI " "hear " "her " "notes, " "like " "joys " "gone " "by "
  "\nSigh" "ing, " sigh "ing, " "Ah, " 
  "\nSigh" "ing, " sigh "ing, " sob "bing, " sob "bing, "
  "\nWait" "ing " "for " "the " "lost " "one " "that " "comes " "not " a "gain, "
  "\nI " "long " "for " Jean "ie, " "and " "my " "heart " "bows " "low, "
  "\nNe" ver "more " "to " "find " "her " "where " "the " "bright " wa "ters " "flow. "
}

dynamicsPiano = {
  s8\mp | s1 | s |
  s1*3 |
  s1*3 | % 2a
  s1\pp | s |
  s2\mf s4\< s\! | s2.\> s4\mp | % 3a
  s1 | s | s\mp |
  s2.. s8\p | s2 s\> | s1 | % 4a
  s1 | s2 s8 s4.\pp |
  s1 | s | s4\p\< s\! s2 | % 5a
  s2\> s\! | s1\p | s4.\< s8\! s2 |
  s1\f | s2.\> s4\p | s4. s8\< s\> s4.\! | % 6a
  s4 s\> s2\! | s8\< s\! s8.\> s16\! s8 s4.-\markup\italic ten. | s4 s-\markup\italic "molto rit." s4\> s8\!
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

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = "soprano" <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = sopranos { \global \SopranoMusic }
          \addlyrics \SopranoLyrics
        >>
        \new Staff = "alto" <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "altos" { << \global \AltoMusic >> }
          \context Lyrics = "altos" \lyricsto "altos" \AltoLyrics
        >>
        \new Staff = "tenor" <<
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
          \context Lyrics = "tenors" \lyricsto "tenors" \TenorLyrics
        >>
        \new Staff = "bass" <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "basses" { \clef bass << \global \BassMusic >> }
          \context Lyrics = "basses" \lyricsto "basses" \BassLyrics
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \set Staff.printPartCombineTexts = ##f
          \partCombine
          << \global \SopranoMusic >>
          << \global \AltoMusic >>
        >>
        \new Dynamics \dynamicsPiano
        \new Staff <<
          \clef bass
          \set Staff.printPartCombineTexts = ##f
          \partCombine
          << \global \TenorMusic >>
          << \global \BassMusic >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
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
        \new Staff = "soprano" <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = sopranos { \global \SopranoMusic }
          \addlyrics \SopranoLyrics
        >>
        \new Staff = "alto" <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "altos" { << \global \AltoMusic >> }
          \context Lyrics = "altos" \lyricsto "altos" \AltoLyrics
        >>
        \new Staff = "tenor" <<
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
          \context Lyrics = "tenors" \lyricsto "tenors" \TenorLyrics
        >>
        \new Staff = "bass" <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "basses" { \clef bass << \global \BassMusic >> }
          \context Lyrics = "basses" \lyricsto "basses" \BassLyrics
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \set Staff.printPartCombineTexts = ##f
          \partCombine
          << \global \SopranoMusic >>
          << \global \AltoMusic >>
        >>
        \new Dynamics \dynamicsPiano
        \new Staff <<
          \clef bass
          \set Staff.printPartCombineTexts = ##f
          \partCombine
          << \global \TenorMusic >>
          << \global \BassMusic >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-bass"
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
        \new Staff = "soprano" <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = sopranos { \global \SopranoMusic }
          \addlyrics {\tiny \SopranoLyrics}
        >>
        \new Staff = "alto" <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "altos" { << \global \AltoMusic >> }
          \addlyrics {\tiny \AltoLyrics}
        >>
        \new Staff = "tenor" <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
          \addlyrics {\tiny \TenorLyrics}
        >>
        \new Staff = "bass" <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "basses" { \clef bass << \global \BassMusic >> }
          \context Lyrics = "basses" \lyricsto "basses" \BassLyrics
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          \magnifyStaff #4/7
          \set Staff.printPartCombineTexts = ##f
          \partCombine
          << \global \SopranoMusic >>
          << \global \AltoMusic >>
        >>
        \new Dynamics \dynamicsPiano
        \new Staff <<
          \clef bass
          \magnifyStaff #4/7
          \set Staff.printPartCombineTexts = ##f
          \partCombine
          << \global \TenorMusic >>
          << \global \BassMusic >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
    <<
      \new ChoirStaff <<
        \new Staff = "soprano" <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = sopranos { \global \SopranoMusic }
          \addlyrics \SopranoLyricsMidi
        >>
        \new Staff = "alto" <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "altos" { << \global \AltoMusic >> }
        >>
        \new Staff = "tenor" <<
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
        >>
        \new Staff = "bass" <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "basses" { \clef bass << \global \BassMusic >> }
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          << \global \SopranoMusic >>
          << \global \AltoMusic >>
          \new Dynamics \dynamicsPiano
          << \global \TenorMusic >>
          << \global \BassMusic >>
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
        \new Staff = "soprano" <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = sopranos { \global \SopranoMusic }
        >>
        \new Staff = "alto" <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "altos" { << \global \AltoMusic >> }
          \addlyrics \AltoLyricsMidi
        >>
        \new Staff = "tenor" <<
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
        >>
        \new Staff = "bass" <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "basses" { \clef bass << \global \BassMusic >> }
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          << \global \SopranoMusic >>
          << \global \AltoMusic >>
          \new Dynamics \dynamicsPiano
          << \global \TenorMusic >>
          << \global \BassMusic >>
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
        \new Staff = "soprano" <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = sopranos { \global \SopranoMusic }
        >>
        \new Staff = "alto" <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "altos" { << \global \AltoMusic >> }
        >>
        \new Staff = "tenor" <<
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
          \addlyrics \TenorLyricsMidi
        >>
        \new Staff = "bass" <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "basses" { \clef bass << \global \BassMusic >> }
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          << \global \SopranoMusic >>
          << \global \AltoMusic >>
          \new Dynamics \dynamicsPiano
          << \global \TenorMusic >>
          << \global \BassMusic >>
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
        \new Staff = "soprano" <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = sopranos { \global \SopranoMusic }
        >>
        \new Staff = "alto" <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "altos" { << \global \AltoMusic >> }
        >>
        \new Staff = "tenor" <<
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenors" { \clef "treble_8" << \global \TenorMusic >> }
        >>
        \new Staff = "bass" <<
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "basses" { \clef bass << \global \BassMusic >> }
          \addlyrics \BassLyricsMidi
        >>
      >>
      \new PianoStaff <<
        \new Staff <<
          << \global \SopranoMusic >>
          << \global \AltoMusic >>
          \new Dynamics \dynamicsPiano
          << \global \TenorMusic >>
          << \global \BassMusic >>
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
