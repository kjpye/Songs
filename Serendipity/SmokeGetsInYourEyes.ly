\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Smoke Gets in Your Eyes"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Jerome Kern"
  arranger    = "Arr. Kirby Shaw"
%  opus        = "opus"

  poet        = "Otto Harbach"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
}

TempoTrack = {
  \tempo Samba 2=88
%  \set Score.tempoHideNote = ##t
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "2a" } s1*3
  \mark \markup { \box "2b" } s1*4
  \mark \markup { \box "2c" } s1*4
  \mark \markup { \box "3a" } s1*3
  \mark \markup { \box "3b" } s1*3
  \mark \markup { \box "3c" } s1*3
  \mark \markup { \box "4a" } s1*3
  \mark \markup { \box "4b" } s1*3
  \mark \markup { \box "4c" } s1*3
  \mark \markup { \box "5a" } s1*3
  \mark \markup { \box "5b" } s1*3
  \mark \markup { \box "5c" } s1*3
  \mark \markup { \box "6a" } s1*3
  \mark \markup { \box "6b" } s1*3
  \mark \markup { \box "6c" } s1*4
  \repeat segno 2 {
    \mark \markup { \box "7a" } s1*3
%    s1*3
    \mark \markup { \box "7b" } s1*3
    \mark \markup { \box "7c" } s1*3
    \mark \markup { \box "8a" } s1*3
    \mark \markup { \box "8b" } s1*3
    \mark \markup { \box "8c" } s1*3
    \mark \markup { \box "9a" } s1*3
    \mark \markup { \box "9b" } s1*3
    \mark \markup { \box "9c" } s1*3
    \mark \markup { \box "10a" } s1*2
    \volta 1 {
      \volta #'() { \codaMark 1 }
      s1
                   \mark \markup { \box "10b" } s1*4
                 }
    \volta 2 \volta #'() {\section \sectionLabel "Coda"}
  }
  \mark \markup { \box "10c" } s1*3
%  s1*3
  \mark \markup { \box "11a" } s1*3
  \mark \markup { \box "11b" } s1*3
  \mark \markup { \box "11c" } s1*4
}

ChordTrack = \chordmode {
  r1 | s1*2
  s1 | f1/g | aes:13 | f/g
  s1 | c:maj7 | ees:9 | d:m9
  g2:7.13- des4.:9 c8:maj9 | s1 | ees:9 % 3
  d2:m7sus e:m7 | f2:maj7 f:7.9- | c1:maj7
  a1:m9 | d:m9 | f4.:maj7/g g2:7 c8:maj7
  s1 | fis:7.5- | f:maj7 % 4
  fis2..:dim g8:6 | s1 | g2/a s8 a4.:m7
  d1:m7 | f2:maj7/g s8 g4.:7.9- | e1:m7
  a2:7.9- s8 a4.:7.9-.13- | d2:m7sus e:m7 | f:maj7 g:7.9- % 5
  c1:maj7 | a:m9 | d2:m9 s8 d4.:m7
  g2:13.9- s8 g4.:7.9- | g1:m7sus | fis2:9.5- s8 fis4.:13
  f1:maj7 | fis2..:dim g8:6 | s1 % 6
  a1:m9 | d:m7 | f2../g c8:9
  s1 | f2:13 bes4:9 b:dim | c1:maj7 | bes2:m9 ees:7.5+
  \repeat segno 2 {
    aes4.:maj9 aes2:6.9 aes8:maj9 | s4. aes8:6.9 s2 | f4.:m9 f2:m7 f8:m9 % 7
    s4. f8:m7 s2 | bes2..:m9 ces8:9 | s1
    bes1:m7 | des2/ees a:7sus | aes4.:maj9 aes2:6.9 aes8:maj9
    s4. aes8:6.9 s2 | f4.:m9 f2:m7 f8/g | s4. g4:13 g4.:7 % 8
    c4.:maj9 c2:6.9 a8:m9 | s4. a8:m7 s2 | d2..:m7 d8:m7
    s2.. f8/g | s2 d:m7 | g:13 g:13.9-
    c2:maj9 s8 c4.:9 | a2:m9 s8 a4.:m7 | d2:m9 s8 d4.:m7 % 9
    g2:13.9- s8 g4.:7.9- | g1:m7sus | fis:9.5-
    f1:maj7 | fis2..:dim7 g8:6 | s1
    a2:7.9-.13- s8 a4.:7.9- | d2:m7sus s8 d4.:m7 % 10
    \volta 1 {
      f2/g g:13
      c2:9 s8 c4.:6.9 | f2:7 bes:9 | c1:6 | bes2:m9 ees:7.5-
    }
    \volta 2 {}
  }
  f2../g c8:maj7 | s1 | c1:6
  f1:9 | s1 | aes:13 % 11
  s1 | f:maj7/g | g:13.9-
  r1 | s1 | f2/g g4.:7.13- c8:2 | s1
}

%soprano = \applySwing 16 #'(3 2 2 3) \relative {
soprano = \relative {
  \global
  R1*8
  g'1^\mf ~
  g1~
  g1
  bes4 aes8 ees~8 f4 g16(aes % 3a
  g1~
  g1)
  R1 % 3b
  R1
  c,1
  b4 d8 c~8 a4 f'8~ % 3c
  f2. r4
  e4 g8 f~8 d4 c'8~
  c1~ % 4a
  c1~
  c2. r4
  d4 c8 gis~8 a4 b8~ % 4b
  b1
  a4 g8 a,~8 c4 g'8~
  g2. r4 % 4c
  a8 g4 a8~8 b4 a8~(
  a8 g e2.~
  e2.) r4 % 5a
  g2(e
  c2 d)
  c1 % 5b
  b4 d8 c~8 a4 f'8~
  f2. r4
  e4 g8 f~8 d4 c'8~ % 5c
  c1~
  c1~
  c2. r4 % 6a
  d4 c8 gis~8 a4 b8~
  b1
  a4 g8 a,~8 c4 g'8~ % 6b
  g2. r4
  a4 g8 g,^\markup Unis. ~8 a4 c8~
  c1~ % 6b
  c1
  R1
  R1 \bar "||" \key aes \major
  \repeat segno 2 {
    r2^\markup "Duet or solo (any voice) on D.S." c8 ees4 c'8~ % 7a
    c2. g4
    bes4 aes8 c,~8 ees4 g8~
    g1 % 7b
    r4 f \tuplet 3/2 {f g aes}
    ees2 ges4. ees8~
    ees1 % 7c
    R1
    r2 c4 ees8 c'~
    c2. g4 % 8a
    bes4 aes8 c,~8 ees4 g8~
    g4 f e d \bar "||" \key c \major
    e1 % 8b
    e2~4. d8~
    d2 r4 d8 f~
    f2 r4 f8 a~
    a2\glissando g'
    << {e2.^\f ~4
    c,1^\mf^\markup Unis. % 9a
        } \new Voice {\voiceOne s2. \hideNotes e'4\glissando c,1} >>
    b4 d8 c~8 a4 f'8~
    f2. r4
    e4 g8 f~8 d4 c'8~ % 9b
    c1~
    c1~
    c2. r4 \break % 9c
    d4 c8 gis~8 a4 b8~ |
    b1 |
    a4 g8 e~8 g a4 % 10a
    g2. r4
    \volta 1 {
      a4 g8 g,~8 a4 c8~
      c1~ % 10b
      c1~
      c1
      R1
    }
    \volta 2 {
    }
  }
  a'4 g8 8~8 a4 c8~ % 10c
  c1~
  c4 r g\omit\cresc^\markup\italic "grad. cresc." c
  <b d>1~^\markup div. % 11a
  q4 r c d
  <bes ees>1~^\markup div.
  q2 r % 11b
  <c e>1
  <b e>1
  <d g>1^\ff ~
  q1
  R1
  R1
  \bar "|."
}

words = \lyricmode {
  Oh,
  dahn doh way __ dee oh. __
  They asked me how __ I knew __
  my true love __ was true? __
  I, of course, re -- plied, __
  "\"Some" -- thing here __ in -- side, __
  can -- not be de -- "nied.\"" __
  Oh. __
  They said some -- day __ you'll find, __
  all who love __ are blind. __
  When your heart's __ on fire, __
  you must re -- al -- ize, __
  Smoke gets in __ your eyes. __

  So I chaffed __ them and I gai -- ly laughed __
  to think they could doubt my love. __
  Yet to -- day __ my love has flown __ a -- way.
  I am with -- out my __ love, __
  my love, __ my love, __ my love. __

  Now laugh -- ing friends __ de -- ride, __
  tears I can -- not \set associatedVoice = alignerA hide, __
  tears I can -- not hide,
  so I smile __ and say, __
  "\"When" a love -- ly flame dies,
  smoke gets in __ your eyes, __
  smoke gets in your eyes, __
  smoke gets in __ your eyes, __
  in your eyes __
  in your eyes, __
  in your "eyes.\"" __
}

wordsMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _

  So I chaffed __ them and I gai -- ly laughed __
  to think they could doubt my love. __
  Yet to -- day __ my love has flown __ a -- way.
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _
}

wordsMenSingle = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _

  So I chaffed __ them and I gai -- ly laughed __
  to think they could doubt my love. __
  Yet to -- day __ my love has flown __ a -- way.
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _

  So I chaffed __ them and I gai -- ly laughed __
  to think they could doubt my love. __
  Yet to -- day __ my love has flown __ a -- way.
}

wordsSingle = \lyricmode {
  Oh,
  dahn doh way __ dee oh. __
  They asked me how __ I knew __
  my true love __ was true? __
  I, of course, re -- plied, __
  "\"Some" -- thing here __ in -- side, __
  can -- not be de -- "nied.\"" __
  Oh. __
  They said some -- day __ you'll find, __
  all who love __ are blind. __
  When your heart's __ on fire, __
  you must re -- al -- ize, __
  Smoke gets in __ your eyes. __

  So I chaffed __ them and I gai -- ly laughed __
  to think they could doubt my love. __
  Yet to -- day __ my love has flown __ a -- way.
  I am with -- out my __ love, __
  my love, __ my love, __ my love. __

  Now laugh -- ing friends __ de -- ride, __
  tears I can -- not \set associatedVoice = alignerA hide, __
  tears I can -- not hide,
  so I smile __ and say, __
  "\"When" a love -- ly flame dies,
  smoke gets in __ your eyes, __
  smoke gets in your eyes, __

  So I chaffed __ them and I gai -- ly laughed __
  to think they could doubt my love. __
  Yet to -- day __ my love has flown __ a -- way.
  I am with -- out my __ love, __
  my love, __ my love, __ my love. __

  Now laugh -- ing friends __ de -- ride, __
  tears I can -- not \set associatedVoice = alignerA hide, __
  tears I can -- not hide,
  so I smile __ and say, __
  "\"When" a love -- ly flame dies,
  smoke gets in __ your eyes, __
  in your eyes __
  in your eyes, __
  in your "eyes.\"" __
}

wordsMidiSop = \lyricmode {
  "Oh, "
  "\ndahn " "doh " "way "  "dee " "oh. " 
  "\nThey " "asked " "me " "how "  "I " "knew " 
  "\nmy " "true " "love "  "was " "true? " 
  "\nI, " "of " "course, " re "plied, " 
  "\n\"Some" "thing " "here "  in "side, " 
  "\ncan" "not " "be " de "nied.\"" 
  "\nOh. " 
  "\nThey " "said " some "day "  "you'll " "find, " 
  "\nall " "who " "love "  "are " "blind. " 
  "\nWhen " "your " "heart's "  "on " "fire, " 
  "\nyou " "must " re al "ize, " 
  "\nSmoke " "gets " "in "  "your " "eyes. " 

  "\nSo " "I " "chaffed "  "them " "and " "I " gai "ly " "laughed " 
  "\nto " "think " "they " "could " "doubt " "my " "love. " 
  "\nYet " to "day "  "my " "love " "has " "flown "  a "way. "
  "\nI " "am " with "out " "my "  "love, " 
  "\nmy " "love, "  "my " "love, "  "my " "love. " 

  "\nNow " laugh "ing " "friends "  de "ride, " 
  "\ntears " "I " can "not " "hide, " 
  "\nso " "I " "smile "  "and " "say, " 
  "\n\"When " "a " love "ly " "flame " "dies, "
  "\nsmoke " "gets " "in "  "your " "eyes, " 

  "\nSo " "I " "chaffed "  "them " "and " "I " gai "ly " "laughed " 
  "\nto " "think " "they " "could " "doubt " "my " "love. " 
  "\nYet " to "day "  "my " "love " "has " "flown "  a "way. "
  "\nI " "am " with "out " "my "  "love, " 
  "\nmy " "love, "  "my " "love, "  "my " "love. " 

  "\nNow " laugh "ing " "friends "  de "ride, " 
  "\ntears " "I " can "not " "hide, " 
  "\nso " "I " "smile "  "and " "say, " 
  "\n\"When " "a " love "ly " "flame " "dies, "
  "\nsmoke " "gets " "in "  "your " "eyes, " 
  "\nin " "your " "eyes " 
  "\nin " "your " "eyes, " 
  "\nin " "your " "eyes.\" " 
}

wordsMidi = \lyricmode {
  "Oh, "
  "\ndahn " "doh " "way "  "dee " "oh. " 
  "\nThey " "asked " "me " "how "  "I " "knew " 
  "\nmy " "true " "love "  "was " "true? " 
  "\nI, " "of " "course, " re "plied, " 
  "\n\"Some" "thing " "here "  in "side, " 
  "\ncan" "not " "be " de "nied.\" " 
  "\nOh. " 
  "\nThey " "said " some "day "  "you'll " "find, " 
  "\nall " "who " "love "  "are " "blind. " 
  "\nWhen " "your " "heart's "  "on " "fire, " 
  "\nyou " "must " re al "ize, " 
  "\nSmoke " "gets " "in "  "your " "eyes. " 

  "\nSo " "I " "chaffed "  "them " "and " "I " gai "ly " "laughed " 
  "\nto " "think " "they " "could " "doubt " "my " "love. " 
  "\nYet " to "day "  "my " "love " "has " "flown "  a "way. "
  "\nI " "am " with "out " "my "  "love, " 
  "\nmy " "love, "  "my " "love, "  "my " "love. " 

  "\nNow " laugh "ing " "friends "  de "ride, " 
  "\ntears " "I " can "not " "hide, " 
  "\ntears " "I " can "not " "hide, "
  "\nso " "I " "smile "  "and " "say, " 
  "\n\"When " "a " love "ly " "flame " "dies, "
  "\nsmoke " "gets " "in "  "your " "eyes, " 
  "\nsmoke " "gets " "in " "your " "eyes, " 

  "\nSo " "I " "chaffed "  "them " "and " "I " gai "ly " "laughed " 
  "\nto " "think " "they " "could " "doubt " "my " "love. " 
  "\nYet " to "day "  "my " "love " "has " "flown "  a "way. "
  "\nI " "am " with "out " "my "  "love, " 
  "\nmy " "love, "  "my " "love, "  "my " "love. " 

  "\nNow " laugh "ing " "friends "  de "ride, " 
  "\ntears " "I " can "not " "hide, " 
  "\ntears " "I " can "not " "hide, "
  "\nso " "I " "smile "  "and " "say, " 
  "\n\"When " "a " love "ly " "flame " "dies, "
  "\nsmoke " "gets " "in "  "your " "eyes, " 
  "\nin " "your " "eyes " 
  "\nin " "your " "eyes, " 
  "\nin " "your " "eyes.\" " 
}

alto = \relative {
  \global
  R1*8
  g'1^\mf ~
  g1~
  g1
  bes4 aes8 ees~8 f4 g16(aes % 3a
  g1~
  g1)
  R1 % 3b
  R1
  c,1
  b4 d8 c~8 a4 f'8~ % 3c
  f2. r4
  e4 g8 f~8 d4 c'8~
  c1~ % 4a
  c1~
  c2. r4
  d4 c8 gis~8 a4 b8~ % 4b
  b1
  a4 g8 a,~8 c4 g'8~
  g2. r4 % 4c
  a8 g4 a8~8 b4 a8~(
  a8 g e2.~
  e2.) r4 % 5a
  f2(d
  a2 b)
  c1^\markup Unis. % 5b
  b4 d8 c~8 a4 f'8~
  f2. r4
  e4 g8 f~8 d4 <f a>8~(
  q1
  aes1
  g2.) r4 % 6a
  fis4 8 8~8 4 e8~
  e1
  e4 8 a,~8 c4 f8~ % 6b
  f2. r4
  f4 8 g,8~8 a4 c8~
  c1~ % 6c
  c1
  R1
  R1 \bar "||" \key aes \major
  \repeat segno 2 {
    r2 c8 ees4 c'8~ % 7a
    c2. g4
    bes4 aes8 c,~8 ees4 g8~
    g1 % 7b
    r4 f \tuplet 3/2 {f g aes}
    ees2 ges4. ees8~
    ees1 % 7c
    R1
    r2 c4 ees8 c'~
    c2. g4 % 8a
    bes4 aes8 c,~8 ees4 g8~
    g4 f e d \bar "||" \key c \major
    e1 % 8b
    e2~4. d8~
    d2 r4 d8 f~
    f2 r4 f8 8~ % 8c
    f2\glissando a
    <<{a2(aes4~ aes)
    c,1 % 9a
       } \new Voice {\hideNotes \voiceTwo s2. aes'4\glissando c,1} >>
    b4 d8 c~8 a4 e'8~(
    e2 d4) r
    b4 e8 d~8 b4 f'8~ % 9b
    f2 4 4
    aes2 2
    g2. r4 % 9c
    fis4 8 8~8 4 g8~
    g1
    cis,4 8 8~8 e8 4 % 10a
    f2. r4
    \volta 1 {
      f4 8 g,~8 a4 c8~
      c4 a r8 a r4 % 10b
      a2 gis4. a8~
      a1
      R1
    }
    \volta 2 {
    }
  }
  f'4 8 8~8 4 g8~ % 10c
  g1~
  g4 r g c
  g1~ % 11a
  g4 r g g
  f1~
  f2 r % 11b
  a1
  aes1
  a1\omit\ff~ % 11c
  a1
  R1
  R1
  \bar "|."
}

tenor = \relative {
  \global \voiceOne
  R1*8
  g1^\mf ~ % 2b
  g1~
  g1
  bes4 aes8 ees~8 f4 g16(aes % 3a
  g1~
  g1)
  R1 % 3b
  R1
  c1
  b4 d8 c~8 a4 f8^\markup Unis. ~ % 3c
  f2. r4
  e4 g8 f~8 d4 c'8~
  c1~ % 4a
  c1~
  c2. r4
  d4 c8 gis~8 a4 b8~ % 4b
  b1
  a4 g8 a~8 c4 g8^\markup Unis. ~
  g2. r4 % 4c
  a8 g4 a8~8 b4 a8~(
  a8 g e2.~
  e2.) r4 % 5a
  c'2(b
  g2 f^\markup Unis. )
  r2 e % 5b
  g4 8 8~8 4 a8~(
  a2 c4) r
  b4 8 8~8 4 d8~( % 5c
  d1
  e1~
  e2.) r4 % 6a
  ees4 8 8~8 4 d8~
  d1
  c4 8 a~8 c4 8~ % 6b
  c2. r4
  c4 8 g^\markup Unis. ~8 a4 c8~
  c1~ % 6c
  c1
  R1
  R1 \bar "||" \key aes \major
  \repeat segno 2 {
    c,8^\markup\italic mel. ees4 c'8 ~ 2 ~ % 7a
    c4 g8 bes~8 aes4.
    c,8 ees4 g8~2~
    g4 4 \tuplet 3/2 {f g aes} % 7b
    ees1
    ges2~4. ees8~
    ees1 % 7c
    R1
    c4 ees8 c'~2~
    c4 g8 bes~8 aes4. % 8a
    c,4 ees8 g~2
    r4 f e d \bar "||" \key c \major
    e1 % 8b
    e2~4. d8~
    d2 r4 d'8 des~
    des2 r4 des8 d~ % 8c
    d2\glissando f
    << {f2.^\f ~ f4
    c1^\mf % 9a
        } \new Voice {\voiceOne s2. f4\glissando c1}>>
    b4 d8 c~8 a4 c8~
    c2. r4
    aes4 b8 8~8 4 d8~ % 9b
    d2 4 4
    e2 2
    e2. r4 % 9c
    ees4 8 8~8 4 e8~
    e1
    bes4 8 8~8 des8 4 % 10a
    c2. r4
    \volta 1 {
      c4 8 g~8 a4 c8~
      c4 g r8 g r4 % 10b
      g2 f4. g8~
      g1
      R1 \bar "||"
    }
  }
  c4 8 8~8 4 e8~ % 10c
  e1~
  e4 r g,\omit\cresc^\markup\italic "grad. cresc." c
  ees1~ % 1a
  ees4 r ees ees
  c1~
  c2 r % 11b
  f1
  f1
  e1^\ff ~ % 11c
  e1
  R1
  R1
  \bar "|."
}

bass = \relative {
  \global
  R1*8
  g1^\mf ~ % 2b
  g1~
  g1
  bes4 aes8 ees~8 f4 g16(aes % 3a
  g1~
  g1)
  R1 % 3b
  R1
  c,1
  b4 d8 c~8 a4 f'8 ~ % 3c
  f2. r4
  e4 g8 f~8 d4 c'8~
  c1~ % 4a
  c1~
  c2. r4
  d4 c8 gis~8 a4 b8~ % 4b
  b1
  a4 g8 a,~8 c4 g'8~
  g2. r4 % 4c
  a8 g4 a8~8 b4 a8~(
  a8 g e2.~
  e2.) r4 % 5a
  a2(g
  f2 2)
  r2 e % 5b
  g4 8 8~8 4 a8(~
  a2 c4) r
  b4 8 8~8 4 bes8~( % 5c
  bes1~
  bes1
  a2.) r4 % 6a
  a4 8 b~8 c4 g8~
  g1
  g4 8 a~8 c4 a8~ % 6b
  a2. r4
  g4 a8 g~8 a4 c8~
  c1~ % 6c
  c1
  R1
  R1 \bar "||" \key aes \major
  \repeat segno 2 {
    c,8 ees4 c'8 ~ 2 ~ % 7a
    c4 g8 bes~8 aes4.
    c,8 ees4 g8~2~
    g4 4 \tuplet 3/2 {f g aes} % 7b
    ees1
    ges2~4. ees8~
    ees1 % 7c
    R1
    c4 ees8 c'~2~
    c4 g8 bes~8 aes4. % 8a
    c,4 ees8 g~2
    r4 f e d \bar "||" \key c \major
    e1 % 8b
    e2~4. d8~
    d2 r4 d'8 des~
    des2 r4 des8 c~ % 8c
    c2 c
    b1\omit\f
    c1^\mf % 9a
    b4 d8 c~8 a4 8~
    a2. r4
    g4 aes8 8~8 4 bes8~ % 9b
    bes2 4 4
    bes2 2
    a2. r4 % 9c
    a4 8 b~8 c4 d8~(
    d4 c b c)
    g4 8 8~8 bes8 4 % 10a
    a2. r4
    \volta 1 {
      g4 a8 g~8 a4 c8~
      c4 e, r8 e r4 % 10b
      ees2 d4. e8~
      e1
      R1
    }
    \volta 2 {}
  }
  g4 a8 8~8 g4 b8~( % 10c
  b1
  a4) r g\omit\cresc c
  a1~ % 11a
  a4 r a a
  fis1~
  fis2 r % 11b
  c'1
  b1
  c1^\ff ~
  c1
  R1
  R1
  \bar "|."
}

pianoRH = \relative {
  \global
  g''4-- f8 e r d r f
  r8 e4.-> d4-. c-.
  e4-- d8 c r b r d
  r8 c4.-> b4-. a-. % 2b
  <a, c f g>4-. q-. r8 q4.
  <c ees f bes>4-. q-. r8 q4.
  <a c f g>4. d'8 r e r f
  \override Glissando.style = #'zigzag g4-^ r <g g'>2->\glissando % 2c
  <b,, d e g>4-. q-. r8 q4.
  <des f g bes>4-. q-. r8 q4.
  <c e f a>4-. q-. r8 q4.
  <b ees f bes>4-- aes'8 <b, ees> r <b ees f> r <b d e g>8~ % 3a
  q4 4-. r8 q4.
  <des f g bes>4-. q-. r8 q4.
  <a c f g>2 <g b d e> % 3b
  <e f a c>2 <f aes b d>
  <e g b c>4-. q-. r8 q4.
  <g b c e>4-. q-. r8 q4. % 3c
  <f a c e>4-. q-. r8 q4.
  q4-- c'8 d r <f, b> r <e g b d>8~
  q4 q-. r8 q4. % 4a
  <e fis ais c>4-. q-. r8 q4.
  <g a c e>4-. q-. r8 q4.
  <a c>4-- a8 b r c r <e, g b d>8~ % 4b
  q4 q-- r8 q4.
  <g b d>4-. q-. r8 <e g c>4.
  <f a c>4-. q-. r8 q4. % 4c
  <f a c e>4-. q-. r8 <f aes b d>4.
  <g b d>4-. q-. r8 q4.
  <g bes cis e>4-. q-. r8 <g bes cis f>4. % 5a
  <a c f g>2 <g b e>
  <e f a c>2 <f aes b d>
  <g b d e>4-. q-. r8 q4. % 5b
  <g b c e>4-. q-. r8 <b c e g>4.
  <a c e f>4-. q-. r8 <a c d f>4.
  <f aes b e>4-. q-. r8 q4. % 5c
  <f bes c>4-. q-. r8 q4.
  <e gis ais c>4-. q-. r8 <e gis ais dis>4.
  <e g a c>2 a4 b % 6a
  <a c>4-- a8 c r8 a' r <b, d e g>8~
  q4 q-. r8 q4.
  <g b c e>4-. q-. r8 q4. % 6b
  <a c f>4-. q-. r8 <f a>4.
  <f a c>4. g8 r a r <e g a c>8~
  q4 4-. r8 <b' d e g>4. % 6c
  <a d ees g>4 f' c d
  <g, b d e>2 <b d e g>
  <aes c des f>2 <g b des ees> \bar "||" \key aes \major
  \repeat segno 2 {
    g4 <bes c ees>8 f~8 q4 g8~ % 7a
    g8 q4 f8~2
    g4 <aes c ees>8 f~8 q4 g8~
    g8 q4 f8~2 % 7b
    c'4 <d f>8 aes~8 q4 a8~
    a8 <d ees ges>4 8~4 a
    aes4 <d f>8 8~8 g aes4 % 7c
    <d, f aes>4 f <g, d' ees> d'
    g,4 <bes c ees>8 f~8 q4 g8~
    g8 <bes c ees>4 f8~2 % 8a
    g4 <aes c ees>8 f~8 q4 c'8~
    c8 <f g>4 <b, e g>8~8 <bes d f>4. \bar "||" \key c \major
    b4 <d ees g>8 a~8 q4 b8~ % 8b
    b8 <c e g>4 a8~2
    d4 <f a>8 c~8 q4 cis8~
    cis8 q4 8~4 f8 <c f a>8~ % 8c
    q2 <f a c>
    <f a b e> <f aes b e>
    <e g b d>4-. q-.  r8 <e g a c>4. % 9a
    <c e g >4-. q-. r8 <a c e g>4.
    <a c e f>4-. q-. r8 <a c d f>4.
    <f aes b e>4-. q-. r8 <f a b d>4. % 9b
    <f bes c>4-. q-. r8 q4.
    <e gis ais c>4-. q-. r8 q4.
    <e g a c>2 a4 b % 9c
    <a c>4 ees'8 b' r <e, a c> r <b d e g>8~
    q4 q-. r8 q4.
    <g bes cis f>4-. q-. r8 <g es cis e>4. % 10a
    <a c f g>4-. q-. r8 <a c>4.
    \volta 1 {
      <f a c>2 <f a  e>
      <e g a c>4-. q-. r8 <a d e g>4. % 10b
      <a d ees g>4 f' c d
      <g, a c e>2 <a c e g>
      <aes c des f>2 <g b des ees>
    }
    \volta 2 {}
  }
  <c f a>4 g'8 8 r q r <b, c e g>8~ % 10c
  q4 q-. r8 q4.
  <a c e g>4-. q-. r8 q4.
  <a c ees g>4-. q-. r8 q4. % 11a
  q4-. q-. r8 q4.
  <c f ges bes>4-. q-. r8 q4.
  q4-. q-. r8 <ges' bes c>4. % 11b
  <f a c e>4-. q-. r8 q4.
  <f aes b e>2-> g->
  g'4 f8 e r d r f % 11c
  r8 e4.-> d4-. c-.
  <a c f g>2 <b ees g>4. <d e g c>8
  r2 c,4-^ r
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
  s1*3
  s1\cresc % 2b+
  s1*2
  s1\f % 2c
  s1\mf
  s1*39
  \repeat segno 2 {
    s1*17
    s1\f
    s1\mf % 9a
    s1*10
    \volta 1 {
      s1*5
    }
    \volta 2 {}
  }
  s1*2
  s2 s8 s4.\omit\cresc-\markup\italic "grad. cresc." % 10c++
  s1*6
  s1\ff % 11c
  s1*3
}

pianoLH = \relative {
  \global
  g4-- f8 e r d e f
  r8 e4.-> d4-. c-.
  e4-- d8 c r b r d
  r8 c4.-> b4-. a-. % 2b
  g4-. 4-. r8 4.
  <aes aes'>4-. q-. r8 q4.
  <g f'>4. d'8 r e r f
  g4-^ r4 r2 % 2c
  c,,2 g'
  ees2 bes'
  d,2 a'
  g2 bes % 3a
  c,2 g'
  ees2 bes'
  d,2 e % 3b
  f2 g
  c2 g
  a2 e % 3c
  d2 a'
  g2 2
  c,2 g' % 4a
  fis2 2
  f2 2
  fis2 2 % 4b
  g2 g,4 gis
  a2 e'4 ees
  d2 a' % 4c
  g2 g,
  e'2 b'
  a2 e4 ees % 5a
  d2 e
  f2 g
  c2 g % 5b
  a2 e
  d2 a'
  g2 g, % 5c
  g'2 d4 g
  fis2 2
  f2 c4 f % 6a
  fis2 2
  g2 g,4 gis
  a2 e'4 ees % 6b
  d2 a'
  g2 g,
  c2 g'4 ges % 6c
  f2 bes,4 b
  c2 c'4 b
  bes2 ees, \bar "||" \key aes \major
  \repeat segno 2 {
    aes2 ees % 7a
    aes2 ees4 e
    f2 c
    f2 c'4 ces % 7b
    bes2 f
    ces'2 ges
    es2 f % 7c
    ees4. bes'8 a4 4
    aes2 ees
    aes2 ees4 e % 8a
    f2 c4 f
    g2 g, \bar "||" \key c \major
    c2 g' % 8b
    a2 e
    d2 a'
    d2 a % 8c
    g2 d
    g2 g,
    c2 g' % 9a
    a2 e
    d2 a'
    g2 g, % 9b
    g'2 d4 g
    fis2 2
    f2 c4 f % 9c
    fis2 2
    g2 g,4 gis
    a2 e'4 ees % 10a
    d2 a'
    \volta 1 {
      g2 g,
      c2 g'4 ges % 10b
      f2 bes,4 b
      c2 c'4 b
      es2 ees,
    }
    \volta 2 { }
  }
  g2 g, % 10c
  c2 g'
  c2 g4 ges
  f2 c % 11a
  f2 4 g
  aes2 ees
  aes2 ees4 aes % 11b
  g2 d
  g2-> <g, g'>->
  g''4-- f8 e r d r f % 11c
  r8 e4.-> d4-. c-.
  g2 4. c,8
  r2 <c c'>4-^ r
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice =alignerA \alto
            \new NullVoice =alignerS \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsMen
          >>
        >>
        \new PianoStaff = piano <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
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
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice =alignerA \alto
            \new NullVoice =alignerS \soprano
            \addlyrics \wordsSingle
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsMenSingle
          >>
        >>
        \new PianoStaff = piano <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partCombine \soprano \alto
            \new NullVoice =alignerA \alto
            \new NullVoice =alignerS \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
            \new NullVoice \tenor
            \addlyrics \wordsMenSingle
          >>
        >>
        \new PianoStaff = piano <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
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
  \bookOutputSuffix "midi-sop"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsMidiSop
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
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsMidi
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
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
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
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
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
            \addlyrics \wordsMidi
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
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRH
            \new Dynamics \dynamicsPiano
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {}
  }
}
