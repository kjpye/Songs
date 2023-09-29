\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "One Brick at a Time"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Cy Coleman"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Michael Stewart"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 6/8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Moderately with spirit" 4=180
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "22a" } s2.*4
  \repeat volta 2 {
    \textMark \markup { \box "22b" } s2.*4
    \textMark \markup { \box "22c" } s2.*4
    \textMark \markup { \box "23a" } s2.*4
    \textMark \markup { \box "23b" } s2.*4
    \textMark \markup { \box "23c" } s2.*4
    \textMark \markup { \box "23d" } s2.*4
    \textMark \markup { \box "24a" } s2.*4
    \textMark \markup { \box "24b" } s2.*4
    \textMark \markup { \box "24c" } s2.*4
    \textMark \markup { \box "24d" } s2.*4
    \textMark \markup { \box "25a" } s2.*3
    \textMark \markup { \box "25b" } s2.*3
    \textMark \markup { \box "25c" } s2.*3
    \textMark \markup { \box "25d" } s2.
    \alternative { {s2.*2} {s2.} }
  }
  s2.
  \repeat volta 2 {
    \textMark \markup { \box "26a" } s2.*4
    \textMark \markup { \box "26b" } s2.*6
    \textMark \markup { \box "26c" } s2.*6
    \textMark \markup { \box "27a" } s2.*5
    \textMark \markup { \box "27b" } s2.*5
    \textMark \markup { \box "27c" } s2.*5
    \textMark \markup { \box "28a" } s2.
    \alternative { { s2.*4 } {
      \textMark \markup { \box "28b" } s2.
    }
                 }
  }
  s2.*3 |
  \textMark \markup { \box "28c" } s2.*4
}

ChordTrack = \chordmode {
  s2.*4 |
  \repeat volta 2 {
    f2. f:6 f:maj7 f:6 |
    f2. | f:6 | ees:m6 | c:7 |
    c2.:9 | c:m7 | c:9 | c:m7 | % 23a
    c2.:9 | s | g4.:m7 c:7 | bes/d c:7/e |
    f2. | f:maj7 | f:6 | f4.:maj7 f:6 |
    g2.:m | g:m7+ | g:m7 | c:7 | %%%%%
    g2.:m | g:m7+ | g:m7 | c:7 | % 24a %%%%%
    f2.  f:maj7 | f:7 | c4.:7/g f:7/a |
    bes2. | bes:maj7 | bes:6 | s4. c:7 |
    a2.:m7 | d:m7 | g:m7 | c:7 |
    f2. | f:maj7 | a:m7 |
    d2.:9 | g:7sus | g:7 |
    c4.:9 g:m7 | c:11 c:7 | f f:maj7 |
    f4.:6 f | %%%%%
    \alternative {
      { f2. g4.:m7 c:7 }
      { g4.:m7 c:7 | }
    }
  }
  bes4./d c:7/e |
  \repeat volta 2 {
    f2. | f:maj7 | f:6 | f4.:maj7 f:6 | % 26a
    g2.:m | g:m7+ | g:m7 | c:7 | g:m | g:m7+ | %%%%%
    g2.:m7 | c:7 | f | f:maj7 | f:7 | c4.:7/g f:7/a |
    bes2. | bes:maj7 | bes:6 | s4. c:7 | a2.:m7 | % 27a
    d2.:m7 | g:m7 | c:7 | f | f:maj7 |
    a2.:m7 | d:7 | g:m7 | s | c4.:7 g:m7 |
    bes4./c c:7 | % 28a
    \alternative {
      { f2. | s | g:7 | bes4./c c:7 | }
      { f2. | }
    }
  }
  s2. | aes | s |
  f2. | s | c:7 | f |
}

melodyA = \relative {
  \global
  R2.*3 | r4 r8 r4 c'8 \section
  \repeat volta 2 {
    d4 c8 b4 c8 | f4 a8 4 c,8 | d4 c8 b4 c8 | f4 a8 4 c,8 |
    d4 c8 b4 c8 | f4 c8 f4 a8 | bes2.~ | 4.~ 4 c,8 |
    d4 c8 b4 c8 | g'4 bes8 4 c,8 | d4 c8 b4 c8 | g'4 bes8 4 c,8 | % 23a
    d4 c8 b4 c8 | e4 c8 e4 g8 | c4 r8 e,4. | f g \section |
    a4. 4 gis8 | a4. 4 gis8 | a4.~4 gis8 | \slurDashed a4(f8) \slurSolid g4 a8 |
    bes4. 4 a8 | bes4. 4 a8 | bes2.~ | bes |
    bes4. 4 a8 | bes4. 4 a8 | bes4.~4 a8 | bes4 g8 a4 bes8 | % 24a
    c4. 4 b8 | c4. 4 b8 | c4. a | bes c |
    d4. 4 cis8 | d4. 4 cis8 | d4.~4 cis8 | d4 g,8 a4 bes8 |
    c4 b8 c4 b8 | c4 f,8 g4 a8 | bes4.~4 a8 | bes4 e,8 f4 g8 |
    a4. 4 gis8 | a4. c4 b8 | c4. e4 dis8 | % 25a
    e4 d8 c4 a8 | g2.~ | g~ |
    g4. d' | d c4 a8 | f2.~ |
    f2.~
    \alternative {
      { f2. | r4 r8 r4 c8 | }
      { f4\repeatTie r8 e4. |}
    }
  }
  f4. g |
}

melodyBx = \relative {
  a'4.^\markup\italic "2nd time—together" 4 gis8 | a4. 4 gis8 | a4.~4 gis8 | a4 f8 g4 a8 | % 26a
  bes4. 4 a8 | bes4. 4 a8 | bes2.~ | bes | 4. 4 a8 | bes4. 4 a8 |
  bes4.~4 a8 | bes4 g8 a4 bes8 | c4. 4 b8 | c4. 4 b8 | c4. a | bes c |
  d4. 4 cis8 | d4. 4 cis8 | d4.~4 cis8 | d4 g,8 a4 bes8 | c4 b8 c4 b8 | % 27a
  c4 f,8 g4 a8 | bes4.~4 a8 | bes4 e,8 f4 g8 | a4. 4 gis8 | a4. c4 b8 |
  c4. e4 dis8 | e4 d8 c4 a8 | g2.~ | g~ | 4. d' |
  d4. c4 a8 | % 28a
}

melodyBy = \relative {
  f'2.~ | f~ | f |
  R2. | R | c'4. 8 d e | f2. |
  \bar "|."
}

melodyB = \relative {
  \repeat volta 2 {
    \melodyBx
    \alternative {
      { f'2.~ | f | r4 r8 e4. | f g | }
      { f2.~ | }
    }
  }
  \melodyBy
  \bar "|."
}

melodyC = {
  R2.*4 |
  \repeat volta 2 {
    R2.*50
    \alternative { {R2.*2} {R2.} }
  }
  R2. |
}

melodyDx = \relative {
  r4^\markup\italic "1st time—solo" f'8 4. | r4 e8 4. | r4 d8 4 e8 | e4 f8 4. | % 26a
  r4 g8 4. | r4 fis8 4. | r4 f8 4 e8 | e4 f8 g4. | r4 g8 4. | r4 fis8 4. |
  r4 f8 4 e8 | 4 f8 g4. | r4 a8 4. | r4 g8 4. | r4 f8 4 g8 | g4 a8 4. |
  r4 bes8 4. | r4 a8 4. | r4 g8 4 a8 | 4 bes8 4. | r4 a8 4. | % 27a
  r4 g8 4. | r4 f8 4 g8 | g4 a8 4. | r4 f8 4. | r4 e8 4. |
  r4 g8 4 fis8 | 4 g8 a4. | r4 g8 4 a8 | 4 bes8 4 b8 | c4. d |
  d4. c4 a8 | \break % 28a
}

melodyD = {
  \repeat volta 2 {
    \melodyDx
    \alternative {
      { R2.| R | R R | }
      { R2. }
    }
  }
  R2.*7 |
}

melodyOne = { \melodyA \melodyB }
melodyTwo = { \melodyC \melodyD }
melodyTwoSingle = \relative {
  \unfoldRepeats \melodyA
  \melodyDx f'2.~ f |
  r4 r8 e4. | f g |
  \melodyBx f2.~
  \melodyBy
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
  
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsOne = \lyricmode {
  \set stanza = "1."
  The Lord gave each and ev -- 'ry -- one,
  the spunk to do what can't be done,
  the brawn, the brain, the cour -- age and the heart. __
  The strength to bond the strong -- est bar,
  the will to reach the farth -- est star,
  It's just a case of learn -- ing how to start.
  To build a tow'r up so high to a cloud, __
  you'll \nom an -- chor \yesm build it one ti -- ny brick at a time. __
  Bucks mul -- ti -- ply 'til a bum's __ a bank -- er,
  just be -- gin with a thin sil -- ver dime,
  That emp -- ty field, it can yield
  miles and miles __ of flow -- ers,
  you don't need no mag -- ic pow -- ers,
  just a seed __ and show -- ers.
  From the floor to the skies, you can soar
  if you're wise e -- nough to climb __
  One Brick At A Time. __

  \set stanza = "2."
  To

}

wordsTwo = \lyricmode {
  "" build a ship that's built to last,
  you lay the keel, then raise the mast,
  an ode be -- gins with just a sim -- ple rhyme. __
  An oak with roots a mile be -- neath
  be -- comes a stick to pick your teeth,
  Just sharp -- en up your knife and take your time.
  One stal -- wart chap with a cup and a bunch __ of hours,
  __ he can scoop all the salt from the sea, __
  Buds o -- pen up turn -- ing bows to bow -- ers,
  all be -- gun by just one bum -- ble bee.
  To write with ease sym -- phon -- ies
  or at least __ can -- ta -- ti
  filled with trills and ob -- li -- ga -- ti,
  start with fa __ sol la ti.
  Leave the rest to the dust,
  be the best if your just con -- tent to climb __
  One Brick At A Time. __ _
  "" To build a tow'r up so high to a cloud, __
  you'll an -- chor build it one ti -- ny brick at a time. __
  Bucks mul -- ti -- ply 'til a bum's a bank -- er,
  just be -- gin with a thin sil -- ver dime.
  That em -- pty field, it can yield,
  miles and miles __ of flow -- ers,
  you don't need no mag -- ic pow -- ers,
  just a seed __ and show -- ers.
  From the floor to the skies you can soar
  if you're wise e -- nough to climb __
  One Brick At A Time. __

  To build a

  Time. __

  One Brick At A Time.
}

wordsII = \lyricmode {
  Just take a brick and place it on the ground,
  to make it stick pour mor -- tar all a -- round.
  A cup of lime, then stir un -- til it's hard,
  and up she'll climb by inch, by foot, by yard.
  A sill, a door, a ledge, a win -- dow -- pane,
  then drill some more, raise up a weath -- er -- vane.
  A roof, the proof that go -- ing slow like this
  a splen -- did ed -- i -- fice can climb,
  One Brick At A Time. __
}

wordsSingleI = \lyricmode {
  The Lord gave each and ev -- 'ry -- one,
  the spunk to do what can't be done,
  the brawn, the brain, the cour -- age and the heart. __
  The strength to bond the strong -- est bar,
  the will to reach the farth -- est star,
  It's just a case of learn -- ing how to start.
  To build a tow'r up so high to a cloud, __
  you'll \nom an -- chor \yesm build it one ti -- ny brick at a time. __
  Bucks mul -- ti -- ply 'til a bum's __ a bank -- er,
  just be -- gin with a thin sil -- ver dime,
  That emp -- ty field, it can yield
  miles and miles __ of flow -- ers,
  you don't need no mag -- ic pow -- ers,
  just a seed __ and show -- ers.
  From the floor to the skies, you can soar
  if you're wise e -- nough to climb __
  One Brick At A Time. __

  To build a ship that's built to last,
  you lay the keel, then raise the mast,
  an ode be -- gins with just a sim -- ple rhyme. __
  An oak with roots a mile be -- neath
  be -- comes a stick to pick your teeth,
  Just sharp -- en up your knife and take your time.
  One stal -- wart chap with a cup and a bunch __ of hours,
  __ he can scoop all the salt from the sea, __
  Buds o -- pen up turn -- ing bows to bow -- ers,
  all be -- gun by just one bum -- ble bee.
  To write with ease sym -- phon -- ies
  or at least __ can -- ta -- ti
  filled with trills and ob -- li -- ga -- ti,
  start with fa __ sol la ti.
  Leave the rest to the dust,
  be the best if your just con -- tent to climb __
  One Brick At A Time. __

  To build a tow'r up so high to a cloud, __
  you'll an -- chor build it one ti -- ny brick at a time. __
  Bucks mul -- ti -- ply 'til a bum's a bank -- er,
  just be -- gin with a thin sil -- ver dime.
  That em -- pty field, it can yield,
  miles and miles __ of flow -- ers,
  you don't need no mag -- ic pow -- ers,
  just a seed __ and show -- ers.
  From the floor to the skies you can soar
  if you're wise e -- nough to climb __
  One Brick At A Time. __

  To build a tow'r up so high to a cloud, __
  you'll an -- chor build it one ti -- ny brick at a time. __
  Bucks mul -- ti -- ply 'til a bum's a bank -- er,
  just be -- gin with a thin sil -- ver dime.
  That em -- pty field, it can yield,
  miles and miles __ of flow -- ers,
  you don't need no mag -- ic pow -- ers,
  just a seed __ and show -- ers.
  From the floor to the skies you can soar
  if you're wise e -- nough to climb __
  One Brick At A Time. __
  One Brick At A Time. __
}

wordsMidiI = \lyricmode {
  "The " "Lord " "gave " "each " "and " ev 'ry "one, "
  "\nthe " "spunk " "to " "do " "what " "can't " "be " "done, "
  "\nthe " "brawn, " "the " "brain, " "the " cour "age " "and " "the " "heart. " 
  "\nThe " "strength " "to " "bond " "the " strong "est " "bar, "
  "\nthe " "will " "to " "reach " "the " farth "est " "star, "
  "\nIt's " "just " "a " "case " "of " learn "ing " "how " "to " "start. "
  "\nTo " "build " "a " "tow'r " "up " "so " "high " "to " "a " "cloud, " 
  "\nyou'll " \nom an "chor " \yesm "build " "it " "one " ti "ny " "brick " "at " "a " "time. " 
  "\nBucks " mul ti "ply " "'til " "a " "bum's "  "a " bank "er, "
  "\njust " be "gin " "with " "a " "thin " sil "ver " "dime, "
  "\nThat " emp "ty " "field, " "it " "can " "yield "
  "\nmiles " "and " "miles "  "of " flow "ers, "
  "\nyou " "don't " "need " "no " mag "ic " pow "ers, "
  "\njust " "a " "seed "  "and " show "ers. "
  "\nFrom " "the " "floor " "to " "the " "skies, " "you " "can " "soar "
  "\nif " "you're " "wise " e "nough " "to " "climb " 
  "\nOne " "Brick " "At " "A " "Time. " 

  "\nTo " "build " "a " "ship " "that's " "built " "to " "last, "
  "\nyou " "lay " "the " "keel, " "then " "raise " "the " "mast, "
  "\nan " "ode " be "gins " "with " "just " "a " sim "ple " "rhyme. " 
  "\nAn " "oak " "with " "roots " "a " "mile " be "neath "
  "\nbe" "comes " "a " "stick " "to " "pick " "your " "teeth, "
  "\nJust " sharp "en " "up " "your " "knife " "and " "take " "your " "time. "
  "\nOne " stal "wart " "chap " "with " "a " "cup " "and " "a " "bunch "  "of " "hours, "
   "\nhe " "can " "scoop " "all " "the " "salt " "from " "the " "sea, " 
  "\nBuds " o "pen " "up " turn "ing " "bows " "to " bow "ers, "
  "\nall " be "gun " "by " "just " "one " bum "ble " "bee. "
  "\nTo " "write " "with " "ease " sym phon "ies "
  "\nor " "at " "least "  can ta "ti "
  "\nfilled " "with " "trills " "and " ob li ga "ti, "
  "\nstart " "with " "fa "  "sol " "la " "ti. "
  "\nLeave " "the " "rest " "to " "the " "dust, "
  "\nbe " "the " "best " "if " "your " "just " con "tent " "to " "climb " 
  "\nOne " "Brick " "At " "A " "Time. " 

  "\nTo " "build " "a " "tow'r " "up " "so " "high " "to " "a " "cloud, " 
  "\nyou'll " an "chor " "build " "it " "one " ti "ny " "brick " "at " "a " "time. " 
  "\nBucks " mul ti "ply " "'til " "a " "bum's " "a " bank "er, "
  "\njust " be "gin " "with " "a " "thin " sil "ver " "dime. "
  "\nThat " em "pty " "field, " "it " "can " "yield, "
  "\nmiles " "and " "miles "  "of " flow "ers, "
  "\nyou " "don't " "need " "no " mag "ic " pow "ers, "
  "\njust " "a " "seed "  "and " show "ers. "
  "\nFrom " "the " "floor " "to " "the " "skies " "you " "can " "soar "
  "\nif " "you're " "wise " e "nough " "to " "climb " 
  "\nOne " "Brick " "At " "A " "Time. " 

  "\nTo " "build " "a " "tow'r " "up " "so " "high " "to " "a " "cloud, " 
  "\nyou'll " an "chor " "build " "it " "one " ti "ny " "brick " "at " "a " "time. " 
  "\nBucks " mul ti "ply " "'til " "a " "bum's " "a " bank "er, "
  "\njust " be "gin " "with " "a " "thin " sil "ver " "dime. "
  "\nThat " em "pty " "field, " "it " "can " "yield, "
  "\nmiles " "and " "miles "  "of " flow "ers, "
  "\nyou " "don't " "need " "no " mag "ic " pow "ers, "
  "\njust " "a " "seed "  "and " show "ers. "
  "\nFrom " "the " "floor " "to " "the " "skies " "you " "can " "soar "
  "\nif " "you're " "wise " e "nough " "to " "climb " 
  "\nOne " "Brick " "At " "A " "Time. " 
  "\nOne " "Brick " "At " "A " "Time. " 
}

wordsSingleII = \lyricmode {
  The Lord gave each and ev -- 'ry -- one,
  the spunk to do what can't be done,
  the brawn, the brain, the cour -- age and the heart. __
  The strength to bond the strong -- est bar,
  the will to reach the farth -- est star,
  It's just a case of learn -- ing how to start.
  To build a tow'r up so high to a cloud, __
  you'll \nom an -- chor \yesm build it one ti -- ny brick at a time. __
  Bucks mul -- ti -- ply 'til a bum's __ a bank -- er,
  just be -- gin with a thin sil -- ver dime,
  That emp -- ty field, it can yield
  miles and miles __ of flow -- ers,
  you don't need no mag -- ic pow -- ers,
  just a seed __ and show -- ers.
  From the floor to the skies, you can soar
  if you're wise e -- nough to climb __
  One Brick At A Time. __

  To build a ship that's built to last,
  you lay the keel, then raise the mast,
  an ode be -- gins with just a sim -- ple rhyme. __
  An oak with roots a mile be -- neath
  be -- comes a stick to pick your teeth,
  Just sharp -- en up your knife and take your time.
  One stal -- wart chap with a cup and a bunch __ of hours,
  __ he can scoop all the salt from the sea, __
  Buds o -- pen up turn -- ing bows to bow -- ers,
  all be -- gun by just one bum -- ble bee.
  To write with ease sym -- phon -- ies
  or at least __ can -- ta -- ti
  filled with trills and ob -- li -- ga -- ti,
  start with fa __ sol la ti.
  Leave the rest to the dust,
  be the best if your just con -- tent to climb __
  One Brick At A Time. __

  _ _ _
  Just take a brick and place it on the ground,
  to make it stick pour mor -- tar all a -- round.
  A cup of lime, then stir un -- til it's hard,
  and up she'll climb by inch, by foot, by yard.
  A sill, a door, a ledge, a win -- dow -- pane,
  then drill some more, raise up a weath -- er -- vane.
  A roof, the proof that go -- ing slow like this
  a splen -- did ed -- i -- fice can climb,
  One Brick At A Time. __

  To build a tow'r up so high to a cloud, __
  you'll an -- chor build it one ti -- ny brick at a time. __
  Bucks mul -- ti -- ply 'til a bum's a bank -- er,
  just be -- gin with a thin sil -- ver dime.
  That em -- pty field, it can yield,
  miles and miles __ of flow -- ers,
  you don't need no mag -- ic pow -- ers,
  just a seed __ and show -- ers.
  From the floor to the skies you can soar
  if you're wise e -- nough to climb __
  One Brick At A Time. __
  One Brick At A Time. __
}

wordsMidiII = \lyricmode {
  "The " "Lord " "gave " "each " "and " ev 'ry "one, "
  "\nthe " "spunk " "to " "do " "what " "can't " "be " "done, "
  "\nthe " "brawn, " "the " "brain, " "the " cour "age " "and " "the " "heart. " 
  "\nThe " "strength " "to " "bond " "the " strong "est " "bar, "
  "\nthe " "will " "to " "reach " "the " farth "est " "star, "
  "\nIt's " "just " "a " "case " "of " learn "ing " "how " "to " "start. "
  "\nTo " "build " "a " "tow'r " "up " "so " "high " "to " "a " "cloud, " 
  "\nyou'll " \nom an "chor " \yesm "build " "it " "one " ti "ny " "brick " "at " "a " "time. " 
  "\nBucks " mul ti "ply " "'til " "a " "bum's "  "a " bank "er, "
  "\njust " be "gin " "with " "a " "thin " sil "ver " "dime, "
  "\nThat " emp "ty " "field, " "it " "can " "yield "
  "\nmiles " "and " "miles "  "of " flow "ers, "
  "\nyou " "don't " "need " "no " mag "ic " pow "ers, "
  "\njust " "a " "seed "  "and " show "ers. "
  "\nFrom " "the " "floor " "to " "the " "skies, " "you " "can " "soar "
  "\nif " "you're " "wise " e "nough " "to " "climb " 
  "\nOne " "Brick " "At " "A " "Time. " 

  "\nTo " "build " "a " "ship " "that's " "built " "to " "last, "
  "\nyou " "lay " "the " "keel, " "then " "raise " "the " "mast, "
  "\nan " "ode " be "gins " "with " "just " "a " sim "ple " "rhyme. " 
  "\nAn " "oak " "with " "roots " "a " "mile " be "neath "
  "\nbe" "comes " "a " "stick " "to " "pick " "your " "teeth, "
  "\nJust " sharp "en " "up " "your " "knife " "and " "take " "your " "time. "
  "\nOne " stal "wart " "chap " "with " "a " "cup " "and " "a " "bunch "  "of " "hours, "
   "\nhe " "can " "scoop " "all " "the " "salt " "from " "the " "sea, " 
  "\nBuds " o "pen " "up " turn "ing " "bows " "to " bow "ers, "
  "\nall " be "gun " "by " "just " "one " bum "ble " "bee. "
  "\nTo " "write " "with " "ease " sym phon "ies "
  "\nor " "at " "least "  can ta "ti "
  "\nfilled " "with " "trills " "and " ob li ga "ti, "
  "\nstart " "with " "fa "  "sol " "la " "ti. "
  "\nLeave " "the " "rest " "to " "the " "dust, "
  "\nbe " "the " "best " "if " "your " "just " con "tent " "to " "climb " 
  "\nOne " "Brick " "At " "A " "Time. " 

  "" "" ""
  "\nJust " "take " "a " "brick " "and " "place " "it " "on " "the " "ground, "
  "\nto " "make " "it " "stick " "pour " mor "tar " "all " a "round. "
  "\nA " "cup " "of " "lime, " "then " "stir " un "til " "it's " "hard, "
  "\nand " "up " "she'll " "climb " "by " "inch, " "by " "foot, " "by " "yard. "
  "\nA " "sill, " "a " "door, " "a " "ledge, " "a " win dow "pane, "
  "\nthen " "drill " "some " "more, " "raise " "up " "a " weath er "vane. "
  "\nA " "roof, " "the " "proof " "that " go "ing " "slow " "like " "this "
  "\na " splen "did " ed i "fice " "can " "climb, "
  "\nOne " "Brick " "At " "A " "Time. " 

  "\nTo " "build " "a " "tow'r " "up " "so " "high " "to " "a " "cloud, " 
  "\nyou'll " an "chor " "build " "it " "one " ti "ny " "brick " "at " "a " "time. " 
  "\nBucks " mul ti "ply " "'til " "a " "bum's " "a " bank "er, "
  "\njust " be "gin " "with " "a " "thin " sil "ver " "dime. "
  "\nThat " em "pty " "field, " "it " "can " "yield, "
  "\nmiles " "and " "miles "  "of " flow "ers, "
  "\nyou " "don't " "need " "no " mag "ic " pow "ers, "
  "\njust " "a " "seed "  "and " show "ers. "
  "\nFrom " "the " "floor " "to " "the " "skies " "you " "can " "soar "
  "\nif " "you're " "wise " e "nough " "to " "climb " 
  "\nOne " "Brick " "At " "A " "Time. " 
  "\nOne " "Brick " "At " "A " "Time. " 
}

pianoRHone = \relative {
  \global
  \repeat unfold 3 {r4 <c' f a>8 r4 q8 |}
  r4 q8 r4 c8 \section
  \repeat volta 2 {
    \voiceOne d4 c8 b4 c8 | f4 a8 4 c,8 | d4 c8 b4 c8 | f4 a8 4 c,8 |
    d4 c8 b4 c8 | f4 c8 f4 a8 | bes2.~ | 4.~4 c,8 |
    d4 c8 b4 c8 | g'4 bes8 4 c,8 d4 c8 b4 c8 | g'4 bes8 4 c,8 | % 23a
    d4 c8 b4 c8 | e4 c8 e4 g8 | <f bes c>4 r8 <g, bes e>4.-> | <bes f'>-> <bes c g'>-> \section |
    a'4. 4 gis8 | a4. 4 gis8 | a4.~4 gis8 | a4 f8 g4 a8 |
    bes4. 4 a8 | bes4. 4 a8 | bes2. | <bes, d>4 <c e>8 <bes d>4 c8 |
    bes'4. 4 a8 | bes4. 4 a8 | bes4.~4 a8 | bes4 g8 a4 bes8 | % 24a
    c4. 4 b8 | c4. 4 b8 | <ees, a c>4. <c e a>-> | <c e bes'>-> <ees f c'>-> |
    d'4. 4 cis8 | d4. 4 cis8 | d4.~4 cis8 | d4 g,8 a4 bes8 |
    c4 b8 c4 b8 | <a c>4 <d, f>8 <e g>4 <f a>8 | bes4.~4 a8 | <e bes'>4 <c e>8 <d f>4 <e g>8 |
    a4. 4 gis8 | a4. c4 b8 | c4. e4 dis8 | % 25a
    <fis, c' e>4 <fis c' d>8 <c fis c'>4 <c fis a>8 | g'4. 8 fis g | b ais b d cis d |
    <g, bes d g>4. <f bes d> | <f g bes d> <e bes' c>4 <c e a>8 | f4. e |
    d4. des |
    \alternative {
      { c8 d c a4 f8 | c'4. r4 c8 |}
      { <f, bes c>4 r8 <g bes e>4.-> |}
    }
  }
  <bes f'>4.-> <bes c g'>-> |
  \repeat volta 2 {
    a'4. 4 gis8 | a4. 4 gis8 | a4.~4 gis8 | a4 f8 g4 a8 | % 26a
    bes4. 4 a8 | bes4. 4 a8 | bes2. | <bes, d>4 <c e>8 <bes d>4 c8 | bes'4. 4 a8 | bes4. 4 a8 |
    bes4.~4 a8 | bes4 g8 a4 bes8 | c4. 4 b8 | c4. 4 b8 | <ees, a c>4. <c ees a>-> | <c e bes'>-> <ees f c'>-> |
    d'4. 4 cis8 | d4. 4 cis8 | d4.~4 cis8 | d4 g,8 a4 bes8 | c4 b8 c4 b8 | % 27a
    <a c>4 <d, f>8 <e g>4 <f a>8 | bes4.~4 a8 | <e bes'>4 <c e>8 <d f>4 <e g>8 | a4. 4 gis8 | a4. c4 b8 |
    c4. e4 dis8 | <fis, c' e>4 <f c' d>8 <c f c'>4 <c f a>8 | g'4 8 4 a8 | a4 bes8 4 b8 | <e, g bes c>4. <f g bes d> |
    <f bes d>4. <e g bes c>4 <c e a>8 | % 28a
    \alternative {
      { <a d f>4 c8 b4 c8 | <a c f>4 <c f a>8 4 c8 | <b d>4. <b e> | <bes d f>4. <bes e g> | }
      { <a d f>4 c8 b4 c8 | }
    }
  }
  <a c f>4 <c f a>8 4 ees8 | <c f>4 ees8 d4 ees8 | <c ees aes>4 <ees aes c>8 4 c'8 |
  <f, a d>4 c'8 b4 c8 | <a c f>4 <c f a>8 4. | <e, bes' c>4. q8 <f bes d> <g bes e> | <a c f>2. |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s2.*4 |
  \repeat volta 2 {
    a2. | a | a | a |
    a2. | a | r4 <c ees ges>8 r4 q8 | r4 <bes e g>8 r4 <g bes>8 |
    <e bes'>4. <e g> | bes'2. | <g bes>4. g | bes2. | % 23a
    <e, bes'>4. <e g> | bes'2. | s | s | \section
    <c f>4 8 4 8 | <c e>4 8 4 8 | <c d>4 8 4 8 | <c e>4. <c d> |
    <d g>4 8 4 8 | <d fis>4 8 4 8 | <d f>4 8 4 8 | s2. |
    <d g>4 8 4 8 | <d fis>4 8 4 8 | <d f>4 8 4 8 | <c e>4.~4 <c g'>8 | % 24a
    <f a>4 8 4 8 | <e a>4 8 4 8 | s2. | s |
    <f bes>4 8 4 8 | <f a>4 8 4 8 | <f g>4 8 4 8 | f4. e |
    <e g>2. | c | <d f>4 8 4 8 | bes2. |
    <c f>4 8 4 8 | <c >4 8 <e a>4 8 | <e g>4 8 <g c>4 8 | % 25a
    s2. | <c, f>4. c | <d f> <f bes> |
    s2. | s | <a, c>4 8 4 8 |
    <f a>4 8 4 8 |
    \alternative {
      { s2. | <f bes>4 8 4. | }
      { s2. | }
    }
  }
  s2. |
  \repeat volta 2 {
    <c' f>4 8 4 8 | <c e>4 8 4 8 | <c d>4 8 4 8 | <c e>4. <c d> | % 26a
    <d g>4 8 4 8 | <d fis>4 8 4 8 | <d f>4 8 4 8 | s2. | <d g>4 8 4 8 | <d fis>4 8 4 8 |
    <d f>4 8 4 8 | <c e>4.~4 <c g'>8 | <f a>4 8 4 8 | <e a>4 8 4 8 | s2. | s |
    <f bes>4 8 4 8 | <f a>4 8 4 8 | <f g>4 8 4 8 | f4. e | <e g>2. | % 27a
    c2. | <d f>4 8 4 8 | bes2. | <c f>4 8 4 8 | <c e>4 8 <e a>4 8 |
    <e g>4 8 <g c>4 8 | s2. | <bes, d f>2. | <d f> | s |
    s2. | % 28a
    \alternative {
      { s2.*4 | }
      { s2. | }
    }
  }
  s2.*3 |
  s2.*4 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\f | s | s | s |
  \repeat volta 2 {
    s2.\mp s2.*11 |
    s2. | s | s4. s\< | s2. | % 23b
    s2.\mf | s2.*3 |
    s2.*4 |
    s2.*16 | % 24
    s2.*10 |
    \alternative {
      { s2. | s | }
      { s2. | }
    }
  }
  s2.
  \repeat volta 2 {
    s2.\mf | s2.*15 | % 26
    s2.*14 | s4. s\< |
    s2. |
    \alternative { {s2.\f | s2.*3 | } { s2.\ff | } }
  }
  s2.*7 |
}

pianoLHone = \relative {
  \global
  f,4. c | f c8 d e | f4. c | f c8 d e \section
  \repeat volta 2 {
    \voiceOne c'2. | d | e | d |
    c2. | d | ees | e |
    d2. | ees | e | ees | % 23a
    d2. | e | \oneVoice g,4 r8 <c, c'>4.-> | <d d'>-> <e e'> | \section
    \repeat unfold 4 {f4 r8 c4 r8 |}
    g'4 r8 d4 r8 | g4 r8 d4 r8 | g4 r8 g,4 r8 | c4 r8 e4 r8 |
    \repeat unfold 3 { g4 r8 d4 r8 | } g4 c,8 d4 e8 | % 24a
    f4 r8 c4 r8 | f4 r8 c4 r8 | f4 r8 f4.-> | g-> a-> |
    \repeat unfold 3 {bes4 r8 f4 r8 | } bes4. c |
    a4 r8 a4 r8 | d,4 r8 d4 r8 | g4 r8 g4 r8 | c,4. c |
    f4 r8 c4 r8 | f4 r8 c4 r8 | a'4. 4 r8 | % 25a
    d4 r8 d,4 r8 | g4 r8 d4 r8 | g4 r8 g8 a b |
    c4. <g g'> | <c bes'> <c, c'> | f4 r8 c4 r8 |
    f4 r8 c4 r8 |
    \alternative {
      { f4 r8 c4 r8 | g'4 r8 c,4. | }
      { g'4 r8 <c, c'>4.-> | }
    }
  }
  <d d'>4.-> <e e'>-> |
  \repeat volta 2 {
    \repeat unfold 4 {f4 r8 c4 r8 |} % 26a
    g'4 r8 d4 r8 | g4 r8 d4 r8 | g4 r8 g,4 r8 | c4 r8 e4 r8 | g4 r8 d4 r8 | g4 r8 d4 r8 |
    g4 r8 d4 r8 | g4 c,8 d4 e8 | f4 r8 c4 r8 | f4 r8 c4 r8 | f4 r8 4.-> | g-> a-> |
    \repeat unfold 3 {bes4 r8 f4 r8  |} bes4. c | a4 r8 4 r8 | % 27a
    d,4 r8 d4 r8 | g4 r8 4 r8 | c,4. c | f4 r8 c4 r8 | f4 r8 c4 r8 |
    a'4. a4 r8 | d4 r8 d,4 r8 | g4 r8 d4 r8 | g4 r8 d4 r8 | c4. g' |
    c4. c, | % 28a
    \alternative {
      { f4 r8 c4 r8 | f4 r8 c4 r8 | <g' f'>2. | c | }
      { f,4. c | }
    }
  }
  f4. c | aes' ees | aes ees |
  f4. c | f c | c' c, | f4-> c8-> f,4.-> |
  \bar "|."
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s2.*4 |
  \repeat volta 2 {
    f,4 r8 c4 r8 | f4 r8 c d e | f4 8 c4 r8 | f4 r8 c d e |
    f4 r8 c4 r8 | f4 r8 c4 r8 | ges'4 r8 ees f ges | g4 e8 d4 c8 |
    g'4 r8 c,4 r8 | g'4 r8 ees f fis | g4 r8 c,4 r8 | g'4 r8 ees f fis | % 23a
    g4 r8 c,4 r8 | g'4 r8 c,4 r8 | s2. | s |
    s2.*34 |
    \alternative {
      { s2.*2 | }
      { s2. | }
    }
  }
  s2. |
  \repeat volta 2 {
    s2.*32 |
    \alternative { { s2.*4 } { s2. } }
  }
  s2.*7 |
  \bar "|."
}

\book {
  #(define output-suffix "repeat")
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff \with { \consists "Volta_engraver" }
          <<
            \new Voice \RehearsalTrack
            \new Voice \melodyOne
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
          \new Staff <<
            \new Voice \melodyTwo
            \addlyrics \wordsII
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \accidentalStyle Score.modern
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "single")
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
%          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodyOne
            \addlyrics \wordsSingleI
          >>
          \new Staff
          <<
            \new Voice \melodyTwoSingle
            \addlyrics \wordsSingleII
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

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
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melodyOne
            \addlyrics \wordsSingleI
          >>
          \new Staff
          <<
            \new Voice \melodyTwoSingle
            \addlyrics \wordsSingleII
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi-1")
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff = "Part I"
          <<
            \new Dynamics \dynamicsMelody
            \new Voice \melodyOne
            \addlyrics \wordsMidiI
          >>
          \new Staff = "Part II"
          <<
            \new Dynamics \dynamicsMelody
            \new Voice \melodyTwoSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  #(define output-suffix "midi-2")
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff = "Part I"
          <<
            \new Dynamics \dynamicsMelody
            \new Voice \melodyOne
          >>
          \new Staff = "Part II"
          <<
            \new Dynamics \dynamicsMelody
            \new Voice \melodyTwoSingle
            \addlyrics \wordsMidiII
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {}
    \midi {}
  }
}
