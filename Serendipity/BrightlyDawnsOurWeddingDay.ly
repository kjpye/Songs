\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Brightly Daws Our Wedding Day"
  subtitle    = "Madrigal"
%  subsubtitle = "Mikado No. 14"
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

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
}

TempoTrack = {
  \tempo "Allegreto con spirito" 4=144
  \repeat volta 2 {
    s1
    \set Score.tempoHideNote = ##t
    s1*56
  }
  \alternative {
    {
      s1
    }
    {
      \tempo 4=72
      s1
    }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \mark \markup { \box "151a" } s1*6
    \mark \markup { \box "151b" } s1*4
    \mark \markup { \box "152a" } s1*4
    \mark \markup { \box "152b" } s1*5
    \mark \markup { \box "153a" } s1*4
    \mark \markup { \box "153b" } s1*4
    \mark \markup { \box "154a" } s1*6
    \mark \markup { \box "154b" } s1*5
    \mark \markup { \box "155a" } s1*4
    \mark \markup { \box "155b" } s1*3
    \mark \markup { \box "156a" } s1*5
    \mark \markup { \box "156b" } s1*7
  }
  \alternative {{s1}{s1}}
}

soprano = \relative {
  \global
  \repeat volta 2 {
    R1*4
    r2^\markup Yum-Yum f'4.^\f a8
    c4 4 4 4
    c2 4 d8(e) % 151b
    f4 c c bes
    a8(bes) c4 4 d8(e)
    f4 c c bes
    a8(bes) c4 a d % 152a
    b4 c d e
    f2 4 e8(d)
    e4 c d b
    c2 r % 152b
    R1*5
    r2 a4 c % 153a+
    d4 c d ees
    c2 r4 f^\f~
    f4 ees8(d) ees4 4 % 153b
    ees4 d8(c) d4 d~
    d4 c8(bes) c4 4
    c4 bes8(a) bes4 d^\p^\< (
    ees1^\>) % 154a
    d2\! r4 d^\< (
    ees1)^\>
    d2 4\! bes
    g4 4 a bes8(c)
    g2 c4 a
    g4 4 a bes8(c) % 154b
    g2 f4.^\f a8
    c4 4 4 4
    c2 4 d8(e)
    f4 c c bes
    a8(bes c4) 4 d8(e) % 155a
    f4 c c bes
    a8(bes c4) d2->
    g,2-> c->
    f,2-> bes-> ~ % 155b
    bes8 a^\ff g f e4 c'-> ~
    c8 bes a g f4 d'-> ~
    d8 c bes a g4 g'-> ~ % 156a
    g8 f e d c bes a g
    a4 r r c^\dim
    d4 c b c8(d)
    c4 r r a
    bes4 a g a8(g) % 156b
    c4 a^\p g2
    a4 4 c2
    a2 r
    r2 a^\pp
    g1~
    g1
  }
  \alternative {
    {
      f2. r4
    }
    {
      f1\fermata
    }
  }
  \bar "|."
}

wordsSopOne = \lyricmode {
  \set stanza = "1."
  Bright -- ly dawns our wed -- ding day;
  Joy -- ous hour, we give thee greet -- ing!
  Whith -- er, __ whith -- er art thou fleet -- ing?
  Fick -- le mo -- ment, prith -- ee stay!
  Fick -- le mo -- ment, prith -- ee stay!

  Though __ the toc -- sin sound, ere long,
  Though __ the toc -- sin sound, ere long,
  Though __ the toc -- sin sound, ere long,
  Ding __ dong! Ding __ dong!
  Yet un -- til the shad -- ows fall
  O -- ver one and o -- ver all,

  Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal: __

  Fa la, Fa la, Fa __ la la la la,
  Fa __ la la la la,
  Fa __ la la la la,
  Fa __ la la la la la la la la,
  Fa la la la, Fa __ la,
  Fa la la la,
  Fa __ la, Fa la la, Fa la la,
  Fa la __ la.

  la.
}

wordsSopTwo = \lyricmode {
  \set stanza = "2."
  Let us dry the read -- y tear.
  Though the hours are sure -- ly creep -- ing,
  Lit -- tle __ need for woe -- ful weep -- ing,
  Till the sad sun -- down is near,
  Till the sad sun -- down is near,

  This the close of ev -- 'ry song,
  This __ the close of ev -- 'ry song,
  This __ the close of ev -- 'ry __ song,
  Ding __ dong! Ding __ dong!

  What though sol -- emn shad -- ows fall,
  Soon -- er, lat -- er, o -- ver all,

%  Sing a __ mer -- ry mad -- ri -- gal, __
%  Sing a __ mer -- ry mad -- ri -- gal, __
%  Sing a __ mer -- ry mad -- ri -- gal: __

%  Fa la, Fa la, Fa __ la la la la,
%  Fa __ la la la la,
%  Fa __ la la la la,
%  Fa __ la la la la la la la la,
%  Fa la la la, Fa __ la,
%  Fa la la la,
%  Fa __ la, Fa la la, Fa la la,
%  Fa la __ la.

  la.
}

wordsSopSingle = \lyricmode {
  \set stanza = "1."
  Bright -- ly dawns our wed -- ding day;
  Joy -- ous hour, we give thee greet -- ing!
  Whith -- er, __ whith -- er art thou fleet -- ing?
  Fick -- le mo -- ment, prith -- ee stay!
  Fick -- le mo -- ment, prith -- ee stay!

  Though __ the toc -- sin sound, ere long,
  Though __ the toc -- sin sound, ere long,
  Though __ the toc -- sin sound, ere long,
  Ding __ dong! Ding __ dong!
  Yet un -- til the shad -- ows fall
  O -- ver one and o -- ver all,

  Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal: __

  Fa la, Fa la, Fa __ la la la la,
  Fa __ la la la la,
  Fa __ la la la la,
  Fa __ la la la la la la la la,
  Fa la la la, Fa __ la,
  Fa la la la,
  Fa __ la, Fa la la, Fa la la,
  Fa la __ la.

  \set stanza = "2."
  Let us dry the read -- y tear.
  Though the hours are sure -- ly creep -- ing,
  Lit -- tle __ need for woe -- ful weep -- ing,
  Till the sad sun -- down is near,
  Till the sad sun -- down is near,

  This the close of ev -- 'ry song,
  This __ the close of ev -- 'ry song,
  This __ the close of ev -- 'ry __ song,
  Ding __ dong! Ding __ dong!

  What though sol -- emn shad -- ows fall,
  Soon -- er, lat -- er, o -- ver all,

  Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal: __

  Fa la, Fa la, Fa __ la la la la,
  Fa __ la la la la,
  Fa __ la la la la,
  Fa __ la la la la la la la la,
  Fa la la la, Fa __ la,
  Fa la la la,
  Fa __ la, Fa la la, Fa la la,
  Fa la __ la.
}

wordsSopMidi = \lyricmode {
  \set stanza = "1."
  "Bright" "ly " "dawns " "our " wed "ding " "day; "
  "\nJoy" "ous " "hour, " "we " "give " "thee " greet "ing! "
  "\nWhith" "er, "  whith "er " "art " "thou " fleet "ing? "
  "\nFick" "le " mo "ment, " prith "ee " "stay! "
  "\nFick" "le " mo "ment, " prith "ee " "stay! "

  "\nThough "  "the " toc "sin " "sound, " "ere " "long, "
  "\nThough "  "the " toc "sin " "sound, " "ere " "long, "
  "\nThough "  "the " toc "sin " "sound, " "ere " "long, "
  "\nDing "  "dong! " "Ding "  "dong! "
  "\nYet " un "til " "the " shad "ows " "fall "
  "\nO" "ver " "one " "and " o "ver " "all, "

  "\nSing " "a "  mer "ry " mad ri "gal, " 
  "\nSing " "a "  mer "ry " mad ri "gal, " 
  "\nSing " "a "  mer "ry " mad ri "gal: " 

  "\nFa " "la, " "Fa " "la, " "Fa "  "la " "la " "la " "la, "
  "\nFa "  "la " "la " "la " "la, "
  "\nFa "  "la " "la " "la " "la, "
  "\nFa "  "la " "la " "la " "la " "la " "la " "la " "la, "
  "\nFa " "la " "la " "la, " "Fa "  "la, "
  "\nFa " "la " "la " "la, "
  "\nFa "  "la, " "Fa " "la " "la, " "Fa " "la " "la, "
  "\nFa " "la "  "la. "

  \set stanza = "2."
  "\nLet " "us " "dry " "the " read "y " "tear. "
  "\nThough " "the " "hours " "are " sure "ly " creep "ing, "
  "\nLit" "tle "  "need " "for " woe "ful " weep "ing, "
  "\nTill " "the " "sad " sun "down " "is " "near, "
  "\nTill " "the " "sad " sun "down " "is " "near, "

  "\nThis " "the " "close " "of " ev "'ry " "song, "
  "\nThis "  "the " "close " "of " ev "'ry " "song, "
  "\nThis "  "the " "close " "of " ev "'ry "  "song, "
  "\nDing "  "dong! " "Ding "  "dong! "

  "\nWhat " "though " sol "emn " shad "ows " "fall, "
  "\nSoon" "er, " lat "er, " o "ver " "all, "

  "\nSing " "a "  mer "ry " mad ri "gal, " 
  "\nSing " "a "  mer "ry " mad ri "gal, " 
  "\nSing " "a "  mer "ry " mad ri "gal: " 

  "\nFa " "la, " "Fa " "la, " "Fa "  "la " "la " "la " "la, "
  "\nFa "  "la " "la " "la " "la, "
  "\nFa "  "la " "la " "la " "la, "
  "\nFa "  "la " "la " "la " "la " "la " "la " "la " "la, "
  "\nFa " "la " "la " "la, " "Fa "  "la, "
  "\nFa " "la " "la " "la, "
  "\nFa "  "la, " "Fa " "la " "la, " "Fa " "la " "la, "
  "\nFa " "la "  "la. "
}

alto = \relative {
  \global
  \repeat volta 2 {
    R1*6
    r2^\markup Pitti-Sing e'4^\f f8(g)
    f4 a g e
    f4 4 c c'
    c4 a g e
    f4 4 4 a % 152a
    a4 g f e
    a2 g4 4
    g4 a a g
    g2 r % 152b
    R1*3 r2 bes4 4
    g4 a8(bes) c4 4 % 153a
    a4 f f a
    bes4 a bes bes
    a4 r bes2->^\f
    bes,2 bes' % 153b
    bes,2 bes'
    bes,2 bes'
    bes,2. f'4^\p^\< (
    g1)^\> % 154a
    f2\! r4 f^\< (
    g1^\>)
    f2\! 4 g
    e4 4 f g8(a)
    e2 f4 4
    e4 4 f g8(a) % 154b
    e2 r
    R1
    r2 e4^\f f8(g)
    f4 a g e
    f2 c4 c' % 155a
    c4 a g e
    f2 2->
    g8 f e d c4 d8 e
    f8 e d c bes4 c8 d % 155b
    e4 g^\ff c,2~
    c4 e d2~
    d4 f-> e8 f g a % 156a
    bes2 e,4 4
    f4 r f2->^\dim ~
    f2 2
    f4 r r f
    f4 4 e e % 156b
    f4 f^\p e2
    f4 4 g2
    f2 r
    r2 f^\pp
    f1(
    e1)
  }
  \alternative {
    {
      f2. r4
    }
    {
      f1\fermata
    }
  }
  \bar "|."
}

wordsAltoOne = \lyricmode {
  Joy -- ous hour, we give thee greet -- ing!
  Whith -- er, __ whith -- er art thou fleet -- ing?
  Fick -- le mo -- ment, prith -- ee stay!
  Fick -- le mo -- ment, prith -- ee stay!

  Plea -- sures come, if sor -- rows fol -- low;
  Though __ the toc -- sin sound, ere long,
  Ding __ dong! Ding __ dong!
  Ding __ dong! Ding __ dong!
  Ding __ dong! Ding __ dong!
  Yet un -- til the shad -- ows fall
  O -- ver one and o -- ver all,

  Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal: __

  Fa la la la la la,
  Fa la la la la la la,
  Fa la la, Fa la, __
  Fa la, __
  Fa la la la la la,
  Fa la la, Fa __ la la, Fa la la la,
  Fa la, Fa la la, Fa la la,
  Fa la __ la.

  la.
}

wordsAltoTwo = \lyricmode {
  Though the hours are sure -- ly creep -- ing,
  Lit -- tle __ need for woe -- ful weep -- ing,
  Till the sad sun -- down is near,
  Till the sad sun -- down is near,

  I to -- day, and thou to -- mor -- row
  This the close of ev -- 'ry song,

  Ding __ dong! Ding __ dong!
  Ding __ dong! Ding __ dong!
  Ding __ dong! Ding __ dong!

  What though sol -- emn shad -- ows fall,
  Soon -- er, la -- ter, o -- ver all,

%  Sing a __ mer -- ry mad -- ri -- gal, __
%  Sing a __ mer -- ry mad -- ri -- gal: __

%  Fa la la la la la,
%  Fa la la la la la la,
%  Fa la la la, Fa la, __
%  Fa la, __
%  Fa la la la la la,
%  Fa la la, Fa __ la la, Fa la la la,
%  Fa la, Fa la la, Fa la la,
%  Fa la __ la.

%  la.
}

wordsAltoSingle = \lyricmode {
  Joy -- ous hour, we give thee greet -- ing!
  Whith -- er, __ whith -- er art thou fleet -- ing?
  Fick -- le mo -- ment, prith -- ee stay!
  Fick -- le mo -- ment, prith -- ee stay!

  Plea -- sures come, if sor -- rows fol -- low;
  Though __ the toc -- sin sound, ere long,
  Ding __ dong! Ding __ dong!
  Ding __ dong! Ding __ dong!
  Ding __ dong! Ding __ dong!
  Yet un -- til the shad -- ows fall
  O -- ver one and o -- ver all,

  Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal: __

  Fa la la la la la,
  Fa la la la la la la,
  Fa la la, Fa la, __
  Fa la, __
  Fa la la la la la,
  Fa la la, Fa __ la la, Fa la la la,
  Fa la, Fa la la, Fa la la,
  Fa la __ la.

% Stanza 2
  Though the hours are sure -- ly creep -- ing,
  Lit -- tle __ need for woe -- ful weep -- ing,
  Till the sad sun -- down is near,
  Till the sad sun -- down is near,

  I to -- day, and thou to -- mor -- row
  This the close of ev -- 'ry song,

  Ding __ dong! Ding __ dong!
  Ding __ dong! Ding __ dong!
  Ding __ dong! Ding __ dong!

  What though sol -- emn shad -- ows fall,
  Soon -- er, la -- ter, o -- ver all,

  Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal: __

  Fa la la la la la,
  Fa la la la la la la,
  Fa la la, Fa la, __
  Fa la, __
  Fa la la la la la,
  Fa la la, Fa __ la la, Fa la la la,
  Fa la, Fa la la, Fa la la,
  Fa la __ la.
}

wordsAltoMidi = \lyricmode {
  "Joy" "ous " "hour, " "we " "give " "thee " greet "ing! "
  "\nWhith" "er, "  whith "er " "art " "thou " fleet "ing? "
  "\nFick" "le " mo "ment, " prith "ee " "stay! "
  "\nFick" "le " mo "ment, " prith "ee " "stay! "

  "\nPlea" "sures " "come, " "if " sor "rows " fol "low; "
  "\nThough "  "the " toc "sin " "sound, " "ere " "long, "
  "\nDing "  "dong! " "Ding "  "dong! "
  "\nDing "  "dong! " "Ding "  "dong! "
  "\nDing "  "dong! " "Ding "  "dong! "
  "\nYet " un "til " "the " shad "ows " "fall "
  "\nO" "ver " "one " "and " o "ver " "all, "

  "\nSing " "a "  mer "ry " mad ri "gal, " 
  "\nSing " "a "  mer "ry " mad ri "gal: " 

  "\nFa " "la " "la " "la " "la " "la, "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nFa " "la " "la, " "Fa " "la, " 
  "\nFa " "la, " 
  "\nFa " "la " "la " "la " "la " "la, "
  "\nFa " "la " "la, " "Fa "  "la " "la, " "Fa " "la " "la " "la, "
  "\nFa " "la, " "Fa " "la " "la, " "Fa " "la " "la, "
  "\nFa " "la "  "la. "

% Stanza 2
  "\nThough " "the " "hours " "are " sure "ly " creep "ing, "
  "\nLit" "tle "  "need " "for " woe "ful " weep "ing, "
  "\nTill " "the " "sad " sun "down " "is " "near, "
  "\nTill " "the " "sad " sun "down " "is " "near, "

  "\nI " to "day, " "and " "thou " to mor "row "
  "\nThis " "the " "close " "of " ev "'ry " "song, "

  "\nDing "  "dong! " "Ding "  "dong! "
  "\nDing "  "dong! " "Ding "  "dong! "
  "\nDing "  "dong! " "Ding "  "dong! "

  "\nWhat " "though " sol "emn " shad "ows " "fall, "
  "\nSoon" "er, " la "ter, " o "ver " "all, "

  "\nSing " "a "  mer "ry " mad ri "gal, " 
  "\nSing " "a "  mer "ry " mad ri "gal: " 

  "\nFa " "la " "la " "la " "la " "la, "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nFa " "la " "la, " "Fa " "la, " 
  "\nFa " "la, " 
  "\nFa " "la " "la " "la " "la " "la, "
  "\nFa " "la " "la, " "Fa "  "la " "la, " "Fa " "la " "la " "la, "
  "\nFa " "la, " "Fa " "la " "la, " "Fa " "la " "la, "
  "\nFa " "la "  "la. "
}

tenor = \relative {
  \global
  \repeat volta 2 {
    R1*6
    r2^\markup Nanki-Poo c'4^\f 4 % 151b
    c4 4 4 4
    c4 4 e f8(g)
    c,4 4 4 4
    c4 4 4 f % 152a
    f4 e d c
    c2 d4 b
    c4 e d d
    e2 r % 152b
    R1*5
    r2 c4 f % 153a+
    f4 4 4 g
    f4 c d2->^\f
    r4 g2^\f f8(ees) % 153b
    f4 4 4 ees8(d)
    ees4 2 d8(c)
    d2. r4
    bes1^\p^\> % 154a
    bes2\! r
    bes1
    bes2 4 d
    c4 4 4 4
    c2 4 4
    c4 4 4 bes8(a) % 154b
    c2 r
    R1
    r2 c4^\f 4
    c4 4 4 4
    c2 e4 f8(g) % 155a
    c,4 4 4 4
    c2 bes^> ~
    bes4 4 a2^> ~
    a4 4 g2~ % 155b
    g4 bes4^\ff ~8 a g f
    e4 c'^> ~8 bes a g
    f4 d'^> ~8 c bes a % 156a
    g4 e'8 f g4 c,
    c4 r r a^\dim
    bes4 a g a8(bes)
    a4 r r c
    d4 c bes bes % 156b
    a4 c^\p 2
    c4 4 2
    c2 r
    r2 c^\pp
    d1(
    bes1)
  }
  \alternative {
    {
      a2. r4
    }
    {
      a1\fermata
    }
  }
  \bar "|."
}

wordsTenorOne = \lyricmode {
  Joy -- ous hour, we give thee greet -- ing!
  Whith -- er, __ whith -- er art thou fleet -- ing?
  Fick -- le mo -- ment, prith -- ee stay!
  Fick -- le mo -- ment, prith -- ee stay!

  Though __ the toc -- sin sound, ere long, ere long,
  Though __ the toc -- sin sound, ere long, sound, ere long,
  Ding dong! Ding __ dong!
  Yet un -- til the shad -- ows fall
  O -- ver one and o -- ver all,

  Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal: __

  Fa __ la la __ la la, __
  Fa __ la la la la,
  Fa __ la la la la,
  Fa __ la la la la,
  Fa la la la la,
  Fa la la la,
  Fa __ la, Fa la la la,
  Fa la, Fa la la, Fa la la,
  Fa la __ la.

  la.
}

wordsTenorTwo = \lyricmode {
  Though the hours are sure -- ly creep -- ing,
  Lit -- tle __ need for woe -- ful weep -- ing,
  Till the sad sun -- down is near,
  Till the sad sun -- down is near,

%  I to -- day, and thou to -- mor -- row
  This the close of ev -- 'ry, ev --'ry song,
  This the close of ev --'ry song, this the close,

  Ding __ dong! Ding __ dong!

  What though sol -- emn shad -- ows fall,
  Soon -- er, la -- ter, o -- ver all,
}

wordsTenorSingle = \lyricmode {
  Joy -- ous hour, we give thee greet -- ing!
  Whith -- er, __ whith -- er art thou fleet -- ing?
  Fick -- le mo -- ment, prith -- ee stay!
  Fick -- le mo -- ment, prith -- ee stay!

  Though __ the toc -- sin sound, ere long, ere long,
  Though __ the toc -- sin sound, ere long, sound, ere long,
  Ding dong! Ding __ dong!
  Yet un -- til the shad -- ows fall
  O -- ver one and o -- ver all,

  Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal: __

  Fa __ la la __ la la, __
  Fa __ la la la la,
  Fa __ la la la la,
  Fa __ la la la la,
  Fa la la la la,
  Fa la la la,
  Fa __ la, Fa la la la,
  Fa la, Fa la la, Fa la la,
  Fa la __ la.

  % Stanza 2
  Though the hours are sure -- ly creep -- ing,
  Lit -- tle __ need for woe -- ful weep -- ing,
  Till the sad sun -- down is near,
  Till the sad sun -- down is near,

%  I to -- day, and thou to -- mor -- row
  This the close of ev -- 'ry, ev --'ry song,
  This the close of ev --'ry song, this the close,

  Ding __ dong! Ding __ dong!

  What though sol -- emn shad -- ows fall,
  Soon -- er, la -- ter, o -- ver all,

  Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal: __

  Fa __ la la __ la la, __
  Fa __ la la la la,
  Fa __ la la la la,
  Fa __ la la la la,
  Fa la la la la,
  Fa la la la,
  Fa __ la, Fa la la la,
  Fa la, Fa la la, Fa la la,
  Fa la __ la.
}

wordsTenorMidi = \lyricmode {
  "Joy" "ous " "hour, " "we " "give " "thee " greet "ing! "
  "\nWhith" "er, "  whith "er " "art " "thou " fleet "ing? "
  "\nFick" "le " mo "ment, " prith "ee " "stay! "
  "\nFick" "le " mo "ment, " prith "ee " "stay! "

  "\nThough "  "the " toc "sin " "sound, " "ere " "long, " "ere " "long, "
  "\nThough "  "the " toc "sin " "sound, " "ere " "long, " "sound, " "ere " "long, "
  "\nDing " "dong! " "Ding "  "dong! "
  "\nYet " un "til " "the " shad "ows " "fall "
  "\nO" "ver " "one " "and " o "ver " "all, "

  "\nSing " "a "  mer "ry " mad ri "gal, " 
  "\nSing " "a "  mer "ry " mad ri "gal: " 

  "\nFa "  "la " "la "  "la " "la, " 
  "\nFa "  "la " "la " "la " "la, "
  "\nFa "  "la " "la " "la " "la, "
  "\nFa "  "la " "la " "la " "la, "
  "\nFa " "la " "la " "la " "la, "
  "\nFa " "la " "la " "la, "
  "\nFa "  "la, " "Fa " "la " "la " "la, "
  "\nFa " "la, " "Fa " "la " "la, " "Fa " "la " "la, "
  "\nFa " "la "  "la. "

  % Stanza 2
  "\nThough " "the " "hours " "are " sure "ly " creep "ing, "
  "\nLit" "tle "  "need " "for " woe "ful " weep "ing, "
  "\nTill " "the " "sad " sun "down " "is " "near, "
  "\nTill " "the " "sad " sun "down " "is " "near, "

%  I to -- day, and thou to -- mor -- row
  "\nThis " "the " "close " "of " ev "'ry, " ev"'ry " "song, "
  "\nThis " "the " "close " "of " ev"'ry " "song, " "this " "the " "close, "

  "\nDing "  "dong! " "Ding "  "dong! "

  "\nWhat " "though " sol "emn " shad "ows " "fall, "
  "\nSoon" "er, " la "ter, " o "ver " "all, "

  "\nSing " "a "  mer "ry " mad ri "gal, " 
  "\nSing " "a "  mer "ry " mad ri "gal: " 

  "\nFa "  "la " "la "  "la " "la, " 
  "\nFa "  "la " "la " "la " "la, "
  "\nFa "  "la " "la " "la " "la, "
  "\nFa "  "la " "la " "la " "la, "
  "\nFa " "la " "la " "la " "la, "
  "\nFa " "la " "la " "la, "
  "\nFa "  "la, " "Fa " "la " "la " "la, "
  "\nFa " "la, " "Fa " "la " "la, " "Fa " "la " "la, "
  "\nFa " "la "  "la. "
}

bass = \relative {
  \global
  \repeat volta 2 {
    R1*6
    r2^\markup Pish-Tush c'4^\f bes % 151b
    a4 f e c
    f4 a c bes
    a4 f e c
    f4 a f d % 152a
    g4 a b c
    a2 b4 g
    c4 a f g
    c,2 r % 152b
    R1
    r2 c'4 4
    a4 bes8(c) d4 4
    bes4 g r2
    R1 % 153a
    r2 f4 4
    bes4 f bes ees,
    f4 r bes2->^\f
    bes,2 bes' % 153b
    bes,2 bes'
    bes,2 bes'
    bes,2. bes'4^\p^\< (
    ees,1^\> ) % 154a
    bes2\! r4 bes'4^\< (
    ees,1\! )
    bes2 bes'4 g
    c4 bes a f
    c2 a'4 f
    c'4 bes a g8(f) % 154b
    c2 r
    R1
    r2 c'4^\f bes
    a4 f e c
    f4(a) c bes % 155a
    a4 f e c
    f8(g a4) bes8 a g f
    e4 f8 g a g f e
    d4 e8 f g f e d % 155b
    c1^\ff
    c1
    c2. g'8 f % 156a
    e8 d c4 c'4.^\> bes8
    a8 g f4 r f^\dim
    f4 4 4 4
    f4 r f2~
    f2 2 % 156b
    f4 4^\p 2
    f4 4 2
    f2 r
    r2 a,^\pp
    bes1(
    c1)
  }
  \alternative {
    {
      f2. r4
    }
    {
      f,1\fermata
    }
  }
  \bar "|."
}

wordsBassOne = \lyricmode {
  Joy -- ous hour, we give thee greet -- ing!
  Whith -- er, __ whith -- er art thou fleet -- ing?
  Fick -- le mo -- ment, prith -- ee stay!
  Fick -- le mo -- ment, prith -- ee stay!

  What though mor -- tal joys be hol -- low?
  Though __ the toc -- sin sound, ere long,

  Ding dong! Ding __ dong!
  Ding dong! Ding __ dong!
  Ding dong! Ding __ dong!
  Yet un -- til the shad -- ows fall
  O -- ver one and o -- ver all,

  Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal: __

  Fa la la la la,
  Fa la la la la la la,
  Fa la la la la la la,
  Fa la,
  Fa la la la la,
  Fa la la la la,
  Fa la la la,
  Fa la,
  Fa __ la la,
  Fa la la, Fa la la,
  Fa la __ la.

  la.
}

wordsBassTwo = \lyricmode {
  Though the hours are sure -- ly creep -- ing,
  Lit -- tle __ need for woe -- ful weep -- ing,
  Till the sad sun -- down is near,
  Till the sad sun -- down is near,

  All must sip the cup of sor -- row—
  This the close of ev --'ry song,

  Ding __ dong! Ding __ dong!
  Ding __ dong! Ding __ dong!
  Ding __ dong! Ding __ dong!

  What though sol -- emn shad -- ows fall,
  Soon -- er, la -- ter, o -- ver all,
}

wordsBassSingle = \lyricmode {
  Joy -- ous hour, we give thee greet -- ing!
  Whith -- er, __ whith -- er art thou fleet -- ing?
  Fick -- le mo -- ment, prith -- ee stay!
  Fick -- le mo -- ment, prith -- ee stay!

  What though mor -- tal joys be hol -- low?
  Though __ the toc -- sin sound, ere long,

  Ding dong! Ding __ dong!
  Ding dong! Ding __ dong!
  Ding dong! Ding __ dong!
  Yet un -- til the shad -- ows fall
  O -- ver one and o -- ver all,

  Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal: __

  Fa la la la la,
  Fa la la la la la la,
  Fa la la la la la la,
  Fa la,
  Fa la la la la,
  Fa la la la la,
  Fa la la la,
  Fa la,
  Fa __ la la,
  Fa la la, Fa la la,
  Fa la __ la.

% Stanza 2
  Though the hours are sure -- ly creep -- ing,
  Lit -- tle __ need for woe -- ful weep -- ing,
  Till the sad sun -- down is near,
  Till the sad sun -- down is near,

  All must sip the cup of sor -- row—
  This the close of ev --'ry song,

  Ding __ dong! Ding __ dong!
  Ding __ dong! Ding __ dong!
  Ding __ dong! Ding __ dong!

  What though sol -- emn shad -- ows fall,
  Soon -- er, la -- ter, o -- ver all,

    Sing a __ mer -- ry mad -- ri -- gal, __
  Sing a __ mer -- ry mad -- ri -- gal: __

  Fa la la la la,
  Fa la la la la la la,
  Fa la la la la la la,
  Fa la,
  Fa la la la la,
  Fa la la la la,
  Fa la la la,
  Fa la,
  Fa __ la la,
  Fa la la, Fa la la,
  Fa la __ la.
}

wordsBassMidi = \lyricmode {
  "Joy" "ous " "hour, " "we " "give " "thee " greet "ing! "
  "\nWhith" "er, "  whith "er " "art " "thou " fleet "ing? "
  "\nFick" "le " mo "ment, " prith "ee " "stay! "
  "\nFick" "le " mo "ment, " prith "ee " "stay! "

  "\nWhat " "though " mor "tal " "joys " "be " hol "low? "
  "\nThough "  "the " toc "sin " "sound, " "ere " "long, "

  "\nDing " "dong! " "Ding "  "dong! "
  "\nDing " "dong! " "Ding "  "dong! "
  "\nDing " "dong! " "Ding "  "dong! "
  "\nYet " un "til " "the " shad "ows " "fall "
  "\nO" "ver " "one " "and " o "ver " "all, "

  "\nSing " "a "  mer "ry " mad ri "gal, " 
  "\nSing " "a "  mer "ry " mad ri "gal: " 

  "\nFa " "la " "la " "la " "la, "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nFa " "la, "
  "\nFa " "la " "la " "la " "la, "
  "\nFa " "la " "la " "la " "la, "
  "\nFa " "la " "la " "la, "
  "\nFa " "la, "
  "\nFa "  "la " "la, "
  "\nFa " "la " "la, " "Fa " "la " "la, "
  "\nFa " "la "  "la. "

% Stanza 2
  "\nThough " "the " "hours " "are " sure "ly " creep "ing, "
  "\nLit" "tle "  "need " "for " woe "ful " weep "ing, "
  "\nTill " "the " "sad " sun "down " "is " "near, "
  "\nTill " "the " "sad " sun "down " "is " "near, "

  "\nAll " "must " "sip " "the " "cup " "of " sor "row— "
  "\nThis " "the " "close " "of " ev"'ry " "song, "

  "\nDing "  "dong! " "Ding "  "dong! "
  "\nDing "  "dong! " "Ding "  "dong! "
  "\nDing "  "dong! " "Ding "  "dong! "

  "\nWhat " "though " sol "emn " shad "ows " "fall, "
  "\nSoon" "er, " la "ter, " o "ver " "all, "

    "\nSing " "a "  mer "ry " mad ri "gal, " 
  "\nSing " "a "  mer "ry " mad ri "gal: " 

  "\nFa " "la " "la " "la " "la, "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nFa " "la, "
  "\nFa " "la " "la " "la " "la, "
  "\nFa " "la " "la " "la " "la, "
  "\nFa " "la " "la " "la, "
  "\nFa " "la, "
  "\nFa "  "la " "la, "
  "\nFa " "la " "la, " "Fa " "la " "la, "
  "\nFa " "la "  "la. "
}

pianoRHone = \relative {
  \global
  \repeat volta 2 {
    r2 <f' d'>2->
    g2 c
    f,2 bes~
    bes4(a g4. f8~)
    f2 r
    r4 <a c>8 r <g bes c> r <f a c> r
    \partCombineChords
    c'2 4(d8 e % 151b
    f8) r r4 r2
    r2 <e, c'>4(<f d'>8 <g e'>
    <f f'>8) r r4 r2
    r2 <c f a>4-. <f a d>-. % 152a
    <f a b>4-. <e g c>-. <f d>-. <e e'>-.
    <a f'>2(<g f'>4) \voiceOne e'8( d
    e8) r r4 r2
    r2 g4(a8 b % 152b
    c4) g g f
    <e, g e'>4 c' <ees, g>2
    fis4( d e fis \oneVoice
    <bes, d g>4) r q2
    e4( c d e % 153a
    <c f>4) r <c f a> <f a c>
    <f bes d>4 <f a c> <f bes d> <g bes ees>
    <f a c>4 r <d bes'>2->
    bes2-> bes'-> % 153b
    bes,2-> bes'->
    bes,2-> bes'->
    bes,2. r4
    R1 % 154a
    R1
    R1
    r2 <f' d'>8 r <d g bes> r
    <e g>8 r q r <f a>4(<g bes>8 <a c>)
    <e g>2 <f c'>8 r <f a> r
    <e g>8 r q r <f a>4(<g bes>8 <a c>) % 154b
    <e g>2 r
    r4 <a c>8 r <g bes c> r <f a c> r
    c'2 <e, c'>4(<f d'>8 <g e'>
    <f f'>8) r r4 r2
    r2 <e c>4(<f d'>8 <g e'> % 155a
    <f f'>8) r r4 r2
    r2
    <f d'>4 r
    g4 r <e c'> r
    f4 r <d bes'> r % 155b
    <c e>4 r r2
    R1
    r4 f e8 f g a % 156a
    bes8 f' e d c bes a g
    <f a>4 r r c'(
    d4 c bes c8 d
    \voiceOne <f, c'>4) r r <f a>( \oneVoice
    <f bes>4 <f a> <e g> <e a>8 g % 156b
    <f c'>4) r r2
    R1*5
  }
  \alternative {
    {
      R1
    }
    {
      R1\fermata
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  \repeat volta 2 {
    s1
    g'8 f e d c4 d8 e
    f8 e d c a4 c8 d
    e4 f2 e4
    s1
    s1
    <e g>8 r <d f> r e4(f8 g % 151b
    f8) s2..
    s1*4
    \partCombineApart
    s2. g4 % 152a++
    g8 s2..
    s1*3
    d1 % 152b+++
    s1
    c1 % 153a
    s1*16
    <e g>8 r <d f> r s2 % 154b+++
    s1*10
    s2 f2 % 156a++
    f2 2
    s1*8
  }
  \alternative {
    {
      s1
    }
    {
      s1
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1*5
    s4 s2.\p
    s1*24
    s2 s\p % 154a+++
    s1*16
    s2. s4\p % 156a++
    s1\dim
    s1
    s1 % 156b
    s1\omit\ppp
    s1*5
  }
  \alternative {{s1}{s1}}
}

pianoLHone = \relative {
  \global
  \repeat volta 2 {
    r2 bes2~
    bes4 4 a2~
    a4 4 g2~
    g4(a bes c)
    a2 r
    R1
    r2 c~ % 151b
    c8 r r4 r2
    r2 c~
    c8 r r4 r2
    r2 f,4 d % 152a
    g4 a <b d> c
    <a c>2 <b d>8 r <g b> r
    c8 r r4 r2
%    <c,, c'>4 \voiceTwo \showStaffSwitch \change Staff = pianorh <e'' g> <d f> <g, d'> \hideStaffSwitch % 152b
    <c,, c'>4 \voiceTwo <e'' g> <d f> <g, d'> % 152b
    <c e>4 e <d f> <g, d'>
    c4 4 2 \voiceOne % \change Staff = pianolh
    a4 fis g a
    s4 r <g, g'>2 \oneVoice
    <c g'>4(bes' a g % 153a
    f4) r f f
    bes4 f bes ees,
    f4 c' bes2->
    bes,2-> bes'-> % 153b
    bes,2-> bes'->
    bes,2-> bes'->
    bes,2. r4
    R1 % 154a
    R1
    R1
    r2 bes'8 r g r
    c8 r <bes c> r <a c> r <f c'> r
    <c c'>2 <a' c>8 r <f c'> r
    c'8 r <bes c> r <a c>4(<g bes>8 <f a>) % 154b
    <c c'>2 r
    R1
    r2 c'2~
    c8 r r4 r2
    r2 c~ % 155a
    c8 r r4 r2
    r2 bes4 r
    <e, bes'>4 r a r
    <d, a'>4 r g r % 155b
    g4 r r2
    s1
    c,2. g'8 f % 156a
    e8 d c4 c'4. bes8
    a8 g f4 r <f a>(
    <f bes>4 <f a> <f g> <f a>8 bes
    a4) r r c
    d4 c bes bes % 156b
    <f a>4 r r2
    R1*5
  }
  \alternative {
    {
      R1
    }
    {
      R1\fermata
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \partCombineApart
  \repeat volta 2 {
    r2 bes8 a g f
    e4 f8 g a g f e
    d4 d8 f g f e d
    c1
    f2 \partCombineAutomatic r
    R1
    r2 c'4(bes % 151b
    a8) r r4 r2
    r2 c4(bes
    a8) r r4 r2
    s1*6
    s2 c, % 152b++
    d4(c bes a
    g4) r s2
    s1*17
    r2 c'4(bes % 154b+++
    a8) r r4 r2
    r2 c4(bes % 155a
    a8) r r4 r2
    s1*3
    c,1~ % 155b+
    c1
    s1*4 % 156a
    f4 r f2~
    f2 2
    s1*6
  }
  \alternative {{s1}{s1}}
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
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
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
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
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "single"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
%  }
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
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
            \addlyrics \wordsTenorSingle
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
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "singlepage"
  \paper {
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
            midiInstrument = "choir aahs"
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
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
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
            \addlyrics \wordsTenorSingle
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
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
  \bookOutputSuffix "midi-sop"
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
          }
          <<
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
          }
          <<
            \new Voice \alto
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \addlyrics \wordsTenorMidi
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
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
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
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
