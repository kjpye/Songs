\version "2.25.28"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Dido's lament"
  subtitle    = "With Drooping Wings"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "H. Purcell"
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
  \key f \major
  \time 4/4
  \partial 2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  s2 | s1*3 |
  \tempo "Andante maestoso" 4=100 s1*13 |
  s1*9 |
  \tempo "Larghetto." 4 = 90 s2 | s1.*44 |
  \tempo Andante 4=72
% s1 |
% \repeat volta 2 {
%   s1*28 |
%   \alternative { { s1 | } { s1 | } }
% }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "82a" s2 | s1*3 |
  \textMark \markup\box "82b" s1*5 |
  \textMark \markup\box "83a" s1*4 |
  \textMark \markup\box "83b" s1*4 |
  \textMark \markup\box "84a" s1*4 |
  \textMark \markup\box "84b" s1*5 | 
  \textMark \markup\box "84c" s2 s1.*6 |
  \textMark \markup\box "85a" s1.*6 |
  \textMark \markup\box "85b" s1.*7 |
  \textMark \markup\box "85c" s1.*7 |
  \textMark \markup\box "86a" s1.*6 |
  \textMark \markup\box "86b" s1.*6 |
  \textMark \markup\box "86c" s1.*6 |
  \textMark \markup\box "87a" s1 |
  \repeat volta 2 {
    s1*4
    \textMark \markup\box "87b" s1*4
    \textMark \markup\box "88a" s1*5
    \textMark \markup\box "88b" s1*6
    \textMark \markup\box "89a" s1*5
    \textMark \markup\box "89b" s1*4
    \alternative {{s1}{s1}}
  }
}

dynamicsSopSolo = {
  s4. s8\p | s1*3 |
}

sopranoSolo = \relative {
  \global
  r4 r8 a'^\markup "DIDO." | 8 d16(a) 4. 8 bes e, | f4 r f8(e4) a8 | d, bes'16(a) f8 e16(d) 2 \bar "|." |
  \key bes \major R1*13 |
  \key c \major r8 c'8 8. b16 c4. 8 | c(bes4.~16 a bes g aes8.) bes16 | % 84a
  aes4. 8 r4 aes8 8 | 8(g4) 8 r4 g8 f |
  g4 r r g8 8 | g(f) r f f4(e8) f | e e r4 ees4. 8 | % 84b
  d4. fis8 8(g) g(cis,) | d2 r \bar "|." \break |
  \key bes \major \time 3/2 \partial 2 r2 | R1.*4 | g2 a bes | 2->(a) b | % 84c
  c4.->(bes8 a4. g8 fis4.) g8 | fis1 d'4. ees8 | d4.(c8 bes2) a | % 85a
  bes1 ees2-> 4(a,) 2 d | 8(g,) 4 a2 g |
  a1 r2 | R1. | g2 a bes | 2->(a) b | c4.->(bes8 a4. g8 fis4.) g8 | % 85b
  fis1 d'4. ees8 | d4.(c8 bes2) a |
  bes1 ees2-> | 4(a,) 2 d | 8(g,) 4 a2 g | a1 r2 | r r r4 d | % 85c
  4. 8 2 r | r r r4 d |
  d4. 8 2 r | r r d | c(bes) c4(a) | bes4.(c8 2.) d4 | d1 r4 d | g4.-> 8 2. c,4 | % 86a
  d8(ees f2 ees4 d2) | c4(bes) 2 a4(g) | g1. | R1.*3 | % 86b
  R1.*6 \bar "|." | \time 4/4
% № 38 Dido's Lament
  R1 |
  \repeat volta 2 {
    \alternative { {} {} }
  }
}

wordsSopSolo = \lyricmode {
  But death, a -- las! I can -- not shun;
  Death must come when he is gone.

  Thy hand, Be -- lin -- da;
  dark -- ness shades me:
  On thy bo -- som let me rest:
  More I would, but Death in -- vades me:
  Death is now a wel -- come guest.

                                % 37 Song
  When I am laid, am laid __ in earth,
  may my wrongs cre -- ate
  No trou -- ble, no trou -- ble in thy breast;
  When I am laid, am laid __ in earth,
  may my wrongs cre -- ate
  No trou -- ble, no trou -- ble in thy breast;
  Re -- mem -- ber me,
  re -- mem -- ber me,
  but ah! for -- get __ my fate.
  Re -- mem -- ber me,
  but ah! __ for -- get my fate.
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2 | s1*3 |
  s1\f | s1*2 | s2 s\ff | s1*2 | s4 s2.\p | s1*2 | s2. s4\cresc | s1 | s4 s2.\f | s1 |
  s1*9 |
  s2 | s1.*44 |
  s4 s2.\omit\pp-\markup{\bold\italic sempre \dynamic pp} |
  \repeat volta 2 {
    s1*10 | s2 s\cresc | s1*3 | s2 s\pp | s1*13 |
    \alternative { {s1} {s1} }
  }
}

soprano = \relative {
  \global
  r2 | R1*3 | \bar "|." \key bes \major \break
% № 35 Chorus
  d''2 c4. f8 | d4 d ees4. d8 | c2 f-> | d-> g | e4. 8 f4. g8 | % 82b
  fis4 d c bes | a d a bes | fis g a bes | c a bes r | % 83a
  r4 a d bes | ees d c bes | 16(c d8) c(a) bes4 a | % 83b
  g1 \bar "|." \key c \major \break |
% № 36 Recit
  \key c \major R1*9 |
  \key bes \major \time 3/2 \partial 2 r2 | R1.*44  \bar "|." |
  r4 d' c( bes
  \repeat volta 2 {
    a4) g d g
    a8(bes) c(a) bes4 d
    c4(bes a g
    f8 e) f(d) g4 g' % 191d
    f4(ees d c
    bes4) a g r
    r4 d' c(bes
    a) g fis g % 192a
    a8(bes) c(a) bes4 r8 a
    bes8(a) bes(c) d8.(ees16) d4
    d8(c) d(ees) f(ees) d(c)
    bes8(g) a(bes) c(d) bes4 % 192b
    a2 r
    R1
    r2 d4(c)
    ees4(d cis) d % 193a
    d8(a) a4 d(cis)
    f(e) d(cis)
    f4(ees d) ees
    cis4 d d8.(e16) d8(c) % 193b
    d4 r8 d bes4 r
    ees4. 8 c4 r8 c
    f4 r g g8(f) % 194a
    ees8(d) c(bes) bes4 r8 8
    bes8 8 r4 b8 8 r4
    c4(a8) bes8 a4 r8 a
    d8 8 r4 d8 c r4 % 194b
    c8(a bes8.) c16 bes4. a16(g)
    \alternative {
      {<<{g4 d' c bes} \new Voice {s2 \hideNotes 4..(16)}>>}
      {g1}
    }
  }
  \bar "|."
}

wordsSop = \lyricmode {
  Great minds a -- gainst them -- selves con -- spire,
  great minds, great minds a -- gainst,
  a -- gainst them -- selves con -- spire,
  And shun the cure they most,
  they most de -- sire,
  and shun the cure they most de -- sire,
  they most de -- sire.
  
  With droop -- ing wings ye Cu -- pids __ come,
  with droop -- ing __ wings,
  with droop -- ing __ wings,
  with droop -- ing __ wings ye Cu -- pids come,
  To scat -- ter __ ro -- ses,
  scat -- ter, __ scat -- ter __ ro -- ses __ on __ her tomb.

  Soft, __ soft __ and gen -- tle,
  soft, __ soft, __ soft, __ soft __
  and gen -- tle as __ her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver __ part.

  With droop -- _
  part.
}

wordsSopSingle = \lyricmode {
  With droop -- ing wings ye Cu -- pids __ come,
  with droop -- ing __ wings,
  with droop -- ing __ wings,
  with droop -- ing __ wings ye Cu -- pids come,
  To scat -- ter __ ro -- ses,
  scat -- ter, __ scat -- ter __ ro -- ses __ on __ her tomb.

  Soft, __ soft __ and gen -- tle,
  soft, __ soft, __ soft, __ soft __
  and gen -- tle as __ her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver __ part.

  With droop -- _ _ ing wings ye Cu -- pids __ come,
  with droop -- ing __ wings,
  with droop -- ing __ wings,
  with droop -- ing __ wings ye Cu -- pids come,
  To scat -- ter __ ro -- ses,
  scat -- ter, __ scat -- ter __ ro -- ses __ on __ her tomb.

  Soft, __ soft __ and gen -- tle,
  soft, __ soft, __ soft, __ soft __
  and gen -- tle as __ her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver __ part.
}

wordsSopMidi = \lyricmode {
  "With " droop "ing " "wings " "ye " Cu "pids "  "come, "
  "\nwith " droop "ing "  "wings, "
  "\nwith " droop "ing "  "wings, "
  "\nwith " droop "ing "  "wings " "ye " Cu "pids " "come, "
  "\nTo " scat "ter "  ro "ses, "
  "\nscat" "ter, "  scat "ter "  ro "ses "  "on "  "her " "tomb. "

  "\nSoft, "  "soft "  "and " gen "tle, "
  "\nsoft, "  "soft, "  "soft, "  "soft " 
  "\nand " gen "tle " "as "  "her " "heart; "
  "\nKeep " "here, " "here " "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver "  "part. "

  "\nWith " droop "" "" "ing " "wings " "ye " Cu "pids "  "come, "
  "\nwith " droop "ing "  "wings, "
  "\nwith " droop "ing "  "wings, "
  "\nwith " droop "ing "  "wings " "ye " Cu "pids " "come, "
  "\nTo " scat "ter "  ro "ses, "
  "\nscat" "ter, "  scat "ter "  ro "ses "  "on "  "her " "tomb. "

  "\nSoft, "  "soft "  "and " gen "tle, "
  "\nsoft, "  "soft, "  "soft, "  "soft " 
  "\nand " gen "tle " "as "  "her " "heart; "
  "\nKeep " "here, " "here " "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver "  "part. "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2 | s1*3 |
  s1\f | s1*2 | s2 s\ff | s1*3| s4 s2.\p | s1 | s2. s4\cresc | s1 | s4 s2.\f | s1 |
  s1*9 |
  s2 | s1.*44 |
  s1 |
  \repeat volta 2 {
    s1*2 | s4 s2.\omit\pp-\markup{\bold\italic sempre \dynamic pp} |
    s1*7 | s2 s\cresc | s1 | s2 s\pp | s1*15 |
    \alternative { {s1} {s1} }
  }
}

alto = \relative {
  \global
  r2 | R1*3 | \bar "|." \key bes \major
% № 35 Chorus
  bes'2 a4. 8 | bes4 4 g4. f8 | 2 a-> | bes-> 2 | g4. 8 a4 4 | % 82b
  a4 a g g | fis r r2 | r4 g, d' bes | ees d bes d | % 83a
  g4 fis bes g | g g fis g | g g g fis | g1 \bar "|." |
  \key c \major R1*9 |
  \key bes \major \time 3/2 \partial 2 r2 | R1.*44  \bar "|." |
  R1
  \repeat volta 2 {
    R1
    R1
    r4 g' f(ees
    d4) c bes g % 191d
    d'4 ees8(f) g4 r
    r2 r4 d
    c4(bes a) g
    fis4 d' c(bes % 192a
    a4) d d r8 fis
    g8(fis) g(a) bes4 4
    f8(g) f(ees) d(ees) f(d)
    ees4 g fis g % 192b
    fis2 g4(fis)
    bes4(a) g(fis)
    g4 a a8(d,) a'4
    bes4. a8(g4) f % 193a
    e4 8.(d16) 4 r
    d4(cis) f(e
    d4) a' a8(bes) a(g)
    g8.(bes16) a8(g) f4 e8(d) % 193b
    d4 r8 fis g4 r
    g4(a8.) bes16 a4 r8 a
    bes4 r bes bes % 194a
    bes4 a bes4 r8 f
    g8 8 r4 f8 8 r4
    e4(fis8.) g16 fis4 r8 f
    bes8 8 r4 bes8 a r4 % 194b
    a8(fis g8.) a16 g4. fis8
    \alternative {
      {g2 r}
      {g1}
    }
  }
  \bar "|."
}

wordsAlto = \lyricmode {
  Great minds a -- gainst them -- selves con -- spire,
  great minds, great minds a -- gainst,
  a -- gainst them -- selves con -- spire,
  And shun the cure, the cure, 
  and shun the cure they most de -- sire,
  the cure they most de -- sire.
  
  With droop -- ing wings ye Cu -- pids come,
  with droop -- ing wings ye Cu -- pids come,
  To scat -- ter __ ros -- es,
  scat -- ter, __ scat -- ter, __ ro -- ses on her tomb.
  Soft, __ soft __ and __ gen -- tle as __ her heart,
  gen -- tle as her __ heart,
  soft, __ soft __ and gen -- tle, __
  gen -- tle __ as her __ heart,
  Keep here, here __ your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.

  part.
}

wordsAltoSingle = \lyricmode {
  With droop -- ing wings ye Cu -- pids come,
  with droop -- ing wings ye Cu -- pids come,
  To scat -- ter __ ros -- es,
  scat -- ter, __ scat -- ter, __ ro -- ses on her tomb.
  Soft, __ soft __ and __ gen -- tle as __ her heart,
  gen -- tle as her __ heart,
  soft, __ soft __ and gen -- tle, __
  gen -- tle __ as her __ heart,
  Keep here, here __ your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.

  With droop -- ing wings ye Cu -- pids come,
  with droop -- ing wings ye Cu -- pids come,
  To scat -- ter __ ros -- es,
  scat -- ter, __ scat -- ter, __ ro -- ses on her tomb.
  Soft, __ soft __ and __ gen -- tle as __ her heart,
  gen -- tle as her __ heart,
  soft, __ soft __ and gen -- tle, __
  gen -- tle __ as her __ heart,
  Keep here, here __ your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.
}

wordsAltoMidi = \lyricmode {
  "With " droop "ing " "wings " "ye " Cu "pids " "come, "
  "\nwith " droop "ing " "wings " "ye " Cu "pids " "come, "
  "\nTo " scat "ter "  ros "es, "
  "\nscat" "ter, "  scat "ter, "  ro "ses " "on " "her " "tomb. "
  "\nSoft, "  "soft "  "and "  gen "tle " "as "  "her " "heart, "
  "\ngen" "tle " "as " "her "  "heart, "
  "\nsoft, "  "soft "  "and " gen "tle, " 
  "\ngen" "tle "  "as " "her "  "heart, "
  "\nKeep " "here, " "here "  "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver " "part. "

  "\nWith " droop "ing " "wings " "ye " Cu "pids " "come, "
  "\nwith " droop "ing " "wings " "ye " Cu "pids " "come, "
  "\nTo " scat "ter "  ros "es, "
  "\nscat" "ter, "  scat "ter, "  ro "ses " "on " "her " "tomb. "
  "\nSoft, "  "soft "  "and "  gen "tle " "as "  "her " "heart, "
  "\ngen" "tle " "as " "her "  "heart, "
  "\nsoft, "  "soft "  "and " gen "tle, " 
  "\ngen" "tle "  "as " "her "  "heart, "
  "\nKeep " "here, " "here "  "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver " "part. "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2 | s1*3 |
  s1\f | s1*2 | s2 s\ff | s1*2 | s2. s4\p | s1*2 | s2. s4\cresc | s1 | s4 s2.\f | s1 |
  s1*9 |
  s2 | s1.*44 |
  s2. s4\omit\pp-\markup{\bold\italic sempre \dynamic pp} |
  \repeat volta 2 {
    s1*10 | s2 s\cresc | s1*2 | s1\pp | s1*14 |
    \alternative { {s1} {s1} }
  }
}

tenor = \relative {
  \global
  r2 | R1*3 | \bar "|." \key bes \major
% № 35 Chorus
  f'2 4. 8 |4 d c4. 8 | a2 c-> | d-> d | c4. 8 4 4 | % 82b
  d4 d ees d | d r r d | a bes fis g | a fis g r | % 83a
  r2 r4 d' | c bes a g | g ees' d4. 8 | 1 |
  
  \key c \major R1*9 |
  \key bes \major \time 3/2 \partial 2 r2 | R1.*44  \bar "|." |
  r2 r4 d4
  \repeat volta 2 {
    c4(bes a) g
    fis4 d g8(a) bes(g)
    a4 r r c
    bes4(a g) bes % 191d
    a8(bes) c4 d f
    g4 d ees bes
    a4 g fis d'
    c4 bes a g % 192a
    fis8(g) a(fis) g4 r
    r2 r4 r8 d'
    bes8(a) bes(c) d(c) bes(a)
    g4 c c d % 192b
    d2 r
    d4(c) ees(d)
    bes4 a g fis'
    g4 d g, r % 193a
    R1
    r2 d'4(a)
    bes4(c d) bes
    bes8(e,) f(g) a4 4 % 193b
    a4 r8 d8 4 r
    c4. 8 4 r8 a
    d4 r bes ees % 194a
    c8(d) ees4 d r8 d
    ees8 bes r4 d8 8 r4
    g,4. 8 d'4 r8 d
    g,8 8 r4 ees'8 8 r4 % 194b
    a,4 d4 4. 8
    \alternative {
      {d2 r4 d}
      {d1}
    }
  }
  \bar "|."
}

wordsTenor = \lyricmode {
  Great minds a -- gainst them -- selves con -- spire,
  great minds, great minds a -- gainst,
  a -- gainst them -- selves con -- spire,
  And shun the cure they most de -- sire,
  and shun the cure,
  the cure they most de -- sire.
  
  With droop -- ing wings ye Cu -- pids __ come,
  with droop -- ing, droop -- ing wings,
  with droop -- ing wings,
  with droop -- ing wings,
  with droop -- ing wings ye Cu -- pids come,
  To scat -- ter, __ scat -- ter, __
  ro -- ses on her tomb.
  Soft, __ soft, __ soft and gen -- tle as her heart.
  soft, __ soft __ and gen -- tle __ as her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.
  
  With
  part.
}

wordsTenorSingle = \lyricmode {
  With droop -- ing wings ye Cu -- pids __ come,
  with droop -- ing, droop -- ing wings,
  with droop -- ing wings,
  with droop -- ing wings,
  with droop -- ing wings ye Cu -- pids come,
  To scat -- ter, __ scat -- ter, __
  ro -- ses on her tomb.
  Soft, __ soft, __ soft and gen -- tle as her heart.
  soft, __ soft __ and gen -- tle __ as her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.

  With droop -- ing wings ye Cu -- pids __ come,
  with droop -- ing, droop -- ing wings,
  with droop -- ing wings,
  with droop -- ing wings,
  with droop -- ing wings ye Cu -- pids come,
  To scat -- ter, __ scat -- ter, __
  ro -- ses on her tomb.
  Soft, __ soft, __ soft and gen -- tle as her heart.
  soft, __ soft __ and gen -- tle __ as her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.
}

wordsTenorMidi = \lyricmode {
  "With " droop "ing " "wings " "ye " Cu "pids "  "come, "
  "\nwith " droop "ing, " droop "ing " "wings, "
  "\nwith " droop "ing " "wings, "
  "\nwith " droop "ing " "wings, "
  "\nwith " droop "ing " "wings " "ye " Cu "pids " "come, "
  "\nTo " scat "ter, "  scat "ter, " 
  "\nro" "ses " "on " "her " "tomb. "
  "\nSoft, "  "soft, "  "soft " "and " gen "tle " "as " "her " "heart. "
  "\nsoft, "  "soft "  "and " gen "tle "  "as " "her " "heart; "
  "\nKeep " "here, " "here " "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver " "part. "

  "\nWith " droop "ing " "wings " "ye " Cu "pids "  "come, "
  "\nwith " droop "ing, " droop "ing " "wings, "
  "\nwith " droop "ing " "wings, "
  "\nwith " droop "ing " "wings, "
  "\nwith " droop "ing " "wings " "ye " Cu "pids " "come, "
  "\nTo " scat "ter, "  scat "ter, " 
  "\nro" "ses " "on " "her " "tomb. "
  "\nSoft, "  "soft, "  "soft " "and " gen "tle " "as " "her " "heart. "
  "\nsoft, "  "soft "  "and " gen "tle "  "as " "her " "heart; "
  "\nKeep " "here, " "here " "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver " "part. "
}

dynamicsBass = {
  s2 | s1*3 |
  s1\f | s1*2 | s2 s\ff | s1*4 | s4 s2.\p | s2. s4\cresc | s1 | s4 s2.\f | s1 |
  s1*9 |
  s2 | s1.*44 |
  s1 |
  \repeat volta 2 {
    s4 s2.\omit\pp-\markup{\bold\italic sempre \dynamic pp} |
    s1*9 | s2 s\cresc | s1*3 | s1\pp | s1*13 |
    \alternative { {s1} {s1} }
  }
}

bass = \relative {
  \global
  r2 | R1*3 | \bar "|." \key bes \major
% № 35 Chorus
  bes2 f4. 8 | bes4 4 ees,4. 8 | f1 | bes2-> g | c a4. 8 | % 82b
  d4 fis, g g, | d' r r2 | R1 | r4 d g fis | % 83a
  bes4 a g8.(a16) g4 | c, g' d ees | bes c d4. 8 | g1 |
  
  \key c \major R1*9 |
  \key bes \major \time 3/2 \partial 2 r2 | R1.*44 \bar "|." |
  \time 4/4
  R1
  \repeat volta 2 {
    r4 g f(ees
    d4) c bes g
    c8(d) ees(c) d4 r
    R1 % 191d
    r4 c' bes(a
    g4) f es d
    ees4 bes d2~
    d2. g,4 % 192a
    d'4 4 g, r
    r4 r8 d' g(fis) g(a)
    bes4 4 bes,8(c) d(bes)
    ees8(d) c(bes) a4 g % 192b
    d'2 r
    R1
    g4(fis) bes(a
    g4) f e d % 193a
    d4(cis) f(e)
    d4(a) d(a')
    d,4(c bes) bes
    a4. 8 4 4 % 193b
    d4 r8 d g4 r
    c,4. 8 f4 r8 f
    d4 r ees ees % 194a
    f4. 8 bes,4 r8 bes
    ees8 8 r4 d8 8 r4
    c4. 8 d4 r8 d
    bes8 8 r4 c8 8 r4 % 194
    d4 g, d'4. 8
    \alternative {
      {g,2 r}
      {g1}
    }
  }
  \bar "|."
}

wordsBass = \lyricmode {
  Great minds a -- gainst them -- selves con -- spire,
  great minds, great minds
  a -- gainst them -- selves con -- spire,
  And shun the cure they most de -- sire,
  and shun the cure they most de -- sire.
  
  With droop -- ing wings ye Cu -- pids __ come,
  With droop -- ing wings ye Cu -- pids __ come, __
  ye Cu -- pids come,
  To scat -- ter __ ro -- ses,
  scat -- ter __ ro -- ses __ on her tomb.
  Soft, __ soft __ and gen -- tle,
  soft, __ soft, __ soft, __ soft. __
  soft __ and gen -- tle as her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.

  part.
}

wordsBassSingle = \lyricmode {
  With droop -- ing wings ye Cu -- pids __ come,
  With droop -- ing wings ye Cu -- pids __ come, __
  ye Cu -- pids come,
  To scat -- ter __ ro -- ses,
  scat -- ter __ ro -- ses __ on her tomb.
  Soft, __ soft __ and gen -- tle,
  soft, __ soft, __ soft, __ soft. __
  soft __ and gen -- tle as her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.

  With droop -- ing wings ye Cu -- pids __ come,
  With droop -- ing wings ye Cu -- pids __ come, __
  ye Cu -- pids come,
  To scat -- ter __ ro -- ses,
  scat -- ter __ ro -- ses __ on her tomb.
  Soft, __ soft __ and gen -- tle,
  soft, __ soft, __ soft, __ soft. __
  soft __ and gen -- tle as her heart;
  Keep here, here your watch,
  keep here, here, keep here your watch
  and ne -- ver, ne -- ver, ne -- ver part,
  and ne -- ver, ne -- ver, ne -- ver, ne -- ver part.
}

wordsBassMidi = \lyricmode {
  "With " droop "ing " "wings " "ye " Cu "pids "  "come, "
  "\nWith " droop "ing " "wings " "ye " Cu "pids "  "come, " 
  "\nye " Cu "pids " "come, "
  "\nTo " scat "ter "  ro "ses, "
  "\nscat" "ter "  ro "ses "  "on " "her " "tomb. "
  "\nSoft, "  "soft "  "and " gen "tle, "
  "\nsoft, "  "soft, "  "soft, "  "soft. " 
  "\nsoft "  "and " gen "tle " "as " "her " "heart; "
  "\nKeep " "here, " "here " "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver " "part. "

  "\nWith " droop "ing " "wings " "ye " Cu "pids "  "come, "
  "\nWith " droop "ing " "wings " "ye " Cu "pids "  "come, " 
  "\nye " Cu "pids " "come, "
  "\nTo " scat "ter "  ro "ses, "
  "\nscat" "ter "  ro "ses "  "on " "her " "tomb. "
  "\nSoft, "  "soft "  "and " gen "tle, "
  "\nsoft, "  "soft, "  "soft, "  "soft. " 
  "\nsoft "  "and " gen "tle " "as " "her " "heart; "
  "\nKeep " "here, " "here " "your " "watch, "
  "\nkeep " "here, " "here, " "keep " "here " "your " "watch "
  "\nand " ne "ver, " ne "ver, " ne "ver " "part, "
  "\nand " ne "ver, " ne "ver, " ne "ver, " ne "ver " "part. "
}

pianoRHone = \relative {
  \global
% No 34 Recit
  <d' f>2~ | 2 \vo a'4 g | \ov q2 <bes, d>4 <a cis> | <f d'>4. <g cis>8 <f d'>2 | \key bes \major
% № 35 Chorus
  <f' bes d>2 <f a c>4. <f a f'>8 | <f bes d>4 4 <g c ees>4. <f c' d>8 | % 82b
  <f a c>2 <f a c f>-> | <f bes d>-> <g bes g'> |
  <g c e>4. 8 \vo f'4. g8 \ov |
  <a, d fis>4 <d, a' d> <ees g c> <d g bes> | <d fis a> d' a <d, bes'> | % 83a
  <a fis'>4 <g bes g'> <d' a'> <bes bes'> | <ees c'> <d a'> <bes bes'> d |
  g4 <fis a> <bes d> <g bes> | <g c ees> <g bes d> <fis a c> <g bes> | % 83b
  \vo bes16 c d8 c a \ov <d, g bes>4 <d fis a> | <bes d g>1 \key c \major |
% № 36 Recit
  <c ees g>1 | <bes e g> | <aes f'> <bes e>2 <c f> | % 84a
  <bes d>1 | <bes f'> | <g c e>2 <g c ees> | % 84b
  \vo <fis a d>2~ d'4 cis \ov <fis, a d>2 r \key bes \major |
% № 37 Song
  r2 | R1.*4 |<g bes d>1 <bes d>2 | <a c d>1 <g d'>2 | % 84c
  \vo <g g'>1 \ov <g c>2 | <a c d>1 <g d'>2 | <g ees'> \vo d'1 \ov | % 85a
  <g, d'>2~<d' g> <bes ees g> \vo | a'1 bes4 a | g2 fis g |
  fis1 \ov <bes, d g>2 | \vo g'1 \ov <a, d fis>2 | <bes d g>1 <bes d>2 | % 85b
  <a c d>1 <g d'>2 \vo | <g g'>1 \ov <g c>2 |
  <a c d>1 <g d'>2 | <g ees'> \vo d'1 |
  \ov <g, d'>2~<d' g> <bes ees g> | \vo a'1 bes4 a | g2 fis g | % 85c
  fis1 \ov <bes, d g>2 | \vo g'1 \ov <a, d fis>2 |
  <bes d g>1 <d bes'>2~ | q <ees a> <d a'>^~ |
  \vo a'2 g c~ | c bes \ov <g bes> | <ees a> \vo g a4 fis | % 86a
  g2 \ov <ees a>1 | <d a'> <a' d>2 \vo | d2 c1 |
  c2(a) g | \ov <ees a> <d g> <c d fis> | <bes d g>1 \vo bes'2~ | % 86b
  bes2 a d~ | d cis c | c b \ov <bes d g>~ |
  q2 <a c fis> <a d f>~ \vo | f' e ees~ | ees d d~ | d cis c~ | % 86c
  c2 b \ov <d, g bes> \vo | a'4 c \ov <d, g bes>2 <c fis a> |
}

pianoRHtwo = \relative {
  \global \vt
  s2 | s e' | s1*2 \key bes \major |
  s1*4 | s2 <a c>4 4 | % 82b
  s1*6 | g4 <ees g> s2 | s1 \key c \major | % 83
  s1*7 | s2 g,2 | s1 \key bes \major | s2 | s1.*6 |
  d'2 c s | s1. | s2 <g bes> <fis a> | s1. | c'2 d1~ | <bes d>2 c1~ | % 85a
  <a c>1 s2 | <a ees'>2 <bes d> s | s1.*2 | d2 c s | s1. | s2 <g bes> <fis a> |
  s1. | c'2 d1~ | <bes d>2 c1~ | <a c> s2 | <a ees'> <bes d> s | s1.*2 |
  d1 s2 | fis1 s2 | s d1~ | 2 s1 | s1. | bes'2. a4 g2 | % 86a
  a2 d,1 | s1. | s1 d2~ | 1 a'2~ | a g2. a4 | fis1 s2 |
  s1 <<{\vf \once\hideNotes d'2~ | d2. 4} \new Voice {s2 | \vt bes1}>> \vt c4. bes8 | a1 2 | bes2. a4 g2 | <fis a>1 s2 | <ees g>2 s1 | \break
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\pp | s1*3 |
  s1\f | s1*2 | s2 s\ff | s1 | % 82b
  s1 | s4 s2.\p | s1*2 | s2. s4\cresc | s1 | s4 s2.\f | s1 | % 83
  s1\pp | s1*8 | s2\pp | s1.*4 | s1.\pp | s |
  s1.*4 | s1.\cresc | s1.*13 | s1\pp s2\< | s1\> s2\pp |
  s1.*2 | s1 s2\< | s1. | s\! | s | s\pp | s1.*6 | s1 s4. s8\dim | s1.*2 | s1 s2\pp | s1. | % 86
}

pianoLHone = \relative {
  \global
  <d a'>2~ | 2 \vo a'4 bes | \ov q2 g,4 a | bes8 f g a d2 \key bes \major |
  <bes bes'>2 <f f'> | <bes bes'> <ees, ees'> | <f f'>1 | % 82b
  <bes bes'>2 <g g'> | <c c'> <a a'> |
  <d d'>4 <fis, fis'> <g g'> <g, g'> | s1 | s2 \vo fis''4 g | % 83a
  a fis \ov <g, g'> <fis fis'> |
  <bes bes'>4 <a a'> <g g'> <g, g'> | <c c'> <g' g'> <d d'> <ees ees'> | % 83b
  <bes bes'>4 <c c'> <d d'> <d, d'> | <g g'>1 \key c \major |
% № 36 Recit
  <c' g'>1 | q | <f, f'> | <g g'>2 <aes aes'> | % 84a
  <g g'>1 | q | <c, c'> | <d d'>2 <ees ees'> | <d d'> r \key bes \major |
% № 37 Song
  <g g'>2 | <fis fis'>1 <f f'>2 | <e e'>1 <ees ees'>2 | <d d'>1 <bes bes'>2 | % 84c
  <c c'>2 <d d'>1 | <g, g'>1 <g' g'>2 | <fis fis'>1 <f f'>2 |
  <e e'>1 <ees ees'>2 | <d d'>1 < bes bes'>2 | <c c'> <d d'> <d, d'> | % 85a
  <g g'>1 <g' g'>2 | <fis fis'>1 <f f'>2 | <e e'>1 <ees ees'>2 |
  <d d'>1 <bes bes'>2 | <c c'> <d d'> <d, d'> | <g g'>1 <g' g'>2 | % 85b
  <fis fis'>1 <f f'>2 | <e e'>1 <ees ees'>2 | <d d'>1 <bes bes'>2 |
  <c c'>2 <d d'> <d, d'> |
  <g g'>1 <g' g'>2 | <fis fis'>1 <f f'>2 | <e e'>1 <ees ees'>2 | % 85c
  <d d'>1 <bes bes'>2 | <c c'> <d d'> <d, d'> | <g g'>1 <g'' bes>2 |
  <fis c'>1 <f a>2 |
  <e bes'>1 <ees g>2 | <d a'>1-> <bes g'>2 | <c a'> <d bes'> \vo a' | % 86a
  g2 fis \ov <g, g'> | <fis fis'>1 <f f'>2 | \vo g'2-> c \ov <ees, ees'> |
  \vo a2 \ov s bes, | <c g'> d d, | g1 <g g'>2 | % 86b
  <fis fis'>1 <f f'>2 | <e e'>1 <ees ees'>2 | <d d'>1 <bes bes'>2 |
  <c c'>2 <d d'> <d, d'> | <g g'>1-> <g'' c>2 | <fis d'>1 <f d'>2 | % 86c
  <e g>1 ees2 | d1 <bes, bes'>2 | <c c'> <d d'> <d, d'> |
}

pianoLHtwo = \relative {
  \global \vt
  s2 | s cis | s1*2 \key bes \major |
  s1*5 | % 82b
  s1 | <d, d'>1~ | q_~ | 4 d' s2 | s1*4 \key c \major | % 83
  s1*9 \key bes \major | s2 | s1.*6 |
  s1.*20 |
  s1.*2 | s1 d,2 | g1 s2 | s1. | e'1 s2 | d1 | s1.*11 |
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
                                % Soprano Solo staff
        \new Staff = sopsolo \with {
          instrumentName = "Soprano Solo"
          shortInstrumentName = SSol
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = sopsolo} \dynamicsSopSolo
          \new Voice \sopranoSolo
          \addlyrics \wordsSopSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
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
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
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
    output-suffix = singlepage
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
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

\book {
  \paper {
    output-suffix = midi-alto
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Staff \with {
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \sopranoSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
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
