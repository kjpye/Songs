\version "2.25.9"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Scarborough Fair"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Old English Song"
  arranger    = "Arr. by Willard a. Palmer"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key g \major
  \time 3/4
}

TempoTrack = {
  \tempo "Andante con moto" 4=112-126
  s2.*93
  \set Score.tempoHideNote = ##t
  \tempo 4=115 s2.*4 \tempo 4=119
  s2.*8
  \tempo 4=117 s2. \tempo 4=115 s2. \tempo 4=68 s2.
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "2a" } s2.*4
  \mark \markup { \circle "2b" } s2.*4
  \mark \markup { \circle "2c" } s2.*4
  \mark \markup { \circle "3a" } s2.*4
  \mark \markup { \circle "3b" } s2.*4
  \mark \markup { \circle "3c" } s2.*4
  \mark \markup { \box    "A"  } s2.*4
  \mark \markup { \circle "4b" } s2.*4
  \mark \markup { \circle "4c" } s2.*4
  \mark \markup { \circle "5a" } s2.*4
  \mark \markup { \circle "5b" } s2.*4
  \mark \markup { \box    "B"  } s2.*4
  \mark \markup { \circle "6a" } s2.*4
  \mark \markup { \circle "6b" } s2.*4
  \mark \markup { \circle "6c" } s2.*4
  \mark \markup { \circle "7a" } s2.*4
  \mark \markup { \box    "C"  } s2.*4
  \mark \markup { \circle "7c" } s2.*4
  \mark \markup { \circle "8a" } s2.*4
  \mark \markup { \circle "8b" } s2.*4
  \mark \markup { \circle "8c" } s2.*4
  \mark \markup { \box    "D"  } s2.*5
  \mark \markup { \circle "9b" } s2.*4
  \mark \markup { \circle "9c" } s2.*5
  \mark \markup { \circle "10a" } s2.*5
  \mark \markup { \circle "10b" } s2.*5
}

solo = \relative {
  R2.*93 \break
  r4^\markup\italic "meno mosso ed espressivo"^\markup "Soprano Solo:" r b' % 9c
  e2 4
  d2 b4
  b4 a g
  fis2.~^\markup\italic "a tempo"
  fis4 r d^\p % 10a
  e2 b'4
  a4 g2
  fis4 e d^\<
  e2\! 4
  b'2 4 % 10b
  fis4. g8 fis4
  e2.~\omit\dim^\markup\italic "dim. e ritard."
  e2.~
  e2.\fermata\omit\pp
}

soloWords = \lyricmode {
  Then come to me for your cam -- bric shirt, __
  And then you'll be a true love,
  Oh are you goin' to Scar -- bo -- rough fair? __
}

soloWordsMidi = \lyricmode {
  "Then " "come " "to " "me " "for " "your " cam "bric " "shirt, " 
  "\nAnd " "then " "you'll " "be " "a " "true " "love, "
  "\nOh " "are " "you " "goin' " "to " Scar bo "rough " "fair? " 
}

sopranoI = \relative {
  \global
  \oneVoice R2.*4
  \voiceOne e'2 4 % 2b
  b'2 4
  fis4. g8 fis4
  e2.~
  e2. % 2c
  \oneVoice r4 \voiceOne b' d
  e2 d4
  b4 cis a
  b2.~ % 3a
  b2\breathe b4
  e2 e,4
  g2 b4
  b4 a g % 3b
  fis2.~
  fis2 d4
  e2 b'4
  a2 g4 % 3c
  fis4 e d
  e2.~
  e2. \bar "||" \break
  \oneVoice R2. % 4a
  R2.
  R2.
  R2.
  R2. % 4b
  r4 \voiceOne b'4  d
  e2 d4
  b4 cis a
  b2.~ % 4c
  b2 \oneVoice r4
  R2.*4 \voiceOne
  r4 r d, % 5a++
  e2 b'4
  a2 g4 % 5b
  fis4 e d
  e2.~
  e2. \bar "||" \break
  e4 e e % 5c
  b'4 b b
  fis4 g fis
  e2.~
  e2. % 6a
  \oneVoice r4 \voiceOne b' d
  e2 d4
  b4 cis a
  b2.~ % 6b
  b2 \breathe b4
  e2 e,4
  g4 b2
  b4 a g % 6c
  fis2.~
  fis2 d4
  e2 b'4
  a4 a g % 7a
  fis4 e d
  e2.~
  e2. \bar "||" \break
  e4^\markup\italic {più \dynamic f} e e % 7b
  b'2 4
  fis4 g fis
  e2.~
  e2. % 7c
  \oneVoice r4 \voiceOne b' d
  e2 d4
  b4 cis a
  b2.~ % 8a
  b2 \breathe b4
  e2 e,4
  g2 b4
  b4 a g % 8b
  fis2.~
  fis2 d4
  e2 b'4
  a4 a g % 8c
  fis4 e d
  e2.~
  e2. \bar "||" \break
  e4 e e % 9a
  b'2 4
  fis4 g fis
  e2.~
  e2.
  \oneVoice r4 \voiceOne b' d % 9b
  e2 d4
  b4 cis a
  b2.~
  b2 \oneVoice r4 % 9c
  R2.*4 \voiceOne 
  fis4(e) d % 10a
  e2 g4
  fis2 g4
  fis4 e d
  e2.~
  e2.~ % 10b
  e2.~
  e2.~ ^\markup\italic "dim. e ritard."
  e2.~
  e2.\fermata
  \bar "|."
}

sopranoII = \relative {
  \global
  \voiceTwo
  s2.*4
  e'2 4 % 2b
  b'2 4
  fis4. g8 fis4
  e2.~
  e2. % 2c
  s4 g g
  g2 4
  g4 a e
  g4 g fis % 3a
  e2 \breathe g4
  g2 e4
  e2 g4
  g4 fis e % 3b
  d2.~
  d2 4
  e2 b'4
  a2 g4 % 3c
  fis4 e d
  e2.~
  e2.
  s2.*5
  s4 g g % 4b+
  g2 4
  g4 a e
  g4 g fis % 4c
  e2 s4
  s2.
  s2.
  s2. % 5a
  s2.
  fis4( e d)
  e2 b'4
  a2 g4 % 5b
  fis4 e d
  e2.~
  e2. \bar "||"
  R2.*5
  s4 g g % 6a+
  g2 4
  g4 a e
  g4 g fis % 6b
  e2 \breathe g4
  g2 e4
  e4 g2
  g4 fis e % 6c
  d2.~
  d2 d4
  e2 b'4
  a4 a g % 7a
  fis4 e d
  e2.~
  e2. \bar "||"
  e4 e e % 7b
  g4(fis) e
  d4 d d
  e2.~
  e2. % 7c
  s4 g g
  g2 4
  g4 a e
  g4 g fis % 8a
  e2 \breathe g4
  g2 e4
  e2 g4
  g4 fis e % 8b
  d2.~
  d2 4
  e2 b'4
  a4 a g % 8c
  fis4 e d
  e2.~
  e2. \bar "||"
  e4 e e % 9a
  g4(fis) e
  d4 d d
  e2.~
  e2.
  s4 g g % 9b
  g2 4
  g4 a e
  g4 g fis
  e2 s4 % 9c
  s2.*4
  fis4(e) d % 10a
  e2 4
  d2 e4
  d4 e d
  e2.~
  e2.~ % 10b
  e2.~
  e2.~
  e2.~
  e2.\fermata
}

dynamicsSop = {
  s2.*4
  s2.\p % 2b
  s2.*4
  s4 s2\< % 2c+
  s2.\!
  s2.\>
  s2.\! % 3a
  s2 s4\<
  s2. 
  s2.\!
  s2.\> % 3b
  s2.\!
  s2.*11
  s4 s2\p\< % 4b+
  s2.\!
  s2.\>
  s2.\! % 4c
  s2.*5
  s2\> s4\p % 5a++
  s2.*5
  s2.\mf % 5c
  s2.*4
  s4 s2\p\< % 6a+
  s2.\!
  s2.\>
  s2.\! % 6b
  s2 s4\mf
  s2.*4
  s2 s4\p % 6c++
  s2.*5
  s2.\omit\f % 7b
  s2.*4
  s4 s2\< % 7c+
  s2.\!
  s2.\>
  s2.\! % 8a
  s2.*11
  s2.\p % 9a
  s2.*4
  s4 s2\< % 9b
  s2.\!
  s2.\>
  s2.\!
  s2.*5
  s2.\pp % 10a
  s2.\p
  s2.*5
  s2.\omit\dim
  s2.
  s2.\omit\pp
}

wordsSopAbove = \lyricmode {
  _ _ _ _ _ _ _ _
  Pars -- ley, sage, rose -- ma -- ry and thyme
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _
  Pars -- ley, sage, rose -- ma -- ry and thyme

  And then she'll _ _ _ _ _ _

  \set stanza = "3."
  Oh, will you find me an ac -- re of land, __
  Pars -- ley, sage, rose -- ma -- ry and thyme
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _
  Pars -- ley, sage, rose -- ma -- ry and thyme
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _
  Pars -- ley, sage, rose -- ma -- ry and thyme __
}

wordsSopBelow = \lyricmode {
  \set stanza = "1."
  Are you goin' to Scar -- bo -- rough Fair? __
  Pars -- ley, sage, rose -- ma -- ry,
  rose -- ma -- ry and thyme;
  Re -- mem -- ber me to one who lives there, __
  For once "(s)he" was a true love of mine. __
  Pars -- ley, sage, rose -- ma -- ry,
  rose -- ma -- ry and thyme;

  Ah, __ then she'll be a true love of mine. __
  Pars -- ley, sage, rose -- ma -- ry,
  rose -- ma -- ry and thyme;
  Be -- tween the sea -- foam and the sea sand __
  or nev -- er be a true lov -- er of mine. __

  \set stanza = "4."
  Oh, will you plow __ it with a sheep's horn, __
  Pars -- ley, sage, rose -- ma -- ry,
  rose -- ma -- ry and thyme;
  And sow it all with one pep -- per corn, __
  Or nev -- er be a true lov -- er of mine. __

  \set stanza = "5."
  And when you've done and fin -- ished your work, __
  Pars -- ley, sage, rose -- ma -- ry,
  rose -- ma -- ry and thyme;

  Ah, __ And then you'll be a true love of mine. __
}

wordsSopI = \lyricmode {
  \set stanza = "1."
  Are you goin' to Scar -- bo -- rough Fair? __
  Pars -- ley, sage, rose -- ma -- ry and thyme;
  Re -- mem -- ber me to one who lives there, __
  For once "(s)he" was a true love of mine. __
  Pars -- ley, sage, rose -- ma -- ry and thyme;

  And then she'll be a true love of mine. __

  \set stanza = "3."
  Oh, will you find me an ac -- re of land, __
  Pars -- ley, sage, rose -- ma -- ry and thyme;
  Be -- tween the sea -- foam and the sea sand __
  or nev -- er be a true lov -- er of mine. __

  \set stanza = "4."
  Oh, will you plow it with a sheep's horn, __
  Pars -- ley, sage, rose -- ma -- ry and thyme;
  And sow it all with one pep -- per corn, __
  Or nev -- er be a true lov -- er of mine. __

  \set stanza = "5."
  And when you've done and fin -- ished your work, __
  Pars -- ley, sage, rose -- ma -- ry and thyme;

  Ah, __ And then you'll be a true love of mine. __
}

wordsSopIMidi = \lyricmode {
  \set stanza = "1."
  "Are " "you " "goin' " "to " Scar bo "rough " Fair?
  "\nPars" "ley, " "sage, " rose ma "ry " "and " "thyme; "
  "\nRe" mem "ber " "me " "to " "one " "who " "lives " "there, " 
  "\nFor " "once " "(s)he " "was " "a " "true " "love " "of " "mine. " 
  "\nPars" "ley, " "sage, " rose ma "ry " "and " "thyme; "

  "\nAnd " "then " "she'll " "be " "a " "true " "love " "of " "mine. " 

  "\nOh, " "will " "you " "find " "me " "an " ac "re " "of " "land, " 
  "\nPars" "ley, " "sage, " rose ma "ry " "and " "thyme; "
  "\nBe" "tween " "the " sea "foam " "and " "the " "sea " "sand " 
  "\nor " nev "er " "be " "a " "true " lov "er " "of " "mine. " 

  \set stanza = "4."
  "\nOh, " "will " "you " "plow "  "it " "with " "a " "sheep's " "horn, " 
  "\nPars" "ley, " "sage, " rose ma "ry " "and " "thyme; "
  "\nAnd " "sow " "it " "all " "with " "one " pep "per " "corn, " 
  "\nOr " nev "er " "be " "a " "true " lov "er " "of " "mine. " 

  \set stanza = "5."
  "\nAnd " "when " "you've " "done " "and " fin "ished " "your " "work, " 
  "\nPars" "ley, " "sage, " rose ma "ry " "and " "thyme; "

  "\nAh, "  "And " "then " "you'll " "be " "a " "true " "love " "of " "mine. " 
}

wordsSopII = \lyricmode {
  \set stanza = "1."
  "Are " "you " "goin' " "to " Scar bo "rough " "Fair? " 
  "\nPars" "ley, " "sage, " rose ma "ry, "
  "\nrose" ma "ry " "and " "thyme; "
  "\nRe" mem "ber " "me " "to " "one " "who " "lives " "there, " 
  "\nFor " "once " "(s)he " "was " "a " "true " "love " "of " "mine. " 
  "\nPars" "ley, " "sage, " rose ma "ry, "
  "\nrose" ma "ry " "and " "thyme; "

  "\nAh, "  "then " "she'll " "be " "a " "true " "love " "of " "mine. " 
  "\nPars" "ley, " "sage, " rose ma "ry, "
  "\nrose" ma "ry " "and " "thyme; "
  "\nBe" "tween " "the " sea "foam " "and " "the " "sea " "sand " 
  "\nor " nev "er " "be " "a " "true " lov "er " "of " "mine. " 

  \set stanza = "4."
  "\nOh, " "will " "you " "plow "  "it " "with " "a " "sheep's " "horn, " 
  "\nPars" "ley, " "sage, " rose ma "ry, "
  "\nrose" ma "ry " "and " "thyme; "
  "\nAnd " "sow " "it " "all " "with " "one " pep "per " "corn, " 
  "\nOr " nev "er " "be " "a " "true " lov "er " "of " "mine. " 

  \set stanza = "5."
  "\nAnd " "when " "you've " "done " "and " fin "ished " "your " "work, " 
  "\nPars" "ley, " "sage, " rose ma "ry, "
  "\nrose" ma "ry " "and " "thyme; "

  "\nAh, "  "And " "then " "you'll " "be " "a " "true " "love " "of " "mine. " 
}

wordsSopIIMidi = \lyricmode {
  \set stanza = "1."
  "Are " "you " "goin' " "to " Scar bo "rough " "Fair? " 
  "\nPars" "ley, " "sage, " rose ma "ry, "
  "\nrose" ma "ry " "and " "thyme; "
  "\nRe" mem "ber " "me " "to " "one " "who " "lives " "there, " 
  "\nFor " "once " "(s)he " "was " "a " "true " "love " "of " "mine. " 
  "\nPars" "ley, " "sage, " rose ma "ry, "
  "\nrose" ma "ry " "and " "thyme; "

  "\nAh, "  "then " "she'll " "be " "a " "true " "love " "of " "mine. " 
  "\nPars" "ley, " "sage, " rose ma "ry, "
  "\nrose" ma "ry " "and " "thyme; "
  "\nBe" "tween " "the " sea "foam " "and " "the " "sea " "sand " 
  "\nor " nev "er " "be " "a " "true " lov "er " "of " "mine. " 

  \set stanza = "4."
  "\nOh, " "will " "you " "plow "  "it " "with " "a " "sheep's " "horn, " 
  "\nPars" "ley, " "sage, " rose ma "ry, "
  "\nrose" ma "ry " "and " "thyme; "
  "\nAnd " "sow " "it " "all " "with " "one " pep "per " "corn, " 
  "\nOr " nev "er " "be " "a " "true " lov "er " "of " "mine. " 

  \set stanza = "5."
  "\nAnd " "when " "you've " "done " "and " fin "ished " "your " "work, " 
  "\nPars" "ley, " "sage, " rose ma "ry, "
  "\nrose" ma "ry " "and " "thyme; "

  "\nAh, "  "And " "then " "you'll " "be " "a " "true " "love " "of " "mine. " 
}

alto = \relative {
  \global
  R2.*4
  e'2^\p 4 % 2b
  b'2 4
  fis4. g8 fis4
  e2.~
  e2. % 2c
  r4 g^\< fis
  e2\! 4
  e4^\> e cis
  b2.~\! % 3a
  b2 \breathe e4^\<
  g2 e4
  e2\! g4
  d4^\> d b % 3b
  a2.~\!
  a2 d4
  e2 g4
  fis2 e4 % 3c
  d4 a d
  b2.~
  b2. \bar "||"
  e4^\mf e e % 4a
  b'4 b b
  fis4(g) fis
  e2.~
  e2. % 4b
  r4 g^\p^\< fis
  e2\! e4
  e4^\> e cis
  b2.~\! % 4c
  b2 4^\mf
  e2 4
  g2 b4
  b4 a g % 5a
  fis2.
  d4(^\> e fis)
  e2^\p g4
  fis2 e4 % 5b
  d4 a d
  b2.~
  b2. \bar "||"
  R2.*4 % 5c
  R2. % 6a
  r4 g'^\p^\< fis
  e2\! 4
  e4^\> e cis\!
  b2.~ % 6b
  b2 r4
  R2.
  R2.
  R2. % 6c
  R2.
  r4 r d4^\p(
  e2 g4
  fis2 e4 % 7a
  d4 a d
  b2.~
  b2.) \bar "||"
  e4\omit\f^\markup\italic {più \dynamic f} e e % 7b
  b2 4
  a4 a a
  b2.~
  b2. % 7c
  r4 g'^\< fis
  e2\! 4
  e4^\> e cis\!
  b2.~ % 8a
  b2 \breathe e4
  e2 4
  b2 d4
  d4 d b % 8b
  a2.~
  a2 d4
  e2 g4
  fis4 fis e % 8c
  d4a d
  b2.~
  b2. \bar "||"
  b2.~(% 9a
  b2.
  a2.
  b2.~
  b2.)
  r4 g'^\< fis % 9b
  e2\! 4
  e4^\> e cis\!
  b2.~
  b2 r4 % 9c
  R2.*4
  d4(^\pp e) fis % 10a
  e2 b4
  d2 a4
  a4 a d
  b2.~
  b2.~ % 10b
  b2.~
  b2.~\omit\dim^\markup\italic "dim. e ritard."
  b2.~
  b2.\fermata\omit\pp
  \bar "|."
}

wordsAlto = \lyricmode {
  \set stanza = "1."
  Are you goin' to Scar -- bo -- rough Fair? __
  Pars -- ley, sage, rose -- ma -- ry and thyme __
  Re -- mem -- ber me to one who lives there, __
  For once "(s)he" was a true love of mine. __

  \set stanza = "2."
  Tell her to make me a cam -- bric shirt, __
  Pars -- ley, sage, rose -- ma -- ry and thyme
  One with no seams or fine nee -- dle work,

  Ah, __ then she'll be a true love of mine. __
  Pars -- ley, sage, rose -- ma -- ry and thyme;

  Ah, __
  
  \set stanza = "4."
  Oh, will you plow it with a sheep's horn,
  Pars -- ley, sage, rose -- ma -- ry and thyme;
  And sow it all with one pep -- per corn, __
  Or nev -- er be a true lov -- er of mine. __

  Ah, __
  Pars -- ley, sage, rose -- ma -- ry and thyme;

  Ah, __ And then you'll be a true love of mine. __
}

wordsAltoMidi = \lyricmode {
  \set stanza = "1."
  "Are " "you " "goin' " "to " Scar bo "rough " "Fair? " 
  "\nPars" "ley, " "sage, " rose ma "ry " "and " "thyme " 
  "\nRe" mem "ber " "me " "to " "one " "who " "lives " "there, " 
  "\nFor " "once " "(s)he " "was " "a " "true " "love " "of " "mine. " 

  \set stanza = "2."
  "\nTell " "her " "to " "make " "me " "a " cam "bric " "shirt, " 
  "\nPars" "ley, " "sage, " rose ma "ry " "and " "thyme "
  "\nOne " "with " "no " "seams " "or " "fine " nee "dle " "work, "

  "\nAh, "  "then " "she'll " "be " "a " "true " "love " "of " "mine. " 
  "\nPars" "ley, " "sage, " rose ma "ry " "and " "thyme; "

  "\nAh, " 
  
  \set stanza = "4."
  "\nOh, " "will " "you " "plow " "it " "with " "a " "sheep's " "horn, "
  "\nPars" "ley, " "sage, " rose ma "ry " "and " "thyme; "
  "\nAnd " "sow " "it " "all " "with " "one " pep "per " "corn, " 
  "\nOr " nev "er " "be " "a " "true " lov "er " "of " "mine. " 

  "\nAh, " 
  "\nPars" "ley, " "sage, " rose ma "ry " "and " "thyme; "

  "\nAh, "  "And " "then " "you'll " "be " "a " "true " "love " "of " "mine. " 
}

pianoRHone = \relative {
  \global
  \oneVoice
  r4 <g' b d f>2\arpeggio
  r4 <e g b d>2\arpeggio
  r4 <g, b d fis>2\arpeggio
  r4 <g b d>2\arpeggio
  r4 <g' b e>2\arpeggio % 2b
  r4 <e g b d>2\arpeggio
  r4 <a d fis>2\arpeggio
  r4 <g b e>2\arpeggio~(
  q4 fis' d % 2c
  b4) <g b> \( <g b d>
               <g b e>2 <g d'>4
               <d b'>4 <e cis'> <cis a'>
               <g' b>2.^~ % 3a
               q2. \)
  b,2\( e4
       <e g>2 <d b'>4
       q4 <d a'> <b g'> % 3b
       <a fis'>2. \)
  <a d g>4\arpeggio(fis' d
  <b e>2) <e b'>4 \(
    <fis a>2 <e g>4 % 3c
    <d fis>4 <a e'> <a d>
    <b e>2. \)
  <g b fis'>4\arpeggio(d' e) \bar "||"
  <g, b e>2.\arpeggio % 4a
  q2.\arpeggio
  <fis a d>2.\arpeggio
  <g b e>2.\arpeggio~ \(
    q4 fis' d % 4b
    b4\) <g' b>4\( <g b d>
                   <g b e>2 <g d'>4
                   <d b'>4 <e cis'> <cis a'>
                   <g' b>2.^~ % 4c
                   q2.\)
  e2 \( 4
       <e g>2 <d b'>4
       <d b'>4 <d a'> <b g'> % 5a
       <a fis'>2. \)
  <a d fis>4\arpeggio( e' d
  <b e>2) <e b'>4\(
    <fis a>2 <e g>4 % 5b
    <d fis>4 <a e'> <a d>
    <b e>2.\)
  r4 b(d \bar "||"
  e)   <g b e>2\arpeggio % 5c
  r4 <e g b d>2\arpeggio
  r4 g^(fis)
  r4 <g, b e>2\arpeggio~\(
    q4 fis' d % 6a
    b4 \) <g' b> \(  <g b d>
                 <g b e>2 <g d'>4
                 <d b'>4 <e cis'> <cis a'>
                 <g' b>2.^~ % 6b
                 q2. \)
  b,2 \( e4
         <e g>2 <d b'>4
         q4 <d a'> <b g'> % 6c
         <a fis'>2. \)
  <a d g>4\arpeggio(fis' d
  <b e>2) \( <e b'>4
             <fis a>4 q <e g> % 7a
             <d fis>4 <a e'> <a d>
             <b e>2 \) <g' b fis'>4^>\arpeggio ~
  q4 <g b e> <g b d> \bar "||"
  <e g b>2.\arpeggio % 7b
  g4^(fis e)
  fis4^(e d
  <g, b e>4) b' \( d
                   <g, b fis'>4\arpeggio e' d % 7c
                   b4 \) <g b> \( <g b d>
                                  <g b e>2 <g d'>4
                                  <d b'>4 <e cis'> <e cis' e>\arpeggio
                                  <g b fis'>2.\arpeggio ~ % 8a
                                  q4 \) <g b e>\arpeggio <g b d>\arpeggio
  <g b>2 \( e4
            <e g>2 <d b'>4
            <d b'>4 <d a'> <b g'> % 8b
            <a fis'>2. \)
  <a d g>4\arpeggio( fis' d
  <b e>2) \( <e b'>4
             <f a>4 q <e g> % 8c
             <b fis> <a e'> <a d>
             <b e>2 \) b'4 \(
               d4 cis a \bar "||"
               b4 \) <g b e>2\arpeggio % 9a
  r4 <e g b d>2\arpeggio
  r4 <a d fis>2\arpeggio
  r4 <g b e>2\arpeggio ~ \(
    q4 fis' d
    b4 \) <g b> \( <g b d> % 9b
                   <g b e>2 <g d'>4
                   <d b'>4 <e cis'> <cis a'>
                   <g' b>2.^~
                   q2^\markup\italic "meno mosso" \) <b, e g b>4\arpeggio % 9c
  r4 <e g b e>2\arpeggio
  r4 <d g b d>2\arpeggio
  b'4^\markup\italic "colla voce" ( a g
  <a, d fis>2.\arpeggio^\markup\italic "a tempo" ) 
  q4\arpeggio \( e' d % 10a
                 <b e>2 <e b'>4
                 <fis a>2 <e g>4
                 <d fis>4 <a e'> <a d>
                 <b e>2.~
                 q2.~ % 10b
                 q2. \)
  <e g b>4\arpeggio <fis b fis'>\arpeggio <fis b d>\arpeggio
  <g b e>2.\arpeggio
  <g, b e>2.\arpeggio\fermata
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s2.*12
  b2(d4 % 3a
  e4 fis d
  b2) e4
  s2.*17
  b2(d4 % 4c
  e4 fis d
  b2.)
  s2.*11
  s4 <a d>2\arpeggio % 5c++
  s2.*5
  b2( d4 % 6b
  e4 fis d
  b2) s4
  s2.*10
  <b e>2.\arpeggio % 7b+
  <a d>2.
  s2.*25
  b2(d4 % 9b+++
  e2) s4 % 9c
  s2.*14
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mp
  s2.
  s2.\>
  s2.
  s2.\pp % 2b
  s2.*4
  s4 s2\< % 2c+
  s2.\!
  s2.\>
  s2.\! % 3a
  s2 s4\<
  s2.
  s2.\!
  s2.\> % 3b
  s2.\!
  s2.\p
  s2.*10
  s4 s2\< % 4b+
  s2.\!
  s2.\>
  s2.\! % 4c
  s2.*5
  s2.\> % 5a++
  s2.\p
  s2.*4
  s2.\p % 5c
  s2.*4
  s4 s2\< % 6a+
  s2.\!
  s2.\>
  s2.\! % 6b
  s2.*5
  s2.\p % 6c++
  s2.*5
  s2.\omit\f-\markup\italic {più \dynamic f} % 7b
  s2.*4
  s4 s2\< % 7c+
  s2.\!
  s2.\>
  s2.\! % 8a
  s2.*15
  s2.\< % 9a++++
  s4\> s2\< % 9b
  s2.\!
  s2.\>
  s2.\!
  s2\> s4\! % 9c
  s2.
  s2.
  s2.
  s2.\<
  s2\< s4\! % 10a
  s2.\p
  s2.*5
  s2.\omit\dim -\markup\italic "dim. e ritard."
  s2.
  s2.\omit\pp
  
}

dad = \absolute { d,8 a, d a, d a, }
daf = \absolute { d,8 a, fis a, fis a, }
ebd = \absolute { e,8 b, d b, d b, }
ebe = \absolute { e,8 b, e b, e b, }
ebg = \absolute { e,8 b, g b, g b, }
ebgf = \absolute { e,8 b, g b, fis b, }
gda = \absolute { g,8 d a, e a e }
gdfdee = \absolute { g,8 d fis, d e, e } % 3b

pianoLHone = \relative {
  \global
  \voiceOne
  \ebe
  \ebe
  \ebe
  \ebe
  \ebe % 2b
  \ebe
  \dad
  \ebe
  \ebe % 2c
  \ebgf
  \ebe
  \gda
  \ebgf % 3a
  \ebe
  \ebg
  \ebg
  \gdfdee % 3b
  \daf
  \daf
  \ebg
  \daf % 3c
  \daf
  \ebgf
  \ebe
  \ebe % 4a
  \ebe
  \dad
  \ebe
  \ebe % 4b
  \ebgf
  \ebe
  \gda
  \ebgf % 4c
  \ebe
  \ebg
  \ebg
  \gdfdee % 5a
  \daf
  \daf
  \ebg
  \daf % 5b
  \daf
  \ebgf
  \ebe
  \ebe % 5c
  \ebe
  \ebd
  \ebe
  \ebe % 6a
  \ebgf
  \ebe
  \gda
  \ebgf % 6b
  \ebe
  \ebg
  \ebg
  \gdfdee % 6c
  \daf
  \daf
  \ebg
  \daf % 7a
  \daf
  \ebgf
  \ebe
  \ebe % 7b
  \ebe
  \dad
  \ebe
  \ebe % 7c
  \ebgf
  \ebe
  \gda
  \ebgf % 8a
  \ebe
  \ebg
  \ebe
  \gdfdee % 8b
  \daf
  \daf
  \ebg
  \daf % 8c
  \daf
  \ebgf
  \ebe
  \ebe % 9a
  \ebe
  \dad
  \ebe
  \ebe
  \ebgf % 9b
  \ebe
  \gda
  \ebgf
  e,8 b' e b~ \voiceTwo b4 \oneVoice % 9c
  r4 <e, b' g'>2\arpeggio
  r4 <g d' b'>2\arpeggio
  g4 fis e
  \daf
  \daf % 10a
  \ebg
  \daf
  \daf
  \ebgf
  \ebe % 10b
  \ebg
  \ebg
  \ebg
  <e b' e>2.\arpeggio\fermata
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  s2.*11
  g,4 a2 % 2c+++
  s2.*19
  g4 a2 % 4b+++
  s2.*19
  g4 a2 % 6a+++
  s2.*19
  g4 a2 % 7c+++
  s2.*19
  g4 a2 % 9b++
  s2.
  \voiceOne s2 g'4 % 9c
  s2.*14
  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = solo \solo
          \new Lyrics \lyricsto solo \soloWords
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
          }
          <<
            \new Dynamics \with { alignAboveContext = soprano } \dynamicsSop
            \new NullVoice = "alignerA" \sopranoI
            \new NullVoice = "alignerB" \sopranoII
            \new Voice \sopranoI
            \new Voice \sopranoII
            \new Lyrics \with {
              alignAboveContext = soprano
            }           \lyricsto "alignerA" \wordsSopAbove
            \new Lyrics \lyricsto "alignerB" \wordsSopBelow
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single-bass"
  \score {
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = solo \solo
          \new Lyrics \lyricsto solo \soloWords
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
          }
          <<
            \new Dynamics \with { alignAboveContext = soprano } \dynamicsSop
            \new NullVoice = "alignerA" \sopranoI
            \new NullVoice = "alignerB" \sopranoII
            \new Voice \sopranoI
            \new Voice \sopranoII
            \new Lyrics \with {
              alignAboveContext = soprano
            }           \lyricsto "alignerA" \wordsSopAbove
            \new Lyrics \lyricsto "alignerB" \wordsSopBelow
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef bass
            \new Voice = "bass" \transpose c c, \alto
            \new Lyrics \lyricsto "bass" \wordsAlto
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
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
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = solo \solo
          \new Lyrics \lyricsto solo \soloWords
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
          }
          <<
            \new Dynamics \with { alignAboveContext = soprano } \dynamicsSop
            \new NullVoice = "alignerA" \sopranoI
            \new NullVoice = "alignerB" \sopranoII
            \new Voice \sopranoI
            \new Voice \sopranoII
            \new Lyrics \with {
              alignAboveContext = soprano
            }           \lyricsto "alignerA" \wordsSopAbove
            \new Lyrics \lyricsto "alignerB" \wordsSopBelow
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAlto
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
                                %            \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
  \bookOutputSuffix "singlepage-solo"
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
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = solo \solo
          \addlyrics \soloWords
        >>
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with { alignAboveContext = "soprano1" } \dynamicsSop
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with { alignAboveContext = "soprano2" } \dynamicsSop
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \magnifyStaff #4/7
            \new Voice = "alto" \alto
            \addlyrics {\tiny \wordsAlto}
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
          \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with { printPartCombineTexts = ##f }
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-sop1"
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
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = solo \solo
          \addlyrics {\tiny \soloWords}
        >>
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
          }
          <<
            \new Dynamics \with { alignAboveContext = "soprano1" } \dynamicsSop
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with { alignAboveContext = "soprano2" } \dynamicsSop
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \magnifyStaff #4/7
            \new Voice = "alto" \alto
            \addlyrics {\tiny \wordsAlto}
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
          \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with { printPartCombineTexts = ##f }
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-sop2"
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
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = solo \solo
          \addlyrics {\tiny \soloWords}
        >>
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with { alignAboveContext = "soprano1" } \dynamicsSop
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
          }
          <<
            \new Dynamics \with { alignAboveContext = "soprano2" } \dynamicsSop
            \new Voice \sopranoII
            \addlyrics \wordsSopII
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \magnifyStaff #4/7
            \new Voice = "alto" \alto
            \addlyrics {\tiny \wordsAlto}
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
          \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with { printPartCombineTexts = ##f }
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-alto"
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
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = solo \solo
          \addlyrics {\tiny \soloWords}
        >>
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with { alignAboveContext = "soprano1" } \dynamicsSop
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with { alignAboveContext = "soprano2" } \dynamicsSop
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
          \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with { printPartCombineTexts = ##f }
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-bass"
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
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \magnifyStaff #4/7
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = solo \solo
          \addlyrics {\tiny \soloWords}
        >>
        \new ChoirStaff <<
                                % Single soprano1 staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with { alignAboveContext = "soprano1" } \dynamicsSop
            \new Voice \sopranoI
            \addlyrics {\tiny \wordsSopI}
          >>
                                % Single soprano2 staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
          }
          <<
          \magnifyStaff #4/7
            \new Dynamics \with { alignAboveContext = "soprano2" } \dynamicsSop
            \new Voice \sopranoII
            \addlyrics {\tiny \wordsSopII}
          >>
                                % Single alto staff
          \new Staff \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \clef bass
            \new Voice = "bass" \transpose c c, \alto
            \addlyrics \wordsAlto
          >>
        >>
        \new PianoStaff <<
          \new Staff \with { printPartCombineTexts = ##f }
          <<
          \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff \with { printPartCombineTexts = ##f }
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "midi-solo"
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = solo \solo
          \new Lyrics \lyricsto solo \soloWordsMidi
        >>
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            printPartCombineTexts = ##f
          }
          <<
            \new NullVoice = "alignerA" \sopranoI
            \new NullVoice = "alignerB" \sopranoII
            \new Voice << \sopranoI \dynamicsSop >>
            \new Voice << \sopranoII \dynamicsSop >>
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef bass
            \new Voice = "bass" \transpose c c, \alto
          >>
        >>
        \new PianoStaff <<
          \new Staff
          <<
            \new Voice << \pianoRHone \dynamicsPiano >>
            \new Voice << \pianoRHtwo \dynamicsPiano >>
            \new Voice << \pianoLHone \dynamicsPiano >>
            \new Voice << \pianoLHtwo \dynamicsPiano >>
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-sopi"
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = solo \solo
        >>
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = sopranoI
          <<
            \new Voice = sopi << \sopranoI \dynamicsSop >>
            \new Lyrics \lyricsto sopi \wordsSopIMidi
          >>
                                % Single sopranoII staff
          \new Staff = sopranoII
          <<
            \new Voice = sopii << \sopranoII \dynamicsSop >>
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef bass
            \new Voice = "bass" \transpose c c, \alto
          >>
        >>
        \new PianoStaff <<
          \new Staff
          <<
            \new Voice << \pianoRHone \dynamicsPiano >>
            \new Voice << \pianoRHtwo \dynamicsPiano >>
            \new Voice << \pianoLHone \dynamicsPiano >>
            \new Voice << \pianoLHtwo \dynamicsPiano >>
          >>
        >>
      >>
    >>
    \layout {}
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-sopii"
  \score {
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = solo \solo
        >>
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = sopranoI
          <<
            \new Voice = sopi << \sopranoI \dynamicsSop >>
          >>
                                % Single sopranoII staff
          \new Staff = sopranoII
          <<
            \new Voice =sopii << \sopranoII \dynamicsSop >>
            \new Lyrics \lyricsto sopii \wordsSopIIMidi
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef bass
            \new Voice = "bass" \transpose c c, \alto
          >>
        >>
        \new PianoStaff <<
          \new Staff
          <<
            \new Voice << \pianoRHone \dynamicsPiano >>
            \new Voice << \pianoRHtwo \dynamicsPiano >>
            \new Voice << \pianoLHone \dynamicsPiano >>
            \new Voice << \pianoLHtwo \dynamicsPiano >>
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
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = solo \solo
        >>
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = sopranoI
          <<
            \new Voice = sopi << \sopranoI \dynamicsSop >>
          >>
                                % Single sopranoII staff
          \new Staff = sopranoII
          <<
            \new Voice =sopii << \sopranoII \dynamicsSop >>
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
            \new Lyrics \lyricsto "alto" \wordsAltoMidi
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef bass
            \new Voice = "bass" \transpose c c, \alto
          >>
        >>
        \new PianoStaff <<
          \new Staff
          <<
            \new Voice << \pianoRHone \dynamicsPiano >>
            \new Voice << \pianoRHtwo \dynamicsPiano >>
            \new Voice << \pianoLHone \dynamicsPiano >>
            \new Voice << \pianoLHtwo \dynamicsPiano >>
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
%   \articulate
    <<
      <<
        \new Staff = solo \with {
          shortInstrumentName = "Solo"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice = solo \solo
        >>
        \new ChoirStaff <<
                                % Single sopranoI staff
          \new Staff = sopranoI
          <<
            \new Voice = sopi << \sopranoI \dynamicsSop >>
          >>
                                % Single sopranoII staff
          \new Staff = sopranoII
          <<
            \new Voice =sopii << \sopranoII \dynamicsSop >>
          >>
                                % Single alto staff
          \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice = "alto" \alto
          >>
                                % Single bass staff
          \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef bass
            \new Voice = "bass" \transpose c c, \alto
            \new Lyrics \lyricsto "bass" \wordsAltoMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff
          <<
            \new Voice << \pianoRHone \dynamicsPiano >>
            \new Voice << \pianoRHtwo \dynamicsPiano >>
            \new Voice << \pianoLHone \dynamicsPiano >>
            \new Voice << \pianoLHtwo \dynamicsPiano >>
          >>
        >>
      >>
    >>
    \midi {}
  }
}
