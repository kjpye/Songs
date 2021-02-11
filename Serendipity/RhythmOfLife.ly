\version "2.20.0"

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

 #(set-global-staff-size 16)

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
  s2*4
  \repeat volta 2 {
    \mark \markup { \circle "1a" } s2*4
  }
  \set Score.currentBarNumber = #5
  \mark \markup { \box    "A"  } s2*4
  \mark \markup { \circle "3c" } s2*4
  \mark \markup { \box    "B"  } s2*4
  \mark \markup { \circle "4b" } s2*4
  \mark \markup { \box    "C"  } s2*4
  \mark \markup { \circle "5a"  } s2*4
  \mark \markup { \box    "D" } s2*4
  \mark \markup { \circle "5c"  } s2*4
  \mark \markup { \box    "E" } s2*4
  \mark \markup { \circle "6b"  } s2*4
  \mark \markup { \box    "F"  } s2*4
  \mark \markup { \circle "7b" } s2*4
  \mark \markup { \box    "G"  } s2*4
  \mark \markup { \circle "8a" } s2*4
  \repeat volta 2 {
    \mark \markup { \box    "H"  } s2*4
    \mark \markup { \circle "8c" } s2*4
  }
  \mark \markup { \box    "I"  } s2*4
  \mark \markup { \circle "9b" } s2*4
  \mark \markup { \box    "J"   } s2*4
  \mark \markup { \circle "10a" } s2*4
  \mark \markup { \box    "K"   } s2*4
  \mark \markup { \circle "10c" } s2*4
  \repeat volta 2 {
    \mark \markup { \box    "L"   } s2*4
    \mark \markup { \circle "11b" } s2*3
  }
  \alternative { { s2 } { s2 } }
  \mark \markup { \box    "M"   } s2*4
  \mark \markup { \circle "12b" } s2*4
  \mark \markup { \box    "N"   } s2*4
  \mark \markup { \circle "13a" } s2*4
  \mark \markup { \box    "O"   } s2*4
  \mark \markup { \circle "14a" } s2*4
  \mark \markup { \box    "P"   } s2*4
  \mark \markup { \circle "15a" } s2*4
  \mark \markup { \box    "Q"   } s2*6
  \mark \markup { \circle "16a" } s2*4
  \mark \markup { \box    "16b" } s2*4
}

soprano = \relative c' {
  \global
  s2*4
  \repeat volta 2 {
    s2*4
  }
  d16^\mp e d cis d8 a' % 3b
  a8 g f e
  d16 e d cis d8 e
  e8 f f4
  f16^\mf g f e f8 c' % 3c
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
  e16 f f8 f f16^\markup{\dynamic mp \italic intensely} g \bar "||" \key aes \major
  aes16 aes aes8 aes g16 f % 4c
  aes16 aes aes8 bes8 aes16 f
  g16 g g g g f ees f
  g16 g g g aes8 r
  f16 f f f f8 des % 5a
  f16 f f f g8 g16 f
  e16 e e8 e d16 e
  e16 f f8 f r8 %%% other parts differ
  r8 c'^\mf c c % 5b
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
  d16^\p e d cis d8 a' % 7a %%% all voices back together again
  a8 g f e
  d16 e d cis d d e8
  e8 f f4
  f16 g f e f8 c' % 7b
  c8 bes a g
  f16 g f e f g f g
  g8 a a r
  bes16^\markup{\dynamic p \italic lightly} c bes a g a g f % 7c %%% sop and alto only
  e16 f e dis e fis g gis
  a16 b a g fis g fis e
  d8 fis a r
  g16 a g(f) e f e d % 8a
  c16 d c b c d dis e
  f16 g f d e f e cis
  d8 cis d4
  \repeat volta 2 {
    bes'16 c b a  g a g f % 8b
    e16 f e dis e fis g gis
    a16 b a g fis g fis e
    d8 fis a r
    g16 a g(f) e f e d % 8c
    c16 d c b c d dis e
    f16 g f d e f e cis
    d8-> cis-> d-> r
  }
  \key d \major
  r8 fis16^\mp fis fis8 fis % 9a %%% all parts
  fis8 g g16( fis e8)
  r8 g16 g g8 g
  g8 a a16(g fis8)
  r8 a16 a a8 a % 9b
  a8 b b16(a g8)
  cis8(a) b(cis)
  d8 cis b(a)
  r8 a16^\mf a a8 a % 9c %%% sop and tenor only
  a8 b b16(a g8)
  r8 b16 b b8 b
  b8 cis cis16(b a8)
  r8 cis16 cis cis8 cis % 10a
  cis8 d d16(cis b8)
  e8(cis) d(e)
  fis8 e d(cis)
  r8 d16^\f d d8 d % 10b %% SopI and tenor only
  d8 e e16(d cis8)
  r8 e16 e e8 e
  e8 fis fis16(e d8)
  r8 fis16 fis fis8 fis % 10c
  fis8 g g16(fis e8)
  fis8(e) fis(g)
  a8(^\> g fis e) \key f \major
  \repeat volta 2 {
    d16\!^\markup{\dynamic p - \dynamic mp \italic lightly} e d c bes c bes a % 11a %%% sop only
    g16 a g fis g8 bes
    c16 d c bes a bes a g
    f16 g f e f8 a
    bes16 c bes a g a g f % 11b
    e16 f e d e8 g
    d16 e f g a b cis d
  }
  \alternative {
    {
      e16 d d cis d8 r
    }
    {
      e16 d d cis d8 a16^\mf b
    }
  }
  \bar "||" \key c \major
  c16 c c8 c b16 a % 12a %%% all voices
  c16 c c8 d c16 a
  b16 b b b b a g a
  b16 b b b c8 r
  a16 a a a a8 f % 12b
  a16 a a a b8 b16 a
  gis16 gis gis8 gis fis16 gis
  gis16 a a8 a a16^\mf bes %%% alto tacet at end
  c16 c c8 c b16 a % 12c
  c16 c c8 d c16 a
  b16 b b b b a g a
  b16 b b b c8 r
  a16 a a a a8 f % 13a
  a16 a a a b8 b16 a
  gis16 gis gis8 gis fis16 gis
  gis16 a a8 a a16 b %%% sop only at end
  c16^\mf c c8 c b16 a % 13b
  c16 c c8 d c16 a
  b16 b b b b a g a
  b16 b b b c8 r
  a16 a a a a8 f % 14a
  a16 a a a b8 b16 a
  gis16 gis gis8 gis fis16 gis
  gis16 a a8 a r \bar "||" \key f \major
  r8 f'^\f f f % 14b
  f16 g g8 g4
  r8 e e e
  e16 f f8 f4
  r8 d d d % 15a
  d16 d d d e8 d
  r8 cis cis cis
  cis8^\< cis d e
  r4\! f4~^\ff % 15b
  f2
  r4 f~
  f2
  r4 f~
  f2
  a,16 a a8 a a % 16a
  r4 <d f>8 <cis e>
  r4 <d f>8 <cis e>
  r4 <d f>8 <cis e>
  r4 <d f>16 q <cis e>8 % 16b
  <d fis>2~(
  q4 <fis a>~
  q2~
  q4) r
  \bar "|."
}

alto = \relative c' {
  \global
  s2*4
  \repeat volta 2 {
    s2*4
  }
  d16^\mp e d cis d8 a' % 3b
  a8 g f e
  d16 e d cis d8 e
  e8 f f4
  f16^\mf g f e f8 c' % 3c
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
  e16 f f8 f f16^\markup {\dynamic mp \italic intensely} g \bar "||" \key aes \major
  aes16 aes aes8 aes g16 f % 4c
  aes16 aes aes8 bes8 aes16 f
  g16 g g g g f ees f
  g16 g g g aes8 r
  f16 f f f f8 des % 5a
  f16 f f f g8 g16 f
  e16 e e8 e d16 e
  e16 f f8 f f16^\mf g
  aes16 aes aes8 aes g16 f % 5b
  aes16 aes aes8 bes aes16 f
  g16 g g g g f ees f
  g16 g g g aes8 r
  f16 f f f f8 des % 5c
  f16 f f f g8 g16 f
  e16 e e8 e d16 e
  e16 f f8 f f16 g %%% bass drops out
  aes16 aes aes8 aes g16 f % 6a
  aes16 aes aes8 bes aes16 f
  g16 g g g g f ees f
  g16 g g g aes8 r
  f16 f f f f8 des % 6b
  f16 f f f g8 g16 f
  e16 e e8 e d16 e
  e16 f f8 e r \key f \major \bar "||"
  d16^\p e d cis d8 a' % 7a %%% all voices back together again
  a8 g f e
  d16 e d cis d d e8
  e8 f f4
  f16 g f e f8 c' % 7b
  c8 bes a g
  f16 g f e f g f g
  g8 a a r
  bes16^\markup{\dynamic p \italic lightly} c bes a g a g f % 7c %%% sop and alto only
  e16 f e dis e fis g gis
  a16 b a g fis g fis e
  d8 fis a r
  g16 a g(f) e f e d % 8a
  c16 d c b c d dis e
  f16 g f d e f e cis
  d8 cis d4
  \repeat volta 2 {
    bes'16 c bes a  g a g f % 8b
    e16 f e dis e fis g gis
    a16 b a g fis g fis e
    d8 fis a r
    g16 a g(f) e f e d % 8c
    c16 d c b c d dis e
    f16 g f d e f e cis
    d8-> cis-> d-> r
  }
  \key d \major
  r8 fis16^\mp fis fis8 fis % 9a %%% all parts
  fis8 g g16( fis e8)
  r8 g16 g g8 g
  g8 a a16(g fis8)
  r8 a16 a a8 a % 9b
  a8 b b16(a g8)
  cis8(a) b(cis)
  d8 cis b(a)
  r8 fis16^\mf fis fis8 fis % 9c %%% alto and bass
  fis8 g g16(fis e8)
  r8 g16 g g8 g
  g8 a a16(g fis8)
  r8 a16 a a8 a % 10a
  a8 b b16(a g8)
  cis8(a) b(cis)
  d8 cis b(a)
  r8 fis16^\f fis fis8 fis % 10b -K-
  fis8 g g16(fis e8)
  r8 g16 g g8 g
  g8 a a16(g fis8)
  r8 a16 a a8 a % 10c
  a8 b b16(a g8)
  a8(g) a(b)
  cis8(b a g) \key f \major
  \repeat volta 2 {
    f16\!^\markup {\dynamic mp \italic lightly} g f e d e d c % 11a %%% alto and tenor
    bes16 c bes a bes8 d
    e16 f e d c d c bes
    a16 bes a g a8 c
    d16 e d c bes c bes a % 11b
    g16 a g f g8 bes
    f16 g a b cis d e f
  }
  \alternative {
    {
      g16 f f e f8 r
    }
    {
      g16 f f e f8 a16^\mf b
    }
  }
  \bar "||" \key c \major
  c16 c c8 c b16 a % 12a %%% all voices
  c16 c c8 d c16 a
  b16 b b b b a g a
  b16 b b b c8 r
  a16 a a a a8 f % 12b
  a16 a a a b8 b16 a
  gis16 gis gis8 gis fis16 gis
  gis16 a a8 a r %%% alto only
  r8 e^\f e e % 12c
  e16 f f8 f r
  r8 d d d
  d16 e e8 e r
  r8 c c c % 13a
  c16 c c c d8 c
  r8 b b b
  b16 c c b c8 r
  r8 e^\mf e e % 13b
  e16 f f8 f r
  r8 d8 d d
  d16 e e8 e r
  r8 c c c % 14a
  c16 c c c d8 c
  r8 b b b
  b16 c c b c8 r \bar "||" \key f \major
  r8 a'^\f a a % 14b %%% with bass
  a16 bes bes8 bes4
  r8g g g
  g16 a a8 a4
  r8 f f f % 15a
  f16 f f f g8 f
  r8 e e e
  e8^\< e f g
  r4\! a~^\ff % 15b
  a2
  r4 a~
  a2
  r4 a~
  a2
  a16 a a8 a a % 16a
  r4 a8 a
  r4 a8 a
  r4 a8 a
  r4 a16 a a8 % 16b
  a2~
  a4~<a d>~
  q2~
  q4 r
  \bar "|."
}

tenor = \relative c {
  \global
  s2*4
  \repeat volta 2 {
    s2*4
  }
  d16^\mp e d cis d8 a' % 3b
  a8 g f e
  d16 e d cis d8 e
  e8 f f4
  f16^\mf g f e f8 c' % 3c
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
  e16 f f8 f f16^\markup{\dynamic mp \italic intensely}  g \bar "||" \key aes \major
  aes16 aes aes8 aes g16 f % 4c
  aes16 aes aes8 bes8 aes16 f
  g16 g g g g f ees f
  g16 g g g aes8 r
  f16 f f f f8 des % 5a
  f16 f f f g8 g16 f
  e16 e e8 e d16 e
  e16 f f8 f f16^\mf g
  aes16 aes aes8 aes g16 f % 5b
  aes16 aes aes8 bes aes16 f
  g16 g g g g f ees f
  g16 g g g aes8 r
  f16 f f f f8 des % 5c
  f16 f f f g8 g16 f
  e16 e e8 e d16 e
  e16 f f8 f f16 g %%% bass drops out
  aes16 aes aes8 aes g16 f % 6a
  aes16 aes aes8 bes aes16 f
  g16 g g g g f ees f
  g16 g g g aes8 r
  f16 f f f f8 des % 6b
  f16 f f f g8 g16 f
  e16 e e8 e d16 e
  e16 f f8 e r \key f \major \bar "||"
  d16^\p e d cis d8 a' % 7a %%% all voices back together again
  a8 g f e
  d16 e d cis d d e8
  e8 f f4
  f16 g f e f8 c' % 7b
  c8 bes a g
  f16 g f e f g f g
  g8 a a r
  r2 % 7c %%% tenor and bass tacet
  r2
  r2
  r2
  r2 % 8a
  r2
  r2
  r2
  \repeat volta 2 {
    \set melismaBusyProperties = #'()
    \slurDashed
    r8 d16^\p d d8(d) % 8b
    \slurSolid
    \unset melismaBusyProperties
    d8 d e d
    r8 c16 c c8 c
    d8 d d c
    r8 bes16 bes bes8 bes % 8c
    c8 c c bes
    a8(d) cis(e)
    d8-> cis-> d-> r
  }
  \key d \major
  r8 fis,16^\mp fis fis8 fis % 9a %%% all parts
  fis8 g g16( fis e8)
  r8 g16 g g8 g
  g8 a a16(g fis8)
  r8 a16 a a8 a % 9b
  a8 b b16(a g8)
  cis8(a) b(cis)
  d8 cis b(a)
  r8 a16^\mf a a8 a % 9c %%% sop and tenor only
  a8 b b16(a g8)
  r8 b16 b b8 b
  b8 cis cis16(b a8)
  r8 cis16 cis cis8 cis % 10a
  cis8 d d16(cis b8)
  e8(cis) d(e)
  fis8 e d(cis)
  r8 a16^\f a a8 a % 10b
  a8 b b16(a g8)
  r8 b16 b b8 b
  b8 cis cis16(b a8)
  r8 cis16 cis cis8 cis % 10c
  cis8 d d16(cis b8)
  cis8(b) cis(d)
  e8(d cis b) \key f \major
  \repeat volta 2 {
    d,4\!^\markup{\dynamic pp - \dynamic p - \dynamic mp \italic lightly} f % 11a
    g4 bes,
    c4 e
    f4 a,
    bes4 d % 11b
    e4 g,
    a4 cis
  }
  \alternative {
    {
      d2
    }
    {
      d4. a'16^\mf b
    }
  }
  \bar "||" \key c \major
  c16 c c8 c b16 a % 12a %%% all voices
  c16 c c8 d c16 a
  b16 b b b b a g a
  b16 b b b c8 r
  a16 a a a a8 f % 12b
  a16 a a a b8 b16 a
  gis16 gis gis8 gis fis16 gis
  gis16 a a8 a a16^\mf bes %%% alto tacet at end
  c16 c c8 c b16 a % 12c
  c16 c c8 d c16 a
  b16 b b b b a g a
  b16 b b b c8 r
  a16 a a a a8 f % 13a
  a16 a a a b8 b16 a
  gis16 gis gis8 gis fis16 gis
  gis16 a a8 a r %%% sop only at end
  c4^\f b % 13b
  a2
  b4 a
  g2
  a4 g % 14a
  f4 d
  e4 gis
  a4. r8 \key f \major \bar "||"
  r8 f'^\f f f % 14b
  f16 g g8 g4
  r8 e e e
  e16 f f8 f4
  r8 d d d % 15a
  d16 d d d e8 d
  r8 cis cis cis
  cis8^\< cis d e
  r4\! f4~^\ff % 15b
  f2
  r4 f~
  f2
  r4 f~
  f2
  a,16 a a8 a a % 16a
  r4 f'8 e
  r4 f8 e
  r4 f8 e
  r4 f16 f e8 % 16b
  d2~(
  d4~<d fis>~
  q2~
  q4) r
  \bar "|."
}

bass= \relative c {
  \global
  s2*4
  \repeat volta 2 {
    s2*4
  }
  d16^\mp e d cis d8 a' % 1b
  a8 g f e
  d16 e d cis d8 e
  e8 f f4
  f16^\mf g f e f8 c' % 3c
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
  e16 f f8 f f16^\markup{\dynamic mp \italic intensely}  g \bar "||" \key aes \major
  aes16 aes aes8 aes g16 f % 4c
  aes16 aes aes8 bes8 aes16 f
  g16 g g g g f ees f
  g16 g g g aes8 r
  f16 f f f f8 des % 5a
  f16 f f f g8 g16 f
  e16 e e8 e d16 e
  e16 f f8 f f16^\mf g
  aes16 aes aes8 aes g16 f % 5b
  aes16 aes aes8 bes aes16 f
  g16 g g g g f ees f
  g16 g g g aes8 r
  f16 f f f f8 des % 5c
  f16 f f f g8 g16 f
  e16 e e8 e d16 e
  e16 f f8 f r
  aes4^\mf g % 6a
  f2
  g4 f
  ees2
  f4 ees % 6b
  des4 bes
  c4 e
  f4 r \key f \major \bar "||"
  d16^\p e d cis d8 a' % 7a %%% all voices back together again
  a8 g f e
  d16 e d cis d d e8
  e8 f f4
  f16 g f e f8 c' % 7b
  c8 bes a g
  f16 g f e f g f g
  g8 a a r
  R2*8
  \repeat volta 2 {
    \set melismaBusyProperties = #'()
    \slurDashed
    r8 d,16^\p d d8(d) % 8b
    \slurSolid
    \unset melismaBusyProperties
    d8 d e d
    r8 c16 c c8 c
    d8 d d c
    r8 bes16 bes bes8 bes % 8c
    c8 c c bes
    a8(d) cis(e)
    d8-> cis-> d-> r
  }
  \key d \major
  r8 fis16^\mp fis fis8 fis % 9a %%% all parts
  fis8 g g16( fis e8)
  r8 g16 g g8 g
  g8 a a16(g fis8)
  r8 a16 a a8 a % 9b
  a8 b b16(a g8)
  cis8(a) b(cis)
  d8 cis b(a)
  r8 fis16^\mf fis fis8 fis % 9c %%% alto and bass
  fis8 g g16(fis e8)
  r8 g16 g g8 g
  g8 a a16(g fis8)
  r8 a16 a a8 a % 10a
  a8 b b16(a g8)
  cis8(a) b(cis)
  d8 cis b(a)
  r8 fis16^\f fis fis8 fis % 10b -K-
  fis8 g g16(fis e8)
  r8 g16 g g8 g
  g8 a a16(g fis8)
  r8 a16 a a8 a % 10c
  a8 b b16(a g8)
  a8(g) a(b)
  cis8(b a g) \key f \major
  \repeat volta 2 {
    d4\!^\markup{\dynamic pp - \dynamic p - \dynamic mp \italic lightly} f % 11a
    g4 bes,
    c4 e
    f4 a,
    bes4 d % 11b
    e4 g,
    a4 cis
  }
  \alternative {
    {
      d2
    }
    {
      d4. a'16^\mf b
    }
  }
  \bar "||" \key c \major
  c16 c c8 c b16 a % 12a %%% all voices
  c16 c c8 d c16 a
  b16 b b b b a g a
  b16 b b b c8 r
  a16 a a a a8 f % 12b
  a16 a a a b8 b16 a
  gis16 gis gis8 gis fis16 gis
  gis16 a a8 a a16^\mf bes %%% alto tacet at end
  c16 c c8 c b16 a % 12c
  c16 c c8 d c16 a
  b16 b b b b a g a
  b16 b b b c8 r
  a16 a a a a8 f % 13a
  a16 a a a b8 b16 a
  gis16 gis gis8 gis fis16 gis
  gis16 a a8 a r
  c4^\f b % 13b
  a2
  b4 a
  g2
  a4 g % 14a
  f4 d
  e4 gis
  a4. r8 \key f \major \bar "||"
  r8 a^\f a a % 14b %%% with alto
  a16 bes bes8 bes4
  r8g g g
  g16 a a8 a4
  r8 f f f % 15a
  f16 f f f g8 f
  r8 e e e
  e8^\< e f g
  r4\! a~^\ff % 15b
  a2
  r4 a~
  a2
  r4 a~
  a2
  a16 a a8 a a % 16a
  r4 <a d>8 <a cis>
  r4 <a d>8 <a cis>
  r4 <a d>8 <a cis>
  r4 <a d>16 q <a cis>8 % 16b
  <d, a'>2~
  q2~
  q2~
  q4 r
  \bar "|."
}

pianoOneRH = \relative c''' {
  \global
  s2*4
  \ottava #1
  \repeat volta 2 {
    r8 d4->(e8-.)
    f8.->( e16~e8 a,-.)
    r8 d4->( e8-.)
    f16-> g8 a16->~a4
  }
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
  \repeat volta 2 {
    r8 <g, bes d> r q %8b -H-
    R2
    r8 <e a c> r q
    R2
    r8 <d g bes> r q
    R2
    r8 <d f a> r <e a cis>
    d'8-> cis-> d-> r
  }
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
  q8-. q-. <f b d>-. <g cis e>-. \ottava #0
  R2 % 15b -Q-
  <d f a>8-> q-> <f a d>4->
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
  s2*4
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s8 s4.^\markup{\dynamic f - \dynamic mp} % 3a
    s2
    s2
    s2
  }
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
  \repeat volta 2 {
    s2 % 8b -H-
    s2
    s2
    s2
    s2 % 8c
    s2
    s2
    s2
  }
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

pianoOneLH = \relative c'' {
  \global
  s2*4
  \oneVoice
  \repeat volta 2 {
    r8 d4->(e8-.) % 3a
    f8.->( e16~e8 a,-.)
    r8 d4->( e8-.)
    f16-> g8 a16->~a4
  }
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
  \repeat volta 2 {
    d4 d % 8b -H-
    d8 d e d
    c4 c
    d8 d d e
    bes4 bes % 8c
    c8 c c bes
    a4 cis
    d8-> cis-> d-> r
  } \key d \major
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
  \ottava #1
  r8 fis16 fis fis8-. fis-. % 10b -K-
  fis8(g-.) g16(fis e8)
  r8 g16 g g8-. g-.
  g8(a-.) a16(g fis8)
  r8 a16 a a8-. a-. % 10c
  a8(b) b16(a g8)
  a8(g) a(b)
  cis8(b a g) \key f \major \ottava 0
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
  R2*8
  R2 % 15b -Q-
  <d, f a>8-> q-> <f a d>4->
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

pianoTwoRH = \relative c {
  \global
  s2*4
  \repeat volta 2 {
    r8 <f a d> r q % 3a
    r8 q r <e a cis>
    r8 <f a d> r q
    r8 q r <e a cis>
  }
  r8 <f a d> r q % 3b -A-
  r8 <g bes d> r <g a cis>
  r8 <f a d> q <g a cis e>
  r8 <a d f> r q
  r8 <a c f> r q % 3c
  r8 <bes d f> r <bes c e>
  r8 <a c f> r <bes e g>
  r8 <c f a> r4
  \clef treble
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
  \repeat volta 2 {
    r8 <bes d  g> r q % 8b -H-
    R2
    r8 <g c e> r q
    R2
    r8 <bes d g> r q
    r8 <c e g> r <bes e g>
    r8 <a d f> r <g cis e>
    <f a d>8-> <e a cis>-> <f a d>-> r
  }
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
  \bar "||" \key c \major \clef bass
  R2*8
  r8 e4 r8 % 12c -N-
  r8 d4 r8
  r8 <d g>4 r8
  r8 a4 r8
  \clef treble r8 <a' e'>4 r8 % 13a
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
  <a a'>8 <g g'> <f f'> \change Staff = pianoTwoLH <e e'> \change Staff = pianoTwoRH
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
  s2*4
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s2^\markup{\dynamic f - \dynamic mp} % 3a
    s2
    s2
    s2
  }
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
  s4 s\mp
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
  \repeat volta 2 {
    s2 % 8b -H-
    s2
    s2
    s2
    s2 % 8c
    s2
    s2
    s2
  }
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

pianoTwoLH = \relative c, {
  \global
  s2*4
  \oneVoice
  \repeat volta 2 {
    <d d'>4 <c c'> % 3a
    <bes bes'>8. <a a'>16~q8 q
    <d d'>4 <c c'>
    <bes bes'>8. <a a'>16~q8 q
  }
  <d d'>4 <f f'> % 3b -A-
  <e e'>4 <a, a'>
  <d d'>4 <a a'>
  <d d'>4 q
  <f f'>4 <a a'> % 3c
  <g g'>4 <c, c'>
  <f f'>4 <c c'>
  <f f'>4 q
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
  \repeat volta 2 {
    <g g'>4 <f f'> % 8b -H-
    <e e'>4 q8 <gis gis'>
    <a a'>4 <a, a'>
    <d d'>4 q8 <fis fis'>
    <g g'>4 <f f'> % 8c
    <e e'>4 <c c'>
    <d d'>4 <a a'>
    <d d'>8-> <a a'>-> <d d'>-> r
  }
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
  \bar "||" \key c \major
  <a' e' a>8 r q r % 12a -M-
  <d, a' d>8 r q r
  <g d' g>8 r q r
  <c, g' c>8 r r q
  <f c' f>8 r q r % 12b
  <b, b'>8 r r q
  <e e'>8 r q r
  <a e'>4 r8 a
  \ottava #-1
  <a, a'>4. q8 % 12c -N-
  <d, d'>4. q8
  <g g'>4. q8
  <c, c'>4. q8
  <f f'>4. q8 % 13a
  <b, b'>4. q8
  <e e'>4. q8
  <a a'>4. q8
  q4. <g g'>8 % 13b -O-
  <f f'>4 r
  <g g'>4 <f f'>
  <e e'>4 r
  <f f'>4 <e e'> % 14a
  <d d'>4 <b b'>
  <e e'>4 q
  <a a'>4 q8 <a e' a> \bar "||" \key f \major
  <d, d'>4. <d a' d>8 % 14b -P-
  <g g'>4. <g d' g>8
  <c, c'>4. <c g' c>8
  <f f'>4. <f c' f>8
  <bes, bes'>4. q8 % 15a
  <d d'>4. q8 \ottava #0
  <a' a'>4. q8
  q8 <g g'> \voiceTwo <f f'> <e e'> \oneVoice
  <d' d'>8-> q-> <d' a'>4->~ % 15b -Q-
  q2
  <d, d'>8-> q-> <d' a'>4->~ % 15b -Q-
  q2
  <d, d'>8-> q-> <d' a'>4->~
  q2
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

wordsStart = \lyricmode {
  When I start- ed down the street last Sun- day,
  Feel- in' might- y low and kind- a mean,
  Sud- den- ly a voice said, "\"Go " forth, neigh- bor!
  Spread the pic- ture on a wid- er "screen!\""
  And the voice said, "\"Neigh-" bor, there's a mil- lion rea- sons
  Why you should be glad in all four sea- sons!
  Hit the road, neigh- bor leave your wor- ries and strife!
  Spread the rel- ig- ion of the rhy- thm of "life.\" "
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
  the rhy- thm of life is a pow- er- ful beat, % Usually has "For" or "O" before
  Puts a tin- gle in your fin- gers and a tin- gle in your feet!
  Rhy- thm on the in- side, rhy- thm on the street,
  And the rhy- thm of life is a pow- er- ful beat!
}

Mrol = \lyricmode {
  "the " rhy "thm " "of " "life " "is " "a " pow er "ful " "beat, "
  "\nPuts " "a " tin "gle " "in " "your " fin "gers " "\nand " "a " tin "gle " "in " "your " "feet! "
  "\nRhy" "thm " "on " "the " in "side, "
  "\nrhy" "thm " "on " "the " "street, "
  "\nAnd " "the " rhy "thm " "of " "life " "is " "a " pow er "ful " "beat! "
}

tfrl = \lyricmode {
  To feel the rhy- thm of life,
  To feel the pow er- ful beat,
  To feel the tin- gle in your fin- gers,
  To feel the tin- gle in your % usually followed by "feet!" but sometimes "life!"
}

Mtfrl = \lyricmode {
  "\nTo " "feel " "the " rhy "thm " "of " "life, "
  "\nTo " "feel " "the " "pow " er "ful " "beat, "
  "\nTo " "feel " "the " tin "gle " "in " "your " fin "gers, "
  "\nTo " "feel " "the " tin "gle " "in " "your "
}

stg = \lyricmode {
  Go and spread the gos- pel in Mil- wau- kee;
  Take a walk- ie talk- ie to Rock- y Ridge!
  All the way to Can- ton, then to Scran- ton,
  Ev- en tell it un- der the Man- hat- tan Bridge.
}

Mstg = \lyricmode {
  "\nGo " "and " "spread " "the " gos "pel " "in " Mil wau "kee; "
  "\nTake " "a " walk "ie " talk "ie " "to " Rock "y " "Ridge! "
  "\nAll " "the " "way " "to " Can "ton, " "then " "to " Scran "ton, "
  "\nEv" "en " "tell " "it " un "der " "the " Man hat "tan " "Bridge. "
}

mns = \lyricmode {
  You will make a new sens- a- tion,
  Have a grow- ing con- gre- ga- tion,
  Build a glow- ing op- er- a- tion here be- low!
  Like a Pied __ Pip- er blow- ing,
  Lead and keep the mus- ic flow- ing,
  Keep the rhy- thm go, go, go- ing;
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
  doo- bi,
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
  Neigh- bour, you've got the rhy- thm,
  rhy- thm, rhy- thm, rhy- thm of life! __
}

Mygr = \lyricmode {
  "\nNeigh" "bour, " "you've " "got " "the " rhy "thm, "
  "\nrhy" "thm, " rhy "thm, " rhy "thm " "of " "life! " 
}

wordsSopA = \lyricmode {
  \wordsStart
  For \rol
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
  \mns
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
  O \rol
  O \rol
  O \rol
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
  \wordsSopDa
  \wordsSopDb
  \wordsSopDc
  \wordsSopE
}

wordsSopSingle = \lyricmode {
  \wordsSopA
  \wordsSopB
  \wordsSopB
  \wordsSopC
  \wordsSopDaE
  \wordsSopDbE
  \wordsSopDa
  \wordsSopDc
  \wordsSopE
}

MwordsSopSingle = \lyricmode {
  \MwordsSopA
  \MwordsSopB
  \MwordsSopB
  \MwordsSopC
  \MwordsSopDaE
  \MwordsSopDbE
  \MwordsSopDa
  \MwordsSopDc
  \MwordsSopE
}

wordsAltoA = \lyricmode {
  \wordsStart

  For \rol
  For \rol
  For \rol
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
  O \rol
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
  \wordsSopDa
  \wordsSopDb
  \wordsSopDc
  \wordsAltoE
}

wordsAltoSingle = \lyricmode {
  \wordsAltoA
  \wordsSopB
  \wordsSopB
  \wordsSopC
  \wordsSopDaE
  \wordsSopDbE
  \wordsSopDa
  \wordsSopDc
  \wordsAltoE
}

MwordsAltoSingle = \lyricmode {
  \MwordsAltoA
  \MwordsSopB
  \MwordsSopB
  \MwordsSopC
  \MwordsSopDaE
  \MwordsSopDbE
  \MwordsSopDa
  \MwordsSopDc
  \MwordsAltoE
}

wordsTenorA = \lyricmode {
  \wordsStart

  For \rol
  For \rol
  For \rol
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
  You will make a new sens- a- tion,
  Have a grow- ing con- gre- ga- tion,
  Build a glow- ing op- er- a- tion here be- low!
  go, go!
}

MwordsTenorB = \lyricmode {
  "\nYou " "will " "make " "a " "new " sens a "tion, "
  "\nHave " "a " grow "ing " con gre ga "tion, "
  "\nBuild " "a " glow "ing " op er a "tion " "here " be "low! "
  "\ngo, " "go! "
}

wordsTenorE = \lyricmode {  
  O \rol
  O \rol
  Go, go, go!
  Go, go, go!
  Tell them ev- 'ry- thing you know!
  
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
  \wordsBassDa
  \wordsBassDb
  \wordsBassDb
  \wordsTenorE
}

wordsTenorSingle = \lyricmode {
  \wordsTenorA
  \wordsTenorB
  \wordsTenorB
  \wordsSopC
  \wordsBassDa
  \wordsBassDb
  \wordsBassDa
  \wordsBassDb
  \wordsTenorE
}

MwordsTenorSingle = \lyricmode {
  \MwordsTenorA
  \MwordsTenorB
  \MwordsTenorB
  \MwordsSopC
  \MwordsBassDa
  \MwordsBassDb
  \MwordsBassDa
  \MwordsBassDb
  \MwordsTenorE
}

MwordsTenor = \lyricmode {
}

wordsBassA = \lyricmode {
  \wordsStart

  For \rol
  For \rol
  Go, go, go!
  Go, go, go!
  Tell them ev- 'ry- thing you know!
  
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

wordsBassSingle = \lyricmode {
  \wordsBassA
  \wordsTenorB
  \wordsTenorB
  \wordsSopC
  \wordsBassDa
  \wordsBassDb
  \wordsBassDa
  \wordsBassDb
  \wordsTenorE
}

MwordsBassSingle = \lyricmode {
  \MwordsBassA
  \MwordsTenorB
  \MwordsTenorB
  \MwordsSopC
  \MwordsBassDa
  \MwordsBassDb
  \MwordsBassDa
  \MwordsBassDb
  \MwordsTenorE
}

wordsVerseTwo = \lyricmode {
  Like a Pied __ Pip- er blow- ing,
  Lead and keep the mus- ic flow- ing,
  Keep the rhy- thm go, go, go- ing;
  go, __ go, __ go, go, go!
}

\book {
  #(define output-suffix "repeat")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" \soprano
            \new Lyrics \lyricsto "soprano" \wordsSopRepeat
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAltoRepeat
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenorRepeat
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBassRepeat
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoOneRH
          >>
          \new Dynamics \dynamicsOnePiano
          \new Staff <<
            \new Voice \pianoOneLH
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianoTwoRH <<
            \clef "bass"
            \new Voice \pianoTwoRH
          >>
          \new Dynamics \dynamicsTwoPiano
          \new Staff = pianoTwoLH <<
            \clef "bass"
            \new Voice \pianoTwoLH
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
%    \midi {}
  }
}

\book {
  #(define output-suffix "single")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "soprano" \unfoldRepeats \soprano
            \new Lyrics \lyricsto "soprano" \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \unfoldRepeats \alto
            \new Lyrics \lyricsto "alto" \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \unfoldRepeats \tenor
            \new Lyrics \lyricsto "tenor" \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \unfoldRepeats \bass
            \new Lyrics \lyricsto "bass" \wordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsOnePiano
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneLH
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianoTwoRH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsTwoPiano
          \new Staff = pianoTwoLH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoLH
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  #(define output-suffix "acc")
  \score {
    \context GrandStaff <<
      <<
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsOnePiano
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneLH
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianoTwoRH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsTwoPiano
          \new Staff = pianoTwoLH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoLH
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  #(define output-suffix "soprano")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "soprano" \unfoldRepeats \soprano
            \new Lyrics \lyricsto "soprano" \MwordsSopSingle
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \unfoldRepeats \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \unfoldRepeats \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \unfoldRepeats \bass
%            \new Lyrics \lyricsto "bass" \wordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsOnePiano
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneLH
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianoTwoRH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsTwoPiano
          \new Staff = pianoTwoLH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoLH
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  #(define output-suffix "alto")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "soprano" \unfoldRepeats \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \unfoldRepeats \alto
            \new Lyrics \lyricsto "alto" \MwordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \unfoldRepeats \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \unfoldRepeats \bass
%            \new Lyrics \lyricsto "bass" \wordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsOnePiano
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneLH
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianoTwoRH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsTwoPiano
          \new Staff = pianoTwoLH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoLH
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  #(define output-suffix "tenor")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "soprano" \unfoldRepeats \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \unfoldRepeats \alto
%           \new Lyrics \lyricsto "alto" \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \unfoldRepeats \tenor
            \new Lyrics \lyricsto "tenor" \MwordsTenorSingle
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \unfoldRepeats \bass
%            \new Lyrics \lyricsto "bass" \wordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsOnePiano
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneLH
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianoTwoRH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsTwoPiano
          \new Staff = pianoTwoLH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoLH
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  #(define output-suffix "bass")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "soprano" \unfoldRepeats \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \unfoldRepeats \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \unfoldRepeats \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \unfoldRepeats \bass
            \new Lyrics \lyricsto "bass" \MwordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsOnePiano
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneLH
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianoTwoRH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsTwoPiano
          \new Staff = pianoTwoLH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoLH
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
    \midi {}
  }
}

\book {
  #(define output-suffix "sopacc")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "soprano" \unfoldRepeats \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsOnePiano
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneLH
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianoTwoRH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsTwoPiano
          \new Staff = pianoTwoLH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoLH
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "altoacc")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \unfoldRepeats \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsOnePiano
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneLH
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianoTwoRH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsTwoPiano
          \new Staff = pianoTwoLH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoLH
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "tenoracc")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \unfoldRepeats \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsOnePiano
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneLH
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianoTwoRH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsTwoPiano
          \new Staff = pianoTwoLH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoLH
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "bassacc")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \unfoldRepeats \bass
            \new Lyrics \lyricsto "bass" \MwordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsOnePiano
          \new Staff <<
            \new Voice \unfoldRepeats \pianoOneLH
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianoTwoRH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoRH
          >>
          \new Dynamics \unfoldRepeats \dynamicsTwoPiano
          \new Staff = pianoTwoLH <<
            \clef "bass"
            \new Voice \unfoldRepeats \pianoTwoLH
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "soponly")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "soprano" \unfoldRepeats \soprano
%            \new Lyrics \lyricsto "soprano" \wordsSopSingle
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "altoonly")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \unfoldRepeats \alto
%            \new Lyrics \lyricsto "alto" \wordsAltoSingle
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "tenoronly")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single tenor staff
          \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice = "tenor" \unfoldRepeats \tenor
%            \new Lyrics \lyricsto "tenor" \wordsTenorSingle
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "bassonly")
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice = "bass" \unfoldRepeats \bass
            \new Lyrics \lyricsto "bass" \MwordsBassSingle
          >>
        >>
        \new DrumStaff { \global \drummode { bassdrum4 bd bd bd bd bd bd bd } }
      >>
    >>
    \midi {}
  }
}
