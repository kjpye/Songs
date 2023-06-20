\version "2.25.0"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Rhythm of Life"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Cy Coleman"
  arranger    = "Arr. Richard Barnes"
%  opus        = "opus"

  poet        = "Dorothy Fields"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key f \major
  \time 2/4
  \tempo 4=92
}

RehearsalTrack = {
%  \repeat volta 2 {
    \textMark \markup { \circle "3a" } s2*4
%  }
%  \set Score.currentBarNumber = #5
  \textMark \markup { \circle "3b" }
  \mark \markup { \box    "A"  } s2*4
  \textMark \markup { \circle "3c" } s2*4
  \textMark \markup { \circle "4a" }
  \mark \markup { \box    "B"  } s2*4
  \textMark \markup { \circle "4b" } s2*4
  \textMark \markup { \circle "4c" }
  \mark \markup { \box    "C"  } s2*4
  \textMark \markup { \circle "5a"  } s2*4 \break
  \textMark \markup { \circle "5b" }
  \mark \markup { \box    "D" } s2*4
  \textMark \markup { \circle "5c"  } s2*4 \break
  \textMark \markup { \circle "6a" }
  \mark \markup { \box    "E" } s2*4
  \textMark \markup { \circle "6b"  } s2*4 \break
  \textMark \markup { \circle "7a" }
  \mark \markup { \box    "F"  } s2*4
  \textMark \markup { \circle "7b" } s2*4 \break
  \textMark \markup { \circle "7c" }
  \mark \markup { \box    "G"  } s2*4
  \textMark \markup { \circle "8a" } s2*4 \break
%  \repeat volta 2 {
  \textMark \markup { \circle "8b" }
    \mark \markup { \box    "H"  } s2*4
    \textMark \markup { \circle "8c" } s2*4
%  }
  \textMark \markup { \circle "9a" }
  \mark \markup { \box    "I"  } s2*4
  \textMark \markup { \circle "9b" } s2*4
  \textMark \markup { \circle "9c" }
  \mark \markup { \box    "J"   } s2*4
  \textMark \markup { \circle "10a" } s2*4 \break
  \textMark \markup { \circle "10b" }
  \mark \markup { \box    "K"   } s2*4
  \textMark \markup { \circle "10c" } s2*4 \break
  \repeat volta 2 {
  \textMark \markup { \circle "11a" }
    \mark \markup { \box    "L"   } s2*4
    \textMark \markup { \circle "11b" } s2*3
  }
  \alternative { { s2 } { s2 } } \break
  \textMark \markup { \circle "12a" }
  \mark \markup { \box    "M"   } s2*4
  \textMark \markup { \circle "12b" } s2*4 \break
  \textMark \markup { \circle "12c" }
  \mark \markup { \box    "N"   } s2*4
  \textMark \markup { \circle "13a" } s2*4 \break
  \textMark \markup { \circle "13b" }
  \mark \markup { \box    "O"   } s2*4
  \textMark \markup { \circle "14a" } s2*4 \break
  \textMark \markup { \circle "14b" }
  \mark \markup { \box    "P"   } s2*4
  \textMark \markup { \circle "15a" } s2*4
  \textMark \markup { \circle "15b" }
  \mark \markup { \box    "Q"   } s2*6 \break
  \textMark \markup { \circle "16a" } s2*4
  \textMark \markup { \box    "16b" } s2*4
}

TempoTrack = {
}

dynamicsOneAbove = {
%  \repeat volta 2 {
  s2*4
%  }
  s2\mp^\markup "ALL VOICES UNISON" |
  s2*3 |
  s2\mf | % 3c
  s2*10 |
  s4. s8\omit\mp-\markup{\dynamic mp \italic intensely} | % 4b+++
  s2*7 |
  s4. s8^\markup "(Sop. tacet)" |
  s8^\markup SOPRANO s4.\mf |
  s2*15
  s2\p^\markup "ALL VOICES UNISON"
  s2*7
  s2\omit\p-\markup{\dynamic p \italic lightly}^\markup "SOPRANO and ALTO (unis.)"
  s2*7
%  \repeat volta 2 {
    s2^\markup "(S. and A.)" | s2*7
%  }
  s8^\markup "ALL VOICES UNISON" s4.\mp% 9a
  s2*7
  s8^\markup "(S. and T.)" s4.\mf % 9c
  s2*7
  s8^\markup "(Sop. I & Tenor)" s\f s4 | % 10b
  s2*6
  s2\> |
  \repeat volta 2 {
    s2\mp^\markup{\italic lightly \bold\upright "Second time only"} | % 11a
    s2*6
    \alternative {
      {s2} {s2}
    }
  }
  s2^\markup "ALL VOICES UNISON" | % 12a
  s2*6
  s4. s8\mf^\markup\italic "(Alto tacet)"
  s2^\markup "SOPRANO, TENOR & BASS" | % 12c
  s2*6
  s4. s8^\markup\italic "(Slowly)" |
  s2\mf^\markup SOPRANO | % 13b
  s2*7 |
  s8^\markup "(S.1 & Ten.)" s4.\f | % 14b
  s2*6 |
  s4.\< s8\! |
  s4 s\ff | % 15b
  s2*5 |
  s2^\markup "(S.)"  s4 s^\markup\italic "(S. div.)" | % 16a
  s2*7 |
}

dynamicsOneBelow = {
%  \repeat volta 2 {
  s2*4
%}
  s2*56
%  \repeat volta 2 {
    s2*8
%  }
  s2*8 |
  s2-\markup "(A. and B.)" | % 9c
  s2*7 |
  s2-\markup "(Sop. II & Bar.)"  % 10b
  s2*7 |
  \repeat volta 2 {
    s2-\markup "(A., T.)" | % 11a
    s2*6
    \alternative {
      {s2} {s4. s8-\markup\italic "(Ten. 8va)" }
    }
  }
  s2*24 |
  s2-\markup "(S. II & Bar.)" | % 14b
  s2*13
  s2-\markup "(A.)" | % 16a
  s2*5
  s2-\markup\italic "(A. div.)" |
  s2*2 |
}

dynamicsTwoAbove = {
%  \repeat volta 2 {
    s2*4
%  }
  s2*24
  s2^\markup "ALL OTHER VOICES UNISON"
  s2*6
  s4. s8^\markup "(Bass tacet)"
  s2-\markup "(A. and T.)" | % 6a
  s2*23
%  \repeat volta 2 {
    s2-\markup {"TENOR and BASS" \italic "(unis.)"} | % 8b
    s2*7
%  }
  s2*16
  s2-\markup "(Alto & Bass)" | % 10b
  s2*7
  \repeat volta 2 {
    s2\omit\p-\markup{\dynamic pp - \dynamic mp} | % 11a
    s2*6
    \alternative { {s2} {s4. s8\mf} }
  }
  s2*8
  s8-\markup ALTO s4.\f | % 12c
  s2*7
  s8-\markup ALTO s4.\mf | % 13b
  s2*7
  s8-\markup "(Alto & Bass)" s4.\f | % 14b
  s2*6
  s4.\< s8\! | % 15a+++
  s4 s\ff | % 15b
  s2*5
  s2-\markup "(T.)" | % 16a
  s2*5
  s2-\markup "(T. div.)" |
  s2*2 |
}

dynamicsTwoBelow = {
%  \repeat volta 2 {
    s2*4
%  }
  s2*56
%  \repeat volta 2 {
    s2*8
%  }
  s2*24
  \repeat volta 2 { s2*7 \alternative {{s2}{s2}}}
  s2*38
  s2-\markup "(B.)" | % 16a
  s4 s-\markup\italic "(B. div.)"
  s2*7
}

dynamicsThree = {
%  \repeat volta 2 {
    s2*4
%  }
  s2*56
%  \repeat volta 2 {
    s2*8
%  }
  s2*24
  \repeat volta 2 { s2*7 \alternative {{s2}{s2}}}
  s2*16
  s2-\markup "TENOR and BASS" | % 13b
  s2*30
}

partOne = \relative {
  d'16 e d cis d8 a' % 3b
  a8 g f e
  d16 e d cis d8 e
  e8 f f4
  f16 g f e f8 c' % 3c
  c8 bes a g
  f16 g f e f8 g
  g8 a a bes16[c]
  d8 d d16 c bes c % 4a
  d8 d e d
  c16 c c c c8 a
  c8 c d c
  bes16 bes bes8 c16 bes a g % 4b
  a16 a a8 d4
  g,8 g16 g a g f e
  e16 f f8 f f16 g \bar "||" \key aes \major
  aes16 aes aes8 aes g16 f % 4c
  aes16 aes aes8 bes8 aes16 f
  g16 g g g g f ees f
  g16 g g g aes8 r
  f16 f f f f8 des % 5a
  f16 f f f g8 g16 f
  e16 e e8 e d16 e
  e16 f f8 f
}

partOneE = {
%  \repeat volta 2 {
    R2*4
%  }
  R2*16 \section \key aes \major
  R2*8
}

partTwoS = \relative {
  r8 c'' c c % 5b
  c16 des des8 des4
  r8 bes bes bes
  bes16 c c8 c4
  r8 aes aes aes % 5c
  aes16 aes aes aes bes8 aes
  r8 g g g
  g16 aes aes g aes8 r
  r8 c c c % 6a
  c16 des des8 des4
  r8 bes8 bes bes
  bes16 c c8 c4
  r8 aes aes aes % 6b
  aes16 aes aes aes bes8 aes
  r8 g8 g g
  g16 aes aes g g8 r \key f \major \bar "||"
}

partTwoATB = \relative {
  aes'16 16 8 8 g16 ees | % 5b
  aes16 16 8 bes aes16 f | g16 g g g g f ees f | g g g g aes8 r |
  f16 f f f f8 des % 5c
  f16 f f f g8 g16 f
  e16 e e8 e d16 e
  e16 f f8 f
}

partTwoE = {
  R2*8
}

partThreeAT = \relative {
  aes'16 aes aes8 aes g16 f % 6a
  aes16 aes aes8 bes aes16 f
  g16 g g g g f ees f
  g16 g g g aes8 r
  f16 f f f f8 des % 6b
  f16 f f f g8 g16 f
  e16 e e8 e d16 e
  e16 f f8 e r \key f \major \bar "||"
}

partThreeB = \relative {
  aes4^\mf g % 6a
  f2
  g4 f
  ees2
  f4 ees % 6b
  des4 bes
  c4 e
  f4 r \key f \major \bar "||"
}

partThreeE = {
  R2*8 \key f \major \section
}

partFour = \relative {
  d'16 e d cis d8 a' % 7a
  a8 g f e
  d16 e d cis d d e8
  e8 f f4
  f16 g f e f8 c' % 7b
  c8 bes a g
  f16 g f e f g f g
  g8 a a r
  
}

partFourE = {
  R2*8
}

partFiveSA = \relative {
  bes'16 c bes a g a g f % 7c
  e16 f e dis e fis g gis
  a16 b a g fis g fis e
  d8 fis a r
  g16 a g(f) e f e d % 8a
  c16 d c b c d dis e
  f16 g f d e f e cis
  d8 cis d4
}

partFiveE = {
  R2*8
}

partSixSA = \relative {
%  \repeat volta 2 {
    bes'16 c b a  g a g f % 8b
    e16 f e dis e fis g gis
    a16 b a g fis g fis e
    d8 fis a r
    g16 a g(f) e f e d % 8c
    c16 d c b c d dis e
    f16 g f d e f e cis
    d8-> cis-> d-> r
%  }
  \key d \major
}

partSixTB = \relative {
%  \repeat volta 2 {
    \set melismaBusyProperties = #'()
    \slurDashed
    r8 d'16^\p d d8(d) % 8b
    \slurSolid
    \unset melismaBusyProperties
    d8 d e d
    r8 c16 c c8 c
    d8 d d c
    r8 bes16 bes bes8 bes % 8c
    c8 c c bes
    a8(d) cis(e)
    d8-> cis-> d-> r
%  }
  \key d \major
}

partSixE = {
% \repeat volta 2 {
  R2*8
% }
  \key d \major
}

partSeven = \relative {
  r8 fis'16 fis fis8 fis % 9a
  fis8 g g16( fis e8)
  r8 g16 g g8 g
  g8 a a16(g fis8)
  r8 a16 a a8 a % 9b
  a8 b b16(a g8)
  cis8(a) b(cis)
  d8 cis b(a)
}

partSevenE = {
  R2*8
}

partEightST = \relative {
  a'16 a a8 a % 9c
  a8 b b16(a g8)
  r8 b16 b b8 b
  b8 cis cis16(b a8)
  r8 cis16 cis cis8 cis % 10a
  cis8 d d16(cis b8)
  e8(cis) d(e)
  fis8 e d(cis)
}

partEightAB = \relative {
  fis'16 fis fis8 fis % 9c
  fis8 g g16(fis e8)
  r8 g16 g g8 g
  g8 a a16(g fis8)
  r8 a16 a a8 a % 10a
  a8 b b16(a g8)
  cis8(a) b(cis)
  d8 cis b(a)
}

partEightE = { R2*8 }

partNineSiT = \relative {
  d''16 d d8 d % 10b
  d8 e e16(d cis8)
  r8 e16 e e8 e
  e8 fis fis16(e d8)
  r8 fis16 fis fis8 fis % 10c
  fis8 g g16(fis e8)
  fis8(e) fis(g)
  a8(g fis e) \key f \major \section
}

partNineSiiBi = \relative {
  a'16 a a8 a % 10b
  a8 b b16(a g8)
  r8 b16 b b8 b
  b8 cis cis16(b a8)
  r8 cis16 cis cis8 cis % 10c
  cis8 d d16(cis b8)
  cis8(b) cis(d)
  e8(d cis b) \key f \major \section
}

partNineABii = \relative {
  fis'16^\f fis fis8 fis % 10b -K-
  fis8 g g16(fis e8)
  r8 g16 g g8 g
  g8 a a16(g fis8)
  r8 a16 a a8 a % 10c
  a8 b b16(a g8)
  a8(g) a(b)
  cis8(b a g) \key f \major \section
}

partNineE = { R2*8 \key f \major }

partTenS = \relative {
  \repeat volta 2 {
    d''16 e d c bes c bes a % 11a
    g16 a g fis g8 bes
    c16 d c bes a bes a g
    f16 g f e f8 a
    bes16 c bes a g a g f % 11b
    e16 f e d e8 g
    d16 e f g a b cis d
  }
  \alternative {
    {
      R2
%      e16 d d cis d8 r
    }
    {
      e16 d d cis d8 a16^\mf b
    }
  }
  \section \key c \major
}

partTenSSingle = \relative {
  R2*8
%  \repeat volta 2 {
    d''16 e d c bes c bes a % 11a
    g16 a g fis g8 bes
    c16 d c bes a bes a g
    f16 g f e f8 a
    bes16 c bes a g a g f % 11b
    e16 f e d e8 g
    d16 e f g a b cis d
%  }
%  \alternative {
%    {
%      R2
%      e16 d d cis d8 r
%    }
%    {
      e16 d d cis d8 a16^\mf b
%    }
%  }
  \section \key c \major
}

partTenAT = \relative {
  \repeat volta 2 {
    f'16 g f e d e d c % 11a
    bes16 c bes a bes8 d
    e16 f e d c d c bes
    a16 bes a g a8 c
    d16 e d c bes c bes a % 11b
    g16 a g f g8 bes
    f16 g a b cis d e f
  }
  \alternative {
    {
      R2
%      g16 f f e f8 r
    }
    {
      g16 f f e f8 a16 b
    }
  }
  \section \key c \major
}

partTenATSingle = \relative {
  R2*8
%  \repeat volta 2 {
    f'16 g f e d e d c % 11a
    bes16 c bes a bes8 d
    e16 f e d c d c bes
    a16 bes a g a8 c
    d16 e d c bes c bes a % 11b
    g16 a g f g8 bes
    f16 g a b cis d e f
%  }
%  \alternative {
%    {
%      R2
%%      g16 f f e f8 r
%    }
%    {
      g16 f f e f8 a16 b
%    }
%  }
  \section \key c \major
}

partTenB = \relative {
  \repeat volta 2 {
    d4 f % 11a
    g4 bes,
    c4 e
    f4 a,
    bes4 d % 11b
    e4 g,
    a4 cis
    \alternative {
      { d2 }
      { d4. a'16 b }
    }
  }
  \bar "||" \key c \major
}

partTenE = {
  \repeat volta 2 {
    R2*7
    \alternative { {R2} {R2} }
  }
  \key c \major
}

partEleven = \relative {
  c''16 c c8 c b16 a % 12a
  c16 c c8 d c16 a
  b16 b b b b a g a
  b16 b b b c8 r
  a16 a a a a8 f % 12b
  a16 a a a b8 b16 a
  gis16 gis gis8 gis fis16 gis
  gis16 a a8 a
}

partElevenE = { R2*8 }

partTwelveSTB = \relative {
  c''16 c c8 c b16 a % 12c
  c16 c c8 d c16 a
  b16 b b b b a g a
  b16 b b b c8 r
  a16 a a a a8 f % 13a
  a16 a a a b8 b16 a
  gis16 gis gis8 gis fis16 gis
  gis16 a a8 a
}

partTwelveA = \relative {
  r8 e' e e % 12c
  e16 f f8 f r
  r8 d d d
  d16 e e8 e r
  r8 c c c % 13a
  c16 c c c d8 c
  r8 b b b
  b16 c c b c8
}

partTwelveE = { R2*8 }

partThirteenS = \relative {
  c''16 c c8 c b16 a % 13b
  c16 c c8 d c16 a
  b16 b b b b a g a
  b16 b b b c8 r
  a16 a a a a8 f % 14a
  a16 a a a b8 b16 a
  gis16 gis gis8 gis fis16 gis
  gis16 a a8 a r \section \key f \major
}

partThirteenA = \relative {
  r8 e' e e % 13b
  e16 f f8 f r
  r8 d8 d d
  d16 e e8 e r
  r8 c c c % 14a
  c16 c c c d8 c
  r8 b b b
  b16 c c b c8 r \section \key f \major
}

partThirteenTB = \relative {
  c'4^\f b % 13b
  a2
  b4 a
  g2
  a4 g % 14a
  f4 d
  e4 gis
  a4. r8 \key f \major \bar "||"
}

partFourteenSiT = \relative {
  f''8 f f % 14b
  f16 g g8 g4
  r8 e e e
  e16 f f8 f4
  r8 d d d % 15a
  d16 d d d e8 d
  r8 cis cis cis
  cis8 cis d e
  r4 f4~ % 15b
  f2
  r4 f~
  f2
  r4 f~
  f2
}

partFourteenSiiBi = \relative {
  d''8 8 8 | 16 16 8 4 | s8 c c c | 16 16 8 4 | % 14b
  s8 bes8 8 8 | 16 16 16 16 c8 bes | s a a a  a a b cis |
  s4 d~ | 2 | s4 d~ | 2  s4 d~ | 2 |
}

partFourteenABii = \relative {
  a'8 a a % 14b
  a16 bes bes8 bes4
  r8 g g g
  g16 a a8 a4
  r8 f f f % 15a
  f16 f f f g8 f
  r8 e e e
  e8 e f g
  r4 a~ % 15b
  a2
  r4 a~
  a2
  r4 a~
  a2
}

partFourteenE = { R2*14 }

partFifteenS = \relative {
  a'16 a a8 a a % 16a
  r4 <d f>8 <cis e>
  r4 <d f>8 <cis e>
  r4 <d f>8 <cis e>
  r4 <d f>16 q <cis e>8 % 16b
  <d fis>2~(
  q4 <fis a>~
  q4~ <fis a \tweak font-size #-2 d> ~ |
  q4) r
}

partFifteenA = \relative {
  a'16 a a8 a a % 16a
  r4 a8 a
  r4 a8 a
  r4 a8 a
  r4 a16 a a8 % 16b
  a2~
  a4~<a d>~
  q2~
  q4 r
}

partFifteenT = \relative {
  a16 a a8 a a % 16a
  r4 f'8 e
  r4 f8 e
  r4 f8 e
  r4 f16 f e8 % 16b
  d2~(
  d4~<d fis>~
  q2~
  q4) r
}

partFifteenB = \relative {
  a16 a a8 a a % 16a
  r4 <a d>8 <a cis>
  r4 <a d>8 <a cis>
  r4 <a d>8 <a cis>
  r4 <a d>16 q <a cis>8 % 16b
  <d, a'>2~
  q2~
  q2~
  q4 r
}

partFifteenE = { R2*9 }

musicOne = \relative {
  \global
  \clef treble
%  \repeat volta 2 {
    s2*4
%  }
  \partOne f'16 g
  \partTwoS
  \partFour
  \partFiveSA
  \partSixSA
  \partSeven
  <<{r8 \voiceOne \partEightST} \new Voice {\voiceTwo s8 \partEightAB} >> \oneVoice
  <<{r8 \voiceOne \partNineSiT} \new Voice {\voiceTwo s8 \partNineSiiBi} >> \oneVoice
  <<{\voiceOne \partTenS} \new Voice {\voiceTwo \partTenAT} >> \oneVoice
  \partEleven a16 bes
  \partTwelveSTB a16 b
  \partThirteenS
  <<{r8 \voiceOne \partFourteenSiT} \new Voice {\voiceTwo s8 \partFourteenSiiBi} >> \oneVoice
  <<{\voiceOne \partFifteenS} \new Voice {\voiceTwo \partFifteenA} >> \oneVoice
  \bar "|."
}

musicOneSingle = \relative {
  \global
  \clef treble
%  \repeat volta 2 {
    s2*4
%  }
  \partOne f'16 g
  \partTwoS
  \partFour
  \partFiveSA
  \partSixSA
  \partSeven
  <<{r8 \voiceOne \partEightST} \new Voice {\voiceTwo s8 \partEightAB} >> \oneVoice
  <<{r8 \voiceOne \partNineSiT} \new Voice {\voiceTwo s8 \partNineSiiBi} >> \oneVoice
  <<{\voiceOne \partTenSSingle} \new Voice {\voiceTwo \partTenATSingle} >> \oneVoice
  \partEleven a16 bes
  \partTwelveSTB a16 b
  \partThirteenS
  <<{r8 \voiceOne \partFourteenSiT} \new Voice {\voiceTwo s8 \partFourteenSiiBi} >> \oneVoice
  <<{\voiceOne \partFifteenS} \new Voice {\voiceTwo \partFifteenA} >> \oneVoice
  \bar "|."
}

musicTwo = \relative {
  \global \clef treble
  \partOneE
  \partTwoATB f'16 g
  \partThreeAT
  \partFourE
  \partFiveE
  \clef bass \partSixTB
  \partSevenE
  \partEightE \clef treble
  r8 \partNineABii \clef bass
  \partTenB \clef treble
  \partElevenE
  \partTwelveA r8
  \partThirteenA
  r8 \partFourteenABii \clef bass
  <<{\voiceOne \partFifteenT} \new Voice {\voiceTwo \partFifteenB} >> \oneVoice
}

musicThree = \relative {
  \global \clef bass
  \partOneE
  \partTwoE
  \partThreeB
  \partFourE
  \partFiveE
  \partSixE
  \partSevenE
  \partEightE
  \partNineE
  \partTenE
  \partElevenE
  \partTwelveE
  \partThirteenTB
  \partFourteenE
  \partFourteenE
}

dynamicsSop = {
%  \repeat volta 2 {
    s2*4
%  } |
  s2\mp | s2*3 |
  s2\mf | s2*3 |
  s2*4 | % 4a
  s2 | s | s | s4. s8\omit\mp-\markup{\dynamic mp \italic intensely} |
  s2*4 |
  s2*4 | % 5a
  s8 s4.\mf | s2 | s | s |
  s2*4 |
  s2*8 | % 6
  s2\p | s | s | s | % 7a
  s2*4 |
  s2\omit\p-\markup{\dynamic p \italic lightly} | s | s | s |
  s2*4 | % 8a
%    \repeat volta 2 {
      s2*8
%    }
  s8 s4.\mp | s2 | s | s | % 9a
  s2*4 |
  s8 s4.\mf | s2 | s | s |
  s2*4 | % 10a
  s2*4 |
  s2 | s | s | s\> |
  \repeat volta 2 {
    s2\!\mp | s | s | s | % 11a
    s2 | s | s |
    \alternative { {s2} {s4. s8\mf} }
  }
  s2*4 | % 12a
  s2 | s | s | s4. s8\mf |
  s2*4 |
  s2*4 | % 13a
  s2\mf | s | s | s |
  s2*4 | % 14a
  s8 s4.\f | s2 | s | s |
  s2 | s | s | s4.\< s8\! | % 15a
  s4 s\ff | s2 | s | s | s | s |
  s2*9 | % 16
}

dynamicsSopSingle = {
%  \repeat volta 2 {
    s2*4
%  } |
  s2\mp | s2*3 |
  s2\mf | s2*3 |
  s2*4 | % 4a
  s2 | s | s | s4. s8\omit\mp-\markup{\dynamic mp \italic intensely} |
  s2*4 |
  s2*4 | % 5a
  s8 s4.\mf | s2 | s | s |
  s2*4 |
  s2*8 | % 6
  s2\p | s | s | s | % 7a
  s2*4 |
  s2\omit\p-\markup{\dynamic p \italic lightly} | s | s | s |
  s2*4 | % 8a
%    \repeat volta 2 {
      s2*8
%    }
  s8 s4.\mp | s2 | s | s | % 9a
  s2*4 |
  s8 s4.\mf | s2 | s | s |
  s2*4 | % 10a
  s2*4 |
  s2 | s | s | s\> |
  s2\! | s | s | s | % 11a
  s2*4 |
  s2\mp | s | s | s | % 11a
  s2 | s | s | s |
  s2*4 | % 12a
  s2 | s | s | s4. s8\mf |
  s2*4 |
  s2*4 | % 13a
  s2\mf | s | s | s |
  s2*4 | % 14a
  s8 s4.\f | s2 | s | s |
  s2 | s | s | s4.\< s8\! | % 15a
  s4 s\ff | s2 | s | s | s | s |
  s2*9 | % 16
}

soprano = \relative c' {
  \global
  % \repeat volta 2 {
    s2*4
  % }
  \partOne r8
  \partTwoS
  \partFour
  \partFiveSA
  \partSixSA
  \partSeven
  r8 \partEightST
  r8 \partCombine \partNineSiT \partNineSiiBi
  \partTenS
  \partEleven a'16 bes
  \partTwelveSTB a16 b
  \partThirteenS
  r8 \partCombine \partFourteenSiT \partFourteenSiiBi
  \partFifteenS
  \bar "|."
}

sopranoSingle = \relative c' {
  \global
%  \repeat volta 2 {
    s2*4
%  }
  \partOne r8
  \partTwoS
  \partFour
  \partFiveSA
  \partSixSA
  \partSeven
  r8 \partEightST
  r8 \partCombine \partNineSiT \partNineSiiBi
  \partTenSSingle
  \partEleven a'16 bes
  \partTwelveSTB a16 b
  \partThirteenS
  r8 \partCombine \partFourteenSiT \partFourteenSiiBi
  \partFifteenS
  \bar "|."
}

sopranoAligner = \relative c' {
  \global
%  \repeat volta 2 {
    s2*4
%  }
  \partOne r8
  \partTwoS
  \partFour
  \partFiveSA
  \partSixSA
  \partSeven
  r8 \partEightST
  r8 \partNineSiT
  \partTenS
  \partEleven a16 bes
  \partTwelveSTB a16 b
  \partThirteenS
  r8 \partFourteenSiT
  \partFifteenS
  \bar "|."
}

sopranoAlignerSingle = \relative c' {
%  \repeat volta 2 {
  s2*4
%  }
  \partOne r8
  \partTwoS
  \partFour
  \partFiveSA
  \partSixSA
  \partSeven
  r8 \partEightST
  r8 \partNineSiT
  \partTenSSingle
  \partEleven a'16 bes
  \partTwelveSTB a16 b
  \partThirteenS
  r8 \partFourteenSiT
  \partFifteenS
  \bar "|."
}

dynamicsAlto = {
%  \repeat volta 2 {
    s2*4
%  } |
  s2\mp | s2*3 |
  s2\mf | s2*3 |
  s2*4 | % 4a
  s2 | s | s | s4. s8\omit\mp-\markup{\dynamic mp \italic intensely} |
  s2*4 |
  s2 | s | s | s4. s8\mf | % 5a
  s2*4 |
  s2*4 |
  s2*8 | % 6
  s2\p | s | s | s | % 7a
  s2*4 |
  s2\omit\p-\markup{\dynamic p \italic lightly} | s | s | s |
  s2*4 | % 8a
%    \repeat volta 2 {
      s2*8
%    }
  s8 s4.\mp | s2 | s | s | % 9a
  s2*4 |
  s8 s4.\mf | s2 | s | s |
  s2*4 | % 10a
  s2*4 |
  s2 | s | s | s\> |
  \repeat volta 2 {
    s2\!\mp | s | s | s | % 11a
    s2 | s | s |
    \alternative { {s2} {s4. s8\mf} }
  }
  s2*4 | % 12a
  s2*4 |
  s8 s4.\f | s2 | s | s |
  s2*4 | % 13a
  s8 s4.\mf | s2 | s | s |
  s2*4 | % 14a
  s8 s4.\f | s2 | s | s |
  s2 | s | s | s4.\< s8\! | % 15a
  s4 s\ff | s2 | s | s | s | s |
  s2*9 | % 16
}

dynamicsAltoSingle = {
%  \repeat volta 2 {
    s2*4
%  } |
  s2\mp | s2*3 |
  s2\mf | s2*3 |
  s2*4 | % 4a
  s2 | s | s | s4. s8\omit\mp-\markup{\dynamic mp \italic intensely} |
  s2*4 |
  s2 | s | s | s4. s8\mf | % 5a
  s2*4 |
  s2*4 |
  s2*8 | % 6
  s2\p | s | s | s | % 7a
  s2*4 |
  s2\omit\p-\markup{\dynamic p \italic lightly} | s | s | s |
  s2*4 | % 8a
%    \repeat volta 2 {
      s2*8
%    }
  s8 s4.\mp | s2 | s | s | % 9a
  s2*4 |
  s8 s4.\mf | s2 | s | s |
  s2*4 | % 10a
  s2*4 |
  s2 | s | s | s\> |
  s2\! | s | s | s | % 11a
  s2*4 |
  s2\!\mp | s | s | s | % 11a
  s2 | s | s | s |
  s2*4 | % 12a
  s2*4 |
  s8 s4.\f | s2 | s | s |
  s2*4 | % 13a
  s8 s4.\mf | s2 | s | s |
  s2*4 | % 14a
  s8 s4.\f | s2 | s | s |
  s2 | s | s | s4.\< s8\! | % 15a
  s4 s\ff | s2 | s | s | s | s |
  s2*9 | % 16
}

alto = \relative c' {
  \global
%  \repeat volta 2 {
    s2*4
%  }
  \partOne f16 g |
  \partTwoATB f16 g
  \partThreeAT
  \partFour
  \partFiveSA
  \partSixSA
  \partSeven
  r8 \partEightAB |
  r8 \partNineABii |
  \partTenAT
  \partEleven r8
  \partTwelveA r8
  \partThirteenA
  r8 \partFourteenABii
  \partFifteenA
  \bar "|."
}

altoSingle = \relative c' {
  \global
%  \repeat volta 2 {
    s2*4
%  }
  \partOne f16 g |
  \partTwoATB f16 g
  \partThreeAT
  \partFour
  \partFiveSA
  \partSixSA
  \partSeven
  r8 \partEightAB |
  r8 \partNineABii |
  \partTenATSingle
  \partEleven r8
  \partTwelveA r8
  \partThirteenA
  r8 \partFourteenABii
  \partFifteenA
  \bar "|."
}

dynamicsTenor = {
%  \repeat volta 2 {
    s2*4
%  } |
  s2\mp | s2*3 |
  s2\mf | s2*3 |
  s2*4 | % 4a
  s2 | s | s | s4. s8\omit\mp-\markup{\dynamic mp \italic intensely} |
  s2*4 |
  s2 | s | s | s4. s8\mf | % 5a
  s2*4 |
  s2*4 |
  s2*8 | % 6
  s2\p | s | s | s | % 7a
  s2*4 |
  s2*4 |
  s2*4 | % 8a
%  \repeat volta 2 {
    s8 4.\p | s2 | s | s |
    s2*4 |
%  }
  s8 s4.\mp | s2 | s | s | % 9a
  s2*4 |
  s8 s4.\mf | s2 | s | s |
  s2*4 | % 10a
  s2*4 |
  s2 | s | s | s\> |
  \repeat volta 2 {
    s2\!\mp | s | s | s | % 11a
    s2 | s | s |
    \alternative { {s2} {s4. s8\mf} }
  }
  s2*4 | % 12a
  s2*4 |
  s2*4 |
  s2*4 | % 13a
  s2\f | s | s | s |
  s2*4 | % 14a
  s8 s4.\f | s2 | s | s |
  s2 | s | s | s4.\< s8\! | % 15a
  s4 s\ff | s2 | s | s | s | s |
  s2*9 | % 16
}

dynamicsTenorSingle = {
%  \repeat volta 2 {
    s2*4
%  } |
  s2\mp | s2*3 |
  s2\mf | s2*3 |
  s2*4 | % 4a
  s2 | s | s | s4. s8\omit\mp-\markup{\dynamic mp \italic intensely} |
  s2*4 |
  s2 | s | s | s4. s8\mf | % 5a
  s2*4 |
  s2*4 |
  s2*8 | % 6
  s2\p | s | s | s | % 7a
  s2*4 |
  s2*4 |
  s2*4 | % 8a
%  \repeat volta 2 {
    s8 4.\p | s2 | s | s |
    s2*4 |
%  }
  s8 s4.\mp | s2 | s | s | % 9a
  s2*4 |
  s8 s4.\mf | s2 | s | s |
  s2*4 | % 10a
  s2*4 |
  s2 | s | s | s\> |
  s2\! | s | s | s | % 11a
  s2 | s | s | s |
  s2\mp | s | s | s | % 11a
  s2 | s | s | s4. s8\mf |
  s2*4 | % 12a
  s2*4 |
  s2*4 |
  s2*4 | % 13a
  s2\f | s | s | s |
  s2*4 | % 14a
  s8 s4.\f | s2 | s | s |
  s2 | s | s | s4.\< s8\! | % 15a
  s4 s\ff | s2 | s | s | s | s |
  s2*9 | % 16
}

tenor = \relative c {
  \global
%  \repeat volta 2 {
    s2*4
%  }
  \transpose c c, \partOne f16 g |
  \transpose c c, \partTwoATB f16 g
  \transpose c c, \partThreeAT
  \transpose c c, \partFour
  \partFiveE
  \partSixTB
  \transpose c c, \partSeven
  r8 \transpose c c, \partEightST
  r8 \transpose c c, \partNineSiT
  \transpose c c, \partTenAT
  \transpose c c, \partEleven a16 bes
  \transpose c c, \partTwelveSTB r8
  \partThirteenTB
  r8 \transpose c c, \partFourteenSiT
  \partFifteenT
  \bar "|."
}

tenorSingle = \relative c {
  \global
%  \repeat volta 2 {
    s2*4
%  }
  \transpose c c, \partOne f16 g |
  \transpose c c, \partTwoATB f16 g
  \transpose c c, \partThreeAT
  \transpose c c, \partFour
  \partFiveE
  \partSixTB
  \transpose c c, \partSeven
  r8 \transpose c c, \partEightST
  r8 \transpose c c, \partNineSiT
  \transpose c c, \partTenATSingle
  \transpose c c, \partEleven a16 bes
  \transpose c c, \partTwelveSTB r8
  \partThirteenTB
  r8 \transpose c c, \partFourteenSiT
  \partFifteenT
  \bar "|."
}

dynamicsBass = {
%  \repeat volta 2 {
    s2*4
%  } |
  s2\mp | s2*3 |
  s2\mf | s2*3 |
  s2*4 | % 4a
  s2 | s | s | s4. s8\omit\mp-\markup{\dynamic mp \italic intensely} |
  s2*4 |
  s2 | s | s | s4. s8\mf | % 5a
  s2*4 |
  s2*4 |
  s2\mf | s | s | s | % 6a
  s2*4 |
  s2\p | s | s | s | % 7a
  s2*4 |
  s2*4 |
  s2*4 | % 8a
%  \repeat volta 2 {
    s8 4.\p | s2 | s | s |
    s2*4 |
%  }
  s8 s4.\mp | s2 | s | s | % 9a
  s2*4 |
  s8 s4.\mf | s2 | s | s |
  s2*4 | % 10a
  s2*4 |
  s2 | s | s | s\> |
  \repeat volta 2 {
    s2\!\omit\mp-\markup{\dynamic pp - \dynamic mp} | s | s | s | % 11a
    s2 | s | s |
    \alternative { {s2} {s4. s8\mf} }
  }
  s2*4 | % 12a
  s2*4 |
  s2*4 |
  s2*4 | % 13a
  s2\f | s | s | s |
  s2*4 | % 14a
  s8 s4.\f | s2 | s | s |
  s2 | s | s | s4.\< s8\! | % 15a
  s4 s\ff | s2 | s | s | s | s |
  s2*9 | % 16
}

dynamicsBassSingle = {
%  \repeat volta 2 {
    s2*4
%  } |
  s2\mp | s2*3 |
  s2\mf | s2*3 |
  s2*4 | % 4a
  s2 | s | s | s4. s8\omit\mp-\markup{\dynamic mp \italic intensely} |
  s2*4 |
  s2 | s | s | s4. s8\mf | % 5a
  s2*4 |
  s2*4 |
  s2\mf | s | s | s | % 6a
  s2*4 |
  s2\p | s | s | s | % 7a
  s2*4 |
  s2*4 |
  s2*4 | % 8a
%  \repeat volta 2 {
    s8 4.\p | s2 | s | s |
    s2*4 |
%  }
  s8 s4.\mp | s2 | s | s | % 9a
  s2*4 |
  s8 s4.\mf | s2 | s | s |
  s2*4 | % 10a
  s2*4 |
  s2 | s | s | s\> |
  s2\!\pp | s | s | s | % 11a
  s2 | s | s | s |
  s2\mp | s | s | s | % 11a
  s2 | s | s | s4. s8\mf
  s2*4 | % 12a
  s2*4 |
  s2*4 |
  s2*4 | % 13a
  s2\f | s | s | s |
  s2*4 | % 14a
  s8 s4.\f | s2 | s | s |
  s2 | s | s | s4.\< s8\! | % 15a
  s4 s\ff | s2 | s | s | s | s |
  s2*9 | % 16
}

bass = \relative c {
  \global
%  \repeat volta 2 {
    s2*4
%  }
  \transpose c c, \partOne f16 g |
  \transpose c c, \partTwoATB r8
                  \partThreeB
  \transpose c c, \partFour
                  \partFiveE
                  \partSixTB
  \transpose c c, \partSeven
  r8 \transpose c c, \partEightAB
  r8 \transpose c c, \partCombine \partNineSiiBi \partNineABii
  \partTenB
  \transpose c c, \partEleven a16 bes
  \transpose c c, \partTwelveSTB r8
  \partThirteenTB
  r8 \transpose c c, \partCombine \partFourteenSiiBi \partFourteenABii
  \partFifteenB
  \bar "|."
}

bassAligner = \relative c {
  \global
%  \repeat volta 2 {
    s2*4
%  }
  \transpose c c, \partOne f16 g |
  \transpose c c, \partTwoATB r8
                  \partThreeB
  \transpose c c, \partFour
                  \partFiveE
                  \partSixTB
  \transpose c c, \partSeven
  r8 \transpose c c, \partEightAB
  r8 \transpose c c, \partNineSiiBi
  \partTenB
  \transpose c c, \partEleven a16 bes
  \transpose c c, \partTwelveSTB r8
  \partThirteenTB
  r8 \transpose c c, \partFourteenSiiBi
  \partFifteenB
  \bar "|."
}

rhI  = { \change Staff = rhI  }
rhII = { \change Staff = rhII }
lhII = { \change Staff = lhII }

pianoOneRH = \relative {
  \global \voiceOne
  \ottava #1
%  \repeat volta 2 {
    r8^\markup\italic "R.H." d'''4->(e8-.)
    f8.->( e16~e8 a,-.)
    r8 d4->( e8-.)
    f16-> g8 a16->~a4
%  }
  d,16(e d cis d8-.) a'-.
  a8->(g-.) f-. e-.
  d16(e d cis d8-.) e-.
  e8->(f-.) f4
  f16(g f e f8-.) c'-. % 3c
  c8->(bes-.) a-. g-.
  f16(g f e f8-.) g-.
  g8->(a-.) a bes16(c
  d8-.) d-. d16( c bes c % 4a
  d8-.) d(e-.) d(
  c16) c c c c8 a(
  c8-.) c(d-.) c-.
  bes16 bes bes8-. c16(bes a g) % 4b
  a16 a a8-. d4-.
  f,8-. g16 g a(g f e)
  e16->(f f8) f8-. f16 g \bar "||" \key aes \major
  aes16 aes aes8-. aes-> g16 f % 4c -C-
  aes16 aes aes8-. bes8-> aes16 f
  g16 g g g g f ees f
  g16 g g g aes8-> r
  f16 f f f f8-> des-. % 5a
  f16 f f f g8-> g16 f
  e16 e e8 e-> d16 e
  e16-> f f8-. f-> r
  r8 c'8-. c-. c-. % 5b -D-
  c16->(des-.) des8-. des4->
  r8 bes-. bes-. bes-.
  bes16->(c-.) c8-. c4->
  r8 aes-. aes-. aes-. % 5c
  aes16 aes aes aes(bes8-.) aes-.
  r8 g-. g-. g-.
  g16-> aes aes g aes8-. r
  aes4(g % 6a -E-
  f2)
  g4(f
  ees2)
  f4(ees % 6b
  des4 bes
  c4 e
  f4~f16) g(f e) \bar "||" \key f \major
  d16(e d cis d8-.) a'-. % 7a -F-
  a8->(g-.) f-. e-.
  d16(e d cis d-.)d e8-.
  e8->(f-.) f4
  f16(g f e f8-.) c'-. % 7b
  c8->(bes-.) a-. g-.
  f16(g f e f g f g)
  g8->(a-.) a r
  bes16(c bes a g a g f) % 7c -G-
  e16(f e dis e fis g gis)
  a16(b a g fis g fis e
  d8) fis-. a-. r
  g16(a g f e f e d) % 8a
  c16(d c b c d dis e)
  f16( g f d e f e cis
  d8) cis-. d4-. \ottava #0
%  \repeat volta 2 {
    r8 <g, bes d> r q %8b -H-
    R2
    r8 <e a c> r q
    R2
    r8 <d g bes> r q
    R2
    r8 <d f a> r <e a cis>
    d'8-> cis-> d-> r
%  }
  \key d \major \ottava #1
  r8 fis16 fis fis8-. fis-. % 9a -I-
  fis8(g-.) g16(fis e8)
  r8 g16 g g8-. g-.
  g8(a-.) a16(g fis8)
  r8 a16 a a8-. a-. % 9b
  a8(b-.) b16( a g8)
  cis8(a-.) b(cis-.)
  d8(cis b a)
  r8 <fis a>16 q q8-. q-. % 9c -J-
  q8(<g b>-.) q16(<fis a> <e g>8)
  r8 <g b>16 q q8-. q-.
  q8(<a cis>-.) q16(<g b> <fis a>8)
  r8 <a cis>16 q q8-. q-. % 10a
  q8(<b d>-.) q16-.(<a cis> <g b>8)
  <cis e>8(<a cis>-.) <b d>(<cis e>-.)
  <d fis>8(<cis e> <b d> <a cis>)
  r8 <a, d>16 q q8-. q-. % 10b -K-
  q8(<b e>-.) q16(<a d> <g cis>8)
  r8 <b e>16 q q8-. q-.
  q8(<cis fis>-.) q16(<b e> <a d>8)
  r8 <cis fis>16 q q8-. q-. % 10c
  q8(<d g>-.) q16(<cis fis> <b e>8)
  <cis fis>8(<b e>) <cis fis>(<d g>)
  <e a>8(<d g> <cis fis> <b e>) \key f \major
  \repeat volta 2 {
    d'16(e d c bes c bes a % 11a -L-
    g16 a g fis)g8-. bes
    c16(d c bes a bes a g
    f16 g f e) f8-. a
    bes16(c bes a g a g f % 11b
    e16 f e d) e8-. g-.
    d16( e f g a b cis d
  }
  \alternative {
    {
      e16 d) d-> cis-> d8 r
    }
    {
      e16 d) d-> cis-> d8 r % should be a slur ending in here%
    }
  }
  \key c \major
  c16 c c8-. c-> b16 a % 12a -M-
  c16 c c8-. d-> c16 a
  b16 b b b b a g a
  b16 b b b c8-> r
  a16 a a a a8-> f % 12b
  a16 a a a b8-> b16 a
  gis16 gis gis8 gis-> fis16 gis
  gis16-> a a8 a-> r
  r8 <c, e>-. q-. q-. % 12c -N-
  q16->(q-.) q8-. q-> r
  r8 <b d>-. q-. q-.
  q16->(<c e>-.) q8-. q-> r
  r8 <a c>-. q-. q-. % 13a
  q16 q q q(<b d>8-.) <a c>-.
  r8 <gis b>-. q-. q-.
  q16-> <a c> q <gis b> <a c>8-. r
  c'4(b % 13b -O-
  a4) e16(f g a
  b4 a
  g4) d16(e f g
  a4 g % 14a
  d4 b
  c4 eis
  a4.) r8 \bar "||" \key f \major
  r8 <a, d f>8-. q-. q-. % 14b -P-
  q16->(<bes d g>-.) q8-. q4->
  r8 <g c e>-. q-. q-.
  q16->(<a c f>-.) q8-. q4->
  r8 <f bes d>-. q-. q-. % 15a
  q16 q q q(<g c e>8-.) <f bes d>-.
  r8 <e a cis>-. q-. q-.
  q8-. q-. <f b d>-. <g cis e>-.
  R2 % 15b -Q-
  <d' f a>8-> q-> <f a d>4->
  R2
  <d f a>8-> q-> <f a d>4->
  R2
  <d f a>8-> q-> <f a d>4->
  a16 a a8 a a % 16a
  a8 a <a d f> <a cis e>
  a8 a <a d f> <a cis e>
  a8 a <a d f> <a cis e>
  a8 a <a d f> <a cis e> % 16b
  r8 <d, fis a> r q
  r8 <fis a d> r q
  <a d fis>4 <fis a d>8-> q16-> q->
  a4-> r
  \bar "|."
}

dynamicsOnePiano = {
  \override DynamicTextSpanner.style = #'none
%  \repeat volta 2 {
    s8 s4.^\markup{\dynamic f - \dynamic mp} % 3a
    s2
    s2
    s2
%  }
  s2\mp % 3b
  s2
  s2
  s2
  s2\mf
  s2
  s2
  s2
  s2 % 4a -B-
  s2
  s2
  s2
  s2 % 4b
  s2
  s2
  s4. s8\mp
  s2 % 4c -C-
  s2
  s2
  s2
  s2 % 5a
  s2
  s2
  s2
  s8 s4.\mf % 5b -D-
  s2
  s2
  s2
  s2 % 5c
  s2
  s2
  s2
  s2 % 6a -E-
  s2
  s2
  s2
  s2 % 6b
  s2
  s2
  s4 s\>
  s2\p % 7a -F-
  s2
  s2
  s2
  s2 % 7b
  s2
  s2
  s2
  s2\p % 7c -G-
  s2
  s2
  s2
  s2 % 8a
  s2
  s2
  s2
%  \repeat volta 2 {
    s2 % 8b -H-
    s2
    s2
    s2
    s2 % 8c
    s2
    s2
    s2
%  }
  s8 s4.\mp % 9a -I-
  s2
  s2
  s2
  s2 % 9b
  s2
  s2
  s2
  s8 s4.\mf % 9c -J-
  s2
  s2
  s2
  s2 % 10a
  s2
  s2
  s2
  s8 s4.\f % 10b -K-
  s2
  s2
  s2
  s2 % 10c
  s2
  s2
  s2\>
  \repeat volta 2 {
    s2\!^\markup{\dynamic pp - \dynamic p - \dynamic mp} % 11a
    s2
    s2
    s2
    s2 % 11b
    s2
    s2
  }
  \alternative { {s2} {s2} }
  s2\mf % 12a -M-
  s2
  s2
  s2
  s2 % 12b
  s2
  s2
  s2
  s8 s4.\mf %12c -N-
  s2
  s2
  s2
  s2 % 13a
  s2
  s2
  s2
  s2\f % 13b -O-
  s2
  s2
  s2
  s2 % 14a
  s2
  s2
  s2
  s8 s4.\f % 14b -P-
  s2
  s2
  s2
  s2 % 15a
  s2
  s2
  s2
  s2 % 15b -Q-
  s2\ff
  s2
  s2
  s2
  s2
  s2-\markup{\italic{sempre marcato}} % 16a
  s2
  s2
  s2
  s2 % 16b
  s2
  s2
  s2
  s2
}

dynamicsOnePianoSingle = {
  \override DynamicTextSpanner.style = #'none
  s8 s4.\f % 3a
  s2
  s2
  s2
%  s8 s4.\mp % 3a
%  s2
%  s2
%  s2
  s2\mp % 3b
  s2
  s2
  s2
  s2\mf
  s2
  s2
  s2
  s2 % 4a -B-
  s2
  s2
  s2
  s2 % 4b
  s2
  s2
  s4. s8\mp
  s2 % 4c -C-
  s2
  s2
  s2
  s2 % 5a
  s2
  s2
  s2
  s8 s4.\mf % 5b -D-
  s2
  s2
  s2
  s2 % 5c
  s2
  s2
  s2
  s2 % 6a -E-
  s2
  s2
  s2
  s2 % 6b
  s2
  s2
  s4 s\>
  s2\p % 7a -F-
  s2
  s2
  s2
  s2 % 7b
  s2
  s2
  s2
  s2\p % 7c -G-
  s2
  s2
  s2
  s2 % 8a
  s2
  s2
  s2
%  \repeat volta 2 {
    s2 % 8b -H-
    s2
    s2
    s2
    s2 % 8c
    s2
    s2
    s2
%  }
  s8 s4.\mp % 9a -I-
  s2
  s2
  s2
  s2 % 9b
  s2
  s2
  s2
  s8 s4.\mf % 9c -J-
  s2
  s2
  s2
  s2 % 10a
  s2
  s2
  s2
  s8 s4.\f % 10b -K-
  s2
  s2
  s2
  s2 % 10c
  s2
  s2
  s2\>
  s2\!\pp % 11a
  s2
  s2
  s2
  s2 % 11b
  s2
  s2
  s2
  s2\mp % 11a
  s2
  s2
  s2
  s2 % 11b
  s2
  s2
  s2
  s2\mf % 12a -M-
  s2
  s2
  s2
  s2 % 12b
  s2
  s2
  s2
  s8 s4.\mf %12c -N-
  s2
  s2
  s2
  s2 % 13a
  s2
  s2
  s2
  s2\f % 13b -O-
  s2
  s2
  s2
  s2 % 14a
  s2
  s2
  s2
  s8 s4.\f % 14b -P-
  s2
  s2
  s2
  s2 % 15a
  s2
  s2
  s2
  s2 % 15b -Q-
  s2\ff
  s2
  s2
  s2
  s2
  s2-\markup{\italic{sempre marcato}} % 16a
  s2
  s2
  s2
  s2 % 16b
  s2
  s2
  s2
  s2
}

pianoOneLH = \relative {
  \global
  \voiceTwo
%  \repeat volta 2 {
    r8_\markup\italic "L.H." d''4->(e8-.) % 3a
    f8.->( e16~e8 a,-.)
    r8 d4->( e8-.)
    f16-> g8 a16->~a4
%  }
  d,16(e d cis d8-.) a'-. % 3b
  a8->(g-.) f-. e-.
  d16(e d cis d8-.) e-.
  e8->(f-.) f4
  f16(g f e f8-.) c'-. % 3c
  c8->(bes-.) a-. g-.
  f16(g f e f8-.) g-.
  g8->(a-.) a bes16(c
  d8-.) d-. d16( c bes c % 4a
  d8-.) d(e-.) d(
  c16) c c c c8 a(
  c8-.) c(d-.) c-.
  bes16 bes bes8-. c16(bes a g) % 4b
  a16 a a8-. d4-.
  f,8-. g16 g a(g f e)
  e16->(f f8) f8-. f16 g \bar "||" \key aes \major
  aes16 aes aes8-. aes-> g16 f % 4c -C-
  aes16 aes aes8-. bes8-> aes16 f
  g16 g g g g f ees f
  g16 g g g aes8-> r
  f16 f f f f8-> des-. % 5a
  f16 f f f g8-> g16 f
  e16 e e8 e-> d16 e
  e16-> f f8-. f-> r
  r8 c'8-. c-. c-. % 5b -D-
  c16->(des-.) des8-. des4->
  r8 bes-. bes-. bes-.
  bes16->(c-.) c8-. c4->
  r8 aes-. aes-. aes-. % 5c
  aes16 aes aes aes(bes8-.) aes-.
  r8 g-. g-. g-.
  g16-> aes aes g aes8-. r
  aes4(g % 6a -E-
  f2)
  g4(f
  ees2)
  f4(ees % 6b
  des4 bes
  c4 e
  f4~f16) g(f e) \bar "||" \key f \major
  d16(e d cis d8-.) a'-. % 7a -F-
  a8->(g-.) f-. e-.
  d16(e d cis d-.)d e8-.
  e8->(f-.) f4
  f16(g f e f8-.) c'-. % 7b
  c8->(bes-.) a-. g-.
  f16(g f e f g f g)
  g8->(a-.) a r
  bes16(c bes a g a g f) % 7c -G-
  e16(f e dis e fis g gis)
  a16(b a g fis g fis e
  d8) fis-. a-. r
  g16(a g f e f e d) % 8a
  c16(d c b c d dis e)
  f16( g f d e f e cis
  d8) cis-. d4-.
%  \repeat volta 2 {
    d4 d % 8b -H-
    d8 d e d
    c4 c
    d8 d d e
    bes4 bes % 8c
    c8 c c bes
    a4 cis
    d8-> cis-> d-> r
%  }
  \key d \major
  s2_\markup\italic "L.H. loco" | s2*15 |
  \ottava #1
  r8 fis16 fis fis8-. fis-. % 10b -K-
  fis8(g-.) g16(fis e8)
  r8 g16 g g8-. g-.
  g8(a-.) a16(g fis8)
  r8 a16 a a8-. a-. % 10c
  a8(b) b16(a g8)
  a8(g) a(b)
  cis8(b a g) \key f \major
  \repeat volta 2 {
    d'16(e d c bes c bes a % 11a -L-
    g16 a g fis)g8-. bes
    c16(d c bes a bes a g
    f16 g f e) f8-. a
    bes16(c bes a g a g f % 11b
    e16 f e d) e8-. g-.
    d16( e f g a b cis d
  }
  \alternative {
    {
      e16 d) d-> cis-> d8 r
    }
    {
      e16 d d-> cis-> d8 r % should be a slur ending in here%
    }
  }
  \key c \major
  c16 c c8-. c-> b16 a % 12a -M-
  c16 c c8-. d-> c16 a
  b16 b b b b a g a
  b16 b b b c8-> r
  a16 a a a a8-> f % 12b
  a16 a a a b8-> b16 a
  gis16 gis gis8 gis-> fis16 gis
  gis16-> a a8 a-> r
  r8 <c, e>-. q-. q-. % 12c -N-
  q16->(q-.) q8-. q-> r
  r8 <b d>-. q-. q-.
  q16->(<c e>-.) q8-. q-> r
  r8 <a c>-. q-. q-. % 13a
  q16 q q q(<b d>8-.) <a c>-.
  r8 <gis b>-. q-. q-.
  q16-> <a c> q <gis b> <a c>8-. r
  c'4(b % 13b -O-
  a4) e16(f g a
  b4 a
  g4) d16(e f g
  a4 g % 14a
  d4 b
  c4 eis
  a4.) r8 \bar "||" \key f \major
  s2*8
  s2_\markup\italic "L.H. loco to end" % 15b -Q-
  s2*14
  \bar "|."
}

pianoTwoRH = \relative c {
  \global \voiceOne \clef bass
%  \repeat volta 2 {
    r8^\markup\italic "R.H." <f a d> r q % 3a
    r8 q r <e a cis>
    r8 <f a d> r q
    r8 q r <e a cis>
%  }
  r8 <f a d> r q % 3b -A-
  r8 <g bes d> r <g a cis>
  r8 <f a d> q <g a cis e>
  r8 <a d f> r q
  r8 <a c f> r q % 3c
  r8 <bes d f> r <bes c e>
  r8 <a c f> r <bes e g>
  r8 <c f a> r4
  \oneVoice \clef treble
  r8 <d f bes> r q % 4a -B-
  r8 <f bes d> r <e gis d'>
  r8 <e a c> r q
  r8 <d fis c'> r q
  r8 <d g bes> r q % 4b
  r8 <c f a> r <f a d>
  r8 <e g bes> r <cis g' a>
  r8 <d f a> r4 \bar "||" \key aes \major
  r8 <c f aes> r q % 4c -C-
  r8 q r q
  r8 q r q
  r8 q r <c ees ges aes>
  r8 <aes des f> r q % 5a
  r8 q r q
  r8 <bes c e> r q
  r8 <aes c f> r q
  \voiceOne \clef bass
  r8 <c f aes> r q % 5b -D-
  r8 <des f aes> r q
  r8 <des ees g> r q
  r8 <c ees g> r q
  r8 <aes des f> r q % 5c
  r8 q r q
  r8 <bes c e> r q
  r8 <aes c f> r q
  r8 <c f aes> r <bes ees g> % 6a -E-
  r8 <aes des f> r q
  r8 <bes ees g> r <g des' f>
  r8 <aes c ees> r q
  r8 <aes des f> r <g c ees> % 6b
  r8 <aes des f> r q
  r8 <g c e> r q
  r8 <aes c f> r <g cis e> \bar "||" \key f \major
  r8 <f a d> r q % 7a -F-
  r8 <g bes d> r <g a cis>
  r8 <f a d> r <g a cis e>
  r8 <a d f> r q
  r8 <f a d> r q % 7b
  r8 <bes d f> r <bes c e>
  r8 <a c f> r <bes e g>
  r8 <c f a> r4
  r8 <bes d g> r q % 7c -G-
  r8 <b e gis> r q
  r8 <c e a> r <c g' a>
  r8 <d fis a> r <c d fis>
  r8 <bes d g> r q % 8a
  e8 <c e g> r <bes e g>
  r8 <a d f> r <g cis e>
  <a d> <e a cis> <f a d> r
%  \repeat volta 2 {
    r8 <bes d  g> r q % 8b -H-
    R2
    r8 <g c e> r q
    R2
    r8 <bes d g> r q
    r8 <c e g> r <bes e g>
    r8 <a d f> r <g cis e>
    <f a d>8-> <e a cis>-> <f a d>-> r
%  }
  \key d \major
  r8 <a d fis> r q % 9a -I-
  r8 <b d g> r q
  r8 <a cis g'> r q
  r8 <a cis fis> r q
  r8 <cis fis a> r q % 9b
  r8 <b d g> r q
  r8 <a cis g'> r q
  r8 q r q
  r8 <a d fis> r q % 9c -J-
  r8 <b d g> r q
  r8 <a cis g'> r q
  r8 <a cis fis> r q
  r8 <cis fis a> r q % 10a
  r8 <b d g> r q
  r8 <a cis g'> r q
  r8 q r q
  r8 <a d fis> r q % 10b -K-
  r8 <b d g> r q
  r8 <a cis g'> r q
  r8 <a cis fis> r q
  r8 <cis fis a> r q % 10c
  r8 <b d g> r q
  r8 <a cis g'> r q
  r8 q r q \key f \major
  \repeat volta 2 {
    r8 <a d f> r q % 11a -L-
    r8 <bes d g> r q
    r8 <bes c e> r q
    r8 <a c f> r q
    r8 <bes d f> r q % 11b
    r8 <g d' e> r <bes d e>
    r8 <a d f> r <g a cis e>
  }
  \alternative {
    {
      r8 <a d f> q-> r
    }
    {
      r8 <a d f> q-> r
    }
  }
  \section \key c \major \oneVoice \clef treble
  <c e a c>8 r q r | <c f a c> r q r | <b f' b> r q r | <b e b'> r r q | % 12a
  <a c f a>8 r q r | <a d f a> r r q | <gis d' e gis> r q r | <a c e a>4 r |
  r8 <a c e>4 r8 | r <a c f a>4 r8 | r <b f'>4 r8 | r <g b e>4 r8 | % 12c -N-
  r8 <a e'>4 r8 % 13a
  r8 <f a d>4 r8
  r8 <gis d'>4 r8
  r8 <a c e>4 r8
  r8 <c e a c> r <a d g b> % 13b -O-
  r8 <a c f a>4 q8
  r8 <b d g b> r <a c f a>
  r8 <g c g'>4 q8
  r8 <a c f a> r <g c e g> % 14a
  r8 <f a d f> r q
  r8 <gis d' e> r <d' e gis>
  r8 <c e a>4 r8 \bar "||" \key f \major
  r8 <d f a d>4 q8 % 14b -P-
  r8 <bes d g bes>4 q8
  r8 <c e g c>4 q8
  r8 <a c f a>4 q8
  r8 <bes d f bes>4 q8 % 15a
  r8 q4 a8
  r8 <a cis e a>4 q8
  <a a'>8 <g g'> <f f'> <e e'>
  d'8-> d-> <d f a>4~ % 15b -Q-
  q2
  d8-> d-> q4->~
  q2
  d8-> d-> q4->~
  q2
  a'16 a a8 a a % 16a
  <a, a'>8 q <a d f a> <a cis e a>
  <a a'>8 q <a d f a> <a cis e a>
  <a a'>8 q <a d f a> <a cis e a>
  <a a'>8 q <a d f a>16 q <a cis e a>8 % 16b
  <d d'>4 q
  q4 q
  q4 q8-> q16-> q->
  q4-> r
  \bar "|."
}

dynamicsTwoPiano = {
  \override DynamicTextSpanner.style = #'none
%  \repeat volta 2 {
    s2^\markup{\dynamic f - \dynamic mp} % 3a
    s2 | s2 | s2
%  }
  s2\mp | s | s | s | % 3b
  s2\mf | s | s | s | % 3c
  s2*4 % 4a -B-
  s2 | s | s | s4 s\mp | % 4b
  s2 % 4c -C-
  s2
  s2
  s2
  s2 % 5a
  s2
  s2
  s2
  s2\mf % 5b -D-
  s2
  s2
  s2
  s2 % 5c
  s2
  s2
  s2
  s2 % 6a -E-
  s2
  s2
  s2
  s2 % 6b
  s2
  s2
  s4 s\>
  s2\p % 7a -F-
  s2
  s2
  s2
  s2 % 7b
  s2
  s2
  s2
  s2\p % 7c -G-
  s2
  s2
  s2
  s2 % 8a
  s2
  s2
  s2
%  \repeat volta 2 {
    s2 % 8b -H-
    s2
    s2
    s2
    s2 % 8c
    s2
    s2
    s2
%  }
  s2\mp % 9a -I-
  s2
  s2
  s2
  s2 % 9b
  s2
  s2
  s2
  s2\mf % 9c -J-
  s2
  s2
  s2
  s2 % 10a
  s2
  s2
  s2
  s2\f % 10b -K-
  s2
  s2
  s2
  s2 % 10c
  s2
  s2
  s2\>
  \repeat volta 2 {
    s2\!^\markup{\dynamic pp - \dynamic p - \dynamic mp} % 11a
    s2
    s2
    s2
    s2 % 11b
    s2
    s2
  }
  \alternative { {s2} {s2} }
  s2\mf % 12a -M-
  s2
  s2
  s2
  s2 % 12b
  s2
  s2
  s2
  s2\mf %12c -N-
  s2
  s2
  s2
  s2 % 13a
  s2
  s2
  s2
  s2\mf % 13b -O-
  s2
  s2
  s2
  s2 % 14a
  s2
  s2
  s2
  s2 % 14b -P-
  s2
  s2
  s2
  s2 % 15a
  s2
  s2
  s2
  s2\ff % 15b -Q-
  s2
  s2
  s2
  s2
  s2
  s2^\markup{\italic {sempre marcato}} % 16a
  s2
  s2
  s2
  s2 % 16b
  s2
  s2
  s2
  s2
}

dynamicsTwoPianoSingle = {
  \override DynamicTextSpanner.style = #'none
  s2\f % 3a
  s2 | s2 | s2
%  s2\mp % 3a
%  s2 | s2 | s2
  s2\mp | s | s | s | % 3b
  s2\mf | s | s | s | % 3c
  s2*4 % 4a -B-
  s2 | s | s | s4 s\mp | % 4b
  s2 % 4c -C-
  s2
  s2
  s2
  s2 % 5a
  s2
  s2
  s2
  s2\mf % 5b -D-
  s2
  s2
  s2
  s2 % 5c
  s2
  s2
  s2
  s2 % 6a -E-
  s2
  s2
  s2
  s2 % 6b
  s2
  s2
  s4 s\>
  s2\p % 7a -F-
  s2
  s2
  s2
  s2 % 7b
  s2
  s2
  s2
  s2\p % 7c -G-
  s2
  s2
  s2
  s2 % 8a
  s2
  s2
  s2
%  \repeat volta 2 {
    s2 % 8b -H-
    s2
    s2
    s2
    s2 % 8c
    s2
    s2
    s2
%  }
  s2\mp % 9a -I-
  s2
  s2
  s2
  s2 % 9b
  s2
  s2
  s2
  s2\mf % 9c -J-
  s2
  s2
  s2
  s2 % 10a
  s2
  s2
  s2
  s2\f % 10b -K-
  s2
  s2
  s2
  s2 % 10c
  s2
  s2
  s2\>
  s2\!\pp % 11a
  s2
  s2
  s2
  s2 % 11b
  s2
  s2
  s2
  s2\mp % 11a
  s2
  s2
  s2
  s2 % 11b
  s2
  s2
  s2
  s2\mf % 12a -M-
  s2
  s2
  s2
  s2 % 12b
  s2
  s2
  s2
  s2\mf %12c -N-
  s2
  s2
  s2
  s2 % 13a
  s2
  s2
  s2
  s2\mf % 13b -O-
  s2
  s2
  s2
  s2 % 14a
  s2
  s2
  s2
  s2 % 14b -P-
  s2
  s2
  s2
  s2 % 15a
  s2
  s2
  s2
  s2\ff % 15b -Q-
  s2
  s2
  s2
  s2
  s2
  s2^\markup{\italic {sempre marcato}} % 16a
  s2
  s2
  s2
  s2 % 16b
  s2
  s2
  s2
  s2
}

pianoTwoLH = \relative c, {
  \global \voiceTwo
%  \repeat volta 2 {
    <d d'>4_\markup\italic "L.H." <c c'> % 3a
    <bes bes'>8. <a a'>16~q8 q
    <d d'>4 <c c'>
    <bes bes'>8. <a a'>16~q8 q
%  }
  <d d'>4 <f f'> % 3b -A-
  <e e'>4 <a, a'>
  <d d'>4 <a a'>
  <d d'>4 q
  <f f'>4 <a a'> % 3c
  <g g'>4 <c, c'>
  <f f'>4 <c c'>
  <f f'>4 q
  \lhII \key f \major \oneVoice \clef bass
  <bes bes'>4 q % 4a -B-
  <g g'>8 <f f'> <e e'> <gis gis'>
  <a a'>4 <g g'>
  <fis fis'>8 <e e'> <d d'> <fis fis'>
  <g g'>4 <c, c'> % 4b
  <f f'>4 <d d'>
  <g g'>4 <a a'>
  <d, d'>4 q8 <e e'> \bar "||" \key aes \major
  <f f'>4 <c c'> % 4c -C-
  <f f'>4 <c c'>
  <ees ees'>4 <bes bes'>
  <ees ees'>4 <aes, aes'>
  <des des'>4 q % 5a
  q4 <bes bes'>
  <c c'> q
  <f f'> q
  \voiceTwo \rhII
  <f f'>4 q % 5b -D-
  <bes, bes'>4 q
  <ees ees'>4 q
  <aes, aes'>4 q
  <des des'>4 q % 5c
  q4 <bes bes'>
  <c c'>4 q
  <f f'>4 q
  q4 <ees ees'> % 6a -E-
  <des des'>4 r8 q
  <ees ees'>4 q
  <aes, aes'>4 r8 q
  <des des'>4 <c c'> % 6b
  <bes bes'>4 r8 q
  <c c'>4 q
  <f f'>4 <e e'> \bar "||" \key f \major
  <d d'>4 <f f'> % 7a -F-
  <e e'>4 <a, a'>
  <d d'>4 <a a'>
  <d d'>4 q
  <f f'>4 <a a'> % 7b
  <g g'>4 <c, c'>
  <f f'>4 <c c'>
  <f f'>4 q
  <g g'>4 <f f'> % 7c -G-
  <e e'>4 <d d'>
  <c c'>4 <a a'>
  <d d'>4 <fis fis'>
  <g g'>4 <f f'> % 8a
  <e e'>4 <c c'>
  <d d'>4 <a a'>
  <d d'>8 <a a'> <d d'> r
%  \repeat volta 2 {
    <g g'>4 <f f'> % 8b -H-
    <e e'>4 q8 <gis gis'>
    <a a'>4 <a, a'>
    <d d'>4 q8 <fis fis'>
    <g g'>4 <f f'> % 8c
    <e e'>4 <c c'>
    <d d'>4 <a a'>
    <d d'>8-> <a a'>-> <d d'>-> r
%  }
  \key d \major
  q4 q % 9a -I-
  <e e'>4 q
  <a, a'>4 q
  <d d'>4 q
  q4 q % 9b
  <e e'>4 q
  <a, a'>4 q
  q4 q
  <d d'>4 q % 9c -J-
  <e e'>4 q
  <a, a'>4 q
  <d d'>4 q
  q4 q % 10a
  <e e'>4 q
  <a, a'>4 q
  q4 q
  <d d'>4 q % 10b -K-
  <e e'>4 q
  <a, a'>4 q
  <d d'>4 q
  q4 q % 10c
  <e e'>4 q
  <a, a'>4 q
  q4 q \key f \major
  \repeat volta 2 {
    <d d'>4 <f f'> % 11a -L-
    <g g'>4 <bes, bes'>
    <c c'>4 <e e'>
    <f f'>4 <a, a'>
    <bes bes'>4 <d d'>
    <e e'>4 <g, g'>
    <a a'>4 <cis cis'>
  }
  \alternative {
    {
      <d d'>4 q8-> r
    }
    {
      <d d'>4 q8-> r
    }
  }
  \section \lhII \key c \major \oneVoice
  <a' e' a>8 r q r % 12a -M-
  <d, a' d>8 r q r
  <g d' g>8 r q r
  <c, g' c>8 r r q
  <f c' f>8 r q r % 12b
  <b, b'>8 r r q
  <e e'>8 r q r
  <a e'>4 r8 a
  <<
    {
      \voiceOne r8 e'4 r8 | r d4 r8 | r <d g>4 r8 | r c4 r8 | % 12c -N-
      r8 <c f>4 r8 | r b4 r8 | r <b e>4 r8 | r e4 r8 | % 13a
      r8 <e a> r <d g> | r <c f>4 <f, c' f>8 | r <d' g> r <c f> | r e4 <e, e'>8 | % -O-
      r8 <c' f> r c | r d r d | r <b e> r <b e gis> | r <e a>4 r8 \section \key f \major | % 14a
      r8 <d a>4 r8 | r <d g>4 r8 | r <e bes'>4 r8 | r <c f>4 r8 | % -P-
      r8 <bes f'>4 r8 | r <bes f'>4 r8 | r e4 r8 | s2 | % 15a
    }
    \new Voice {
      \voiceTwo a,4. 8 | d,4. 8 | g4. 8 | c,4. 8 | % 12c -N-
      f4. 8 | b,4. 8 | e4. 8 | a4. 8 | % 13a
      a4 g | f r | g f | e r |
      f4 e | d b | e e | a4 8 <a, e' a> \section \key f \major | % 14a
      d4. <d a' d>8 | g4. <g d' g>8 | c,4. <c g' c>8 | f4. <d c' f>8 | % -P-
      bes4. 8 | d4. <d d'>8 | <a a'>4. 8 | q <g g'> <f f'> <e e'> | % 15a
    }
  >>
  \oneVoice
  <d' d'>8-> q-> <d' a'>4->~ | 2 | % 15b -Q-
  <d, d'>8-> q-> <d' a'>4->~ | 2 |
  <d, d'>8-> q-> <d' a'>4->~ | 2 |
  <a a'>16 q q8 q q % 16a
  <a, a'>8 q <a' f'> <a e'>
  <a, a'>8 q <a' f'> <a e'>
  <a, a'>8 q <a' f'> <a e'>
  <a, a'>8 q <a' f'> <a e'> % 16b
  <d, d'>4 q
  q4 q
  q4 q8-> q16-> q->
  q4-> r
  \bar "|."
}

pianoTwoLHempty = {
  \key f \major
%  \repeat volta 2 {
    s2*4
%  }
  s2*16 \section \key aes \major
  s2*24 \section \key f \major
  s2*16
%  \repeat volta 2 {
    s2*8
%  }
  \key d \major
  s2*24 \section \key f \major
  \repeat volta 2 { s2*7 \alternative {{s2}{s2}}} \section \key c \major
  s2*24 \section \key f \major
  s2*23
}

wordsStart = \lyricmode {
  When I start -- ed  down the street last Sun -- day,
  Feel -- in' might -- y low and kind -- a mean,
  Sud --  den -- ly a voice said, "\"Go "forth, neigh -- bor!
  Spread the pic -- ture on a  wid -- er  "screen!\""
  And the voice said, "\"Neigh" -- bor, there's a mil -- lion rea -- sons
  Why you should be glad in all four sea -- sons!
  Hit the road, neigh -- bor leave your wor -- ries and strife!
  Spread the rel -- ig -- ion of the rhy -- thm of "life.\""
}

MwordsStart = \lyricmode {
  "\nWhen " "I " start "ed " "down " "the " "street " "last " Sun "day, "
  "\nFeel" "in' " might "y " "low " "and " kind "a " "mean, "
  "\nSud" den "ly " "a " "voice " "said, " "\n\"Go " "forth, " neigh "bor! "
  "\nSpread " "the " pic "ture " "on " "a " wid "er " "screen!\""
  "\nAnd " "the " "voice " "said, " "\n\"Neigh-" "bor, " "there's " "a " mil "lion " rea "sons "
  "\nWhy " "you " "should " "be " "glad " "in " "all " "four " sea "sons! "
  "\nHit " "the " "road, " neigh "bor " "leave " "your " wor "ries " "and " "strife! "
  "\nSpread " "the " rel ig "ion " "of " "the " rhy "thm " "of " "life.\" "
}

rol = \lyricmode {
  rhy -- thm of life is a pow -- er -- ful beat, % Usually has "For" or "O" before
  Puts a tin -- gle in your fin -- gers and a tin -- gle in your feet!
  Rhy -- thm on the in -- side, rhy -- thm on the street,
  And the rhy -- thm of life is a pow -- er -- ful beat!
}

Mrol = \lyricmode {
  "the " rhy "thm " "of " "life " "is " "a " pow er "ful " "beat, "
  "\nPuts " "a " tin "gle " "in " "your " fin "gers " "\nand " "a " tin "gle " "in " "your " "feet! "
  "\nRhy" "thm " "on " "the " in "side, "
  "\nrhy" "thm " "on " "the " "street, "
  "\nAnd " "the " rhy "thm " "of " "life " "is " "a " pow er "ful " "beat! "
}

tfrl = \lyricmode {
  To feel the rhy -- thm of life,
  To feel the pow er -- ful beat,
  To feel the tin -- gle in your fin -- gers,
  To feel the tin -- gle in your % usually followed by "feet!" but sometimes "life!"
}

Mtfrl = \lyricmode {
  "\nTo " "feel " "the " rhy "thm " "of " "life, "
  "\nTo " "feel " "the " pow er "ful " "beat, "
  "\nTo " "feel " "the " tin "gle " "in " "your " fin "gers, "
  "\nTo " "feel " "the " tin "gle " "in " "your "
}

stg = \lyricmode {
  Go and spread the gos -- pel in Mil -- wau -- kee;
  Take a walk -- ie talk -- ie to Rock -- y Ridge!
  All the way to Can -- ton, then to Scran -- ton,
  Ev -- en tell it un -- der the Man -- hat -- tan Bridge.
}

Mstg = \lyricmode {
  "\nGo " "and " "spread " "the " gos "pel " "in " Mil wau "kee; "
  "\nTake " "a " walk "ie " talk "ie " "to " Rock "y " "Ridge! "
  "\nAll " "the " "way " "to " Can "ton, " "then " "to " Scran "ton, "
  "\nEv" "en " "tell " "it " un "der " "the " Man hat "tan " "Bridge. "
}

mns = \lyricmode {
  You will make a new sens -- a -- tion,
  Have a grow -- ing con -- gre -- ga -- tion,
  Build a glow -- ing op -- er -- a -- tion here be -- low!
  Like a Pied __ Pip -- er blow -- ing,
  Lead and keep the mus -- ic flow -- ing,
  Keep the rhy -- thm go, go, go -- ing;
  go, go, go!
}

Mmns = \lyricmode {
  "\nYou " "will " "make " "a " "new " sens a "tion, "
  "\nHave " "a " grow "ing " con gre ga "tion, "
  "\nBuild " "a " glow "ing " op er a "tion " "here " be "low! "
  "\nLike " "a " "Pied "  Pip "er " blow "ing, "
  "\nLead " "and " "keep " "the " mus "ic " flow "ing, "
  "\nKeep " "the " rhy "thm " "go, " "go, " go "ing; "
  "\ngo, " "go, " "go! "
}

db = \lyricmode {
  doo -- bi,
  }

Mdb = \lyricmode {
  doo "bi, "
  }

doobie = \lyricmode {
  \db \db \db \db \db \db \db
}

Mdoobie = \lyricmode {
  \Mdb \Mdb \Mdb \Mdb \Mdb \Mdb \Mdb
}

fyw = \lyricmode {
  Flip your wings and fly up high! __
  Flip your wings and fly up high! __
  Flip your wings and fly up high! __
  Fly, __ fly, __ fly up high! __
  You can do it if you try! __
  You can do it if you try! __
  You can do it if you try! __
  Try, __ try, __ try to fly! __
  Like a bird up in the sky! __
  Like a bird up in the sky! __
  Like a bird up in the sky! __
  Fly, __ fly, __ fly! __
}

Mfyw = \lyricmode {
  "\nFlip " "your " "wings " "and " "fly " "up " "high! " 
  "\nFlip " "your " "wings " "and " "fly " "up " "high! " 
  "\nFlip " "your " "wings " "and " "fly " "up " "high! " 
  "\nFly, "  "fly, "  "fly " "up " "high! " 
  "\nYou " "can " "do " "it " "if " "you " "try! " 
  "\nYou " "can " "do " "it " "if " "you " "try! " 
  "\nYou " "can " "do " "it " "if " "you " "try! " 
  "\nTry, "  "try, "  "try " "to " "fly! " 
  "\nLike " "a " "bird " "up " "in " "the " "sky! " 
  "\nLike " "a " "bird " "up " "in " "the " "sky! " 
  "\nLike " "a " "bird " "up " "in " "the " "sky! " 
  "\nFly, "  "fly, "  "fly! " 
}

ygr = \lyricmode {
  Neigh -- bour, you've got the rhy -- thm,
  rhy -- thm, rhy -- thm, rhy -- thm of life! __
}

Mygr = \lyricmode {
  "\nNeigh" "bour, " "you've " "got " "the " rhy "thm, "
  "\nrhy" "thm, " rhy "thm, " rhy "thm " "of " "life! " 
}

wordsSopA = \lyricmode {
  \wordsStart
  For the \rol
  \tfrl feet!
  \tfrl feet!
  \stg
  \mns
}

MwordsSopA = \lyricmode {
  \MwordsStart
  "\nFor " \Mrol
  \Mtfrl "feet! "
  \Mtfrl "feet! "
  \Mstg
  \Mmns
}

wordsSopB = \lyricmode {
%  \repeat volta 2 {
    \mns
%  }
}

MwordsSopB = \lyricmode {
  \Mmns
}

wordsSopC = \lyricmode {
  \fyw
}

MwordsSopC = \lyricmode {
  \Mfyw
}

wordsSopDa = \lyricmode {
  \doobie
  \doobie
  \doobie
  \db \db \db \db
}

MwordsSopDa = \lyricmode {
  \Mdoobie
  \Mdoobie
  \Mdoobie
  \Mdb \Mdb \Mdb \Mdb
}

wordsSopDb = \lyricmode {
  \db \db doo!
}

MwordsSopDb = \lyricmode {
  \Mdb \Mdb "doo! "
}

wordsSopDaE = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
}

MwordsSopDaE = \lyricmode {
  "" "" "" "" "" "" "" "" "" "" "" "" "" ""
  "" "" "" "" "" "" "" "" "" "" "" "" "" ""
  "" "" "" "" "" "" "" "" "" "" "" "" "" ""
  "" "" "" "" "" "" "" ""
}

wordsSopDbE = \lyricmode {
  _ _ _ _ _
}

MwordsSopDbE = \lyricmode {
  "" "" "" "" ""
}

wordsSopDc = \lyricmode {
  \db \db doo!
}

MwordsSopDc = \lyricmode {
  \Mdb \Mdb "doo! "
}

wordsSopE = \lyricmode {  
  O the \rol
  O the \rol
  O the \rol
  \tfrl life! __ life! __ life! __
  \ygr
}

MwordsSopE = \lyricmode {  
  "\nO " \Mrol
  "\nO " \Mrol
  "\nO " \Mrol
  \Mtfrl "life! "  "life! "  "life! " 
  \Mygr
}

wordsSopRepeat = \lyricmode {
  \wordsSopA
  \wordsSopB
  \wordsSopC
  \repeat volta 2 {
    \doobie \doobie \doobie \db \db \db \db
    \alternative { { } { \db \db doo! } }
  }
  \wordsSopE
}

wordsSopSingle = \lyricmode {
  \wordsSopA
  \mns % \mns
  \fyw
  \wordsSopDa
  \wordsSopDc
  \wordsSopE
}

wordsSopMidi = \lyricmode {
  \MwordsSopA
  \Mmns \Mmns
  \Mfyw
  \MwordsSopDa
  \MwordsSopDc
  \MwordsSopE
}

wordsAltoA = \lyricmode {
  \wordsStart

  For the \rol
  For the \rol
  For the \rol
  \stg
  \mns
}

MwordsAltoA = \lyricmode {
  \MwordsStart

  "\nFor " \Mrol
  "\nFor " \Mrol
  "\nFor " \Mrol
  \Mstg
  \Mmns
}

wordsAltoE = \lyricmode {
  O the \rol
  \tfrl feet!
  \tfrl feet!
  \tfrl life! __ life! __ life! __
  \ygr
}

MwordsAltoE = \lyricmode {
  "\nO " \Mrol
  \Mtfrl "feet! "
  \Mtfrl "feet! "
  \Mtfrl "life! "  "life! "  "life! " 
  \Mygr
}

wordsAltoRepeat = \lyricmode {
  \wordsAltoA
  \wordsSopB
  \wordsSopC
  \repeat volta 2 {
    \doobie \doobie \doobie \db \db \db \db
    \alternative { { } { \db \db doo! } }
  }
  \wordsAltoE
}

wordsAltoSingle = \lyricmode {
  \wordsAltoA
  \mns % \mns
  \fyw
  \wordsSopDa
  \wordsSopDc
  \wordsAltoE
}

wordsAltoMidi = \lyricmode {
  \MwordsAltoA
  \Mmns \Mmns
  \Mfyw
  \MwordsSopDa
  \MwordsSopDc
  \MwordsAltoE
}

wordsTenorA = \lyricmode {
  \wordsStart

  For the \rol
  For the \rol
  For the \rol
  \stg
}

MwordsTenorA = \lyricmode {
  \MwordsStart

  "\nFor " \Mrol
  "\nFor " \Mrol
  "\nFor " \Mrol
  \Mstg
}

wordsTenorB = \lyricmode {
  You will make a new sens -- a -- tion,
  Have a grow -- ing con -- gre -- ga -- tion,
  Build a glow -- ing op -- er -- a -- tion here be -- low!
  go, go!
}

MwordsTenorB = \lyricmode {
  "\nYou " "will " "make " "a " "new " sens a "tion, "
  "\nHave " "a " grow "ing " con gre ga "tion, "
  "\nBuild " "a " glow "ing " op er a "tion " "here " be "low! "
  "\ngo, " "go! "
}

wordsTenorBtwo = \lyricmode {
  Like a Pied _ __ Pip -- er blow -- ing,
  Load and keep the mu -- sic flow -- ing,
  Keep the rhy -- thm go, go, go -- ing,
  go, __ go, __ go, go, go!
}

MwordsTenorBtwo = \lyricmode {
  "Like " "a " "Pied " ""  Pip "er " blow "ing, "
  "\nLoad " "and " "keep " "the " mu "sic " flow "ing, "
  "\nKeep " "the " rhy "thm " "go, " "go, " go "ing, "
  "\ngo, "  "go, "  "go, " "go, " "go! "
}

wordsTenorE = \lyricmode {  
  O the \rol
  O the \rol
  Go, go, go!
  Go, go, go!
  Tell them ev -- 'ry -- thing you know!
  
  \tfrl life! __ life! __ life! __

  \ygr
}

MwordsTenorE = \lyricmode {  
  "\nO " \Mrol
  "\nO " \Mrol
  "\nGo, " "go, " "go! "
  "\nGo, " "go, " "go! "
  "\nTell " "them " ev 'ry "thing " "you " "know! "
  
  \Mtfrl "life! "  "life! "  "life! " 

  \Mygr
}

wordsBassDa = \lyricmode {
  \doobie
  }

MwordsBassDa = \lyricmode {
  \Mdoobie
  }

wordsBassDb = \lyricmode {
  doo!
}

MwordsBassDb = \lyricmode {
  "doo! "
}

wordsTenorRepeat = \lyricmode {
  \wordsTenorA
  \wordsTenorB
  \wordsSopC
  \repeat volta 2 {
    \doobie \doobie \doobie \db \db \db \db
    \alternative { { } { \db \db doo! } }
  }
  \wordsTenorE
}

wordsTenorRepeatTwo = \lyricmode {
  \repeat unfold 273 _
  Like a Pied _ Pip -- er blow -- ing,
  Lead and keep the mu -- sic flow -- ing,
  Keep the rhy -- thm go, go, go -- ing,
  go, __ go, __ go, go, go!
%  \repeat unfold 100 _
}

wordsTenorSingle = \lyricmode {
  \wordsTenorA
  \wordsTenorB
%  \wordsTenorBtwo
  \wordsSopC
  \wordsSopDa
  \wordsSopDb
  \wordsTenorE
}

wordsTenorMidi = \lyricmode {
  \MwordsTenorA
  \MwordsTenorB
  \MwordsTenorBtwo
  \MwordsSopC
  \MwordsSopDa
  \MwordsSopDb
  \MwordsTenorE
}

wordsBassA = \lyricmode {
  \wordsStart

  For the \rol
  For the \rol
  Go, go, go!
  Go, go, go!
  Tell them ev -- 'ry -- thing you know!
  
  \stg
}

MwordsBassA = \lyricmode {
  \MwordsStart

  "\nFor " \Mrol
  "\nFor " \Mrol
  "\nGo, " "go, " "go! "
  "\nGo, " "go, " "go! "
  "\nTell " "them " ev 'ry "thing " "you " "know! "
  
  \Mstg
}

wordsBassRepeat = \lyricmode {
  \wordsBassA
  \wordsTenorB
  \wordsSopC
  \wordsBassDa
  \wordsBassDb
  \wordsBassDb
  \wordsTenorE
}

wordsBassRepeatTwo = \lyricmode {
  \repeat unfold 236 _
  Like a Pied _ Pip -- er blow -- ing,
  Lead and keep the mu -- sic flow -- ing,
  Keep the rhy -- thm go, go, go -- ing,
  go, __ go, __ go, go, go!
%  \repeat unfold 100 _
}

wordsBassSingle = \lyricmode {
  \wordsBassA
  \wordsTenorB
%  \wordsTenorBtwo
  \wordsSopC
  \wordsBassDa
  \wordsBassDb
  \wordsBassDa
  \wordsBassDb
  \wordsTenorE
}

wordsBassMidi = \lyricmode {
  \MwordsBassA
  \MwordsTenorB
  \MwordsTenorBtwo
  \MwordsSopC
  \MwordsBassDa
  \MwordsBassDb
  \MwordsBassDa
  \MwordsBassDb
  \MwordsTenorE
}

wordsVerseTwo = \lyricmode {
  Like a Pied __ Pip -- er blow -- ing,
  Lead and keep the mus -- ic flow -- ing,
  Keep the rhy -- thm go, go, go -- ing;
  go, __ go, __ go, go, go!
}

wordsPartOne = \lyricmode {
  When I start -- ed down the street last Sun -- day,
  Feel -- in' might -- y low and kind -- a mean,
  Sud -- den -- ly a voice said, "\"Go " forth, neigh -- bor!
  Spread the pic -- ture on a wid -- er "screen!\""
  And the voice said, "\"Neigh-" bor, there's a mil -- lion rea -- sons
  Why you should be glad in all four sea -- sons!
  Hit the road, neigh -- bor leave your wor -- ries and strife!
  Spread the rel -- ig -- ion of the rhy -- thm of "life.\" "
}

wordsOne = \lyricmode {
  % unison
  \wordsPartOne
  For the \rol
  For the
  % soprano
  \tfrl feet!
  \tfrl feet!
  % unison
  \stg
  \mns
  % SA
%  \repeat volta 2 {
    \mns
%  }
  % unison 9a
  \fyw
  % S/AT % 11a
  \repeat volta 2 {
    \doobie
    \doobie
    \doobie
    \db \db \db \db
    \alternative {
      { }
      {\db \db doo!}
    }
  }
  % unison
  O the \rol
  O the \rol
  O the \rol
  \tfrl life! __ life! __ life! __
  \ygr
}

wordsOneSingle = \lyricmode {
  % unison
  \wordsPartOne
  For the \rol
  For the
  % soprano
  \tfrl feet!
  \tfrl feet!
  % unison
  \stg
  \mns
  % SA
%  \repeat volta 2 {
    \mns
%  }
  % unison 9a
  \fyw
                                % S/AT % 11a
%  \repeat volta 2 {
    \doobie
    \doobie
    \doobie
    \db \db \db \db
%    \alternative {
%      { }
      {\db \db doo!}
%    }
%  }
  % unison
  O the \rol
  O the \rol
  O the \rol
  \tfrl life! __ life! __ life! __
  \ygr
}

wordsTwo = \lyricmode {
  \rol
  For the \rol
  You will make a new sens -- a -- tion,
  Have a grow -- ing con -- gre -- ga -- tion,
  Build a glow -- ing op -- er -- a -- tion here be -- low!
  go, go!
  \repeat unfold 24 _
  \doobie doo!
  Doo! O, the
  \tfrl feet!
  \tfrl feet!
  \tfrl life! __ life! __ life! __
}

wordsTwoSingle = \lyricmode {
  \rol
  For the \rol
  You will make a new sens -- a -- tion,
  Have a grow -- ing con -- gre -- ga -- tion,
  Build a glow -- ing op -- er -- a -- tion here be -- low!
  go, go!
%  Like a Pied _ Pip -- er blow -- ing,
%  Lead and keep the mu -- sic flow -- ing,
%  Keep the rhy -- thm go, go, go -- ing,
%  go, __ go, __ go, go, go!
  \repeat unfold 24 _
  \doobie doo!
  \doobie doo!
  O, the \tfrl feet!
  \tfrl feet!
  \tfrl life! __ life! __ life! __
}

wordsThree = \lyricmode {
  Go, go, go!
  Go, go, go!
  Tell them ev -- 'ry -- thing you know!
  Go, go, go!
  Go, go, go!
  Tell them ev -- 'ry -- thing you know!
}

wordsThreeSingle = \lyricmode {
  Go, go, go!
  Go, go, go!
  Tell them ev -- 'ry -- thing you know!
  Go, go, go!
  Go, go, go!
  Tell them ev -- 'ry -- thing you know!
}

#(set-global-staff-size 18)

\book {
  #(define output-suffix "repeat")
  \score {
    <<
      \new ChoirStaff <<
                                % Staff one
        \new Staff = staffOne <<
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = staffOne} \dynamicsOneAbove
          \new Dynamics \with {alignBelowContext = staffOne} \dynamicsOneBelow
          \new Voice \musicOne
          \addlyrics \wordsOne
        >>
                                % Staff two
        \new Staff = staffTwo <<
          \new Dynamics \with {alignAboveContext = staffTwo} \dynamicsTwoAbove
          \new Dynamics \with {alignBelowContext = staffTwo} \dynamicsTwoBelow
          \new Voice \musicTwo
          \addlyrics \wordsTwo
        >>
                                % Staff three
        \new Staff = staffThree <<
          \new Dynamics \with {alignAboveContext = staffThree} \dynamicsThree
          \new Voice \musicThree
          \addlyrics \wordsThree
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = rhI <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
        >>
        \new Dynamics \dynamicsOnePiano
      >>
      \new PianoStaff \with {
        instrumentName = #"Secondo"
        shortInstrumentName = #"II"
      }
      <<
        \new Staff = rhII <<
          \magnifyStaff #4/7
%          \clef "bass"
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
        >>
        \new Dynamics \dynamicsTwoPiano
        \new Staff = lhII <<
          \magnifyStaff #4/7
                                %           \new Voice \pianoTwoLH
          \pianoTwoLHempty
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 19)

\book {
  #(define output-suffix "repeat-sep")
  \score {
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          printPartCombineTexts = ##f
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice \soprano
          \new NullVoice \sopranoAligner
          \addlyrics \wordsSopRepeat
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          printPartCombineTexts = ##f
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
          \addlyrics \wordsAltoRepeat
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          printPartCombineTexts = ##f
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
          \addlyrics \wordsTenorRepeat
          \addlyrics \wordsTenorRepeatTwo
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          printPartCombineTexts = ##f
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice \bass
          \new NullVoice \bassAligner
          \addlyrics \wordsBassRepeat
          \addlyrics \wordsBassRepeatTwo
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = rhI <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
        >>
        \new Dynamics \dynamicsOnePiano
      >>
      \new PianoStaff \with {
        instrumentName = #"Secondo"
        shortInstrumentName = #"II"
      }
      <<
        \new Staff = rhII <<
          \magnifyStaff #4/7
%          \clef "bass"
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
        >>
        \new Dynamics \dynamicsTwoPiano
        \new Staff = lhII <<
          \magnifyStaff #4/7
                                %           \new Voice \pianoTwoLH
          \pianoTwoLHempty
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \PianoStaff
                 \remove Keep_alive_together_engraver
               }
      \context { \Staff
                 \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "repeat-sep-sop")
  \score {
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          printPartCombineTexts = ##f
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice \soprano
          \new NullVoice \sopranoAligner
          \addlyrics \wordsSopRepeat
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
          \addlyrics {\tiny \wordsAltoRepeat}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
          \addlyrics {\tiny \wordsTenorRepeat}
          \addlyrics {\tiny \wordsTenorRepeatTwo}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice \bass
          \new NullVoice \bassAligner
          \addlyrics {\tiny \wordsBassRepeat}
          \addlyrics {\tiny \wordsBassRepeatTwo}
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = rhI <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
        >>
        \new Dynamics \dynamicsOnePiano
      >>
      \new PianoStaff \with {
        instrumentName = #"Secondo"
        shortInstrumentName = #"II"
      }
      <<
        \new Staff = rhII <<
          \magnifyStaff #4/7
%          \clef "bass"
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
        >>
        \new Dynamics \dynamicsTwoPiano
        \new Staff = lhII <<
          \magnifyStaff #4/7
                                %           \new Voice \pianoTwoLH
          \pianoTwoLHempty
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \PianoStaff
                 \remove Keep_alive_together_engraver
               }
      \context { \Staff
                 \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "repeat-sep-alto")
  \score {
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice \soprano
          \new NullVoice \sopranoAligner
          \addlyrics {\tiny \wordsSopRepeat}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          printPartCombineTexts = ##f
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
          \addlyrics \wordsAltoRepeat
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
          \addlyrics {\tiny \wordsTenorRepeat}
          \addlyrics {\tiny \wordsTenorRepeatTwo}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice \bass
          \new NullVoice \bassAligner
          \addlyrics {\tiny \wordsBassRepeat}
          \addlyrics {\tiny \wordsBassRepeatTwo}
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = rhI <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
        >>
        \new Dynamics \dynamicsOnePiano
      >>
      \new PianoStaff \with {
        instrumentName = #"Secondo"
        shortInstrumentName = #"II"
      }
      <<
        \new Staff = rhII <<
          \magnifyStaff #4/7
%          \clef "bass"
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
        >>
        \new Dynamics \dynamicsTwoPiano
        \new Staff = lhII <<
          \magnifyStaff #4/7
                                %           \new Voice \pianoTwoLH
          \pianoTwoLHempty
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \PianoStaff
                 \remove Keep_alive_together_engraver
               }
      \context { \Staff
                 \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "repeat-sep-tenor")
  \score {
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice \soprano
          \new NullVoice \sopranoAligner
          \addlyrics {\tiny \wordsSopRepeat}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
          \addlyrics {\tiny \wordsAltoRepeat}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          printPartCombineTexts = ##f
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
          \addlyrics \wordsTenorRepeat
          \addlyrics \wordsTenorRepeatTwo
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice \bass
          \new NullVoice \bassAligner
          \addlyrics {\tiny \wordsBassRepeat}
          \addlyrics {\tiny \wordsBassRepeatTwo}
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = rhI <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
        >>
        \new Dynamics \dynamicsOnePiano
      >>
      \new PianoStaff \with {
        instrumentName = #"Secondo"
        shortInstrumentName = #"II"
      }
      <<
        \new Staff = rhII <<
          \magnifyStaff #4/7
%          \clef "bass"
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
        >>
        \new Dynamics \dynamicsTwoPiano
        \new Staff = lhII <<
          \magnifyStaff #4/7
                                %           \new Voice \pianoTwoLH
          \pianoTwoLHempty
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \PianoStaff
                 \remove Keep_alive_together_engraver
               }
      \context { \Staff
                 \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "repeat-sep-bass")
  \score {
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice \soprano
          \new NullVoice \sopranoAligner
          \addlyrics {\tiny \wordsSopRepeat}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice \alto
          \addlyrics {\tiny \wordsAltoRepeat}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice \tenor
          \addlyrics {\tiny \wordsTenorRepeat}
          \addlyrics {\tiny \wordsTenorRepeatTwo}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          printPartCombineTexts = ##f
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice \bass
          \new NullVoice \bassAligner
          \addlyrics \wordsBassRepeat
          \addlyrics \wordsBassRepeatTwo
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = rhI <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
        >>
        \new Dynamics \dynamicsOnePiano
      >>
      \new PianoStaff \with {
        instrumentName = #"Secondo"
        shortInstrumentName = #"II"
      }
      <<
        \new Staff = rhII <<
          \magnifyStaff #4/7
%          \clef "bass"
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
        >>
        \new Dynamics \dynamicsTwoPiano
        \new Staff = lhII <<
          \magnifyStaff #4/7
                                %           \new Voice \pianoTwoLH
          \pianoTwoLHempty
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \PianoStaff
                 \remove Keep_alive_together_engraver
               }
      \context { \Staff
                 \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "acc")
  \score {
    <<
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = rhI <<
          \new Voice \RehearsalTrack
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
        >>
        \new Dynamics \dynamicsOnePiano
      >>
      \new PianoStaff \with {
        instrumentName = #"Secondo"
        shortInstrumentName = #"II"
      }
      <<
        \new Staff = rhII <<
%          \clef "bass"
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
        >>
        \new Dynamics \dynamicsTwoPiano
        \new Staff = lhII <<
%           \new Voice \pianoTwoLH
          \pianoTwoLHempty
        >>
      >>
    >>
%    \layout {
%      indent = 1.5\cm
%      \context { \Staff
%                 \RemoveAllEmptyStaves
%      }
%    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "single")
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Staff one
        \new Staff = staffOne <<
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = staffOne} \dynamicsOneAbove
          \new Dynamics \with {alignBelowContext = staffOne} \dynamicsOneBelow
          \new Voice \musicOneSingle
          \addlyrics \wordsOneSingle
        >>
                                % Staff two
        \new Staff = staffTwo <<
          \new Dynamics \with {alignAboveContext = staffTwo} \dynamicsTwoAbove
          \new Dynamics \with {alignBelowContext = staffTwo} \dynamicsTwoBelow
          \new Voice \musicTwo
          \addlyrics \wordsTwoSingle
        >>
                                % Staff three
        \new Staff = staffThree <<
          \new Dynamics \with {alignAboveContext = staffThree} \dynamicsThree
          \new Voice \musicThree
          \addlyrics \wordsThreeSingle
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = rhI <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
        >>
        \new Dynamics \dynamicsOnePianoSingle
      >>
      \new PianoStaff \with {
        instrumentName = #"Secondo"
        shortInstrumentName = #"II"
      }
      <<
        \new Staff = rhII <<
          \magnifyStaff #4/7
%          \clef "bass"
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
        >>
        \new Dynamics \dynamicsTwoPianoSingle
        \new Staff = lhII <<
          \magnifyStaff #4/7
                                %           \new Voice \pianoTwoLH
          \pianoTwoLHempty
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  #(define output-suffix "singlepage")
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
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Staff one
        \new Staff = staffOne <<
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = staffOne} \dynamicsOneAbove
          \new Dynamics \with {alignBelowContext = staffOne} \dynamicsOneBelow
          \new Voice \musicOneSingle
          \addlyrics \wordsOneSingle
        >>
                                % Staff two
        \new Staff = staffTwo <<
          \new Dynamics \with {alignAboveContext = staffTwo} \dynamicsTwoAbove
          \new Dynamics \with {alignBelowContext = staffTwo} \dynamicsTwoBelow
          \new Voice \musicTwo
          \addlyrics \wordsTwoSingle
        >>
                                % Staff three
        \new Staff = staffThree <<
          \new Dynamics \with {alignAboveContext = staffThree} \dynamicsThree
          \new Voice \musicThree
          \addlyrics \wordsThreeSingle
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = rhI <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
        >>
        \new Dynamics \dynamicsOnePianoSingle
      >>
      \new PianoStaff \with {
        instrumentName = #"Secondo"
        shortInstrumentName = #"II"
      }
      <<
        \new Staff = rhII <<
          \magnifyStaff #4/7
%          \clef "bass"
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
        >>
        \new Dynamics \dynamicsTwoPianoSingle
        \new Staff = lhII <<
          \magnifyStaff #4/7
                                %           \new Voice \pianoTwoLH
          \pianoTwoLHempty
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

#(set-global-staff-size 19)

\book {
  #(define output-suffix "single-sep")
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          printPartCombineTexts = ##f
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
          \new Voice \sopranoSingle
          \new NullVoice \sopranoAlignerSingle
          \addlyrics \wordsSopSingle
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          printPartCombineTexts = ##f
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
          \new Voice \altoSingle
          \addlyrics \wordsAltoSingle
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          printPartCombineTexts = ##f
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
          \new Voice \tenorSingle
          \addlyrics \wordsTenorSingle
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          printPartCombineTexts = ##f
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
          \new Voice \bass
          \new NullVoice \bassAligner
          \addlyrics \wordsBassSingle
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = rhI <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
        >>
        \new Dynamics \dynamicsOnePianoSingle
      >>
      \new PianoStaff \with {
        instrumentName = #"Secondo"
        shortInstrumentName = #"II"
      }
      <<
        \new Staff = rhII <<
          \magnifyStaff #4/7
%          \clef "bass"
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
        >>
        \new Dynamics \dynamicsTwoPianoSingle
        \new Staff = lhII <<
          \magnifyStaff #4/7
                                %           \new Voice \pianoTwoLH
          \pianoTwoLHempty
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \PianoStaff
                 \remove Keep_alive_together_engraver
               }
      \context { \Staff
                 \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "singlepage-sep")
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
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          printPartCombineTexts = ##f
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
          \new Voice \sopranoSingle
          \new NullVoice \sopranoAlignerSingle
          \addlyrics \wordsSopSingle
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          printPartCombineTexts = ##f
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
          \new Voice \altoSingle
          \addlyrics \wordsAltoSingle
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          printPartCombineTexts = ##f
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
          \new Voice \tenorSingle
          \addlyrics \wordsTenorSingle
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          printPartCombineTexts = ##f
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
          \new Voice \bass
          \new NullVoice \bassAligner
          \addlyrics \wordsBassSingle
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = rhI <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
        >>
        \new Dynamics \dynamicsOnePianoSingle
      >>
      \new PianoStaff \with {
        instrumentName = #"Secondo"
        shortInstrumentName = #"II"
      }
      <<
        \new Staff = rhII <<
          \magnifyStaff #4/7
%          \clef "bass"
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
        >>
        \new Dynamics \dynamicsTwoPianoSingle
        \new Staff = lhII <<
          \magnifyStaff #4/7
                                %           \new Voice \pianoTwoLH
          \pianoTwoLHempty
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \PianoStaff
                 \remove Keep_alive_together_engraver
               }
      \context { \Staff
                 \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "singlepage-sep-sop")
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
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          printPartCombineTexts = ##f
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
          \new Voice \sopranoSingle
          \new NullVoice \sopranoAlignerSingle
          \addlyrics \wordsSopSingle
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
          \new Voice \altoSingle
          \addlyrics {\tiny \wordsAltoSingle}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
          \new Voice \tenorSingle
          \addlyrics {\tiny \wordsTenorSingle}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff #4/7
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
          \new Voice \bass
          \new NullVoice \bassAligner
          \addlyrics {\tiny \wordsBassSingle}
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = rhI <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
        >>
        \new Dynamics \dynamicsOnePianoSingle
      >>
      \new PianoStaff \with {
        instrumentName = #"Secondo"
        shortInstrumentName = #"II"
      }
      <<
        \new Staff = rhII <<
          \magnifyStaff #4/7
%          \clef "bass"
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
        >>
        \new Dynamics \dynamicsTwoPianoSingle
        \new Staff = lhII <<
          \magnifyStaff #4/7
                                %           \new Voice \pianoTwoLH
          \pianoTwoLHempty
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \PianoStaff
                 \remove Keep_alive_together_engraver
               }
      \context { \Staff
                 \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "singlepage-sep-bass")
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
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff $3/7
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
          \new Voice \sopranoSingle
          \new NullVoice \sopranoAlignerSingle
          \addlyrics {\tiny \wordsSopSingle}
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff $3/7
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
          \new Voice \altoSingle
          \addlyrics {\tiny \wordsAltoSingle}
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          printPartCombineTexts = ##f
        }
        <<
          \magnifyStaff $3/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
          \new Voice \tenorSingle
          \addlyrics {\tiny \wordsTenorSingle}
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          printPartCombineTexts = ##f
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
          \new Voice \bass
          \new NullVoice \bassAligner
          \addlyrics \wordsBassSingle
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = rhI <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
        >>
        \new Dynamics \dynamicsOnePianoSingle
      >>
      \new PianoStaff \with {
        instrumentName = #"Secondo"
        shortInstrumentName = #"II"
      }
      <<
        \new Staff = rhII <<
          \magnifyStaff #4/7
%          \clef "bass"
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
        >>
        \new Dynamics \dynamicsTwoPianoSingle
        \new Staff = lhII <<
          \magnifyStaff #4/7
                                %           \new Voice \pianoTwoLH
          \pianoTwoLHempty
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context { \PianoStaff
                 \remove Keep_alive_together_engraver
               }
      \context { \Staff
                 \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi-sop")
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          printPartCombineTexts = ##f
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
          \new Voice \sopranoSingle
          \new NullVoice \sopranoAlignerSingle
          \addlyrics \wordsSopMidi
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          printPartCombineTexts = ##f
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
          \new Voice \altoSingle
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          printPartCombineTexts = ##f
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
          \new Voice \tenorSingle
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          printPartCombineTexts = ##f
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
          \new Voice \bass
          \new NullVoice \bassAligner
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = piano <<
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
          \new Dynamics \dynamicsOnePianoSingle
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
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
  #(define output-suffix "midi-alto")
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          printPartCombineTexts = ##f
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
          \new Voice \sopranoSingle
          \new NullVoice \sopranoAlignerSingle
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          printPartCombineTexts = ##f
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
          \new Voice \altoSingle
          \addlyrics \wordsAltoMidi
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          printPartCombineTexts = ##f
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
          \new Voice \tenorSingle
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          printPartCombineTexts = ##f
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
          \new Voice \bass
          \new NullVoice \bassAligner
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = piano <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
          \new Dynamics \dynamicsOnePiano
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
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
  #(define output-suffix "midi-tenor")
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          printPartCombineTexts = ##f
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
          \new Voice \sopranoSingle
          \new NullVoice \sopranoAlignerSingle
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          printPartCombineTexts = ##f
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
          \new Voice \altoSingle
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          printPartCombineTexts = ##f
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
          \new Voice \tenorSingle
          \addlyrics \wordsTenorMidi
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          printPartCombineTexts = ##f
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
          \new Voice \bass
          \new NullVoice \bassAligner
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = piano <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
          \new Dynamics \dynamicsOnePiano
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
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
  #(define output-suffix "midi-bass")
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          printPartCombineTexts = ##f
        }
        <<
          \new Voice \RehearsalTrack
          \new Voice \TempoTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSopSingle
          \new Voice \sopranoSingle
        >>
                                % Alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          printPartCombineTexts = ##f
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAltoSingle
          \new Voice \altoSingle
        >>
                                % Tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          printPartCombineTexts = ##f
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenorSingle
          \new Voice \tenorSingle
        >>
                                % Bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          printPartCombineTexts = ##f
        }
        <<
          \clef bass
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBassSingle
          \new Voice \bass
          \new NullVoice \bassAligner
          \addlyrics \wordsBassMidi
        >>
      >>
      \new PianoStaff \with {
        instrumentName = #"Primo"
        shortInstrumentName = "I"
      }
      <<
        \new Staff = piano <<
          \magnifyStaff #4/7
          \new Voice \pianoOneRH
          \new Voice \pianoOneLH
          \new Dynamics \dynamicsOnePiano
          \new Voice \pianoTwoRH
          \new Voice \pianoTwoLH
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
