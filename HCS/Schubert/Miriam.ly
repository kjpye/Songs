\version "2.25.24"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Song of Miriam"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Franz Schubert. (März 1828)"
%  arranger    = "arranger"
  opus        = "Op. 136."

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
}

TempoTrack = {
  \tempo "Allegro giusto" 4=132
%  \set Score.tempoHideNote = ##t
  s1*77 |
  \tempo "Allegretto." 8=88 % 7c
  s2.*88
  \tempo "Allegro agitato." 4=132 % 19a
  s1*64
  \tempo "Allegro moderato" 4=112 % 29a
  s1*40
  \tempo "Andentino." 4=76 % 33a
  s2.*99
  \tempo "Tempo 1mo." 4=132 % 39a
  s1*118
}

RehearsalTrackISMLP = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box \italic "2a" } s1*6
  \textMark \markup { \box \italic "2b" } s1*6
  \textMark \markup { \box \italic "2c" } s1*7
  \textMark \markup { \box \italic "3a" } s1*7
  \textMark \markup { \box \italic "3b" } s1*7
  \textMark \markup { \box \italic "3c" } s1*5
  \textMark \markup { \box \italic "4a" } s1*6
  \textMark \markup { \box \italic "4b" } s1*6
  \textMark \markup { \box \italic "4c" } s1*6
  \textMark \markup { \box \italic "5a" } s1*7
  \textMark \markup { \box \italic "5b" } s1*7
  \textMark \markup { \box \italic "5c" } s1*7
  \textMark \markup { \box \italic "6a" } s2.*5
  \textMark \markup { \box \italic "6b" } s2.*5
  \textMark \markup { \box \italic "6c" } s2.*5
  \textMark \markup { \box \italic "6d" } s2.*4
  \textMark \markup { \box \italic "6e" } s2.*5
  \textMark \markup { \box \italic "7a" } s2.*5
  \textMark \markup { \box \italic "7b" } s2.*5
  \textMark \markup { \box \italic "7c" } s2.*4
  \textMark \markup { \box \italic "8a" } s2.*5
  \textMark \markup { \box \italic "8b" } s2.*5
  \textMark \markup { \box \italic "8c" } s2.*5
  \textMark \markup { \box \italic "9a" } s2.*2
  \textMark \markup { \box \italic "9b" } s2.*2
  \textMark \markup { \box \italic "9c" } s2.*2
  \textMark \markup { \box \italic "10a" } s2.*2
  \textMark \markup { \box \italic "10b" } s2.*3
  \textMark \markup { \box \italic "10c" } s2.*4
  \textMark \markup { \box \italic "11a" } s2.*6
  \textMark \markup { \box \italic "11b" } s2.*5
  \textMark \markup { \box \italic "11c" } s2.*4
  \textMark \markup { \box \italic "12a" } s2.*5
  \textMark \markup { \box \italic "12b" } s1*5
  \textMark \markup { \box \italic "12c" } s1*4
  \textMark \markup { \box \italic "13a" } s1*5
  \textMark \markup { \box \italic "13b" } s1*4
  \textMark \markup { \box \italic "13c" } s1*5
  \textMark \markup { \box \italic "14a" } s1*4
  \textMark \markup { \box \italic "14b" } s1*5
  \textMark \markup { \box \italic "14c" } s1*6
  \textMark \markup { \box \italic "15a" } s1*4
  \textMark \markup { \box \italic "15b" } s1*4
  \textMark \markup { \box \italic "15c" } s1*5
  \textMark \markup { \box \italic "16a" } s1*4
  \textMark \markup { \box \italic "16b" } s1*4
  \textMark \markup { \box \italic "16c" } s1*5
  \textMark \markup { \box \italic "17a" } s1*4
  \textMark \markup { \box \italic "17b" } s1*4
  \textMark \markup { \box \italic "17c" } s1*4
  \textMark \markup { \box \italic "18a" } s1*4
  \textMark \markup { \box \italic "18b" } s1*3
  \textMark \markup { \box \italic "18c" } s1*3
  \textMark \markup { \box \italic "19a" } s1*3
  \textMark \markup { \box \italic "19b" } s1*4
  \textMark \markup { \box \italic "19c" } s1*5
  \textMark \markup { \box \italic "20a" } s1*6
  \textMark \markup { \box \italic "20b" } s2.*8
  \textMark \markup { \box \italic "20c" } s2.*6
  \textMark \markup { \box \italic "20d" } s2.*8
  \textMark \markup { \box \italic "21a" } s2.*7
  \textMark \markup { \box \italic "21b" } s2.*8
  \textMark \markup { \box \italic "21c" } s2.*8
  \textMark \markup { \box \italic "21d" } s2.*7
  \textMark \markup { \box \italic "22a" } s2.*6
  \textMark \markup { \box \italic "22b" } s2.*9
  \textMark \markup { \box \italic "22c" } s2.*8
  \textMark \markup { \box \italic "23a" } s2.*7
  \textMark \markup { \box \italic "23b" } s2.*8
  \textMark \markup { \box \italic "23c" } s2.*9
  \textMark \markup { \box \italic "24a" } s1*8
  \textMark \markup { \box \italic "24b" } s1*7
  \textMark \markup { \box \italic "24c" } s1*7
  \textMark \markup { \box \italic "25a" } s1*8
  \textMark \markup { \box \italic "25b" } s1*7
  \textMark \markup { \box \italic "25c" } s1*6
  \textMark \markup { \box \italic "26a" } s1*6
  \textMark \markup { \box \italic "26b" } s1*6
  \textMark \markup { \box \italic "26c" } s1*6
  \textMark \markup { \box \italic "27a" } s1*6
  \textMark \markup { \box \italic "27b" } s1*6
  \textMark \markup { \box \italic "27c" } s1*7
  \textMark \markup { \box \italic "28a" } s1*7
  \textMark \markup { \box \italic "28b" } s1*6
  \textMark \markup { \box \italic "28c" } s1*6
  \textMark \markup { \box \italic "29a" } s1*5
  \textMark \markup { \box \italic "29b" } s1*7
  \textMark \markup { \box \italic "29c" } s1*7
}


RehearsalTrackHCS = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box \bold "1a" } s1*5
  \textMark \markup { \box \bold "1b" } s1*5
  \textMark \markup { \box \bold "1c" } s1*4
  \textMark \markup { \box \bold "1d" } s1*4
  \textMark \markup { \box \bold "2a" } s1*4
  \textMark \markup { \box \bold "2b" } s1*4
  \textMark \markup { \box \bold "2c" } s1
  \mark \markup\circle "A" s1*3 
  \textMark \markup { \box \bold "3a" } s1*4
  \textMark \markup { \box \bold "3b" } s1*4
  \textMark \markup { \box \bold "3c" } s1*4
  \textMark \markup { \box \bold "4a" } s1*4
  \textMark \markup { \box \bold "4b" } s1*4
  \textMark \markup { \box \bold "5a" } s1*4
  \textMark \markup { \box \bold "5b" } s1*4
  \textMark \markup { \box \bold "6a" } s1*4
  \textMark \markup { \box \bold "6b" } s1*5
  \textMark \markup { \box \bold "7a" } s1*4
  \textMark \markup { \box \bold "7b" } s1*6
  \textMark \markup { \box \bold "7c" } s2.*4
  \textMark \markup { \box \bold "7d" } s2.*3
  \textMark \markup { \box \bold "8a" } s2.*3
  \textMark \markup { \box \bold "8b" } s2.*3
  \textMark \markup { \box \bold "8c" } s2.*3
  \textMark \markup { \box \bold "8d" } s2.*3
  \textMark \markup { \box \bold "9a" } s2.*4
  \textMark \markup { \box \bold "9b" } s2.*4
  \textMark \markup { \box \bold "10a" } s2.*3
  \textMark \markup { \box \bold "10b" } s2.*3
  \textMark \markup { \box \bold "11a" } s2.*3
  \textMark \markup { \box \bold "11b" } s2.*3
  \textMark \markup { \box \bold "12a" } s2.*4
  \textMark \markup { \box \bold "12b" } s2.
  \mark \markup \circle B s2.*3
  \textMark \markup { \box \bold "13a" } s2.*4
  \textMark \markup { \box \bold "13b" } s2.*3
  \textMark \markup { \box \bold "14a" } s2.*2
  \textMark \markup { \box \bold "14b" } s2.*2
  \textMark \markup { \box \bold "14c" } s2.*2
  \mark \markup\circle C
  \textMark \markup { \box \bold "15a" } s2.*2
  \textMark \markup { \box \bold "15b" } s2.*3
  \textMark \markup { \box \bold "15c" } s2.*4
  \textMark \markup { \box \bold "16a" } s2.*4
  \textMark \markup { \box \bold "16b" } s2.*3
  \textMark \markup { \box \bold "17a" } s2.*3
  \textMark \markup { \box \bold "17b" } s2.*3
  \textMark \markup { \box \bold "18a" } s2.*3
  \textMark \markup { \box \bold "18b" } s2.*3
  \textMark \markup { \box \bold "19a" } s1*4
  \textMark \markup { \box \bold "19b" } s1*3
  \textMark \markup { \box \bold "20a" } s1*3
  \textMark \markup { \box \bold "20b" } s1*3
  \textMark \markup { \box \bold "21a" } s1*3
  \textMark \markup { \box \bold "21b" } s1*3
  \textMark \markup { \box \bold "22a" } s1*4
  \textMark \markup { \box \bold "22b" } s1*3
  \textMark \markup { \box \bold "23a" } s1*3
  \textMark \markup { \box \bold "23b" } s1*3
  \textMark \markup { \box \bold "24a" } s1*3
  \textMark \markup { \box \bold "24b" } s1*4
  \textMark \markup { \box \bold "25a" } s1*3
  \textMark \markup { \box \bold "25b" } s1*3
  \textMark \markup { \box \bold "26a" } s1*3
  \textMark \markup { \box \bold "26b" } s1*3
  \mark \markup\circle D s1
  \textMark \markup { \box \bold "27a" } s1*3
  \textMark \markup { \box \bold "27b" } s1*3
  \textMark \markup { \box \bold "28a" } s1*3
  \textMark \markup { \box \bold "28b" } s1*3
  \mark \markup\circle E
  \textMark \markup { \box \bold "29a" } s1*3
  \textMark \markup { \box \bold "29b" } s1*3
  \textMark \markup { \box \bold "29c" } s1*3
  \textMark \markup { \box \bold "30a" } s1*3
  \textMark \markup { \box \bold "30b" } s1*3
  \textMark \markup { \box \bold "30c" } s1*3
  \textMark \markup { \box \bold "31a" } s1*3
  \textMark \markup { \box \bold "31b" } s1*3
  \textMark \markup { \box \bold "31c" } s1*3
  \textMark \markup { \box \bold "32a" } s1*4
  \textMark \markup { \box \bold "32b" } s1*4
  \textMark \markup { \box \bold "32c" } s1*5
  \textMark \markup { \box \bold "33a" } s2.*5
  \textMark \markup { \box \bold "33b" } s2.*5
  \textMark \markup { \box \bold "33c" } s2.*4
  \textMark \markup { \box \bold "33d" } s2.*4
  \textMark \markup { \box \bold "33e" } s2.*4
  \textMark \markup { \box \bold "34a" } s2.*5
  \textMark \markup { \box \bold "34b" } s2.*5
  \textMark \markup { \box \bold "34c" } s2.*4
  \textMark \markup { \box \bold "34d" } s2.*5
  \textMark \markup { \box \bold "34e" } s2.*4
  \textMark \markup { \box \bold "35a" } s2.*4
  \textMark \markup { \box \bold "35b" } s2.*3
  \textMark \markup { \box \bold "35c" } s2.*4
  \textMark \markup { \box \bold "36a" } s2.*5
  \textMark \markup { \box \bold "36b" } s2.
  \mark \markup\circle F s2.*4
  \textMark \markup { \box \bold "36c" } s2.*5
  \textMark \markup { \box \bold "37a" } s2.*4
  \textMark \markup { \box \bold "37b" } s2.*5
  \textMark \markup { \box \bold "37c" } s2.*4
  \textMark \markup { \box \bold "38a" } s2.*5
  \textMark \markup { \box \bold "38b" } s2.*4
  \textMark \markup { \box \bold "38c" } s2.*6
  \textMark \markup { \box \bold "39a" } s1*5
  \textMark \markup { \box \bold "39b" } s1*4
  \mark \markup\circle G
  \textMark \markup { \box \bold "40a" } s1*4
  \textMark \markup { \box \bold "40b" } s1*4
  \textMark \markup { \box \bold "41a" } s1*4
  \textMark \markup { \box \bold "41b" } s1*4
  \textMark \markup { \box \bold "42a" } s1*4
  \textMark \markup { \box \bold "42b" } s1*2
  \mark \markup\circle H s1*3
  \textMark \markup { \box \bold "42c" } s1*4
  \textMark \markup { \box \bold "43a" } s1*3
  \textMark \markup { \box \bold "43b" } s1*3
  \textMark \markup { \box \bold "43c" } s1*3
  \textMark \markup { \box \bold "44a" } s1*3
  \textMark \markup { \box \bold "44b" } s1*3
  \textMark \markup { \box \bold "44c" } s1*2
  \mark \markup\circle I s1
  \textMark \markup { \box \bold "45a" } s1*3
  \textMark \markup { \box \bold "45b" } s1*3
  \textMark \markup { \box \bold "45c" } s1*3
  \textMark \markup { \box \bold "46a" } s1*4
  \textMark \markup { \box \bold "46b" } s1*3
  \textMark \markup { \box \bold "46c" } s1
  \mark \markup\circle J s1*2
  \textMark \markup { \box \bold "47a" } s1*4
  \textMark \markup { \box \bold "47b" } s1*3
  \mark \markup\circle K
  \textMark \markup { \box \bold "47c" } s1*4
  \textMark \markup { \box \bold "48a" } s1*4
  \textMark \markup { \box \bold "48b" } s1*4
  \textMark \markup { \box \bold "48c" } s1*4
  \textMark \markup { \box \bold "49a" } s1*3
  \textMark \markup { \box \bold "49b" } s1
  \mark \markup\circle L s1*3
  \textMark \markup { \box \bold "49c" } s1*4
  \textMark \markup { \box \bold "50a" } s1*4
  \textMark \markup { \box \bold "50b" } s1*5
}

RehearsalTrack = \RehearsalTrackHCS

dynamicsSolo = {
  \override DynamicTextSpanner.style = #'none
  s1*5 s2 s\f | s1*12 |
  s1*12 | % 2
  s1*12 |
  s1*8 | % 4
  s1*8 | % 5
  s1*9 | % 6
  s1*10 | s2.*7 |
  s2.*12 | % 8
  s2.*8 |
  s2.*6 | % 10
  s2.*6 |
  s2.*49 | % 12-18
  s1*3 | s2 s\mp | s1*3 | % 19
  s1*4 | s2 s\cresc | s1 |
  s2 s\f | s1*5 | % 21
  s1*33 | % 22-26
  s2.. s8\p | s1*4 | s1\cresc | % 27
  s1*3 | s1\f | s2.. s8\ff | s1 |
  s1*40 | % 29-32
  s2.*99 | % 33-38
  s1*17 | % 39-40
  s1*3 s2 s\fz | s1*4 | % 41
  s1*93 |
}

solo = \relative {
  R1*5 | r2 c''8(d) e(f) |
  e4 c c8(d) e(f) | e4 c c8(b) c(d) | e4 4 d c | b2 r | r c8(d) e(f) | e4 c e8(d) e(f) |
  g4 4 f e | d2 4. 8 | 4 4 e f8(e) | d4 4 r2 | R1 | r2 f4 e | dis4. 8 e4 4 |
  e4 dis r2 | r g4.-> 8 | 4 f8(e) f4 d | c2 r | R1*3 |
  R1*4 |
  R1*12 | % 3
  R1*6 | r2 c8(d) e(f) | e4 c c8(d) e(f) |
  e4 c4 8(b) c(d) | e4 e d c | b2 r | R1 | % 5a
  R1*2 | r2 d4. 8 | 4 4 e f8(e) |
  d4 d r2 | R1 | r2 f4 e | dis4. 8 e4 4 | % 6a
  e4 dis r2 | r g4.-> 8 | 4 f8(e) f4 d | c2 r | R1 |
  R1*10 | \section \key f \major \time 6/8 | R2.*4 |
  a8(g) f f(g) a | bes8(c16 b) a(g) a8(g) f | R2. | % 7d
  c'8(a) d c(a16 b) c(d) | c8(a) f' f(e) r | R2. | % 8a
  d8(e) f e(d16 c) d(e) | a,8(d) cis  f16(e) d8 r | r4 r8 r4 a16(bes) |
  a8(d) cis f16(e) d8 r | c(bes) a d4 8 | 8(ees16 d) ees(f) g4. |
  r4 r8 g,4 8 | a4 b8 c4 d16(e) | f4 r8 r4 r8 |
  R2.*6 | d8(e) f e(d16 cis) d(e) | a,8(d) cis f16(e) d8 r | % 9
  R2.*2 | c8(bes) a d4 8 | % 10a
  d8(ees16 d) ees(f) g4 r8 | R2.*2 |
  r8 f-. b,-. c-. r r | r f-. b,-. c-. r r | r d d f4.~ | % 11a
  f4 8 e4 f8 | g4. g | f4 r8 r4 r8 |
  R2.*2 | f8(g16 f) e(d) a4 8 | bes8(c16 bes) a(g) d'8 d, r | % 12a
  a'16. 32 cis8 e f r e | d4. r4 r8 | R2.*2 |
  R2.*7 | % 13
  R2.*6 |
  R2.*9 | % 15
  R2.*2 | d8(e) f e(d16 cis) d(e) | a,8(d) cis f16(e) d8 r | % 16a
  R2.*2 | c8(bes) a d4 8 |
  d8(ees16 d) e(f) g4 r8 | R2.*2 | % 17a
  r8 g b, c4 r8 | r16 d f8 b, c4 r8 | r d d f4.~ |
  f4. e4 f8 | g4. c | f, r4 r8 | % 18a
  R2.*3 \section \key ees \major \time 4/4 |
  R1*3 r2 g,4. 8 | % 19a
  g4 f ees d | ees c c' bes | aes8(g) f(ees) d4 fis |
  g2 r | R1*2 | % 20a
  R1 | r2 g4 bes | aes f r2 |
  r2 a4 c | b g r2 | r c4 c | % 21a
  des4 4 4 4 | 2 r2 | R1 |
  R1*7 | % 22
  R1*6 |
  R1*6 | r2 c4 c | % 24
  des4 4 4 4 | 4 bes r2 | R1 | % 25a
  r4 ees4 4 4 | fes4 4 4 4 | 2 r |
  R1*2 | r2 ges4 4 | % 26a
  ges2 r | R1*2 \section \key c \major | R1 |
  r2 r4 r8 fis, | bes2 r | r r4 bes | % 27a
  ais4 cis r2 | R1 | cis4 ais r2 |
  R1 | cis4 ais r2 | R1 | % 28a
  d4 bes r2 | f'2 r4 r8 d | g1 \section \key ees \major |
  R1*40 \section \key g \major \time 3/4 | % 29-32
  R2.*5 | % 33a
  R2. | r4 g,4. e8 | b'2 r4 | r4 e4. fis8 | dis2 r4 |
  r4 r8. b16 e8. d16 | c8.(b16) a8. 16 d8. c16 | b8.(a16) g4 r8. b16 | c8. b16 a8.(g16) fis8.(e16) |
  b2 r4 | R2.*2 | c2 4 |
  c2 4 cis2.~ | 4 r r | dis2 e4 |
  g2 fis4 | e2 r4 | R2.*3 | % 34a
  R2. | r4 e g | e(b') b | b(a8 g) fis(e) | dis4 fis r |
  b4(c) c | d8(c b a) g(fis) | e2 fis4 g8(a) b4 r |
  b2 4 | d b r | eis,2 fis4 | g2 r4 | b,2 8(cis) |
  d2 cis4 | fis8. g16 fis4 ais, | b2 r4 | R2. |
  R2.*54 \section \key c \major \time 4/4 | % 35-38
  R1*5 | % 39a
  r2 c8(d) e(f) | e4 c4 8(d) e(f) | e4 c c8(b) c(d) | e4 e d c |
  b2 r | R1*3 | % 40a
  r2 d4. 8 | 4 4 e f8(e) | d4 d r2 | R1 |
  r2 f4 e | dis4. 8 e4 e | e dis r2 | r g4. 8 | % 41a
  g4 f8(e) f4 d | c2 r | R1*2 |
  R1*93 | % 42-50
}

wordsSolo = \lyricmode {
  Strike your cym -- bals, He -- brew mai -- dens,
  Mi -- riam bids raise up this song;
  He -- brew mai -- dens,
  Mi -- riam bids raise up this song;
  Migh -- ty is the Lord for ev -- er,
  migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day.
                                % 3a
  Strike __ your __ cym -- bals, He -- brew __ mai -- dens,
  Mi -- riam bids raise up this song;
  Migh -- ty is the Lord for ev -- er,
  Migh -- ty is ther Lord for ev -- er,
  Migh -- tier hail we Him to -- day.

  Out __ of E -- gypt, as __ a shep -- herd,
  Guards his flock __ and shows the way,
  Thou hast led __ Thy cho -- sen peo -- ple,
  Thy cho -- sen peo -- ple,
  Fire by night and cloud __ by day,
  Fire by night and cloud by day,
  Shep -- herd! Thou hast led us on -- ward,
  Fire by night and cloud __ by day,

  Strong Thine arm,
  strong thine arm,
  strong Thine arm, __
  and keen Thine eye, Thine eye;
                                % 12a
  At __ Thy word the sea __ o -- be -- dient
  Parts and leaves a path -- way dry
                                % 16a
  Thro’ the seas we pass on dry land,
  Trust -- ing in Thy voice __ which calls,
                                % 17b
  trust -- ing Thee, the voice which calls,
  trust -- ing Thee, __ Thee, the voice which calls.

                                % 19a
  As we pass the sky grows dark -- er,
  Voi -- ces shout “We will pur -- sue.”
                                % 20b
  Ar -- mour gleam -- ing,
  trum -- pets clang -- ing,
  Phar -- aoh’s host bursts on the view,
                                % 24b
  Voi -- ces shout still press -- ing on -- ward,
  We will pur -- sue and o -- ver -- take,
  ov -- er -- take,
                                % 27a
  But hark! what sigh -- ings,
  wail -- ings
  moan -- ings!
  curs -- ings!
  Hark! the storm!

                                % 33b
  E -- gypt’s King! E -- gypt’s King!
  As lead, as lead sinks he, sinks he, down, down
  Be -- neath the migh -- ty flood;
  Earth hath swal -- low’d all, __
  earth hath swal -- low’d all!
                                % 34b
  God no more her tide __ re -- string -- ing,
  All __ her shores __ the sea re -- gain -- ing.
  Ne’er re -- stor -- eth king or slave,
  Her sad waste at once both shroud and grave.

                                % 39b
  Strike your cym -- bals, He -- brew mai -- dens,
  Mi -- riam bids raise up this song;
  Migh -- ty is the Lord for ev -- er,
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day.
}

wordsSoloMidi = \lyricmode {
  "Strike " "your " cym "bals, " He "brew " mai "dens, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
  "\nHe" "brew " mai "dens, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day. "
                                % 3a
  "\nStrike "  "your "  cym "bals, " He "brew "  mai "dens, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "ty " "is " "ther " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day. "

  "\nOut "  "of " E "gypt, " "as "  "a " shep "herd, "
  "\nGuards " "his " "flock "  "and " "shows " "the " "way, "
  "\nThou " "hast " "led "  "Thy " cho "sen " peo "ple, "
  "\nThy " cho "sen " peo "ple, "
  "\nFire " "by " "night " "and " "cloud "  "by " "day, "
  "\nFire " "by " "night " "and " "cloud " "by " "day, "
  "\nShep" "herd! " "Thou " "hast " "led " "us " on "ward, "
  "\nFire " "by " "night " "and " "cloud "  "by " "day, "

  "\nStrong " "Thine " "arm, "
  "\nstrong " "thine " "arm, "
  "\nstrong " "Thine " "arm, " 
  "\nand " "keen " "Thine " "eye, " "Thine " "eye; "
                                % 12a
  "\nAt "  "Thy " "word " "the " "sea "  o be "dient "
  "\nParts " "and " "leaves " "a " path "way " "dry "
                                % 16a
  "\nThro’ " "the " "seas " "we " "pass " "on " "dry " "land, "
  "\nTrust" "ing " "in " "Thy " "voice "  "which " "calls, "
                                % 17b
  "\ntrust" "ing " "Thee, " "the " "voice " "which " "calls, "
  "\ntrust" "ing " "Thee, "  "Thee, " "the " "voice " "which " "calls. "

                                % 19a
  "\nAs " "we " "pass " "the " "sky " "grows " dark "er, "
  "\nVoi" "ces " "shout " "“We " "will " pur "sue.” "
                                % 20b
  "\nAr" "mour " gleam "ing, "
  "\ntrum" "pets " clang "ing, "
  "\nPhar" "aoh’s " "host " "bursts " "on " "the " "view, "
                                % 24b
  "\nVoi" "ces " "shout " "still " press "ing " on "ward, "
  "\nWe " "will " pur "sue " "and " o ver "take, "
  "\nov" er "take, "
                                % 27a
  "\nBut " "hark! " "what " sigh "ings, "
  "\nwail" "ings "
  "\nmoan" "ings! "
  "\ncurs" "ings! "
  "\nHark! " "the " "storm! "

                                % 33b
  "\nE" "gypt’s " "King! " E "gypt’s " "King! "
  "\nAs " "lead, " "as " "lead " "sinks " "he, " "sinks " "he, " "down, " "down "
  "\nBe" "neath " "the " migh "ty " "flood; "
  "\nEarth " "hath " swal "low’d " "all, " 
  "\nearth " "hath " swal "low’d " "all! "
                                % 34b
  "\nGod " "no " "more " "her " "tide "  re string "ing, "
  "\nAll "  "her " "shores "  "the " "sea " re gain "ing. "
  "\nNe’er " re stor "eth " "king " "or " "slave, "
  "\nHer " "sad " "waste " "at " "once " "both " "shroud " "and " "grave. "

                                % 39b
  "\nStrike " "your " cym "bals, " He "brew " mai "dens, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day. "
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s1*22 | s2 s\f | s1*2 | s2 s\fz | s1*4 |
  s1*3 | s2 s\f | s1*8 | % 3
  s1*8 |
  s1*2 | s2 s\f | s1*5 | % 5
  s1*7 | s2 s\f s1 |
  s1 | s2 s4.\fz\> s8\! | s1*8 | s2.*7 | % 7
  s2.*12 |
  s2.\p | s2.*7 | % 9
  s2.\p | s2.*2 | s4. s\f | s2.*2 |
  s2 s4\f | s2. | s2 s4\ff | s2.*3 | % 11
  s2.*5 | s4. s\f | s2.*2 |
  s4.\p s\f | s2.*6 | % 13
  s2.\p | s2.*3 | s4.\< s16\> s16\! s4 | s2. |
  s2.\p | s2.*2 | s2.\< | s4.\! s\> | s2.\p | s2.*3 | % 15
  s2.*7 |
  s4. s\f | s2.*5 | % 17
  s2.*6 |
  s1*7 | % 19
  s2 s\p | s1*4 | s2 s\cresc |
  s1 | s2 s\f | s1*2 | s2 s\ff | s1 | % 21
  s1*5 | s2 s\ff | s1 |
  s1*6 | % 23
  s1*7 |
  s1 | s2 s\ff | s1*4 | % 25
  s1*7 |
  s1 | s2.. s8\pp | s1*4 | % 27
  s1\cresc | s | s\mf | s2 s\f | s1 | s2.. s8\ff |
  s1*2 | s2 s\omit\ff | s1*6 | % 29
  s1*9 |
  s1*8 | s2. s4\p | % 31
  s2. s4\cresc | s2. s4\f | s1*2 | s2 s\ff | s1*8 |
  s2.*22 | % 33
  s2.*23 |
  s4 s2\ff | s2.*10 | % 35
  s2.\p | s | s\fz | s\dim | s\p | s\fz | s2.*6 | s4 s2\pp | s2.*2 |
  s2.*13 | % 37
  s2.*15 |
  s1*9 | % 39
  s2 s\f | s1*5 | s2 s\f | s1 |
  s1*5 | s2 s\f | s1*2 | % 41
  s2 s\fz | s1*12 |
  s1*4 | s1\f | s1*4 | % 43
  s1*9 |
  s1*9 | % 45
  s1*9 | s1\ff |
  s1*11 | % 47
  s1*2 | s1\f | s1*3 | s1\ff | s1*5 |
  s1*11 | % 49
  s1*9 |
}

soprano = \relative {
  \global
  R1*22 | r2 f''4 e | dis4. 8 e4 4 | e dis r2 | r g4.-> 8 |
  g4 f8(e) f4 d | c2 r | R1*2 |
  R1*3 | r2 c8->(d) e(f) | % 3a
  e4 4 4 4 | 4 4 r2 | g,8(a) b(c) b4 g | 8(a) b(c) b4 8. 16 |
  b8(cis) dis(e) 4 4 | fis2 b,8(cis) d(e) | d4 b4 8(cis) d(e) | d4 b r2 |
  fis'4. 8 4 4 | 4 4 r2 | a2 r | a f4. 8 | % 4a
  g4 f8(e) f4 e | d2 r | R1*2 |
  R1*2 | r2 c8(d) e(f) | e4 c4 8(d) e(f) | % 5a
  e4 c4 8(b) c(d) | e4 e d c | b2 r | R1 |
  r2 d4. 8 | c4 c d c | c c r2 | R1 | % 6a
  R1*3 | r2 f4 e | dis4. 8 e4 4 |
  e4 dis r2 | r g4. 8 | 4 f8(e) f4 d | c2 r | % 7a
  R1*6 \section \key f \major \time 6/8 | R2.*7 |
  R2.*12 |
  a8(g) f f(g) a | bes8(c16 bes) a(g) a8(g) f | R2. | c'8(a) d c(a16 bes) c(d) | % 9a
  c8(a) f' f(e) r | R2.*3 |
  d8(e) f e(d16 cis) d(e) | a,8(d) cis f16(e) d8 r | R2. | % 10a
  r4 r8 bes(aes) g | c4 8 8(des16 c) des(ees) | f4. r4 r8 |
  r4 r8 r f,-. c'-. | d-. r r r f,-. c'-. | d-. r r r d d | % 11a
  d4 8 e4 f8 | 4. e | f4 r8 r4 r8 |
  R2.*4 | % 12a
  R2. | r4 r8 d4 8 | 4 8 4 8 | 8 8 r r4 r8 |
  a16. 32 cis8 e f4 e8 | f4. 4 8 | 4 8 4 8 | 4 r8 r4 r8 | % 13a
  R2.*3 |
  bes,16 16 aes aes g g f f r8 r | ges16 ges f f ees ees d8 r r | % 14a
  f16 f ees ees des des c8 r r | f16 f e e f f g g r8 r |
  aes16 aes g g aes aes bes4 r8 | ges16 16 16 16 16 16 4 8 |
  bes16 16 16 16 16 16 4. | 16 16 16 16 16 16 4 8 | % 15a
  bes16 16 16 16 16 16 4.~ | 2.~ | 2. |
  a8(g) f f(g) a | bes(c16 bes) a(g) a8(g) f | R2. | c'8(a) d c(a16 bes) c(d) |
  c8(a) f' f(e) r | R2.*3 | % 16a
  d8(e) f e(d16 cis) d(e) | a,8(d) cis f16(e) d8 r | R2. |
  r4 r8 bes(aes) g | c4 8 8(des16 c) d(ees) | f4. r4 r8 | % 17a
  r4 r8 r f, c' | d4 r8 r16 f, f8 c' | d4 r8 r d d |
  d4. e4 f8 | 4. e | f r4 r8 | % 18a
  R2.*3 \section \key ees \major \time 4/4 |
  R1*7 | % 19
  r2 g,4 g | g f ees d | ees c c' bes | % 20a
  aes8(g) f(ees) d4 fis | g2 r | r g4 bes |
  aes4 f r2 | r a4 c | b g r2 | % 21a
  R1 | r2 ees'4 4 | 4 c c bes |
  aes2 r | R1*3 | % 22a
  R1 | r2 f'4 f | f ees des c |
  b4 d r2 | r g,4 g  | g r r2 | % 23a
  r4 r8 c d4 d | d r r2 | r g4 f |
  ees8(d) c(bes) a4 cis | d2 g4 b, | c c c b | % 24a
  c2 r | R1*3 |
  R1 | r2 ees4 4 | 4 c c bes | % 25a
  c4 c r2 | R1 | r2 ges'4 4 |
  ges4 ees ees des | ces2 des4 4 | ees2 r | % 26a
  r2 ees4 des | ces2 r | R1 \section \key c \major | R1 |
  R1 | r2 r4 r8 bes | d2 r | % 27a
  r2 r4 ais | ais fis r2 | R1 |
  ais4 4 r2 | R1 | ais4 4 r2 | % 28a
  r2 bes4 4 | r2 d2-> | r2 r4 r8 d \section \key ees \major |
  ees2. r4 | R1 | R | % 29a
  R1 | r2 d4 d | f d d g |
  ees4 c r2 | g'4 ees bes c | ees2 d |
  ees2 r | r d4 f | aes f d f | % 30a
  ees4 4 r2 | r r4 f8 f | aes4 f d f |
  ees4 ges r2 | fis4 cis cis d | fis4. 8 eis4. 8 |
  fis2 r | r r8 cis d4-> ~ | 4 8 8 eis8 8 8 8 | % 31a
  fis8 8 r4 fis4.-> 8 | g4 4 r2 | r r8 d ees4-> ~ |
  ees4 8 8 fis8 8 8 8 | g g r4 g4-> 8 8 | aes2 r4 a,8. 16 |
  bes4 4 r8 b b b | c2 r4 cis8. 16 | d4. 8 4 8 8 | g,2 r | % 32a
  r2 g'4.-> 8 | aes2. 4 | g1 | 2 fis |
  g1 | R1*3 | R1\fermata \section \key g \major \time 3/4 |
  R2.*22 | % 33
  R2.*23 |
  r4 g,4. e8 | b'2 r4 | r e4. f8 | dis2 r4 | % 35a
  r4 r8. b16 e8. d16 | c8.(b16) a8. 16 d8. c16 | b8.(a16) g4 r8. b16 |
  c8. b16 a8.(g16) fis8.(e16) | b2 r4 | R2.*2 |
  c2 4 | 2 4 | cis2.~ | 2. | dis2 e4 | % 36a
  g2 fis4 | e2 r4 | R2.*3 |
  R2.*2 | r4 e g | e(b') b | b(a8 g) fis(e) |
  dis4 fis r | b(c) c | d8(c b a) g(fis) | e2 fis4 | % 37a
  g8(a) b4 r | b2 4 | d b r | eis,2 fis4 | g2 r4 |
  b,2 8(cis) | d2 cis4 | fis8. g16 fis4 ais, | b2 r4 |
  r4 b'4. a8 | g(fis) e4 r | r g4. fis8 | 4 e r | r ais b | % 38a
  c2 r4 | e,2 8(fis) | g2 fis4 | b8. c16 b4 dis, |
  e2 r4 | R2.*5 \section \key c \major \time 4/4 |
  R1*9 | % 39
  r2 c'8(d) e(f) | e4 c c8(d) e(f) | e4 c c8(b) c(d) | e4 g f e | % 40a
  d2 r | R1 | r2 d4. 8 | c4 c d c |
  c4 c r2 | R1*3 | % 41a
  R1 | r2 f4 e | dis4. 8 e4 e | e dis r2 |
  r2 g4. 8 | 4 f8(e) f4 d | c2 r | R1 | % 42a
  R1*5 |
  R1*4 |
  R1*3 | % 43a
  R1 | c4 b8(a) g4. 8 | e'(d) c(b) a4 a |
  fis'4 4 4 e8(fis) | g4 4 2 | 8(f) e(d) c b a4 |
  R1 | g'4 e8(d) c4. 8 | a'8(g) f(e) d4 d | % 44a
  R1 | e4 e e d8(e) | fis4 4 4 e8(fis) |
  g2 r | r d4 b8(a) | g4. 8 e'(d) c(b) |
  a4 a fis' e8(fis) | g4 4 2 | R1 | % 45a
  R1 | r4 e e fis8(e) | dis2 b4 g8(fis) |
  e4. 8 c'(b) a(g) | fis4 4 dis' b8(a) | g4. 8 e'(d) c(b) |
  a4 fis' g fis8(e) | dis4 e e(dis) | e d c b | c2 4 a8(g) | % 46a
  f4. 8 d'(c) bes(a) | g4 g e' c8(bes) | a4. 8 f'8(e) d(c) |
  bes4 g' aes(g8 f) | e2 r | e4-> e e d8(e) |
  f4 f f r | fis-> fis fis e8(fis) | g4 g f e | d r c-> d8(c) | % 47a
  b4 r c-> d8(c) | b4 r8 d fis4.-> 8 | g4 r8 g fis4.-> 8 |
  g2 r | R1*3 |
  R1*2 | c,4-> a8(g) f4. 8 | d'8(c) b(a) g4 g | % 48a
  e'4 e e d8(e) | f4 f f2 | fis4 4 4 e8(fis) | g1~ |
  g2. 4 | e r b4.-> 8 | c4 r f-> g8(f) | e4 r r2 |
  g2. 4 | fis2. 4 | f2 e | % 49a
  d2. 4 | e4 r ees c8(d) | ees4 r ees-> c8(d) ees4 r ees ees |
  e2. 4 | 2. 4 | 2. 4 | f2. 4 |
  e1 | d | c4 r d4. 8 | e4 r g4. 8 | % 50a
  c,1~ | 1~ | 4 r r2 | R1 | R1\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day.
  Strike your cym -- bals, He -- brew maid -- ens,
  Mi -- riam bids raise up this song,
  Mi -- riam bids raise up this song;
  Migh -- ty is the Lord for ev -- er.
                                % 4a
  migh -- ty is for ev -- er.
  Hail! Hail! Migh -- tier hail we Him to -- day.
                                % 5a
  Strike your cym -- bals, He -- brew maid -- ens,
  Mi -- riam bids raise up this song;
                                % 6a
  Migh -- ty is the Lord for ev -- er,
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day.
                                % 9a
  Shep -- herd! Thou hast led us on -- ward,
  Strong thine arm __ and keen thine eye;
  Thou hast led __ Thy cho -- sen peo -- ple,
  Fire by night and cloud __ by day,
                                % 11a
  Strong Thine arm, strong Thine arm,
  strong Thine arm and keen Thine eye,
  Thine eye;
                                % 12b
  At Thy word the sea o -- bed -- ient
  Parts and leaves a path -- way dry,
  parts and leaves a path -- way dry,
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
  stand up -- right as crys -- tal walls,
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
                                % 15a
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
  Thro’ the seas we pass on dry land,
  Trust -- ing in __ Thy voice which calls.
  Thro’ the seas we pass on dry land,
                                % 17a
  Trust -- ing in Thy voice which calls.
  trust -- ing Thee, the voice which calls,
  trust -- ing Thee, Thee, the voice which calls.
                                % 20a
  As we pass the sky grows dark -- er,
  Voi -- ces shout, “We will pur -- sue,”
  Ar -- mour gleam -- ing, trum -- pets clang -- ing,
  Phar -- aoh’s host bursts on the view.
                                % 22b
  Lord of hosts, this hour we pe -- rish.
  Help us, Lord,
  O help us, Lord,
  Help us, Lord, our rock prove true.
                                % 24a
  Help us, Lord, our rock prove true.
                                % 25a
  Voi -- ces shout till press -- ing on -- ward,
  Will pur -- sue and o -- ver -- take,
  o -- ver -- take, o -- ver -- take,
                                % 27a
  But hark! what sigh -- ings!
  wail -- ings! moan -- ings! curs -- ings!
  Hark! the storm!
                                % 29a
  ’Tis the Lord in all His fu -- ry,
  Head -- long rush the pent -- up waves.
  Pha -- raoh’s cha -- riots, horse and ri -- der,
  Migh -- ty wa -- ters o -- ver -- whelm them,
  Fear -- ful -- ness and dread up -- on them fall,
                                % 31a
  By dark -- ness and hor -- ror are they smit -- ten,
  Drown’d the cap -- tains,
  By dark -- ness and hor -- ror are they smit -- ten,
  Drown’d, drown’d the host,
  Drown'd the cap -- tains, and drown’d the host,
  drown'd the cap -- tains, and drown’d the host,
                                % 32b
  drown'd the cap -- tains, drown’d, drown’d the host,
                                % 35a
  E -- gypt’s King, E -- gypt’s King,
  As lead, as lead sinks he,
  sinks he, down, down,
  Down in the migh -- ty __ flood.
                                % 36a
  Earth hath swal -- low’d all, __
  earth hath swal -- low’d all.
  God no more her tide __ re -- strain -- ing,
  All her shores __ the sea re -- gain -- ing,
  Ne’er re -- stor -- eth king or slave,
  Her sad waste at once both shroud and grave,
  Ne’er re -- stor -- eth,
  ne’er re -- stor -- eth king or slave,
  Her sad waste at once both shroud and grave.
                                % 40a
  Strike your cym -- bals, He -- brew maid -- ens,
  Mi -- riam bids raise up this song;
  Migh -- ty is the Lord for ev -- er,
                                % 41b
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day,
                                % 43b
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day,
  migh -- tier hail we Him,
                                % 44a
  Migh -- ty is the Lord for ev -- er,
  migh -- tier, migh -- tier hail we Him to -- day!
  Migh -- ty is the Lord for ev -- er,
  hail we Him to -- day,
                                % 45b
  Hail, hail we Him,
  migh -- ty is the Lord for ev -- er,
  migh -- ty is the Lord for ev -- er,
                                % 46a
  migh -- ty is the Lord,
  migh -- ty is the Lord,
  migh -- ty is the Lord for ev -- er,
  migh -- ty is the Lord for ev -- er,
  migh -- ty, migh -- tier hail we Him to -- day,
                                % 47a
  migh -- tier, migh -- tier hail we Him to -- day,
  hail we Him, hail we Him the migh -- ty Lord,
  the migh -- ty Lord.
                                % 48a
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day,,
  hail the migh -- ty, migh -- ty Lord,
  hail we Him, hail we Him,
                                % 49a
  hail we Him the migh -- ty, migh -- ty Lord,
  hail we Him, hail we Him,
  hail we Him the migh -- ty Lord,
  the migh -- ty, migh -- ty Lord,
  hail we Him migh -- ty Lord! __
}

wordsSopMidi = \lyricmode {
  "Migh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day. "
  "\nStrike " "your " cym "bals, " He "brew " maid "ens, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er. "
                                % 4a
  "\nmigh" "ty " "is " "for " ev "er. "
  "\nHail! " "Hail! " Migh "tier " "hail " "we " "Him " to "day. "
                                % 5a
  "\nStrike " "your " cym "bals, " He "brew " maid "ens, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
                                % 6a
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day. "
                                % 9a
  "\nShep" "herd! " "Thou " "hast " "led " "us " on "ward, "
  "\nStrong " "thine " "arm "  "and " "keen " "thine " "eye; "
  "\nThou " "hast " "led "  "Thy " cho "sen " peo "ple, "
  "\nFire " "by " "night " "and " "cloud "  "by " "day, "
                                % 11a
  "\nStrong " "Thine " "arm, " "strong " "Thine " "arm, "
  "\nstrong " "Thine " "arm " "and " "keen " "Thine " "eye, "
  "\nThine " "eye; "
                                % 12b
  "\nAt " "Thy " "word " "the " "sea " o bed "ient "
  "\nParts " "and " "leaves " "a " path "way " "dry, "
  "\nparts " "and " "leaves " "a " path "way " "dry, "
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
  "\nstand " up "right " "as " crys "tal " "walls, "
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
                                % 15a
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
  "\nThro’ " "the " "seas " "we " "pass " "on " "dry " "land, "
  "\nTrust" "ing " "in "  "Thy " "voice " "which " "calls. "
  "\nThro’ " "the " "seas " "we " "pass " "on " "dry " "land, "
                                % 17a
  "\nTrust" "ing " "in " "Thy " "voice " "which " "calls. "
  "\ntrust" "ing " "Thee, " "the " "voice " "which " "calls, "
  "\ntrust" "ing " "Thee, " "Thee, " "the " "voice " "which " "calls. "
                                % 20a
  "\nAs " "we " "pass " "the " "sky " "grows " dark "er, "
  "\nVoi" "ces " "shout, " "“We " "will " pur "sue,” "
  "\nAr" "mour " gleam "ing, " trum "pets " clang "ing, "
  "\nPhar" "aoh’s " "host " "bursts " "on " "the " "view. "
                                % 22b
  "\nLord " "of " "hosts, " "this " "hour " "we " pe "rish. "
  "\nHelp " "us, " "Lord, "
  "\nO " "help " "us, " "Lord, "
  "\nHelp " "us, " "Lord, " "our " "rock " "prove " "true. "
                                % 24a
  "\nHelp " "us, " "Lord, " "our " "rock " "prove " "true. "
                                % 25a
  "\nVoi" "ces " "shout " "till " press "ing " on "ward, "
  "\nWill " pur "sue " "and " o ver "take, "
  "\no" ver "take, " o ver "take, "
                                % 27a
  "\nBut " "hark! " "what " sigh "ings! "
  "\nwail" "ings! " moan "ings! " curs "ings! "
  "\nHark! " "the " "storm! "
                                % 29a
  "\n’Tis " "the " "Lord " "in " "all " "His " fu "ry, "
  "\nHead" "long " "rush " "the " pent "up " "waves. "
  "\nPha" "raoh’s " cha "riots, " "horse " "and " ri "der, "
  "\nMigh" "ty " wa "ters " o ver "whelm " "them, "
  "\nFear" ful "ness " "and " "dread " up "on " "them " "fall, "
                                % 31a
  "\nBy " dark "ness " "and " hor "ror " "are " "they " smit "ten, "
  "\nDrown’d " "the " cap "tains, "
  "\nBy " dark "ness " "and " hor "ror " "are " "they " smit "ten, "
  "\nDrown’d, " "drown’d " "the " "host, "
  "\nDrown'd " "the " cap "tains, " "and " "drown’d " "the " "host, "
  "\ndrown'd " "the " cap "tains, " "and " "drown’d " "the " "host, "
                                % 32b
  "\ndrown'd " "the " cap "tains, " "drown’d, " "drown’d " "the " "host, "
                                % 35a
  "\nE" "gypt’s " "King, " E "gypt’s " "King, "
  "\nAs " "lead, " "as " "lead " "sinks " "he, "
  "\nsinks " "he, " "down, " "down, "
  "\nDown " "in " "the " migh "ty "  "flood. "
                                % 36a
  "\nEarth " "hath " swal "low’d " "all, " 
  "\nearth " "hath " swal "low’d " "all. "
  "\nGod " "no " "more " "her " "tide "  re strain "ing, "
  "\nAll " "her " "shores "  "the " "sea " re gain "ing, "
  "\nNe’er " re stor "eth " "king " "or " "slave, "
  "\nHer " "sad " "waste " "at " "once " "both " "shroud " "and " "grave, "
  "\nNe’er " re stor "eth, "
  "\nne’er " re stor "eth " "king " "or " "slave, "
  "\nHer " "sad " "waste " "at " "once " "both " "shroud " "and " "grave. "
                                % 40a
  "\nStrike " "your " cym "bals, " He "brew " maid "ens, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
                                % 41b
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day, "
                                % 43b
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day, "
  "\nmigh" "tier " "hail " "we " "Him, "
                                % 44a
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "tier, " migh "tier " "hail " "we " "Him " to "day! "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nhail " "we " "Him " to "day, "
                                % 45b
  "\nHail, " "hail " "we " "Him, "
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
                                % 46a
  "\nmigh" "ty " "is " "the " "Lord, "
  "\nmigh" "ty " "is " "the " "Lord, "
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "ty, " migh "tier " "hail " "we " "Him " to "day, "
                                % 47a
  "\nmigh" "tier, " migh "tier " "hail " "we " "Him " to "day, "
  "\nhail " "we " "Him, " "hail " "we " "Him " "the " migh "ty " "Lord, "
  "\nthe " migh "ty " "Lord. "
                                % 48a
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day,, "
  "\nhail " "the " migh "ty, " migh "ty " "Lord, "
  "\nhail " "we " "Him, " "hail " "we " "Him, "
                                % 49a
  "\nhail " "we " "Him " "the " migh "ty, " migh "ty " "Lord, "
  "\nhail " "we " "Him, " "hail " "we " "Him, "
  "\nhail " "we " "Him " "the " migh "ty " "Lord, "
  "\nthe " migh "ty, " migh "ty " "Lord, "
  "\nhail " "we " "Him " migh "ty " "Lord! " 
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s1*22 | s2 s\f | s1*2 | s2 s\fz | s1*4 |
  s1*2 | s1\f | s1*9 | % 3
  s1*8 |
  s1*2 | s2 s\f | s1*5 | % 5
  s1*7 | s2 s\f s1 |
  s1 | s2 s4.\fz\> s8\! | s1*8 | s2.*7 | % 7
  s2.*12 |
  s2.\p | s2.*7 | % 9
  s2.\p | s2.*2 | s4. s\f | s2.*2 |
  s2 s4\f | s2. | s2 s4\ff | s2.*3 | % 11
  s2.*5 | s4. s\f | s2.*2 |
  s4.\p s\f | s2.*6 | % 13
  s2.\p | s2.*3 | s4.\< s16\> s16\! s4 | s2. |
  s2.\p | s2.*2 | s2.\< | s4.\! s\> | s2.\p | s2.*3 | % 15
  s2.*7 |
  s4. s\f | s2.*5 | % 17
  s2.*6 |
  s1*7 | % 19
  s2 s\p | s1*4 | s2 s\cresc |
  s1 | s2 s\f | s1*2 | s2 s\ff | s1 | % 21
  s1*3 | s2 s\ff | s1*3 |
  s1*6 | % 23
  s1*7 |
  s1 | s2 s\ff | s1*4 | % 25
  s1*7 |
  s1 | s2.. s8\pp | s1*4 | % 27
  s1\cresc | s | s\mf | s2 s\f | s1 | s2.. s8\ff |
  s1*2 | s2 s\ff | s1*6 | % 29
  s1*9 |
  s1*8 | s2. s4\p | % 31
  s2. s4\cresc | s2. s4\f | s1*2 | s2 s\ff | s1*8 |
  s2.*22 | % 33
  s2.*23 |
  s4 s2\ff | s2.*10 | % 35
  s2.\p | s | s\fz | s\dim | s\p | s\fz | s2.*6 | s4 s2\pp | s2.*2 |
  s2.*13 | % 37
  s2.*15 |
  s1*9 | % 39
  s2 s\f | s1*5 | s2 s\f | s1 |
  s1*5 | s2 s\f | s1*2 | % 41
  s2 s\fz | s1*12 |
  s2 s\f | s1*8 | % 43
  s1*9 |
  s1*9 | % 45
  s1*9 | s1\ff |
  s1*7 | s2 s\f | s1*3 | % 47
  s1*6 | s1\ff | s1*5 |
  s1*11 | % 49
  s1*9 |
}

alto = \relative {
  \global
  R1*22 | r2 c''4 a | b4. 8 4 4 | 4 4 r2 | r b4.-> 8 |
  c4 g g g | 2 r | R1*2 |
  R1*2 | e8(f) g(a) g4 e | 8(f) g(a) g4 e | % 3a
  g8(fis) g(a) ais4 4 | b b e,8(fis) g(a) | g4 e4 8(fis) g(a) | g4 r e8(fis) g(a) |
  g4 b b b | d2 r | b2 r4 r8 b | 2 r |
  a4. 8 4 4 | 4 4 r2 | c2 r | 2 4. 8 | % 4a
  d4 8(c) d4 c | b2 r | R1*2 |
  R1*2 | r2 e,8(f) g(a) | g4 e e8(f) g(a) | % 5a
  g4 e4 8(d) e(f) | g4 4 4 4 | 2 r | R1 |
  r2 bes4. 8 | a4 a g a8(bes) | a4 4 r2 | R1 | % 6a
  R1*3 | r2 c4 a | b4. 8 4 4 |
  b4 4 r2 | r b4.-> 8 c4 g g g | 2 r | % 7a
  R1*6 \section \key f \major \time 6/8 | R2.*7 |
  R2.*12 | % 8
  c,4 8 f(e) ees | d(c) c c(d16 e) f8 | R2. | f4 8 4 8 | % 9a
  f4 a8 a(g) r | R2.*3 |
  f8(g) a bes4 a16(g) | f8.(a16) g(bes) a(g) f8 r | R2. | % 10a
  r4 r8 g(f) ees | c'(bes) aes8 4 8 | 4. r4 r8 |
  r4 r8 r f-. f-. | aes-. r r r f-. f-. | aes-. r r r a a | % 11a
  b4 8 bes4 a8 | d4. c | a4 r8 r4 r8 |
  R2.*4 | % 12a
  R2. | r4 r8 d,(g) b | a4 8 d,(g) b | a a r r4 r8 |
  a16. 32 8 8 8(g) g | a4. bes4 8 | a4 8 bes4 8 | a4 r8 r4 r8 | % 13a
  R2.*3 |
  bes16 16 aes aes g g f f r8 r | ges16 16 f f ees ees d8 r r | % 14a
  f16 f ees ees des des c8 r r | f16 f e e f f g g r8 r |
  aes16 aes g g aes aes bes4 r8 | ges16 16 16 16 16 16 4 8 |
  ges16 16 16 16 16 16 4. | 16 16 16 16 16 16 4 8 | % 15a
  ges16 16 16 16 16 16 4.~( | 8 des ees e4.~ | 2.) |
  c4 8 f(e) ees | d(c) c c(d16 e) f8 | R2. | f4 8 4 8 |
  f4 a8 a(g) r | R2.*3 | % 16a
  f8(g) a bes4 a16(g) | f8.(a16) g(bes) a(g) f8 r | R2. |
  r4 r8 g(f) ees | c'(bes) aes8 4 8 | 4. r4 r8 | % 17a
  r4 r8 r f f | aes4 r8 r16 f16 8 8 | aes4 r8 r a a |
  b4. bes4 a8 | d4. c | a r4 r8 | % 18a
  R2.*3 \section \key ees \major \time 4/4 |
  R1*7 | % 19
  r2 g4 g | g f ees d | ees c c' bes | % 20a
  aes8(g) f(ees) d4 fis | g2 r | r g4 bes |
  aes4 f r2 | r a4 c | b g r2 | % 21a
  R1 | r2 g4 g | aes4 4 4 g |
  ees2 r | R1*2 | r2 c'4 4 | % 22a
  c4 bes aes g | aes f r2 | R1 |
  R1*2 | r2 c'4 bes | % 23a
  aes8(g) f(ees) d4 fis | g b c8(bes) aes(g) | aes4 r r2 |
  r2 a4 g | f8(e) d(c) b4 aes' | g8(aes) g(fis) g4 g | % 24a
  g2 r | R1*3 |
  R1 | r2 g4 g | aes4 4 4 g | % 25a
  aes4 4 r2 | R1 | r2 bes4 4 |
  ces4 4 4 bes | ges2 bes4 4 | ces2 r | % 26a
  r2 ces4 bes | ges2 r | R1 \section \key c \major | R1 |
  R1 | r2 r4 r8 fis | bes2 r | % 27a
  r2 r4 fis | fis cis r2 | R1 |
  fis4 e r2 | R1 | fis4 e r2 | % 28a
  r2 g4 f | r2 aes-> | r2 r4 r8 b \section \key ees \major |
  c2. r4 | R1 | r2 g4 g | % 29a
  ees4 g g c | b g b b | d b b b |
  c4 g r2 | g4 ees bes' c | g2 bes |
  bes2 r | f4 bes aes aes | r2 ces4 bes | % 30a
  bes4 4 r ges8 8 | f4 bes r2 | r ces4 bes |
  bes4 4 r2 | a4 a a b | a4. 8 gis4. 8 |
  a2 r | r r8 cis d4-> ~ | 4 8 b b b gis gis | % 31a
  a8 8 r4 a4.-> 8 | bes4 4 r2 | r2 r8 d ees4-> ~ |
  ees4 c8 c c c a a | bes bes r4 4 8 8 | c2 r4 a8. 16 |
  bes4 4 r8 b b b | c2 r4 cis8. 16 | d4. 8 4 8 8 | g,2 r | % 32a
  r2 bes4.-> 8 | c2. 4 | bes1 | a2 a |
  bes1 | R1*3 | R1\fermata \section \key g \major \time 3/4 |
  R2.*45 | % 33, 34
  r4 e,4. 8 | fis2 b4~ | 2 a4 | b2 r4 | % 35a
  r4 r8. b16 8. 16 | a4 e8. a16 8. 16 | g4 d r8. b'16 |
  c8. b16 a8.(g16) fis8.(e16) | b2 r4 | R2.*2 |
  c2 4 | 2 4 | cis2.~ | cis | a2 cis4 | % 36a
  e2 dis4 | e2 r4 | R2.*3 |
  R2.*2 | r4 e g | e(b') b | b(a8 g) fis(e) |
  dis4 fis r | b(c) c | d8(c b a) g(fis) | e2 fis4 | % 37a
  g8(a) b4 r | 2 4 | d b r | eis,2 fis4 | g2 r4 |
  b,2 8(cis) | d2 cis4 | fis8. g16 fis4 ais, | b2 r4 |
  r4 b'4. a8 | g(fis) e4 r | r g4. fis8 | 4 e r | r ais, b | % 38a
  c2 r4 | e2 8(fis) | g2 fis4 | b8. c16 b4 dis, |
  e2 r4 | R2.*4 | R2.\fermata \section \key c \major \time 4/4 |
  R1*9 | % 39
  r2 e8(f) g(a) | g4 e e8(f) g(a) | g4 e e8(d) e(f) | g4 g g g | % 40a
  g2 r | R1 | r2 bes4. 8 | a4 a g a8(bes) |
  a4 a r2 | R1*3 | % 41a
  R1 | r2 c4 a | b4. 8 4 4 | 4 4 r2 |
  r2 b4. 8 | c4 g g g | 2 r | R1 | % 42a
  R1*5 |
  R1*4 |
  r2 g4 e8(d) | c4. 8 a'(g) f(e) | d4 d b' b | % 43a
  b4 a8(b) c4 c | 2 r | g4 gis a8(g) fis(e) |
  d4 c' b8(a) g(a) | b(c) b(a) g(a) g(f) | e4 c'8(b a4. 8 |
  f4 fis g8 f) e(d) | e(f) g(f) e2 | R1 | % 44a
  b'4 b b a8(b) | c4 4 2 | r4 r8 a d(c) b(a) |
  g4 g g fis8(g) a4 a a g8(a) | b4 r g e8(d) |
  c4. 8 a'(g) fis(e) | d4 d b' a8(b) | c4 c c b8(c) | % 45a
  d4 b8(a) g4 fis8(g) | a4 g8(a) ais4. 8 | b2 r |
  e,4 e e dis8(e) | fis4 4 4 e8(fis) | g4 g g fis8(g) |
  a4 a ais ais | b b b b | g(aes) g f | g2 r | % 46a
  f4 f f e8(f) g4 g g f8(g) a4 a a g8(a) |
  bes4 4 b b | c2 r | a4-> a a a |
  a4 a a r | b-> b b b | b c b c | b r fis4.-> 8 | % 47a
  g4 r fis4.-> 8 | g4 r8 b c4-> d8(c) | b4 r8 b c4-> d8(c) |
  b2 g4-> e8(d) | c4. 8 a'(g) f(e) | d4 d b' b | b a8(b) c4 c |
  c8(a) b(c) d4 c | b2 r | R1*2 | % 48a
  g4 g g f8(g) | a4 4 2 | 4 4 4 g8(a) b1~ |
  b4(c2) b4 | c r f,-> e8(f) | g4 r b4.-> 8 | c4 r r2 |
  g4(a bes) a8(g) | a2. b8(c) | b4(d) g,2 | % 49a
  g2. 4 | 4 r a4.-> 8 | 4 r a4.-> 8 | 4 r a a |
  a2. 4 | 2 gis | g2. 4 | f2. a4 |
  c1 | g | e4 r b'4. 8 | c4 r b4. 8 | % 50a
  g1~ | g~ | 4 r r2 | R1 | R1\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day.
  Strike your cym -- bals, He -- brew maid -- ens,
  Strike your cym -- bals, maid -- ens,
  Mi -- riam bids raise up this song,
  Mi -- riam bids raise up this song;
  Hail! the Lord!
                                % 4a
  migh -- ty is for ev -- er.
  Hail! Hail! Migh -- tier hail we Him to -- day.
                                % 5a
  Strike your cym -- bals, He -- brew maid -- ens,
  Mi -- riam bids raise up this song;
                                % 6a
  Migh -- ty is the Lord for ev -- er,
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day.
                                % 9a
  Shep -- herd! Thou hast led us on -- ward,
  Strong thine arm __ and keen thine eye;
  Thou hast led __ Thy cho -- sen peo -- ple,
  Fire by night and cloud __ by day,
                                % 11a
  Strong Thine arm, strong Thine arm,
  strong Thine arm and keen Thine eye,
  Thine eye;
                                % 12b
  At Thy word the sea o -- bed -- ient
  Parts and leaves a path -- way dry,
  parts and leaves a path -- way dry,
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
  stand up -- right as crys -- tal walls,
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
                                % 15a
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
  Thro’ the seas we pass on dry land,
  Trust -- ing in __ Thy voice which calls.
  Thro’ the seas we pass on dry land,
                                % 17a
  Trust -- ing in Thy voice which calls.
  trust -- ing Thee, the voice which calls,
  trust -- ing Thee, Thee, the voice which calls.
                                % 20a
  As we pass the sky grows dark -- er,
  Voi -- ces shout, “We will pur -- sue,”
  Ar -- mour gleam -- ing, trum -- pets clang -- ing,
  Phar -- aoh’s host bursts on the view.
                                % 22b
  Lord of hosts, this hour we pe -- rish.
  Help us, Lord, our rock prove true,
  our rock prove true.
                                % 24a
  Help us, Lord, our rock prove true,
  our rock prove true.
                                % 25a
  Voi -- ces shout till press -- ing on -- ward,
  Will pur -- sue and o -- ver -- take,
  o -- ver -- take, o -- ver -- take,
                                % 27a
  But hark! what sigh -- ings!
  wail -- ings! moan -- ings! curs -- ings!
  Hark! the storm!
                                % 29a
  ’Tis the Lord in all His fu -- ry,
  ’Tis the Lord in all His fu -- ry,
  Head -- long rush the pent -- up waves.
  Horse and ri -- der, horse and ri -- der,
  Migh -- ty wa -- ters o -- ver -- whelm them,
  Fear -- ful -- ness and dread up -- on them fall,
                                % 31a
  By dark -- ness and hor -- ror are they smit -- ten,
  Drown’d the cap -- tains,
  By dark -- ness and hor -- ror are they smit -- ten,
  Drown’d, drown’d the host,
  Drown'd the cap -- tains, and drown’d the host,
  drown'd the cap -- tains, and drown’d the host,
                                % 32b
  drown'd the cap -- tains, drown’d, drown’d the host,
                                % 35a
  E -- gypt’s King, E -- gypt’s King,
  As lead, as lead sinks he,
  sinks he, down, down,
  Down in the migh -- ty __ flood.
                                % 36a
  Earth hath swal -- low’d all, __
  earth hath swal -- low’d all.
  God no more her tide __ re -- strain -- ing,
  All her shores __ the sea re -- gain -- ing,
  Ne’er re -- stor -- eth king or slave,
  Her sad waste at once both shroud and grave,
  Ne’er re -- stor -- eth,
  ne’er re -- stor -- eth king or slave,
  Her sad waste at once both shroud and grave.
                                % 40a
  Strike your cym -- bals, He -- brew maid -- ens,
  Mi -- riam bids raise up this song;
  Migh -- ty is the Lord for ev -- er,
                                % 41b
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day,
                                % 43a
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day,
  Migh -- ty is the Lord for ev -- er,
  migh -- ty is the Lord,
  migh -- ty is the Lord,
  migh -- tier hail we Him to -- day,
  the Lord for ev -- er
  migh -- ty, migh -- ty, migh -- ty is,
  migh -- ty is the Lord for ev -- er,
  migh -- ty is the Lord for ev -- er,
  migh -- tier hail we Him to -- day,
  migh -- ty is the Lord for ev -- er,
  migh -- ty is the Lord for ev -- er,
                                % 46a
  migh -- ty is the Lord,
  is the Lord,
  migh -- ty is the Lord for ev -- er,
  migh -- ty hail we Him, the migh -- ty Lord,
  migh -- tier hail we Him to -- day,
                                % 47a
  migh -- tier, migh -- tier hail we Him to -- day,
  hail we Him, hail we Him the migh -- ty Lord,
  the migh -- ty Lord.
                                % 47c
  Migh -- ty is the Lord for ev -- er,
  migh -- tier hail we, migh -- tier hail we Him to -- day,
  Migh -- tier, migh -- tier hail we Him,
  hail the migh -- ty, migh -- ty Lord,
  hail we Him, hail we Him,
                                % 49a
  hail we Him the migh -- ty, migh -- ty Lord,
  hail we Him, hail we Him,
  hail we Him the migh -- ty Lord,
  the migh -- ty, migh -- ty Lord,
  hail we Him migh -- ty Lord! __
}

wordsAltoMidi = \lyricmode {
  "Migh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day. "
  "\nStrike " "your " cym "bals, " He "brew " maid "ens, "
  "\nStrike " "your " cym "bals, " maid "ens, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
  "\nHail! " "the " "Lord! "
                                % 4a
  "\nmigh" "ty " "is " "for " ev "er. "
  "\nHail! " "Hail! " Migh "tier " "hail " "we " "Him " to "day. "
                                % 5a
  "\nStrike " "your " cym "bals, " He "brew " maid "ens, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
                                % 6a
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day. "
                                % 9a
  "\nShep" "herd! " "Thou " "hast " "led " "us " on "ward, "
  "\nStrong " "thine " "arm "  "and " "keen " "thine " "eye; "
  "\nThou " "hast " "led "  "Thy " cho "sen " peo "ple, "
  "\nFire " "by " "night " "and " "cloud "  "by " "day, "
                                % 11a
  "\nStrong " "Thine " "arm, " "strong " "Thine " "arm, "
  "\nstrong " "Thine " "arm " "and " "keen " "Thine " "eye, "
  "\nThine " "eye; "
                                % 12b
  "\nAt " "Thy " "word " "the " "sea " o bed "ient "
  "\nParts " "and " "leaves " "a " path "way " "dry, "
  "\nparts " "and " "leaves " "a " path "way " "dry, "
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
  "\nstand " up "right " "as " crys "tal " "walls, "
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
                                % 15a
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
  "\nThro’ " "the " "seas " "we " "pass " "on " "dry " "land, "
  "\nTrust" "ing " "in "  "Thy " "voice " "which " "calls. "
  "\nThro’ " "the " "seas " "we " "pass " "on " "dry " "land, "
                                % 17a
  "\nTrust" "ing " "in " "Thy " "voice " "which " "calls. "
  "\ntrust" "ing " "Thee, " "the " "voice " "which " "calls, "
  "\ntrust" "ing " "Thee, " "Thee, " "the " "voice " "which " "calls. "
                                % 20a
  "\nAs " "we " "pass " "the " "sky " "grows " dark "er, "
  "\nVoi" "ces " "shout, " "“We " "will " pur "sue,” "
  "\nAr" "mour " gleam "ing, " trum "pets " clang "ing, "
  "\nPhar" "aoh’s " "host " "bursts " "on " "the " "view. "
                                % 22b
  "\nLord " "of " "hosts, " "this " "hour " "we " pe "rish. "
  "\nHelp " "us, " "Lord, " "our " "rock " "prove " "true, "
  "\nour " "rock " "prove " "true. "
                                % 24a
  "\nHelp " "us, " "Lord, " "our " "rock " "prove " "true, "
  "\nour " "rock " "prove " "true. "
                                % 25a
  "\nVoi" "ces " "shout " "till " press "ing " on "ward, "
  "\nWill " pur "sue " "and " o ver "take, "
  "\no" ver "take, " o ver "take, "
                                % 27a
  "\nBut " "hark! " "what " sigh "ings! "
  "\nwail" "ings! " moan "ings! " curs "ings! "
  "\nHark! " "the " "storm! "
                                % 29a
  "\n’Tis " "the " "Lord " "in " "all " "His " fu "ry, "
  "\n’Tis " "the " "Lord " "in " "all " "His " fu "ry, "
  "\nHead" "long " "rush " "the " pent "up " "waves. "
  "\nHorse " "and " ri "der, " "horse " "and " ri "der, "
  "\nMigh" "ty " wa "ters " o ver "whelm " "them, "
  "\nFear" ful "ness " "and " "dread " up "on " "them " "fall, "
                                % 31a
  "\nBy " dark "ness " "and " hor "ror " "are " "they " smit "ten, "
  "\nDrown’d " "the " cap "tains, "
  "\nBy " dark "ness " "and " hor "ror " "are " "they " smit "ten, "
  "\nDrown’d, " "drown’d " "the " "host, "
  "\nDrown'd " "the " cap "tains, " "and " "drown’d " "the " "host, "
  "\ndrown'd " "the " cap "tains, " "and " "drown’d " "the " "host, "
                                % 32b
  "\ndrown'd " "the " cap "tains, " "drown’d, " "drown’d " "the " "host, "
                                % 35a
  "\nE" "gypt’s " "King, " E "gypt’s " "King, "
  "\nAs " "lead, " "as " "lead " "sinks " "he, "
  "\nsinks " "he, " "down, " "down, "
  "\nDown " "in " "the " migh "ty "  "flood. "
                                % 36a
  "\nEarth " "hath " swal "low’d " "all, " 
  "\nearth " "hath " swal "low’d " "all. "
  "\nGod " "no " "more " "her " "tide "  re strain "ing, "
  "\nAll " "her " "shores "  "the " "sea " re gain "ing, "
  "\nNe’er " re stor "eth " "king " "or " "slave, "
  "\nHer " "sad " "waste " "at " "once " "both " "shroud " "and " "grave, "
  "\nNe’er " re stor "eth, "
  "\nne’er " re stor "eth " "king " "or " "slave, "
  "\nHer " "sad " "waste " "at " "once " "both " "shroud " "and " "grave. "
                                % 40a
  "\nStrike " "your " cym "bals, " He "brew " maid "ens, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
                                % 41b
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day, "
                                % 43a
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day, "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "ty " "is " "the " "Lord, "
  "\nmigh" "ty " "is " "the " "Lord, "
  "\nmigh" "tier " "hail " "we " "Him " to "day, "
  "\nthe " "Lord " "for " ev "er "
  "\nmigh" "ty, " migh "ty, " migh "ty " "is, "
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "tier " "hail " "we " "Him " to "day, "
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
                                % 46a
  "\nmigh" "ty " "is " "the " "Lord, "
  "\nis " "the " "Lord, "
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "ty " "hail " "we " "Him, " "the " migh "ty " "Lord, "
  "\nmigh" "tier " "hail " "we " "Him " to "day, "
                                % 47a
  "\nmigh" "tier, " migh "tier " "hail " "we " "Him " to "day, "
  "\nhail " "we " "Him, " "hail " "we " "Him " "the " migh "ty " "Lord, "
  "\nthe " migh "ty " "Lord. "
                                % 47c
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "tier " "hail " "we, " migh "tier " "hail " "we " "Him " to "day, "
  "\nMigh" "tier, " migh "tier " "hail " "we " "Him, "
  "\nhail " "the " migh "ty, " migh "ty " "Lord, "
  "\nhail " "we " "Him, " "hail " "we " "Him, "
                                % 49a
  "\nhail " "we " "Him " "the " migh "ty, " migh "ty " "Lord, "
  "\nhail " "we " "Him, " "hail " "we " "Him, "
  "\nhail " "we " "Him " "the " migh "ty " "Lord, "
  "\nthe " migh "ty, " migh "ty " "Lord, "
  "\nhail " "we " "Him " migh "ty " "Lord! " 
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s1*22 | s2 s\f | s1*2 | s2 s\fz | s1*4 |
  s1 | s2 s\f | s1*10 | % 3
  s1*8 |
  s1*2 | s2. s4\f | s1*5 | % 5
  s1*7 | s2 s\f s1 |
  s1 | s2 s4.\fz\> s8\! | s1*8 | s2.*7 | % 7
  s2.*12 |
  s2.\p | s2.*7 | % 9
  s2.\p | s2.*2 | s4. s\f | s2.*2 |
  s2 s4\f | s2. | s2 s4\ff | s2.*3 | % 11
  s2.*5 | s4. s\f | s2.*2 |
  s4.\p s\f | s2.*5 | s4. s\p | % 13
  s2.*4 | s4. s\< | s4\> s2\! |
  s2.\p | s2.*2 | s2.\< | s4.\! s\> | s2.\p | s2.*3 | % 15
  s2.*7 |
  s4. s\f | s2.*5 | % 17
  s2.*6 |
  s1*7 | % 19
  s2 s\p | s1*4 | s2 s\cresc |
  s1 | s2 s\f | s1*2 | s2 s\ff | s1 | % 21
  s1*4 | s2 s\omit\ff | s1*2 |
  s1*6 | % 23
  s1*7 |
  s1 | s2 s\ff | s1*4 | % 25
  s1*7 |
  s1 | s2.. s8\pp | s1*4 | % 27
  s1\cresc | s | s\mf | s2 s\f | s1 | s2.. s8\ff |
  s1*4 | s2 s\omit\ff | s1*4 | % 29
  s1*9 |
  s1*8 | s2. s4\p | % 31
  s2. s4\cresc | s2. s4\f | s1*2 | s2 s\ff | s1*8 |
  s2.*22 | % 33
  s2.*23 |
  s4 s2\ff | s2.*10 | % 35
  s2.\p | s | s\fz | s\dim | s\p | s\fz | s2.*5 | s4 s2\pp | s2.*3 |
  s2.*13 | % 37
  s2.*15 |
  s1*9 | % 39
  s2. s4\f | s1*5 | s2 s\f | s1 |
  s1*5 | s2 s\f | s1*2 | % 41
  s2 s\fz | s1*9 | s1\f | s1*2 |
  s1*9 | % 43
  s1*9 |
  s1*9 | % 45
  s1*9 | s1\ff |
  s1*8 | s1\f | s1*2 | % 47
  s1*7 | s1\ff | s1*4 |
  s1*11 | % 49
  s1*9 |
}

tenor = \relative {
  \global
  R1*22 | r2 c'4 e | fis4. 8 g4 4 | 4 fis r2 | r f4.-> 8 |
  e4 d8(c) d4 f | e2 r | R1*2 |
  R1 | r2 c8->(d) e(f) | e4 c c8(d) e(f) | e4 c e8(f) g(a) | % 3a
  g4 4 4 4 | 4 4 r2 | R1 | r2 g,8(a) b(c) |
  b4 g' g g | fis2 d8(e) f(g) | fis4 d4 8(e) f(g) | fis4 d r2 |
  fis4. 8 4 4 | 4 4 d8(cis) d(e) | f4. 8 8(e) f(g) | f4 4 4. 8 | % 4a
  d4 g g g | 2 r | R1*2 |
  R1*2 | r2 r4 g,8. 16 | 4 c r g8. 16 | % 5a
  g4 c r g8. 16 | 4 g' f e | d2 r | R1 |
  r2 f4. 8 | 4 4 4 e | f f r2 | R1 | % 6a
  R1*3 | r2 c4 e | fis4. 8 g4 g |
  g4 fis r2 | r f4. 8 | e4 d8(c) d4 f | e2 r | % 7a
  R1*6 \section \key f \major \time 6/8 |
  R2.*7 |
  R2.*12 | % 8
  f8(c) a a(bes) c | d(e16 g) f(e) f8(c) a | R2. | a8(f) bes a(f16 g) a(bes) | % 9a
  a8(c) d c4 r8 | R2.*3 |
  a4 8 g4 a16(bes) | a8.(f16) e(g) f(g) a8 r | R2. | % 10a
  r4 r8 ees4 8 | ees(e) f ges4 8 | f4. r4 r8 |
  r4 r8 r aes8-. 8-. | f'-. r r r aes,-. aes-. | f'-. r r r f f | % 11a
  f4 g8 4 f8 | g4. g | f4 r8 r4 r8 |
  R2.*4 | % 12a
  R2. |  r4 r8 d4 g8 | fis4 8 d4 g8 | fis8 8 r r4 r8 |
  e16. 32 8 8 d4 c8 | 4. f4 d8 | c4 f8 4 d8 | c4 r8 r4 r8 | % 13a
  R2.*2 | r4 r8 c16 c b b aes aes |
  g16 g r8 r aes16 aes g g f f | ees8 r r f16 f e e d d | % 14a
  des8 r r c16 c b b c c | des16 16 r8 r e16 e d d e e |
  f4 r8 bes16 16 16 16 16 16 | 4 8 16 16 16 16 16 16 |
  b4. 16 16 16 16 16 16 | 4 8 16 16 16 16 16 16 | % 15a
  bes2.~ | 4(c8 des4.~ | 4. c) |
  f8(c) a a(bes) c | d(e16 g) f(e) f8(c) a | R2. | a8(f) bes a16(f' ees d) c(bes) |
  a8(c) d c4 r8 | R2.*3 | % 16a
  a4 8 g4 a16(bes) | a8.(f16) e16(g) f(g) a8 r | R2. |
  r4 r8 ees'4 8 | ees(e) f ges4 8 | f4. r4 r8 | % 17a
  r4 r8 r aes, aes | f'4 r8 r16 aes,16 8 8 | f'4 r8 r f f |
  g4. 4 f8 | g4. g | g r4 r8 | % 18a
  R2.*3 \section \key ees \major \time 4/4 |
  R1*7 | % 19
  r2 g,4 g | g f ees d | ees c c' bes | % 20a
  aes8(g) f(ees) d4 fis | g2 r | r g4 bes |
  aes4 f r2 | r a4 c | b g r2 | % 21a
  R1 | r2 c4 des | c ees ees ees |
  c2 r | R1*3 | % 22a
  R1*2 | r2 f4 f |
  f4 ees d c | b d g f | ees f g g | % 23a
  c,4 r f c | bes8(a) g(f) e4 des' | c8(des) c(b) c4 r |
  r2 f4 e | d8(c) b(a) g4 f' | ees4 4 4 d | % 24a
  ees2 r | R1*3 |
  R1 | r2 c4 des | c ees ees ees | % 25a
  ees4 4 r2 | R1 | r2 ees4 fes |
  ees4 ges ges ges | ees2 ges4 4 | 2 r | % 26a
  r2 ges4 4 | ees2 r | R1 \section \key c \major | R1 |
  R1 | r2  r4 r8 d | fis2 r | % 27a
  r2 r4 cis | cis ais r2 | R1 |
  cis4 4 r2 | R1 | cis4 4 r2 | % 28a
  r2 d4 d | r2 f-> | r2 r4 r8 g \section \key ees \major |
  g2. r4 | R1*2 | % 29a
  R1 | r2 d4 d | f d d d |
  f4 ees r2 | g4 ees bes c | ees2 f |
  ges2 bes,4 ees | d d r2 | d4 f aes aes | % 30a
  ges4 4 bes, ees | d bes r r8 d | d4 f aes aes |
  ges4 ees r2 | fis4 4 4 4 | cis4. 8 4. 8 |
  cis4. 8 fis4-> c | r2 r4 r8 d | d4-> 8 8 8 8 cis cis | % 31a
  cis8 d r4 d4.-> 8 | 4 8 8 g4-> d | r2 r4 r8 ees |
  ees4-> 8 8 8 8 d d | d ees r4 ees-> 8 8 | 2 r4 a,8. 16 |
  bes4 4 r8 b b b | c2 r4 cis8. 16 | d4. 8 4 8 8 | g,2 r | % 32a
  r2 ees'4.-> 8 | 2. 4 | d1 | 2 2 |
  d1 | R1*3 | R1\fermata \section \key g \major \time 3/4 |
  s2.*45 | % 33, 34
  r4 b4. 8 | b2 r4 | r e4. dis8 | f2 r4 | % 35a
  r4 r r8. b,16 | e8. d16 c8.(b16) a8. 16 | d8. c16 b8.(a16) g8. b16 |
  c8. b16 a8.(g16) fis8.(e16) | b2 r4 | R2.*2 |
  c2 4 | 2 4 | cis2.~ | 2. | fis2 g4 | % 36a
  b2 4 | e,2 r4 | R2.*3 |
  R2. | r4 e g | e(b') b | b(a8 g) fis(e) | dis4 fis r |
  b4(c) c | d8(c b a) g(fis) | e2 fis4 | g8(a) b4 r | % 37a
  b2 4 | d b r | eis,2 fis4 | g2 r4 | b,2 8(cis) |
  d2 cis4 | fis8. g16 fis4 ais, | b2 r4 | r b'4. a8 |
  g8(fis) e4 r | r g4. fis8 | 4 e r | r ais b | c2 r4 | % 38a
  e2 8(fis) | g2 fis4 | b8. c16 b4 dis, | e2 r4 |
  R2.*5 | R2.\fermata \section \key c \major \time 4/4 |
  R1*9 | % 39
  r2 r4 g,8. 16 | 4 c r g8. 16 | 4 c r g8. 16 | 4 e' d c | % 40a
  b2 r | R1 | r2 f'4. 8 | 4 4 4 e4 |
  f4 f r2 | R1*3 | % 41a
  R1 | r2 c4 e | fis4. 8 g4 g | g fis r2 |
  r2 f4. 8 | e4 d8(c) d4 f | e2 r | R1 | % 42a
  R1*5 |
  R1 | c4 b8(a) g4. 8 | e'8(d) c(b) a4 a | fis'4 4 4 e8(fis) |
  g4 4 2 | r2 c,4 cis | d8(c) b(a) g4 f' | % 43a
  e8(d) c(d) e4 f | g2 e8(f) e(d) | c(d) e(d) c4(cis |
  d8 c b a b c b a | g4) r r2 | r c4 cis |
  d8(c) b(a) g4 f' | e8(d) c(d) e2 | r d4 b8(a) | % 44a
  g4. 8 e'(d) c(b) | a4 a r2 | R1 |
  r4 r8 b e(d) c(b) | a4. 8 fis'(e) d(c) | b4 r r2 |
  R1 | r2 e4 c8(b) | a4. 8 fis'(e) d(c) | % 45a
  b4 d d c8(d) | e4 4 4. 8 | fis2 r |
  r2 a,4 fis8(e) | dis4. 8 b'8(a) g(fis) | e4 e c' a8(g) |
  fis4 dis' e fis8(g) | fis4 g fis fis | e f e f | e2 r | % 46a
  r2 bes4 g8(f) | e4. 8 c'(bes) a(g) | f4 f d' bes8(a) |
  g4 e' f g8(aes) | g2 r | e4-> e e f8(e) |
  d4 d d r | fis-> fis fis g8(fis) | e4 g g g | g r c,-> b8(c) | % 47a
  d4 r c-> b8(c) | d4 r8 8 4.-> 8 | 4 r8 d d4.-> 8 |
  d2 r | c4-> a8(g) f4. 8 | d'(c) b(a) g4 g | e' e e d8(e) |
  f4 f fis8(d) e(fis) | g2 r | e4-> c8(b) a4. 8 | f'8(e) d(c)  b4 b | % 48a
  R1*3 | d4 4 4 e8(f) |
  f4 e d4. 8 | c4 r f-> g8(f) | e4 r f-> e8(f) | g4 r r2 |
  R1 | a,4(b c) b8(a) | d2 c | % 49a
  c2 b | c4 r c-> ees8(d) | c4 r c-> ees8(d) | c4 r c c |
  cis2. 4 | b2 2 | a2. 4 | 2 d |
  c1 | b | c4 r g'4. 8 | 4 r d4. 8 | % 50a
  e1~ | e~ | 4 r r2 | R1 | R1\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day.
                                % 3a
  Strike your cym -- bals, He -- brew maid -- ens,
  strike your cym -- bals, He -- brew maid -- ens
  Mi -- riam bids raise up this song,
  Migh -- ty is the Lord for ev -- er,
  % 4a
  migh -- ty is for ev -- er.
  migh -- ty is the Lord for ev -- er.
  Migh -- tier hail we Him to -- day.
                                % 5a
  Strike your cym -- bals, He -- bre mai -- dens,
  Mi -- riam bids raise up this song;
                                % 6a
  Migh -- ty is the Lord for ev -- er,
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day.
                                % 9a
  Shep -- herd! Thou hast led us on -- ward,
  Strong thine arm and keen thine eye;
  Thou hast led Thy cho -- sen peo -- ple,
  Fire by night and cloud __ by day,
                                % 11a
  Strong Thine arm, strong Thine arm,
  strong Thine arm and keen Thine eye,
  Thine eye;
                                % 12b
  At Thy word the sea o -- bed -- ient
  Parts and leaves a path -- way dry,
  parts and leaves a path -- way dry,
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
  stand up -- right as crys -- tal walls,
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
                                % 15a
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
  Thro’ the seas we pass on dry land,
  Trust -- ing in Thy voice which calls.
  Thro’ the seas we pass on dry land,
                                % 17a
  Trust -- ing in Thy voice which calls.
  trust -- ing Thee, the voice which calls,
  trust -- ing Thee, Thee, the voice which calls.
                                % 20a
  As we pass the sky grows dark -- er,
  Voi -- ces shout, “We will pur -- sue,”
  Ar -- mour gleam -- ing, trum -- pets clang -- ing,
  Phar -- aoh’s host bursts on the view.
                                % 22b
  Lord of hosts, this hour we pe -- rish.
  Help us, Lord, our rock prove true.
  Help us, Lord, our rock, our rock prove true.
                                % 24a
  Help us, Lord, our rock prove true, our rock prove true.
                                % 25a
  Voi -- ces shout till press -- ing on -- ward,
  Will pur -- sue and o -- ver -- take,
  o -- ver -- take, o -- ver -- take,
                                % 27a
  But hark! what sigh -- ings!
  wail -- ings! moan -- ings! curs -- ings!
  Hark! the storm!
                                % 29b
  ’Tis the Lord in all His fu -- ry,
  Head -- long rush the pent -- up waves.
  horse and ri -- der, cha -- riots, horse and ri -- der,
  Migh -- ty wa -- ters,
  the wa -- ters o -- ver -- whelm them,
  Fear -- ful -- ness and dread up -- on them fall,
                                % 31a
  By dark -- ness, by dark -- ness and hor -- ror
  are they smit -- ten,
  Drown’d the cap -- tains,
  By dark -- ness, by dark -- ness and hor -- ror
  are they smit -- ten,
  Drown’d, drown’d the host,
  Drown'd the cap -- tains, and drown’d the host,
  drown'd the cap -- tains, and drown’d the host,
                                % 32b
  drown'd the cap -- tains, drown’d, drown’d the host,
                                % 35a
  E -- gypt’s King, E -- gypt’s King,
  As lead he sinks down, as lead he sinks down,
  Down in the migh -- ty __ flood.
                                % 36a
  Earth hath swal -- low’d all, __
  earth hath swal -- low’d all.
  God no more her tide __ re -- strain -- ing,
  All her shores __ the sea re -- gain -- ing,
  Ne’er re -- stor -- eth king or slave,
  Her sad waste at once both shroud and grave,
  Ne’er re -- stor -- eth,
  ne’er re -- stor -- eth king or slave,
  Her sad waste at once both shroud and grave.
                                % 40a
  Strike your cym -- bals, He -- brew maid -- ens,
  Mi -- riam bids raise up this song;
  Migh -- ty is the Lord for ev -- er,
                                % 41b
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day,
                                % 42c
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day,
  % 43a
  Migh -- ty is the Lord for ev -- er,
  hail we Him,
  Migh -- ty is the Lord,
                                % 43c
  migh -- tier is the Lord, the Lord to -- day,
  Migh -- ty is the Lord for ev -- er,
  the Lord for ev -- er migh -- ty is,
                                % 45a
  migh -- ty is the Lord for ev -- er,
  migh -- tier hail we Him to -- day,
  migh -- ty is the Lord for ev -- er,
  migh -- ty is the Lord for ev -- er,
  migh -- tier hail we Him to -- day,
                                % 46b
  migh -- ty is the Lord for ev -- er,
  migh -- tier hail we Him to -- day,
  migh -- tier hail we Him to -- day,
                                % 47a
  migh -- tier, migh -- tier hail we Him to -- day,
  hail we Him,
  hail we Him, the migh -- ty Lord,
  the migh -- ty Lord.
  Migh -- tier is the Lord for ev -- er,
  migh -- tier, migh -- tier hail we Him to -- day,
                                % 48a
  Migh -- ty is the Lord for ev -- er,
  hail we Him the migh -- ty, migh -- ty Lord,
  hail we Him, hail we Him,
                                % 49a
  migh -- ty Lord, the migh -- ty Lord,
  hail we Him, hail we Him,
  hail we Him the migh -- ty Lord,
  the migh -- ty, migh -- ty Lord,
  hail we Him migh -- ty Lord! __
}

wordsTenorMidi = \lyricmode {
  "Migh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day. "
                                % 3a
  "\nStrike " "your " cym "bals, " He "brew " maid "ens, "
  "\nstrike " "your " cym "bals, " He "brew " maid "ens "
  "\nMi" "riam " "bids " "raise " "up " "this " "song, "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  % 4a
  "\nmigh" "ty " "is " "for " ev "er. "
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er. "
  "\nMigh" "tier " "hail " "we " "Him " to "day. "
                                % 5a
  "\nStrike " "your " cym "bals, " He "bre " mai "dens, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
                                % 6a
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day. "
                                % 9a
  "\nShep" "herd! " "Thou " "hast " "led " "us " on "ward, "
  "\nStrong " "thine " "arm " "and " "keen " "thine " "eye; "
  "\nThou " "hast " "led " "Thy " cho "sen " peo "ple, "
  "\nFire " "by " "night " "and " "cloud "  "by " "day, "
                                % 11a
  "\nStrong " "Thine " "arm, " "strong " "Thine " "arm, "
  "\nstrong " "Thine " "arm " "and " "keen " "Thine " "eye, "
  "\nThine " "eye; "
                                % 12b
  "\nAt " "Thy " "word " "the " "sea " o bed "ient "
  "\nParts " "and " "leaves " "a " path "way " "dry, "
  "\nparts " "and " "leaves " "a " path "way " "dry, "
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
  "\nstand " up "right " "as " crys "tal " "walls, "
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
                                % 15a
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
  "\nThro’ " "the " "seas " "we " "pass " "on " "dry " "land, "
  "\nTrust" "ing " "in " "Thy " "voice " "which " "calls. "
  "\nThro’ " "the " "seas " "we " "pass " "on " "dry " "land, "
                                % 17a
  "\nTrust" "ing " "in " "Thy " "voice " "which " "calls. "
  "\ntrust" "ing " "Thee, " "the " "voice " "which " "calls, "
  "\ntrust" "ing " "Thee, " "Thee, " "the " "voice " "which " "calls. "
                                % 20a
  "\nAs " "we " "pass " "the " "sky " "grows " dark "er, "
  "\nVoi" "ces " "shout, " "“We " "will " pur "sue,” "
  "\nAr" "mour " gleam "ing, " trum "pets " clang "ing, "
  "\nPhar" "aoh’s " "host " "bursts " "on " "the " "view. "
                                % 22b
  "\nLord " "of " "hosts, " "this " "hour " "we " pe "rish. "
  "\nHelp " "us, " "Lord, " "our " "rock " "prove " "true. "
  "\nHelp " "us, " "Lord, " "our " "rock, " "our " "rock " "prove " "true. "
                                % 24a
  "\nHelp " "us, " "Lord, " "our " "rock " "prove " "true, " "our " "rock " "prove " "true. "
                                % 25a
  "\nVoi" "ces " "shout " "till " press "ing " on "ward, "
  "\nWill " pur "sue " "and " o ver "take, "
  "\no" ver "take, " o ver "take, "
                                % 27a
  "\nBut " "hark! " "what " sigh "ings! "
  "\nwail" "ings! " moan "ings! " curs "ings! "
  "\nHark! " "the " "storm! "
                                % 29b
  "\n’Tis " "the " "Lord " "in " "all " "His " fu "ry, "
  "\nHead" "long " "rush " "the " pent "up " "waves. "
  "\nhorse " "and " ri "der, " cha "riots, " "horse " "and " ri "der, "
  "\nMigh" "ty " wa "ters, "
  "\nthe " wa "ters " o ver "whelm " "them, "
  "\nFear" ful "ness " "and " "dread " up "on " "them " "fall, "
                                % 31a
  "\nBy " dark "ness, " "by " dark "ness " "and " hor "ror "
  "\nare " "they " smit "ten, "
  "\nDrown’d " "the " cap "tains, "
  "\nBy " dark "ness, " "by " dark "ness " "and " hor "ror "
  "\nare " "they " smit "ten, "
  "\nDrown’d, " "drown’d " "the " "host, "
  "\nDrown'd " "the " cap "tains, " "and " "drown’d " "the " "host, "
  "\ndrown'd " "the " cap "tains, " "and " "drown’d " "the " "host, "
                                % 32b
  "\ndrown'd " "the " cap "tains, " "drown’d, " "drown’d " "the " "host, "
                                % 35a
  "\nE" "gypt’s " "King, " E "gypt’s " "King, "
  "\nAs " "lead " "he " "sinks " "down, " "as " "lead " "he " "sinks " "down, "
  "\nDown " "in " "the " migh "ty "  "flood. "
                                % 36a
  "\nEarth " "hath " swal "low’d " "all, " 
  "\nearth " "hath " swal "low’d " "all. "
  "\nGod " "no " "more " "her " "tide "  re strain "ing, "
  "\nAll " "her " "shores "  "the " "sea " re gain "ing, "
  "\nNe’er " re stor "eth " "king " "or " "slave, "
  "\nHer " "sad " "waste " "at " "once " "both " "shroud " "and " "grave, "
  "\nNe’er " re stor "eth, "
  "\nne’er " re stor "eth " "king " "or " "slave, "
  "\nHer " "sad " "waste " "at " "once " "both " "shroud " "and " "grave. "
                                % 40a
  "\nStrike " "your " cym "bals, " He "brew " maid "ens, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
                                % 41b
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day, "
                                % 42c
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day, "
  % 43a
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nhail " "we " "Him, "
  "\nMigh" "ty " "is " "the " "Lord, "
                                % 43c
  "\nmigh" "tier " "is " "the " "Lord, " "the " "Lord " to "day, "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nthe " "Lord " "for " ev "er " migh "ty " "is, "
                                % 45a
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "tier " "hail " "we " "Him " to "day, "
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "tier " "hail " "we " "Him " to "day, "
                                % 46b
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "tier " "hail " "we " "Him " to "day, "
  "\nmigh" "tier " "hail " "we " "Him " to "day, "
                                % 47a
  "\nmigh" "tier, " migh "tier " "hail " "we " "Him " to "day, "
  "\nhail " "we " "Him, "
  "\nhail " "we " "Him, " "the " migh "ty " "Lord, "
  "\nthe " migh "ty " "Lord. "
  "\nMigh" "tier " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "tier, " migh "tier " "hail " "we " "Him " to "day, "
                                % 48a
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nhail " "we " "Him " "the " migh "ty, " migh "ty " "Lord, "
  "\nhail " "we " "Him, " "hail " "we " "Him, "
                                % 49a
  "\nmigh" "ty " "Lord, " "the " migh "ty " "Lord, "
  "\nhail " "we " "Him, " "hail " "we " "Him, "
  "\nhail " "we " "Him " "the " migh "ty " "Lord, "
  "\nthe " migh "ty, " migh "ty " "Lord, "
  "\nhail " "we " "Him " migh "ty " "Lord! " 
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s1*22 |  s2 s\f | s1*2 | s2 s\fz | s1*4 |
  s1*2 | s1\f | s1*9 | % 3
  s1*8 |
  s1*2 | s2. s4\f | s1*5 | % 5
  s1*7 | s2 s\f s1 |
  s1 | s2 s4.\fz\> s8\! | s1*8 | s2.*7 | % 7
  s2.*12 |
  s2.\p | s2.*7 | % 9
  s2.\p | s2.*2 | s4. s\f | s2.*2 |
  s2 s4\f | s2. | s2 s4\ff | s2.*3 | % 11
  s2.*5 | s8 s\f s2 | s2.*2 |
  s4.\p s\f | s2.*5 | s4. s\p | % 13
  s2.*4 | s4. s\< | s4\> s2\! |
  s2.\p | s2.*2 | s2.\< | s4.\! s\> | s2.\p | s2.*3 | % 15
  s2.*7 |
  s4. s\f | s2.*5 | % 17
  s2.*6 |
  s1*7 | % 19
  s2 s\p | s1*4 | s2 s\cresc |
  s1 | s2 s\f | s1*2 | s2 s\ff | s1 | % 21
  s1*4 | s2 s\ff | s1*2 |
  s1*6 | % 23
  s1*7 |
  s1 | s2 s\ff | s1*4 | % 25
  s1*7 |
  s1 | s2.. s8\pp | s1*4 | % 27
  s1\cresc | s | s\mf | s2 s\f | s1 | s2.. s8\ff |
  s1*2 | s2 s\ff | s1*6 | % 29
  s1*9 |
  s1*8 | s2. s4\p | % 31
  s2. s4\cresc | s2. s4\f | s1*2 | s1\ff | s1*8 |
  s2.*22 | % 33
  s2.*23 |
  s4 s2\ff | s2.*10 | % 35
  s2.\p | s | s\fz | s\dim | s\p | s\fz | s2.*5 | s4 s2\pp | s2.*3 |
  s2.*13 | % 37
  s2.*15 |
  s1*9 | % 39
  s2. s4\f | s1*5 | s2 s\f | s1 |
  s1*5 | s2 s\f | s1*2 | % 41
  s2 s\fz | s1*5 | s2 s\f | s1*6 |
  s1*9 | % 43
  s1*9 |
  s1*9 | % 45
  s1*8 | s1\ff | s |
  s1*11 | % 47
  s1 | s2 s\f | s1*3 | s2 s\ff | s1*6 |
  s1*11 | % 49
  s1*9 |
}

bass = \relative {
  \global
  R1*22 | r2 a4 c | b4. 8 g4 e | b' b r2 | r g4.-> 8 |
  c4 c,8(e) g4 g | c,2 r | R1*4 | c8(d) e(f) c4 a |
  c8(d) e(f) e4 c | c' c c c | b b r2 | e,8(fis) g(a) g4 e | e8(dis) g(a) g4 e8. 16 |
  b4 b' b b | 2 r | b r4 r8 b | 2 8(ais) b(cis) | d4. 8 8(cis) d(e) | d4 d r2 |
  f,2 r | f a4. 8 | b4 c b c | g2 r | R1*2 |
  R1*2 | r2 r4 c,8. 16 | 4 4 r c8. 16 | 4 4 r c8. 16 | e4 c' b c |
  g2 r | R1 | r2 bes4. d8 | f,4 a bes c | f, f r2 | R1*2 | % 5a
  R1*2 | r2 a4 c | b4. 8 g4 e | b' b r2 | r g4.-> 8 | c4 c,8(e) g4 4 |
  c,2 r | R1*5 | R1\fermata \section \key f \major \time 6/8 |
  R2.*19 | f4 8 4 8 | 4 8 4 8 | R2. | 4 8 4 8 |
  f4 b8 c4 r8 | R2.*3 | % 9b
  d,4 8 4 8 | 4 8 8 8 r | R2. | % 10a
  r4 r8 ees4 8 | aes8(g) f aes8(bes16 aes) bes(c) | des4. r4 r8 |
  r4 r8 r aes-. c,-. | b-. r r r aes'-. c,-. | bes-. r r r a a' | % 11a
  g4 8 c4 d8 | bes4. c | f,4 r8 r4 r8 |
  R2.*4 | % 12a
  R2. | r8 d' cis b4 g8 | d'(fis,) c' b4 g8 | d' d, r r4 r8 |
  cis16. 32 a'8 cis d(bes) c | f,4. d'4 bes8 | f4 ees'8 d4 bes8 | f4 r8 r4 r8 | % 13a
  R2.*2 | r4 r8 c' 16 16 bes bes aes aes |
  g16 g r8 r aes16 aes g g f f | ees8 r r f16 f e e d d | % 14a
  des8 r r c16 c b b c c | des16 16 r8 r e16 e d d e e |
  f4 r8 ges16 16 16 16 16 16 | 4 8 16 16 16 16 16 16 |
  ges4. 16 16 16 16 16 16 | 4 8 16 16 16 16 16 16 | % 15a
  ges2.~ | 2.( | g2.) |
  f4 8 4 8 | 4 8 4 8 | R2. | f4 8 4 8 |
  f4 b8 c4 r8 | R2.*3 | % 16a
  d,4 8 4 8 | 4 8 8 8 r | R2. |
  r4 r8 ees4 8 | aes(g) f aes4 8 | des4. r4 r8 | % 17a
  r4 r8 r aes c, | b4 r8 r16 aes'16 8 c, | bes4 r8 r a a' |
  g4. c4 d8 | bes4. c | f, r4 r8 | % 18a
  R2.*3 | \section \key ees \major \time 4/4 |
  R1*7 | % 19
  r2 g4 g | g f ees d | ees c c' bes | % 20a
  aes8(g) f(ees) d4 fis | g2 r | r g4 bes |
  aes4 f r2 | r a4 c | b g r2 | % 21a
  R1 | r2 c4 bes | aes c ees ees, |
  aes2 r | R1*3 | % 22a
  r2 c4 c | c bes aes g | aes f r2 |
  r2 g4 g | g f ees d | ees c r2 | % 23a
  r2 bes'4 a | g8(f) e(d) c4 e | f d ees r |
  R1 | d4 fis g8(f) ees(d) | ees4 c g' g, | % 24a
  c2 r | R1*3 |
  R1 | r2 c'4 bes | aes c ees ees, | % 25a
  aes4 4 r2 | R1 | r2 ees'4 des |
  ces4 ees <ges, ges'> ges | ces2 ges4 4 | ces2 r | % 26a
  r2 ges4 4 ces,2 r | r1 \section \key c \major | R1 |
  R1 | r2 r4 r8 b' | 2 r | % 27a
  r2 r4 fis | 4 4 r2 | R1 |
  fis4 g r2 | R1 | fis4 g r2 | % 28a
  r2 g4 aes | r2 b2-> | r2 r4 r8 g \section \key ees \major |
  c2. r4 | R1 | r2 g4 4 | % 29a
  ees4 g g c | b g b b | d b b g |
  c4 c, r2 | g'4 ees' bes c | bes2 2 |
  ees,2 r | r bes'4 ces | ces d f bes, | % 30a
  ees4 4 r2 | r4 bes8 8 aes4 ces | r4 d8 d f f bes, bes |
  ees4 ees, r2 | fis4 4 a gis | cis4. 8 4. 8 |
  fis,2 r4 r8 cis' | 2-> cis,4 r8 d' | 4-> 8 8 gis,8 8 cis8 8 | % 31a
  fis,8 8 d'2-> 4 | g,4 g r r8 d' | 2-> d,4 r8 ees' |
  ees4 c8 8 a a d d | g, g ees'2-> 8 8 | aes,2 r4 a8. 16 |
  bes4 4 r8 b b b | c2 r4 cis8. 16 | d4. 8 4 8 8 | g,2 r | % 32a
  ees'2. 4 | aes,2 c | d1 | 2 2 |
  g,1 | R1*3 | R1\fermata \section \key g \major \time 3/4 |
  R2.*22 | % 33
  R2.*23 |
  r4 e4. 8 | 4(d) r | cis2 c4 | b2 r4 | % 35a
  r4 r8. gis'16 8. 16 | a4 a,8. fis'16 8. 16 | g4 g, r8. b'16 |
  c8. b16 a8.(g16) fis8.(e16) | b2 r4 | R2.*2 |
  c2 4 | 2 4 | cis2.~ | 2. | b2 ais4 | % 36a
  b2 4 | e2 r4 | R2.*3 |
  R2. | r4 e g | e(b') b | b(a8 g) fis(e) | dis4 fis r |
  b4(c) c | d8(c b a) g(fis) | e2 fis4 | g8(a) b4 r | % 37a
  b2 4 | d b r | eis,2 fis4 | g2 r4 | b,2 8(cis) |
  d2 cis4 | fis8. g16 fis4 ais, | b2 r4 | r b'4. a8 |
  g8(fis) e4 r | r g4. fis8 | 4 e r | r ais, b | c2 r4 | % 38a
  e2 8(fis) | g2 fis4 | b8. c16 b4 dis, | e2 r4 |
  R2.*5 | R2.\fermata \section \key c \major \time 4/4 |
  R1*9 | % 39
  r2 r4 c8. 16 | 4 4 r4 c8. 16 | 4 4 r c8. 16 | 4 c' b c | % 40a
  g2 r | R1 | r2 bes4. d8 | f,4 a bes c |
  f,4 4 r2 | R1*3 | % 41a
  R1 | r2 a4 c | b4. 8 g4 e | b' b r2 |
  r2 g4. 8 | c,4 e g g, | c2 r | R1 | % 42a
  R1*2 | r2 g'4 e8(d) | c4. 8 a'(g) f(e) | d4 d b' b |
  b4 a8(b) c4 c | 2 e,8(f) e(d) | c4 d8(e) f4 ees | d c' b8(a) g(a) |
  b8(c) b(a) g(a) g(f) | e4 c'8(b) a4. g8 | f4 fis(g8 f e d | % 43a
  e8 f e d c4) d | e r r2 | R1 |
  R1 | r2 g4 e8(d) | c4. 8 a'(g) f(e) |
  d4 d b' b | b(a8 b c4 b8 c | cis4) b8(cis) d2 | % 44a
  R1 | r4 r8 e, a(g) fis(e) | d4 4 4 c8(d) |
  e4 e e d8(e) | f4 e8(f) fis4 e8(fis) | g4 4 2 |
  r2 fis4 d8(c) | b4. 8 g'8(fis) e(d) | c4 c a' g8(a) | % 45a
  b4 b b a8(b) | c4 4 4. 8 | b2 b,4. 8 |
  b1~ | 2 4. 8 | 1~ |
  b2 4. 8 | 4 b' b b | c2 4 des | c2 c,4. 8 | % 46a
  c1~ | 2 4. 8 | 1~ |
  c8 8 8 8 2 | c'4-> 4 4 b8(c) | cis4-> 4 4 r |
  d4 d d cis8(d) | 4 4 4. 8 | e4 4 d(c) | g-> fis8(g) a4 r | % 47a
  g4 fis8(g) a4 r8 a | g4-> fis8(g) aes4 r8 8 | g4 fis8(g) aes4.-> 8 |
  g2 r | R1*3 |
  R1 | r2 g4-> e8(d) | c4. 8 a'(g) f(e) | d4 d b' b | % 48a
  b4 a8(b) c4 4 | 2 4-> cis | d d d d | g,1~ |
  g4. 8 2 | c4-> b8(c) d4 r | c-> b8(c) d4 r | c b8(c) ees2~ |
  ees2. ees,4 | d2. 4 | g,4(b c) e8(f) | % 49a
  g4. 8 2 | c4-> a8(g) fis4 r | c'4-> a8(g) fis4 r | 2 f |
  e2. 4 | 2 2 | cis2. 4 | d2 f |
  g1 | g, | c4 r g'4. 8 | c4 r g4. 8 | % 50a
  c1~ | 1~ | 4 r r2 | R1 | R1\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day.
  Strike your cym -- bals, He -- brew maid -- ens,
  strike the cym -- bals, maid -- ens
  Mi -- riam bids raise up this song,
  Mi -- riam bids raise up this song;
  Hail! the Lord!
  Migh -- ty is the Lord for ev -- er.
  Hail! Hail! Migh -- tier hail we Him to -- day.
  Strike the cym -- bals, He -- brew maid -- ens,
  Mi -- riam bids raise up this song;
  Migh -- ty is the Lord for ev -- er,
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day.
  Shep -- herd! Thou hast led us on -- ward,
  Strong thine arm and keen thine eye;
  Thou hast led Thy cho -- sen peo -- ple,
  Fire by night and cloud __ by day,
                                % 11a
  Strong Thine arm, strong Thine arm,
  strong Thine arm and keen Thine eye,
  Thine eye;
                                % 12b
  At Thy word, Thy word the sea o -- bed -- ient
  Parts and leaves a path -- way dry,
  parts and leaves a path -- way dry,
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
  stand up -- right as crys -- tal walls,
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
                                % 15a
  At Thy blast the floods con -- geal -- ing,
  Stand up -- right as crys -- tal walls,
  Thro’ the seas we pass on dry land,
  Trust -- ing in Thy voice which calls.
  Thro’ the seas we pass on dry land,
  % 17a
  Trust -- ing in Thy voice which calls.
  trust -- ing Thee, the voice which calls,
  trust -- ing Thee, Thee, the voice which calls.
                                % 20a
  As we pass the sky grows dark -- er,
  Voi -- ces shout, “We will pur -- sue,”
  Ar -- mour gleam -- ing, trum -- pets clang -- ing,
  Phar -- aoh’s host bursts on the view.
                                % 22b
  Lord of hosts, this hour we pe -- rish.
  Lord of hosts, this hour we pe -- rish.
  Help us, Lord, our rock, our rock prove true.
                                % 24a
  Help us, Lord, our rock, our rock prove true.
                                % 25a
  Voi -- ces shout till press -- ing on -- ward,
  Will pur -- sue and o -- ver -- take,
  o -- ver -- take, o -- ver -- take,
                                % 27a
  But hark! what sigh -- ings!
  wail -- ings! moan -- ings! curs -- ings!
  Hark! the storm!
                                % 29a
  ’Tis the Lord in all His fu -- ry,
  ’Tis the Lord in all His fu -- ry,
  Head -- long rush the pent -- up waves.
  Pha -- raoh’s cha -- riots, horse and ri -- der,
  Migh -- ty wa -- ters,
  migh -- ty wa -- ters o -- ver -- whelm them,
  Fear -- ful -- ness and dread up -- on them fall,
                                % 31a
  By dark -- ness, by dark -- ness and hor -- ror
  are they smit -- ten,
  Drown’d the cap -- tains,
  By dark -- ness, by dark -- ness and hor -- ror
  are they smit -- ten,
  Drown’d, drown’d the host,
  Drown'd the cap -- tains, and drown’d the host,
  drown'd the cap -- tains, and drown’d the host,
                                % 32b
  drown'd the cap -- tains, drown’d, drown’d the host,
                                % 35a
  E -- gypt’s King, E -- gypt’s King,
  As lead, as lead sinks he,
  sinks he, down, down,
  Down in the migh -- ty __ flood.
                                % 36a
  Earth hath swal -- low’d all, __
  earth hath swal -- low’d all.
  God no more her tide __ re -- strain -- ing,
  All her shores __ the sea re -- gain -- ing,
  Ne’er re -- stor -- eth king or slave,
  Her sad waste at once both shroud and grave,
  Ne’er re -- stor -- eth,
  ne’er re -- stor -- eth king or slave,
  Her sad waste at once both shroud and grave.
                                % 49a
  Strike your cym -- bals, He -- brew maid -- ens,
  Mi -- riam bids raise up this song;
  Migh -- ty is the Lord for ev -- er,
                                % 41b
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day,
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we Him to -- day,
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier hail we
  migh -- tier hail we Him to -- day,
  Hail __ we Him,
                                % 43c
  migh -- ty is the Lord for ev -- er,
  migh -- ty, migh -- ty Lord!
  the Lord for ev -- er migh -- ty is the Lord,
  the Lord for ev -- er migh -- ty is,
                                % 45a
  migh -- ty is the Lord for ev -- er,
  migh -- ty, migh -- ty, migh -- ty,
  hail we Him to -- day,
  hail we Him, __ hail we Him, __
                                % 46a
  migh -- ty, migh -- ty is the Lord,
  is the Lord, hail we Him,
  __ hail we Him __ the migh -- ty Lord,
  migh -- tier hail we Him to -- day,
                                % 47a
  migh -- tier hail we Him to -- day,
  the migh -- ty Lord, hail we Him,
  hail we Him the migh -- ty Lord,
  the migh -- ty, migh -- ty Lord.
                                % 48a
  Migh -- ty is the Lord for ev -- er,
  Migh -- tier, migh -- tier hail we Him,
  migh -- tier hail we Him to -- day, __
  to -- day, hail we Him, hail we Him,
  migh -- ty, migh -- ty Lord,
  the migh -- ty, migh -- ty Lord,
  hail we Him, hail we Him,
  hail we Him the migh -- ty Lord,
  the migh -- ty, migh -- ty Lord,
  hail we Him migh -- ty Lord! __
}

wordsBassMidi = \lyricmode {
  "Migh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day. "
  "\nStrike " "your " cym "bals, " He "brew " maid "ens, "
  "\nstrike " "the " cym "bals, " maid "ens "
  "\nMi" "riam " "bids " "raise " "up " "this " "song, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
  "\nHail! " "the " "Lord! "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er. "
  "\nHail! " "Hail! " Migh "tier " "hail " "we " "Him " to "day. "
  "\nStrike " "the " cym "bals, " He "brew " maid "ens, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day. "
  "\nShep" "herd! " "Thou " "hast " "led " "us " on "ward, "
  "\nStrong " "thine " "arm " "and " "keen " "thine " "eye; "
  "\nThou " "hast " "led " "Thy " cho "sen " peo "ple, "
  "\nFire " "by " "night " "and " "cloud "  "by " "day, "
                                % 11a
  "\nStrong " "Thine " "arm, " "strong " "Thine " "arm, "
  "\nstrong " "Thine " "arm " "and " "keen " "Thine " "eye, "
  "\nThine " "eye; "
                                % 12b
  "\nAt " "Thy " "word, " "Thy " "word " "the " "sea " o bed "ient "
  "\nParts " "and " "leaves " "a " path "way " "dry, "
  "\nparts " "and " "leaves " "a " path "way " "dry, "
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
  "\nstand " up "right " "as " crys "tal " "walls, "
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
                                % 15a
  "\nAt " "Thy " "blast " "the " "floods " con geal "ing, "
  "\nStand " up "right " "as " crys "tal " "walls, "
  "\nThro’ " "the " "seas " "we " "pass " "on " "dry " "land, "
  "\nTrust" "ing " "in " "Thy " "voice " "which " "calls. "
  "\nThro’ " "the " "seas " "we " "pass " "on " "dry " "land, "
  % 17a
  "\nTrust" "ing " "in " "Thy " "voice " "which " "calls. "
  "\ntrust" "ing " "Thee, " "the " "voice " "which " "calls, "
  "\ntrust" "ing " "Thee, " "Thee, " "the " "voice " "which " "calls. "
                                % 20a
  "\nAs " "we " "pass " "the " "sky " "grows " dark "er, "
  "\nVoi" "ces " "shout, " "“We " "will " pur "sue,” "
  "\nAr" "mour " gleam "ing, " trum "pets " clang "ing, "
  "\nPhar" "aoh’s " "host " "bursts " "on " "the " "view. "
                                % 22b
  "\nLord " "of " "hosts, " "this " "hour " "we " pe "rish. "
  "\nLord " "of " "hosts, " "this " "hour " "we " pe "rish. "
  "\nHelp " "us, " "Lord, " "our " "rock, " "our " "rock " "prove " "true. "
                                % 24a
  "\nHelp " "us, " "Lord, " "our " "rock, " "our " "rock " "prove " "true. "
                                % 25a
  "\nVoi" "ces " "shout " "till " press "ing " on "ward, "
  "\nWill " pur "sue " "and " o ver "take, "
  "\no" ver "take, " o ver "take, "
                                % 27a
  "\nBut " "hark! " "what " sigh "ings! "
  "\nwail" "ings! " moan "ings! " curs "ings! "
  "\nHark! " "the " "storm! "
                                % 29a
  "\n’Tis " "the " "Lord " "in " "all " "His " fu "ry, "
  "\n’Tis " "the " "Lord " "in " "all " "His " fu "ry, "
  "\nHead" "long " "rush " "the " pent "up " "waves. "
  "\nPha" "raoh’s " cha "riots, " "horse " "and " ri "der, "
  "\nMigh" "ty " wa "ters, "
  "\nmigh" "ty " wa "ters " o ver "whelm " "them, "
  "\nFear" ful "ness " "and " "dread " up "on " "them " "fall, "
                                % 31a
  "\nBy " dark "ness, " "by " dark "ness " "and " hor "ror "
  "\nare " "they " smit "ten, "
  "\nDrown’d " "the " cap "tains, "
  "\nBy " dark "ness, " "by " dark "ness " "and " hor "ror "
  "\nare " "they " smit "ten, "
  "\nDrown’d, " "drown’d " "the " "host, "
  "\nDrown'd " "the " cap "tains, " "and " "drown’d " "the " "host, "
  "\ndrown'd " "the " cap "tains, " "and " "drown’d " "the " "host, "
                                % 32b
  "\ndrown'd " "the " cap "tains, " "drown’d, " "drown’d " "the " "host, "
                                % 35a
  "\nE" "gypt’s " "King, " E "gypt’s " "King, "
  "\nAs " "lead, " "as " "lead " "sinks " "he, "
  "\nsinks " "he, " "down, " "down, "
  "\nDown " "in " "the " migh "ty "  "flood. "
                                % 36a
  "\nEarth " "hath " swal "low’d " "all, " 
  "\nearth " "hath " swal "low’d " "all. "
  "\nGod " "no " "more " "her " "tide "  re strain "ing, "
  "\nAll " "her " "shores "  "the " "sea " re gain "ing, "
  "\nNe’er " re stor "eth " "king " "or " "slave, "
  "\nHer " "sad " "waste " "at " "once " "both " "shroud " "and " "grave, "
  "\nNe’er " re stor "eth, "
  "\nne’er " re stor "eth " "king " "or " "slave, "
  "\nHer " "sad " "waste " "at " "once " "both " "shroud " "and " "grave. "
                                % 49a
  "\nStrike " "your " cym "bals, " He "brew " maid "ens, "
  "\nMi" "riam " "bids " "raise " "up " "this " "song; "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
                                % 41b
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day, "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we " "Him " to "day, "
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier " "hail " "we "
  "\nmigh" "tier " "hail " "we " "Him " to "day, "
  "\nHail "  "we " "Him, "
                                % 43c
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "ty, " migh "ty " "Lord! "
  "\nthe " "Lord " "for " ev "er " migh "ty " "is " "the " "Lord, "
  "\nthe " "Lord " "for " ev "er " migh "ty " "is, "
                                % 45a
  "\nmigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nmigh" "ty, " migh "ty, " migh "ty, "
  "\nhail " "we " "Him " to "day, "
  "\nhail " "we " "Him, "  "hail " "we " "Him, " 
                                % 46a
  "\nmigh" "ty, " migh "ty " "is " "the " "Lord, "
  "\nis " "the " "Lord, " "hail " "we " "Him, "
   "\nhail " "we " "Him "  "the " migh "ty " "Lord, "
  "\nmigh" "tier " "hail " "we " "Him " to "day, "
                                % 47a
  "\nmigh" "tier " "hail " "we " "Him " to "day, "
  "\nthe " migh "ty " "Lord, " "hail " "we " "Him, "
  "\nhail " "we " "Him " "the " migh "ty " "Lord, "
  "\nthe " migh "ty, " migh "ty " "Lord. "
                                % 48a
  "\nMigh" "ty " "is " "the " "Lord " "for " ev "er, "
  "\nMigh" "tier, " migh "tier " "hail " "we " "Him, "
  "\nmigh" "tier " "hail " "we " "Him " to "day, " 
  "\nto" "day, " "hail " "we " "Him, " "hail " "we " "Him, "
  "\nmigh" "ty, " migh "ty " "Lord, "
  "\nthe " migh "ty, " migh "ty " "Lord, "
  "\nhail " "we " "Him, " "hail " "we " "Him, "
  "\nhail " "we " "Him " "the " migh "ty " "Lord, "
  "\nthe " migh "ty, " migh "ty " "Lord, "
  "\nhail " "we " "Him " migh "ty " "Lord! " 
}

\include "Miriam-prh1.ly"

pianoRHtwo = \relative {
  \global \vt
  s1*4 | s4 a' s2 |
  s1*5 |
  s1*4 |
  s2. <a cis>4 | s1 | s2. <c e>4 | s1 |
  s1*3 | s4 g s2 | % 2a
  <e g>2 s | s1*3 |
  s4 g s2 | s1*3 |
  s4 g s2 | s1*3 | % 3a
  s1*4 |
  s1*4 |
  s1*3 | s2. <c f>4 | % 4a
  s4 g s2 | s1*3 |
  s1*8 | % 5
  s1 | s2. <c e>4 | s1*2 | % 6a
  s1*2 | s4 g s2 | s1*2 |
  s1*2 | s4 g s2 | s1 | % 7a
  s1*2 | s4 g s2 | s1*3 |
  s2.*3 | f4 8 f e f16 g |
  s2.*3 |
  f4. f | f4 a8 s4 bes8 | bes16 g a c bes a a8(g4) | % 8a
  s2.*2 | s4. s4 a16 g |
  f8. a16 g bes a g f4 | f4 8 f fis <g bes> | f16 bes <a c> bes q <aes d> s4. |
  s2. | e8 f f f a g | f f f f a g |
  s2.*3 | f4. f | % 9a
  f4 a8 s4 bes8 | bes16 g a c bes a a8(g4) | s2.*2 |
  s4. bes4 a16 g | f8. a16 g bes a g f4 | 4 8 f <fis c'> <g bes> | % 10a
  f16 bes <a c> bes q <aes d> g8 f ees | ees8 <e bes'> <f aes> <ges aes>4 8 | s2. |
  s2.*6 | % 11
  s2.*2 | s4. <cis, e>8 d4 | <d g>4 d8 s4. | s2.*4 |
  s2.*6 | <<{\vf c2.} \new Voice {\vt <e g>4 \ov r8 r4 r8}>> | % 13
  \vt <g bes>4.(<f aes>) | <ees ges a>4.(<d f bes>) | % 14a
  <des f b>4.(<c e c'>) | s2.
  s2.*2 |
  s2.*8 | f4. r4 f8 | % 15
  f4 a8 s4 bes8 | 16 g a c bes a16 8 g r | s2.*2 | % 16a
  s4. bes4 a16 g | f8. a16 g bes a g f8 r | f4 8 f fis <g bes> |
  f16 bes a bes a aes g8 f ees | ees e f <ges a>4 8 | s2. | % 17a
  s2.*3 |
  s2.*5 | s4. a,8 b c \section \key ees \major \time 4/4 | % 18
  s1*7 |
  s1*6 | % 20
  s1*6 |
  s1*7 | % 22
  s1*6 |
  s1*7 | % 24
  s1*6 |
  s1*6 \section \key c \major | s1 | % 26
  s1*6 |
  s1*6 \section \key ees \major | % 28
  s1*9 |
  s1*9 | % 30
  s1*9 |
  s1*13 \section \key g \major \time 3/4 | % 32
  s2.*3 | d4(c8) s4. | s2. % 33a
  s2.*3 | e2. | s2. |
  s2 <e b'>4 | q4~e <d a'> | s2.*2 |
  s2.*4 |
  s2.*4 |
  s2.*13 | e8(fis g4) r4 | s2.*5 | <b, d>2(<ais cis>4) | b4 s2 | b4 s2 | s2. | % 34
  s2.*2 | s4 b' a | s2.*8 |
  s2.*15 | % 36
  s2.*9 | s2 b,8 ais | b4 s2 | fis'8. g16 s2 | s2. |
  s2.*6 | s2 e8 dis | e4 s2 | e4 s2 | s2. e2. | e | dis4 e2~ | 2 s4 | s2. \section \key c \major \time 4/4 | % 38
  s1*4 | s4 a s2 | s1*4 |
  s1*5 | s2. <a cis>4 | s1 | s2. <c e>4 | % 40
  s1*4 | s4 g s2 | s1*3 |
  s1 | s4 g s2 | s1*3 | s4 g s2 | s1*7 | % 42
  s1 | s2 c,4 cis | d8 c s2 f4 | % 43a
  e8 d c d e4 f | <g c>2 e8 f e d | g4 gis a8 g fis e |
  d4 c' b8 a g a | b c b a g a g f | e4 c'8 b a4. g8 |
  s1 | e8 f g f e2 | s1 | % 44a
  s1 | s2 c | r4 r8 a d c b a |
  <<{\vth g'4 g g s} \new Voice {\vt r4 r8 b, e d c b}>> \vt | s2 a'4 g8 a | g4. 8 4 e8 d |
  c4. 8 a' g fis e | d4 d b' a8 b | s2 fis8 e d c | % 45a
  s1 | a'4 g8 a ais4. 8 | b2 s |
  s2 e,4 dis8 e | fis4 4 s2 | s g4 fis8 g |
  a4 a ais ais | s1*3 | % 46a
  s2 f4 e8 f | g4 g s2 | s a4 g8 a |
  bes4 4 f g8 aes | s1*2 |
  s1*10 | e4 e e d8 e | % 47
  f4 f fis8 d e fis | s1*11 |
  s1*11 | % 49
  s1*9 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*2 | s2 s\fz | s1 | s2 s\p | s1*7 | s2 s4.\> s8\! | s1 | s2 s4.\f\> s8\! | s1 | s4 s2.\p |
  s1*2 | s2 s4.\fz\> s8\! | s1 | s2 s\f | s1*2 | s2 s4.\fz\> s8\! | s1 | s2 s\ff | s1 | s2 s\fz | % 2
  s1*5 | s1\fz | s1*3 | s1\fz | s1*2 |
  s1*5 | s4 s2.\decresc | s2 s\p | s1 | % 4
  s1*2 | s2 s\f | s1*3 | s2 s4.\p\> s8\! | s1 |
  s2 s4.\f\> s8\! | s1 | s4 s2.\p | s1 | s4. s8\f s2 | s2 s\fp | s1 | s2 s\f | s1 | % 6
  s1 | s2 s4.\fz\> s8\! | s1*3 | s4 s2.\fz | s1 | s2 s4.\p\> s8\! | s1*2 | s2.\p | s | s4.\< s\> | s2.\! | s2.\p | s2.*2 |
  s2.*3 | s2.\pp | s2.*3 | s2.\cresc | s4. s\fz | s2. | s\mf | s4.\< s\> | % 8
  s2.\p | s2.*5 | s2.\pp | s2. |
  s2.*2 | s4. s\cresc |s s\f | s2.*2 | % 10
  s4 s\p\> s\f | s s\p\> s\f | s s\> s\< | s2.\! | s\ff | s\f |
  s2. | s\p | s\p | s | s2 s8 s\f | s2.*2 | s8 s\p s2 | % 12
  s2\p s8 s\f | s2.*4 | s4\fz s4. s16 s\fp | s2. |
  s2.\fp | s\fp | s\fp | s4.\fp s\cresc | s\fz s\f\> | s\! s\decresc | % 14
  s2.\p | s4.\< s\> | s2.\! | s4.\< s\! | s2. | s\p | s2.*3 |
  s2.*2 | s2.\p | s2.*3 | s4. s\cresc | % 16
  s4. s\f | s2.*2 | s4 s\p\> s\f | s s\p\> s\f | s s\> s\< |
  s2.\! | s\ff | s\f | s | s\p | s\pp | % 18
  s1\p | s1*6 |
  s1*6 | % 20
  s1*2 | s2. s4\cresc | s1 | s2 s\f | s1 |
  s4 s2.\ff | s1*6 | % 22
  s1*6 |
  s1*3 | s1\ff | s1*2 | s4 s2.\p | % 24
  s2. s4\cresc | s2 s\f | s1 | s2 s\mf | s2. s4\cresc | s2 s\ff |
  s1*4 | \tuplet 3/2 {s8\fz s\> s} s2 s4\! | s4 s2.\decresc | s1\p | % 26
  s1*4 | s2. s4\cresc | s1 |
  s1*3 | s1\f | s2. s4\cresc | s1 | % 28
  s2\ff s4\fz s\fz | s\fz s\fz s\fz s\ff\> | s4\! s2.\< | s1\fz | s2. s4\fz | s4 s2.\< | s1\ff | s1*2 |
  s1\fz | s2. s4\fz | s1\< | s\fz | s2. s4\fz | s1\< | s1\fz | s1*2 | % 30
  s1\fz | s2. s4\fz | s1\< | s\fz | s\fz | s2. s4\fz | s4 s2.\< | s1\fz | s2\fz\> s\p |
  s2. s4\cresc | s1 | s\f | s\fz | s16\ff s\fz s2.. | s1*3 | s1\fz | s\fz | s2 s\p | s1*2 | % 32
  s2.\f | s2.*3 | s2.\fz | s\fz | s4. s\p | s2.*2 | s4. s\f | s s\p | s2.*3 | s2 s8. s16\f | s2. | s4. s\p | s2.\pp | s2. | s\fz | s | s\p |
  s2.\fz | s4. s\f | s2. | s\fz | s\fz | f\p | s\pp | s2.*15 | s2 s4\f | % 34
  s4.. s16\ff s4 | s2.*5 | s8. s16\< s2 | s2\> s4\! | s2 s8. s16\ff | s2. | s4. s\p |
  s2.\pp | s | s\fz\> | s\dim | s\p | s\fz | s4.. s16\f s4 | s2. | s\fz | s\fz | s\p | s\pp | s2.*3 | % 36
  s2.*13 |
  s2.*9 | s2.\pp | s2.*5 | % 38
  s1\f | s1*2 | s2 s\fz | s1 | s2 s\p | s1*3 |
  s2 s\f | s1*3 | s2 s4.\p\> s8\! | s1 | s2 s4.\f\> s8\! | s1 | % 40
  s4 s2.\p | s1 | s4. s8\f s2 | s2 s4.\fz s8\p | s1 | s2 s\f | s1*2 |
  s2 s\fz | s1*3 | s2 s\fz | s1*8 | % 42
  s1*9 |
  s1*9 | % 44
  s1*9 |
  s1*8 | s1\ff | s1 | % 46
  s1*11 |
  s1*11 | s2 s\fz | % 48
  s1*6 | s1\p | s2 s\cresc | s1 | s\f | s |
  s1*9 | % 50
}

\include "Miriam-plh1.ly"

pianoLHtwo = \relative {
  \global \vt
  s1*410
}

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
        }
        <<
%          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
%          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
%          \addlyrics {\tiny \wordsSolo}
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
%          \magnifyStaff #4/7
%            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
%            \addlyrics {\tiny \wordsSop}
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
%          \magnifyStaff #4/7
%            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
%            \addlyrics {\tiny \wordsAlto}
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
%            \magnifyStaff #4/7
            \clef "treble_8"
%            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
%            \addlyrics {\tiny \wordsTenor}
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
%          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
%          \new Dynamics \teeny \dynamicsPiano
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
%            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \paper {
    output-suffix = single-solo
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
%            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
%            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
%            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
%            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
%            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff $3/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
%            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
%            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \paper {
    output-suffix = single-sop
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
%          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
%          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
%            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
%            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
%            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
%            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff $3/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
%            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
%            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \paper {
    output-suffix = single-alto
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
%          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
%          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
%            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
%            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
%            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff $3/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
%            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
%            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \paper {
    output-suffix = single-bass
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
%          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
%          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
%            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
%            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
%            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
%            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
%            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \paper {
    output-suffix = single-tenor
  }
  \score {
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
%          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
%          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
%            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
%            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
%            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff $3/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
%            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
%            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \paper {
    output-suffix = singlepage
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
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \paper {
    output-suffix = singlepage-solo
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
%            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
%            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
%            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
%            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
%            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
%          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
%          \addlyrics {\tiny \wordsSolo}
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
%            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
%            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
%            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
%            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
%          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
%          \addlyrics {\tiny \wordsSolo}
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
%            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
%            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
%            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
%          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
%          \addlyrics {\tiny \wordsSolo}
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
%            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
%            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
%            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
%          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
%          \addlyrics {\tiny \wordsSolo}
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} \teeny \dynamicsSop
%            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
%            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} \teeny \dynamicsAlto
%            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
%            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \teeny \dynamicsTenor
%            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
%            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            \accidentalStyle Score.modern
          }
          <<
          \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  \paper {
    output-suffix = midi-solo
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
          midiInstrument = flute
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
         \addlyrics \wordsSoloMidi
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    output-suffix = midi-sop
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
          midiInstrument = flute
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
          midiInstrument = flute
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
          midiInstrument = flute
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          instrumentName = "Soprano Solo."
          shortInstrumentName = "Sol."
          midiInstrument = flute
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \solo
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \dynamicsPiano
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
