\version "2.25.13"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "They Can't Take That Away from Me"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "George and Ira Gershwin"
  arranger    = "Arr. Mark Hayes"
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
}

TempoTrack = {
  \tempo "Unhurried swing feel" 4=104
  s1
  \tempo 4=104
  \set Score.tempoHideNote = ##t
  s1*73 s2 \tempo 4=90 s2 s1
  \tempo 4=104
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \textMark \markup { \box "2a" } s1*3
  \textMark \markup { \box "2b" } s1*3
  \textMark \markup { \box "3a" } s1*3
  \textMark \markup { \box "3b" } s1*3
  \textMark \markup { \box "3c" } s1*3
  \textMark \markup { \box "4a" } s1*2
  \textMark \markup { \box "4b" } s1*3
  \textMark \markup { \box "4c" } s1*3
  \textMark \markup { \box "5a" } s1*3
  \textMark \markup { \box "5b" } s1*3
  \textMark \markup { \box "5c" } s1*3
  \textMark \markup { \box "6a" } s1*3
  \textMark \markup { \box "6b" } s1*3
  \textMark \markup { \box "6c" } s1*3
  \textMark \markup { \box "7a" } s1*3
  \textMark \markup { \box "7b" } s1*4
  \textMark \markup { \box "7c" } s1*4
  \textMark \markup { \box "8a" } s1*3
  \textMark \markup { \box "8b" } s1*3
  \textMark \markup { \box "8c" } s1*3
  \textMark \markup { \box "9a" } s1*3
  \textMark \markup { \box "9b" } s1*3
  \textMark \markup { \box "9c" } s1*3
  \textMark \markup { \box "10a" } s1*3
  \textMark \markup { \box "10b" } s1*3
  \textMark \markup { \box "10c" } s1*3
  \textMark \markup { \box "11a" } s1*3
  \textMark \markup { \box "11b" } s1*3
  \textMark \markup { \box "11c" } s1*3
}

ChordTrack = \tripletFeel 8 \chordmode {
  s1
  s8 f4.:maj9 g:m7 f8:2/a
  s1
  s8 bes2.:maj9/c c8:6.9 % 2b
  s2.. a8:m7
  s2.. d8:m7
  s1 % 3a
  g2:6.9 des4.:9.5- g8:m7/c
  s1
  s8 f:maj7 g4:m7 a:m7 g8:m7 f:maj7 % 3b
  s2 aes:dim7
  s8 g2.:m7 c8:6.9
  s2 bes4./c c8:m/f % 3c
  s4. ees8/f s2
  f2:6.9 f:13.9-
  bes2 f4./a g8:7 % 4a
  s2 g:m7/c
  s8 f:maj7 g4:m7 a:m7 g8:m7 f:maj7 % 4b
  s2 aes:dim7
  g2..:m7 c8:13
  s2 g4.:m7/c c8:m7/f % 4c
  s2.. f8:6.9
  s2 ees4:maj7/g f:6.9/a
  bes4 g:m7 c:13 c8:13.9- f:6 % 5a
  s2. d8/e e:7
  a2:m fis4:m7.5- e:7.9-
  a2:m d4:9 e:7.9- % 5b
  a4:m a:m/g fis:m7.5- f:9
  e2:7sus e4:7 d8/e e:7
  a2:m b4:m7sus4 bes:7 % 5c
  a2:m d4:7sus d:7
  g2:6.9 des4.:9.5- g8:m7/c
  s1 % 6a
  s8 f:maj7 g4:m7 a:m7 g8:m7 f:maj7
  s2 aes:dim7
  g1:m9 % 6b
  c2:13 g4.:m7/c ees8:maj7/f
  s1
  f4:6.9 f:7 ees:2/g f:7/a % 6c
  bes4 g:m7 bes/c cis8:dim7 d:m
  s4 bes2:m6.9 bes4:m6
  f4/c bes/c f/c a:m/c % 7a
  g2:m7/c c:13.9-
  s2 g:m7
  f2/a d:7.9- % 7b
  g2:6.9 g:9
  bes4:maj7/c bes/c c2:7.9-
  a1:m7
  d1:7.9- % 7c
  bes2:maj7 g:m7
  bes4:maj7/c bes2/c s8 f:6
  s1
  b4.:m7sus4 e4.:7 d8/e e:7 % 8a
  a2:m d4:9 e:7.9-
  a2:m d4:9 e:7.9-
  a4:m a:m/g fis:m7.5- b:7.5+ % 8b
  e2:7sus e4:7 d8/e e:7
  a2:m f4:9 e:7.9-
  a2:m d4:7sus d:7 % 8c
  g2:6.9 des:9.5-
  g1:m7/c
  s8 f:maj7 g4:m7 a:m7 g8:m9 f:maj9 % 9a
  s2 aes4.:dim7 g8:m7sus4
  s2.. g8:m7/c
  s2 bes4./c ees8:maj7/f % 9b
  s1
  f4:6.9 f:7 ees:2/g f:7/a
  bes4 g:m7 bes/c cis8:dim7 d:m % 9c
  s4 bes2.:m6
  f4/c bes/c f4./c g8:m7/c
  s1 % 10a
  f4/c bes/c f4./c g8:m7/c
  s1
  f4 ees:7 d4.:9 g8:9 % 10b
  s2 c:13.9-
  f1:9
  bes1:9 % 10c
  f1:9
  bes1:9
  f1:9 %11a
  bes1:9
  f1:9
  bes1:9 % 11b
  f4 ees:7 d4.:9 g8:9
  s1
  c1:9.5+ % 11c
  f1:6.9
  s1
}

soprano = \tripletFeel 8 \relative {
  \global
  R1*8
  r8 f'^\mp 8 8 4 8 \appoggiatura gis8 a
  R1 % 3b
  r8 f8 8 8 4 8 c~
  c1
  r8 f8^\< 8 8 4 8 c'^\mf~ % 3c
  c1
  r4 d^\< d d
  f8^\f d c bes c4 a8^\> g % 4a
  r8\! f^\mf 8 8 4 8 a~
  a1 % 4b
  r8 f8 8 8 4 8 c~
  c1
  r8 f8 8 8 4 8 c'~ % 4c
  c1
  r4 d^\< d d
  f8^\f d c bes c4 a8 f~ % 5a
  f2 r4 a8^\mf b
  c4 a e' d
  c4 a e' d8 c % 5b
  a8 4 8~4 g
  e2 r
  R1 % 5c
  R1
  R1
  r8 f8^\mp 8 8 4 8 \appoggiatura gis8 a % 6a
  R1
  r8 f8 8 8 4 8 c~
  c1^\< % 6b
  r8\! f8 8 8 4^\< 8 d'^\mf ~
  d1
  r4 f^\< f f % 6c
  f8^\f d c bes c4 a8 f~
  f8 r c'2 bes4
  a4 bes a c % 7a
  g2^\> a
  f2^\mf r
  R1*12 % 7b
  r2 r4 a8^\mf b % 8b+
  c4 a e' d
  c4 a d d % 8c
  g,1
  r8 f' e d c4 bes8 a~
  a1 % 9a
  r8 c c c f4 d8 c~
  c1
  r8 f,8 8 8 4 8 d'~ % 9b
  d1^\<
  r4\! f^\f f f
  f8 d c bes c4 a8 f~ % 9c
  f8 r c'2^\mf bes4
  a4 bes a c8 g~
  g2 r4 f8 g % 10a
  a4 bes a c8 g~
  g2 r4 f8 g
  a4 bes a c8 d^\< ~ % 10b
  d2 r4\! e8^\f f~
  f1
  \bar "|."
  r8 aes,8 4 4 g8 d % 10c
  g4 f8 8~4 r
  \tuplet 3/2 {f'4 ees c} \tuplet 3/2 {ces bes aes}
  f1 % 11a
  r8 c^\mf \tuplet 3/2 {d8 f aes} g4 d8 f
  R1
  r8 c \tuplet 3/2 {d f aes} g4 f8 g % 11b
  a4^\< bes a c8 d^\f ~
  d1
  e1^\< % 11c
  r8\! f^\ff ~ 2. ~
  f1
  \bar "|."
}

wordsSop = \lyricmode {
  The way you wear your hat,
  the way you sip your tea, __
  the mem -- 'ry of all that, __
  No, no! They can't take that a -- way from me!

  The way your smile just beams, __
  the way you sing off key, __
  the way you haunt my dreams, __
  No, no! They can't take that a -- way from me!

  We may nev -- er, nev -- er meet a -- gain
  on the bump -- y road to
  \set associatedVoice = men
  love.
  Still I'll al -- ways, al -- ways keep the mem -- 'ry
  \set associatedVoice = women
  of

  The way you hold your knife,
  the way we danced till three, __
  the way you changed my life, __
  No, no! They can't take that a -- way from me! __
  No, they can't take that a -- way from
  \set associatedVoice = men
  me!
  
  We may nev -- er, nev -- er meet a -- gain
  on the bump -- y road to
  \set associatedVoice = women
  love.
  Still I'll al -- ways, al -- ways keep the mem -- 'ry of

  The way you hold your knife,
  the way we danced till three, __
  the way you changed my life, __
  No, no! They can't take that a -- way from me! __
  No, they can't take that a -- way,
  no, they can't take that a -- way,
  no, they can't take that a -- way from
  \set associatedVoice = alto
  me! __

  They can't take that a -- way from me! __
  
  No, no, no. __
  Can't take that a -- way from me,
  can't take that a -- way.
  No, they can't take that a -- way __
  from me! __
}

wordsSopAbove = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  No, they can't take that a -- way.
}

wordsSopSep = \lyricmode {
  The way you wear your hat,
  the way you sip your tea, __
  the mem -- 'ry of all that, __
  No, no! They can't take that a -- way from me!

  The way your smile just beams, __
  the way you sing off key, __
  the way you haunt my dreams, __
  No, no! They can't take that a -- way from me!

  We may nev -- er, nev -- er meet a -- gain
  on the bump -- y road to love.

  The way you hold your knife,
  the way we danced till three, __
  the way you changed my life, __
  No, no! They can't take that a -- way from me! __
  No, they can't take that a -- way from me!

  Still I'll al -- ways, al -- ways keep the mem -- 'ry of

  The way you hold your knife,
  the way we danced till three, __
  the way you changed my life, __
  No, no! They can't take that a -- way from me! __
  No, they can't take that a -- way,
  no, they can't take that a -- way,
  no, they can't take that a -- way from me!

  They can't take that a -- way from me! __
  
  No, they can't take that a -- way __
  Can't take that a -- way from me! __
  can't take that a -- way.
  No, they can't take that a -- way from me! __
}

wordsSopMidi = \lyricmode {
  "The " "way " "you " "wear " "your " "hat, "
  "\nthe " "way " "you " "sip " "your " "tea, " 
  "\nthe " mem "'ry " "of " "all " "that, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! "

  "\nThe " "way " "your " "smile " "just " "beams, " 
  "\nthe " "way " "you " "sing " "off " "key, " 
  "\nthe " "way " "you " "haunt " "my " "dreams, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! "

  "\nWe " "may " nev "er, " nev "er " "meet " a "gain "
  "\non " "the " bump "y " "road " "to " "love. "

  "\nThe " "way " "you " "hold " "your " "knife, "
  "\nthe " "way " "we " "danced " "till " "three, " 
  "\nthe " "way " "you " "changed " "my " "life, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! " 
  "\nNo, " "they " "can't " "take " "that " a "way " "from " "me! "
  
  "\nStill " "I'll " al "ways, " al "ways " "keep " "the " mem "'ry " "of "

  "\nThe " "way " "you " "hold " "your " "knife, "
  "\nthe " "way " "we " "danced " "till " "three, " 
  "\nthe " "way " "you " "changed " "my " "life, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! " 
  "\nNo, " "they " "can't " "take " "that " a "way, "
  "\nno, " "they " "can't " "take " "that " a "way, "
  "\nno, " "they " "can't " "take " "that " a "way " "from " "me! " 
  
  "\nThey " "can't " "take " "that " a "way " "from " "me! " 
  "\nNo, " "they " "can't " "take " "that " a "way. "
  "\nCan't " "take " "that " a "way " "from " "me, "
  "\ncan't " "take " "that " a "way. "
  "\nNo, " "they " "can't " "take " "that " a "way " 
  "\nfrom " "me! " 
}

alto = \tripletFeel 8 \relative {
  \global
  R1*8
  r8 f'^\mp 8 8 4 8 \appoggiatura gis8 a % 3a++
  R1 % 3b
  r8 f8 8 8 4 8 c~
  c1
  r8 f8^\< 8 8 4 8 g^\mf ~ % 3c
  g1
  r4 g^\< fis fis
  f8^\f 8 8 8 4 8^\> 8 % 4a
  r8\! d^\mf 8 8 4 8 e~
  e1 % 4b
  r8 e8 8 8 d4 8 c~
  c1
  r8 d8 8 8 4 8 ees~ % 4c
  ees1
  r4 ees4^\< ees ees
  f8^\f f f f e4 8 c~ % 5a
  c2 r4 a'8^\mf gis
  a4 e c' b
  a4 e fis gis8 gis % 5b
  a8 4 8~4 g
  e2 r
  R1*3 % 5c
  r8 f^\mp 8 8 4 8 \appoggiatura gis a % 6a
  R1
  r8 f8 8 8 4 8 c~
  c1^\< % 6b
  r8\! d8 8 8 4^\< 8 <ees g>^\mf ~
  q1
  r4 a^\< bes c % 6c
  bes8^\f f f f <d f>4 e8 d~
  d8 r <des f>2 q4
  f4 f f e % 7a
  d2^\> <des e>
  c2^\mf r
  R1*12 % 7b
  r2 r4 a'8^\mf gis % 8b+
  a4 e c' b
  a4 e g fis % 8c
  g1
  r8 d' c bes a4 g8 e~(
  e4 <d f> <e g> <d f>8 <c e>) % 9a
  r8 <e g> q q <d f>4 q8 q~
  q1
  r8 d8 8 8 4 8 <ees g>~ % 9b
  q1^\<
  r4\! a^\f bes c
  bes8 f f f <d f>4 e8 d~ % 9c
  d8 r <des f>2^\mf q4
  f4 f f e8 <d f>~
  q2 r4 d8 d % 10a
  f4 f f e8 <d f>~
  q2 r4 d8 d
  f4 g fis fis8 f^\< ~ % 10b
  f2 r4\! e8^\f f~
  f1
  r8 aes8 4 4 g8 d % 10c
  g4 f8 f~4 r
  \once\partCombineApart R1
  r8 aes8 8 8^\>( ~8 g f4) % 11a
  r8\! c^\mf \tuplet 3/2 {d8 f aes} g4 d8 f
  R1
  r8 c \tuplet 3/2 {d f aes} g4 f8 g % 11b
  f4^\< g fis fis8 <f a>^\f ~
  q1
  <aes c>1^\< % 11c
  r8\~ <g c>^\ff ~q2. ~
  q1
  \bar "|."
}

wordsAltoSep = \lyricmode {
  The way you wear your hat,
  the way you sip your tea, __
  the mem -- 'ry of all that, __
  No, no! They can't take that a -- way from me!

  The way your smile just beams, __
  the way you sing off key, __
  the way you haunt my dreams, __
  No, no! They can't take that a -- way from me!

  We may nev -- er, nev -- er meet a -- gain
  on the bump -- y road to love.

  The way you hold your knife,
  the way we danced till three, __
  the way you changed my life, __
  No, no! They can't take that a -- way from me! __
  No, they can't take that a -- way from me!

  Still I'll al -- ways, al -- ways keep the mem -- 'ry of

  The way you hold your knife,
  the way we danced till three, __
  the way you changed my life, __
  No, no! They can't take that a -- way from me! __
  No, they can't take that a -- way,
  no, they can't take that a -- way,
  no, they can't take that a -- way from me!

% stop here
  
  They can't take that a -- way from me! __
  
  No, no, no, __
  Can't take that a -- way from me! __
  can't take that a -- way.
  No, they can't take that a -- way from me! __
}

wordsAltoMidi = \lyricmode {
  "The " "way " "you " "wear " "your " "hat, "
  "\nthe " "way " "you " "sip " "your " "tea, " 
  "\nthe " mem "'ry " "of " "all " "that, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! "

  "\nThe " "way " "your " "smile " "just " "beams, " 
  "\nthe " "way " "you " "sing " "off " "key, " 
  "\nthe " "way " "you " "haunt " "my " "dreams, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! "

  "\nWe " "may " nev "er, " nev "er " "meet " a "gain "
  "\non " "the " bump "y " "road " "to " "love. "

  "\nThe " "way " "you " "hold " "your " "knife, "
  "\nthe " "way " "we " "danced " "till " "three, " 
  "\nthe " "way " "you " "changed " "my " "life, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! " 
  "\nNo, " "they " "can't " "take " "that " a "way " "from " "me! "
  
  "\nStill " "I'll " al "ways, " al "ways " "keep " "the " mem "'ry " "of "

  "\nThe " "way " "you " "hold " "your " "knife, "
  "\nthe " "way " "we " "danced " "till " "three, " 
  "\nthe " "way " "you " "changed " "my " "life, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! " 
  "\nNo, " "they " "can't " "take " "that " a "way, "
  "\nno, " "they " "can't " "take " "that " a "way, "
  "\nno, " "they " "can't " "take " "that " a "way " "from " "me! " 

  "\nThey " "can't " "take " "that " a "way " "from " "me! " 
  
  "\nNo, " "no, " "no. " 
  "\nCan't " "take " "that " a "way " "from " "me, "
  "\ncan't " "take " "that " a "way. "
  "\nNo, " "they " "can't " "take " "that " a "way " 
  "\nfrom " "me! " 
}

tenor = \tripletFeel 8 \relative {
  \global
  R1*8
  r8 f8^\mp 8 8 4 8 \appoggiatura gis8 a % 3a++
  R1 % 3b
  r8 f8 8 8 4 8 c~
  c1
  r8 f8^\< 8 8 4 8 ees'^\mf ~ % 3c
  ees1
  r4 ees^\< 4 4
  d8^\f d d d c4 c8^\> b % 4a
  r8\! b^\mf b b bes4 8 c~
  c1 % 4b
  r8 c c c b4 8 bes~
  bes1
  r8 bes8 8 8 4 8 8~( % 4c
  bes2.~8 a)
  r4 a^\< bes c
  d8^\f d d d bes4 8 a~ % 5a
  a2 r
  R1*3
  r2 r4 a8^\mf b % 5b++
  c4 a e' d % 5c
  c4 a d d
  g,1
  r8 f^\mp 8 8 4 8 \appoggiatura gis a % 6a
  R1
  r8 a a a aes4 8 bes~
  bes1^\< % 6b
  r8\! bes8 8 8 4^\< 8 8^\mf ~
  bes1
  r4 ees^\< ees ees % 6c
  d8^\f d d d bes4 8 a~
  a8 r g2 4
  c4 d c a % 7a
  bes2^\> bes
  a2^\mf r
  R1*8 % 7b
  r2 r4 a8^\mf b % 8a
  c4 a e' d
  c4 a e' d8 c
  a8 4 8~4 g % 8b
  e16(d e8~4) r2
  R1
  R1 % 8c
  R1
  r8 f'^\mf e d c4 bes8 c~(
  c4 bes c bes8 a) % 9a
  r8 c c c b4 8 bes~
  bes1
  r8 bes8 8 8 4 8 8~ % 9b
  bes1^\<
  r4\! ees^\f ees ees
  d8 d d d bes4 8 a~ % 9c
  a8 r g2^\mf 4
  c4 d c a8 bes~
  bes2 r4 bes8 8 % 10a
  c4 d c a8 bes~
  bes2 r4 bes8 8
  c4 des c a8 b^\< ~ % 10b
  b2 r4\! c8^\f f~
  f1
  r8 aes,8 4 4 g8 d % 10c
  g4 f8 8~4 r
  \tuplet 3/2 {f'4 ees c} \tuplet 3/2 {ces bes aes}
  g1 % 11a
  R1
  r8 c,^\mf \tuplet 3/2 {d f aes} g4 d8 f
  r2 r4 f8 g % 11b
  c4^\< des c a8 b^\f ~
  b1
  <bes d>1^\< % 11c
  r8\! <a d>^\ff ~ 2. ~
  q1
  \bar "|."
}

wordsTenorSep = \lyricmode {
  The way you wear your hat,
  the way you sip your tea, __
  the mem -- 'ry of all that, __
  No, no! They can't take that a -- way from me!

  The way your smile just beams, __
  the way you sing off key, __
  the way you haunt my dreams, __
  No, no! They can't take that a -- way from me!

  Still I'll al -- ways, al -- ways keep the mem -- 'ry of

  The way you hold your knife,
  the way we danced till three, __
  the way you changed my life, __
  No, no! They can't take that a -- way from me! __
  No, they can't take that a -- way from me!

  We may nev -- er, nev -- er meet a -- gain
  on the  bump -- y road __ to love. __
%  Still I'll al -- ways, al -- ways keep the mem -- 'ry of

  The way you hold your knife,
  the way we danced till three, __
  the way you changed my life, __
  No, no! They can't take that a -- way from me! __
  No, they can't take that a -- way,
  no, they can't take that a -- way,
  no, they can't take that a -- way from me!

% end of what we sing

  They can't take that a -- way from me! __
  
  No, they can't take that a -- way __
  Can't take that a -- way from me! __
%  can't take that a -- way.
  No, they can't take that a -- way from me! __
}

wordsTenorAbove = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  No, they can't take that a -- way.
}

wordsTenorMidi = \lyricmode {
  "The " "way " "you " "wear " "your " "hat, "
  "\nthe " "way " "you " "sip " "your " "tea, " 
  "\nthe " mem "'ry " "of " "all " "that, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! "

  "\nThe " "way " "your " "smile " "just " "beams, " 
  "\nthe " "way " "you " "sing " "off " "key, " 
  "\nthe " "way " "you " "haunt " "my " "dreams, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! "

  "\nStill " "I'll " al "ways, " al "ways " "keep " "the " mem "'ry " "of "

  "\nThe " "way " "you " "hold " "your " "knife, "
  "\nthe " "way " "we " "danced " "till " "three, " 
  "\nthe " "way " "you " "changed " "my " "life, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! " 
  "\nNo, " "they " "can't " "take " "that " a "way " "from " "me! "
  
  "\nWe " "may " nev "er, " nev "er " "meet " a "gain "
  "\non " "the " bump "y " "road "  "to " "love. " 

  "\nThe " "way " "you " "hold " "your " "knife, "
  "\nthe " "way " "we " "danced " "till " "three, " 
  "\nthe " "way " "you " "changed " "my " "life, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! " 
  "\nNo, " "they " "can't " "take " "that " a "way, "
  "\nno, " "they " "can't " "take " "that " a "way, "
  "\nno, " "they " "can't " "take " "that " a "way " "from " "me! " 

  "\nThey " "can't " "take " "that " a "way " "from " "me! " 
  
  "\nNo, " "they " "can't " "take " "that " a "way. "
  "\nCan't " "take " "that " a "way " "from " "me, "
  "\nNo, " "they " "can't " "take " "that " a "way " 
  "\nfrom " "me! " 
}

bass = \tripletFeel 8 \relative {
  \global
  R1*8
  r8 f8^\mp 8 8 4 8 \appoggiatura gis a % 3a++
  R1 % 3b
  r8 f8 8 8 4 8 c~
  c1
  r8 f8^\< 8 8 4 8 bes^\mf ~ % 3c
  bes1
  r4 a^\< a a
  bes8^\f 8 8 8 a4 8^\> g % 4a
  r8\! g^\mf 8 8 c,4 8 f~
  f1 % 4b
  r8 a8 8 8 aes4 8 g~
  g1
  r8 c,8 8 8 4 8 f~ % 4c
  f1
  r4 f^\< g a
  bes8^\f bes g g c,4 8 f~ % 5a
  f2 r
  R1
  R1 % 5b
  R1
  r2 r4 a8^\mf gis
  a4 e a aes % 5c
  a4 e g fis
  g1
  r8 f^\mp 8 8 4 8 \appoggiatura gis a % 6a
  R1
  r8 a8 8 8 aes4 8 g~
  g1^\< % 6b
  r8\! c,8 8 8 4^\< 8 f^\mf ~
  f1
  r4 f^\< g a % 6c
  bes8^\f bes g g c,4 cis8 d~
  d8 r bes2 4
  c4 c c c % 7a
  c2^\> c
  f2^\mf r
  R1*8 % 7b
  r2 r4 a8^\mf b % 8a
  c4 a fis gis
  a4 a fis gis8 8
  a8 4 8~4 g % 8b
  e16(d e8~4) r2
  R1
  R1 % 8c
  R1
  r8 d'^\mf c bes a4 g8 f~(
  f4 g a g8 f) % 9a
  r8 a a a aes4 8 g~
  g1
  r8 c,8 8 8 4 8 f~ % 9b
  f1^\<
  r4\! f^\f g a
  bes8 bes g g c,4 cis8 d~ % 9c
  d8 r bes2^\mf 4
  c4 c c c8 c~
  c2 r4 c8 8 % 10a
  c4 4 4 8 8~
  c2 r4 c8 8
  f4 ees d d8 g^\<~ % 10b
  g2 r4\! e8^\f f~
  f1
  r8 aes8 4 4 g8 d % 10c
  g4 f8 8~4 r
  \once\partCombineApart R1
  \once\partCombineApart r8 aes aes aes^\> ~( aes g f4) % 11a
  R1\!
  r8 c^\mf \tuplet 3/2 {d f aes} g4 d8 f
  r2 r4 f8 g % 11b
  f4^\< ees d d8 g^\f~
  g1
  c,1^\< % 11c
  r8\! f8^\ff ~ 2. ~
  f1
  \bar "|."
}

wordsBassSep = \lyricmode {
  The way you wear your hat,
  the way you sip your tea, __
  the mem -- 'ry of all that, __
  No, no! They can't take that a -- way from me!

  The way your smile just beams, __
  the way you sing off key, __
  the way you haunt my dreams, __
  No, no! They can't take that a -- way from me!

%  We may nev -- er, nev -- er meet a -- gain
%  on the bump -- y road to love.
  Still I'll al -- ways, al -- ways keep the mem -- 'ry of

  The way you hold your knife,
  the way we danced till three, __
  the way you changed my life, __
  No, no! They can't take that a -- way from me! __
  No, they can't take that a -- way from me!

  We may nev -- er, nev -- er meet a -- gain
  on the bump -- y road __ to love. __
%  Still I'll al -- ways, al -- ways keep the mem -- 'ry of

  The way you hold your knife,
  the way we danced till three, __
  the way you changed my life, __
  No, no! They can't take that a -- way from me! __
  No, they can't take that a -- way,
  no, they can't take that a -- way,
  no, they can't take that a -- way from me!

% stop here

  They can't take that a -- way from me! __
  
%  No, they can't take that a -- way __
  No, no, no, __
  Can't take that a -- way from me! __
%  can't take that a -- way.
  No, they can't take that a -- way from me! __
}

wordsBassBelow = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  No, no, no, __
  Can't take that a -- way from me.
}

wordsBassMidi = \lyricmode {
  "The " "way " "you " "wear " "your " "hat, "
  "\nthe " "way " "you " "sip " "your " "tea, " 
  "\nthe " mem "'ry " "of " "all " "that, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! "

  "\nThe " "way " "your " "smile " "just " "beams, " 
  "\nthe " "way " "you " "sing " "off " "key, " 
  "\nthe " "way " "you " "haunt " "my " "dreams, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! "

  "\nStill " "I'll " al "ways, " al "ways " "keep " "the " mem "'ry " "of "

  "\nThe " "way " "you " "hold " "your " "knife, "
  "\nthe " "way " "we " "danced " "till " "three, " 
  "\nthe " "way " "you " "changed " "my " "life, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! " 
  "\nNo, " "they " "can't " "take " "that " a "way " "from " "me! "
  
  "\nWe " "may " nev "er, " nev "er " "meet " a "gain "
  "\non " "the " bump "y " "road "  "to " "love. " 

  "\nThe " "way " "you " "hold " "your " "knife, "
  "\nthe " "way " "we " "danced " "till " "three, " 
  "\nthe " "way " "you " "changed " "my " "life, " 
  "\nNo, " "no! " "They " "can't " "take " "that " a "way " "from " "me! " 
  "\nNo, " "they " "can't " "take " "that " a "way, "
  "\nno, " "they " "can't " "take " "that " a "way, "
  "\nno, " "they " "can't " "take " "that " a "way " "from " "me! " 

  "\nThey " "can't " "take " "that " a "way " "from " "me! " 
  
  "\nNo, " "no, " "no. " 
  "\nCan't " "take " "that " a "way " "from " "me, "
  "\nNo, " "they " "can't " "take " "that " a "way " 
  "\nfrom " "me! " 
}

pianoRHone = \tripletFeel 8 \relative {
  \global
  \voiceOne
  \once\oneVoice r8 f''^>\omit\mp e d c4 bes8 a
  r8 e4 f8 d4 f8 c
  \once\oneVoice r8 a''-> g f e4 \grace {f16 e} d8 c
  \once\oneVoice r8 <f, a c> q q->\omit\<~q <f a d> <f a c> <e a c>-. % 2b
  \once\oneVoice r8\! c''->\omit\mf bes a g4 \grace {a16 g} f8 e-> ~
  e8 c, d <c e>-> ~q c' e <a, c f>-> ~
  q8 d, e <c d f>-> ~ \tuplet 3/2 {q c d} \tuplet 3/2 {f g f} % 3a
  \once\oneVoice r8 <bes, e g>4-> q8 <bes ees g>4\omit\> q8-- <d f g>-.\omit\mp
  R1
  \once\oneVoice r8 <a c e> <bes d f>4-- <c e g>-- <bes d f>8-- <a c e>-. % 3b
  \once\oneVoice r2 <b f'>
  r8 <a' c>8 <bes d>4 <a c>8 <bes d> <c e> <a c>
  \once\oneVoice r2 <d,f>4.\omit\< <ees g c>8\omit\mf ~ % 3c
  q4. <bes ees g>8~8 <d f> <bes ees g>4
  <a d f a>4 <g' a d>\omit\< <fis a d> q\!
  <f f'>8\omit\f d' c bes <f a c>4 <c f a>8\omit\> <b d g> % 4a
  r2\! <g bes d f>\omit\mf
  r8 <a c e> <bes d f>4-- <c e g>-- <bes d f>8-- <a c e>-. % 4b
  r2 <b f'>
  r8 <a' c> <bes d>4 <a c>8 <bes d> <a c> <e a c>-.
  r2 <g, bes d f>4. <bes c ees g>8~ % 4c
  q4. <c ees g bes>8~4 <g' bes d>8 <a d f>~
  q2 <g bes d>4\omit\< <g a d>
  f'8\omit\f d c bes <e, a c>4 <des e a>8 <a d f>8~ % 5a
  q2. <fis' a>8\omit\mf <gis b>
  r8 gis \tuplet 3/2 {a c d} \tuplet 3/2 {e c d~} d b
  c4 \appoggiatura {b16 bes} a4 <e fis> <d f gis> % 5b
  r8 <c e a>-. r a <c e a>4-- <a c ees g>--
  r8 <a b d e>4. <gis b d e>4 <fis' a>8 <gis b>
  r8 <e a c>-. r4 <d e a e'>4-- <d aes' d>-- % 5c
  <e a c>4 <c e a> <d g c d> <d fis c d>
  r8 <b e g>4-> q8 <ces ees f g>4-- q8-- <d f g>-.
  R1 % 6a
  r8 <a c e>\omit\mp <bes d f>4-- <c e g> <bes d f>8-- <a c e>-.
  r2 <b f'>
  \tuplet 3/2 {r4 <a' d f a> <bes bes'>} \tuplet 3/2 {<c c'> <d d'> <c c'>} % 6b
  <c e a c>8 r <bes, d f>4 q4.\omit\< <bes d ees g>8\omit\mf~
  q4. <d ees g bes>8~4 <bes d e g>
  <a d f a>4 <f' a f'>\omit\< <g bes f'> <a c f> % 6c
  f'8\omit\f d c bes <d, f c'>4 <e a>8 <d f>
  r4 <des f c'>2 <des f bes>4
  <c f a>4 <d f bes> <c f a> <e a c> % 7a
  <bes d f g>2\omit\> <bes des e a>
  \tuplet 3/2 {r8\omit\mf a c} \tuplet 3/2 {e g f} \tuplet 3/2 {r bes, d} \tuplet 3/2 {f a g}
  \tuplet 3/2 {r8\omit\< f e} \tuplet 3/2 {f a c} \tuplet 3/2 {<c ees>4 <bes d> <a c>} % 7b
  r8\omit\f <b e a>4-> f'8 <bes, d a'>4-. <b d f>-.
  <a d f a>4 <bes d g bes> <a cis e a>8 <g c e g>4.
  r8 <c e c'>4-> a'8 <c, e c'>4-. <c e a>-.
  \tuplet 3/2 {<ees a ees'>4 <d d'> <c c'>} <bes bes'> <c c'> % 7c
  <a d f a>4 <a d f> <g, bes d f> \tuplet 3/2 {a'8 bes d}
  <a d f a>4 <f bes d f>2 d'8 <a c d f>~
  q1\omit\>
  <a, b d e>4.\omit\mf <gis b d e>8~4 <fis' a>8 <gis b> % 8a
  <e a c>4 <c e a> <fis a c e> <f gis b d>
  r8 <e a c> r4 <c e fis a> <b d f gis>
  r8 gis \tuplet 3/2 {a c d} e4 <a, dis g> % 8b
  r8 <a b d e>4. <gis b d e>4 <fis' a>8 <gis b>
  r8 c a4 <fis a c e> <f gis b d>
  r8 gis \tuplet 3/2 {a b c} <g a d>4 <fis a d> % 8c
  \tuplet 3/2 {r4 <b, e g> q} \tuplet 3/2 {<ces ees f g> q q}
  <bes d f g>8-. r r4 r2
  r8 <a c e> <bes d f>4-- <c e g>-- <bes d f a>8-- <e g a c>~ % 9a
  q2 <f b f'>4 <f b d>8 <e f bes c>8~
  q2.~8 <g, bes d f>~
  q8 f' f f <bes, d f>4. <ees g bes d>8~ % 9b
  q4. <g bes f'>8\omit\< ~8 <g bes g'> <g bes f'>4
  <a d f>4\omit\f <f a f'> <g bes f'> <a c >
  <f bes f'>8 d' c bes <d, f c'>4 <e a>8 <d f> % 9c
  r4 c'2\omit\mf bes4
  <c, f a> <d f bes> <c f a> <e a c>8 <bes d f g>~
  q2. f'8 g % 10a
  <c, f a>4 <d f bes> <c f a> <e a c>8 <bes d f g>8~
  q8 c' d <bes d g>~4 f8 g
  <c, f a>4 <des ees g bes> <c e fis a> <c c'>8 <d f a b d>~\omit\< % 10b
  q2 <e a cis e>
  r8\omit\f <g a c ees f>8 r4 q2
  <aes c d f>8 q r4 r8 q r4 % 10c
  r8 <g a c ees d> r4 q2
  <aes c d f>8 q r4 r8 q r4
  r8 <g a c ees f>8 r4 q2\omit\> % 11a
  <aes c d f>8\omit\mf q r4 r8 q r4
  r8 <g a c ees f> r4 q2
  <aes c d f>8 q r4 \tuplet 3/2 {r8 c, d} f g % 11b
  <c, f a>4\omit\< <des ees g bes> <c e fis a> <c c'>8 <d f a b d>8\omit\f ~
  q8 q r <a' bes d f> q q r4
  <e aes bes c e>8 q \tuplet 3/2 {r e' c} \tuplet 3/2 {bes aes e} \tuplet 3/2 {aes bes c} % 11c
  <g a c d f>8--\omit\ff q-. r <g' a d f> r q r c
  q4. <g,, a c d f>8~2
  \bar "|."
}

pianoRHtwo = \tripletFeel 8 \relative {
  \global
  \voiceTwo
  s1
  r8 <a c>4.\omit\mp <g bes> <g a>8
  s1*9
  r8 f'4. f <d e>8 % 3b++
  s1*11
  <f a>4 f s2 % 5a
  s1
  s1
  s1
  s1
  s2. d4
  s1*3 % 5c
  s1*7
  <f bes>4\omit\f f s2 % 6c+
  s1*4
  s2\omit\< fis % 7b
  s1\omit\f
  s1*6
  r2. d4\omit\mf % 8a
  r1*3
  r2. d4 % 8b+
  r8 e4. r2
  R1*3 % 8c
  R1*6 % 9a
  r4 f r2 % 9c
  R1*2
  s2. <bes, d>4 % 10a
  R1*8
  R1*9 % 11
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s8 s\mp s2.
  s1
  s1
  s4. s8\< s2 % 2b
  s8 s\mf s2.
  s1
  s1 % 3a
  s2 s4.\> s8\mp
  s1
  s1 % 3b
  s1
  s1
  s2 s4.\< s8\mf % 3c
  s1
  s4 s2.\<
  s2.\f s4\> % 4a
  s2\! s\mf
  s1 % 4b
  s1
  s1
  s1 % 4c
  s1
  s4 s2.\<
  s1\f % 5a
  s2. s4\mf
  s1
  s1 % 5b
  s1
  s1
  s1 % 5c
  s1
  s1
  s8 s\mp s2. % 6a
  s1
  s1
  s1 % 6b
  s2 s4.\< s8\mf
  s1
  s4 s2.\< % 6c
  s1\f
  s1
  s1 % 7a
  s4 s2.\>
  s1\mf
  s1\< % 7b
  s1\f
  s1
  s1
  s1 % 7c
  s1
  s1
  s8 s\> s2.
  s1\mf % 8a
  s1
  s1
  s1 % 8b
  s1
  s1
  s1 % 8c
  s1
  s1
  s1 % 9a
  s1
  s1
  s1 % 9b
  s8 s\< s2.
  s1\f
  s1 % 9c
  s4 s2.\mf
  s1
  s1 % 10a
  s1
  s1
  s2.. s8\< % 10b
  s1
  s1\f
  s1 % 10c
  s1
  s1
  s2 s\> % 11a
  s1\mf
  s1
  s1 % 11b
  s2..\< s8\f
  s1
  s1 % 11c
  s1\ff
  s1
}

pianoLHone = \tripletFeel 8 \relative {
  \global
  \voiceOne
  R1
  r8 <f, c' g'>4.\omit\mp <g f'> <a f'>8
  R1
  r8 <f' bes d> q q->\omit\< ~ q q q <e bes' d>-. % 2b
  r2\omit\mf r4 r8 <g a c e>-> ~
  q4. <a, g'>8-> ~4. <a' d f>8-> ~
  q4. <d, a'>8->~4. r8 % 3a
  r8 <f a>4-> q8 <des f>4\omit\> q8-- <c bes'>-.\omit\mp
  R1
  r8 <f, c'> <g d'>4-- <a e'>-- <g d'>8-- <f c'>-. % 3b
  r2 <aes f'>
  g8 <f' bes d>4. q <c, c'>8
  s1*3 %%% FIX % 3c
  bes'8\omit\f f' d'4 a,8 f' a\omit\> <g, f'> % 4a
  r2\! c\omit\mf
  r8 <f, c'> <g d'>4-- <a e'>-- <g d'>8-- <f c'>-. % 4b
  r2 <aes f'>
  g8 <f' bes>4 g,8 q4 g8 <c bes'>-.
  s1*3 % 4c FIX
  <bes f' d'>4\arpeggio\omit\f <g' bes d> <c, bes'> c,8 f~ % 5a
  f4 \appoggiatura b,8 c f,~4 <e'' d'>\omit\mf
  a,4 <a' c e> <fis a c e> <f gis b d>
  a,4 <a' c e> <d, c'> <e b'> % 5b
  a,4 g fis f
  e4 \tuplet 3/2 {a8 b f'} e4 e,4
  a4 c b bes % 5c
  a4~ \tuplet 3/2 {a8 b c} d2
  \once\partCombineApart r8 <f a>4-> q8 des4-- 8-- <c bes'>-. % FIX
  r8 \appoggiatura {c16 cis} d8\omit\mp c bes a4 g8 f % 6a
  r8 <f c'> <g d'>4-- <a e'>-- <g d'>8-- <f c'>-.
  r2 <aes f'>
  \tuplet 3/2 {a4 <f' bes d> q} \tuplet 3/2 {q q q} % 6b
  <e bes' d>8 r r4 c2
  f,8\omit\mf ees' g4~8 ees f,4
  s1*3 % 6c FIX
  c4. c'8 c,4. c'8 % 7a
  c,4 c'2\omit\> 4
  <f, c' g'>2\omit\mf <g f'>
  <a f' a>2\omit\< <d fis c'> % 7b
  g,8\omit\f <f' a b e>4.-> <f a b d>4-. q-.
  <f bes d>4 q <e g bes cis> c8 bes
  a8 <g' a c e>4.-> q4-. q-.
  <fis a c ees>2 d, % 7c
  <bes'' d f>2 <g, f'>
  <c bes' d>2 <c, c'>
  r8 f'\omit\> e4 d c
  b8\omit\mf a f e~4 e' % 8a
  a,4 e8 ees d4 e
  a4 c8 e d4 e
  a,4 g fis b8 f % 8b
  e4 a8 b e4 e,
  a4 <e' c'> <d c'> <e b'>
  a,4 <e' c'> <d c'> q % 8c
  \tuplet 3/2 {r4 <f a> q} \tuplet 3/2 {des4 des des} % FIX
  c8 r r4 r2
  r8 <f, c'> <g d>4-- <a e'>-- <g d'>8-- <f c'>8~ % 9a
  q2 \tuplet 3/2 {aes8 f' b~} b g,~
  g8 g a4 bes b8 c~
  c2 c, % 9b
  f8 ees'\omit\< g <bes ees>~8 q q4
  <a ees' g>4\omit\f <f e'> <g e'> <a e'>
  s1*3 % 9c FIX
  <c,, c'>8\omit\mf q q q~2 % 10a
  c4. c'8 c,4. <c c'>8~
  q4. q8~2
  <f f'>4 <ees ees'> <d d'>4. g8\omit\< ~ % 10b
  g8 f' b4 <c, bes' des>2
  f,4\omit\f g aes a
  s1*3 % 10c FIX
  f4 g aes\omit\> a % 11a
  b4\omit\mf d, ees e
  f4 g aes a
  bes4 aes f d % 11b
  <f f'>4\omit\< <ees ees'> <d d'>2
  g4\omit\f a b d
  s1*3 % 11c FIX
  \bar "|."
}

pianoLHtwo = \tripletFeel 8 \relative {
  \global
  \voiceTwo
  s1*31
  g,2\omit\mf s % 5c++ FIX
  s1*56
%  \bar "|."
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
  \score {
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = women \soprano
            \new NullVoice =  alto \alto
            \new NullVoice =   men \tenor
            \new Voice \partCombine {\voiceOne \soprano } { \voiceTwo \alto }
            \new Lyrics \lyricsto women \wordsSop
            \new Lyrics \with {
              alignAboveContext = #"women"
            } \lyricsto women \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new NullVoice = men \tenor
            \new NullVoice = bass \bass
            \new Voice \partCombine \tenor \bass
            \new Lyrics \with {
              alignAboveContext = #"men"
            } \lyricsto men \wordsTenorAbove
            \new Lyrics \lyricsto bass \wordsBassBelow
          >>
        >>
        <<
          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    }
  }
}

#(set-global-staff-size 20)

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
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = women \soprano
            \new NullVoice =  alto \alto
            \new NullVoice =   men \tenor
            \new Voice \partCombine {\voiceOne \soprano } { \voiceTwo \alto }
            \new Lyrics \lyricsto women \wordsSop
            \new Lyrics \with {
              alignAboveContext = #"women"
            } \lyricsto women \wordsSopAbove
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new NullVoice = men \tenor
            \new NullVoice = bass \bass
            \new Voice \partCombine \tenor \bass
            \new Lyrics \with {
              alignAboveContext = #"men"
            } \lyricsto men \wordsTenorAbove
            \new Lyrics \lyricsto bass \wordsBassBelow
          >>
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-sep"
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
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSep
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-sop"
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
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopSep
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-alto"
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
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSep
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-tenor"
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
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSep
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSep}
          >>
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage-bass"
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
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSep}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSep}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSep}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSep
          >>
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%          \new FretBoards { \ChordTrack }
%        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
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
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      \new ChoirStaff <<
        \new Staff = soprano
        <<
          \new Voice \TempoTrack
          \new Voice \tripletFeel 8 \soprano
          \addlyrics \wordsSopMidi
        >>
        \new Staff = alto
        <<
          \new Voice \tripletFeel 8 \alto
        >>
        \new Staff = tenor
        <<
          \clef "treble_8"
          \new Voice \tripletFeel 8 \tenor
        >>
        \new Staff = bass
        <<
          \clef "bass"
          \new Voice \tripletFeel 8 \bass
        >>
%        <<
%          \new ChordNames = guitar { \tripletFeel 8 \ChordTrack }
%        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Voice \tripletFeel 8 \pianoRHone
            \new Voice \tripletFeel 8 \pianoRHtwo
            \new Voice \tripletFeel 8 \pianoLHone
            \new Voice \tripletFeel 8 \pianoLHtwo
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
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      \new ChoirStaff <<
        \new Staff = soprano
        <<
          \new Voice \TempoTrack
          \new Voice \tripletFeel 8 \soprano
        >>
        \new Staff = alto
        <<
          \new Voice \tripletFeel 8 \alto
          \addlyrics \wordsAltoMidi
        >>
        \new Staff = tenor
        <<
          \clef "treble_8"
          \new Voice \tripletFeel 8 \tenor
        >>
        \new Staff = bass
        <<
          \clef "bass"
          \new Voice \tripletFeel 8 \bass
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Voice \tripletFeel 8 \pianoRHone
            \new Voice \tripletFeel 8 \pianoRHtwo
            \new Voice \tripletFeel 8 \pianoLHone
            \new Voice \tripletFeel 8 \pianoLHtwo
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
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      \new ChoirStaff <<
        \new Staff = soprano
        <<
          \new Voice \TempoTrack
          \new Voice \tripletFeel 8 \soprano
        >>
        \new Staff = alto
        <<
          \new Voice \tripletFeel 8 \alto
        >>
        \new Staff = tenor
        <<
          \clef "treble_8"
          \new Voice \tenor
          \addlyrics \wordsTenorMidi
        >>
        \new Staff = bass
        <<
          \clef "bass"
          \new Voice \tripletFeel 8 \bass
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Voice \tripletFeel 8 \pianoRHone
            \new Voice \tripletFeel 8 \pianoRHtwo
            \new Voice \tripletFeel 8 \pianoLHone
            \new Voice \tripletFeel 8 \pianoLHtwo
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
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      \new ChoirStaff <<
        \new Staff = soprano
        <<
          \new Voice \TempoTrack
          \new Voice \tripletFeel 8 \soprano
        >>
        \new Staff = alto
        <<
          \new Voice \tripletFeel 8 \alto
        >>
        \new Staff = tenor
        <<
          \clef "treble_8"
          \new Voice \tripletFeel 8 \tenor
        >>
        \new Staff = bass
        <<
          \clef "bass"
          \new Voice \tripletFeel 8 \bass
          \addlyrics \wordsBassMidi
        >>
%        <<
%          \new ChordNames = guitar { \ChordTrack }
%        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Voice \tripletFeel 8 \pianoRHone
            \new Voice \tripletFeel 8 \pianoRHtwo
            \new Voice \tripletFeel 8 \pianoLHone
            \new Voice \tripletFeel 8 \pianoLHtwo
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
