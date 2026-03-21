\version "2.25.35"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "St. John Passion"
  subtitle    = "№67 Ruht Wohl"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "J. S. Bach"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 3/4
  \partial 4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "122a" } s4 s2.*5
  \textMark \markup { \box "122b" } s2.*6
  \textMark \markup { \box "122c" } s2.
  \repeat volta 2 {
    s2.*6
    \textMark \markup { \box "122d" } s2.*7
    \textMark \markup { \box "123a" } s2.*6
    \textMark \markup { \box "123b" } s2.*6
    \textMark \markup { \box "123c" } s2.*6
    \textMark \markup { \box "124a" } s2.*5
    \textMark \markup { \box "124b" } s2.*6
    \textMark \markup { \box "124c" } s2.*5
    \textMark \markup { \box "124d" } s2.*6
    \textMark \markup { \box "125a" } s2.*4
    \textMark \markup { \box "125b" } s2.*6
    \textMark \markup { \box "125c" } s2.*6
    \textMark \markup { \box "126a" } s2.*5
    \textMark \markup { \box "126b" } s2.*5
    \textMark \markup { \box "126c" } s2.*6
    \textMark \markup { \box "127a" } s2.*6
    \textMark \markup { \box "127b" } s2.*5
    \textMark \markup { \box "127c" } s2.*5
    \textMark \markup { \box "128a" } s2.*6
    \textMark \markup { \box "128b" } s2.*4
    \alternative { {s2.} {s2.} }
  }
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

soprano = \relative {
  \global
  r4 | R2.*11 |
  r4 r g' | % 122c
  \repeat volta 2 {
    2 aes8(g) 2 g'4 | 8 f ees(d) ees(c) | c(b) a(g) d'4 |
    f,8(d) ees(g) c4~ | 8 bes aes(g) f(g16 aes) |
    ees8(c) d(f) bes4 | 2 des,8(c) | 2.~ | 2 4 | c'(d) ees | % 122d
    f4 aes,8 f g4~( | 8 c bes4) aes8(g) |
    \appoggiatura g4 f2 d'8(bes) | g2.~ | 2 c8(d16 ees) | % 123a
    d4(c) bes | a g8(fis) g4~ | 8(a) a4.(g8) |
    g2 ees'8(c) | g2 f'8(d) | g,2 g'4 | c,8 f e(d) c(bes) | % 123b
    aes4 g8(f) aes4 | g b c~ |
    c8 ees d(ees) f(d) | b4 a8(g) d'(b) | f2.~ | 2 c'8(g) | % 123c
    ees2.~ | 8 d ees(f) g(a) |
    b8 g a(b) c(ees) | des(c) b(c) aes'4~ | 8 ees d(c) b(c) | f,4 d2 | c r4 | % 124a
    R2.*6 |
    R2.*5 |
    r4\fermata r c'8(d16 ees) | \appoggiatura bes8 a4. bes8 c4~ | % 124d
    c8 d ees(f g4~ | 4 f) ees | d2 8(ees16 f) | \appoggiatura c8 b4. c8 d4~ |
    d8(ees) f(d) aes4~ | 4(g) f | ees4. f8 g aes | bes c des ees f des | % 125a
    ees4 r8 ges, f4~ | 8 bes g4. aes8 | 2 r4 | R2.*3 |
    r4 r g | 2 aes8(g) | 2 g'4 | 8 f ees(d) ees(c) | c(b) a(g) d'4 | f,8(d) ees(g) c4~ |
    c8 bes aes(g) f(g16 aes) | ees8(c) d(f) bes4 | 2 des,8(c) | c2.~ | 2 4 | % 126a
    c'4(d) ees | f aes,8 f g4~( | 8 c bes4) aes8(g) | \appoggiatura g4 f2 d'8(bes) g2.~ |
    g2 c8(d16 ees) | d4(c) bes | a g8(fis) g4~ | 8(a) 4.(g8) | 2 ees'8(c) | g2 f'8(d) |
    g,2 g'4 | c,8 f e(d) c(bes) | aes4 g8(f) aes4 | g b c~ | 8 ees d(ees) f(d) | b4 a8(g) d'(bes) | % 127a
    f2.~ | 2 c'8(g) | ees2.~ | 8 d ees(f) g(a) | b g a(b) c(ees) |
    des8(c) b(c) aes'4~ | 8 ees d(c) b(c) | f,4 d2 | c g'8(aes16 bes) | e,4. f8 g4~ |
    g8 aes bes(c des4~ | 4 c) bes | aes2 g4 | fis4. g8 a4~ | 8(bes) c(d) ees4~ | 4(d) c | % 128a
    bes2 8(c) | d ees f g aes4 | r8 bes, aes(f g4~ | 8) aes f4. ees8 |
    \alternative { { ees2 g4 | } { ees2 r4 | } }
  }
  \bar "|."
}

amzRsc    = \lyricmode { auch mich zur Ruh; }
bamc      = \lyricmode { bringt auch mich, }
bamzRsc   = \lyricmode { bringt auch mich zur Ruh; }
DGsebic   = \lyricmode { Das Grab, so euch be -- stim -- met ist, }
DGsesebic = \lyricmode { Das Grab, so euch, so euch be -- stim -- met ist, }
dHac      = \lyricmode { den Him -- mel auf, }
dinwnbc   = \lyricmode { die ich nun wei -- ter nicht be -- wei -- ne, }
ihGc      = \lyricmode { ihr hei -- li -- gen Ge -- bei -- ne, }
iufkNuc   = \lyricmode { ist, und fer -- ner kei -- ne Noth um -- schließt, }
mmdHac    = \lyricmode { macht mir den Him -- mel auf, }
mzRsc     = \lyricmode { mich zur Ruh; }
rwc       = \lyricmode { ruht wohl, }
Rwc       = \lyricmode { Ruht wohl, }
ubamc     = \lyricmode { und bringt auch mich, }
ubamzRc   = \lyricmode { und bringt auch mich zur Ruh, }
ubamzRp   = \lyricmode { und bringt auch mich zur Ruh. }
ubamzRsc  = \lyricmode { und bringt auch mich zur Ruh; }
ububamc   = \lyricmode { und bringt und bringt auch mich, }
ufkNuc    = \lyricmode { und fer -- ner kei -- ne Noth um -- schließt, }
usdHzp    = \lyricmode { und schließt die Höl -- le zu. }
zRc       = \lyricmode { zur Ruh, }

wordsSop = \lyricmode {
  Ruht
  \repeat volta 2 {
    wohl, \rwc \ihGc \dinwnbc \rwc \rwc \ubamc \bamzRsc
    \rwc \ubamc \amzRsc \rwc \rwc \ihGc \dinwnbc \rwc \rwc \ubamc
    \ubamzRc \ubamzRp \DGsebic \ufkNuc % 124
    \mmdHac \dHac \usdHzp \Rwc \rwc \ihGc \dinwnbc
    \rwc \rwc \ubamc \bamzRsc \rwc \ubamc \amzRsc \rwc \rwc
    \ihGc \dinwnbc \rwc \rwc \ubamc \ubamzRc \ubamzRp \DGsebic % 127
    \ufkNuc \mmdHac
    und schließt die Höl -- le
    \alternative {
      { zu. Ruht }
      { zu. }
    }
  }
}

MamzRsc    = \lyricmode { "\nauch " "mich " "zur " "Ruh; " }
Mbamc      = \lyricmode { "\nbringt " "auch " "mich, " }
MbamzRsc   = \lyricmode { "\nbringt " "auch " "mich " "zur " "Ruh; " }
MDGsebic   = \lyricmode { "\nDas " "Grab, " "so " "euch " be stim "met " "ist, " }
MDGsesebic = \lyricmode { "\nDas " "Grab, " "so " "euch, " "so " "euch " be stim "met " "ist, " }
MdHac      = \lyricmode { "\nden " Him "mel " "auf, " }
Mdinwnbc   = \lyricmode { "\ndie " "ich " "nun " wei "ter " "nicht " be wei "ne, " }
MihGc      = \lyricmode { "\nihr " hei li "gen " Ge bei "ne, " }
MiufkNuc   = \lyricmode { "\nist, " "und " fer "ner " kei "ne " "Noth " um "schließt, " }
MmmdHac    = \lyricmode { "\nmacht " "mir " "den " Him "mel " "auf, " }
MmzRsc     = \lyricmode { "\nmich " "zur " "Ruh; " }
Mrwc       = \lyricmode { "\nruht " "wohl, " }
MRwc       = \lyricmode { "\nRuht " "wohl, " }
Mubamc     = \lyricmode { "\nund " "bringt " "auch " "mich, " }
MubamzRc   = \lyricmode { "\nund " "bringt " "auch " "mich " "zur " "Ruh, " }
MubamzRp   = \lyricmode { "\nund " "bringt " "auch " "mich " "zur " "Ruh. " }
MubamzRsc  = \lyricmode { "\nund " "bringt " "auch " "mich " "zur " "Ruh; " }
Mububamc   = \lyricmode { "\nund " "bringt " "und " "bringt " "auch " "mich, " }
MufkNuc    = \lyricmode { "\nund " fer "ner " kei "ne " "Noth " um "schließt, " }
MusdHzp    = \lyricmode { "\nund " "schließt " "die " Höl "le " "zu. " }
MzRc       = \lyricmode { "zur " "Ruh, " }

wordsSopMidi = \lyricmode {
  "\nRuht "
  \repeat volta 2 {
    "wohl, " \Mrwc \MihGc \Mdinwnbc \Mrwc \Mrwc \Mubamc \MbamzRsc
    \Mrwc \Mubamc \MamzRsc \Mrwc \Mrwc \MihGc \Mdinwnbc \Mrwc \Mrwc \Mubamc
    \MubamzRc \MubamzRp \MDGsebic \MufkNuc % 124
    \MmmdHac \MdHac \MusdHzp \MRwc \Mrwc \MihGc \Mdinwnbc
    \Mrwc \Mrwc \Mubamc \MbamzRsc \Mrwc \Mubamc \MamzRsc \Mrwc \Mrwc
    \MihGc \Mdinwnbc \Mrwc \Mrwc \Mubamc \MubamzRc \MubamzRp \MDGsebic % 127
    \MufkNuc \MmmdHac
    "\nund " "schließt " "die " Höl "le "
    \alternative {
      { "zu. " "\nRuht " }
      { "zu. " }
    }
  }
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
}

alto = \relative {
  \global
  r4 R2.*11 |
  r4 r ees' | % 122c
  \repeat volta 2 {
    d2 f8(ees) | 2 b'4 | c8 ees, aes4 a | g d d |
    c4. d8 ees c | aes'4(f) c |
    bes4 4 d | ees2 bes4 | aes2 c4 | g'(aes) bes | % 122d
    aes2.~ | 4 f8 d bes4~( | 8 c d4) ees |
    d2 f4 | f(ees) d | ees2 c4 | d2 4 | ees(d8 c) bes4 | ees d2 | % 123a
    d2 c4 | d2 4 | ees2 e4 | f8 aes g(f) g(e) | f4 c f | d f g~ |
    g8 ees aes4 f | g d g | b,2.~ | 2 ees8(f16 g) | c,2.~ | 2 g'4 |
    d8(ees) f(g) g ees | f2 c4 | b4. d8 g ees | c4 b2 | g r4 | % 124a
    R2.*6 |
    R2.*5 |
    r4\fermata r g' | f2 4 | ees4. bes'8 a bes | c4(a) f | 2 4 | g2 4 |
    f2 b,8(c) | d4(b) g | c2 c'4 | bes4. 8 8 8 | % 125a
    bes4 r8 ees, des4~ | 8 8 ees4 4 | 2 r4 | R2.*3 |
    r4 r ees | d2 f8(ees) | 2 b'4 | c8 ees, aes4 a | g d d | c4. d8 ees c |
    aes'4(f) c | bes4 4 d | ees2 bes4 | aes2 c4 | g'(aes) bes | % 126a
    aes2.~ | 4 f8 d bes4~( | 8 c d4) ees | d2 f4 | 4(ees) d |
    ees2 c4 | d2 4 | ees(d8 c) bes4 | ees d2 | d c4 | d2 4 |
    ees2 e4 | f8 aes g(f) g(e) | f4 c f | d f g~ | 8 ees aes4 f | g d g | % 127a
    b,2.~ | 2 ees16(f g8) | c,2.~ | 2 g'4 | d8(ees) f(g) g ees |
    f2 c4 | b4. d8 g ees | c4 b2 | g e'8(f16 g) | c,4. d8 e4~ |
    e8 f g(aes bes4~ | 4 aes) g | f2 c4 | d4. e8 fis4~ | 8(g) a(bes) c4~ | 4(bes) a4 | % 128a
    g2 4 | f8 g aes bes c4 | r8 g f(d) bes(d) | ees(c d4.) ees8 |
    \alternative { { ees2 4 } { ees2 r4 } }
  }
}

wordsAlto = \lyricmode {
  Ruht
  \repeat volta 2 {
    wohl, \rwc \ihGc \dinwnbc \rwc \rwc \ubamc \bamzRsc
    \rwc \rwc \rwc \ubamzRsc \rwc \rwc \ihGc \dinwnbc \rwc \rwc \ubamzRc
    \zRc \ubamzRp \DGsesebic \ufkNuc % 124
    \mmdHac \usdHzp \Rwc \rwc \ihGc \dinwnbc
    \rwc \rwc \ubamc \bamzRsc \rwc \rwc \rwc \ubamzRsc \rwc \rwc
    \ihGc \dinwnbc \rwc \rwc \ubamzRc \zRc \ubamzRp \DGsebic % 127
    \ufkNuc \mmdHac
    und schließt die Höl -- lu
    \alternative { { zu. Ruht } { zu. } }
  }
}

wordsAltoMidi = \lyricmode {
  "\nRuht "
  \repeat volta 2 {
    "wohl, " \Mrwc \MihGc \Mdinwnbc \Mrwc \Mrwc \Mubamc \MbamzRsc
    \Mrwc \Mrwc \Mrwc \MubamzRsc \Mrwc \Mrwc \MihGc \Mdinwnbc \Mrwc \Mrwc \MubamzRc
    \MzRc \MubamzRp \MDGsesebic \MufkNuc % 124
    \MmmdHac \MusdHzp \MRwc \Mrwc \MihGc \Mdinwnbc
    \Mrwc \Mrwc \Mubamc \MbamzRsc \Mrwc \Mrwc \Mrwc \MubamzRsc \Mrwc \Mrwc
    \MihGc \Mdinwnbc \Mrwc \Mrwc \MubamzRc \MzRc \MubamzRp \MDGsebic % 127
    \MufkNuc \MmmdHac
    "\nund " "schließt " "die " Höl "lu "
    \alternative { { "zu. " "\nRuht " } { "zu. " } }
  }
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global
  r4 R2.*11 |
  r4 r c' | % 122c
  \repeat volta 2 {
    d2 4 | c2 f4 | ees8 8 c4 a | d b g | 8 b c4. ees8 | f4(c) aes |
    f4 f f | bes2 g4 | ees2 aes4 | g2 e'4 | f2 c4 | % 122d
    bes4 8 d ees4~ | 8 ees, f4 bes |
    bes2 4 | d g,2 | c2 g4 | a2 bes4 | c(bes8 a) g4 | c fis,2 | % 123a
    b2 g4 | 2 4 | c2 4 | 8 des g,4 c | c aes c | b d c~ |
    c8 8 f4 c | d b b | d,2.~ | 2 c4 | g'2.~ | g~ |
    g8 b c(d) c(g) | aes4(f') ees | d8 ees b4 g | c g(f) | ees2 r4 | % 124a
    R2.*6 |
    R2.*5 |
    r4\fermata r ees' | c4. bes8 a g | a(bes c d ees4~ | 8 d c bes) c4 | bes2 4 | d4. c8 b a |
    b8(c d ees f4~ | 8 ees d c) d4 | g,2 g'4 | 4. 8 8 8 | % 125a
    g4 r8 aes,8 4~ | 8 bes8 4 4 | c2 r4 | R2.*3 |
    r4 r c | d2 4 | c2 f4 | ees8 8 c4 a | d b g | 8 b c4. ees8 |
    f4(c) aes | f f f | bes2 g4 | ees2 aes4 | g2 e'4 | % 126a
    f2 c4 | bes4 8 d ees4~ | 8 ees, f4 bes | 2 4 | d g,2 |
    c2 g4 | a2 bes4 | c(bes8 a) g4 | c fis,2 | b2 g4 | 2 4 |
    c2 4 | 8 des g,4 c | c aes c | b d c~ | 8 8 f4 c | d b b | % 127a
    d,2.~ | 2 c4 | g'2.~ | 2.~ | 8 b c(d) c(g) |
    aes4(f') ees | d8 ees b4 g | c g(f) | ees2 c'4 | bes2 8(c16 des) |
    g,2 8(aes16 bes) | e,4(c) c' | f,(f') ees | d2 c8(d16 ees) | a,2 8(bes16 c) | fis,4(d) d' | % 128a
    g,4(bes) d | f2 ees4 | d8(bes) c(d) ees f | g ees bes4 4 |
    \alternative { { ees,2 c'4 } { ees,2 r4 } }
  }
}

wordsTenor = \lyricmode {
  Ruht
  \repeat volta 2 {
    wohl, \rwc \ihGc \dinwnbc \rwc \rwc \rwc \ubamc \bamc \amzRsc
    \rwc \rwc \rwc \ubamzRsc \rwc \rwc \ihGc \dinwnbc \rwc \rwc % 123
    \ubamzRc \ubamzRp \DGsebic \ufkNuc
    \mmdHac \usdHzp \Rwc \rwc \ihGc \dinwnbc
    \rwc \rwc \ububamc \bamc \amzRsc \rwc \rwc \rwc \ubamzRsc \rwc \rwc % 126
    \ihGc \dinwnbc \rwc \rwc \ubamzRc \ubamzRp \DGsebic
    \ufkNuc \mmdHac
    und schließt die Höl le
    \alternative { { zu. Ruht } { zu. } }
  }
}

wordsTenorMidi = \lyricmode {
  "\nRuht "
  \repeat volta 2 {
    "wohl, " \Mrwc \MihGc \Mdinwnbc \Mrwc \Mrwc \Mrwc \Mubamc \Mbamc \MamzRsc
    \Mrwc \Mrwc \Mrwc \MubamzRsc \Mrwc \Mrwc \MihGc \Mdinwnbc \Mrwc \Mrwc % 123
    \MubamzRc \MubamzRp \MDGsebic \MufkNuc
    \MmmdHac \MusdHzp \MRwc \Mrwc \MihGc \Mdinwnbc
    \Mrwc \Mrwc \Mububamc \Mbamc \MamzRsc \Mrwc \Mrwc \Mrwc \MubamzRsc \Mrwc \Mrwc % 126
    \MihGc \Mdinwnbc \Mrwc \Mrwc \MubamzRc \MubamzRp \MDGsebic
    \MufkNuc \MmmdHac
    "\nund " "schließt " "die " Höl "le "
    \alternative { { "zu. " "\nRuht " } { "zu. " } }
  }
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

bass = \relative {
  \global
  r4 R2.*11 |
  r4 r c | % 122c
  \repeat volta 2 {
    b2 4 | c2 d4 | ees8 c f4 fis | g g, b |
    c8 g' c bes aes g | f4.(g8 a4 |
    aes8 bes) aes(g) aes(f) | g2 ees4 | aes4(g) f | e2 c4 | f2 ees4 | % 122d
    d4 bes'8 bes, ees4 | aes(f) ees |
    bes2 4 | b2 4 | c2 c'4 | fis,2 g4 | c,(d) ees | c4 d2 | % 123a
    g,2 c4 b2 4 | c2 bes4 | aes8 bes c4 c | f f, f'~ | f ees8 d ees(c |
    aes'8) g f4 aes | g2 4 | r4. g8(d b) | g2.~ | 4. c'8(g ees) | c b c(d) ees(f) |
    g2 c,4 | f,2 f'4 | g2 4 | aes8(f) g2 | c, r4 | % 124a
    R2.*6 |
    R2.*5 |
    r4\fermata r c' | ees,2 4 | c2 4 | a2 4 | bes2 bes'4 | f2 4 |
    d2 4 | b2 4 | c8 b c d ees f | g aes bes c des bes | % 125a
    c4 r8 c, des4~ | 8 bes ees4 4 | a,2 r4 | R2.*3 |
    r4 r c | b2 4 | c2 d4 | ees8 c f4 fis | g g, b | c8 g' c bes aes g |
    f4.(g8 aes4~ | 8 bes) aes(g) aes(f) | g2 ees4 | aes(g) f | e2 c4 | % 126a
    f2 ees4 | d bes'8 bes, ees4 | aes4(f) ees | bes2 4 | b2 4 |
    c2 c'4 | fis,2 g4 | c,(d) ees | c d2 | g, c4 | b2 4 |
    c2 bes4 | aes8 bes c4 c | f f, f'~ | f ees8 d ees(c | aes') g f4 aes | g2 4 | % 127a
    r4. g8(d b) | g2.~ | 4. c'8(g ees) | c b c(d) ees(f) | g2 c,4 |
    f,2 f'4 | g2 4 | aes8(f) g2 | c, r4 | R2. |
    R2.*6 | % 128a
    R2.*4 |
    \alternative { { r4 r c } { R2. } }
  }
}

wordsBass = \lyricmode {
  Ruht
  \repeat volta 2 {
    wohl, \rwc \ihGc \dinwnbc \rwc \rwc \rwc \ubamc \bamc \mzRsc
    \rwc \rwc \rwc \ubamzRsc \rwc \rwc \ihGc \dinwnbc \rwc \rwc \ubamc
    \zRc \ubamzRp \DGsebic \ufkNuc % 124
    \mmdHac \mmdHac \usdHzp \Rwc \rwc \ihGc \dinwnbc
    \rwc \rwc \rwc \ubamc \bamc \mzRsc \rwc \rwc \rwc \ubamzRsc \rwc \rwc
    \ihGc \dinwnbc \rwc \rwc \ubamzRc \ubamzRp % 127
    \alternative { {} { Ruht } }
  }
}

wordsBassMidi = \lyricmode {
  "\nRuht "
  \repeat volta 2 {
    "wohl, " \Mrwc \MihGc \Mdinwnbc \Mrwc \Mrwc \Mrwc \Mubamc \Mbamc \MmzRsc
    \Mrwc \Mrwc \Mrwc \MubamzRsc \Mrwc \Mrwc \MihGc \Mdinwnbc \Mrwc \Mrwc \Mubamc
    \MzRc \MubamzRp \MDGsebic \MufkNuc % 124
    \MmmdHac \MmmdHac \MusdHzp \MRwc \Mrwc \MihGc \Mdinwnbc
    \Mrwc \Mrwc \Mrwc \Mubamc \Mbamc \MmzRsc \Mrwc \Mrwc \Mrwc \MubamzRsc \Mrwc \Mrwc
    \MihGc \Mdinwnbc \Mrwc \Mrwc \MubamzRc \MubamzRp % 127
    \alternative { {} { "\nRuht " } }
  }
}

pianoRHone = \relative {
  \global
  <g' c ees>8(<ees g c>) | <d g>2 <aes' d f>8(<f d'>) |
  <c ees g>2 \vo g''8(ees) | c8 aes'(g f ees d) | c(b a d b g) |
  f8(d' b g f ees) |
  <d f>4. c'8(g ees) | 8(c' g f <c ees> <b d>) | ees4. c'8(b c) | % 122b
  des8(c) b(c) aes'4~ | 8(g) fis(g) ees(bes) | c(aes) f(d c' b) |
  \ov <ees, g c>2 <g c ees>8(<ees g c>) | % 122c
  \repeat volta 2 {
    <d g>2 <aes' d f>8(<g d'>) | % 122c
    <c, ees g>2 \vo g''8(ees) | c aes'(g f ees d) | c(b a g) s4 |
    <c, f>8(<b d>) <c ees>(<d g>) <ees c'>4~ | <f aes c>(<c f aes> <a c f>) |
    ees'8(c) d(f) bes4 | \ov <bes, ees bes'>2 <bes' ees g>8(<g ees'>) | % 122d
    <ees aes c>2 <c' f aes>8(<aes c f>) | <g bes c>2 \vo <g' bes>8(<e g>) |
    c4(d ees | f) <f, aes>8(f) <ees g>4~ |
    q8 <c c'>(<d bes'> <g ees'> <f d'> <g ees'>) |
    f8(a bes d) <d f>4~ | f8 d(b g f\mordent ees16 d) | % 123a
    ees8(g c d) ees4 | d(c bes) | a(g8 fis g4)~ | 8(a) <fis a>4.\mordent g8 |
    \ov <b, d g>2 <g' c ees>8(<ees g c>) | <d g>2 <aes' d f>8(<f d'>) | % 123b
    <c ees g>2 <c' f>8~(<g c e>) | \vo c8 f(e d c bes) |
    bes8(aes g f) \ov <c f a>4 | <b d g> <d g b> <c g' c>~ |
    q8 <ees c' ees> \vo d'(ees) f(d) | \ov <d, g b>4 r8 s4. | % 123c
    \vo r8 d'(b g f ees) | f4. c'8(g ees) | 8(c' g f ees d) | \ov <g, c ees>2.~ |
    <c ees>8 <ees' g>(<d f> <b d> <g c ees> <ees  g c>) | % 124a
    \vo des'8(c b c) \ov <aes aes'>4~ |
    8 <g g'>(<fis fis'> <g g'> <g ees'> [ <ees b'> ] ) |
    \vo <ees c'>8(<f aes>) f(d) c'(b) \ov <ees, g c>2 <g c ees>8(<ees g c>) |
    <d g>2 <aes' d f>8(<f aes d>) | <ees g>2 \vo g'8(ees) | % 124b
    c8 aes'(g f ees d) | c(b a d b g) | f d' b g f ees | f4. c'8(g ees) |
    ees8(c' g f ees d) | ees4. c'8(b c) | des(c) b(c) aes'4~ | % 124c
    aes8(g) fis(g) ees( [ b ] ) | c8(aes) f(d) c'(b) |
    \ov <ees, g c>2\fermata r4 | <c f a>2.~ | q | s2. | % 124d
    \vo r8 d'_(bes f d bes | \vt g2.)~ |
    g2 bes8(c | d2 g,4) | \vo r8 ees''(c g ees c) | \ov <g bes ees>2.~ | % 125a
    \vo ees'4 s2 | aes8(<f bes des>) <g bes>4.\mordent( <ees aes>8) \ov | % 125b
    <c ees aes>2 <g' c ees>8(<ees g c>) | <d g>2 <aes' d f>8(<f aes d>) |
    <c ees g>2 \vo g''8(ees) | c aes'(g f ees d) |
    c8(b a g) \ov <g c ees>8( [ <ees g c> ] ) | <d g>2 <aes' d f>8(<g d'>) | % 125c
    <c, ees g>2 \vo g''8(ees) | c8 aes'(g f ees d) | c(b a g) <g, d' f>4 |
    <c f>8(<b d>) <c ees>(<d g>) <ees c'>4 |
    \ov <f aes c>4(<c f aes> <aes c f>) | \vo ees'8(c) d(f) bes4 | % 126a
    \ov <bes, ees bes'>2 <bes' ees g>8~(<g bes ees>) |
    <ees aes c>2 <c' f a>8(<aes c f>) | <g bes c>2 \vo <g' bes>8(<e g>) |
    c4(d ees) | f <f, a>8(f) <ees g>4~ | % 126b
    q8 <c c'>(<d bes'> <g ees'> <f d'> <g ees'>) |
    f8(a bes d) <d f>4~ | f8 d(b g f [ ees16 d ] ) |
    ees8(g c d) ees4 | d(c bes) | a(g8 fis) g4~ | % 126c
    8 a <fis a>4.\mordent g8 | \ov <b, d g>2 <g' c ees>8(<ees g c>) |
    <d g>2 <aes' d f>8(<f aes d>) |
    <c ees g>2 <c' e g>8(<g c e>) | \vo c8 f(e d c bes) | % 127a
    bes8(aes g f) \ov <c f aes>4 | <b d g>(<d f b> <c g' c>~ |
    <g' c>8 <ees ees'>) \vo d'8(ees f d | \ov <d, g b>4) r8 d'(b g |
    d8 \lh b g2~) | 2. | \rh \vo ees'8(c' g f ees d) | % 127b
    \ov <g, c ees>2.~ | <c ees>8 <ees' g>(<d f> <b d> <g c ees> <ees g c>) |
    \vo des'8(c b <g c>) <aes aes'>4~ | % 127c
    8(<g g'> <fis fis'> <g g'>) <g b ees>(<ees b'>) |
    \vo <ees c'>8(<f aes>) f(d) c'(b) |
    \ov <ees, g c>2 r4 | <c e>4. <d f>8 <e g>4~ |
    q8(<f aes> <g bes> <aes c>) <bes des>4~ | q <aes c> <g bes> | % 128a
    \vo aes2 g4 | <a, fis'>4.(<e' g>8 <fis a>4~ |
    q8 <g bes> <a c> <bes d> <c ees>4~ | q4 <bes d> <a c> |
    bes2) 8 c | <bes d>2(<f c'>4 | <f bes> <f aes> g~ | % 128b
    <ees g>8 <c aes'>) <d f>4.(ees8) |
    \alternative {
      {ees2 <g c ees>8(<ees g c>) |}
      {ees2 r4 |}
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  s4 | s2. | s2 <f' b>4 | g <aes c> <a c> |
  <d, g>4.(g8 f ees) | d8^(\lh b g4) \rh b |
  <b d>4. ees8 8(d) | c^(\lh aes g4) \rh g | <g c>2 <c g'>4 | % 122b
  <f aes>4 4 <c' ees> | <b d> q <f g> | ees s <d g> |
  s2. | % 122c
  \repeat volta 2 {
    s2. | s2 <f b>4 | <g c> <aes c> <a c> | <d, g> <b d> <g d' f> |
    g2 c4 | s2. |
    <f, bes>4 4 <d' f> | s2.*2 | s2 bes'4 | aes4 2~ | 4 bes,8 d bes4~ | % 122d
    bes8 \lh ees, f4 ees \rh |
    d'4(d f) | g(g d) | c <e g> <g c> | <d a'>2 <d g>4 | % 123a
    <c ees> <bes d>8 <a c> <g bes>4 | <c ees> d2 |
    s2.*3 | <f aes>4 g8 f g e | <c f>4 <aes c> s | s2. | % 123b
    s4 <f aes> <f c'> | s2. | s2 <b d>4 | 4. ees8 8 d | % 123c
    c8^(\lh aes g4) \rh <g c> | s2. |
    s2. | <<{\vf aes'4. s8} \new Voice {\vt f8(ees d <ees g>)}>> \vt s4 | % 124a
    s2. | s4 b <d g> | s2. |
    s2. | s2 <f b>4 | <g c> <aes c> <a c> | <d, g>4.(g8 f ees) | % 124b
    d8^(\lh b g4) \rh <b d> | q4. ees8 8(d) |
    c8^(\lh aes g4) \rh <g c> | 2 <c g'>4 | <f aes>4 4 <c' ees> | % 124c
    <b d> q <f b> | ees s <d g> |
    s2.*3 | \vo <c f c'>2.( | \vt <b d>2.) | \vo <b d g>2.~ | % 124d
    q2 <f' aes>4~( |4 g <d f> | \vt <g, c ees>) s2 | s2. | % 125a
    g8 c(des ees f g) | s4 ees(des) | s2.*2 | s2 <f b>4 | <g c> <aes c> <a c> |
    <d, g>2 s4 | s2. | s2 <f b>4 | <g c> <aes c> <a c> | <d, g> <b d> s | g2 c4 |
    s2. | <f, bes>4 4 <d' f> | s2.*2 | s2 c'4 | % 126a
    aes4 2 | 4 bes,8 d bes4~ | 8^(\lh ees, f4 ees) \rh d'4 4 f | g g d |
    c4 <ees g> <g c> | <d a'>2 <d g>4 | <c ees> <b d>8 <a c> <g bes>4 | <c ees> d2 | s2.*2 |
    s2. | <f aes>4 g8 f g e | <c f>4 <aes c> s | s2. | s4 aes' f | s2. | % 127a
    \vo r8 d'(b g f ees) | f4. c'8(g ees) | \vt c8^( \lh aes g4) \rh <g c> | s2.*2 |
    <<{\vf aes'4. s} \new Voice {\vt f8(ees d ees) s4}>> | s2. | c4 b <d g> | s2.*2 |
    s2.*2 | <<{\vf c2.} \new Voice {\vt f4-.(f-. ees-.)} >> | % 128a
    d4-.(d-. d-.) | a-.(a-. a-.) | fis'-.(4-. 4-.) |
    g4-.(g-. g-.) | f-.(f-. f-.) | d(bes ees)~ | \once\hideNotes ees4 s2 |
    \alternative { {s2.} {s2.} }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4 | s2.*25 |
}

pianoLHone = \relative {
  \global
  <c, c'>4 | <b b'>2 4 | <c c'>2 <d d'>4 | <ees ees'> <f f'> <fis fis'> |
  <g g'>2.~ | \vt 4. g'8(d b) | \ov
  q2.~ | \vt 4 s8 c(g ees) \ov | <c c'>2 <ees ees'>4 | <f f'>4(4 4) | % 122b
  <g g'>4(4 4) | <aes aes'>8(<f f'> <g g'>4) <g, g'> |
  <c c'>2 4 | % 122c
  \repeat volta 2 {
    <b b'>2 4 | <c c'>2 <d d'>4 | <ees ees'> <f f'> <fis fis'> |
    <g g'>4 <g, g'> <b b'> | <c c'>8(g' c bes aes g) | <f f'>4. g8 aes4~ |
    aes8 bes(aes g aes f) | g2 <ees ees'>4 <aes aes'>(<g g'> <f f'>) | % 122d
    <e e'>2 <c c'>4 | <f f'> \vo f''(c | bes) \ov bes, ees |
    \vt aes,(f ees) | \vo
    bes''4 4 4 | g g g | g c c | \ov <fis,, fis'>2 <g g'>4 | % 123a
    <c, c'>(<d d'> <ees ees'>) | <c c'>4 <d d'>2 |
    <g, g'>2 <c c'>4 | <b b'>2 4 | <c c'>2 <bes bes'>4 | % 123b
    <aes aes'>8 <bes bes'> <c c'>4 <c, c'> | <f f'>2 <f' f'>4~ |
    q4 <ees ees'>8(<d d'> <ees ees'> <c c'>) |
    <aes' aes'>8(<g g'> <f f'>4 <aes aes'>) | <g g'>2.~ | 4. \vt g'8(d b | % 123c
    g2.)~ | 4.(c8 g ees) | \ov <c c'>8(g' q <bes, bes'> <a a'> <f f'> ) |
    <g' g'>2 <c, c'>4 | <f f'> q \vo f''8 ees | <b d>2 g4 \ov | % 124a
    <aes, aes'>8 <f f'> <g g'>2 | <c, c'> <c' c'>4 |
    <b b'>2 4 | <c c'>2 <d, d'>4 | <ees ees'> <f f'> <fis fis'> | % 124b
    <g g'>2.~ | 4. \vo s8 g'4 | \ov <g, g'>2.~ |
    q4. c8(g ees) | <c c'>2 <ees ees'>4 | <f f'>(q q) | <g g'>(q q) | % 124c
    <aes aes'>8(<f f'> <g g'>4) <g, g'> |
    <c, c'>2\fermata r4 | <ees' ees'>4-.(q-. q-.) | <c c'>-.(q-. q-.) | % 124d
    <a a'>4-.(q-. q-.) <bes bes'>-.(q-. q-.) | <f' f'>-. q-. q-. |
    <d d'>4-.(q-. q-.) | <b b'>-.(q-. q-.) | % 125a
    <c c'>-.(q-. q-.) | <g g'>-.(q-. q-.) |
    <c c'>4(<aes aes'>) <des des'> | <bes bes'> <ees ees'> <ees, ees'> | % 125b
    <aes aes'>2 <c c'>4 | <b b'>2 4 | <c c'>2 <d d'>4 |
    <ees ees'> <f f'> <fis fis'> |
    <g g'>2 <c, c'>4 | <b b'>2 4 | <c c'>2 <d d'>4 | % 125c
    <ees ees'> <f f'> <fis fis'> | <g g'> <g, g'> <b b'> |
    <c c'>8(g' c bes aes g) |
    <f f'>4.(g8 aes4)~ | 8 bes(aes g aes f) | g2 <ees ees'>4 | % 126a
    <aes aes'>(<g g'> <f f'>) | <e e'>2 <c c'>4 |
    <f f'>4 \vo f'' c | bes \ov bes,(ees) \vt aes,(f ees) \vo | % 126b
    bes''4 4 4 | g g g |
    g4 c c | \ov <fis,, fis'>2 <g g'>4 | <c, c'>4(<d d'>) <ees ees'> | % 126c
    <c c'>4 <d d'>2 | <g, g'> <c c'>4 | <b b'>2 4 |
    <c c'>2 <bes bes'>4 | <aes aes'>8(<bes bes'>) <ees ees'>4 <c, c'> | % 127a
    <f f'>2 <f' f'>4~ | q <ees ees'>8(<d d'> <ees ees'> <c c'>) |
    <aes' aes'>8(<g g'> <f f'>4) <aes aes'> | <g g'>2.~ |
    \vt q4. g'8 d b | g2.~ | 4.(c8 g ees) \ov | % 127b
    <c c'>8(g' q <d d'> <ees ees'> <f f'> | <g g'>2) <c, c'>4 |
    <f f'>4_(q \vt <f' c'>) | g(g <g, g'>) | % 127c
    \ov <aes aes'>8(<f f'>) <g g'>2 | <c, c'>2 c''4 | bes-.(4-. 4-.) |
    g4-.(g-. g-.) | ees'-.(4-. 4-.) | r8 aes,(f c aes f) | % 128a
    <c c'>2.~ | 4 r r | R2. |
    r8 d''(bes g d bes) | <aes aes'>2.~ | 2 r4 | aes' bes2 | % 128b
    \alternative { {ees,2 <c, c'>4 } {ees'2 r4} }
  }
}

pianoLHtwo = \relative {
  \global \vt
  s4 s2.*11 |
  s2. | % 122c
  \repeat volta 2 {
    s2.*6 |
    s2.*4 | s4 f(ees | d) s2 | s2. | % 122d
    bes4(4 4) | b(b b) | c(c c) | s2.*3 | % 123a
    s2.*6 |
    s2. s4. \rh d''8(b g | d \lh b g2)~ | 2. | s2.*2 |
    s2. | s2 \vt <f c'>4 | g4(g g,) | s2.*2 | % 124a
    s2.*4 | s4. g'8(d b) | s2. |
    s2.*5 |
    s2.*6 |
    s2.*16 | % 125
    s2.*5 | % 126a
    s4 f' ees | d s2 | s2. | bes4(4 4) | b(b b) |
    c4 c c | s2.*5 |
    s2.*6 | % 127a
    s2 \rh <b' d>4 | q4. ees8 8 d | \lh s2.*3 |
    s2 f8(ees | <b d>2) s4 | s2.*3 |
    s2.*6 | % 128a
    s2.*4 |
    \alternative { {s2.} {s2.} }
  }
}

#(set-global-staff-size 16)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-sop
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-alto
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-tenor
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single-bass
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sop
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-alto
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-tenor
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-bass
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
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
      \context { \Lyrics
        autoExtenders = ##t
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \paper {
    output-suffix = midi-alto
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \paper {
    output-suffix = midi-tenor
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
%            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \paper {
    output-suffix = midi-bass
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
%            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
