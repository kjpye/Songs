\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Always Look on the Bright Side of Life"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Eric Idle"
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

% #(set-global-staff-size 18)

global = {
  \key a \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Freely 4=120
  s2. \tempo 4=40 s8 \tempo 4=120 s8
  s1*7
  s2 \tempo 4=60 s2 % \tempo 4=120
  \repeat volta 2 {
    \tempo "Cheerful Soft-Shoe" 4=120
    s1*15
  }
  \alternative {{s1}{s1}}
  s1*47
}

RehearsalTrack = {
  \mark \markup { \box "46a" } s1*3
  \mark \markup { \box "46b" } s1*2
  \mark \markup { \box "46c" } s1*2
  \mark \markup { \box "47a" } s1*2
  \repeat volta 2 {
    \set Score.currentBarNumber = #10
    s1
    \mark \markup { \box "47b" } s1*3
    \mark \markup { \box "47c" } s1*3
    \mark \markup { \box "47d" } s1*2
    \mark \markup { \box "48a" } s1*2
    \mark \markup { \box "48b" } s1*3
    \mark \markup { \box "48c" } s1
  }
  \alternative {{s1}{s1}}
  \mark \markup { \box "48d" } s1*3
  \mark \markup { \box "49a" } s1*3
  \mark \markup { \box "49b" } s1*3
  \mark \markup { \box "49c" } s1*2
  \mark \markup { \box "49d" } s1*3
  \mark \markup { \box "50a" } s1*3
  \mark \markup { \box "50b" } s1*3
  \mark \markup { \box "50c" } s1*3
  \mark \markup { \box "50d" } s1*2
  \mark \markup { \box "51a" } s1*2
  \mark \markup { \box "51b" } s1*3
  \mark \markup { \box "51c" } s1*2
  \mark \markup { \box "51d" } s1*3
  \mark \markup { \box "52a" } s1*3
  \mark \markup { \box "52b" } s1*3
  \mark \markup { \box "52c" } s1*3
  \mark \markup { \box "52d" } s1*3
  
}

ChordTrack = \chordmode {
  b2:m7 e:13
  b2:m7 d:dim7
  a2/cis fis:m7
  b2:m7 e:7.9- % 46b
  a1
  b2:m7 b:m7/e % 46v
  a2 fis:7
  b1:7 % 47a
  b2:m7/e e:13.9-
  \repeat volta 2 {
    a2 fis:m
    b2:m7 e:9 % 47b
    a2 fis:m
    b2:m7 e:7
    a2 fis:m % 47c
    b2:m7 e:9
    a2 fis:m
    b2:m7 e:7 % 47d
    b2:m7 e:9
    a2 fis:m7 % 48a
    b2:m7 e:9
    a1 | b2:m7 e:9 | a2 fis:7 % 48b
    b4:7 a/cis d:m6 b:7/dis % 48c
  }
  \alternative {{e2 e:13.9-}{e2 ees4:maj7/f f:9}}
  bes2 g:m | c2:m7 f:9 | bes g:m % 48d
  c2:m7 f:7 | ees g:m | c:m7 f:9 % 49a
  bes2 g:m | c:m7 f:7 | c:m7 f:9
  bes2 g:m | c:m7 f:9
  bes1 | c2:m7 f:9  bes g:7
  c4:7 bes/d ees:m6 c:7/e | f2 e4:maj7/fis fis:9 | b2 gis:m % 50a
  cis2:m7 fis:9 | b gis:m | cis:m7 fis
  d2 b:m | e:m7 a:9 | fis fis:maj7
  fis2:6 fis | b:m7 e:9
  a2 fis:m | b:m7 e:9 % 51a
  a1 | b2:m7 e:9 | a fis
  b4 a/cis d:m6 b:7/dis | e2 ees4:maj7/f f:9
  bes2 g:m | c:m7 f:9 | bes g:m
  c2:m7 f:7 | bes g:m | c2..:m7 ees8:maj7/f % 52a
  r2 f4.:7 bes8 | s2 g:m | c:m7 f4.:7 bes8
  s2 g:m | c:m7 f4.:7 bes8 | s2 bes/d
  ees2:7 e:dim7 | bes1/f | f4.:7 bes4 bes4.:13.11+
}

melody = \relative {
  \global
  r2 r4 r8\fermata cis''^\markup\bold PATSY:
  b8 8 8 cis b4 cis8 8
  a8 8 8 e cis4 r
  d8 e fis a cis b cis b % 46b
  e,4 r r cis'8 8
  b8 a b cis b16 a8. r8 b % 46c
  a8 8 8 8 fis16 16 r8 r fis
  b16 8. 8 8 8 fis gis a % 47a
  b4 r4 cis2\fermata
  \tripletFeel 8 {
    \repeat volta 2 {
      a4^\markup\bold "(Add KNIGHTS (2nd time):" 4 8 4 fis8
      a4 r fis8(e) fis a % 47b
      r4 r8 a'8 fis4 r8 cis
      b8 cis d fis e4 r
      a,4 4 8 4 fis8 % 47c
      a4 r fis8(e) fis a
      r4 r8 a'8 fis4 r8 cis
      b8 cis d fis e4 r8 e,^\markup\bold "PATSY (both times):" % 47d
      b'8 8 \tuplet 3/2 {b b cis} cis4 r8 cis
      a8 8 8 8 fis8 4 cis8 % 48a
      b8 cis d fis cis' b cis b
      e,4 r r cis'8 8 % 48b
      b8 a b cis b4 \teeny b8 8 \normalsize
      a8 8 \tuplet 3/2 {a8 8 fis~} fis4 r8 fis
      b8 8 8 8 8 fis gis a % 48c
    }
    \alternative {
      {b4 r cis2}
      {b4 r r2 \bar "||" \key bes \major}
    }
    bes4^\markup\bold ARTHUR: 4 8 4 g8 % 48d
    bes4 r g8(f) g bes
    r4 r8 bes' g4 r8 d
    c8 d ees g f4 r % 49a
    bes,4 4 4 4
    bes4 4 g8 f g bes
    r4 r8 bes'8 g4 r8 d % 49b
    c8 d ees g f4 r
    c8 8 \tuplet 3/2 {c c d~} d4 r
    bes8 8 8 8 g4 r % 49c
    ees8 f g bes d c d c
    f,4 r r r8 d'^\markup\bold PATSY: % 49d
    c8 bes c d c4 8 8
    bes8 8 \tuplet 3/2 {bes bes g~} g4 8^\markup\bold ARTHUR: 8
    c8 8 8 8 8 g a bes % 50a
    c4 r r2 \bar "||" \key b \major
    b4^\markup\bold "ALL KNIGHTS:" 4 8 4 gis8
    b4 r gis8(fis) gis b % 50b
    r4 r8 b'8 gis4 r8 dis8
    cis8 dis e gis fis4 r \bar "||" \key d \major
    d4 4 8 4 b8 % 50c
    d4 r b8(a) b cis~
    cis1~
    cis2 r \bar "||" \key a \major % 50d
    b8^\markup\bold "PATSY & ARTHUR:" 8 \tuplet 3/2 {b b cis~}
    cis4 r8 cis
    a8 8 \tuplet 3/2 {8 8 fis} r4 fis8 e % 51a
    d8 e fis a cis b cis b
    e,4 r r r8 cis' % 51b
    b8 a b cis b4 b8 8
    a8 8 \tuplet 3/2 {a a fis~} fis4 r8 fis
    b8 8 8 8 8 fis gis a % 51c
    b4 r r2 \bar "||" \key bes \major
    bes4 4 8 4 g8 % 51d
    bes4 r g8(f) g bes
    R1
    R1 % 52a
    bes4 4 8 4 g8
    bes1
    r2 <d f>8^\markup\bold PATSY: _\markup\bold ARTHUR: (<des ees>) <c ees> <bes d>~ % 52b
    q1
    r2 <d f>8 (<des ees>) <c ees> <bes d>~
    q1 % 52c
    r2 <d f>8 (<des ees>) <c ees> <bes d>~
    q1~
    q1 % 52d
    R1
    R1
  }
  \bar "|."
}

wordsOne = \lyricmode {
  Some things in life are bad.
  They can real -- ly make you mad.
  Oth -- er things just make you swear and curse.
  When you're chew -- in' on life's gris -- tle,
  don't grum -- ble. Give a whis -- tle!
  And this -- 'll help things turn out for the best…
  And, al -- ways look on the bright side __ of life.
  \markup\italic "(whistle)" _ _ _ _ _ _ _
  Al -- ways look on the bright side __ of life.
  \markup\italic "(whistle)" _ _ _ _ _ _ _
  If life seems jol -- ly rot -- ten,
  there's some -- thing you've for -- got -- ten,
  and that's to laugh and smile and dance and sing.

  When you're feel -- ing in the dumps, _ _
  don't be sil -- ly chumps, __
  Just purse your lips and whis -- tle, that's the thing!
  And, _

  Al -- ways look on the bright side __ of life.
  \markup\italic "(whistle)" _ _ _ _ _ _ _
  Just be -- fore you draw your ter -- min -- al breath.
  \markup\italic "(whistle)" _ _ _ _ _ _ _
  Life is full of grit, __ when you look at it.
  Life's a laugh and death's a joke, it's true.
  You'll see it's all a show.
  Keep 'em laugh -- ing as you go! __
  Just re -- mem -- ber that the last laugh is on you!
  Al -- ways look on the bright side __ of life.
  \markup\italic "(whistle)" _ _ _ _ _ _ _
  Al -- ways look on the right side __ of life.

  Life is quite ab -- surd, __
  and death's the fi -- nal word.
  You must al -- ways face the cur -- tain with a bow!
  For -- get a -- bout your sin.
  Give the au -- di -- ence a grin. __
  En -- joy it, it's your last chance an -- y -- how!
  Al -- ways look on the bright side __ of life.
  Al -- ways look on the bright side __ of life.
  side __ of life, __
  side __ of life. __
}

wordsTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  For life is quite ab -- surd, __ _
  and death's the fi -- nal word.
  You must al -- ways face the cur -- tain with a bow!

  _ For -- get a -- bout your sin.
  Give the au -- di -- ence a grin. __
  En -- joy it, it's your last chance an -- y- _ _ how!
}

wordsSingle = \lyricmode {
  Some things in life are bad.
  They can real -- ly make you mad.
  Oth -- er things just make you swear and curse.
  When you're chew -- in' on life's gris -- tle,
  don't grum -- ble. Give a whis -- tle!
  And this -- 'll help things turn out for the best…
  
  And, al -- ways look on the bright side __ of life.
  \markup\italic "(whistle)" _ _ _ _ _ _ _
  Al -- ways look on the bright side __ of life.
  \markup\italic "(whistle)" _ _ _ _ _ _ _
  If life seems jol -- ly rot -- ten,
  there's some -- thing you've for -- got -- ten,
  and that's to laugh and smile and dance and sing.
  When you're feel -- ing in the dumps, _ _
  don't be sil -- ly chumps, __
  Just purse your lips and whis -- tle, that's the thing!

  And, al -- ways look on the bright side __ of life.
  \markup\italic "(whistle)" _ _ _ _ _ _ _
  Al -- ways look on the bright side __ of life.
  \markup\italic "(whistle)" _ _ _ _ _ _ _

  For life is quite ab -- surd, __ _
  and death's the fi -- nal word.
  You must al -- ways face the cur -- tain with a bow!

  _ For -- get a -- bout your sin.
  Give the au -- di -- ence a grin. __
  En -- joy it, it's your last chance an -- y -- how!

  Al -- ways look on the bright side __ of life.
  \markup\italic "(whistle)" _ _ _ _ _ _ _
  Just be -- fore you draw your ter -- min -- al breath.
  \markup\italic "(whistle)" _ _ _ _ _ _ _
  Life is full of grit, __ when you look at it.
  Life's a laugh and death's a joke, it's true.
  You'll see it's all a show.
  Keep 'em laugh -- ing as you go! __
  Just re -- mem -- ber that the last laugh is on you!
  Al -- ways look on the bright side __ of life.
  \markup\italic "(whistle)" _ _ _ _ _ _ _
  Al -- ways look on the right side __ of life.

  Life is quite ab -- surd, __
  and death's the fi -- nal word.
  You must al -- ways face the cur -- tain with a bow!
  For -- get a -- bout your sin.
  Give the au -- di -- ence a grin. __
  En -- joy it, it's your last chance an -- y -- how!
  Al -- ways look on the bright side __ of life.
  Al -- ways look on the bright side __ of life.
  side __ of life, __
  side __ of life. __
}

wordsMidi = \lyricmode {
  "Some " "things " "in " "life " "are " "bad. "
  "\nThey " "can " real "ly " "make " "you " "mad. "
  "\nOth" "er " "things " "just " "make " "you " "swear " "and " "curse. "
  "\nWhen " "you're " chew "in' " "on " "life's " gris "tle, "
  "\ndon't " grum "ble. " "Give " "a " whis "tle! "
  "\nAnd " this "'ll " "help " "things " "turn " "out " "for " "the " "best… "
  
  "\nAnd, " al "ways " "look " "on " "the " "bright " "side "  "of " "life. "
  "(whistle)" _ _ _ _ _ _ _
  "\nAl" "ways " "look " "on " "the " "bright " "side "  "of " "life. "
  "(whistle)" _ _ _ _ _ _ _
  "\nIf " "life " "seems " jol "ly " rot "ten, "
  "\nthere's " some "thing " "you've " for got "ten, "
  "\nand " "that's " "to " "laugh " "and " "smile " "and " "dance " "and " "sing. "
  "\nWhen " "you're " feel "ing " "in " "the " "dumps, " "" ""
  "\ndon't " "be " sil "ly " "chumps, " 
  "\nJust " "purse " "your " "lips " "and " whis "tle, " "that's " "the " "thing! "

  "\nAnd, " al "ways " "look " "on " "the " "bright " "side "  "of " "life. "
  "(whistle)" _ _ _ _ _ _ _
  "\nAl" "ways " "look " "on " "the " "bright " "side "  "of " "life. "
  "(whistle)" _ _ _ _ _ _ _

  "\nFor " "life " "is " "quite " ab "surd, "  ""
  "\nand " "death's " "the " fi "nal " "word. "
  "\nYou " "must " al "ways " "face " "the " cur "tain " "with " "a " "bow! "

  "" "\nFor" "get " a "bout " "your " "sin. "
  "\nGive " "the " au di "ence " "a " "grin. " 
  "\nEn" "joy " "it, " "it's " "your " "last " "chance " an y "how! "

  "\nAl" "ways " "look " "on " "the " "bright " "side "  "of " "life. "
  "(whistle)" _ _ _ _ _ _ _
  "\nJust " be "fore " "you " "draw " "your " ter min "al " "breath. "
  "(whistle)" _ _ _ _ _ _ _
  "\nLife " "is " "full " "of " "grit, "  "when " "you " "look " "at " "it. "
  "\nLife's " "a " "laugh " "and " "death's " "a " "joke, " "it's " "true. "
  "\nYou'll " "see " "it's " "all " "a " "show. "
  "\nKeep " "'em " laugh "ing " "as " "you " "go! " 
  "\nJust " re mem "ber " "that " "the " "last " "laugh " "is " "on " "you! "
  "\nAl" "ways " "look " "on " "the " "bright " "side "  "of " "life. "
  "(whistle)" _ _ _ _ _ _ _
  "\nAl" "ways " "look " "on " "the " "right " "side "  "of " "life. "

  "\nLife " "is " "quite " ab "surd, " 
  "\nand " "death's " "the " fi "nal " "word. "
  "\nYou " "must " al "ways " "face " "the " cur "tain " "with " "a " "bow! "
  "\nFor" "get " a "bout " "your " "sin. "
  "\nGive " "the " au di "ence " "a " "grin. " 
  "\nEn" "joy " "it, " "it's " "your " "last " "chance " an y "how! "
  "\nAl" "ways " "look " "on " "the " "bright " "side "  "of " "life. "
  "\nAl" "ways " "look " "on " "the " "bright " "side "  "of " "life. "
  "\nside "  "of " "life, " 
  "\nside "  "of " "life. " 
}

pianoRHone = \relative {
  \global \oneVoice
  r4\omit\mp \voiceOne d' <gis, cis fis> <cis' cis'>8\fermata cis
  b4. cis8 b4 cis
  <e, a>4. e8 <a, cis>4 e'
  d8 e fis a cis b cis b % 46b
  \oneVoice <cis, e>8 cis' e a cis4 cis, \voiceOne
  b8 a b cis b16 a8.~8 b \oneVoice % 46c
  a4 r fis8 \ottava #1 fis''32 gis fis gis fis8 \ottava #0 fis,,
  \voiceOne b2 8 fis gis a \oneVoice % 47a
  b8 d, fis a <d, f gis cis>2\fermata
  \tripletFeel 8 {
    \repeat volta 2 {
      <cis e a>4\omit\mf 4 <cis fis a>8 4 fis8
      <d fis a>4 4 <d fis>8 e q <cis e a> % 47b
      r4 <a' cis e>8 a' <a, fis'>4 r8 <a cis>
      b8 cis <fis, b d> fis' <gis, d' e>4 <d e gis b>
      <cis e a>4 4 8 4 fis8 % 47c
      <d fis a>4 4 <d fis>8 e q <cis e a>
      r4 <a' cis e>8 a' <a, fis'>4 r8 <a cis>
      b8 cis <fis, b d> fis' <gis, d' e>4 <d e gis b>8 e % 47d
      \voiceOne b'4 8 cis~4. 8
      a4 <cis, e a> fis4. cis8 % 48a
      \voiceOne b8 cis d fis cis' b cis b \oneVoice
      <cis, e>8 cis' \tuplet 3/2 {e gis e} fis4 <e, cis'> % 48b
      \voiceOne b'8 a b cis b2
      a4 a8 fis~4. 8
      <dis b'>4 <e b'> b'8 fis gis a \oneVoice % 48c
    }
    \alternative {
      {<e gis b>4 r <d f gis cis>2}
      {<e gis b>4 r <ees g bes d> <ees g a c> \bar "||" \key bes \major}
    }
    <d f bes>4 4 <d g bes>8 4 g8 % 48d
    <ees g bes>4 4 <ees g>8 f q <d f bes>
    r4 <bes' d f>8 bes' <bes, g'>4 r8 <bes d>
    c8 d <g, c ees> g' <a, ees' f>4 \tuplet 3/2 {f8 g f} % 49a
    <d f bes>4 4 <d g bes> q
    <ees g bes>4 q <ees g>8 f q <d f bes>
    r4 <bes' d f>8 bes' <bes, g'>4 r8 <bes d> % 49b
    c8 d <g, c ees> g' <a, ees' f>4 f
    \voiceOne c'4 8 d~d2 \oneVoice
    bes4 <d, f bes> \voiceOne g4. d8 \oneVoice % 49c
    <c ees>8 <d f> <ees g> <g bes> \voiceOne d' c d c
    f,4 a' g f8 d % 49d
    c8 bes c d c2
    bes4 8 g~2
    <ees c'>4 <f c'> c'8 g a bes % 50a
    \oneVoice <f a c>4 r <e gis b dis> <e gis ais cis> \bar "||" \key b \major
    <dis fis b>4 q <dis gis b>8 q4 gis8
    <e gis b>4 4 <e gis>8 fis q <dis fis b> % 50b
    r4 <dis' fis>8 b' <b, dis gis>4 r8 <b dis>
    cis8 dis <gis, cis e> gis' \tuplet 3/2 {<ais, cis fis> gis ais} \tuplet 3/2 {b bis cis} \bar "||" \key d \major
    <fis, a d>4 q <fis b d>8 q4 b8 % 50c
    <g b d>4 4 <g b>8 a q cis~
    <cis, fis ais cis>4 \tuplet 3/2 {a'8 cis fis} <a, cis eis>4 \tuplet 3/2 {a8 cis eis}
    <ais, cis dis>4 \tuplet 3/2 {fis8 ais dis} <ais cis>4 ais \bar "||" \key a \major % 50d
    \voiceOne b4 8 cis~4. 8
    a4 <cis, e a> fis4. cis8 % 51a
    <b d>8 <cis e> <d fis> <fis a> cis' b cis b
    <cis, e>8 cis' \tuplet 3/2 {e gis e} \tuplet 3/2 {fis cis a} fis cis' % 51b
    b8 a b cis b2
    a4 8 fis~4. 8
    <dis b'>4 <e b'> b'8 fis gis a % 51c
    \oneVoice <e gis b>4 r <ees g bes d> <ees g aes c> \bar "||" \key bes \major
    <d f bes>4 4 8 4 g8 % 51d
    <e g bes>4 4 <e g>8 f q <d f bes>
    r <bes' d f>4 fis'8 <bes, d g> bes' q d,
    c8 d <g, bes ees> g' \tuplet 3/2 {<a, c f> f ges} \tuplet 3/2 {g aes a} % 52a
    <d, f bes>4 4 <d g bes>8 4 g8
    <ees g bes>4 \tuplet 3/2 {<g bes ees>8 f' fis} <bes, ees g> bes' g <ees g bes d>
    r2 <d f>8 <des e> <c ees> <bes d> % 52b
    r8 cis \tuplet 3/2 {d f bes} <bes, d g>8 8 r d
    <ees, g bes c> d' q <ees, g a d> <d' f> <des e> <c ees> <bes d>
    r8 ces \tuplet 3/2 {d f bes} <bes, d g>8 8 r d % 52c
    <ees, g bes c> d' q <ees, g a d> <d' f> <des e> <c ees> <b d>
    r8 <d f bes>4 g8 q4 g8 <ees g bes>
    r8 <g bes des>4 bes8 <e, bes' d> bes' <ees, g d'>4 % 52d
    <f bes d>4 r4 r2
    <d f>8 <des e> <c ees> <bes d>~4 <aes d e g bes>8-> r
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s4\omit\mp fis8 a s2
  <d fis>2 <d f>
  s1
  d2 <d f> % 46b
  s1
  <d fis>2 2 % 46c
  s1
  <dis fis>1 % 47a
  s1
  \tripletFeel 8 {
    \repeat volta 2 {
      s1*8
      \once\partCombineApart r4\omit\mf <d fis a> \once\partCombineApart r <d fis gis> % 47d+
      s2 \once\partCombineApart r4 <a cis e> % 48a
      s2 <d fis gis>
      s1 % 48b
      \once\partCombineApart r4 <d fis> \once\partCombineApart r <d fis gis>
      \once\partCombineApart r4 <cis e> ais~<ais cis e>
      s2 f'4 fis % 48c
    }
    \alternative {
      {s1}
      {s1 \key bes \major}
    }
    s1*8
    \once\partCombineApart r4 <ees g bes> \once\partCombineApart r4 <ees g a>
    s2 \once\partCombineApart r4 <bes d f> % 49c
    s2 <ees a>4 <ees g>
    d4 <bes' d>2 4 % 49d
    \once\partCombineApart r4 <ees, g> \once\partCombineApart r4 <ees g a>
    \once\partCombineApart r <d f> b~<b d f>
    s2 ges'4 g4 % 50a
    s1 \key b \major
    s1*4 \key d \major
    s1*4 \key a \major
    \once\partCombineApart r4 <d fis a> \once\partCombineApart r <d fis gis> % 50d+
    s2 \once\partCombineApart r4 <a cis e> % 51a
    s2 <d fis gis>
    s1 % 51b
    r4 <d fis> r <d fis gis>
    r4 <cis e> ais~<ais cis e>
    s1*2 \key bes \major
    s1*15
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp
  s1*8
  \repeat volta 2 {
    s1\mf
    s1*14
  }
  \alternative {{s1}{s1}}
  s1*25
}

pianoLH = \relative {
  \global
  b,,8\omit\mp b'~4 <e, d'>2\fermata
  <b' a'>2 <d gis>
  <cis a'>2 <fis, e'>
  <b a'>2 <e gis> % 46b
  a,2 r
  <b a'>2 <e b'> % 46c
  <a cis>4 r <fis ais e'>2
  <b, a'>1 % 47a
  e2 e,\fermata
  \tripletFeel 8 {
    \repeat volta 2 {
      a4.\omit\mf 8 fis4 fis'8 fis,
      b4. 8 e,4 e'8 e, % 47b
      a4. 8 fis4 fis'8 fis,
      b4 <fis' a>8 b, e,4 e'8 e,
      a4. 8 fis4 fis'8 fis, % 47c
      b4. 8 e,4 e'8 e,
      a4. 8 fis4 fis'8 fis,
      b4 <fis' a>8 b, e4 e, % 47d
      b'4. 8 e,4. 8
      a4~ \tuplet 3/2 {a8 gis g} fis4. 8 % 48a
      b4 <fis' a>8 b, e4 e,
      a4 r r a % 48b
      b4. 8 e,4. 8
      a4~ \tuplet 3/2 {a8 gis g} fis4. 8
      b4 cis d dis % 48c
    }
    \alternative {
      {e4 e, e' \tuplet 3/2 {e,8 fis gis}}
      {e'4 e, f' \tuplet 3/2 {f,8 g a} \key bes \major}
    }
    bes4. 8 g4 g'8 g, % 48d
    c4. 8 f,4 f'8 f,
    bes4. 8 g4 g'8 g,
    c4 <g' bes>8 c, f4 f, % 49a
    bes4. 8 g4. 8
    c4. 8 f,4. 8
    bes4. 8 g4 g'8 g, % 49b
    c4 <g' bes>8 c, f4 f,
    c'4. 8 f,4. 8
    bes4~ \tuplet 3/2 {bes8 a aes} g4. 8 % 49c
    c4. 8 f,4. 8
    bes4 r r bes % 49d
    c4. 8 f,4. 8
    bes4. 8 g4. 8
    c4 d ees e % 50a
    f4 f, fis' fis, \key b \major
    b4. 8 gis4 gis'8 gis,
    cis4. 8 fis,4 4 % 50b
    b4. 8 gis4 gis'8 gis,
    cis4 <gis' b>8 cis, fis4 fis,8 e \key d \major
    d4. 8 b4 b'8 b, % 50c
    e4. 8 a,4 a'8 g
    fis4. 8 cis4. 8
    fis4. 8 cis4 fis \key a \major % 50d
    b4. 8 e,4. 8
    a4 ~ \tuplet 3/2 {a8 gis g} fis4. 8 % 51a
    b4. 8 e,4. 8
    a4 <a' cis e fis> <a cis e fis> <a cis e>8 r % 51b
    b,4. 8 e,4. 8
    a4~ \tuplet 3/2 {a8 gis g} fis4. 8
    b4 cis d dis % 51c
    e4 e, f' \tuplet 3/2 {f,8 g a} \key bes \major
    bes4. 8 g4 g'8 g, % 51d
    c4. 8 f,4. 8
    bes4. 8 g4. 8
    c4. 8 \tuplet 3/2 {f8 f, ges} \tuplet 3/2 {g aes a} % 52a
    bes4. 8 g4 g'8 g,
    c2 4. f,8
    r8 <f, f'>8~4 f'8 g a bes % 52b
    bes,4. bes'8 g4. 8
    c4. 8 f,8 g a bes
    bes,4. bes'8 g4. 8 % 52c
    c4. 8 f, g a bes
    bes,4. bes'8 <d, d'>4. 8
    <ees ees'>4. 8 <e e'>4 4 % 52d
    <f f'>4 r <f, f'> r
    f'8 g a bes~4 <bes, bes'>8-> r
  }
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Melody staff
          \new Staff = melody \with {
            instrumentName = #""
            shortInstrumentName = #""
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
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
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Melody staff
          \new Staff = melody \with {
            instrumentName = #""
            shortInstrumentName = #""
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Melody staff
          \new Staff = melody \with {
            instrumentName = #""
            shortInstrumentName = #""
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
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
  \bookOutputSuffix "midi"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff <<
                                % Melody staff
          \new Staff = melody \with {
            instrumentName = #""
            shortInstrumentName = #""
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \melody
            \addlyrics \wordsMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
