\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "By Grace are ye Saved."
  subtitle    = "Sankey No. 18"
  subsubtitle = "Sankey 880 No. 280"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "James McGranahan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "D. W. Whittle"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 4/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "1A" } s4 s1*3 s2.
  \mark \markup { \box "1B" } s4 s1*3 s2.
  \mark \markup { \box "1C" } s4 s1*4
  \mark \markup { \box "1D" } s1*3
  \mark \markup { \box "2A" } s1*3
  \mark \markup { \box "2B" } s1*4
  \mark \markup { \box "2C" } s1*4
  \mark \markup { \box "2D" } s1*3 s2
  \mark \markup { \box "2E" } s2 s1*5 s2.
}

TempoTrack = {
  \repeat volta 3 {
    s4
    s1*16
    s1 \tempo 4=40
    s4\tempo 4=120 s2.
    s1*17
    s2.
  }
}

soprano = \relative c'' {
  \global
  \repeat volta 3 {
    a4
    a4. 8 b4 cis
    d2. 4
    d4. 8 cis4 b
    a2. \bar "||" \break fis4
    b4. 8 4 a % 1B
    d4. 8 4 cis8(b)
    e4. fis8 e(d) cis(b)
    a2. \bar "||" \break a4
    a4 fis8. g16  a4 b % 1C
    a2. d8.(cis16)
    b4 r r cis8.(b16)
    a4 r r a
    b4. 8 4-! \times 2/3 {b8 cis d} % 1D
    cis2. 4
    b4. 8 4 \times 2/3 {d8 cis b}
    a4 8 8 2~ % 2A
    a1~
    a4\fermata d8 d d2~
    d1~ % 2B
    d2. 8 8
    d4 d b8 d cis b
    a4(d fis) d
    e4. 8 4 4 % 2C
    fis2. d8 d
    d4 d b8 d cis b
    a4(d fis) d
    e4. 8 d4 cis % 2D
    d2. r8 d
    cis8 cis cis cis d4 r8 d
    cis8 cis cis cis d4 r8 d
    cis8 cis cis cis d4 r % 2E
    r2 r4 d
    fis1
    e1
    d1~
    d2.
  }
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  \repeat volts 3 {
    s4
    s1*4
    s2. s2\cresc % 1B
    s1
    s1\f
    s1*8
    s2. s4\cresc
    s1
    s1
    s1\ff
    s1
    s2\< s\!
    s1
    s1
    s1
    s2\< s\!
    s1\f
    s1\cresc
    s1
    s1
    s2 s2\!
    s1
    s1\ff
    s1*3
    s2.
  }
}

alto = \relative c'' {
  \global
  \repeat volta 3 {
    a4
    a4. 8 g4 g
    fis2. 4
    g4. 8 4 4
    fis2. \bar "||" \break fis4
    fis4. 8 4 a8(g) % 1B
    fis4. 8 4 8(b)
    a4. 8 8(e) e(d)
    cis2. \bar "||" \break g'4
    fis4 d8. e16 fis4 g % 1C
    fis2. b8.(a16)
    g4 r r a8.(g16)
    fis4 r r fis
    g4. 8 gis4-! \times 2/3 {gis8 gis gis} % 1D
    a4(e2) 4
    d4. 8 e4 \times 2/3 { e8 e d}
    cis2. a'8 a % 2A
    a1~
    a4\fermata r r d,8 e
    fis4 8 g a4 8 b % 2B
    c2. 8 8
    b4 b g8 b a g
    fis2(a4) fis
    a4. 8 4 4 % 2C
    a2. c8 c
    b4 b g8 b a g
    fis2(a4) a
    g4. 8 fis4 e % 2D
    fis2. r8 fis
    e8 e e e fis4 r8 fis
    e8 e e e fis4 r8 fis
    g8 g g g fis4 r % 2E
    r2 r4 fis
    a1
    a4(g2.)
    fis1~
    fis2.
  }
}

tenor = \relative c' {
  \global
  \repeat volta 3 {
    a4
    a4. d8 d4 a
    a2. c4
    b4. 8 a4 cis
    d2. \bar "||" \break e4
    d4. 8 4 a % 1B
    a4. 8 4 b
    cis4. d8 cis(b) a(gis)
    a2. \bar "||" \break r4
    r1 % 1C
    r1
    r4 b8.(a16) g4 r
    r4 a8.(g16) fis4 d'
    d4. 8 4 \times 2/3 {d8 cis b} % 1D
    a2. ais4
    b4. 8 gis4 \times 2/3 {gis8 gis gis}
    a2. 8 8 % 2A
    a4 8 b cis4 8 d
    e4\fermata d8 d d2~
    d1~ % 2B
    d2. 8 8
    d4 d4 8 d d d
    d4(a d) a
    cis4. 8 4 4 % 2C
    d2. 8 8
    d4 d4 8 8 8 8
    d4( a d) d
    b4. 8 d4 a % 2D
    a2. r8 a
    a8 a a a a4 r8 a
    a8 a a a8 4 r8 a
    a8 a a a a4 r % 2E
    r2 r4 a
    d1
    cis2.(a4)
    a1~
    a2.
  }
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

bass= \relative c' {
  \global
  \repeat volta 3 {
    a4
    a4. fis8 g4 a
    d,2. 4
    g,4. 8 a4 a
    d2. \bar "||" \break cis4
    b4. 8 4 cis % 1B
    d4. 8 4 dis
    e4. 8 4 4
    a,2. r4
    r1 % 1C
    r1
    r4 g'8.(fis16) e4 r
    r4 fis8.(e16) d4 d
    g4. 8 e4 \times 2/3 {e8 e e} % 1D
    a2. fis4
    b,4. 8 e4 \times 2/3 {e8 e e}
    a,2. 8 b % 2A
    cis4 8 d e4 8 fis
    a4\fermata r r b,8 cis
    d4 8 e fis4 8 g % 2B
    a2. fis8 fis
    g4 g4 8 8 8 8
    d2. 4
    a4. 8 4 4 % 2C
    d2. fis8 fis
    g4 g4 8 8 8 8
    d2. fis4
    g4. 8 a4 a, % 2D
    d2. r8 d
    a8 a a a d4 r8 d
    a8 a a a d4 r8 d % 2E
    e8 e a, a d4 r
    r2 r4 d
    d1
    a1
    d1~d2.
  }
}

chorusWomen = \lyricmode {
  By grace are ye saved thro' faith,
  thro' faith, thro' faith,
}

chorusAll = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  thro' faith,
  and that not of your- selves;
  thro' faith, and that not of your- selves:
  _ _ _ _ _ _


  Not of works, lest an- y man should boast:
  it is the gift of God;
  Not of works, lest an- y man should boast:
  it is the gift of God,
  it is the gift of God,
  it is the gift of God,
  it is the gift of God,
  the gift of God,
}

chorusMen = \lyricmode {
  thro' faith,
  thro' faith,
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Not of works, not of works, not of works,
}

chorusSop = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Not of works, __ not of works, __
}

chorusAlto = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Not of works, __ not of works, __
  not of works, __ not of works, __
}

chorusTenor = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Not of works, __ % not of works, __
}

chorusBass = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Not of works, not of works, not of works,
%  Not of works, not of works, not of works,
}

emptyVerse = \lyricmode {
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  In grace the ho- ly God
  Did full sal- va- tion plan,
  E- lec- ting in His sov- 'reign grace
  To save re- bel- lious man.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  This grace of God ap- pears
  In Je- sus Christ His Son,
  He, lift- ed pn the cross of shame,
  The grace of God makes known.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  To all who do be- lieve
  In God, thro' Christ re- veal'd,
  By grace they full sal- va- tion have,
  And "\"Sons" of "God\"" are seal'd.
}
  
wordsMidiSoprano = \lyricmode {
  \set stanza = "1."
  "In " "grace " "the " ho "ly " "God "
  "\nDid " "full " sal va "tion " "plan, "
  "\nE" lec "ting " "in " "His " sov "'reign " "grace "
  "\nTo " "save " re bel "lious " "man. "
  "\nBy " "grace " "are " "ye " "saved " "thro' " "faith, "
  "\nthro' " "faith, " "thro' " "faith, "
  "\nthro' " "faith, "
  "\nand " "that " "not " "of " your "selves; "
  "\nthro' " "faith, " "and " "that " "not " "of " your "selves: "
  "\nnot " "of " "works. " "not " "of " "works, "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God; "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nthe " "gift " "of " "God,\n"

  \set stanza = "2."
  "\nThis " "grace " "of " "God " ap "pears "
  "\nIn " Je "sus " "Christ " "His " "Son, "
  "\nHe, " lift "ed " "pn " "the " "cross " "of " "shame, "
  "\nThe " "grace " "of " "God " "makes " "known. "
  "\nBy " "grace " "are " "ye " "saved " "thro' " "faith, "
  "\nthro' " "faith, " "thro' " "faith, "
  "\nthro' " "faith, "
  "\nand " "that " "not " "of " your "selves; "
  "\nthro' " "faith, " "and " "that " "not " "of " your "selves: "
  "\nnot " "of " "works. " "not " "of " "works, "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God; "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nthe " "gift " "of " "God,\n"

  \set stanza = "3."
  "\nTo " "all " "who " "do " be "lieve "
  "\nIn " "God, " "thro' " "Christ " re "veal'd, "
  "\nBy " "grace " "they " "full " sal va "tion " "have, "
  "\nAnd " "\"Sons " "of " "God\" " "are " "seal'd. "
  "\nBy " "grace " "are " "ye " "saved " "thro' " "faith, "
  "\nthro' " "faith, " "thro' " "faith, "
  "\nthro' " "faith, "
  "\nand " "that " "not " "of " your "selves; "
  "\nthro' " "faith, " "and " "that " "not " "of " your "selves: "
  "\nnot " "of " "works. " "not " "of " "works, "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God; "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nthe " "gift " "of " "God, "
}
  
wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "\nIn " "grace " "the " ho "ly " "God "
  "\nDid " "full " sal va "tion " "plan, "
  "\nE" lec "ting " "in " "His " sov "'reign " "grace "
  "\nTo " "save " re bel "lious " "man. "
  "\nBy " "grace " "are " "ye " "saved " "thro' " "faith, "
  "\nthro' " "faith, " "thro' " "faith, "
  "\nthro' " "faith, "
  "\nand " "that " "not " "of " your "selves; "
  "\nthro' " "faith, " "and " "that " "not " "of " your "selves: "
  "\nNot " "of " "works, "  "not " "of " "works, " 
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God; "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nthe " "gift " "of " "God, "

  \set stanza = "2."
  "\nThis " "grace " "of " "God " ap "pears "
  "\nIn " Je "sus " "Christ " "His " "Son, "
  "\nHe, " lift "ed " "pn " "the " "cross " "of " "shame, "
  "\nThe " "grace " "of " "God " "makes " "known. "
  "\nBy " "grace " "are " "ye " "saved " "thro' " "faith, "
  "\nthro' " "faith, " "thro' " "faith, "
  "\nthro' " "faith, "
  "\nand " "that " "not " "of " your "selves; "
  "\nthro' " "faith, " "and " "that " "not " "of " your "selves: "
  "\nNot " "of " "works, "  "not " "of " "works, " 
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God; "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nthe " "gift " "of " "God, "

  \set stanza = "3."
  "\nTo " "all " "who " "do " be "lieve "
  "\nIn " "God, " "thro' " "Christ " re "veal'd, "
  "\nBy " "grace " "they " "full " sal va "tion " "have, "
  "\nAnd " "\"Sons " "of " "God\" " "are " "seal'd. "
  "\nBy " "grace " "are " "ye " "saved " "thro' " "faith, "
  "\nthro' " "faith, " "thro' " "faith, "
  "\nthro' " "faith, "
  "\nand " "that " "not " "of " your "selves; "
  "\nthro' " "faith, " "and " "that " "not " "of " your "selves: "
  "\nNot " "of " "works, "  "not " "of " "works, " 
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God; "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nthe " "gift " "of " "God, "
}
  
wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "\nIn " "grace " "the " ho "ly " "God "
  "\nDid " "full " sal va "tion " "plan, "
  "\nE" lec "ting " "in " "His " sov "'reign " "grace "
  "\nTo " "save " re bel "lious " "man. "
  "\nthro' " "faith, "
  "\nthro' " "faith, "
  "\nthro' " "faith, "
  "\nand " "that " "not " "of " your "selves; "
  "\nthro' " "faith, " "and " "that " "not " "of " your "selves: "
  "\nNot " "of " "works, " 
  "\nNot " "of " "works, " "not " "of " "works, " "not " "of " "works, "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God; "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nthe " "gift " "of " "God,\n"

  \set stanza = "2."
  "\nThis " "grace " "of " "God " ap "pears "
  "\nIn " Je "sus " "Christ " "His " "Son, "
  "\nHe, " lift "ed " "pn " "the " "cross " "of " "shame, "
  "\nThe " "grace " "of " "God " "makes " "known. "
  "\nthro' " "faith, "
  "\nthro' " "faith, "
  "\nthro' " "faith, "
  "\nand " "that " "not " "of " your "selves; "
  "\nthro' " "faith, " "and " "that " "not " "of " your "selves: "
  "\nNot " "of " "works, " 
  "\nNot " "of " "works, " "not " "of " "works, " "not " "of " "works, "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God; "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nthe " "gift " "of " "God,\n"

  \set stanza = "3."
  "\nTo " "all " "who " "do " be "lieve "
  "\nIn " "God, " "thro' " "Christ " re "veal'd, "
  "\nBy " "grace " "they " "full " sal va "tion " "have, "
  "\nAnd " "\"Sons " "of " "God\" " "are " "seal'd. "
  "\nthro' " "faith, "
  "\nthro' " "faith, "
  "\nthro' " "faith, "
  "\nand " "that " "not " "of " your "selves; "
  "\nthro' " "faith, " "and " "that " "not " "of " your "selves: "
  "\nNot " "of " "works, " 
  "\nNot " "of " "works, " "not " "of " "works, " "not " "of " "works, "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God; "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nthe " "gift " "of " "God, "
}
  
wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "\nIn " "grace " "the " ho "ly " "God "
  "\nDid " "full " sal va "tion " "plan, "
  "\nE" lec "ting " "in " "His " sov "'reign " "grace "
  "\nTo " "save " re bel "lious " "man. "
  "\nthro' " "faith, "
  "\nthro' " "faith, "
  "\nthro' " "faith, "
  "\nand " "that " "not " "of " your "selves; "
  "\nthro' " "faith, " "and " "that " "not " "of " your "selves: "
  "\nNot " "of " "works, " "not " "of " "works, " "not " "of " "works, "
  "\nNot " "of " "works, " "not " "of " "works, " "not " "of " "works, "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God; "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nthe " "gift " "of " "God.\n"

  \set stanza = "2."
  "\nThis " "grace " "of " "God " ap "pears "
  "\nIn " Je "sus " "Christ " "His " "Son, "
  "\nHe, " lift "ed " "pn " "the " "cross " "of " "shame, "
  "\nThe " "grace " "of " "God " "makes " "known. "
  "\nthro' " "faith, "
  "\nthro' " "faith, "
  "\nthro' " "faith, "
  "\nand " "that " "not " "of " your "selves; "
  "\nthro' " "faith, " "and " "that " "not " "of " your "selves: "
  "\nNot " "of " "works, " "not " "of " "works, " "not " "of " "works, "
  "\nNot " "of " "works, " "not " "of " "works, " "not " "of " "works, "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God; "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nthe " "gift " "of " "God.\n"

  \set stanza = "3."
  "\nTo " "all " "who " "do " be "lieve "
  "\nIn " "God, " "thro' " "Christ " re "veal'd, "
  "\nBy " "grace " "they " "full " sal va "tion " "have, "
  "\nAnd " "\"Sons " "of " "God\" " "are " "seal'd. "
  "\nthro' " "faith, "
  "\nthro' " "faith, "
  "\nthro' " "faith, "
  "\nand " "that " "not " "of " your "selves; "
  "\nthro' " "faith, " "and " "that " "not " "of " your "selves: "
  "\nNot " "of " "works, " "not " "of " "works, " "not " "of " "works, "
  "\nNot " "of " "works, " "not " "of " "works, " "not " "of " "works, "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God; "
  "\nNot " "of " "works, " "lest " an "y " "man " "should " "boast: "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nit " "is " "the " "gift " "of " "God, "
  "\nthe " "gift " "of " "God, "
}
  
\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Lyrics = "sopranos"
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne }
            \new Lyrics \lyricsto "soprano" { \emptyVerse \chorusWomen }
            \new Lyrics \lyricsto "alto" { \emptyVerse \chorusAlto }
            \new Lyrics \lyricsto "soprano" { \emptyVerse \chorusAll }
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" \wordsThree
          >>
          \context Lyrics = "sopranos" \lyricsto "soprano" { \emptyVerse \chorusSop }
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Lyrics = "men"
          \new Lyrics = "tenors"
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \new Lyrics \lyricsto "bass" { \emptyVerse \chorusBass }
          >>
          \context Lyrics = "tenors" \lyricsto "tenor" { \emptyVerse \chorusTenor }
          \context Lyrics = "men" \lyricsto "tenor" { \emptyVerse \chorusMen }
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
  
\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Lyrics = "sopranos"
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" { \wordsOne }
            \new Lyrics \lyricsto "soprano" { \emptyVerse \chorusWomen }
            \new Lyrics \lyricsto "alto" { \emptyVerse \chorusAlto }
            \new Lyrics \lyricsto "soprano" { \emptyVerse \chorusAll }
            \new Lyrics \lyricsto "soprano" \wordsTwo
            \new Lyrics \lyricsto "soprano" \wordsThree
%            \new Lyrics \lyricsto "soprano" { \wordsOne \chorus
%                                              \wordsTwo \chorus
%                                              \wordsThree \chorus
%                                            }
          >>
          \context Lyrics = "sopranos" \lyricsto "soprano" { \emptyVerse \chorusSop }
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Lyrics = "men"
          \new Lyrics = "tenors"
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \new Lyrics \lyricsto "bass" { \emptyVerse \chorusBass }
          >>
          \context Lyrics = "tenors" \lyricsto "tenor" { \emptyVerse \chorusTenor }
          \context Lyrics = "men" \lyricsto "tenor" { \emptyVerse \chorusMen }
        >>
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
  
\book {
  \bookOutputSuffix "soprano"
  \score {
    \unfoldRepeats
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsWomen
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsMidiSoprano
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
        >>
      >>
    >>
    \midi {}
  }
}
  
\book {
  \bookOutputSuffix "alto"
  \score {
    \unfoldRepeats
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsWomen
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "alto" \wordsMidiAlto
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
          >>
        >>
        >>
      >>
    >>
    \midi {}
  }
}
  
\book {
  \bookOutputSuffix "tenor"
  \score {
    \unfoldRepeats
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsWomen
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \new Lyrics \lyricsto "tenor" { \wordsMidiTenor }
          >>
        >>
        >>
      >>
    >>
    \midi {}
  }
}
  
\book {
  \bookOutputSuffix "bass"
  \score {
    \unfoldRepeats
%    \articulate
    <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsWomen
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \new Lyrics \lyricsto "bass" { \wordsMidiBass }
          >>
        >>
        >>
      >>
    >>
    \midi {}
  }
}
