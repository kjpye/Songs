\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Brother James' Air"
  subtitle    = "Psalm 23"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "James Leith Macbeth Bain"
  arranger    = "Arr. Gordon Jacob"
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
  \key d \major
  \time 3/2
  \partial 2
}

TempoTrack = {
  \tempo 2=100
  \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    s2
    s1.*11
    s1
  }
  s2
  s1.*35
  \tempo 2=50
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \mark \markup { \box "2a" } s2 s1.*2
    \mark \markup { \box "3a" }    s1.*4
    \mark \markup { \box "3b" }    s1.*3
    \mark \markup { \box "4a" }    s1.*2
    s1
  }
  \mark \markup { \box "4b" } s2 s1.*3
  \mark \markup { \box "5a" }    s1.*4
  \mark \markup { \box "5b" }    s1.*4
  \mark \markup { \box "6a" }    s1.*4
  \mark \markup { \box "6b" }    s1.*4
  \mark \markup { \box "7a" }    s1.*4
  \mark \markup { \box "7b" }    s1.*4
  \mark \markup { \box "8a" }    s1.*4
  \mark \markup { \box "8b" }    s1.*3 s1
}

soprano = \relative {
  \global
  \repeat volta 2 {
    d'2^\p
    fis4 a d2 a
    b4 d a2 g
    fis4 d4 2 cis % 3a
    d1 2
    fis4 a d2 a
    b4 d a2 g
    fis4 d4 2 cis % 3b
    d1 e2
    fis4 d4 2 e
    fis4 d4 2 e % 4a
    fis4 a d2 2
    d1 \break
  }
  fis,4^\p(g)
  a2. fis4 e fis % 4b
  g4 b d(cis) b(d)
  a4 d fis2 e
  d1 2 % 5a
  d4 cis b2 a
  g4 fis e2. 4
  fis4 g a(d) e(g,)
  fis4(g a2) e^\mf % 5b
  fis4 d4 2 e
  fis4 d4 2 e
  fis4(a d2) 2
  d1 d,2^\mp % 6a
  fis4 a d2 a
  b4 d a2 g
  fis4 d4 2 cis
  d1 2 % 6b
  fis4 a d2 a
  b4 d a2 g
  fis4 d4 2 cis
  d1 e2 % 7a
  fis4 d4 2 e
  fis4 d4 2 e
  fis4 a d2 2
  d1 d,2^\f % 7b
  fis4 a d2 a
  b4 d a2 g
  fis4 d4 2 cis
  d1 2 % 8a
  fis4 a d2 a
  b4 d a2 g
  fis4 d4 2 cis
  d1 e2^\ff % 8b
  fis4 d4 2 e
  fis4 d4 2 e
  fis4 a d2 2
  d1\fermata
  \bar "|."
}

wordsSop = \lyricmode {
  \set stanza = "1."
  The Lord's my Shep -- herd,
  I'll not want,
  He makes me down to lie
  in pas -- tures green,
  He lead -- eth me
  The qui -- et wa -- ters by.
  He lead -- eth me,
  He lead -- eth me,
  The qui -- et wa -- ters by.

  \set stanza = "2."
  My soul He doth re -- store a -- gain
  And me to walk doth make
  With -- in the paths of Bless -- ed -- ness,
  E'en for His own Name's sake.
  With -- in the paths of Bless -- ed -- ness,
  E'en for His own Name's sake.

  \set stanza = "3."
  Yea, __ though I pass thro' shad -- owed vale, __
  Yet __ will I fear no ill;
  For Thou art with me,
  And Thy rod and Staff me com -- fort __ still. __
  Thy rod and Staff me com -- fort __ still. __
  me com -- fort __ still. __

  \set stanza = "4."
  My ta -- ble Thou has fur -- nish -- ed
  In pre -- sence of my foes;
  My head with oil Thou dost a -- noint,
  And my cup o -- ver -- flows.
  My head with oil Thou dost a -- noint,
  And my cup o -- ver -- flows.

  \set stanza = "5."
  Good -- ness and mer -- cy all my days
  Will sure -- ly fol -- low me,
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
}

wordsSopMidi = \lyricmode {
  \set stanza = "1."
  "The " "Lord's " "my " Shep "herd, "
  "\nI'll " "not " "want, "
  "\nHe " "makes " "me " "down " "to " "lie "
  "\nin " pas "tures " "green, "
  "\nHe " lead "eth " "me "
  "\nThe " qui "et " wa "ters " "by. "
  "\nHe " lead "eth " "me, "
  "\nHe " lead "eth " "me, "
  "\nThe " qui "et " wa "ters " "by. "

  \set stanza = "2."
  "\nMy " "soul " "He " "doth " re "store " a "gain "
  "\nAnd " "me " "to " "walk " "doth " "make "
  "\nWith" "in " "the " "paths " "of " Bless ed "ness, "
  "\nE'en " "for " "His " "own " "Name's " "sake. "
  "\nWith" "in " "the " "paths " "of " Bless ed "ness, "
  "\nE'en " "for " "His " "own " "Name's " "sake. "

  \set stanza = "3."
  "\nYea, "  "though " "I " "pass " "thro' " shad "owed " "vale, " 
  "\nYet "  "will " "I " "fear " "no " "ill; "
  "\nFor " "Thou " "art " "with " "me, "
  "\nAnd " "Thy " "rod " "and " "Staff " "me " com "fort "  "still. " 
  "\nThy " "rod " "and " "Staff " "me " com "fort "  "still. " 
  "\nme " com "fort "  "still. " 

  \set stanza = "4."
  "\nMy " ta "ble " "Thou " "has " fur nish "ed "
  "\nIn " pre "sence " "of " "my " "foes; "
  "\nMy " "head " "with " "oil " "Thou " "dost " a "noint, "
  "\nAnd " "my " "cup " o ver "flows. "
  "\nMy " "head " "with " "oil " "Thou " "dost " a "noint, "
  "\nAnd " "my " "cup " o ver "flows. "

  \set stanza = "5."
  "\nGood" "ness " "and " mer "cy " "all " "my " "days "
  "\nWill " sure "ly " fol "low " "me, "
  "\nAnd " "in " "my " Fa "ther's " "heart " al "way "
  "\nMy " dwell "ing " "place " "shall " "be. "
  "\nAnd " "in " "my " Fa "ther's " "heart " al "way "
  "\nMy " dwell "ing " "place " "shall " "be. "
}

wordsOneSop = \lyricmode {
  \set stanza = "1."
  The Lord's my Shep -- herd,
  I'll not want,
  He makes me down to lie
  in pas -- tures green,
  He lead -- eth me
  The qui -- et wa -- ters by.
  He lead -- eth me,
  He lead -- eth me,
  The qui -- et wa -- ters by.

  \set stanza = "3."
  Yea, __ though I pass thro' shad -- owed vale, __
  Yet __ will I fear no ill;
  For Thou art with me,
  And Thy rod and Staff me com -- fort __ still. __
  Thy rod and Staff me com -- fort __ still. __
  me com -- fort __ still. __

  \set stanza = "4."
  My ta -- ble Thou has fur -- nish -- ed
  In pre -- sence of my foes;
  My head with oil Thou dost a -- noint,
  And my cup o -- ver -- flows.
  My head with oil Thou dost a -- noint,
  And my cup o -- ver -- flows.

  \set stanza = "5."
  Good -- ness and mer -- cy all my days
  Will sure -- ly fol -- low me,
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  My soul He doth re -- store a -- gain
  And me to walk doth make
  With -- in the paths of Bless -- ed -- ness,
  E'en for His own Name's sake.
  With -- in the paths of Bless -- ed -- ness,
  E'en for His own Name's sake.
}

alto = \relative {
  \global
  \repeat volta 2 {
    d'2^\p
    d4 cis d(e) fis(a)
    a4 g fis2. e4
    d4 cis b2 a % 3a
    a1 d2
    d4 fis g2 a
    g4 fis e2 d
    cis4 4 b2 a % 3b
    a1 cis2
    d4 4 2 b4(cis)
    d4 b4 2 cis % 4a
    d4 fis a2. g4
    fis1
  }
  d2^\p
  d4(e fis) d d cis % 4b
  d4 fis e2
  g4(b,)
  d4 fis a(d) a(g)
  fis4(e d e) fis(g) % 5a
  a2. g4 fis e
  d2. b4 cis e
  d4 e fis2 e
  d4(e fis2) e^\mf % 5b
  fis4 d4 2 e
  d4 b4 2 2
  a2(a'4 g) fis(e)
  fis1 d2^\p ( ~ % 6a
  d4 cis b d a' g
  fis4 e d fis b, cis
  d4 cis b2 a
  d1) r2 % 6b
  r2 r d(
  fis4 a d2 a
  b4 d a2. g4
  fis4 e d2) a % 7a
  a4 d4 2 2
  d4 4 2 cis
  d4 cis d(e) fis(g)
  fis1 d2 % 7b
  d4 fis a(g) fis(e)
  d4 g e2 d
  d4 4 b2 2
  a1 d2 % 8a
  d4 4 4(e) fis(e)
  d4 e fis2 b,4(cis)
  d4 cis b2 a
  a1 ais2^\ff % 8b
  b4 4 2 cis
  d4 4 2 b4(cis)
  d4 4 e(fis) g(e)
  fis1\fermata
  \bar "|."
}

wordsAlto = \lyricmode {
  \set stanza = "1."
  The Lord's my Shep -- herd,
  I'll not want,
  He makes me down to lie
  in pas -- tures green,
  He lead -- eth me
  The qui -- et wa -- ters by.
  He lead -- eth me,
  He lead -- eth me,
  The qui -- et wa -- ters by.

  \set stanza = "2."
  My soul He doth re -- store a -- gain
  And me to walk doth make
  With -- in the paths of Bless -- ed -- ness,
  E'en for His own Name's sake.
  With -- in the paths of Bless -- ed -- ness,
  E'en for His own Name's sake.

  \set stanza = "3."
  Yea, __ though I pass thro' shad -- owed vale, __
  Yet __ will I fear no ill;
  For Thou art with me,
  And Thy rod and Staff me com -- fort __ still. __
  Thy rod and Staff me com -- fort __ still. __
  me com -- fort __ still.

  \set stanza = "4."
  Ah Ah
  My head with oil Thou dost a -- noint,
  And my cup o -- ver -- flows.

  \set stanza = "5."
  Good -- ness and mer -- cy all my days
  Will sure -- ly fol -- low me,
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
}

wordsAltoMidi = \lyricmode {
  \set stanza = "1."
  "The " "Lord's " "my " Shep "herd, "
  "\nI'll " "not " "want, "
  "\nHe " "makes " "me " "down " "to " "lie "
  "\nin " pas "tures " "green, "
  "\nHe " lead "eth " "me "
  "\nThe " qui "et " wa "ters " "by. "
  "\nHe " lead "eth " "me, "
  "\nHe " lead "eth " "me, "
  "\nThe " qui "et " wa "ters " "by. "

  \set stanza = "2."
  "\nMy " "soul " "He " "doth " re "store " a "gain "
  "\nAnd " "me " "to " "walk " "doth " "make "
  "\nWith" "in " "the " "paths " "of " Bless ed "ness, "
  "\nE'en " "for " "His " "own " "Name's " "sake. "
  "\nWith" "in " "the " "paths " "of " Bless ed "ness, "
  "\nE'en " "for " "His " "own " "Name's " "sake. "

  \set stanza = "3."
  "\nYea, "  "though " "I " "pass " "thro' " shad "owed " "vale, " 
  "\nYet "  "will " "I " "fear " "no " "ill; "
  "\nFor " "Thou " "art " "with " "me, "
  "\nAnd " "Thy " "rod " "and " "Staff " "me " com "fort "  "still. " 
  "\nThy " "rod " "and " "Staff " "me " com "fort "  "still. " 
  "\nme " com "fort "  "still. "

  \set stanza = "4."
  "\nAh " "Ah "
  "\nMy " "head " "with " "oil " "Thou " "dost " a "noint, "
  "\nAnd " "my " "cup " o ver "flows. "

  \set stanza = "5."
  "\nGood" "ness " "and " mer "cy " "all " "my " "days "
  "\nWill " sure "ly " fol "low " "me, "
  "\nAnd " "in " "my " Fa "ther's " "heart " al "way "
  "\nMy " dwell "ing " "place " "shall " "be. "
  "\nAnd " "in " "my " Fa "ther's " "heart " al "way "
  "\nMy " dwell "ing " "place " "shall " "be. "
}

wordsOneAlto = \lyricmode {
  \set stanza = "1."
  The Lord's my Shep -- herd,
  I'll not want,
  He makes me down to lie
  in pas -- tures green,
  He lead -- eth me
  The qui -- et wa -- ters by.
  He lead -- eth me,
  He lead -- eth me,
  The qui -- et wa -- ters by.

  \set stanza = "3."
  Yea, __ though I pass thro' shad -- owed vale, __
  Yet __ will I fear no ill;
  For Thou art with me,
  And Thy rod and Staff me com -- fort __ still. __
  Thy rod and Staff me com -- fort __ still. __
  me com -- fort __ still.

  \set stanza = "4."
  Ah Ah
  My head with oil Thou dost a -- noint,
  And my cup o -- ver -- flows.

  \set stanza = "5."
  Good -- ness and mer -- cy all my days
  Will sure -- ly fol -- low me,
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
}

tenor = \relative {
  \global
  \repeat volta 2 {
    fis2^\p
    fis4 g a2 d4(cis)
    b4 g a2 b
    a4 fis g2 e % 3a
    fis1 2
    d'4 cis b2 d
    d4 b cis2 d4(g,)
    a4 fis g(fis) e2 % 3b
    g4(e fis2) a
    a4 fis a2 g
    fis4 4 2 a % 4a
    a4 d cis2. b4
    a1
  }
  d,2^\mf
  fis4 a d2 a % 4b
  b4 d a2 g
  fis4 d4 2 cis
  d1 2 % 5a
  fis4 a d2 a
  b4 d a2 g
  fis4 d4 2 cis
  d1 a'2-- ^\< % 5b
  d1-- \! cis2--
  b1-- cis2
  d2(cis4 b) a(g)
  a1 d4^\p (cis % 6a
  b4 a g b fis e
  d2 fis) g4(a
  b4 a g e a2~
  a4 g fis a d2) % 6b
  d4(cis d e fis e
  d4 fis a,2) b4(a
  d1 a2~
  a2 b) cis % 7a
  d4 a4 2 b
  a4 4 d2 a
  a4 g fis(a) d(b)
  a1 d2 % 7b
  d4 4 2 cis
  d4 b cis2 d
  cis4 b a2 g
  a4(g fis2) 2 % 8a
  a4 fis b2 cis
  b4 4 cis(d) e2
  d4 fis, g(fis) e2
  g4(e fis2) 2^\ff % 8b
  fis4 4 2 b
  ais4 4 b(a) g2
  a4 fis g(a) b(g) a1\fermata
  \bar "|."
}

wordsTenor = \lyricmode {
  \set stanza = "1."
  The Lord's my Shep -- herd,
  I'll not want,
  He makes me down to lie
  in pas -- tures green,
  He lead -- eth me
  The qui -- et wa -- ters by.
  He lead -- eth me,
  He lead -- eth me,
  The qui -- et wa -- ters by.

  \set stanza = "2."
  My soul He doth re -- store a -- gain
  And me to walk doth make
  With -- in the paths of Bless -- ed -- ness,
  E'en for His own Name's sake.
  With -- in the paths of Bless -- ed -- ness,
  E'en for His own Name's sake.

  \set stanza = "3."
  Yea, __ though I pass thro' shad -- owed vale, __
  Yet __ will I fear no ill;
  For Thou art with me,
  And Thy rod and Staff me com -- fort __ still. __
  Thy rod and Staff me com -- fort __ still.

  \set stanza = "4."
  Ah Ah Ah Ah
  My head with oil Thou dost a -- noint,
  And my cup o -- ver -- flows.

  \set stanza = "5."
  Good -- ness and mer -- cy all my days
  Will sure -- ly fol -- low me,
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
}

wordsTenorMidi = \lyricmode {
  \set stanza = "1."
  "The " "Lord's " "my " Shep "herd, "
  "\nI'll " "not " "want, "
  "\nHe " "makes " "me " "down " "to " "lie "
  "\nin " pas "tures " "green, "
  "\nHe " lead "eth " "me "
  "\nThe " qui "et " wa "ters " "by. "
  "\nHe " lead "eth " "me, "
  "\nHe " lead "eth " "me, "
  "\nThe " qui "et " wa "ters " "by. "

  \set stanza = "2."
  "\nMy " "soul " "He " "doth " re "store " a "gain "
  "\nAnd " "me " "to " "walk " "doth " "make "
  "\nWith" "in " "the " "paths " "of " Bless ed "ness, "
  "\nE'en " "for " "His " "own " "Name's " "sake. "
  "\nWith" "in " "the " "paths " "of " Bless ed "ness, "
  "\nE'en " "for " "His " "own " "Name's " "sake. "

  \set stanza = "3."
  "\nYea, "  "though " "I " "pass " "thro' " shad "owed " "vale, " 
  "\nYet "  "will " "I " "fear " "no " "ill; "
  "\nFor " "Thou " "art " "with " "me, "
  "\nAnd " "Thy " "rod " "and " "Staff " "me " com "fort "  "still. " 
  "\nThy " "rod " "and " "Staff " "me " com "fort "  "still. "

  \set stanza = "4."
  "\nAh " "Ah " "Ah " "Ah "
  "\nMy " "head " "with " "oil " "Thou " "dost " a "noint, "
  "\nAnd " "my " "cup " o ver "flows. "

  \set stanza = "5."
  "\nGood" "ness " "and " mer "cy " "all " "my " "days "
  "\nWill " sure "ly " fol "low " "me, "
  "\nAnd " "in " "my " Fa "ther's " "heart " al "way "
  "\nMy " dwell "ing " "place " "shall " "be. "
  "\nAnd " "in " "my " Fa "ther's " "heart " al "way "
  "\nMy " dwell "ing " "place " "shall " "be. "
}

wordsOneTenor = \lyricmode {
  \set stanza = "1."
  The Lord's my Shep -- herd,
  I'll not want,
  He makes me down to lie
  in pas -- tures green,
  He lead -- eth me
  The qui -- et wa -- ters by.
  He lead -- eth me,
  He lead -- eth me,
  The qui -- et wa -- ters by.

  \set stanza = "3."
  Yea, __ though I pass thro' shad -- owed vale, __
  Yet __ will I fear no ill;
  For Thou art with me,
  And Thy rod and Staff me com -- fort __ still. __
  Thy rod and Staff me com -- fort __ still.

  \set stanza = "4."
  Ah Ah Ah Ah
  My head with oil Thou dost a -- noint,
  And my cup o -- ver -- flows.

  \set stanza = "5."
  Good -- ness and mer -- cy all my days
  Will sure -- ly fol -- low me,
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
}

bass = \relative {
  \global
  \repeat volta 2 {
    d2
    d4 e fis2 d
    g,4 b d2 b4(cis)
    d4 4 e2 a, % 3a
    d1 4(cis)
    b4 a g2 fis
    g4 4 a2 b
    a4 4 g2 a % 3b
    d1 a2
    d4 4 fis2 e
    b4 4 2 a % 4a
    d4 4 g,2 b
    d1
  }
  d2^\mf
  fis4 a d2 a % 4b
  b4 d a2 g
  fis4 d4 2 cis
  d1 2 % 5a
  fis4 a d2 a
  b4 d a2 g
  fis4 d4 2 cis
  d1 cis2 % 5b
  b1 2
  b2(a) g
  fis2(g) b
  d1 r2 % 6a
  R1.
  R1.
  r2 r a'4(g
  fis4 e d fis b, cis % 6b
  d2) fis4(a d cis
  b4 a g fis e2
  d4 e fis g fis e
  d4 cis b2) a % 7a
  d4 fis4 2 g
  a4 fis b2 a4(g)
  fis4 e d(cis) b(g)
  d'1 d'2 % 7b
  d4 cis b2 a
  g4 4 a2 b
  a4 g fis2 e
  fis4(e d2) d % 8a
  d4 cis b2 fis'
  g4 4 fis2 e
  b4 a g2 a
  d1 cis2^\ff % 8b
  d4 b b(a g) g'
  fis4 4 g(fis) e2
  d4 4 c2 g
  d'1\fermata
  \bar "|."
}

wordsBass = \lyricmode {
  \set stanza = "1."
  The Lord's my Shep -- herd,
  I'll not want,
  He makes me down to lie
  in pas -- tures green,
  He lead -- eth me
  The qui -- et wa -- ters by.
  He lead -- eth me,
  He lead -- eth me,
  The qui -- et wa -- ters by.

  \set stanza = "2."
  My soul He doth re -- store a -- gain
  And me to walk doth make
  With -- in the paths of Bless -- ed -- ness,
  E'en for His own Name's sake.
  With -- in the paths of Bless -- ed -- ness,
  E'en for His own Name's sake.

  \set stanza = "3."
  Yea, __ though I pass thro' shad -- owed vale, __
  Yet __ will I fear no ill;
  For Thou art with me,
  And Thy rod and Staff me com -- fort __ still.
  Thy rod and Staff me com -- fort __ still.

  \set stanza = "4."
  Ah Ah
  My head with oil Thou dost a -- noint,
  And my cup o -- ver -- flows.

  \set stanza = "5."
  Good -- ness and mer -- cy all my days
  Will sure -- ly fol -- low me,
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
}

wordsBassMidi = \lyricmode {
  \set stanza = "1."
  "The " "Lord's " "my " Shep "herd, "
  "\nI'll " "not " "want, "
  "\nHe " "makes " "me " "down " "to " "lie "
  "\nin " pas "tures " "green, "
  "\nHe " lead "eth " "me "
  "\nThe " qui "et " wa "ters " "by. "
  "\nHe " lead "eth " "me, "
  "\nHe " lead "eth " "me, "
  "\nThe " qui "et " wa "ters " "by. "

  \set stanza = "2."
  "\nMy " "soul " "He " "doth " re "store " a "gain "
  "\nAnd " "me " "to " "walk " "doth " "make "
  "\nWith" "in " "the " "paths " "of " Bless ed "ness, "
  "\nE'en " "for " "His " "own " "Name's " "sake. "
  "\nWith" "in " "the " "paths " "of " Bless ed "ness, "
  "\nE'en " "for " "His " "own " "Name's " "sake. "

  \set stanza = "3."
  "\nYea, "  "though " "I " "pass " "thro' " shad "owed " "vale, " 
  "\nYet "  "will " "I " "fear " "no " "ill; "
  "\nFor " "Thou " "art " "with " "me, "
  "\nAnd " "Thy " "rod " "and " "Staff " "me " com "fort "  "still. "
  "\nThy " "rod " "and " "Staff " "me " com "fort "  "still. "

  \set stanza = "4."
  "\nAh " "Ah "
  "\nMy " "head " "with " "oil " "Thou " "dost " a "noint, "
  "\nAnd " "my " "cup " o ver "flows. "

  \set stanza = "5."
  "\nGood" "ness " "and " mer "cy " "all " "my " "days "
  "\nWill " sure "ly " fol "low " "me, "
  "\nAnd " "in " "my " Fa "ther's " "heart " al "way "
  "\nMy " dwell "ing " "place " "shall " "be. "
  "\nAnd " "in " "my " Fa "ther's " "heart " al "way "
  "\nMy " dwell "ing " "place " "shall " "be. "
}

wordsOneBass = \lyricmode {
  \set stanza = "1."
  The Lord's my Shep -- herd,
  I'll not want,
  He makes me down to lie
  in pas -- tures green,
  He lead -- eth me
  The qui -- et wa -- ters by.
  He lead -- eth me,
  He lead -- eth me,
  The qui -- et wa -- ters by.

  \set stanza = "3."
  Yea, __ though I pass thro' shad -- owed vale, __
  Yet __ will I fear no ill;
  For Thou art with me,
  And Thy rod and Staff me com -- fort __ still.
  Thy rod and Staff me com -- fort __ still.

  \set stanza = "4."
  Ah Ah
  My head with oil Thou dost a -- noint,
  And my cup o -- ver -- flows.

  \set stanza = "5."
  Good -- ness and mer -- cy all my days
  Will sure -- ly fol -- low me,
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
  And in my Fa -- ther's heart al -- way
  My dwell -- ing place shall be.
}

pianoRHone = \relative {
  \global
  c4
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  c4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  c4
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  c4
  \bar "|."
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
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
            \addlyrics \wordsOneSop
            \addlyrics \wordsTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsOneAlto
            \addlyrics \wordsTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsOneTenor
            \addlyrics \wordsTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsOneBass
            \addlyrics \wordsTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = repeat-noacc
  }
  \score {
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
            \addlyrics \wordsOneSop
            \addlyrics \wordsTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsOneAlto
            \addlyrics \wordsTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsOneTenor
            \addlyrics \wordsTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsOneBass
            \addlyrics \wordsTwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

#(set-global-staff-size 19)

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
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = single-noacc
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
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = singlepage-noacc
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
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
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
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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
          }
          <<
            \new Voice \TempoTrack
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
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \soprano
            \new Voice \alto
            \new Voice \tenor
            \new Voice \bass
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
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \soprano
            \new Voice \alto
            \new Voice \tenor
            \new Voice \bass
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
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \soprano
            \new Voice \alto
            \new Voice \tenor
            \new Voice \bass
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
          \new Staff = piano \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \soprano
            \new Voice \alto
            \new Voice \tenor
            \new Voice \bass
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
