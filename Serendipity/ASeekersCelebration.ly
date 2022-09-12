\version "2.22.0"

% Update usetags below to indicate which songs you want in this version.
% Choices are"
% A: Georgy Girl
% B: Morning Town Ride
% C:
% D:
% E: I'll Never Find Another You

usetags = #'(A B C D E)

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Seekers Celebration"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
  arranger    = "Arranged by David Lawrence"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

globalA = {
  \key d \major
  \time 4/4
}

globalB = {
  \key d \major
  \time 4/4
}

globalC = {
  \key c \major
  \time 2/2
}

globalD = {
  \key c \major
  \time 4/4
  \partial 4
}

globalE = {
  \key ees \major
  \time 4/4
}

tempoTrackA = {
  \tempo Brightly 4=144
  s1*48
}

tempoTrackB = {
  \tempo "Gently Rocking" 4=120
  s1*40
%  \set Score.tempoHideNote = ##t
  s2. \tempo 4=40 s4
  \set Score.tempoHideNote = ##f
}

tempoTrackC = {
  \tempo "Brightly, in 2" 2=84
  s1*53 s2.
}

tempoTrackD = {
  s4
  \tempo "Slowly, with feeling" 4=74
  s1*35
  \set Score.tempoHideNote = ##t
  \tempo 4=70 s1
  \set Score.tempoHideNote = ##f
  \tempo "Freely" s2 \set Score.tempoHideNote = ##t s8 \tempo 4=60 s4. \tempo 4=74
  \tempo "a tempo" s1
  s1
  \tempo 4=37 s2 \tempo 4=74 s
  \bar "|."
}

tempoTrackE = {
  \tempo Moderately 4=114
  s1*4
  \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    s1*14
  }
  \alternative {{s1*2}{s1}}
  s1*24
  s2 \tempo 4=40 s4 \tempo 4=120 s4
}

tempoTrack = {
  \keepWithTag #usetags \tag #'A  \tempoTrackA
  \keepWithTag #usetags \tag #'B  \tempoTrackB
  \keepWithTag #usetags \tag #'C  \tempoTrackC
  \keepWithTag #usetags \tag #'D  \tempoTrackD
  \keepWithTag #usetags \tag #'E  \tempoTrackE
}

rehearsalTrackA = {
  \mark \markup { \box "2a" } s1*4
  \mark \markup { \box "2b" } s1*3
  \mark \markup { \box "2c" } s1*3
  \mark \markup { \box "3a" } s1*4
  \mark \markup { \box "3b" } s1*4
  \mark \markup { \box "3c" } s1*4
  \mark \markup { \box "4a" } s1*4
  \mark \markup { \box "4b" } s1*4
  \mark \markup { \box "4c" } s1*4
  \mark \markup { \box "5a" } s1*4
  \mark \markup { \box "5b" } s1*4
  \mark \markup { \box "5c" } s1*4
  \mark \markup { \box "6a" } s1*2
}

rehearsalTrackB = {
  s1*2
  \set Score.currentBarNumber = #51
  \mark \markup { \box "6b" } s1*4
  \mark \markup { \box "6c" } s1*4
  \mark \markup { \box "7a" } s1*4
  \mark \markup { \box "7b" } s1*4
  \mark \markup { \box "7c" } s1*4
  \mark \markup { \box "8a" } s1*4
  \mark \markup { \box "8b" } s1*4
  \mark \markup { \box "8c" } s1*4
  \mark \markup { \box "9a" } s1*4
  \mark \markup { \box "9b" } s1*3
}

rehearsalTrackC = {
  s1
  \set Score.currentBarNumber = #91
  \mark \markup { \box "9c" } s1*4
  \mark \markup { \box "10a" } s1*4
  \mark \markup { \box "10b" } s1*4
  \mark \markup { \box "10c" } s1*4
  \mark \markup { \box "11a" } s1*4
  \mark \markup { \box "11b" } s1*4
  \mark \markup { \box "11c" } s1*4
  \mark \markup { \box "12a" } s1*4
  \mark \markup { \box "12b" } s1*4
  \mark \markup { \box "12c" } s1*4
  \mark \markup { \box "13a" } s1*4
  \mark \markup { \box "13b" } s1*4
  \mark \markup { \box "13c" } s1*4
  \mark \markup { \box "14a" } s2.
}

rehearsalTrackD = {
  s4 s1*3
  \mark \markup { \box "14b" } s1*4
  \mark \markup { \box "14c" } s1*4
  \mark \markup { \box "15a" } s1*3
  \mark \markup { \box "15b" } s1*3
  \mark \markup { \box "15c" } s1*3
  \mark \markup { \box "16a" } s1*3
  \mark \markup { \box "16b" } s1*3
  \mark \markup { \box "16c" } s1*3
  \mark \markup { \box "17a" } s1*3
  \mark \markup { \box "17b" } s1*3
  \mark \markup { \box "17c" } s1*5
}

rehearsalTrackE = {
  \mark \markup { \box "1a" } s1*3
  \mark \markup { \box "1b" } s1
  \repeat volta 2 {
    s1*2
    \mark \markup { \box "1c" } s1*4
    \mark \markup { \box "1d" } s1*4
    \mark \markup { \box "2a" } s1*4
  }
  \alternative {
    {
      \mark \markup { \box "2b" } s1*2
    }
    { s1 }
  }
  s1
  \mark \markup { \box "2c" } s1*4
  \mark \markup { \box "2d" } s1*4
  \mark \markup { \box "3a" } s1*4
  \mark \markup { \box "3b" } s1*4
  \mark \markup { \box "3c" } s1*4
  \mark \markup { \box "3d" } s1*4
}

rehearsalTrack = {
  \keepWithTag #usetags \tag #'A \rehearsalTrackA
  \keepWithTag #usetags \tag #'B \rehearsalTrackB
  \keepWithTag #usetags \tag #'C \rehearsalTrackC
  \keepWithTag #usetags \tag #'D \rehearsalTrackD
  \keepWithTag #usetags \tag #'E \rehearsalTrackE
}

chordTrackA = \chordmode {
  d2 fis:m
  g2 a
  d2 fis:m
  g2 a
  d2 fis:m % 2b
  g2 a
  d2 fis:m
  g2 a % 2c
  d2 fis:m
  g1
  c1 % 3a
  a1:7
  d2 fis:m
  g2 a
  d2 fis:m % 3b
  g2 a
  d2 fis:m
  g2 c
  a2:7sus4 a:7 % 3c
  a2:9 a
  b1:m
  fis1:m
  g1 % 4a
  d1
  fis1
  b2 e
  a1 % 4b
  a1:7
  d2 fis:m
  g2 a:7
  d2 fis:m % 4c
  g2 a:7
  d2 fis:m
  g2 a:7
  b1:m % 5a
  b1:m7/a
  g1
  a1:7
  d2 fis:m % 5b
  g2 a
  d2 fis:m
  g2 a
  d2 fis:m % 5c
  g2 a
  d2 fis:m
  g2 a
  d1 % 6a
  r1
}

chordTrackB = \chordmode { % Morning Town Ride
  d1
  d1:7
  g1 % 6b
  d1
  g1
  d1
  e1:m % 6c
  a1:7
  d1
  d1:7
  g1 % 7a
  d1
  g1
  d2 b:m
  a1:7 % 7b
  d2 a:7
  d1
  d1:7
  g1 % 7c
  d1
  g1
  d1
  e1:m % 8a
  a1:7
  d1
  d1:7
  g1 % 8b
  d1
  g1
  d2 b:m
  a1:7 % 8c
  d2 a:7
  d1
  d1:7
  g1 % 9a
  d1
  g1
  d2 b:m
  a1:7 % 9b
  d1
  s1
}

chordTrackC = \chordmode {
  c1
  s1 % 9c
  s1
  g1
  c1
  s1 % 10a
  f1
  c1
  e1:m
  a1:m % 10b
  f1
  g1:7
  c1
  e1:7 % 10b
  f1
  c1
  e1:m
  f2 g:7 % 11a
  c2 f
  c2 f4/g g
  c1
  f1 % 11b
  g1
  c2. e4:m/b
  a1:m
  d1:7 % 11c
  g1
  g1:7
  c1
  e1:7 % 12a
  f1
  c1
  e1:m
  f2 g:7 % 12b
  c2 f
  c2 f4/g g
  c1
  f1 % 12c
  g1
  c2. e4:m/b
  a1:m
  d1:7 % 13a
  g1
  g1:7
  c1
  e1:7 % 13b
  f1
  c1
  e1:m
  f2 g:7 % 13c
  c2 f
  c2 f
  c2 f
  c2. % 14a
}

chordTrackD = \chordmode {
  a4:7
  d2. a4:7
  d2. a4:7
  d1
  a1:7 % 14b
  s1
  d2. d4:7
  g2 a
  d2/fis b:m % 14c
  g1
  a1:7
  d1
  a1:7 % 15a
  s1
  d2. d4:7
  g1 % 15b
  d2/fis b:m
  g2. a4:9
  d2. d4:7 % 15c
  g2 a
  d2/fis b:m
  g2 a:9 % 16a
  d2. d4:7
  g2 a:7
  fis2:m b:m % 16b
  g1
  c2 a:7
  d1 % 16c
  e4:m/a a2.:7
  s1
  d2. d4:7 % 17a
  g1
  d2/fis b:m
  g2. a4:9 % 17b
  d2. d4:7
  g1
  d2/fis b:m % 17c
  g2 a:9
  d2. a4:7
  d2. a4:7 d1
}

chordTrackE = \chordmode {
  ees1 bes ees % 1a
  bes1 % 1b
  \repeat volta 2 {
    ees1 aes
    f1:7 bes:7 ees g:m % 1c
    aes1 bes c:m aes % 1d
    bes2 aes | g2:m aes4 aes:dim | ees2/bes aes/c | aes2:6 bes % 2a
  }
  \alternative {{ees2 aes | ees1}{ees2 aes}}
  ees2. bes4/d
  c1:m aes ees2/bes bes ees2. bes4/d % 2c
  c1:m bes2 aes ees1 bes:7 % 2d
  ees1 aes f:7 bes:7 % 3a
  ees1 g:m aes bes % 3b
  c1:m aes bes2 aes g2:m aes4 aes:dim % 3c
  ees2/bes aes/c aes:6 bes:7 ees aes ees1 % 3d
}


chordTrack = {
  \keepWithTag #usetags \tag #'A \chordTrackA
  \keepWithTag #usetags \tag #'B \chordTrackB
  \keepWithTag #usetags \tag #'C \chordTrackC
  \keepWithTag #usetags \tag #'D \chordTrackD
  \keepWithTag #usetags \tag #'E \chordTrackE
}

melodyA = {
  s1*48
}

melodyB = {
  s1*41
}

melodyC = {
  s1*54
}

melodyD = {
  s1*40
}

melodyE = \relative {
  \globalE
  \break
  R1^\markup "Words and Music by Tom Springfield" ^\markup\bold "I'll Never Find Another You"
  R1
  R1
  r2 ees'4^\markup\smallCaps Tutti f % 1b
  \repeat volta 2 {
    g2 2
    bes4 aes2 g4
    f4. c8 f ees4 d8~ % 1c
    d2 ees4 f
    g2 bes
    c4 bes2 4
    c4. bes8 aes c4 bes8~ % 1d
    bes2 c4 d
    ees4. 8 8 4 f8~
    f4 ees2 4
    d4 4 c8 4. % 2a
    bes2 ees,4 f
    g4. bes8 aes g4 f8~
    f4. ees8 d f4 ees8~
  }
  \alternative {
    {
      ees1~ % 2b
      ees2 4 f
    }
    {
      ees1\repeatTie ~
    }
  }
  ees4 r g bes
  ees2 2 % 2c
  d4 c2 4
  bes2 aes4. 8
  g2 4 bes
  ees2 4. 8 % 2d
  d4 4 c c
  bes1~
  bes2 4 aes
  g2 4. 8 % 3a
  bes4 aes2 g4
  f4. c8 f ees4 d8~
  d2 ees4 f
  g4. bes8 4 ees % 3b
  c4 bes2 4
  c4. bes8 aes c4 bes8~
  bes2 c4 d
  ees4. 8 8 4 f8~ % 3c
  f4 ees2 4
  d4 4 c8 4.
  bes2 ees,4 f
  g4. bes8 aes g4 f8~ % 3d
  f4. ees8 d f4 ees8~
  ees1~
  ees2.\fermata r4
}

melody = {
  \keepWithTag #usetags \tag #'A \melodyA
  \keepWithTag #usetags \tag #'B \melodyB
  \keepWithTag #usetags \tag #'C \melodyC
  \keepWithTag #usetags \tag #'D \melodyD
  \keepWithTag #usetags \tag #'E \melodyE
}

soloSopA = \relative {
  \voiceThree
  s1*38
  r4^\markup\italic "Sop. solo" fis''2.( % 5b
  d4. e8~2)
  r4 fis2.(
  d4. e8~2)
  r4 fis2.( % 5c
  d4. e8~2)
}

soloSopB = {}
soloSopC = {}
soloSopD = {}
soloSopE = {}

soloSop = {
  \keepWithTag #usetags \tag #'A \soloSopA
  \keepWithTag #usetags \tag #'B \soloSopB
  \keepWithTag #usetags \tag #'C \soloSopC
  \keepWithTag #usetags \tag #'D \soloSopD
  \keepWithTag #usetags \tag #'E \soloSopE
}

wordsSoloA = \lyricmode {
  _ _ _ _ _ _ _ % why?????
  Oo __ Oo __ Oo __
}

wordsSolo = {
  \wordsSoloA
}

wordsSoloMidiA = \lyricmode {
  "Oo "  "Oo "  "Oo " 
}

wordsSoloMidi = {
%  \wordsSoloMidiA
}

tramtracks = {
  \override BreathingSign.text = \markup {
    \override #'(direction . 1)
    \override #'(baseline-skip . 1.8)
    \dir-column {
      \translate #'(0.155 . 0)
      \center-align \musicglyph "scripts.caesura.curved"
      \center-align \musicglyph "scripts.ufermata"
    }
  }
  \breathe
  \revert BreathingSign.text
}

sopranoA = \relative {
  \globalA
  R1*4
  d'4.^\mf^\markup { \bold "GEORGY GIRL" Words and Music by Jim Dale/Tom Springfield} a'8~2 % 2b
  b4 a8 8~4 r
  d,8 e fis g fis4 d^\markup\italic unison
  e4 a,8 8~4 r % 2c
  d8 e fis g fis4 d
  b'4. a8 g4 fis
  fis8 e d e~2 % 3a
  r4 a a b
  d,4. a'8~2
  b4 a8 8~4 r
  d,8 e fis g fis4^\markup\italic unison d % 3b
  e4 a,8 8~4 r
  d8 e fis g fis4 d
  b'4. 8 \tuplet 3/2 {c4 b g}
  a4. 8 2~ % 3c
  a1
  r4^\mf b cis d
  cis4 a8 fis~8 g a4
  b4 a8 b~8 d, e4 % 4a
  fis1
  r4^\mf fis4^\markup\italic unison gis ais
  b4 fis8 gis~8 a b4
  cis1^\< % 4b
  r4^\mf g8 fis~8 g fis4
  d4.^\mf a'8~2
  b4 a8 8~4 r
  d,8 e fis g fis4 d^\markup\italic unison % 4c
  e4 a,8 8~4 r
  d8^\cresc e fis g fis4 d
  b'4 r8 b \tuplet 3/2 {e4 d e}
  cis4. d8 d2^\< ~ % 5a
  d2\! r4 cis
  cis4. d8 2
  r4 d8^\f e~8 d4 cis8
  d2 r % 5b
  r4 d8 e8~8 d4 cis8
  d2 r
  r4 d8 e~8 d4 cis8
  d2 r % 5c
  r4 d8 e~8 d4 cis8
  d2(cis
  d2 e \bar "||"
  d2) r % 6a
  R1
}

sopranoB = \relative { % Morning Town Ride
  \globalB
  fis'2\omit\mf^\markup{\dynamic mf \italic unison}
               ^\markup "Words and Music by Malvina Reynolds"
               ^\markup\bold\smallCaps "Morning Town Ride" a4 b
  fis4 a2 r4
  b4 d d e % 6b
  d2. r4
  d4 4 cis b
  d4 a r a
  b4. a8 g4 fis % 6c
  e2. r4
  fis4 a a b
  fis4 a2 r4
  b4 d4 4. e8 % 7a
  d2. r4
  d2 cis4 b
  d4 a fis2
  a8 4. g4. e8 % 7ab
  d2(e) \bar "||"
  fis4\omit\mf^\markup{\dynamic mf \italic unison} a a b
  fis4 a2.
  b4 d4 4. e8 % 7c
  d2. r4
  d4 4 cis4. b8
  d4 a2 4
  b4. a8 g4 fis % 8a
  e2. r4
  fis4 a a b
  fis4 a2 r4
  b4 d4 4. e8 % 8b
  d2. r4
  d2 cis4 b
  d4 a fis2
  a8 4. g e8 % 8c
  d2(e) \bar "||"
  d'2.( ^\markup\italic "(others tacet)"^\markup\italic "Opt soprano solo" e4
  fis2 e4 d)
  g1( % 9a
  fis2.) r4
  d2^\markup\italic "(tutti)" cis4 b
  d4 a fis2
  a8^\markup\italic "molto rall." 4. b cis8 % 9b
  d1~
  d2. r4\fermata
}

sopranoC = \relative { % A World of Our Own
  \globalC
  R1
  R1 ^\markup "Words and Nusic by Tom Springfield" % 9c
     ^\markup\bold\smallCaps "A World of Our Own"
  R1
  r2 e'4^\mf d
  c2 4. e8
  g2 r4 g % 10a
  a8 4. c4. a8
  g4 r c, d
  e2 4. g8
  f8 e4. d c8 % 10b
  f2 g8 a4 g8~
  g4 r a b
  c2 a4. g8
  e2 r4 d % 10c
  c2 f4 a8 g~
  g4 r c, d
  e2 8 g4 f8~
  f2 e8^\markup\italic unison d4 c8~ % 11a
  c2 r
  r4 g'^\f a b \bar "||"
  c2 8 g4 a8~
  a2. 4 % 11b
  g4. a8 g4 f
  e4 r a b
  c2 4 4
  c2 b4 c % 11c
  d2. b8(a)
  g4 r a b
  c2 a8 g4.
  e2. d4 % 12a
  c2 f8 a4 g8~
  g4 r c, d
  e2 8 g4 f8~
  f2 e8 d4 c8~ % 12b
  c1~
  c8 r^\f g'4 a b \bar "||"
  c2 8 g4 a8~
  a2. 4 % 12c
  g4. a8 g4 f
  e4 r a b
  c2 4 4
  c2 b4 c % 13a
  d2. b8(a)
  g4 r e'8 d4.
  c2 8 4 b8~
  b2. 4 % 13b
  a2 8 c4 g8~
  g4 r e f
  g2 8 b4 a8~
  a4 r g8 b4.
  c1~
  c1~
  c1~
  c2 r4\fermata % 14a
}

sopranoD = \relative {
  \globalD
  r4 \bar "||" \key d \major \time 4/4
  R1
  r2^\markup "Words and Music by Tom Springfield" ^\markup\smallCaps\bold "The Carnival is Over" r4^\mp a8.^\markup\italic unison 16 \bar "||"
  d2~8 8 e8. d16
  d4 cis r a8. 16 % 14b
  g'2~8 e a e
  fis2 r4 d8. 16
  b'2~8 a g b
  a4 fis r fis8. d16 % 14c
  b2~8. a16 b8 d
  e2 r4 a,8. 16
  d2~8 8 e8. d16
  d4 cis2 a8. 16 % 15a
  g'2~8 e a8. e16
  fis2 r4 d8. 16
  b'2~8. a16 g8 b % 15b
  a4 fis2 8.^\markup\italic unison d16
  b2~8 a b8. d16
  d2 r4^\mf d8. 16 % 15c
  g2~8 g a b
  a4 fis2 8 a
  b2~8 a g b % 16a
  a2~4 \breathe d,8. 16
  g2~8 8 a8. b16
  a4 fis2 8 a % 16b
  b2~8 a g fis
  e2^\<~4\! \breathe fis8.^\> e16\!
  d2^\mf ~8. 16 e8 d % 16c
  d4 cis2 a8. 16
  g'2~8 e a8. e16
  fis2. \breathe d8. 16 % 17a
  b'2~8 a g8. b16
  a4 fis2 \breathe fis8^\markup\italic unison d
  b2~8 a b16 d8. % 17b
  d2 r4 d8.^\< 16
  b'2\! ~8 8 cis8. b16
  a4^\>^\markup\italic rall. fis2\! \tramtracks fis8^\mf^\markup\italic unison d
  b2~8 a^\< b d\!
  d2.^\markup\bold "a tempo" r4
  R1
  R1
}

sopranoE = {
  s1*4
  \repeat volta 2 {
    s1*14
  }
  \alternative {{s1*2}{s1}}
  s1*25
}

soprano = {
  \keepWithTag #usetags \tag #'A \sopranoA
  \keepWithTag #usetags \tag #'B { \sopranoB \bar "||" }
  \keepWithTag #usetags \tag #'C \sopranoC
  \keepWithTag #usetags \tag #'D \sopranoD
  \keepWithTag #usetags \tag #'E \sopranoE
  \bar "|."
}

wordsA = \lyricmode {
  Hey there! __ Geor -- gy girl, __
  Swing -- ing down the street so fan -- cy free. __
  \set associatedVoice = alignerA
  No -- bod -- y you meet could ev -- er see the lone -- li -- ness there __
  Hey there! __ Geor -- gy girl. __
  Why do all the boys just pass you by? __
  Could it be you just don't try,
  or is it the clothes you wear? __
  Oo __
  So shed those dow -- dy feath -- ers and fly
  Hey there! __ Geor -- gy girl, __
  There's a -- noth -- er Geor -- gy deep in -- side: __
  Bring out all the love you hide and oh, what a change there'd be. __
  The world would see a new __ Geor -- gy girl.
  Come on __ Geor -- gy girl!
  Wake up __ Geor -- gy girl!
  \set associatedVoice = alignerS
  Come on __ Geor -- gy girl! __
}

wordsSopMidiA = \lyricmode {
  "Hey " "there! "  Geor "gy " "girl, " 
  "\nSwing" "ing " "down " "the " "street " "so " fan "cy " "free. " 
  "\nNo" bod "y " "you " "meet " "could " ev "er " "see " "the " lone li "ness " "there " 
  "\nin" "side " "you. "
  "\nHey " "there! "  Geor "gy " "girl. " 
  "\nWhy " "do " "all " "the " "boys " "just " "pass " "you " "by? " 
  "\nCould " "it " "be " "you " "just " "don't " "try, "
  "\nor " "is " "it " "the " "clothes " "you " "wear? " 
  "\nYou're " al "ways " win "dow " shop "ping " "but " nev "er " stop "ping " "to " "buy. "
  "\nSo " "shed " "those " dow "dy " feath "ers " "and " "fly " "a " lit "tle " "bit. "
  "\nHey " "there! "  Geor "gy " "girl, " 
  "\nThere's " a noth "er " Geor "gy " "deep " in "side: " 
  "\nBring " "out " "all " "the " "love " "you " "hide " "and " "oh, " "what " "a " "change " "there'd " "be. " 
  "\nThe " "world " "would " "see " "a " "new "  Geor "gy " "girl. "
  "\nCome " "on "  Geor "gy " "girl! "
  "\nWake " "up "  Geor "gy " "girl! "
  "\nCome " "on "  Geor "gy " "girl! " 
}

wordsAltoMidiA = \lyricmode {
  "Hey " "there! "  Geor "gy " "girl, " 
  "\nSwing" "ing " "down " "the " "street " "so " fan "cy " "free. " 
  "\nNo" bod "y " "you " "meet " "could " ev "er " "see " "the " lone li "ness " "there " 
  "\nHey " "there! "  Geor "gy " "girl. " 
  "\nWhy " "do " "all " "the " "boys " "just " "pass " "you " "by? " 
  "\nCould " "it " "be " "you " "just " "don't " "try, "
  "\nor " "is " "it " "the " "clothes " "you " "wear? " 
  "\nOo " 
  "\nSo " "shed " "those " dow "dy " feath "ers " "and " "fly "
  "\nHey " "there! "  Geor "gy " "girl, " 
  "\nThere's " a noth "er " Geor "gy " "deep " in "side: " 
  "\nBring " "out " "all " "the " "love " "you " "hide " "and " "oh, " "what " "a " "change " "there'd " "be. " 
  "\nThe " "world " "would " "see " "a " "new "  Geor "gy " "girl. "
  "\nCome " "on "  Geor "gy " "girl! "
  "\nWake " "up "  Geor "gy " "girl! "
  "\nCome " "on "  Geor "gy " "girl! " 
}

wordsTenorMidiA = \lyricmode {
  "Hey " "there! "  Geor "gy " "girl, " 
  "\nSwing" "ing " "down " "the " "street " "so " fan "cy " "free. " 
  "\nNo" bod "y " "you " "meet " "could " ev "er " "see " "the " lone li "ness " "there " 
  "\nHey " "there! "  Geor "gy " "girl. " 
  "\nWhy " "do " "all " "the " "boys " "just " "pass " "you " "by? " 
  "\nCould " "it " "be " "you " "just " "don't " "try, "
  "\nor " "is " "it " "the " "clothes " "you " "wear? " 
  "\nOo " 
  "\nSo " "shed " "those " dow "dy " feath "ers " "and " "fly "
  "\nHey " "there! "  Geor "gy " "girl, " 
  "\nThere's " a noth "er " Geor "gy " "deep " in "side: " 
  "\nBring " "out " "all " "the " "love " "you " "hide " "and " "oh, " "what " "a " "change " "there'd " "be. " 
  "\nThe " "world " "would " "see " "a " "new "  Geor "gy " "girl. "
  "\nCome " "on "  Geor "gy " "girl! "
  "\nWake " "up "  Geor "gy " "girl! "
  "\nCome " "on "  Geor "gy " "girl! " 
}

wordsBassMidiA = \lyricmode {
  "Hey " "there! "  Geor "gy " "girl, " 
  "\nSwing" "ing " "down " "the " "street " "so " fan "cy " "free. " 
  "\nNo" bod "y " "you " "meet " "could " ev "er " "see " "the " lone li "ness " "there " 
  "\nHey " "there! "  Geor "gy " "girl. " 
  "\nWhy " "do " "all " "the " "boys " "just " "pass " "you " "by? " 
  "\nCould " "it " "be " "you " "just " "don't " "try, "
  "\nor " "is " "it " "the " "clothes " "you " "wear? " 
  "\nOo " 
  "\nSo " "shed " "those " dow "dy " feath "ers " "and " "fly "
  "\nHey " "there! "  Geor "gy " "girl, " 
  "\nThere's " a noth "er " Geor "gy " "deep " in "side: " 
  "\nBring " "out " "all " "the " "love " "you " "hide " "and " "oh, " "what " "a " "change " "there'd " "be. " 
  "\nThe " "world " "would " "see " "a " "new "  Geor "gy " "girl. "
  "\nCome " "on "  Geor "gy " "girl! "
  "\nWake " "up "  Geor "gy " "girl! "
  "\nCome " "on "  Geor "gy " "girl! " 
}

wordsB = \lyricmode {
  Train whis -- tle blow -- in' makes a sleep -- y noise,
  Un -- der -- neath the blank -- ets for all the girls and boys.
  Rock -- in' roll -- in' rid -- in',
  Out a -- long the bay,
  All bound for Morn -- ing Town, ma -- ny miles a -- way. __
  Dri -- ver at the en -- gine,
  \set associatedVoice = alignerA
  Mm __
  Sand -- man swings the lan -- tern to show that all is well.
  Rock -- in' roll -- in' rid -- in',
  Out a -- long the bay,
  All bound for Mor -- ning Town,
  \set associatedVoice = alignerT
  Ma -- ny miles a -- way. __
  Rock -- in' roll -- in rid -- in',
  Out a -- long the bay,
  All bound for Mor -- ning Town,
  \set associatedVoice = alignerS
  Ma -- ny miles a -- way. __
}

wordsSopMidiB = \lyricmode {
  "\nTrain " whis "tle " blow "in' " "makes " "a " sleep "y " "noise, "
  "\nUn" der "neath " "the " blank "ets " "for " "all " "the " "girls " "and " "boys. "
  "\nRock" "in' " roll "in' " rid "in', "
  "\nOut " a "long " "the " "bay, "
  "\nAll " "bound " "for " Morn "ing " "Town, " ma "ny " "miles " a "way. " 
  "\nDri" "ver " "at " "the " en "gine, "
  "\nFire" "man " "rings " "the " "bell, "
  "\nSand" "man " "swings " "the " lan "tern " "to " "show " "that " "all " "is " "well. "
  "\nRock" "in' " roll "in' " rid "in', "
  "\nOut " a "long " "the " "bay, "
  "\nAll " "bound " "for " Mor "ning " "Town, "
  "\nMa" "ny " "miles " a "way. " 
  "\nOo "  "Oo " 
  "\nAll " "bound " "for " Mor "ning " "Town, "
  "\nMa" "ny " "miles " a "way. " 
}

wordsAltoMidiB = \lyricmode {
  "\nTrain " whis "tle " blow "in' " "makes " "a " sleep "y " "noise, "
  "\nUn" der "neath " "the " blank "ets " "for " "all " "the " "girls " "and " "boys. "
  "\nRock" "in' " roll "in' " rid "in', "
  "\nOut " a "long " "the " "bay, "
  "\nAll " "bound " "for " Morn "ing " "Town, " ma "ny " "miles " a "way. " 
  "\nDri" "ver " "at " "the " en "gine, "
  "\nMm " 
  "\nSand" "man " "swings " "the " lan "tern " "to " "show " "that " "all " "is " "well. "
  "\nRock" "in' " roll "in' " rid "in', "
  "\nOut " a "long " "the " "bay, "
  "\nAll " "bound " "for " Mor "ning " "Town, "
  "\nMa" "ny " "miles " a "way. " 
  "\nOo "  "Oo " 
  "\nAll " "bound " "for " Mor "ning " "Town, "
  "\nMa" "ny " "miles " a "way. " 
}

wordsTenorMidiB = \lyricmode {
  "\nTrain " whis "tle " blow "in' " "makes " "a " sleep "y " "noise, "
  "\nUn" der "neath " "the " blank "ets " "for " "all " "the " "girls " "and " "boys. "
  "\nRock" "in' " roll "in' " rid "in', "
  "\nOut " a "long " "the " "bay, "
  "\nAll " "bound " "for " Morn "ing " "Town, " ma "ny " "miles " a "way. " 
  "\nMm "  "Mm "  "Mm "  "Mm " 
  "\nRock" "in' " roll "in' " rid "in', "
  "\nOut " a "long " "the " "bay, "
  "\nAll " "bound " "for " Mor "ning " "Town, "
  "\nMa" "ny " "miles " a "way. " 
  "\nRock" "in' " roll "in " rid "in', "
  "\nOut " a "long " "the " "bay, "
  "\nAll " "bound " "for " Mor "ning " "Town, "
  "\nMa" "ny " "miles " a "way. " 
}

wordsBassMidiB = \lyricmode {
  "\nTrain " whis "tle " blow "in' " "makes " "a " sleep "y " "noise, "
  "\nUn" der "neath " "the " blank "ets " "for " "all " "the " "girls " "and " "boys. "
  "\nRock" "in' " roll "in' " rid "in', "
  "\nOut " a "long " "the " "bay, "
  "\nAll " "bound " "for " Morn "ing " "Town, " ma "ny " "miles " a "way. " 
  "\nMm "  "Mm "  "Mm "  "Mm " 
  "\nRock" "in' " roll "in' " rid "in', "
  "\nOut " a "long " "the " "bay, "
  "\nAll " "bound " "for " Mor "ning " "Town, "
  "\nMa" "ny " "miles " a "way. " 
  "\nRock" "in' " roll "in " rid "in', "
  "\nOut " a "long " "the " "bay, "
  "\nAll " "bound " "for " Mor "ning " "Town, "
  "\nMa" "ny " "miles " a "way. " 
}

wordsC = \lyricmode {
  Close the door, light the light,
  We're stay -- ing home to -- night,
  Far a -- way from the bus -- tle and the bright ci -- ty lights. __
  Let them all fade a -- way, just leave us a -- lone,
  And we'll live in a world of our own. __
  We'll build a world of our own, __
  that no -- one else can share,
  All our sor -- rows we'll leave far be -- hind us there,
  And I know you will find there'll be peace of mind, __
  When we live in a world of our own. __
  We'll build a world of our own, __ that no -- one else can share,
  All our sor -- rows we'll leave far be -- hind us there,
  And I know you will find there'll be peace of mind, __
  When we live in a world of our own. __
}

wordsSopMidiC = \lyricmode {
  "\n\nClose  " "the  " "door,  " "light  " "the  " "light,  "
  "\n\nWe're  " "stay " "ing  " "home  " "to " "night,  "
  "\n\nFar  " "a " "way  " "from  " "the  " "bus " "tle  " "and  " "the  " "bright  " "ci " "ty  " "lights.  " 
  "\n\nLet  " "them  " "all  " "fade  " "a " "way,  " "just  " "leave  " "us  " "a " "lone,  "
  "\n\nAnd  " "we'll  " "live  " "in  " "a  " "world  " "of  " "our  " "own.  " 
  "\n\nWe'll  " "build  " "a  " "world  " "of  " "our  " "own,  " 
  "\n\nthat  " "no " "one  " "else  " "can  " "share,  "
  "\n\nAll  " "our  " "sor " "rows  " "we'll  " "leave  " "far  " "be " "hind  " "us  " "there,  "
  "\n\nAnd  " "I  " "know  " "you  " "will  " "find  " "there'll  " "be  " "peace  " "of  " "mind,  " 
  "\n\nWhen  " "we  " "live  " "in  " "a  " "world  " "of  " "our  " "own.  " 
  "\n\nWe'll  " "build  " "a  " "world  " "of  " "our  " "own,  "  "that  " "no " "one  " "else  " "can  " "share,  "
  "\n\nAll  " "our  " "sor " "rows  " "we'll  " "leave  " "far  " "be " "hind  " "us  " "there,  "
  "\n\nAnd  " "I  " "know  " "you  " "will  " "find  " "there'll  " "be  " "peace  " "of  " "mind,  " 
  "\n\nWhen  " "we  " "live  " "in  " "a  " "world  " "of  " "our  " "own.  " 
}

wordsAltoMidiC = \lyricmode { 
  "\nClose " "the " "door, " "light " "the " "light, "
  "\nWe're " stay "ing " "home " to "night, "
  "\nFar " a "way " "from " "the " bus "tle " "and " "the " "bright " ci "ty " "lights. " 
  "\nLet " "them " "all " "fade " a "way, " "just " "leave " "us " a "lone, "
  "\nAnd " "we'll " "live " "in " "a " "world " "of " "our " "own. " 
  "\nWe'll " "build " "a " "world " "of " "our " "own, " 
  "\nthat " no "one " "else " "can " "share, "
  "\nAll " "our " sor "rows " "we'll " "leave " "far " be "hind " "us " "there, "
  "\nAnd " "I " "know " "you " "will " "find " "there'll " "be " "peace " "of " "mind, " 
  "\nWhen " "we " "live " "in " "a " "world " "of " "our " "own. " 
  "\nWe'll " "build " "a " "world " "of " "our " "own, "  "that " no "one " "else " "can " "share, "
  "\nAll " "our " sor "rows " "we'll " "leave " "far " be "hind " "us " "there, "
  "\nAnd " "I " "know " "you " "will " "find " "there'll " "be " "peace " "of " "mind, " 
  "\nWhen " "we " "live " "in " "a " "world " "of " "our " "own. " 
}

wordsTenorMidiC = \lyricmode {
  "\nClose " "the " "door, " "light " "the " "light, "
  "\nWe're " stay "ing " "home " to "night, "
  "\nFar " a "way " "from " "the " bus "tle " "and " "the " "bright " ci "ty " "lights. " 
  "\nLet " "them " "all " "fade " a "way, " "just " "leave " "us " a "lone, "
  "\nAnd " "we'll " "live " "in " "a " "world " "of " "our " "own. " 
  "\nWe'll " "build " "a " "world " "of " "our " "own, " 
  "\nthat " no "one " "else " "can " "share, "
  "\nAll " "our " sor "rows " "we'll " "leave " "far " be "hind " "us " "there, "
  "\nAnd " "I " "know " "you " "will " "find " "there'll " "be " "peace " "of " "mind, " 
  "\nWhen " "we " "live " "in " "a " "world " "of " "our " "own. " 
  "\nWe'll " "build " "a " "world " "of " "our " "own, "  "that " no "one " "else " "can " "share, "
  "\nAll " "our " sor "rows " "we'll " "leave " "far " be "hind " "us " "there, "
  "\nAnd " "I " "know " "you " "will " "find " "there'll " "be " "peace " "of " "mind, " 
  "\nWhen " "we " "live " "in " "a " "world " "of " "our " "own. " 
}

wordsBassMidiC = \lyricmode {
  "\nClose " "the " "door, " "light " "the " "light, "
  "\nWe're " stay "ing " "home " to "night, "
  "\nFar " a "way " "from " "the " bus "tle " "and " "the " "bright " ci "ty " "lights. " 
  "\nLet " "them " "all " "fade " a "way, " "just " "leave " "us " a "lone, "
  "\nAnd " "we'll " "live " "in " "a " "world " "of " "our " "own. " 
  "\nWe'll " "build " "a " "world " "of " "our " "own, " 
  "\nthat " no "one " "else " "can " "share, "
  "\nAll " "our " sor "rows " "we'll " "leave " "far " be "hind " "us " "there, "
  "\nAnd " "I " "know " "you " "will " "find " "there'll " "be " "peace " "of " "mind, " 
  "\nWhen " "we " "live " "in " "a " "world " "of " "our " "own. " 
  "\nWe'll " "build " "a " "world " "of " "our " "own, "  "that " no "one " "else " "can " "share, "
  "\nAll " "our " sor "rows " "we'll " "leave " "far " be "hind " "us " "there, "
  "\nAnd " "I " "know " "you " "will " "find " "there'll " "be " "peace " "of " "mind, " 
  "\nWhen " "we " "live " "in " "a " "world " "of " "our " "own. " 
}

wordsD = \lyricmode {
  Say good -- bye __ my own true lov -- er
  as we sing __ a lov -- er's song.
  How it breaks __ my heart to leave you,
  Now the car -- ni -- val is gone.
  High a -- bove __ the dawn is wak -- ing
  and my tears __ are fal -- ling rain,
  For the car -- ni -- val is o -- ver __
  \set associatedVoice = alignerA
  We may nev -- er meet a -- gain.
  Aah __ Aah __ Aah. __
  \set associatedVoice = alignerS
  But the joys __ of love are fleet -- ing __
  for Pier -- rot __ and Col -- um -- bine. __
  Now the har -- bour light is call -- ing,
  This will be our last good -- bye. __
  Though the car -- ni -- val is o -- ver __
  I will love __ you till I die.
  Though the car -- ni -- val is o -- ver __
  I will love __ you till I die.
}

wordsSopMidiD = \lyricmode {
  "\nSay " good "bye "  "my " "own " "true " lov "er "
  "\nas " "we " "sing "  "a " lov "er's " "song. "
  "\nHow " "it " "breaks "  "my " "heart " "to " "leave " "you, "
  "\nNow " "the " car ni "val " "is " "gone. "
  "\nHigh " a "bove "  "the " "dawn " "is " wak "ing "
  "\nand " "my " "tears "  "are " fal "ling " "rain, "
  "\nFor " "the " car ni "val " "is " o "ver " 
  "\nWe " "may " nev "er " "meet " a "gain. "
  "\nLike " "a " "drum "  "my " "heart " "was " beat "ing " "and " "your " "kiss "  "was " "sweet " "as " "wine. " 
  "\nBut " "the " "joys "  "of " "love " "are " fleet "ing " 
  "\nfor " Pier "rot "  "and " Col um "bine. " 
  "\nNow " "the " har "bour " "light " "is " call "ing, "
  "\nThis " "will " "be " "our " "last " good "bye. " 
  "\nThough " "the " car ni "val " "is " o "ver " 
  "\nI " "will " "love "  "you " "till " "I " "die. "
  "\nThough " "the " car ni "val " "is " o "ver " 
  "\nI " "will " "love "  "you " "till " "I " "die. "
}

wordsAltoMidiD = \lyricmode {
  "\nSay " good "bye "  "my " "own " "true " lov "er "
  "\nas " "we " "sing "  "a " lov "er's " "song. "
  "\nHow " "it " "breaks "  "my " "heart " "to " "leave " "you, "
  "\nNow " "the " car ni "val " "is " "gone. "
  "\nHigh " a "bove "  "the " "dawn " "is " wak "ing "
  "\nand " "my " "tears "  "are " fal "ling " "rain, "
  "\nFor " "the " car ni "val " "is " o "ver " 
  "\nWe " "may " nev "er " "meet " a "gain. "
  "\nAah "  "Aah "  "Aah. " 
  "\nBut " "the " "joys "  "of " "love " "are " fleet "ing " 
  "\nfor " Pier "rot "  "and " Col um "bine. " 
  "\nNow " "the " har "bour " "light " "is " call "ing, "
  "\nThis " "will " "be " "our " "last " good "bye. " 
  "\nThough " "the " car ni "val " "is " o "ver " 
  "\nI " "will " "love "  "you " "till " "I " "die. "
  "\nThough " "the " car ni "val " "is " o "ver " 
  "\nI " "will " "love "  "you " "till " "I " "die. "
}

wordsTenorMidiD = \lyricmode {
  "\nHigh " a "bove "  "the " "dawn " "is " wak "ing "
  "\nand " "my " "tears "  "are " fal "ling " "rain, "
  "\nFor " "the " car ni "val " "is " o "ver " 
  "\nnev" "er " "meet " a "gain. "
  "\nAah "  "Aah "  "Aah. " 
  "\nBut " "the " "joys "  "of " "love " "are " fleet "ing " 
  "\nfor " Pier "rot "  "and " Col um "bine. " 
  "\nNow " "the " har "bour " "light " "is " call "ing, "
  "\nThis " "will " "be " "our " "last " good "bye. " 
  "\nThough " "the " car ni "val " "is " o "ver " 
  "\nlove "  "you " "till " "I " "die. "
  "\nThough " "the " car ni "val " "is " o "ver " 
  "\nlove "  "you " "till " "I " "die. "
}

wordsBassMidiD = \lyricmode {
  "\nHigh " a "bove "  "the " "dawn " "is " wak "ing "
  "\nand " "my " "tears "  "are " fal "ling " "rain, "
  "\nFor " "the " car ni "val " "is " o "ver " 
  "\nnev" "er " "meet " a "gain. "
  "\nAah "  "Aah "  "Aah. " 
  "\nBut " "the " "joys "  "of " "love " "are " fleet "ing " 
  "\nfor " Pier "rot "  "and " Col um "bine. " 
  "\nNow " "the " har "bour " "light " "is " call "ing, "
  "\nThis " "will " "be " "our " "last " good "bye. " 
  "\nThough " "the " car ni "val " "is " o "ver " 
  "\nlove "  "you " "till " "I " "die. "
  "\nThough " "the " car ni "val " "is " o "ver " 
  "\nlove "  "you " "till " "I " "die. "
}

wordsEone = \lyricmode {
  \set stanza = "1."
  There's a new world some -- where
  they call the prom -- ised land __
  and I'll be there some -- day
  if you will hold my hand. __
  I still need you there be -- side __ me
  no mat -- ter what I do,
  for I know I'll nev -- er find __ an -- oth -- er you. __

  There is _

  It's a long, long jour -- ney, so stay by my side,
  when I walk through the storm you'll be my guide. __
  If they gave me a for -- tune,
  my pleas -- ure would be small. __
  I could lose it all to -- mor -- row
  and nev -- er mind at all. __
  But if I should lose your love, __ dear,
  I don't know what I'd do,
  for I know I'll nev -- er find an -- oth -- er you. __
}

wordsEtwo = \lyricmode {
  _ _
  \set stanza = "2."
  al -- ways some -- one
  for each of us they say __
  and you'll be my some -- one
  for ev -- er and a day. __
  I could search the whole world o -- ver
  un --  til my life is through,
  but I know I'll nev -- er find an -- oth -- er you. __
}

wordsMelodySingleA = \lyricmode {
}

wordsMelodySingleB = \lyricmode {
}

wordsMelodySingleC = \lyricmode {
}

wordsMelodySingleD = \lyricmode {
}

wordsMelodySingleE = \lyricmode {
  \set stanza = "1."
  There's a new world some -- where
  they call the prom -- ised land __
  and I'll be there some -- day
  if you will hold my hand. __
  I still need you there be -- side __ me
  no mat -- ter what I do,
  for I know I'll nev -- er find __ an -- oth -- er you. __

  \set stanza = "2."
  There is al -- ways some -- one
  for each of us they say __
  and you'll be my some -- one
  for ev -- er and a day. __
  I could search the whole world o -- ver
  un --  til my life is through,
  but I know I'll nev -- er find an -- oth -- er you. __

  It's a long, long jour -- ney, so stay by my side,
  when I walk through the storm you'll be my guide. __
  If they gave me a for -- tune,
  my pleas -- ure would be small. __
  I could lose it all to -- mor -- row
  and nev -- er mind at all. __
  But if I should lose your love, __ dear,
  I don't know what I'd do,
  for I know I'll nev -- er find an -- oth -- er you. __
}

wordsMelodySingle = {
  \keepWithTag #usetags \tag #'A \wordsMelodySingleA
  \keepWithTag #usetags \tag #'B \wordsMelodySingleB
  \keepWithTag #usetags \tag #'C \wordsMelodySingleC
  \keepWithTag #usetags \tag #'D \wordsMelodySingleD
  \keepWithTag #usetags \tag #'E \wordsMelodySingleE
}

wordsMidiE = \lyricmode {
  \set stanza = "1."
  "There's " "a " "new " "world " some "where "
  "\nthey " "call " "the " prom "ised " "land " 
  "\nand " "I'll " "be " "there " some "day "
  "\nif " "you " "will " "hold " "my " "hand. " 
  "\nI " "still " "need " "you " "there " be "side "  "me "
  "\nno " mat "ter " "what " "I " "do, "
  "\nfor " "I " "know " "I'll " nev "er " "find "  an oth "er " "you. " 

  \set stanza = "2."
  "\nThere " "is " al "ways " some "one "
  "\nfor " "each " "of " "us " "they " "say " 
  "\nand " "you'll " "be " "my " some "one "
  "\nfor " ev "er " "and " "a " "day. " 
  "\nI " "could " "search " "the " "whole " "world " o "ver "
  "\nun"  "til " "my " "life " "is " "through, "
  "\nbut " "I " "know " "I'll " nev "er " "find " an oth "er " "you. " 

  "\nIt's " "a " "long, " "long " jour "ney, " "so " "stay " "by " "my " "side, "
  "\nwhen " "I " "walk " "through " "the " "storm " "you'll " "be " "my " "guide. " 
  "\nIf " "they " "gave " "me " "a " for "tune, "
  "\nmy " pleas "ure " "would " "be " "small. " 
  "\nI " "could " "lose " "it " "all " to mor "row "
  "\nand " nev "er " "mind " "at " "all. " 
  "\nBut " "if " "I " "should " "lose " "your " "love, "  "dear, "
  "\nI " "don't " "know " "what " "I'd " "do, "
  "\nfor " "I " "know " "I'll " nev "er " "find " an oth "er " "you. " 
}

wordsE = {}

words = {
  \keepWithTag #usetags \tag #'A \wordsA
  \keepWithTag #usetags \tag #'B \wordsB
  \keepWithTag #usetags \tag #'C \wordsC
  \keepWithTag #usetags \tag #'D \wordsD
  \keepWithTag #usetags \tag #'E \wordsE
}

wordsSopMidi = {
  \keepWithTag #usetags \tag #'A \wordsSopMidiA
  \keepWithTag #usetags \tag #'B \wordsSopMidiB
  \keepWithTag #usetags \tag #'C \wordsSopMidiC
  \keepWithTag #usetags \tag #'D \wordsSopMidiD
  \keepWithTag #usetags \tag #'E \wordsMidiE
}

wordsAltoMidi = {
  \keepWithTag #usetags \tag #'A \wordsAltoMidiA
  \keepWithTag #usetags \tag #'B \wordsAltoMidiB
  \keepWithTag #usetags \tag #'C \wordsAltoMidiC
  \keepWithTag #usetags \tag #'D \wordsAltoMidiD
  \keepWithTag #usetags \tag #'E \wordsMidiE
}

wordsTenorMidi = {
  \keepWithTag #usetags \tag #'A \wordsTenorMidiA
  \keepWithTag #usetags \tag #'B \wordsTenorMidiB
  \keepWithTag #usetags \tag #'C \wordsTenorMidiC
  \keepWithTag #usetags \tag #'D \wordsTenorMidiD
  \keepWithTag #usetags \tag #'E \wordsMidiE
}

wordsBassMidi = {
  \keepWithTag #usetags \tag #'A \wordsBassMidiA
  \keepWithTag #usetags \tag #'B \wordsBassMidiB
  \keepWithTag #usetags \tag #'C \wordsBassMidiC
  \keepWithTag #usetags \tag #'D \wordsBassMidiD
  \keepWithTag #usetags \tag #'E \wordsMidiE
}

wordsSopAboveA = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  in -- side you.
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  You're al -- ways win -- dow shop -- ping but nev -- er stop -- ping to buy.
  _ _ _ _ _ _ _ _ _
  a lit -- tle bit
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
}

wordsSopAboveB = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  Fire -- man rings the bell,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  Oo __ Oo __
  "" _ _ _ _ _ _ _ _ _
}

wordsSopAboveC = \lyricmode {
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
  _ _ _ _
}

wordsSopAboveD = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  Like a drum __ my heart was beat -- ing
  and your kiss __ was sweet as wine. __
}

wordsSopAboveE = {}

wordsSopAbove = {
  \keepWithTag #usetags \tag #'A \wordsSopAboveA
  \keepWithTag #usetags \tag #'B \wordsSopAboveB
  \keepWithTag #usetags \tag #'C \wordsSopAboveC
  \keepWithTag #usetags \tag #'D \wordsSopAboveD
  \keepWithTag #usetags \tag #'E \wordsSopAboveE
}

altoA = \relative {
  \globalA
  R1*4
  a4.^\mf fis'8~2 % 2b
  g4 d8 e~4 r
  a,8 a d d cis4 d^\markup\italic unison
  e4 a,8 8~4 r % 2c
  a8 8 d d cis4 d
  g4. 8 d4 4
  c8 8 8 8~2 % 3a
  \once\partCombineApart R1
  a4. fis'8~2
  g4 d8 e~4 r
  a,8 8 d d cis4 d^\markup\italic unison % 3b
  e4 a,8 8~4 r
  a8 8 d d cis4 d
  g4. 8 \tuplet 3/2 {d4 d d}
  e4. 8 e2~ % 3c
  e1 \breathe
  fis1_\mp ( ~
  fis1
  g1 % 4a
  d1)
  r4^\mf fis^\markup\italic unison gis ais
  b4 fis8 gis~8 a b4
  fis1^\< % 4b
  \once\partCombineApart R1\!
  a,4.^\mf fis'8~2
  g4 d8 e~4 r
  a,8 a d d cis4 d^\markup\italic unison % 4c
  e4 a,8 8~4 r
  a8^\cresc a d d cis4 d
  g4 r8 g \tuplet 3/2 {a4 g g}
  fis4. 8 2^\< ~ % 5a
  fis2\! r4 4
  g4. 8 2
  r4 g8^\f 8~8 4 8
  fis2 r % 5b
  r4 g8 8~8 4 8
  fis2 r
  r4 g8 8~8 4 8
  fis2 r % 5c
  r4 a8 g~8 4 8
  fis2(a
  g2 2 \bar "||"
  fis2) r % 6a
  R1
}

altoB = \relative { % Morning Town Ride
  \globalB
  fis'2\omit\mf a4 b
  fis4 a2 r4
  g4 4 4 4 % 6b
  fis2. r4
  g4 4 4 d
  fis4 4 r fis4
  g4. fis8 e4 b % 6c
  cis2. r4
  d4 fis fis fis
  d4 fis2 r4
  g4 4 4. 8 % 7a
  fis2. r4
  g2 4 d
  fis4 4 d2
  cis8 4. 4. 8 % 7b
  a2(cis) \bar "||"
  fis4\omit\mf a a b
  fis4 a2.
  g1( % 7c
  fis2.) r4
  b4 4 g4. 8
  fis4 2 4
  g4. fis8 e4 b % 8a
  cis2. r4
  d4 fis fis fis
  d4 fis2 r4
  g4 4 4. 8 % 8b
  fis2. r4
  g2 4 d
  fis4 4 d2
  cis8 4. 4. 8 % 8c
  a2(cis) \bar "||"
  d'2.( e4
  fis2 e4 d)
  g1( % 9a
  fis2.) r4
  g,2 4 4
  fis4 4 d2
  a'8 4. g4. 8 % 9b
  a1~
  a2. r4\fermata
}

altoC = \relative {
  \globalC
  R1
  R1 % 9c
  R1
  r2 b4^\mf 4 \bar "||"
  g2 4. c8
  e2 r4 e % 10a
  f8 4. a4. f8
  e4 r c d
  b2 4. e8
  c8 4. a4. 8 % 10b
  c2 8 f4 d8~
  d4 r a' b
  g2 e4. 8
  b2 r4 4 % 10c
  c2 4 f8 e~
  e4 r c d
  b2 8 e4 c8~
  c2 e8 d4 c8~ % 11a
  c2 r
  r4 d^\f f g \bar "||"
  g2 8 e4 f8~
  f2. 4 % 11b
  d4. 8 4 4
  c4 r e g
  a2 4 4
  fis2 4 4 % 11c
  g2. f4
  d4 r f f
  g2 e8 4.
  b2. 4 % 12a
  c2 8 f4 e8~
  e4 r c d
  b2 8 e4 c8~
  c2 e8 d4 g,8~ ( % 12b
  g2 a
  g8) r^\f d'4 f g \bar "||"
  g2 8 e4 f8~
  f2. 4 % 12c
  d4. 8 4 4
  c4 r e g
  a2 4 4
  fis2 4 4 % 13a
  g2. f4
  d4 r g8 f4.
  g2 8 4 gis8~
  gis2. 4 % 13b
  f2 8 4 e8~
  e4 r e f
  e2 8 4 f8~
  f4 r4 8 4. % 13c
  e2(f
  e2 f
  e2 f
  e2) r4\fermata % 14a
}

altoD = \relative {
%  \globalD
  r4 \bar "||" \key d \major \time 4/4
  R1
  r2 r4^\mp a8. 16 \bar "|"
  d2~8 8 e8. d16
  d4 cis r a8. 16 % 14b
  g'2~8 e a e
  fis2 r4 d8. 16
  b'2~8 a g b
  a4 fis r fis8. d16 % 14c
  b2~8. a16 b8 d
  e2 r4 g,8. 16
  a2~8 8 8. 16
  g4 2 8. 16 % 15a
  cis2~8 8 8. 16
  d2 r4 c8. 16
  d2~8. 16 8 8 % 15b
  d4 2 fis8. d16
  b2~8 a b8. d16
  d2 r4^\mf \once\partCombineApart r % 15c
  d2^\mf(e
  d1)
  d2(e) % 16a
  fis2(d4) \breathe d8. 16
  d2~8 8 8. 16
  fis4 c(d) 8 fis % 16b
  d2~8 8 8 8
  c2^\<(cis4\!) \breathe 8.^\> 16\!
  a2~8. 16 8 8 % 16c
  g4 2 8. 16
  cis2~8 8 8. 16
  d2. \breathe c8. 16 % 17a
  d2~8 8 8. 16
  d4 2 \breathe fis8 d
  b2~8 a b16 d8. % 17b
  d2 r4 c8.^\< 16
  d2\! ~8 8 8. 16
  d4^\> 2\! \tramtracks fis8 d % 17c
  b2~8 a^\< b d\!
  a2. r4
  R1
  R1
}

altoE = {}

alto = {
  \keepWithTag #usetags \tag #'A {\altoA \bar "||"}
  \keepWithTag #usetags \tag #'B {\altoB \bar "||"}
  \keepWithTag #usetags \tag #'C {\altoC \bar "||"}
  \keepWithTag #usetags \tag #'D {\altoD \bar "||"}
  \keepWithTag #usetags \tag #'E {\altoE          }
}

wordsAlto = \lyricmode {
}

tenorA = \relative {
  \globalA
  R1*4
  fis4.^\mf cis'8~2 % 2b
  d4 b8 cis~4 r
  fis,8 8 a a a4 4
  b4 a8^\markup\italic unison 8~4 r % 2c
  fis8 8 a a a4 4
  d4. cis8 b4 4
  g8 8 8 8~2 % 3a
  R1
  fis4. cis'8~2
  d4 b8 cis~4 r
  fis,8 8 a a a4 4 % 3b
  b4 a8^\markup\italic unison 8~4 r
  fis8 8 a8 8 4 4
  d4. 8 \tuplet 3/2 {c4 4 4}
  d4. 8 cis2( % 3c
  b2 cis) \breathe
  d1^\mp(
  cis1
  d2. b4 % 4a
  a1)
  r4^\mf fis^\markup\italic unison gis ais
  b4 fis8 gis~8 a b4
  e1^\< % 4b
  R1\!
  fis,4.^\mf cis'8~2
  d4 b8 cis~4 r
  fis,8 8 a8 8 4 4 % 4c
  b4 a8 8~4 r
  fis8^\cresc 8 a8 8 4 4
  d4 r8 d \tuplet 3/2 {e4 4 4}
  d4. 8 2^\< ~ % 5a
  d2\! r4 d
  a4. b8 2
  r4 a8^\f cis~8 e4 8
  a,2 r % 5b
  r4 b8 cis~8 e4 8
  a,2 r
  r4 b8 cis~8 e4 8
  a,2 r % 5c
  r4 b8 cis~8 e4 8
  a,2( fis
  b2 cis \bar "||"
  a2) r % 6a
  R1
}

tenorB = \relative { % Morning Town Ride
  \globalB
  fis2\omit\mf^\markup{\dynamic mf \italic unison} a4 b
  fis4 a2 r4
  d4 b b b % 6b
  a2. r4
  b4 4 a g
  a4 d r d
  b4. 8 4 g % 6c
  g2. r4
  a4 d d d
  a4 c2 r4
  d4 b4 4. 8 % 7a
  a2. r4
  b2 a4 g
  a4 4 b2
  e,8 4. 4. g8 % 7b
  fis2(g) \bar "||"
  a1^\mf(
  c1)
  d2.(b4 % 7c
  a2.) r4
  d1~
  d1
  g,1( % 8a
  a2.) r4
  a4 d d d
  a4 c2 r4
  d4 b4 4. 8 % 8b
  a2. r4
  b2 a4 g
  a4 4 b2
  e,8 4. 4. g8 % 8c
  fis2(g) \bar "||"
  fis4 a a b
  fis4 a2 r4
  b4 d4 4. e8 % 9a
  d2. r4
  b2 a4 g
  a4 4 b2
  a8 4. e'4. 8 % 9b
  fis1~
  fis2. r4\fermata
}

tenorC = \relative {
  \globalC
  R1
  R1 % 9c
  R1
  r2 g4^\mf f \bar "||"
  e2 4. g8
  c2 r4 c % 10a
  c8 4. 4. 8
  c4 r e, f
  g2 4. b8
  a8 4. e4. 8 % 10b
  a2 8 c4 b8~
  b4 r c d
  e2 c4. 8
  gis2 r4 4 % 10c
  a2 4 c8 8~
  c4 r e, f
  g2 8 b4 a8~
  a2 g8^\markup\italic unison f4 e8~ % 11a
  e2 r
  r4 b'^\f c d
  e2 8 c4 8~
  c2. 4 % 11b
  b4. c8 b4 4
  g4 r c e
  e2 4 4
  d2 a4 4 % 11c
  b2. d4
  b4 r c d
  e2 c8 4.
  gis2. 4 % 12a
  a2 8 c4 8~
  c4 r e, f
  g2 8 b4 a8~
  a2 g8 f4 e8~ ( % 12b
  e2 f
  e8) r^\f b'4 c d \bar "||"
  e2 8 c4 8~
  c2. 4 % 12c
  b4. c8 b4 4
  g4 r c e
  e2 4 4
  d2 a4 4 % 13a
  b2. d4
  b4 r b8 4.
  e2 8 4 8~
  e2. 4 % 13b
  c2 8 a4 c8~
  c4 r g g
  b2 8 g4 c8~
  c4 r b8 d4. % 13c
  g,2(a
  g2 a
  g2 a
  g2) r4\fermata % 14a
  \bar "|."
}

tenorD = \relative {
  \globalD
  r4 \bar "||" \key d \major \time 4/4
  R1
  R1 \bar "||"
  R1
  R1*6
  r2 r4 e8.^\mp 16 % 14c++
  fis2~8 8 g8. fis16
  e4 2 8. 16 % 15a
  e2~8 8 8. g16
  a2 r4 8. 16
  g2~8. cis16 b8 a % 15b
  fis4 a(b) r
  d,2(g8) 8 8. 16
  fis2 r % 15c
  b2^\mf(cis
  a2 b)
  b2(cis) % 16a
  a4.(b8 c4) \breathe 8. 16
  b2(cis8) 8 8. 16
  c4 a(fis) b8 fis % 16b
  g2~8 fis e d
  g2^\< (a4\!) \breathe 8.^\> g16\!
  fis2^\mf ~8. 16 8 8 % 16c
  e4 2 8. 16
  e2~8 8 8. g16
  a4.(b8 c4) \breathe fis,8. 16 % 17a
  g2~8 cis b8. g16
  fis4 a(b) r
  d,2(g8) 8 16 8. % 17b
  fis2 r4 a8.^\< 16
  g2\! ~8 8 a8. g16
  fis4^\> a4(b\!) \tramtracks r4 % 17c
  fis2^\mf(b8) 8^\< 8 8\!
  fis2. r4
  R1
  R1
}

tenorE = {}

tenor = {
  \keepWithTag #usetags \tag #'A {\tenorA \bar "||"}
  \keepWithTag #usetags \tag #'B {\tenorB \bar "||"}
  \keepWithTag #usetags \tag #'C {\tenorC \bar "||"}
  \keepWithTag #usetags \tag #'D {\tenorD \bar "||"}
  \keepWithTag #usetags \tag #'E {\tenorE          }
}

wordsTenor = \lyricmode {
}

bassA = \relative {
  \globalA
  R1*4
  d4.^\mf fis8~2 % 2b
  g4 8 a~4 r
  d,8 8 8 8 fis4 4
  g4 a8^\markup\italic unison 8~4 r % 2c
  d,8 8 8 8 fis4 4
  g4. 8 4 4
  c,8 8 8 8~2 % 3a
  R1
  d4. fis8~2
  g4 8 a~4 r
  d,8 8 8 8 fis4 4 % 3b
  g4 a8^\markup\italic unison 8~4 r
  fis8 8 a8 8 fis4 4
  g4. 8 \tuplet 3/2 {g4 4 4}
  a4. 8 2~ % 3c
  a1 \breathe
  b1^\mp (
  a1
  g1 % 4a
  d1)
  r4^\mf fis^\markup\italic unison gis ais
  b4 fis8 gis~8 a b4
  a1^\< % 4b
  R1\!
  d,4.^\mf fis8~2
  g4 8 a~4 r
  d,8 8 8 8 fis4 4 % 4c
  g4 a8 8~4 r
  d,8^\cresc 8 8 8 fis4 4
  g4 r8 8 \tuplet 3/2 {a4 4 4}
  b4. 8 2^\< ( % 5a
  a2\!) r4 a
  g4. 8 2
  r4 a8^\f 8~8 4 8
  d,2 r % 5b
  r4 a'8 8~8 4 8
  d,2 r
  r4 a'8 8~8 4 8
  d,2 r % 5c
  r4 a'8 8~8 4 8
  d,2( fis
  g2 a \bar "||"
  d,2) r % 6a
  R1
}

bassB = \relative { % Morning Town Ride
  \globalB
  fis2\omit\mf a4 b
  fis4 a2 r4
  g4 4 4 4 % 6b
  d2. r4
  g4 4 4 4
  d4 4 r d
  e4. 8 4 4 % 6c
  a,2. r4
  d4 4 4 4
  d4 2 r4
  g4 4 4. 8 % 7a
  d2. r4
  g2 4 4
  d4 4 b2
  a8 4. 4. 8 % 7b
  d2(a) \bar "||"
  d1^\mf ~
  d1
  g1( % 7c
  d2.) r4
  g1(
  a2 d,)
  e1( % 8a
  a,2.) r4
  d4 4 4 4
  d4 2 r4
  g4 4 4. 8 % 8b
  d2. r4
  g2 4 4
  d4 4 b2
  a8 4. 4. 8 % 8c
  d2(a) \bar "||"
  d4 fis fis fis
  d4 fis2 r4
  g4 b4 4. g8 % 9a
  a2. r4
  g2 4 4
  d4 4 b2
  a8 4. 4. 8 % 9b
  d1~
  d2. r4\fermata
}

bassC = \relative {
  \globalC
  R1
  R1 % 9c
  R1
  r2 g,4^\mf g \bar "||"
  c2 4. 8
  c2 r4 c % 10a
  f8 4. 4. 8
  c4 r e f
  e2 4. 8
  a,8 4. 4. 8 % 10b
  f'2 8 4 g8~
  g4 r g g
  c2 4. 8
  e,2 r4 e % 10c
  f2 4 8 c~
  c4 r e f
  e2 8 4 f8~
  f2 g8 f4 c8~ % 11a
  c2 r
  r4 g'^\f g g \bar "||"
  c2 8 4 f,8~
  f2. 4 % 11b
  g4. 8 4 4
  c,4 r c' b
  a2 4 4
  d,2 4 4 % 11c
  g2. 4
  g4 r g g
  c,2 8 4.
  e2. 4 % 12a
  f2 8 4 c8~
  c4 r e f
  e2 8 4 f8~
  f2 g8 f4 c8~ % 12b
  c1~
  c8 r^\f g'4 4 4 \bar "||"
  c2 8 4 f,8~
  f2. 4 % 12c
  g4. 8 4 4
  c,4 r c' b
  a2 4 4
  d,2 4 4 % 13a
  g2. 4
  g4 r g8 4.
  c,2 8 4 e8~
  e2. 4 % 13b
  f2 8 4 c8~
  c4 r c d
  e2 8 4 f8~
  f4 r g8 4. % 13c
  c,1~
  c1~
  c1~
  c2 r4\fermata
}

bassD = \relative {
  \globalD
  r4
  R1
  R1 \bar "||"
  R1
  R1*6
  r2 r4 a,8.^\mp 16 % 14c++
  d2~8 8 8. 16
  a4 2 8. 16 % 15a
  a2~8 8 8. 16
  d2 r4 8. 16
  g2~8. 16 8 8 % 15b
  d4 4(b) r
  g2~8 8 8. 16
  d'2 r % 15c
  g2^\mf (a
  fis2 b,)
  g'2(a) % 16a
  d,2(fis4) \breathe 8. 16
  g2(a8) 8 8. 16
  fis4 4(b,) 8 8 % 16b
  g2~8 8 8 8
  c2^\<(a4\!) \breathe 8.^\> 16\!
  d2^\mf~8. 16 8 8 % 16c
  a4 2 8. 16
  a2~8 8 8. 16
  d2. \breathe 8. 16 % 17a
  g2~8 8 8. 16
  d4 d(b) r
  g2(a8) 8 16 8. % 17b
  d2 r4 8.^\< 16
  g2\! ~8 8 8. 16
  d4^\> 4(b\!) \tramtracks r4 % 17c
  g2^\mf(a8) 8^\< 8 8\!
  d2. r4
  R1
  R1
}

bassE = {}

bass = {
  \keepWithTag #usetags \tag #'A \bassA
  \keepWithTag #usetags \tag #'B \bassB
  \keepWithTag #usetags \tag #'C \bassC
  \keepWithTag #usetags \tag #'D \bassD
  \keepWithTag #usetags \tag #'E \bassE
}


wordsBassBelowA = \lyricmode {
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
  _ _ _ _ _ _ _ _
}

wordsBassBelowB = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
  Mm __ Mm __ Mm __ Mm __
  "" _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _
}

wordsBassBelowC = {}
wordsBassBelowD = {}
wordsBassBelowE = {}

wordsBassBelow = {
  \keepWithTag #usetags \tag #'A \wordsBassBelowA
  \keepWithTag #usetags \tag #'B \wordsBassBelowB
  \keepWithTag #usetags \tag #'C \wordsBassBelowC
  \keepWithTag #usetags \tag #'D \wordsBassBelowD
  \keepWithTag #usetags \tag #'E \wordsBassBelowE
}

pianoRHoneA = \relative {
  \globalA
  \oneVoice
  d''8-. fis,-. a-. d-. cis-. a-. cis-. b-.
  r8 e,-. g-. b-. d4 cis
  d8-. fis,-. a-. d-. cis-. a-. cis-. b-.
  r8 e,-. g-. b-. d4 cis \bar "||"
  d,8 fis, a cis~cis a cis4 % 2b
  b8 g b cis~8 a cis4
  d8 fis, a cis~8 fis, a4
  b8 g b cis~8 a cis4 % 2c
  d8 fis, a cis~8 fis, a4
  b8 g b d~8 a b4
  c8 g c e~e g, c4 % 3a
  <g cis e>4 r r2
  d'8 fis, a c~c a c4
  b8 g b c~c a c4
  d8 fis, a cis~cis fis, a4 % 3b
  b8 g b cis~cis a cis4
  d8 fis, a cis~cis fis, a4
  d8 g, b d e g, c e \voiceOne
  \once\partCombineApart r4 <e a> \once\partCombineApart r q % 3c
  r4 q r <a, c e a>4( \oneVoice
  <b d fis b>2) r8 b <d fis b>4
  <a c fis a>2 8 a <cis fis a>4
  <b d e g>2 r8 g <b d g>4 % 4a
  <a d fis a>2 a8(d e d
  <fis, ais c fis>2) r8 a <c fis ais>4
  <b dis fis b>8 r r <b e gis>~2
  cis8 a cis d e cis e a % 4b
  <e g a cis>4-.-> r4 r2
  d8 fis, a cis~8 a cis4
  b8 g b cis~8 a cis4
  d8 fis, a cis~8 fis, a4 % 4c
  b8 g b cis~8 a cis4
  d8 fis, a cis~8 fis, a4
  g'8 b, d g a cis, e a \voiceOne
  \once\partCombineApart r4 <fis b> \oneVoice r8 d fis b % 5a
  <b, d fis>2. 4
  <b d g>2. 4
  <cis e g a>4-.-> r r2
  d'8-. fis,-. a-. d-. cis-. a-. cis-. b-. % 5b
  r8 e,-. g-. b-. d4 cis
  d8-. fis,-. a-. d-. cis-. a-. cis-. b-.
  r8 e,8-. g-. b-. d4 cis
  d8-. fis,-. a-. d-. cis-. a-. cis-. b-. % 5c
  r8 e,-. g-. b-. d4 cis
  d8-. fis,-. a-. d-. cis-. a-. cis-. b-.
  r8 e,-. g-. b-. d4 cis \bar "||"
  \voiceOne <d, fis a d>1 % 6a
  s1
}

pianoRHoneB = \relative { % Morning Town Ride
  \globalB
  r4 <fis a d>4 r8 fis~q4
  r4 q r <a c d>
  r4 <g b d> r8 g8~q4 % 6b
  r4 <fis a d> r8 fis~q4
  r4 <g b d> r8 g~q4
  r4 <fis a d> r8 fis~q4
  r4 <g b e> r <g b fis'> % 6c
  r4 <a cis e> r <g a e'>
  r4 <fis a d> r8 fis~q4
  r4 q r <a c d>
  r4 <g b d> r8 g~q4 % 7a
  r8 a' \appoggiatura e'8 <fis a>8. d16 q4 \voiceOne a'4 \oneVoice
  r4 <g,, b d> r8 g~q4
  r4 <fis a d> r8 b~<b d fis>4
  r4 <a cis e> r8 g~<g cis e>4 % 7b
  r4 <fis a d> r8 fis~<fis cis' e>4 \bar "||"
  r4 <fis a d> r8 fis~q4
  r4 q r <a c d>
  r4 <g b d> r8 g~q4 % 7c
  r4 <fis a d> r8 fis~q4
  r4 <g b d> r8 g~q4
  r4 <fis a d> r8 fis~q4
  r4 <g b e> r q % 8a
  r4 <a cis e> r <g a e'>
  r4 <fis a d> r8 fis~q4
  r4 q r <a c d>
  r4 <g b d> r8 g~q4 % 8b
  r8 a' \appoggiatura e'8 <fis a>8. d16 q4 \voiceOne a'4 \oneVoice
  r4 <g,, b d> r8 g~q4
  r4 <fis a d> r8 fis~q4
  r4 <a c e> r8 g~<g cis e>4 % 8c
  r4 <fis a d> r8 g~<g cis e>4
  r4 <fis a d> r8 fis~q4
  r4 q r <a c d>
  r4 <g b d> r8 g~q4 % 9a
  r8 a' \appoggiatura e'8 <fis a>8. d16 q4 \voiceOne a'4 \oneVoice
  r4 <g,, b d> r8 g~q4
  r4 <fis a d> r8 b~<b d fis>4
  <cis e a>1 % 9b
  d4 fis a d,
  fis4 a d r\fermata
}

pianoRHoneC = \relative {
  \globalC
  <c' e g>4-> c'8 g a g e f
  <c e g>4-> c'8 g a g e f % 9c
  <c e g>4-> c'8 g a g e f
  <b, d g>4-> q-> r2 \bar "||"
  r4 g8~<g c e>~8 g~q4
  r4 g8~<g c e>~8 g~q4 % 10a
  r4 a8~<a c f>~8 a~q4
  r4 a8~<a c e>~8 a~q4
  r4 g8~<g b e>~8 g~q4
  r4 a8~<a c e>~8 a~q4 % 10b
  r4 a8~<a c f>~8 a~q4
  r4 b8~<b d g>~8 b~<b d f g>4
  r4 g8~<g c e>~8 g~q4
  r4 gis8~<gis b d e>~8 gis~q4 % 10c
  r4 a8~<a c f>~8 a~q4
  r4 g8~<g c e>~8 g~q4
  r4 g8~<g b e>~8 g~q4
  r8 a~<a c f>4 b8~<b d f g>4. % 11a
  <g c e>4 c'8 g a g e f
  <c e g>4 r <a c f> <b d g> \bar "|"|
  r4 g8~<g c e>~8 g~q4
  r4 a8~<a c f>~8 a~q4 % 11b
  r4 b8~<b d g>~8 b~<b d f>4
  r4 g8~<g c e> r4 <g e'>
  r4 a8~<a c e>~8 a~q4
  r4 fis8~<fis a c d>~8 fis~q4 % 11c
  r4 b8~<b d g>~8 b~q4
  r4 b8~<b d g>~8 b~<b d f g>4
  r4 g8~<g c e>~8 g~q4
  r4 gis8~<gis b d e>~8 gis~q4 % 12a
  r4 c8 f <a c> c,4 8
  r4 g8 c <c e> g <d' f> g,
  <e' g>4 g,8 b <e g> b4.
  <f' a>4 c <e g>8 <d f>4 <c e>8~ % 12b
  q4 g8 c <c f> a c f
  <c e g>4 r <a c f> <b c g> \bar "||"
  r4 g8~<g c e>~8 g~<g c g'>4
  r4 a8~<a c f>~8 a~q4 % 12c
  r4 b8~<b d g>~8 b~<b d f>4
  r8 g8~<g c e>4 r <g e'>
  r4 a8~<a c e>~8 a~q4
  r4 fis8~<fis a c d>~8 fis~q4 % 13a
  r4 b8~<b d g>~8 b~q4
  r4 b8~q~q b~<b d f g>4
  r4 g8~<g c e>~8 g~q4
  r4 gis8~<gis b d e>~8 gis~q4 % 13b
  r4 c8 f <a c> c,4 8
  r4 g8 c <c e> g <d' f> g,
  <e' g>4 g,8 b <e g> b4.
  <f' a>4 c <b d f g>2 % 13c
  <c g'>4 c'8 g <c, a'> g' e f
  <c g'>4 c'8 g <c, a'> g' e f
  <c g'>4 c'8 g <c, a'> g' a b
  <e, c'>2-> r4\fermata
}

pianoRHoneD = \relative {
%  \globalD
  a8. 16 \bar "||" \key d \major \time 4/4
  <fis a d>2. a8. 16
  <fis a d>2. a8. 16 \bar "|"
  <fis d'>2. <g e'>8. <fis d'>16
  <g d'>4 <g cis> r2 % 14b
  <cis g'>2~8 <cis e> <cis a'> <cis e>
  <d fis>2 r4 <c d>
  b'1
  a4 fis2. % 14c
  <g, b>2. 4
  <g cis e>2. <g a>4
  <fis d'>2. <g e'>8. <fis d'>16
  <g d'>4 <g cis> r2 % 15a
  <cis g'>2~8 <cis e> <cis a'>8. <cis e>16
  <d fis>2 r4 <c d>
  b'1 % 15b
  a4 fis2.
  <g, b>2. q4
  <fis d'>2. <fis d' e>4 % 15c
  r8 d'( g b a2)
  a4 fis2.
  <g, b>2 cis % 16a
  <fis, d'>2. <fis c' d>4
  r8 d'(b' a g2)
  a4 fis2. % 16b
  <b, g'>2. q8 <b fis'>
  <g c e>4. c8(cis) a(<a fis'>8. <g e'>16
  <fis d'>4) <a' f'>8.(<g e'>16 <fis d'>2) % 16c
  r8 a,( cis a' e2)
  <cis g'>2~8 <cis e> <cis a'>8. <cis e>16
  <d fis>2 r4 <c d> % 17a
  b'1
  a4 fis2.
  <g, b>2. q4 % 17b
  <fis a d>2 r4 <fis a c d>
  <d' g b>2~8 8 <d a' cis> <d g b>
  <d a'>4 <d fis> <b d>2 \tramtracks % 17c
  <g b>2 4 8 d'
  <fis, a d>2. a8. 16
  <fis a d>2. a8. 16
  <fis a d>2\fermata r
}

pianoRHoneE = \relative {
  \key ees \major
  ees'4 g8 bes aes g f bes,~
  bes2~8 bes d f
  ees4 g8 bes aes g f bes,~
  bes8 8 8 8 <c ees>4 <d f> % 1b
  \repeat volta 2 {
    <bes g'>2 2
    <c ees bes'>4 <c ees aes>2 <c ees g>4
    <a f'>4. c8 q <a ees'>4 <aes d>8~ % 1c
    q2 ees'4 f
    <bes, ees g>2 <ees g bes>
    <d g c>4 <d g bes>2 4
    <c c'>4. <c bes'>8 <c aes'> <c c'>4 <d bes'>8~ % 1d
    q2 c'4 d
    <g, c ees>4. 8 8 4 <aes c f>8~
    q4 <aes c ees>2 4
    <f bes d>4 4 <ees aes c>8 4. % 2a
    <d g bes>2 ees4 f
    g4. bes8 <aes, ees' aes> g'4 f8~
    f4. ees8 <aes, d>8 f'4 ees8~
  }
  \alternative {
    {
      ees1~ % 2b
      ees2 4 f
    }
    {
      ees4\repeatTie g8 bes aes g f ees~
    }
  }
  ees2 <bes ees g>4 <bes f' bes>
  <ees g ees'>2 2 % 2c
  <d bes' d>4 <ees aes c>2 4
  <ees g bes>2 <d f aes>4. aes'8
  <bes, ees g>2 4 <bes f' bes>
  <ees g ees'>2 4. 8 % 2d
  <f bes d>4 4 <ees aes c>4 4
  bes'1~
  bes2 4 aes
  g2 4. 8 % 3a
  bes4 <c, ees aes>2 <c ees g>4
  f4. c8 <a f'> ees'4 <aes, d>8~
  q2 ees'4 f
  <bes, ees g>4. bes'8 4 ees % 3b
  <d, g c>4 <d g bes>2 4
  <c c'>4. bes'8 <c, aes'> c'4 <d, bes'>8~
  q2 c'4 d
  <g, c ees>4. 8 8 4 <aes c f>8~ % 3c
  q4 <aes c ees>2 4
  <f bes d>4 4 <ees aes c>8 4.
  <d g bes>2 ees4 f
  g4. bes8 <aes, ees' aes>8 g'4 f8~ % 3d
  f4. ees8 <aes, d> f'4 ees8~
  ees4 g8 bes aes g f ees~
  ees2 \acciaccatura f'8 <g, bes ees>4\fermata r4
}

pianoRHone = {
  \keepWithTag #usetags \tag #'A {\pianoRHoneA \bar "||"}
  \keepWithTag #usetags \tag #'B {\pianoRHoneB \bar "||"}
  \keepWithTag #usetags \tag #'C {\pianoRHoneC \bar "||"}
  \keepWithTag #usetags \tag #'D {\pianoRHoneD \bar "||"}
  \keepWithTag #usetags \tag #'E {\pianoRHoneE \bar "||"}
}

pianoRHtwoA = \relative {
  \globalA
  \voiceTwo
  s1*18
  d'2 cis % 3c
  b2 c4 s
  s1*14
  d2 s % 5a
  s1*11
  \once\partCombineApart r4 fis a fis % 6a
  d4 fis a fis \bar "||"
}

pianoRHtwoB = \relative {
  \globalB
  s1*11
  s2. e''8. d16 % 7a+
  s1*15
  s2. e8. d16 % 8b+
  s1*7
  s2. e8. d16 % 9a+
  s1*5
}

pianoRHtwoC = \relative {
  \globalC
  s1*53
  s2.
}

pianoRHtwoD = \relative {
  \globalD
  s4 \bar "||" \key d \major \time 4/4
  s1*6
  d'2 cis
  d2 2 % 14c
  s1*6
  d2 cis % 15b
  d2 2
  s1
  s1 % 15c
  b2 cis
  d2 2
  s1 % 16a
  s1
  b2 cis
  cis2 d % 16b
  s1*3
  <g, d'>4 cis2. % 16c+
  s1
  s1 % 17a
  d2 b
  d2 d
  s1*8
}

pianoRHtwoE = \relative {
  s1*4
  \repeat volta 2 {
    s1*11
    s2 aes % 2a+
    <bes ees>2 s4. c8~
    c2 s4. g8~
  }
  \alternative {
    {
      g8 bes bes bes <aes c>4 8 <g bes>~ % 2b
      q8 8 4 s2
    }
    { g4\repeatTie s4 c4. g8~}
  }
  g2 s
  s1*6
  r4 <bes ees> r q % 2d++
  r4 <d aes'> \once\partCombineApart r d
  \once\partCombineApart r4 <bes ees> \once\partCombineApart r q % 3a
  s1
  a2 s
  s1
  s2 g' % 3b
  s1*6
  s2 aes, % 3c+++
  <bes ees>2 s4. c8~ % 3d
  c2 s4. g8~
  g2 c4. g8~
  g2 s
}

pianoRHtwo = {
  \keepWithTag #usetags \tag #'A {\pianoRHtwoA \bar "||"}
  \keepWithTag #usetags \tag #'B {\pianoRHtwoB \bar "||"}
  \keepWithTag #usetags \tag #'C {\pianoRHtwoC \bar "||"}
  \keepWithTag #usetags \tag #'D {\pianoRHtwoD \bar "||"}
  \keepWithTag #usetags \tag #'E {\pianoRHtwoE          }
}

dynamicsPianoA = {
  \override DynamicTextSpanner.style = #'none
  s1\f
  s1
  s1
  s1
  s1\mf % 2b
  s1*5
  s1*12 % 3
  s1*4 % 4a
  s1\< % 4b
  s1\!
  s1\mf
  s1
  s1 % 4c
  s1
  s1\cresc
  s1
  s1*4 % 5a
  s1\f % 5b
  s1*7
  s1\omit\mf-\markup {\italic sub. \dynamic mf}
  s1
}

dynamicsPianoB = { % Morning Town Ride
  s1*41
}

dynamicsPianoC = { % A World of Our Own
  s1\f
  s1 % 9c
  s1
  s1
  s1\mf
  s1*13
  s1\f % 11a+
  s1*34
  s2.
}

dynamicsPianoD = {
  s4\mf
  s2. s4\dim
  s2. s4\mp
  s1
  s1*14
  s8 s\< s2 s4\mf % 15c
  s1*7
  s2\< s\>
  s1\mf % 16c
  s1*6
  s2.\< s4\! % 17b+
  s1
  s2\> s\! % 17c
  s2. s4\<
  s1\f
  s1
  s1
}

dynamicsPianoE = {
  s1\mf
}

dynamicsPiano = {
  \keepWithTag #usetags \tag #'A \dynamicsPianoA
  \keepWithTag #usetags \tag #'B \dynamicsPianoB
  \keepWithTag #usetags \tag #'C \dynamicsPianoC
  \keepWithTag #usetags \tag #'D \dynamicsPianoD
  \keepWithTag #usetags \tag #'E \dynamicsPianoE
}


pianoLHoneA = \relative {
  \globalA
  \oneVoice
  d,4. fis8-- ~4 r
  g4. a8-- ~4 r
  d,4. fis8-- ~4 r
  g4. a8-- ~4 r \bar "||"
  d,4. fis8~4 r % 2b
  g4. a8~4 r
  d,4. fis8~4 r
  g4. a8~4 r % 2c
  d,4. fis8~4 r
  g4. 8 4 r
  c,4. 8 2 % 3a
  <a a'>4 r r2
  d4. fis8~4 r
  g4. a8~4 r
  d,4. fis8~4 r % 3b
  g4. a8~4 r
  d,4. fis8~4 r
  g4. 8 c,4 r
  a'4. 8 4 r % 3c
  a4. 8 4 r
  b4. 8 2
  fis4. 8 2
  g4. 8 2 % 4a
  d4. 8 2
  fis4. 8 2
  b4. e,8~2
  a4. 8 4. 8 % 4b
  a4-.-> r r2
  d,4. fis8~4 r
  g4. a8~4 r
  d,4. fis8~4 r % 4c
  g4. a8~4 r
  d,4. fis8~4 r
  g4. a8~4 r
  b4. 8 2 % 5a
  a4. 8 2
  g4. 8 2
  a4-.-> r r2
  d,4. fis8_- ~4 r % 5b
  g4. a8_- ~4 r
  d,4. fis8_- ~4 r
  g4. a8_- ~4 r
  d,4. fis8_- ~4 r % 5c
  g4. a8_- ~4 r
  d,4. fis8_- ~4 r
  g4. a8_- ~4 r \bar "||"
  <d, d'>1~ % 6a
  q1
}

pianoLHoneB = \relative { % Morning Town Ride
  \globalB
  d2 a
  d,2 e4 fis
  g2 d % 6b
  d2 2
  g2 2
  d2 a'
  e2 2 % 6c
  a2 b4 cis
  d2 a
  d,2 e4 fis
  g2 d % 7a
  d2 2
  g2 d
  d'2 b
  a2 2 % 7b
  d2 a
  d2 a
  d,2 e4 fis
  g2 d % 7c
  d2 2
  g2 2
  d2 a'
  e2 2 % 8a
  a2 b4 cis
  d2 a
  d,2 e4 fis
  g2 d % 8b
  d2 2
  g2 d
  d'2 b
  a2 2 % 8c
  d2 a
  d2 a
  d,2 e4 fis
  g2 d % 9a
  d2 2
  g2 d
  d'2 b
  <a g'>1 <d a'>1~
  q2. r4\fermata
}

pianoLHoneC = \relative {
  \globalC
  <c g'>4-> c'8 g a g e f
  <c g'>4-> c'8 g a g e f % 9c
  <c g'>4-> c'8 g a g e f
  <g, g'>4-> q-> r2
  c4 r g r
  c4 r d e % 10a
  f4 r c r
  c4 r c r
  e4 r e r
  a,4 r a r % 10b
  f4 r f r
  g4 r g g
  c4 r c r
  e4 r e r % 10c
  f4 r c r
  c,4 r c d
  e4 r e r
  f4 r g r % 11a
  c,4 r f r
  c4 r g' g,
  c4 r c r
  f4 r f r % 11b
  g4 r g r
  c,4 r c b
  a4 r a r
  d4 r d r % 11c
  g4 r g r
  g4 r g g
  c,4 r c r
  e4 r e r % 12a
  f4 r f r
  c4 r c d
  e4 r e r
  f4 r g r % 12b
  c,4 r f r
  c4 r g' g,
  c4 r c r
  f4 r f r % 12c 
  g4 r g r
  c,4 r c b
  a4 r a r
  d4 r d r % 13a
  g4 r g r
  g4 r g g
  c,4 r c r
  e4 r e r % 13b
  f4 r f r
  c4 r c d
  e4 r e r
  f4 r f r % 13c
  e'2 f
  e2 f
  e2 f
  <c g'>2-> -- r4\fermata
}

pianoLHoneD = \relative {
%  \globalD
  <a, e' g>4 \key d \major \time 4/4
  \once\partCombineApart r8 a16 16 8. 16 4 <a e' g>
  \once\partCombineApart r8 a16 16 8. 16 4 q
  <d, d'>8 a'16 16 8 8 d d d4
  a,8 a'16 16 8 8 4 8 8 % 14b
  a,8 a'16 16 8 8 4 8 8
  d,8 a'16 16 8 8 d4 d,8 8
  g8 d'16 16 8 8 <a e'>4 a8 8
  fis8 d'16 16 8 8 r fis16 16 8 8 % 14c
  g,8 d'16 16 8 8 g,4 d'8 8
  a,8 a'16 16 8 8 4 8. 16
  <d, d'>8 a'16 16 8 8 d8 8 4
  a,8 a'16 16 8 8 4 8 8 % 15a
  a,8 a'16 16 8 8 4 8 8
  d,8 a'16 16 8 8 d4 d,8. 16
  g8 d'16 16 8 8 <g, d'>4 d'8 8 % 15b
  fis,8 d'16 16 8 8 \once\partCombineApart r fis16 16 8 8
  g,8 d'16 16 8 8 a4 e'
  d,8 a'16 16 8 8 d4 d,8. 16 % 15c
  g8 d'16 16 8 8 a4 e'8 8
  fis,8 d'16 16 8 8 \once\partCombineApart r fis16 16 8 8
  g,8 d'16 16 8 8 a4 e'8 8 % 16a
  d,8 a'16 16 8 8 d4 d,8. 16
  g8 d'16 16 8 8 a4 e'8 8
  fis,8 cis'16 16 8 8 \once\partCombineApart r fis16 16 8 8 % 16b
  g,8 d'16 16 8 8 g,4 8 8
  c2 a
  d,8 a'16 16 8 8 d4 d,8. 16 % 16c
  a8 a'16 16 8 8 4 8 8
  a,8 a'16 16 8 8 4 8 8
  d,8 a'16 16 8 8 d4 d,8 8 % 17a
  g8 d'16 16 8 8 <g, d'>4 d'8 8
  fis,8 d'16 16 8 8 \once\partCombineApart r fis16 16 8 8
  g,8 d'16 16 8 8 a4 e' % 17b
  d,8 a'16 16 8 8 d4 d,8 8
  g8 d'16 16 8 8 <g, d'>4 g8 8
  fis8 d'16 16 8 8 <b fis'>2 % 17c
  g8 d'16 16 8 8 a4 <a e'>
  \once\partCombineApart r8 a16 16 8. 16 a4 <a e' g>4
  \once\partCombineApart r8 a16 16 8. 16 4 q
  <d, a' d>2\fermata r
}

pianoLHoneE = \relative {
  \globalE
  <ees g>4 r r2
  r4 bes8 8 4 r
  <ees g>4 r r2
  r8 bes8 8 8 2 % 1b
  \repeat volta 2 {
    ees,4. g8 bes bes ees,4
    aes4. c8 ees ees aes,4
    aes4 ees'2 4 % 1c
    bes4 bes, r2
    c'4 g'2 4
    aes,4 c ees aes
    aes,4 ees'2 4 % 1d
    bes4 bes, r2
    c'4 g'2 4
    aes,4 c ees aes
    bes,4 bes' aes, aes' % 2a
    g4 g, c b
    bes2 c
    aes2 bes4 bes,
  }
  \alternative {
    {
      <ees bes'>2 <aes ees'>4 8 <ees bes'>8~ % 2a
      q4 4 r2
    }
    {
      q4 r <aes ees'>2
    }
  }
  ees4 ees' ees d
  \once
  \partCombineApart r4 g r g % 2c
  \partCombineApart aes,4 c ees aes
  bes4 bes, bes' bes,
  ees4 bes ees d
  r4 g r g % 2d
  bes,4 bes' aes, aes'
  g,2 ees'4 c
  f2 bes,
  ees4 r ees r % 3a
  aes,4 r aes r
  c4 r f, r
  bes4 bes, r2
  ees4 ees'2 4 % 3b
  g,4 d' g g,
  aes4 ees'2 4
  bes4 bes, r2
  c'4 g'2 4 % 3c
  aes,4 c ees aes
  bes,4 bes' aes, aes'
  g4 g, c b
  bes2 c % 3d
  aes2 bes4 bes,
  <ees bes>2 <aes ees'>4. <ees bes>8~
  q2 <ees' bes>4\fermata r
}

pianoLHone = {
  \keepWithTag #usetags \tag #'A {\pianoLHoneA \bar "||"}
  \keepWithTag #usetags \tag #'B {\pianoLHoneB \bar "||"}
  \keepWithTag #usetags \tag #'C {\pianoLHoneC \bar "||"}
  \keepWithTag #usetags \tag #'D {\pianoLHoneD \bar "||"}
  \keepWithTag #usetags \tag #'E {\pianoLHoneE          }
  \bar "|."
}

pianoLHtwoA = \relative {
  s1*48
}

pianoLHtwoB = \relative {
  s1*41
}

pianoLHtwoC = \relative {
  s1*50
  c1 % 13c+
  c1
  c1
  s2.
}

pianoLHtwoD = \relative {
  s4
  d,1
  d1
  s1*5
  fis2 b % 14c
  s1*7
  fis2 b % 15b+
  s2. a8 8
  s1 % 15c
  s1
  fis2 b
 s1*3
  fis2 b % 16b
  s1*7
  fis2 b % 17a++
  s1*3
  fis2 s % 17c
  s1
  d1
  d1
  s1
}

pianoLHtwoE = \relative {
  s1*4
  \repeat volta 2 {
    s1*14
  }
  \alternative {{s1*2}{s1}}
  s1
  c1 % 2c
  s1*3
  c1 % 2d
  s1*19
}

pianoLHtwo = \relative {
  \keepWithTag #usetags \tag #'A \pianoLHtwoA
  \keepWithTag #usetags \tag #'B \pianoLHtwoB
  \keepWithTag #usetags \tag #'C \pianoLHtwoC
  \keepWithTag #usetags \tag #'D \pianoLHtwoD
  \keepWithTag #usetags \tag #'E \pianoLHtwoE
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Unison melody staff
          \new Staff = melody \with {
            instrumentName        = #"Melody"
          }
          <<
            \new Voice \rehearsalTrack
            \new Voice \tempoTrack
            \new Voice \melody
            \addlyrics \wordsEone
            \addlyrics \wordsEtwo
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with
          {
            instrumentName        = #"Soprano/Alto"
            shortInstrumentName   = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice = solo \soloSop
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
            \new Voice \partCombine { \voiceOne \soprano } { \voiceTwo \alto    }
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
            \new Lyrics \with {alignAboveContext = women} \lyricsto solo \wordsSolo
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with
          {
            instrumentName        = #"Tenor/Bass"
            shortInstrumentName   = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new NullVoice = alignerT \tenor
            \new Voice \partCombine \tenor \bass
            \new NullVoice = alignerB \bass
            \addlyrics \wordsBassBelow
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto "alignerS" \words
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
        \new ChordNames = guitar \with {alignAboveContext = rh} { \chordTrack }
%        \new FretBoards \with {alignAboveContext = rh} { \chordTrack }
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
    <<
      <<
        \new ChoirStaff <<
                                % Unison melody staff
          \new Staff = melody \with {
            instrumentName        = #"Melody"
          }
          <<
            \new Voice \rehearsalTrack
            \new Voice \tempoTrack
            \new Voice \melody
            \addlyrics \wordsMelodySingle
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with
          {
            instrumentName        = #"Soprano/Alto"
            shortInstrumentName   = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice = solo \soloSop
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
            \new Voice \partCombine { \voiceOne \soprano } { \voiceTwo \alto    }
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
            \new Lyrics \with {alignAboveContext = women} \lyricsto solo \wordsSolo
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with
          {
            instrumentName        = #"Tenor/Bass"
            shortInstrumentName   = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new NullVoice = alignerT \tenor
            \new Voice \partCombine \tenor \bass
            \new NullVoice = alignerB \bass
            \addlyrics \wordsBassBelow
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto "alignerS" \words
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \unfoldRepeats \pianoRHone \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \unfoldRepeats \pianoLHone \unfoldRepeats \pianoLHtwo
          >>
        >>
        \new ChordNames = guitar \with {alignAboveContext = rh} { \chordTrack }
%        \new FretBoards \with {alignAboveContext = rh} { \chordTrack }
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Unison melody staff
          \new Staff = melody \with {
            instrumentName        = #"Melody"
          }
          <<
            \new Voice \rehearsalTrack
            \new Voice \tempoTrack
            \new Voice \melody
            \addlyrics \wordsMelodySingle
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with
          {
            instrumentName        = #"Soprano/Alto"
            shortInstrumentName   = #"SA"
            printPartCombineTexts = ##f
          }
          <<
            \new Voice \rehearsalTrack
            \new Voice \tempoTrack
            \new Voice = solo \soloSop
            \new NullVoice = alignerS \soprano
            \new NullVoice = alignerA \alto
            \new Voice \partCombine { \voiceOne \soprano } { \voiceTwo \alto    }
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS \wordsSopAbove
            \new Lyrics \with {alignAboveContext = women} \lyricsto solo \wordsSolo
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with
          {
            instrumentName        = #"Tenor/Bass"
            shortInstrumentName   = #"TB"
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
            \new NullVoice = alignerT \tenor
            \new Voice \partCombine \tenor \bass
            \new NullVoice = alignerB \bass
            \addlyrics \wordsBassBelow
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto "alignerS" \words
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \unfoldRepeats \pianoRHone \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = lh \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \unfoldRepeats \pianoLHone \unfoldRepeats \pianoLHtwo
          >>
        >>
        \new ChordNames = guitar \with {alignAboveContext = rh} { \chordTrack }
%        \new FretBoards \with {alignAboveContext = rh} { \chordTrack }
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
  \bookOutputSuffix "midi-solo"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Melody staff
          \new Staff = melody
          <<
            \new Voice = solo \unfoldRepeats \melody
            \addlyrics \wordsMidiE
          >>
                                % Solo staff
          \new Staff = solo
          <<
            \new Voice = solo \soloSop
            \addlyrics \wordsSoloMidi
          >>
                                % Soprano staff
          \new Staff =soprano
          <<
            \new Voice \tempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Dynamics \dynamicsPiano
            \new Voice \unfoldRepeats \pianoRHone
            \new Voice \unfoldRepeats \pianoRHtwo
            \new Voice
            \pianoLHone
            \new Voice \unfoldRepeats \pianoLHone
            \new Voice \unfoldRepeats \pianoLHtwo
          >>
        >>
        \new ChordNames = guitar \with {alignAboveContext = rh} { \chordTrack }
%        \new FretBoards \with {alignAboveContext = rh} { \chordTrack }
      >>
    >>
    \midi {}
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
                                % Melody staff
          \new Staff = melody
          <<
            \new Voice = solo \unfoldRepeats \melody
            \addlyrics \wordsMidiE
          >>
                                % Solo staff
          \new Staff = solo
          <<
            \new Voice = solo \soloSop
          >>
                                % Soprano staff
          \new Staff =soprano
          <<
            \new Voice \tempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Dynamics \dynamicsPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice
            \pianoLHone
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
        \new ChordNames = guitar \with {alignAboveContext = rh} { \chordTrack }
%        \new FretBoards \with {alignAboveContext = rh} { \chordTrack }
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
                                % Melody staff
          \new Staff = melody
          <<
            \new Voice = solo \unfoldRepeats \melody
            \addlyrics \wordsMidiE
          >>
                                % Solo staff
          \new Staff = solo
          <<
            \new Voice = solo \soloSop
          >>
                                % Soprano staff
          \new Staff =soprano
          <<
            \new Voice \tempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Dynamics \dynamicsPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice
            \pianoLHone
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
        \new ChordNames = guitar \with {alignAboveContext = rh} { \chordTrack }
%        \new FretBoards \with {alignAboveContext = rh} { \chordTrack }
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
                                % Melody staff
          \new Staff = melody
          <<
            \new Voice = solo \unfoldRepeats \melody
            \addlyrics \wordsMidiE
          >>
                                % Solo staff
          \new Staff = solo
          <<
            \new Voice = solo \soloSop
          >>
                                % Soprano staff
          \new Staff =soprano
          <<
            \new Voice \tempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Dynamics \dynamicsPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice
            \pianoLHone
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
        \new ChordNames = guitar \with {alignAboveContext = rh} { \chordTrack }
%        \new FretBoards \with {alignAboveContext = rh} { \chordTrack }
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
                                % Melody staff
          \new Staff = melody
          <<
            \new Voice = solo \unfoldRepeats \melody
            \addlyrics \wordsMidiE
          >>
                                % Solo staff
          \new Staff = solo
          <<
            \new Voice = solo \soloSop
          >>
                                % Soprano staff
          \new Staff =soprano
          <<
            \new Voice \tempoTrack
            \new Voice \soprano
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Dynamics \dynamicsPiano
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Voice
            \pianoLHone
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
        \new ChordNames = guitar \with {alignAboveContext = rh} { \chordTrack }
%        \new FretBoards \with {alignAboveContext = rh} { \chordTrack }
      >>
    >>
    \midi {}
  }
}
