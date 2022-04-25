\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come Gladly"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Kathy Powell"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Sylvia Dunstan"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 6/8
}

TempoTrack = {
  \tempo 4.=60
  \set Score.tempoHideNote = ##t
  s2.*11
  s4. \tempo 4.=30 s4 \tempo 4.=60 s8
  s4.
  s2.
  s4.
  s2.*4
  \repeat volta 2 {
    s2.*7
    s4. \tempo 4.=30 s4 \tempo 4.=60 s8 % 5a+
    s4.
    s2.
    s4.
    s2. % 5b
    s2.
    \alternative {
      {s2. | s2.}
      {s2.}
    }
  }
  s2.*8
  s4. \tempo 4=30 s4 \tempo 4.=60 s8 % 7b++
  \repeat volta 2 {
    s4. % 8a
    s2.
    s4.
    s2.
    \alternative {
      {s2.}
      {s4. \tempo 4.=30 s4.}
    }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "2a" } s2.*3
  \mark \markup { \box "2b" } s2.*3
  \mark \markup { \box "2c" } s2.*3
  \mark \markup { \box "3a" } s2.*2 s4. s4
  \mark \markup { \box "3b" } s8 s4. s2. s4.
  \mark \markup { \box "3c" } s2.*4
  \repeat volta 2 {
    \mark \markup { \box "4a" } s2.*2
    \mark \markup { \box "4b" } s2.*2
    \mark \markup { \box "4c" } s2.*2
    \mark \markup { \box "5a" } s2. s4. s4
    \mark \markup { \box "5b" } s8 s4. s2. s4.
    \mark \markup { \box "5c" } s2.*2
  }
  \alternative {
    {s2.*2}
    {
      \mark \markup { \box "6a" } s2.
    }
  }
  s2.*2
  \mark \markup { \box "6b" } s2.*2
  \mark \markup { \box "7a" } s2.*2
  \mark \markup { \box "7b" } s2.*2 s4. s4
  \mark \markup { \box "8a" } s8
  \repeat volta 2 {
    s4. s2. s4.
    \mark \markup { \box "8b" } s2.}
  \alternative {{s2.} {s2.}}
}

flute = \relative {
  \global
  r8 cis''16(d e8) r d16(cis b8)
  r8 cis16(dis e8) r fis16(e d8)
  e8(gis b) a8-. e4
  d16(cis d fis e d cis4) r8 % 2b
  R2.*8
  \time 3/8 R4. % 3b
  \time 3/4 R2.
  \time 3/8 R4.
  \time 6/8 R2. % 3c
  R2.
  r8\mf^\markup\italic\bold Flute cis16(d cis8) r fis16(gis fis8)
  r8 a(gis fis4.)
  \repeat volta 2 {
    gis8(fis4) eis8(fis4) % 4a
    gis8(fis4) e8(cis4)
    eis8(cis4) fis8(cis4) % 4b
    d8 e d cis4.
    R2. % 4c
    R2.
    g'4. a % 5a
    f8 d4 e4\fermata \bar "||" \break 8\mp
    \time 3/8 e4. % 5b
    \time 3/4 fis4 e2~
    \time 3/8 e4 r8
    \time 6/8 R2. % 5c
    e4(d8 cis4.)
  }
  \alternative {
    {
      r8 cis16\mf(d cis8) r fis16(gis fis8)
      r8 a8(gis fis4.)
    }
    {r8 e16(fis e8) r8 fis16(gis fis8)} % 6a
  }
  a8(e d cis4.)
  R2.
  R2. % 6b
  R2.
  r4. gis'8-.\f fis-. e-. % 7a
  e2.
  r4 e8(gis4.) % 7b
  fis4. a8(e4)
  d8(fis e) 4\fermata r8
  \repeat volta 2 {
    \time 3/8 r4. % 8a
    \time 3/4 r2.
    \time 3/8 r4.
    \time 6/8 r8 e(a) a-. fis4
  }
  \alternative {
    {a8-. e4 4 r8}
    {a8-. b4 a4.\fermata}
  }
}

descant = \relative {
  R2.*12
  R4.
  R2.
  R4.
  R2.*4
  \repeat volta 2 {
    R2.*8
    R4.
    R2.
    R4.
    R2.*2
  }
  \alternative {{R2.*2}{R2.}}
  R2.
  r4 cis''8^\f^\markup\italic Descant d4.
  r4 cis8 e4.~ % 6b
  e4. r
  a,8 d cis e4 r8 % 7a
  r4 cis8 d4.
  r4 cis8 e4. % 7b
  d8 8 8 e cis cis
  a8 d d cis4\fermata e8
  \repeat volta 2 {
    \time 3/8 e4.( % 8a
    \time 3/4 fis4) e2
    \time 3/8 e4.
    \time 6/8 r8 cis e fis d4
  }
  \alternative {
    {e8 b4 cis \breathe e8^\f}
    {fis4^\markup\italic rit. e8 e4.\fermata}
  }
}

wordsDescant = \lyricmode {
  Re -- joice, re -- joice, __
  ser -- a -- phim sing!
  re -- joice, re -- joice,
  blest be the Sav -- ior who comes in God's name.
  Sing glo -- ri -- a,
  in ex -- cel -- sis glo -- ri -- a.

  Sing

  glo -- ri -- a.
}

wordsDescantSingle = \lyricmode {
  Re -- joice, re -- joice, __
  ser -- a -- phim sing!
  re -- joice, re -- joice,
  blest be the Sav -- ior who comes in God's name.
  Sing glo -- ri -- a,
  in ex -- cel -- sis glo -- ri -- a.
  Sing glo -- ri -- a,
  in ex -- cel -- sis glo -- ri -- a.

  Sing glo -- ri -- a.
}

wordsDescantMidi = \lyricmode {
  "Re" "joice, " re "joice, " 
  "\nser" a "phim " "sing! "
  "\nre" "joice, " re "joice, "
  "\nblest " "be " "the " Sav "ior " "who " "comes " "in " "God's " "name. "
  "\nSing " glo ri "a, "
  "\nin " ex cel "sis " glo ri "a. "
  "\nSing " glo ri "a, "
  "\nin " ex cel "sis " glo ri "a. "

  "\nSing " glo ri "a. "
}

soprano = \relative {
  \global
  R2.*3
  r4. r4^\markup "S,A" a'8^\f % 2b
  gis8 a a e a a
  gis8 a a e a r
  b8 a a cis a a % 2c
  gis8 a a b4 \breathe a8
  gis8 a a e a a
  gis8 a a e a \breathe a % 3a
  b8 a a cis a a
  fis8 a gis a4\fermata \breathe \bar "||" \break b8^\mp^\markup\bold Refrain
  \time 3/8 cis8. b16 a8 % 3b
  \time 3/4 d8. cis16 b8 cis b a
  \time 3/8 b4 16 cis
  \time 6/8 b8 a4 d8 b b % 3c
  a8 gis4 a4.
  R2.
  R2. % \bar "||"
  \repeat volta 2 {
    R2.*3 % 4a
    r4. r4 a8
    gis8 a a e a a % 4c
    gis8 a a e a \breathe a
    b8 a a c a a % 5a
    d8 a a b4\fermata \bar "||" \break b8^\mp
    \time 3/8 cis8. b16 a8 % 5b
    \time 3/4 d8. cis16 b8 cis b a
    \time 3/8 b4 16 cis
    \time 6/8 b8 a4 d8 b b % 5c
    a8 gis4 a4.
  }
  \alternative {
    {
      R2.
      R2.
    }
    {R2.}
  }
  r4. r4 a8^\f \bar "||" % 6a
  gis8 a a e a a
  gis8 a a e a r % 6b
  b8 a a cis a a
  fis8 a a b4 a8 % 7a
  gis8 a a e a a
  gis8 a a cis a a % 7b
  b8 a a cis a a
  fis8 a gis a4\fermata \bar "||" \break b8^\mp
  \repeat volta 2 {
    \time 3/8 cis8. b16 a8 % 8a
    \time 3/4 d8. cis16 b8 cis b a
    \time 3/8 b4 16 cis
    \time 6/8 b8 a4 d8 b b % 8b
  }
  \alternative {
    {a8 gis4 a \breathe b8^\f}
    {a8^\markup\italic rit. gis4 a4.\fermata}
  }
  \bar "|."
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Come glad -- ly, come gai -- ly, come gath -- er to -- geth -- er!
  Bright is the dawn -- ing and joy -- ous the morn.
  The shep -- herds are tell -- ing of an -- gels' good tid -- ings,
  That peace has been prom -- ised, a Sav -- ior is born.

  Sing glo -- ri -- a, glo -- ri -- a -- \markup\italic ri -- \markup\italic a -- \markup\italic ri -- \markup\italic a
  in ex -- cel -- sis De -- o.
  Sing glo -- ri -- \set associatedVoice = alignerT a.

  \set stanza = "2."
  O how can this in -- fant so lit -- tle and help -- less,
  How can one ba -- by re -- deem all the \set associatedVoice = alignerS world?
  In mer -- cy and mys -- ter -- y God is a -- mong us;
  The hands that made heav -- en are ti -- ny and curled.
  
  Sing glo -- ri -- a, glo -- ri -- a -- \markup\italic ri -- \markup\italic a -- \markup\italic ri -- \markup\italic a
  in ex -- cel -- sis De -- o.
  Sing glo -- ri -- \set associatedVoice = alignerT a.

  \set stanza = "3."
  \set associatedVoice = alignerS But

  \set stanza = "4."
  Re -- joice in the mar -- vel -- ous hope we are giv -- en.
  Ser -- a -- phim, sing what the proph -- ets pro -- claim!
  All glo -- ry to God in the heights of high heav -- en,
  And blest be the Sav -- ior who comes in God's name.

  Sing glo -- ri -- a, glo -- ri -- a -- \markup\italic ri -- \markup\italic a -- \markup\italic ri -- \markup\italic a
  in ex -- cel -- sis De -- o.
  Sing glo -- ri -- a.
  Sing

  glo -- ri -- a.

}

wordsTwo = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ \set associatedVoice = alignerT _ _
  \set stanza = "(3.)"
  who can be -- lieve such a won -- der -- ful sto -- ry?
  Who can ac -- cept what the mes -- sen -- gers \set associatedVoice = alignerS say?
  The hum -- ble, the gen -- tle, the meek will re -- ceive it.
  The proud and the tough and the strong turn a -- way.
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  Come glad -- ly, come gai -- ly, come gath -- er to -- geth -- er!
  Bright is the dawn -- ing and joy -- ous the morn.
  The shep -- herds are tell -- ing of an -- gels' good tid -- ings,
  That peace has been prom -- ised, a Sav -- ior is born.

  Sing glo -- ri -- a, glo -- ri -- a -- \markup\italic ri -- \markup\italic a -- \markup\italic ri -- \markup\italic a
  in ex -- cel -- sis De -- o.
  Sing glo -- ri -- \set associatedVoice = alignerT a.

  \set stanza = "2."
  O how can this in -- fant so lit -- tle and help -- less,
  How can one ba -- by re -- deem all the \set associatedVoice = alignerS world?
  In mer -- cy and mys -- ter -- y God is a -- mong us;
  The hands that made heav -- en are ti -- ny and curled.
  
  Sing glo -- ri -- a, glo -- ri -- a -- \markup\italic ri -- \markup\italic a -- \markup\italic ri -- \markup\italic a
  in ex -- cel -- sis De -- o.
  Sing glo -- ri -- \set associatedVoice = alignerT a.

  \set stanza = "3."
  \set associatedVoice = alignerS
  But who can be -- lieve such a won -- der -- ful sto -- ry?
  Who can ac -- cept what the mes -- sen -- gers \set associatedVoice = alignerS say?
  The hum -- ble, the gen -- tle, the meek will re -- ceive it.
  The proud and the tough and the strong turn a -- way.
  Sing glo -- ri -- a, glo -- ri -- a -- \markup\italic ri -- \markup\italic a -- \markup\italic ri -- \markup\italic a
  in ex -- cel -- sis De -- o.
  Sing glo -- ri -- \set associatedVoice = alignerT a.

  \set stanza = "4."
  Re -- joice in the mar -- vel -- ous hope we are giv -- en.
  Ser -- a -- phim, sing what the proph -- ets pro -- claim!
  All glo -- ry to God in the heights of high heav -- en,
  And blest be the Sav -- ior who comes in God's name.

  Sing glo -- ri -- a, glo -- ri -- a -- \markup\italic ri -- \markup\italic a -- \markup\italic ri -- \markup\italic a
  in ex -- cel -- sis De -- o.
  Sing glo -- ri -- a.
  Sing

  glo -- ri -- a.

}

wordsMidiWomen = \lyricmode {
  \set stanza = "1."
  "Come " glad "ly, " "come " gai "ly, " "come " gath "er " to geth "er! "
  "\nBright " "is " "the " dawn "ing " "and " joy "ous " "the " "morn. "
  "\nThe " shep "herds " "are " tell "ing " "of " an "gels' " "good " tid "ings, "
  "\nThat " "peace " "has " "been " prom "ised, " "a " Sav "ior " "is " "born. "

  "\nSing " glo ri "a, " glo ri a ri a ri "a "
  "\nin " ex cel "sis " De "o. "
  "\nSing " glo ri "a. "

  \set stanza = "2."
  "\nIn " mer "cy " "and " mys ter "y " "God " "is " a "mong " "us; "
  "\nThe " "hands " "that " "made " heav "en " "are " ti "ny " "and " "curled. "
  
  "\nSing " glo ri "a, " glo ri a ri a ri "a "
  "\nin " ex cel "sis " De "o. "
  "\nSing " glo ri "a. "

  \set stanza = "3."
  "\nThe " hum "ble, " "the " gen "tle, " "the " "meek " "will " re "ceive " "it. "
  "\nThe " "proud " "and " "the " "tough " "and " "the " "strong " "turn " a "way. "
  "\nSing " glo ri "a, " glo ri a ri a ri "a "
  "\nin " ex cel "sis " De "o. "
  "\nSing " glo ri "a. "


  \set stanza = "4."
  "\nRe" "joice " "in " "the " mar vel "ous " "hope " "we " "are " giv "en. "
  "\nSer" a "phim, " "sing " "what " "the " proph "ets " pro "claim! "
  "\nAll " glo "ry " "to " "God " "in " "the " "heights " "of " "high " heav "en, "
  "\nAnd " "blest " "be " "the " Sav "ior " "who " "comes " "in " "God's " "name. "

  "\nSing " glo ri "a, " glo ri a ri a ri "a "
  "\nin " ex cel "sis " De "o. "
  "\nSing " glo ri "a. "
  "\nSing " glo ri "a, " glo ri a ri a ri "a "
  "\nin " ex cel "sis " De "o. "
  "\nSing " glo ri "a. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "in " ex cel "sis " De "o. "
  "\nSing " glo ri "a. "

  \set stanza = "2."
  "\nO " "how " "can " "this " in "fant " "so " lit "tle " "and " help "less, "
  "\nHow " "can " "one " ba "by " re "deem " "all " "the " "world? "
  
  "\nin " ex cel "sis " De "o. "
  "\nSing " glo ri "a. "

  \set stanza = "3."
  "\nBut " "who " "can " be "lieve " "such " "a " won der "ful " sto "ry? "
  "\nWho " "can " ac "cept " "what " "the " mes sen "gers " "say? "

  "\nin " ex cel "sis " De "o. "
  "\nSing " glo ri "a. "


  \set stanza = "4."
  "\nRe" "joice " "in " "the " mar vel "ous " "hope " "we " "are " giv "en. "
  "\nSer" a "phim, " "sing " "what " "the " proph "ets " pro "claim! "
  "\nAll " glo "ry " "to " "God " "in " "the " "heights " "of " "high " heav "en, "
  "\nAnd " "blest " "be " "the " Sav "ior " "who " "comes " "in " "God's " "name. "

  "\nin " ex cel "sis " De "o. "
  "\nSing " glo ri "a. "

  "\nin " ex cel "sis " De "o. "
  "\nSing " glo ri "a. "
}

alto = \relative {
  \global
  s2.*3
  s4. s4 a'8\omit\f
  gis8 a a e a a
  gis8 a a e a r
  b8 a a cis a a % 2c
  gis8 a a b4 \breathe a8
  gis8 a a e a a
  gis8 a a e a \breathe a % 3a
  b8 a a cis a a
  fis8 a gis a4\fermata \breathe e8^\mp
  \time 3/8 a8. e16 cis8 % 3b
  \time 3/4 d8. 16 e8 a e cis
  \time 3/8 e4 16 a
  \time 6/8 e8 4 fis8 8 8 % 3c
  e8 4 4.
  R2.
  R2.
  \repeat volta 2 {
    R2.*3
    r4. r4 a8
    gis8 a a e a a % 4c
    gis8 a a e a \breathe a
    d,8^\markup\italic div. 8 8 g f g % 5a
    f8 8 8 e4\fermata 8^\mp
    \time 3/8 a8. e16 c8 % 5b
    \time 3/4 d8. 16 e8 a e cis
    \time 3/8 e4 16 a
    \time 6/8 e8 4 fis8 8 8 % 5c
    e8 4 4.
  }
  \alternative {
    {
      R2.
      R2.
    }
    {R2.} % 6a
  }
  r4. r4 a8^\f
  gis8 a a e a a
  gis8 a a e a r % 6b
  d,8^\markup\italic div. 8 8 cis e e
  d8 fis fis e4 a8 % 7a
  gis8 a a e a a
  gis8 a a e a e % 7b
  e8 e d cis e e
  d8 8 8 cis4\fermata e8^\mp
  \repeat volta 2 {
    \time 3/8 a8. e16 cis8 % 8a
    \time 3/4 d8. 16 e8 a e cis
    \time 3/8 e4 16 a
    \time 6/8 e8 4 fis8 8 8
  }
  \alternative {
    {e8 4 4 \breathe 8^\f}
    {e8^\markup\italic rit. 4 4.\fermata}
  }
  \bar "|."
}

tenor = \relative {
  \global
  R2.*12
  \time 3/8 R4.
  \time 3/4 R2.
  \time 3/8 r4^\markup "T,B" b16^\mp cis
  \time 6/8b8 a4 b8 b b % 3c
  cis8 b4 cis4.
  R2.
  r4. r4 fis,8^\mf
  \repeat volta 2 {
    eis8 fis fis cis fis fis % 4a
    eis8 fis fis cis fis4
    gis8 fis fis gis fis fis % 4b
    b8 fis fis gis4 r8
    R2.*4
    R4.
    R2.
    r4 b16^\mp cis % 5b++
    b8 a4 b8 8 8 % 5c
    cis8 b4 cis4.
  }
  \alternative {
    {
      R2.
      r4. r4 fis,8^\mf
    }
    {R2.} % 6a
  }
  r4. r4 a8^\f
  gis8 a a
  e8 a a
  gis8 a a e a r % 6b
  gis8 a a a a a
  a8 d cis b4 a8 % 7a
  gis8 a a e a a
  gis8 a a e a a % 7b
  gis8 a a a a a
  a8 8 b a4\fermata r8
  \repeat volta 2 {
    \time 3/8 r4. % 8a
    \time 3/4 r2.
    \time 3/8 r4 b16^\markup{\dynamic mp - \dynamic f} cis
    \time 6/8 b8 a4 b8 8 8
  }
  \alternative {
    {cis8 b4 cis r8}
    {cis8^\markup\italic rit. b(d) cis4.\fermata}
  }
  \bar "|."
}

bass = \relative {
  \global
  R2.*12
  \time 3/8 R4. % 3b
  \time 3/4 R2.
  \time 3/8 r4^\markup "T,B" e16^\mp a
  \time 6/8 e8 cis4 b8 d d % 3c
  e8 4 a4.
  R2.
  r4. r4 fis8^\mf
  \repeat volta 2 {
    eis8 fis fis cis fis fis % 4a
    eis8 fis fis cis fis4
    gis8 fis fis gis fis fis % 4b
    b8 fis fis gis4 r8
    R2.*4 % 4c
    \time 3/8 R4. % 5b
    \time 3/4 R2.
    \time 3/8 r4 e16^\mp a
    \time 6/8 e8 cis4 b8 d d % 5c
    e8 4 a4.
    \alternative {
      {
        R2.
        r4. r4 fis8^\mf
      }
      {R2.} % 6a
    }
  }
  r4. r4 a8^\f
  gis8 a a e a a
  gis8 a a e a r % 6b
  e8 8 8 a, cis cis
  d8 8 fis gis4 a8 % 7a
  gis8 a a e a a
  gis8 a a e a cis, % 7b
  b8 8 8 a cis cis
  d8 b e a,4\fermata r8
  \repeat volta 2 {
    \time 3/8 R4. % 8a
    \time 3/4 R2.
    \time 3/8 r4 e'16 a
    \time 6/8 e8 cis4 b8 d d % 8b
    \alternative {
      {e8 4 a r8}
      {e8 4 a4.\fermata}
    }
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  cis'8 e a d,8 a'4
  gis8 a4 e8 a4
  b8 a a cis a a
  fis8 a gis a4 r8 % 2b
  gis8 a4 e8 a4
  gis8 a4 e8 a4
  b8 a a cis a a % 2c
  <d, fis>8 <fis a> q <e b'>4 a8
  gis8 a4 e8 a4
  gis8 a4 8 a4 % 3a
  b8 a4 cis8 a4
  fis8 a gis a4\fermata r8
  \time 3/8 r4. % 3b
  \time 3/4 r2.
  \time 3/8 r4 b16 cis
  \time 6/8 b8 a4 d8 b4 % 3c
  a8 gis4 a4.
  a8 fis4 b8 gis gis
  fis8 eis4 fis4.
  \repeat volta 2 {
    cis'4. 8 b4 % 4a
    cis4. a8 fis4
    gis8 fis4 a8 fis4 % 4b
    b8 fis4 gis4 a8
    e'4. e % 4c
    e4. 4 \once\partCombineApart r8
    b8 a4 c8 a4 % 5a
    d8 a4 b4\fermata r8
    \time 3/8 R4. % 5b
    \time 3/4 R2.
    \time 3/98 r4 b16 cis
    \time 6/8 b8 a4 d8 b4 % 5c
    a8 gis4 a4.
    \alternative {
      {
        a8 fis4 b8 gis gis
        fis8 eis4 <cis fis>4.
      }
      {cis'8 a4 d8 b b} % 6a
    }
  }
  a8 gis4 a4.
  gis8 a4 e8 a4
  gis8 a4 e8 a4 % 6b
  b8 a4 cis8 a4
  fis8 a a b4 r8 % 7a
  gis8 a4 e8 a4
  gis8 a4 e8 a4 % 7b
  b8 a4 cis8 a4
  fis8 a gis a4\fermata r8
  \repeat volta 2 {
    \time 3/8 R4. % 8a
    \time 3/4 R2.
    \time 4/8 r4 b16 cis
    \time 6/8 b8 a4 d8 b4 % 8b
    \alternative {
      {a8 gis4 a4 r8}
      {a8 gis4 a4.\fermata}
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s4. d'
  s2.
  e4 d8 e4 8
  d4 8 cis4 r8 % 2b
  cis4. d
  e4. e
  e4 d8 e4 8 % 2c
  s2.
  cis4. d
  e4. e % 3a
  d4. cis8 e4
  d4 8 cis4\fermata r8
  \time 3/8 R4.
  \time 3/4 R2.
  \time 3/8 r4 e16 a
  \time 6/8 e8 4 fis8 4 % 3c
  e4. e
  s2.
  s2.
  \repeat volta 2 {
    eis8 fis4 4. % 4a
    eis8 fis4 8 cis4
    cis4. 4. % 4b
    d4. cis4 s8
    b'8 a cis b a cis % 4c
    b8 a cis b a a
    d,4. g8 f g % 5a
    f4. e4\fermata r8
    \time 3/8 R4. % 5b
    \time 3/4 R2.
    \time 3/8 r4 e16 a
    \time 6/8
    e4. fis % 5c
    e4. e
    \alternative {
      {s2. | s2.}
      {a8 e4 a8 fis4} % 6a
    }
  }
  e4. e
  <cis e>4. d
  e4. e % 6b
  d4. cis8 e4
  d8 fis fis e4 r8 % 7a
  <cis e>4. d
  e4. e % 7b
  e4 d8 cis8 e4
  d4 8 <cis e>4\fermata r8
  \repeat volta 2 {
    \time 3/8 R4. % 8a
    \time 3/4 R2.
    \time 3/8 r4 e16 a
    \time 6/8 e8 4 fis8 4 % 8b
    \alternative {
      {e8 4 4 r8}
      {e4. <cis e>4.\fermata}
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf
  s2.*3
  s2.\f % 2b+
  s2.*7
  s4.
  s2.
  s4 s8\mp % 3b++
  s2. % 3c
  s2.
  s2.\mf
  s2.
  \repeat volta 2 {
    s2.*8
    s4.
    s2.
    s4 s8\mp % 5b++
    s2. % 5c
    s2.
    \alternative {
      {
        s2.\mf
        s2.
      }
      {s2.\mf} % 6a
    }
  }
  s2.
  s2.\f
  s2.*7
  \repeat volta 2 {
    s4. % 8a
    s2.
    s4 s8-\markup{\dynamic mp - \dynamic f}
    s2. % 8b
    \alternative {
      {s2.}
      {s2.-\markup\italic rit.}
    }
  }
}

pianoLHone = \relative {
  \global
  a,8 e' cis' b, fis' a
  cis,8 e a d, fis a
  gis8 a b a4 8
  fis8 a gis a4 r8 % 2b
  a,8 e' a b, fis' a
  cis,8 e a d, fis a
  gis8 a b a, e' a % 2c
  a8 d cis b4 e,8
  a,8 e' a b, fis' a
  cis,8 e a d, fis a % 3a
  b,8 fis' a a a4
  a8 fis b a4 r8
  \time 3/8 R4. % 3b
  \time 3/4 R2.
  \time 3/8 R4.
  \time 6/8 b8 a4 b8 4 % 3c
  cis8 b4 cis4.
  fis,8 cis' e, d b'4
  a8 gis4 a4.
  \repeat volta 2 {
    cis4. d % 4a
    cis4. 8 a4
    cis,8 gis' b fis, cis' a' % 4b
    b,8 fis' b eis,4.
    e'4. fis % 4b
    e4. fis
    b,4. c4 a8 % 5a
    a8 d c gis4 r8
    \time 3/8 R4. % 5b
    \time 3/4 R2.
    \time 3/8 R4.
    \time 6/8 b8 a4 b4. % 5c
    cis8 b4 cis4.
    \alternative {
      {
        fis,8 cis' e, d b'4
        a8 gis4 a4.
      }
      {e'8 cis4 d b8} % 6a
    }
  }
  cis8 b4 cis4.
  e,4. e
  a4. a % 6b
  gis8 a4 4.
  a8 d cis b4 r8 % 7a
  e,4. e
  a4. a % 7b
  gis8 a4 8 4
  a4 b8 a4\fermata r8
  \repeat volta 2 {
    \time 3/8 R4.
    \time 6/8 R2.
    \time 3/8 R4.
    \time 6/8 b8 a4 b8 4 % 8a
    \alternative {
      {cis8 b4 cis r8}
      {cis8 b4 a4.\fermata}
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s2.
  s2.
  e4. a,4 cis8
  d4 e8 a,4 r8 % 2b
  s2.
  s2.
  e'4. s4 cis8 % 2c
  d4 fis8 gis4 e8
  s2.
  s2. % 3a
  s4. a,8 cis4
  d4 e8 a,4 r8
  \time 3/8 R4. % 3b
  \time 3/4 R2.
  \time 3/8 R4.
  \time 6/8 e'8 cis4 b8 d4 % 3c
  e4. a
  s4. d,
  cis4. fis
  \repeat volta 2 {
    a4. b % 4a
    a4. fis
    s2. % 4b
    s4. cis
    a'4. a % 4c
    a4. a
    g4. f4 e8 % 5a
    d4 f8 e4 r8
    \time 3/8 R4. % 5b
    \time 3/4 R2.
    \time 3/8 R4.
    \time 6/8 e8 cis4 b8 d4 % 5c
    e4. a
    \alternative {
      {
        s4. d,
        cis4. fis
      }
      {a4 g8 fis8 d4} % 6a
    }
  }
  e4. a
  a,4. b
  cis4. d4 cis8 % 6b
  b4. a8 cis4
  d4 fis8 gis4 r8 % 7a
  a,4. b
  cis4. d4 cis8 % 7b
  b4. a8 cis4
  d8 b e a,4\fermata r8
  \repeat volta 2 {
    \time 3/8 R4.
    \time 6/8 R2.
    \time 3/8 R4.
    \time 6/8 e'8 cis4 b8 d4
    \alternative {
      {e8 4 a r8}
      {e4. a,\fermata}
    }
  }
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new Staff \with {
          instrumentName = #"Flute"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \flute
        >>
        \new ChoirStaff <<
                                % Descant staff
          \new Staff = descant \with {
            instrumentName = #"Descant"
            shortInstrumentName = #"D"
          }
          <<
            \new Voice \descant
            \addlyrics \wordsDescant
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerS \soprano
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
  \score {
   \unfoldRepeats
    <<
      <<
        \new Staff \with {
          instrumentName = #"Flute"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \flute
        >>
        \new ChoirStaff <<
                                % Descant staff
          \new Staff = descant \with {
            instrumentName = #"Descant"
            shortInstrumentName = #"D"
          }
          <<
            \new Voice \descant
            \addlyrics \wordsDescantSingle
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerS \soprano
            \addlyrics \wordsSingle
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
    <<
      <<
        \new Staff \with {
          instrumentName = #"Flute"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \flute
        >>
        \new ChoirStaff <<
                                % Descant staff
          \new Staff = descant \with {
            instrumentName = #"Descant"
            shortInstrumentName = #"D"
          }
          <<
            \new Voice \descant
            \addlyrics \wordsDescantSingle
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerS \soprano
            \addlyrics \wordsSingle
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
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
  \bookOutputSuffix "midi-descant"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Staff \with {
          instrumentName = #"Flute"
          midiInstrument = #"flute"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \flute
        >>
        \new ChoirStaff <<
                                % Descant staff
          \new Staff = descant \with {
            instrumentName = #"Descant"
            shortInstrumentName = #"D"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \descant
            \addlyrics \wordsDescantMidi
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano \alto
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
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
  \bookOutputSuffix "midi-women"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Staff \with {
          instrumentName = #"Flute"
          midiInstrument = #"flute"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \flute
        >>
        \new ChoirStaff <<
                                % Descant staff
          \new Staff = descant \with {
            instrumentName = #"Descant"
            shortInstrumentName = #"D"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \descant
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano \alto
            \addlyrics \wordsMidiWomen
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
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
  \bookOutputSuffix "midi-men"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new Staff \with {
          instrumentName = #"Flute"
          midiInstrument = #"flute"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \flute
        >>
        \new ChoirStaff <<
                                % Descant staff
          \new Staff = descant \with {
            instrumentName = #"Descant"
            shortInstrumentName = #"D"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \descant
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano \alto
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
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
