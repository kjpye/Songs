\version "2.25.81"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Iolanthe"
  subtitle    = "№ 14 When All Night Long"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Arthur Sullivan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "W. S. Gilbert"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 2/4
}

TempoTrack = {
  \global
%  \set Score.tempoHideNote = ##t
  \tempo 4=69 s2*4
  \repeat volta 2 {
    \once\set Score.tempoHideNote = ##f
    \tempo Moderato 4=116 s1*15
    s2.. \tempo 4=29 s8
    \once\set Score.tempoHideNote = ##f
    \tempo "Tempo I" 4=69 s2*10
    \tempo Rit 4=68 s4 \tempo 4=67 s \tempo 4=66 s \tempo 4=65 s \tempo Meno 4=64 s2*4
    \tempo "A Tempo" 4=69 s2*2 \tempo Meno 4=69 s2*2 \tempo Rit 4=64 s2*2
    \tempo 4=32 s4.  % bar 43
    \tempo "A Tempo" 4=69 s8 s2*3
    \alternative { { s2 } { s2 } }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "177a" s2*4
  \repeat volta 2 {
    \time 4/4 s1*3
    \textMark \markup\box "177b" s1*6
    \textMark \markup\box "178a" s1*6
    \textMark \markup\box "178b" s1 \time 2/4 s2*7
    \textMark \markup\box "179a" s2*8
    \textMark \markup\box "179b" s2*8
    \textMark \markup\box "180a" s2*3
    \alternative { {s2} {s2} }
  }
}

melody = \relative {
  \global
  R2*3 | r4 r8 f\mf |
  \repeat volta 2 {
    bes4 4 4. f8 | d4. ees8 f4 r8 f | g4. f8 g a bes c |
    a8 f8 4 r r8 f | bes4 4 4. f8 | d4 ees f r8 f | g4. 8 f d ees c | d bes8 4 r r8 d | f4 g a4. 8 |
    g4 a bes d, | e8 f g4 r8 d e d | d c8 4 r c | a' bes c4. 8 | d,4 d bes' g | e f g8 a bes c |
    a8 f f4 r r8 f\fermata \section
    d8 f g a | bes8. c16 bes4 | g8 f16(ees) f4 | ees8 d16(c) d8 [ r16 d ] | d8 f g a | bes8. c16 bes4 | a8 g16(f) g4 |
    f4 bes8.(a16) | g8 g g a16(g) | f8 f f f | ees8 8 8 f16(ees) | d8 d d [ r16 d ] | bes'8 16 16 a8 g | f8. ees16 d8 d | g g f16 f ees8 |
    d8. c16 bes4 | c8 d16(ees) d4 | ees8 f16(g) f8 [ r16 f ] | d'8 16 16 c8 a | bes8. f16 8 8 | g a \tuplet 3/2 {bes a g} | a4. bes8 | 8 d,16^\markup "ad lib" f bes,4\fermata |
    R2*3 |
    \alternative {
      { r4 r8 f' | }
      { r2 }
    }
  }
  \bar "|."
}

wordsOne = \lyricmode {
  When all night long a chap re -- mains on sen -- try go,
  to chase mo -- no -- to -- ny
  He ex -- er -- cis -- es of his brains,
  that is, as -- sum -- ing that he’s got an -- y.
  Though nev -- er nur -- tured in the lap of lux -- ur -- y
  yet I ad -- mon -- ish you,
  I am an In -- tel -- lec -- tual chap,
  amd think of things that would as -- ton -- ish you.

  I of -- ten think it’s com -- i -- cal,
  Fal, lal, la!
  Fal, lal, la!
  How na -- ture al -- ways does con -- trive,
  Fal, lal, la, la!
  That ev -- ’ry boy and ev -- ’ry gal that’s born in -- to the world a -- live
  is ei -- ther a lit -- tle lib -- er -- al
  or else a lit -- tle con -- ser -- va -- tive!
  Fal, lal, la!
  Fal, lal, la!
  is ei -- ther a lit -- tle lib -- er -- al
  or else a lit -- tle con -- ser -- va -- tive!
  Fal, lal, la!

  \set stanza = "2."
  When
}

wordsTwo = \lyricmode {
  "" in that house M. P.'s di -- vide,
  if they’ve a brain and cer -- e -- bel -- lum, too,
  They’ve got to leave that brain out -- side,
  And vote just as their lead -- ers tell ’em to.
  But then the pros -- pect of a lot of dull M. P.s
  in close prox -- im -- i -- ty,
  All think -- ing for them -- selves,
  is what no man can face with e -- qui -- ni -- mi -- ty.

  Then let’s re -- joice with loud Fal lal,
  \*6 "" that
}

wordsSingle = \lyricmode {
  When all night long a chap re -- mains on sen -- try go,
  to chase mo -- no -- to -- ny
  He ex -- er -- cis -- es of his brains,
  that is, as -- sum -- ing that he’s got an -- y.
  Though nev -- er nur -- tured in the lap of lux -- ur -- y
  yet I ad -- mon -- ish you,
  I am an In -- tel -- lec -- tual chap,
  amd think of things that would as -- ton -- ish you.

  I of -- ten think it’s com -- i -- cal,
  Fal, lal, la!
  Fal, lal, la!
  How na -- ture al -- ways does con -- trive,
  Fal, lal, la, la!
  That ev -- ’ry boy and ev -- ’ry gal that’s born in -- to the world a -- live
  is ei -- ther a lit -- tle lib -- er -- al
  or else a lit -- tle con -- ser -- va -- tive!
  Fal, lal, la!
  Fal, lal, la!
  is ei -- ther a lit -- tle lib -- er -- al
  or else a lit -- tle con -- ser -- va -- tive!
  Fal, lal, la!

  \set stanza = "2."
  When in that house M. P.'s di -- vide,
  if they’ve a brain and cer -- e -- bel -- lum, too,
  They’ve got to leave that brain out -- side,
  And vote just as their lead -- ers tell ’em to.
  But then the pros -- pect of a lot of dull M. P.s
  in close prox -- im -- i -- ty,
  All think -- ing for them -- selves,
  is what no man can face with e -- qui -- ni -- mi -- ty.

  Then let’s re -- joice with loud Fal lal,
  Fal, lal, la!
  Fal, lal, la!
  That na -- ture al -- ways does con -- trive,
  Fal, lal, la, la!
  That ev -- ’ry boy and ev -- ’ry gal that’s born in -- to the world a -- live
  is ei -- ther a lit -- tle lib -- er -- al
  or else a lit -- tle con -- ser -- va -- tive!
  Fal, lal, la!
  Fal, lal, la!
  is ei -- ther a lit -- tle lib -- er -- al
  or else a lit -- tle con -- ser -- va -- tive!
  Fal, lal, la!
}

midiWords = \lyricmode {
  "When " "all " "night " "long " "a " "chap " re "mains " "on " sen "try " "go, "
  "\nto " "chase " mo no to "ny "
  "\nHe " ex er cis "es " "of " "his " "brains, "
  "\nthat " "is, " as sum "ing " "that " "he’s " "got " an "y. "
  "\nThough " nev "er " nur "tured " "in " "the " "lap " "of " lux ur "y "
  "\nyet " "I " ad mon "ish " "you, "
  "\nI " "am " "an " In tel lec "tual " "chap, "
  "\namd " "think " "of " "things " "that " "would " as ton "ish " "you. "

  "\nI " of "ten " "think " "it’s " com i "cal, "
  "\nFal, " "lal, " "la! "
  "\nFal, " "lal, " "la! "
  "\nHow " na "ture " al "ways " "does " con "trive, "
  "\nFal, " "lal, " "la, " "la! "
  "\nThat " ev "’ry " "boy " "and " ev "’ry " "gal " "that’s " "born " in "to " "the " "world " a "live "
  "\nis " ei "ther " "a " lit "tle " lib er "al "
  "\nor " "else " "a " lit "tle " con ser va "tive! "
  "\nFal, " "lal, " "la! "
  "\nFal, " "lal, " "la! "
  "\nis " ei "ther " "a " lit "tle " lib er "al "
  "\nor " "else " "a " lit "tle " con ser va "tive! "
  "\nFal, " "lal, " "la! "

  \set stanza = "2."
  "\nWhen " "in " "that " "house " "M. " "P.'s " di "vide, "
  "\nif " "they’ve " "a " "brain " "and " cer e bel "lum, " "too, "
  "\nThey’ve " "got " "to " "leave " "that " "brain " out "side, "
  "\nAnd " "vote " "just " "as " "their " lead "ers " "tell " "’em " "to. "
  "\nBut " "then " "the " pros "pect " "of " "a " "lot " "of " "dull " "M. " "P.s "
  "\nin " "close " prox im i "ty, "
  "\nAll " think "ing " "for " them "selves, "
  "\nis " "what " "no " "man " "can " "face " "with " e qui ni mi "ty. "

  "\nThen " "let’s " re "joice " "with " "loud " "Fal " "lal, "
  "\nFal, " "lal, " "la! "
  "\nFal, " "lal, " "la! "
  "\nThat " na "ture " al "ways " "does " con "trive, "
  "\nFal, " "lal, " "la, " "la! "
  "\nThat " ev "’ry " "boy " "and " ev "’ry " "gal " "that’s " "born " in "to " "the " "world " a "live "
  "\nis " ei "ther " "a " lit "tle " lib er "al "
  "\nor " "else " "a " lit "tle " con ser va "tive! "
  "\nFal, " "lal, " "la! "
  "\nFal, " "lal, " "la! "
  "\nis " ei "ther " "a " lit "tle " lib er "al "
  "\nor " "else " "a " lit "tle " con ser va "tive! "
  "\nFal, " "lal, " "la! "
}

flute = \relative {
  \global
  d''8\ff f g a | \ottava #1 bes c d c16 bes | c8 \ottava #0 r f, r | bes r r4 |
  \repeat volta 2 {
    R1*3 |
    R1*6 |
    R1*6 |
    R1\fermata \section | R2*6 | a8\f g16(f) g4 |
    f4 r | R2*7 | % 179a
    R2*7 | r4 r8\fermata f\ff |
    d8 f g a \ottava #1 | bes c d c16 bes | c8 \ottava #0 r f, r |
    \alternative {
      { bes8 r r4 | }
      { bes8 r r4 | }
    }
  }
}

oboe = \relative {
  \global
  d'8\ff f g a | \ottava #1 bes c d c16 bes | c8 \ottava #0 r f, r | bes r r4 |
  \repeat volta 2 {
    R1*3 |
    R1*6 |
    R1*6 |
    R1\fermata \section | R2*2 | g'8\f f16(ees) f4 | ees8 d16(c) d4 | % 178b
    R2*2 | a8 g16(f) g4 |
    f4 r | R2*7 | % 179a
    R2 | c'8 d16(ees) d4 | ees8 f16(g) f8 r | R2*4 | r4 r8\fermata f,\ff | % 179b
    d8 f g a | bes c d c16 bes | c8 r f, r |
    \alternative {
      { bes8 r r4 | }
      { bes8 r r4 | }
    }
  }
}

clarinets = \relative {
  \global
  <g' c>4:8\ff <a c>8 <d f> | <c e> d e d16 c | <a d>8 r <bes f'> r | <c e> r r4 |
  \repeat volta 2 {
    R1*3 |
    R1*6 |
    R1*6 |
    R1\fermata \section | R2*2 | <f, c'>8\f 8 <ees c'>4 | % 178b
    <d g>8 <bes g'> <c g'>4 | R2*2 |
    <bes d>8 <bes ees> <<{\vo ees8 fis} \new Voice {\vt c4}>> \ov |
    <bes g'>4 r | R2*7 | % 179a
    R2 | d8 bes c4 | <bes f'>8 <bes d> <c g'> r | R2*4 | r4 r8\fermata g'\ff |
    <g c>4:8 <a c>8 <d f> | <c ees> d ees d16 c | <a d>8 r <bes f'> r |
    \alternative {
      { <c ees>8 r r4 | }
      { q8 r r4 | }
    }
  }
}

bassoon = \relative {
  \global
  bes,,8\ff d ees f | g a bes ees, | 8 r f r | bes, r r4 |
  \repeat volta 2 {
    R1*3 |
    R1*6 |
    R1*6 |
    R1\fermata \section | R2*2 | ees'8\f g bes4 | a8 f bes4 | R2*2 | f8 d bes c |
    g4 r | R2*7 | % 179a
    R2 a8 g bes4 | c8 ees d r | R2*4 | r4 r8\fermata r |
    bes,8\ff d ees f | g a bes d, | ees8 r f r |
    \alternative {
      { bes,8 r r4 | }
      { bes8 r r4 | }
    }
  }
}

trumpets = \relative {
  \global
  <ees' c'>8\ff <g c> <a c> <g bes> | c <g d'> <g ees'> <<{\vo d'16 c} \new Voice {\vt g8}>> \ov | <a d>8 r <g bes> r | <ees c'> r r4 |
  \repeat volta 2 {
    R1*3 |
    R1*6 |
    R1*6 |
    R1\fermata \section | R2*7 |
    R2*8 |
    R2*8 |
    <ees c'>8\f <g c> <a c> <g bes> | c <g d'> % 180a
    <<{\vo ees'8 d16 c} \new Voice {\vt g8 g}>> \ov | <a d>8 r <g bes> r |
    \alternative {
      { <ees c'>8 r r4 | }
      { <ees c'>8 r r4 | }
    }
  }
}

horns = \relative {
  \global
  <c' c'>4:8\ff <bes' d>8 <bes c> | <a f'> <c, c'> <c c'>4:8 | <g' d'>8 r <c, c'> r | q r r4 |
  \repeat volta 2 {
    R1*3 |
    R1*6 |
    R1*6 |
    R1\fermata \section | R2*7 |
    R2*8 |
    R2*8 |
    <c c'>4:8 <bes' d>8 <bes c> | % 180a
    <a f'>8 <c, c'> q4:8 | <g' d'>8 r <c, c'> r |
    \alternative {
      { q8 r r4 | }
      { q8 r r4 | }
    }
  }
}

trombones = \relative {
  \global
  <bes, bes'>8\ff <d bes'> <ees bes'> <f ees'> | <g d'> <a c> bes <d, bes'> |
  <ees ees'>8 r <f ees'> r | <bes, bes'> r r4 |
  \repeat volta 2 {
    R1*3 |
    R1*6 |
    R1*6 |
    R1\fermata \section | R2*7 |
    R2*8 |
    R2*8 |
    <bes bes'>8\f <d bes'> <ees bes'> <f ees'> | % 180a
    <g d'> <a c> bes <d, bes'> | <ees ees'>8 r <f ees'> r |
    \alternative {
      { <bes, d'> r r4 | }
      { q8 r r4 | }
    }
  }
}

timpani = \relative {
  \global
  bes,4:8\ff bes8 f' | bes, f' bes,4:8 |
  bes8 r f' r | bes, r r4 |
  \repeat volta 2 {
    R1*3 |
    R1*6 |
    R1*6 | % 178a
    R1\fermata \section | R2*7 |
    R2*8 | % 179a
    R2*8 |
    bes4.:8\f f'8 | bes,8 f' bes,4:8 | % 180a
    bes8 r f' r |
    \alternative { {bes,8 r r4 |} {bes8 r r4 |} }
  }
}

violini = \relative {
  \global
  d''8\ff f g a | bes c \ottava #1 d c16 bes | c8 \ottava #0 r f, r | bes r r4 |
  \repeat volta 2 {
    d,,4\f d d r | d r r2 | g4 r r g |
    f4 r r2 | d4 d d r | d r r2 | g4 r f4 ees | d r r2 | f4 g a a | % 177b
    g4 a bes d, | e8 f g4 r e8 d | d c8 4 r c | a' bes c c | d, d bes' g | e f g e | % 178a
    f4 r r2\fermata \section | d8 f g a | bes8. c16 bes4 | R2*2 | d,8 f g a | bes8. c16 bes4 | r2 |
    r4 bes8. a16 | g4.:8 a16(g) | % 179a
    f4.:8 r8 | ees4.:8 f16(ees) |
    d4.:8 r8 | d4-. ees-. | f4(d8) r | g4-. f8(ees) |
    d8.(c16) bes4-. | c8 d16(ees) d4-. | ees8 f16(g) f8 r | d' r c r | % 179b
    bes8 r r4 | g8 r g r | f2( | bes8) r r\fermata  f'\ff |
    d8 f g a | \ottava #1 bes8 c d c16 bes | c8 \ottava #0 r f, r |
    \alternative {
      { bes8 r r4 | }
      { bes8 r r4 | }
    }
  }
}

violinii = \relative {
  \global
  d'8\ff f g a | bes c d c16 bes | c8 r f, r | bes r r4 |
  \repeat volta 2 {
    bes,4\f 4 4 r | 4 r r2 | ees4 r r c |
    c4 r r2 | bes4 4 4 r | 4 r r2 | ees4 r d c | bes r r2 | f'4 e f f |
    g4 fis g d | c b c bes | a a r c | f e f g | % 178a
    d4 c bes d | c c d c |
    c4 r r2\fermata \section | bes4.:8 ees8 | % 178b
    d4 d | R2*2 | bes4.:8 ees8 | d4 d | R2 |
    r4 f | g8 f ees8 8 | ees4:8 d8 r | ees d c c | % 179a
    c4:8 bes8 r | 4-. 4-. | c-.(bes8-.) r | bes4-. c-- |
    a4-- g-. | c8 a bes4-. | ees8 c f r | f r f r | f r r4 | % 179b
    ees8 r ees r | 2~ | 8 r r\fermata f\ff |
    d8 f g a | bes c d c16 bes | c8 r f, r |
    \alternative {
      { bes8 r r4 | }
      { bes8 r r4 | }
    }
  }
}

viola = \relative {
  \global
  <bes f'>8\ff f' bes, ees | d f f4:8 | g8 r <ees a> r | <d bes'> r r4 |
  \repeat volta 2 {
    f,4\f f f r | f r r2 | bes4 r r bes |
    a4 r r2 | f4 f f r | f r r2 | bes4 r bes a | f r r2 | c'4 c c c | % 177b
    d4 d d g, | g g g e | f f r c' | c c c c | f, fis4 4 4 | g f bes4 4 | % 178a
    a4 r r2\fermata \section | bes4:8 g8 f | % 178b
    f4 bes | R2*2 | bes4:8 g8 f | f4 bes | R2 |
    r4 bes | bes4:8 c4:8 | % 179a
    c4:8 bes8 r | g4:8 a:8 |
    a4:8 g8 r | g4-. g-. | f4-.(8-.) r | g4-. g-- |
    d4-- d-. | f4:8 4-. | a4:8 bes8 r | % 179b
    bes8 r a r | bes r r4 | bes8 r c r | c2( | bes8) r r\fermata f'8\ff |
    <bes, f'>4:8 bes8 ees | d8 f4.:8 | % 180a
    g8 r <ees a> r |
    \alternative {
      { <d bes'> r r4 | }
      { <d bes'>8 r r4 | }
    }
  }
}

cello = \relative {
  \global
  bes,8\ff d ees f | g a bes bes, | ees r f r | bes, r r4 |
  \repeat volta 2 {
    bes4\f 4 4 r | 4 r r2 | ees4 r r e |
    f4 r r2 | bes,4 4 4 r | 4 r r2 | ees4 r f f | bes, r r2 | a4 c f f | % 177b
    bes,4 d g bes, | c d e c | f c a c | f g a a, | bes a g bes | c a bes c | % 178a
    f4 ees d c\fermata \section | bes8 d ees f | bes,4 bes' | % 178b
    ees,8 g bes4 | a8 f bes4 | bes,8 d ees f | bes,4 bes' | f8 d bes c |
    f4 d | ees8 d c bes | a f bes r | c bes a g | fis d g r | % 179a
    g4-. g-. | a(bes8) r | ees4-. c-- |
    fis,4 g | a8 f bes4 | c8 ees d r | bes' r f r | d r r4 | % 179b
    ees8 r c r | f2( | bes,8) r r\fermata r |
    bes8 d ees f | g a bes d, | ees r f r | % 180a
    \alternative {
      { bes,8 r r4 | }
      { bes8 r r4 | }
    }
  }
}

bass = \relative {
  \global
  bes,8\ff d ees f | g a bes bes, | ees r f r | bes, r r4 |
  \repeat volta 2 {
    bes4\f 4 4 r | 4 r r2 | ees4 r r e |
    f4 r r2 | bes,4 4 4 r | 4 r r2 | ees4 r f f | bes, r r2 | a4 c f f | % 177b
    bes4 d g bes, | c d e c | f c a c | f g a a, | bes a g bes | c a bes c | % 178a
    f,4 ees d c\fermata \section | bes8 d ees f | bes,4 bes' | % 178b
    ees,8 g bes4 | a8 f bes4 | bes,8 d ees f | bes,4 bes' | f8 d bes c |
    f4 d | ees8 d c bes | a f bes r | c' bes a g | fis d g r | % 179a
    g,4-. g-. | a(bes8) r | ees4-. c-- |
    fis,4 g | R2*2 | bes'8 r f r | d r r4 | % 179b
    ees8 r c r | f2( | bes,8) r r\fermata r |
    bes8 d ees f | g a bes d, | ees r f r | % 180a
    \alternative {
      { bes8 r r4 | }
      { bes8 r r4 | }
    }
  }
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \clef "treble_8"
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
        >>
        \new Staff = flute \with {
          instrumentName = Flute
          shortInstrumentName = Fl
        }
        \new Voice \flute
        \new Staff = oboe \with {
          instrumentName = Oboe
          shortInstrumentName = Ob
        }
        \new Voice \oboe
        \new Staff = clarinets \with {
          instrumentName = Clarinets
          shortInstrumentName = Cls
        }
        \new Voice \clarinets
        \new Staff = bassoon \with {
          instrumentName = Bassoon
          shortInstrumentName = Bsn
        }
        <<
          \clef bass
          \new Voice \bassoon
        >>
        \new StaffGroup <<
          \new Staff = trumpets \with {
            instrumentName = Trumpets
            shortInstrumentName = Tpts
          }
          <<
            \new Voice \trumpets
          >>
          \new Staff = horns \with {
            instrumentName = Horns
            shortInstrumentName = Hns
          }
          <<
            \new Voice \horns
          >>
          \new Staff = trombones \with {
            instrumentName = Trombones
            shortInstrumentName = Tbns
          }
          <<
            \clef bass
            \new Voice \trombones
          >>
        >>
        \new Staff = percussion \with {
          instrumentName = Percussion
          shortInstrumentName = Perc
        }
        <<
          \clef bass
          \new Voice \timpani
        >>
        \new StaffGroup <<
          \new Staff = violini \with {
            instrumentName = "Violin 1"
            shortInstrumentName = "Vl1"
          }
          <<
            \new Voice \violini
          >>
          \new Staff = violinii \with {
            instrumentName = "Violin 2"
            shortInstrumentName = "Vl2"
          }
          <<
            \new Voice \violinii
          >>
        >>
        \new Staff = viola \with {
          instrumentName = Viola
          shortInstrumentName = Vla
        }
        <<
          \clef alto
          \new Voice \viola
        >>
        \new Staff = cello \with {
          instrumentName = Cello
          shortInstrumentName = cell
        }
        <<
          \clef bass
          \new Voice \cello
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = Bass
        }
        <<
          \clef bass
          \new Voice \bass
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \clef "treble_8"
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Voice \melody
            \addlyrics \wordsSingle
          >>
        >>
        \new Staff = flute \with {
          instrumentName = Flute
          shortInstrumentName = Fl
        }
        \new Voice \flute
        \new Staff = oboe \with {
          instrumentName = Oboe
          shortInstrumentName = Ob
        }
        \new Voice \oboe
        \new Staff = clarinets \with {
          instrumentName = Clarinets
          shortInstrumentName = Cls
        }
        \new Voice \clarinets
        \new Staff = bassoon \with {
          instrumentName = Bassoon
          shortInstrumentName = Bsn
        }
        <<
          \clef bass
          \new Voice \bassoon
        >>
        \new StaffGroup <<
          \new Staff = trumpets \with {
            instrumentName = Trumpets
            shortInstrumentName = Tpts
          }
          <<
            \new Voice \trumpets
          >>
          \new Staff = horns \with {
            instrumentName = Horns
            shortInstrumentName = Hns
          }
          <<
            \new Voice \horns
          >>
          \new Staff = trombones \with {
            instrumentName = Trombones
            shortInstrumentName = Tbns
          }
          <<
            \clef bass
            \new Voice \trombones
          >>
        >>
        \new Staff = precussion \with {
          instrumentName = Percussion
          shortInstrumentName = Perc
        }
        <<
          \clef bass
          \new Voice \timpani
        >>
        \new StaffGroup <<
          \new Staff = violini \with {
            instrumentName = "Violin 1"
            shortInstrumentName = "Vl1"
          }
          <<
            \new Voice \violini
          >>
          \new Staff = violinii \with {
            instrumentName = "Violin 2"
            shortInstrumentName = "Vl2"
          }
          <<
            \new Voice \violinii
          >>
        >>
        \new Staff = viola \with {
          instrumentName = Viola
          shortInstrumentName = Vla
        }
        <<
          \clef alto
          \new Voice \viola
        >>
        \new Staff = cello \with {
          instrumentName = Cello
          shortInstrumentName = cell
        }
        <<
          \clef bass
          \new Voice \cello
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = Bass
        }
        <<
          \clef bass
          \new Voice \bass
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \clef "treble_8"
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Voice \melody
            \addlyrics \midiWords
          >>
        >>
        \new Staff = flute \with {
          instrumentName = Flute
          shortInstrumentName = Fl
          midiInstrument = flute
        }
        \new Voice \flute
        \new Staff = oboe \with {
          instrumentName = Oboe
          shortInstrumentName = Ob
          midiInstrument = oboe
        }
        \new Voice \oboe
        \new Staff = clarinets \with {
          instrumentName = Clarinets
          shortInstrumentName = Cls
          midiInstrument = clarinet
        }
        \new Voice \transpose c bes \clarinets
        \new Staff = bassoon \with {
          instrumentName = Bassoon
          shortInstrumentName = Bsn
          midiInstrument = bassoon
        }
        <<
          \clef bass
          \new Voice \bassoon
        >>
        \new StaffGroup <<
          \new Staff = trumpets \with {
            instrumentName = Trumpets
            shortInstrumentName = Tpts
            midiInstrument = trumpet
          }
          <<
            \new Voice \transpose c bes \trumpets
          >>
          \new Staff = horns \with {
            instrumentName = Horns
            shortInstrumentName = Hns
            midiInstrument = "french horn"
          }
          <<
            \new Voice \transpose c f, \horns
          >>
          \new Staff = trombones \with {
            instrumentName = Trombones
            shortInstrumentName = Tbns
            midiInstrument = trombone
          }
          <<
            \clef bass
            \new Voice \trombones
          >>
        >>
        \new Staff = precussion \with {
          instrumentName = Percussion
          shortInstrumentName = Perc
        }
        <<
          \clef bass
          \new Voice \timpani
        >>
        \new StaffGroup <<
          \new Staff = violini \with {
            instrumentName = "Violin 1"
            shortInstrumentName = "Vl1"
            midiInstrument = violin
          }
          <<
            \new Voice \violini
          >>
          \new Staff = violinii \with {
            instrumentName = "Violin 2"
            shortInstrumentName = "Vl2"
            midiInstrument = violin
          }
          <<
            \new Voice \violinii
          >>
        >>
        \new Staff = viola \with {
          instrumentName = Viola
          shortInstrumentName = Vla
          midiInstrument = viola
        }
        <<
          \clef alto
          \new Voice \viola
        >>
        \new Staff = cello \with {
          instrumentName = Cello
          shortInstrumentName = cell
          midiInstrument = cello
        }
        <<
          \clef bass
          \new Voice \cello
        >>
        \new Staff = bass \with {
          instrumentName = Bass
          shortInstrumentName = Bass
          midiInstrument = contrabass
        }
        <<
          \clef bass
          \new Voice \bass
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
