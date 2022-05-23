\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Down in the Glen"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Harry Gordon"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Tommie Connor"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Slowly with expression" 4=80
  s4
  s2.*2
  \tempo 4=75
  s2.*2
  \tempo 4=80 % 1b
  s2.*6
  \tempo 4=75 s2. s2\tempo 4=80
  s4
  \repeat volta 2 {
    \tempo 4=80
    s2.*22
    \tempo 4=70 s2.*2 \tempo 4=80 % 4b++
    s2.*3
    \alternative {
      {
        s2.*3
        s4
        \tempo 4=70 s2 s2.
      }
      {
        \tempo 4=80
        s2.*3
        s4
        \tempo 4=70
        s2
        s2
      }
    }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s4 s2.*4
  \mark \markup { \box "1b" }    s2.*4
  \mark \markup { \box "2a" }    s2.*3 s2
  \mark \markup { \box "2b" } s4
  \repeat volta 2 {
    s2.*4
    \mark \markup { \box "3a" }    s2.*5
    \mark \markup { \box "3b" }    s2.*5
    \mark \markup { \box "4a" }    s2.*6
    \mark \markup { \box "4b" }    s2.*5
    \mark \markup { \box "5a" }    s2.*2
    \alternative {
      {
        s2.*3
        \mark \markup { \box "5b" }    s2.*2
      }
      {
        s2.*4 s2
      }
    }
  }
}

sopranoI = \relative {
  \global
  r4
  R2.*4
  ees''2^pp des4 % 1b
  ees2 d4
  bes2 a4
  aes2 r4
  r4 c d % 2a
  ees4 bes2
  ees4^\markup\italic Melody ^\markup\italic "poco rit." \(g,8 g f ees
  bes'2\) \bar "||" \break bes4^\markup\italic Melody ^\markup\italic "a tempo" ^\markup\smallCaps Refrain.
  \repeat volta 2 {
    ees,4.^\mf f8 g aes % 2b
    bes2 ees,8 ees'
    c4. bes8 aes c
    bes2 8 8
    c4 4 aes8 8 % 3a
    bes4 2
    aes4 4 4
    g2 bes4^\markup\italic Melody
    ees,4. f8 g aes
    bes2 ees,8 ees' % 3b
    c4. bes8 aes c
    bes2 8 8
    c4 4 aes8 8
    bes4 2
    aes4 4 4 % 4a
    g2 ees4^\markup\italic Duet
    ees'4. d8 ees c
    bes4 4 r
    r4 c d
    bes2 ees,4^\markup\italic Duet
    ees'4. d8 ees c % 4b
    b4 ees^\markup\italic ten. r
    r4^\markup\italic rall. c\(d
    b2\) bes4^\markup\italic Melody
    ees,4.^\markup\italic "a tempo" f8 g aes
    bes2 ees,8 ees' % 5a
    c4. bes8 aes c
    \alternative {
      {
        bes2 c8 g
        aes4 4 bes8 f
        g4^\< ees'2\!^\markup\italic ten.
        r4 c^\markup\italic rall. d % 5b
        ees2 bes4
      }
      {
        bes2 4
        c4 4 d8 bes
        ees4^\< g2\!^\markup\italic ten.
        f4^\f ees^\markup\italic rall.
        f
        ees2
      }
    }
  }
}

wordsSopI = \lyricmode {
  Twi -- light fall -- ing in the West,
  love is call -- ing,
  "\"Shep" -- herd come home to "rest.\""
  At hush of e -- ven -- tide
  o'er the hills be -- yond the Clyde
  I go roam -- ing to my Hea -- ven
  Down in the Glen.
  Though hum -- ble it may be,
  There an An -- gel waits for me
  In that lone -- ly, lit -- tle hea -- ven,
  Down in the Glen.
  A -- cross the moon -- lit hea -- ther as I roam,
  'Tis soon we'll be to -- ge -- ther
  we call "\"home\""
  The sheep are in the fold
  And there's peace worth more than gold,
  For a shep -- herd in that hea -- ven in the Glen.
  At

  gold, a shep -- herd in that hea -- ven down in the Glen.
}

wordsSopISingle = \lyricmode {
  Twi -- light fall -- ing in the West,
  love is call -- ing,
  "\"Shep" -- herd come home to "rest.\""
  At hush of e -- ven -- tide
  o'er the hills be -- yond the Clyde
  I go roam -- ing to my Hea -- ven
  Down in the Glen.
  Though hum -- ble it may be,
  There an An -- gel waits for me
  In that lone -- ly, lit -- tle hea -- ven,
  Down in the Glen.
  A -- cross the moon -- lit hea -- ther as I roam,
  'Tis soon we'll be to -- ge -- ther
  we call "\"home\""
  The sheep are in the fold
  And there's peace worth more than gold,
  For a shep -- herd in that hea -- ven in the Glen.

  At hush of e -- ven -- tide
  o'er the hills be -- yond the Clyde
  I go roam -- ing to my Hea -- ven
  Down in the Glen.
  Though hum -- ble it may be,
  There an An -- gel waits for me
  In that lone -- ly, lit -- tle hea -- ven,
  Down in the Glen.
  A -- cross the moon -- lit hea -- ther as I roam,
  'Tis soon we'll be to -- ge -- ther
  we call "\"home\""
  The sheep are in the fold
  And there's peace worth more than gold,
  a shep -- herd in that hea -- ven down in the Glen.
}

wordsSopIMidi = \lyricmode {
  "Twi" "light " fall "ing " "in " "the " "West, "
  "\nlove " "is " call "ing, "
  "\n\"Shep" "herd " "come " "home " "to " "rest.\" "
  "\nAt " "hush " "of " e ven "tide "
  "\no'er " "the " "hills " be "yond " "the " "Clyde "
  "\nI " "go " roam "ing " "to " "my " Hea "ven "
  "\nDown " "in " "the " "Glen. "
  "\nThough " hum "ble " "it " "may " "be, "
  "\nThere " "an " An "gel " "waits " "for " "me "
  "\nIn " "that " lone "ly, " lit "tle " hea "ven, "
  "\nDown " "in " "the " "Glen. "
  "\nA" "cross " "the " moon "lit " hea "ther " "as " "I " "roam, "
  "\n'Tis " "soon " "we'll " "be " to ge "ther "
  "\nwe " "call " "\"home\" "
  "\nThe " "sheep " "are " "in " "the " "fold "
  "\nAnd " "there's " "peace " "worth " "more " "than " "gold, "
  "\nFor " "a " shep "herd " "in " "that " hea "ven " "in " "the " "Glen. "

  "\nAt " "hush " "of " e ven "tide "
  "\no'er " "the " "hills " be "yond " "the " "Clyde "
  "\nI " "go " roam "ing " "to " "my " Hea "ven "
  "\nDown " "in " "the " "Glen. "
  "\nThough " hum "ble " "it " "may " "be, "
  "\nThere " "an " An "gel " "waits " "for " "me "
  "\nIn " "that " lone "ly, " lit "tle " hea "ven, "
  "\nDown " "in " "the " "Glen. "
  "\nA" "cross " "the " moon "lit " hea "ther " "as " "I " "roam, "
  "\n'Tis " "soon " "we'll " "be " to ge "ther "
  "\nwe " "call " "\"home\" "
  "\nThe " "sheep " "are " "in " "the " "fold "
  "\nAnd " "there's " "peace " "worth " "more " "than " "gold, "
  "\na " shep "herd " "in " "that " hea "ven " "down " "in " "the " "Glen. "
}

sopranoII = \relative {
  \global
  r4
  R2.*4
  bes'4\omit\mf^\markup{\dynamic mf \italic Melody} bes g % 1b
  aes8 g aes4 f
  ees8 d ees g f ees
  f2 bes,4
  c8 ees aes4 c % 2a
  bes4 g2
  g4 bes a
  aes2 4
  \repeat volta 2 {
    g4.^\mf aes8 bes c % 2b
    des2 g,8 8
    aes4. g8 f aes
    g2 c8^\markup\italic Melody g
    aes4 4 bes8 f % 3a
    g4 2
    f4 ees f
    ees2 aes4
    g4. aes8 bes c
    des2 g,8 8 % 3b
    aes4. g8 f aes
    g2 c8^\markup\italic Melody g
    aes4 4 bes8 f
    g4 2
    f4 ees f % 4a
    ees2 4^\markup\italic Duet
    c'4. b8 c aes
    g4 4 4^\markup\italic Solo
    aes8 g aes4 bes8 f
    g2 ees4^\markup\italic Duet
    c'4. b8 c a % 4b
    g4 b^\markup\italic ten. r4 % original has sop2 follow alto line as an option
    r4^\markup\italic rall. g\( fis
                                g2\) aes4
    g4.^\markup\italic "a tempo" aes8 bes c
    des2 g,8 8 % 5a
    aes4. g8 f aes
    \alternative {
      {
        g2 8 e
        f4 ees f8 d
        ees4^\< g2\!^\markup\italic ten.
        r4 aes^\markup\italic rall. 4 % 5b
        g2 aes4
      }
      {
        g2 c8^\markup\italic Melody g
        aes4 4 bes8 f
        g4^\< c2\!^\markup\italic ten.
        c4^\f c^\markup\italic rall. d
        bes2
      }
    }
  }
  \bar "|."
}

wordsSopII = \lyricmode {
  Twi -- light is soft -- ly fall -- ing
  as the sun sinks in the West,
  The one I love is call -- ing,
  "\"Shep" -- herd to "rest.\""
  At hush of e -- ven -- tide
  o'er the hills be -- yond the Clyde
  I go roam -- ing to my Hea -- ven
  Down in the Glen.
  Though hum -- ble it may be,
  There an An -- gel waits for me
  In that lone -- ly, lit -- tle hea -- ven,
  Down in the Glen.
  A -- cross the moon -- lit hea -- ther
  My las -- sie calls as I roam,
  'Tis soon we'll be to -- ge -- ther
  we call "\"home\""
  The sheep are in the fold
  And there's peace worth more than gold,
  For a shep -- herd in that hea -- ven in the Glen.
  At

  gold, for a shep -- herd in that hea -- ven down in the Glen.
}

wordsSopIISingle = \lyricmode {
  Twi -- light is soft -- ly fall -- ing
  as the sun sinks in the West,
  The one I love is call -- ing,
  "\"Shep" -- herd to "rest.\""
  At hush of e -- ven -- tide
  o'er the hills be -- yond the Clyde
  I go roam -- ing to my Hea -- ven
  Down in the Glen.
  Though hum -- ble it may be,
  There an An -- gel waits for me
  In that lone -- ly, lit -- tle hea -- ven,
  Down in the Glen.
  A -- cross the moon -- lit hea -- ther
  My las -- sie calls as I roam,
  'Tis soon we'll be to -- ge -- ther
  we call "\"home\""
  The sheep are in the fold
  And there's peace worth more than gold,
  For a shep -- herd in that hea -- ven in the Glen.

  At hush of e -- ven -- tide
  o'er the hills be -- yond the Clyde
  I go roam -- ing to my Hea -- ven
  Down in the Glen.
  Though hum -- ble it may be,
  There an An -- gel waits for me
  In that lone -- ly, lit -- tle hea -- ven,
  Down in the Glen.
  A -- cross the moon -- lit hea -- ther
  My las -- sie calls as I roam,
  'Tis soon we'll be to -- ge -- ther
  we call "\"home\""
  The sheep are in the fold
  And there's peace worth more than gold,
  for a shep -- herd in that hea -- ven down in the Glen.
}

wordsSopIIMidi = \lyricmode {
  "Twi" "light " "is " soft "ly " fall "ing "
  "\nas " "the " "sun " "sinks " "in " "the " "West, "
  "\nThe " "one " "I " "love " "is " call "ing, "
  "\n\"Shep" "herd " "to " "rest.\" "
  "\nAt " "hush " "of " e ven "tide "
  "\no'er " "the " "hills " be "yond " "the " "Clyde "
  "\nI " "go " roam "ing " "to " "my " Hea "ven "
  "\nDown " "in " "the " "Glen. "
  "\nThough " hum "ble " "it " "may " "be, "
  "\nThere " "an " An "gel " "waits " "for " "me "
  "\nIn " "that " lone "ly, " lit "tle " hea "ven, "
  "\nDown " "in " "the " "Glen. "
  "\nA" "cross " "the " moon "lit " hea "ther "
  "\nMy " las "sie " "calls " "as " "I " "roam, "
  "\n'Tis " "soon " "we'll " "be " to ge "ther "
  "\nwe " "call " "\"home\" "
  "\nThe " "sheep " "are " "in " "the " "fold "
  "\nAnd " "there's " "peace " "worth " "more " "than " "gold, "
  "\nFor " "a " shep "herd " "in " "that " hea "ven " "in " "the " "Glen. "

  "\nAt " "hush " "of " e ven "tide "
  "\no'er " "the " "hills " be "yond " "the " "Clyde "
  "\nI " "go " roam "ing " "to " "my " Hea "ven "
  "\nDown " "in " "the " "Glen. "
  "\nThough " hum "ble " "it " "may " "be, "
  "\nThere " "an " An "gel " "waits " "for " "me "
  "\nIn " "that " lone "ly, " lit "tle " hea "ven, "
  "\nDown " "in " "the " "Glen. "
  "\nA" "cross " "the " moon "lit " hea "ther "
  "\nMy " las "sie " "calls " "as " "I " "roam, "
  "\n'Tis " "soon " "we'll " "be " to ge "ther "
  "\nwe " "call " "\"home\" "
  "\nThe " "sheep " "are " "in " "the " "fold "
  "\nAnd " "there's " "peace " "worth " "more " "than " "gold, "
  "\nfor " "a " shep "herd " "in " "that " hea "ven " "down " "in " "the " "Glen. "
}

alto = \relative {
  \global
  r4
  R2.*4
  g'2^\mp e4 % 1b
  f2 aes4
  g2 c,4
  ees4(d) r
  r4 ees f % 2a
  g4 ees d
  c4 ees f
  ees4(d) d
  \repeat volta 2 {
    bes4.^\mf c8 d ees % 2b
    f4(g) des8 8
    ees4. 8 d d
    f4(ees) e8 8
    f4 ees d8 8 % 3a
    ees4(d) des
    c4 4 d
    bes2 d4
    bes4. c8 d ees
    f4(g) des8 8 % 3b
    ees4. 8 d d
    f4(ees) e8 8
    f4 ees d8 8
    ees4(d) des
    c4 4 d % 4a
    bes2 r4
    R2.
    R2.
    r4 ees f
    ees2 r4
    R2. % 4b
    r4 r d8^\markup\italic Solo 8
    e8^\markup\italic rall. g a4 b
    g2 d4
    bes4.^\markup\italic "a tempo" c8 d ees
    f4(g) des8 8 % 5a
    ees4. 8 d d
    \alternative {
      {
        f4(ees) 8 bes
        c4 4 d8 aes
        bes4^\< c2\!^\markup\italic ten.
        f4^\markup\italic Melody ees^\markup\italic rall. f % 5b
        ees2 d4
      }
      {
        f4(ees) e
        f4 ees f8 aes
        bes4^\< ees,2\!^\markup\italic ten.
        aes4^\f 4^\markup\italic rall. 4
        g2
      }
    }
  }
  \bar "|."
}

wordsAlto = \lyricmode {
  Twi -- light fall -- ing in the West,
  love is call -- ing, _
  "\"Shep" -- herd to "rest.\"" __
  At hush of e -- ven -- tide __
  o'er the hills be -- yond the Clyde
  I go roam -- ing to my Hea -- ven
  Down in the Glen.
  Though hum -- ble it may be, __
  There an An -- gel waits for me __
  In that lone -- ly, lit -- tle hea -- ven,
  Down in the Glen.
  as I roam,
  In that hea -- ven we call "\"home\""
  The sheep are in the fold
  And there's peace worth more than gold,
  For a shep -- herd in that hea -- ven down in the Glen.
  At

  gold, a shep -- herd in that hea -- ven down in the Glen.
}

wordsAltoSingle = \lyricmode {
  Twi -- light fall -- ing in the West,
  love is call -- ing, _
  "\"Shep" -- herd to "rest.\"" __
  At hush of e -- ven -- tide __
  o'er the hills be -- yond the Clyde
  I go roam -- ing to my Hea -- ven
  Down in the Glen.
  Though hum -- ble it may be, __
  There an An -- gel waits for me __
  In that lone -- ly, lit -- tle hea -- ven,
  Down in the Glen.
  as I roam,
  In that hea -- ven we call "\"home\""
  The sheep are in the fold
  And there's peace worth more than gold,
  For a shep -- herd in that hea -- ven down in the Glen.

  At hush of e -- ven -- tide __
  o'er the hills be -- yond the Clyde
  I go roam -- ing to my Hea -- ven
  Down in the Glen.
  Though hum -- ble it may be, __
  There an An -- gel waits for me __
  In that lone -- ly, lit -- tle hea -- ven,
  Down in the Glen.
  as I roam,
  In that hea -- ven we call "\"home\""
  The sheep are in the fold
  And there's peace worth more than gold,
  a shep -- herd in that hea -- ven down in the Glen.
}

wordsAltoMidi = \lyricmode {
  "Twi" "light " fall "ing " "in " "the " "West, "
  "\nlove " "is " call "ing, " ""
  "\n\"Shep" "herd " "to " "rest.\" " 
  "\nAt " "hush " "of " e ven "tide " 
  "\no'er " "the " "hills " be "yond " "the " "Clyde "
  "\nI " "go " roam "ing " "to " "my " Hea "ven "
  "\nDown " "in " "the " "Glen. "
  "\nThough " hum "ble " "it " "may " "be, " 
  "\nThere " "an " An "gel " "waits " "for " "me " 
  "\nIn " "that " lone "ly, " lit "tle " hea "ven, "
  "\nDown " "in " "the " "Glen. "
  "\nas " "I " "roam, "
  "\nIn " "that " hea "ven " "we " "call " "\"home\" "
  "\nThe " "sheep " "are " "in " "the " "fold "
  "\nAnd " "there's " "peace " "worth " "more " "than " "gold, "
  "\nFor " "a " shep "herd " "in " "that " hea "ven " "down " "in " "the " "Glen. "

  "\nAt " "hush " "of " e ven "tide " 
  "\no'er " "the " "hills " be "yond " "the " "Clyde "
  "\nI " "go " roam "ing " "to " "my " Hea "ven "
  "\nDown " "in " "the " "Glen. "
  "\nThough " hum "ble " "it " "may " "be, " 
  "\nThere " "an " An "gel " "waits " "for " "me " 
  "\nIn " "that " lone "ly, " lit "tle " hea "ven, "
  "\nDown " "in " "the " "Glen. "
  "\nas " "I " "roam, "
  "\nIn " "that " hea "ven " "we " "call " "\"home\" "
  "\nThe " "sheep " "are " "in " "the " "fold "
  "\nAnd " "there's " "peace " "worth " "more " "than " "gold, "
  "\na " shep "herd " "in " "that " hea "ven " "down " "in " "the " "Glen. "
}

pianoRHone = \relative {
  \global
  c''8(g
  aes4 4) bes8(f
  g4 2)
  s4 <c, ees> <d f>
  <bes ees>2 r4 \bar "||"
  bes'4^\markup\italic "a tempo" bes g % 1b
  aes8 g aes4 f
  ees8 d ees g f ees
  <aes, f'>2 bes4
  c8 ees aes4 c % 2a
  bes4 g2
  ees'4(g,8 8 f ees'
  bes2) \bar "||" <bes, d bes'>4
  \repeat volta 2 {
    ees4. f8 g aes % 2b
    <des, bes'>2 ees8 ees'
    c4. bes8 aes c
    bes2 c8( g
    aes4 4) bes8( f % 3a
    g4 2)
    \oneVoice <c, f>4 <c ees> <d f>
    <bes ees>2 <bes d bes'>4
    \voiceOne ees4. f8 g aes
    <des, bes'>2 ees8 ees' % 3b
    c4. bes8 aes c
    bes2 c8(g
    aes4 4) bes8( f
    g4 2)
    \oneVoice <c, f>4 <c ees> <d f> % 4a
    <bes ees>2 ees4
    \voiceOne ees'4. d8 ees c
    bes4 4 g
    aes8 g aes4 bes8 f
    \oneVoice <ees g>2 ees4
    \voiceOne ees'4. d8 ees c % 4b
    b4(d^\markup\italic ten. ) d,8 8
    e8 g a4 b
    \oneVoice <b, d g>2 <d f bes>4^\markup\italic ten.
    \voiceOne ees4. f8 g aes
    <des, bes'>2 ees8 ees' % 5a
    c4. bes8 aes c
    \alternative {
      {
        bes2 c8(g
        aes4 4) bes8( f
        \oneVoice <ees g>4\!) <ees g ees'>2\!^\markup\italic ten.
        <c f>4 <c ees> <d f> % 5b
        <bes ees>2 <bes d bes'>4
      }
      {
        \voiceOne bes'2 c8(g
        aes4) 4 bes8 f
        \oneVoice <ees g>4^\< <ees g ees'>2\!^\markup\italic ten.
        <f c' ees f>4 <ees aes c ees> <f aes d f>
        <ees g bes ees>2
      }
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \partCombineApart
  e'4
  ees2 d4
  ees4 4 d8 (des
  <c f>4) s2
  s2 r4
  ees2 des4 % 1b
  ees2 b4
  bes2 a4
  c4(bes) \once\partCombineApart r4
  c2 <d f>4 % 2a
  ees2 s4
  <ees g>4 ees d8 c
  <c ees>4(<d f>) \bar "||" s4
  \repeat volta 2 {
    r4 bes r % 2b
    f'4(ees) 4
    \once\partCombineApart r4 ees d
    f4(ees) e
    ees2 d4 % 3a
    ees4 4 d8(des)
    s2.*2
    r4 bes r
    f'4(ees) 4 % 3b
    r4 ees d
    f4(ees) e
    ees2 d4
    ees4 4 d8(des)
    s2.*2 % 4a
    r4 <ees aes>4 4
    ees2 e4
    ees2 d4
    s2.
    r4 <fis a>4 q % 4b
    <d g>2 d8 8
    c2 <c d>4
    s2.
    r4 bes r
    f'4(ees) 4 % 5a
    r4 ees e
    \alternative {
      {
        f4(ees) e
        ees2 d4
        s2.*3
      }
      {
        f4(ees) e % 5b++
        ees2 4
        s2.
        s2.
        s2
      }
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mf\>
  s2\! s4\>
  s2.\!
  s2.-\markup\italic "poco rit."
  s2.
  s2.\omit\mp-\markup {\dynamic mp \italic legato} % 1b
  s2.*3
  s2.*2 % 2a
  s2.-\markup\italic "poco rit."
  s2 s4-\markup\italic "a tempo"
  \repeat volta 2 {
    s2.\mf
    s2.*3
    s2.*10 % 3
    s2.*2 % 4a
    s2.\mf
    s2.
    s2.
    s2 s4\mf
    s2.*2 % 4b
    s2.-\markup\italic rall.
    s2.
    s2.-\markup\italic "a tempo"
    s2.*2 % 5a
    \alternative {
      {
        s2.*3
        s4 s2-\markup\italic rall. % 5b
        s2.
      }
      {
        s2.
        s2.
        s2.
        s4\f s2-\markup\italic rall.
        s2
      }
    }
  }
}

pianoLHone = \relative {
  \global \oneVoice
  <c bes'>4
  <f c'>2 <bes, aes'>4
  <ees bes'>2.
  aes4 <f aes> <bes, aes'>
  <ees g>4 ees, r
  <g' bes>2 <e bes>4 % 1b
  <f c>2 <aes, d>4
  <g ees'>2 <f ees'>4
  ees'4(d) r
  <aes ees'>2 <aes' bes>4 % 2a
  bes2 s4
  c4 bes a
  \oneVoice aes2 \bar "||" <bes, aes'>4
  \repeat volta 2 {
    ees,4(<ees' g>) r
    \voiceOne aes4(g2)
    \oneVoice aes,4 <aes' c> <bes, aes'>
    <g' bes>2 <c, bes'>4
    <f c'>2 <bes, aes'>4 % 3a
    <ees bes'>2.
    aes4 <f aes> <bes, aes'>
    <ees g>4(ees,) <bes' aes'>
    ees,4(<ees' g>) r
    \voiceOne aes4(g2) \oneVoice % 3b
    aes,4 <aes' c> <bes, aes'>
    <g' bes>2 <c, bes'>4
    <f c'>2 <bes, aes'>4 <ees bes'>2.
    aes4 <f aes> <bes, aes'> % 4a
    <ees g>4(ees,) r
    c''4. b8 c8 aes
    g2 <c, bes'>4
    <f c'>2 <bes, aes'>4
    <ees bes'>4(ees,) r
    c''4. b8 c a % 4b
    g4(b^\markup\italic ten. ) r
    <a, g'>2 <d fis>4
    g4(g,) <bes aes'>^\markup\italic ten.
    ees,4(<ees' g>) r
    \voiceOne aes4(g) r % 5a
    \oneVoice aes,4 <aes' c> <bes, aes'>
    \alternative {
      {
        <g' bes>2 <c, es'>4
        <f c'>2 <bes, aes'>4
        <ees bes'>4 <c c'>2^\markup\italic ten.
        aes'4 <f aes> <bes, aes'> % 5b
        <ees g>4(ees,) <bes' aes'>
      }
      {
        <g' bes>2 <c, bes'>4
        <f c'>2 <bes, aes'>4
        <ees bes'>4^\< <c c'>2\!^\markup\italic ten.
        <aes aes'>4 <f f'> <bes bes'>
        <ees, ees'>2
      }
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s4
  s2.*7
  bes,2 r4
  s2. % 2a
  g'4 ees(d)
  c2 f4
  s2.
  \repeat volta 2 {
    s2. % 2b
    ees2.
    s2.*2
    s2.*5 % 3a
    ees2. % 3b
    s2.*4
    s2.*11 % 4
    ees2.
    s2.
    \alternative {
      {s2.*5}
      {s2.*4 s2}
    }
  }
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % sopranoII staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \sopranoII
            \addlyrics \wordsSopII
          >>
                                % alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
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
                                % sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopISingle
          >>
                                % sopranoII staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \sopranoII
            \addlyrics \wordsSopIISingle
          >>
                                % alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
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
        \new ChoirStaff <<
                                % sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopISingle
          >>
                                % sopranoII staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \sopranoII
            \addlyrics \wordsSopIISingle
          >>
                                % alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
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
  \bookOutputSuffix "midi-sop1"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopIMidi
          >>
                                % sopranoII staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \sopranoII
          >>
                                % alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
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
  \bookOutputSuffix "midi-sop2"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \sopranoI
          >>
                                % sopranoII staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \sopranoII
            \addlyrics \wordsSopIIMidi
          >>
                                % alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
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
                                % sopranoI staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \sopranoI
          >>
                                % sopranoII staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \sopranoII
          >>
                                % alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
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
