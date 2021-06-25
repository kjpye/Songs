\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "There is Life for a Look."
  subtitle    = "Sankey No. 123"
  subsubtitle = "Sankey 880 No. 32"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. G. Taylor."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Miss A. M. Hull."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*2
  \mark \markup { \box "B" } s1*3
  \mark \markup { \box "C" } s1*3
  \mark \markup { \box "D" } s1*3
  \mark \markup { \box "E" } s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
  s4
  s1*9
  s2 \tempo 4=40 s4 \tempo 4=120 s4
  s1*3 s2.
}

soprano = \relative {
  \autoBeamOff
  \slurDashed g'8(a)
  b4 8 8 4 c8. b16
  b8[a] g a b4 8 c
  d4 8.(e16) d8[b] g b % B
  a2. g8(a)
  b4-! 8 8 4 c8. b16
  b8[a] g a b4 \slurDashed 8(c) % C
  d4 b8 g a4 b8. a16
  g2. r4 \bar "||" \break
  a4-!^\markup\smallCaps Refrain. r b-! r % D
  cis4-! 4-! d\fermata g,8 a
  b4 8 8 4 c8. b16
  b8[a] g a b4 8 c % E
  d4 b8 g a4 b8. a16
  g2 r4
}

sopranoSingle = \relative {
  \autoBeamOff
  g'8 a
  b4 8 8 4 c8. b16
  b8[a] g a b4 8 c
  d4 8. e16 d8[b] g b % B
  a2. g8(a)
  b4-! 8 8 4 c8. b16
  b8[a] g a b4 8 c % C
  d4 b8 g a4 b8. a16
  g2. r4 \bar "||" \break
  a4-!^\markup\smallCaps Refrain. r b-! r % D
  cis4-! 4-! d\fermata g,8 a
  b4 8 8 4 c8. b16
  b8[a] g a b4 8 c % E
  d4 b8 g a4 b8. a16
  g2 r4 \bar "||" \break

% second verse
  g8(a)
  b4 8 8 4 c8. b16
  b8[a] g a b4 8 c
  d4 8. e16 d8[b] g b % B
  a2. g8(a)
  b4-! 8 8 4 c8. b16
  b8[a] g a b4 8 c % C
  d4 b8 g a4 b8. a16
  g2. r4 \bar "||" \break
  a4-!^\markup\smallCaps Refrain. r b-! r % D
  cis4-! 4-! d\fermata g,8 a
  b4 8 8 4 c8. b16
  b8[a] g a b4 8 c % E
  d4 b8 g a4 b8. a16
  g2 r4 \bar "||" \break

% third verse
  g8(a)
  b4 8 8 4 c8. b16
  b8[a] g a b4 8 c
  d4 8. e16 d8[b] g b % B
  a2. g8(a)
  b4-! 8 8 4 c8. b16
  b8[a] g a b4 8(c) % C
  d4 b8 g a4 b8. a16
  g2. r4 \bar "||" \break
  a4-!^\markup\smallCaps Refrain. r b-! r % D
  cis4-! 4-! d\fermata g,8 a
  b4 8 8 4 c8. b16
  b8[a] g a b4 8 c % E
  d4 b8 g a4 b8. a16
  g2 r4 \bar "||" \break

% fourth verse
  g8(a)
  b4 8 8 4 c8. b16
  b8[a] g a b4 8 c
  d4 8. e16 d8[b] g b % B
  a2. g8(a)
  b4-! 8 8 4 c8. b16
  b8[a] g a b4 8 c % C
  d4 b8 g a4 b8. a16
  g2. r4 \bar "||" \break
  a4-!^\markup\smallCaps Refrain. r b-! r % D
  cis4-! 4-! d\fermata g,8 a
  b4 8 8 4 c8. b16
  b8[a] g a b4 8 c % E
  d4 b8 g a4 b8. a16
  g2 r4 \bar "||" \break

% fifth verse
  g8(a)
  b4 8 8 4 c8. b16
  b8[a] g a b4 8 c
  d4 8.(e16) d8[b] g b % B
  a2. g8(a)
  b4-! 8 8 4 c8. b16
  b8[a] g a b4 8(c) % C
  d4 b8 g a4 b8. a16
  g2. r4 \bar "||" \break
  a4-!^\markup\smallCaps Refrain. r b-! r % D
  cis4-! 4-! d\fermata g,8 a
  b4 8 8 4 c8. b16
  b8[a] g a b4 8 c % E
  d4 b8 g a4 b8. a16
  g2 r4
}

alto = \relative {
  \autoBeamOff
  \slurDashed d'8(8)
  g4 8 8 4 8. 16
  f4 d8 f g4 8 f
  g4 8.(16) 4 cis,8 8 % B
  fis2. d8(d)
  g4-! 8 8 4 8. 16
  fis4 d8 fis g4 8(fis) % C
  g4 8 d fis4 8. 16
  g2. r4
  fis4-! r g-! r % D
  g4-! g-! fis\fermata d8 d
  g4 8 8 4 8. 16
  fis4 d8 fis g4 8 8 % E
  g4 8 d fis4 8. 16
  d2 r4
}

altoSingle = \relative {
  \autoBeamOff
  d'8 8
  g4 8 8 4 8. 16
  f4 d8 f g4 8 f
  g4 8. 16 4 cis,8 8 % B
  fis2. d8(d)
  g4-! 8 8 4 8. 16
  fis4 d8 fis g4 8 fis % C
  g4 8 d fis4 8. 16
  g2. r4
  fis4-! r g-! r % D
  g4-! g-! fis\fermata d8 d
  g4 8 8 4 8. 16
  fis4 d8 fis g4 8 8 % E
  g4 8 d fis4 8. 16
  d2 r4
  
% second verse
  d8(8)
  g4 8 8 4 8. 16
  f4 d8 f g4 8 f
  g4 8. 16 4 cis,8 8 % B
  fis2. d8(d)
  g4-! 8 8 4 8. 16
  fis4 d8 fis g4 8 fis % C
  g4 8 d fis4 8. 16
  g2. r4
  fis4-! r g-! r % D
  g4-! g-! fis\fermata d8 d
  g4 8 8 4 8. 16
  fis4 d8 fis g4 8 8 % E
  g4 8 d fis4 8. 16
  d2 r4
  
% third verse
  d8(8)
  g4 8 8 4 8. 16
  f4 d8 f g4 8 f
  g4 8. 16 4 cis,8 8 % B
  fis2. d8(d)
  g4-! 8 8 4 8. 16
  fis4 d8 fis g4 8(fis) % C
  g4 8 d fis4 8. 16
  g2. r4
  fis4-! r g-! r % D
  g4-! g-! fis\fermata d8 d
  g4 8 8 4 8. 16
  fis4 d8 fis g4 8 8 % E
  g4 8 d fis4 8. 16
  d2 r4
  
% fourth verse
  d8(8)
  g4 8 8 4 8. 16
  f4 d8 f g4 8 f
  g4 8. 16 4 cis,8 8 % B
  fis2. d8(d)
  g4-! 8 8 4 8. 16
  fis4 d8 fis g4 8 fis % C
  g4 8 d fis4 8. 16
  g2. r4
  fis4-! r g-! r % D
  g4-! g-! fis\fermata d8 d
  g4 8 8 4 8. 16
  fis4 d8 fis g4 8 8 % E
  g4 8 d fis4 8. 16
  d2 r4
  
  d8(8)
  g4 8 8 4 8. 16
  f4 d8 f g4 8 f
  g4 8.(16) 4 cis,8 8 % B
  fis2. d8(d)
  g4-! 8 8 4 8. 16
  fis4 d8 fis g4 8(fis) % C
  g4 8 d fis4 8. 16
  g2. r4
  fis4-! r g-! r % D
  g4-! g-! fis\fermata d8 d
  g4 8 8 4 8. 16
  fis4 d8 fis g4 8 8 % E
  g4 8 d fis4 8. 16
  d2 r4
}

tenor = \relative {
  \autoBeamOff
  \slurDashed b8(c)
  d4 8 8 4 e8. d16
  d8[c] b d d4 8 8
  d4 8. e16 d4 a8 a % B
  d2. b8(c)
  b4-! d8 8 4 e8. d16
  d8[c] b d d4 d8(8) % C
  b4 d8 b c4 d8. c16
  b2. r4
  d4-! r d-! r
  a4-! 4-! 4\fermata b8 c
  d4 8 8 4 e8. d16
  d8[c] b d d4 8 8 % E
  b4 d8 b c4 d8. c16
  b2 r4
}

tenorSingle = \relative {
  \autoBeamOff
  b8 c
  d4 8 8 4 e8. d16
  d8[c] b d d4 8 8
  d4 8. e16 d4 a8 a % B
  d2. b8(c)
  b4-! d8 8 4 e8. d16
  d8[c] b d d4 d8 8 % C
  b4 d8 b c4 d8. c16
  b2. r4
  d4-! r d-! r
  a4-! 4-! 4\fermata b8 c
  d4 8 8 4 e8. d16
  d8[c] b d d4 8 8 % E
  b4 d8 b c4 d8. c16
  b2 r4
  
% second verse
  b8(c)
  d4 8 8 4 e8. d16
  d8[c] b d d4 8 8
  d4 8. e16 d4 a8 a % B
  d2. b8(c)
  b4-! d8 8 4 e8. d16
  d8[c] b d d4 d8 8 % C
  b4 d8 b c4 d8. c16
  b2. r4
  d4-! r d-! r
  a4-! 4-! 4\fermata b8 c
  d4 8 8 4 e8. d16
  d8[c] b d d4 8 8 % E
  b4 d8 b c4 d8. c16
  b2 r4
  
% third verse
  b8(c)
  d4 8 8 4 e8. d16
  d8[c] b d d4 8 8
  d4 8. e16 d4 a8 a % B
  d2. b8(c)
  b4-! d8 8 4 e8. d16
  d8[c] b d d4 d8(8) % C
  b4 d8 b c4 d8. c16
  b2. r4
  d4-! r d-! r
  a4-! 4-! 4\fermata b8 c
  d4 8 8 4 e8. d16
  d8[c] b d d4 8 8 % E
  b4 d8 b c4 d8. c16
  b2 r4
  
% fourth verse
  b8(c)
  d4 8 8 4 e8. d16
  d8[c] b d d4 8 8
  d4 8. e16 d4 a8 a % B
  d2. b8(c)
  b4-! d8 8 4 e8. d16
  d8[c] b d d4 d8 8 % C
  b4 d8 b c4 d8. c16
  b2. r4
  d4-! r d-! r
  a4-! 4-! 4\fermata b8 c
  d4 8 8 4 e8. d16
  d8[c] b d d4 8 8 % E
  b4 d8 b c4 d8. c16
  b2 r4
  
% fifth verse
  b8(c)
  d4 8 8 4 e8. d16
  d8[c] b d d4 8 8
  d4 8.(e16) d4 a8 a % B
  d2. b8(c)
  b4-! d8 8 4 e8. d16
  d8[c] b d d4 d8(8) % C
  b4 d8 b c4 d8. c16
  b2. r4
  d4-! r d-! r
  a4-! 4-! 4\fermata b8 c
  d4 8 8 4 e8. d16
  d8[c] b d d4 8 8 % E
  b4 d8 b c4 d8. c16
  b2 r4
}

bass= \relative {
  \autoBeamOff
  \slurDashed g8(g)
  g4 8 8 4 8. 16
  d4 8 8 g4 8 a
  b4 8. c16 b8[g] e a % B
  d,2. g8(8)
  g4-! 8 8 4 8. 16
  d4 8 8 g4 8(8) % C
  b4 g8 b, d4 8. 16
  g2. r4
  d4-! r g-! r % D
  e4-! e-! d4\fermata g8 8
  g4 8 8 4 8. 16
  d4 8 8 g4 8 a8 % E
  b4 g8 b, d4 8. 16
  g2 r4
}

bassSingle = \relative {
  \autoBeamOff
  g8 g
  g4 8 8 4 8. 16
  d4 8 8 g4 8 a
  b4 8. c16 b8[g] e a % B
  d,2. g8(8)
  g4-! 8 8 4 8. 16
  d4 8 8 g4 8 8 % C
  b4 g8 b, d4 8. 16
  g2. r4
  d4-! r g-! r % D
  e4-! e-! d4\fermata g8 8
  g4 8 8 4 8. 16
  d4 8 8 g4 8 a8 % E
  b4 g8 b, d4 8. 16
  g2 r4
  
% second verse
  g8(g)
  g4 8 8 4 8. 16
  d4 8 8 g4 8 a
  b4 8. c16 b8[g] e a % B
  d,2. g8(8)
  g4-! 8 8 4 8. 16
  d4 8 8 g4 8 8 % C
  b4 g8 b, d4 8. 16
  g2. r4
  d4-! r g-! r % D
  e4-! e-! d4\fermata g8 8
  g4 8 8 4 8. 16
  d4 8 8 g4 8 a8 % E
  b4 g8 b, d4 8. 16
  g2 r4
  
% third verse
  g8(g)
  g4 8 8 4 8. 16
  d4 8 8 g4 8 a
  b4 8. c16 b8[g] e a % B
  d,2. g8(8)
  g4-! 8 8 4 8. 16
  d4 8 8 g4 8(8) % C
  b4 g8 b, d4 8. 16
  g2. r4
  d4-! r g-! r % D
  e4-! e-! d4\fermata g8 8
  g4 8 8 4 8. 16
  d4 8 8 g4 8 a8 % E
  b4 g8 b, d4 8. 16
  g2 r4
  
% fourth verse
  g8(g)
  g4 8 8 4 8. 16
  d4 8 8 g4 8 a
  b4 8. c16 b8[g] e a % B
  d,2. g8(8)
  g4-! 8 8 4 8. 16
  d4 8 8 g4 8 8 % C
  b4 g8 b, d4 8. 16
  g2. r4
  d4-! r g-! r % D
  e4-! e-! d4\fermata g8 8
  g4 8 8 4 8. 16
  d4 8 8 g4 8 a8 % E
  b4 g8 b, d4 8. 16
  g2 r4
  
% fifth verse
  g8(g)
  g4 8 8 4 8. 16
  d4 8 8 g4 8 a
  b4 8.(c16) b8[g] e a % B
  d,2. g8(8)
  g4-! 8 8 4 8. 16
  d4 8 8 g4 8(8) % C
  b4 g8 b, d4 8. 16
  g2. r4
  d4-! r g-! r % D
  e4-! e-! d4\fermata g8 8
  g4 8 8 4 8. 16
  d4 8 8 g4 8 a8 % E
  b4 g8 b, d4 8. 16
  g2 r4
}

chorus = \lyricmode {
  Look! look! look and live!
  There is life for a look at the Cru -- ci -- fied One,
  There is life at this mo -- ment for thee.
}

nom  = { \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata }

wordsOne = \lyricmode {
  \set stanza = "1."
  \nom There is \yesm life for a look at the Cru -- ci -- fied One,
  There is life \nom at this \yesm mo -- ment for thee;
  Then look, sin -- ner. look un -- to Him and be saved,
  \nom Un -- to \yesm Him who was  nail'd to the tree.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, why was He there as the Bear -- er of sin,
  If on  Je -- \nom sus thy \yesm guilt was not laid?
  Oh, why from His side flow'd the sin -- cleans -- ing blood,
  \nom If His \yesm dy -- ing thy debt has not paid?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  It is not thy tears of re -- pent -- ance or prayers,
  But the \markup\italic Blood, \nom that a -- \yesm tones for the soul;
  On Him, then, who shed it thou may -- est at once
  Thy weight of in -- i -- qui -- ties roll.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Then doubt not thy wel -- come, Since God has de -- clared
  There re -- main -- \nom eth no \yesm more to be done;
  That once in the end of the world He ap -- peared,
  \nom And com -- \yesm plet -- ed the work He be -- gun.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Then take with re -- joic -- ing from Je -- sus at once
  The life e -- ver -- last -- ing He gives;
  And know with as -- sur -- ance thou ne -- ver canst die,
  Since Je -- sus, thy righ -- teous -- ness, lives.
}
  
wordsSingle = \lyricmode {
  \set stanza = "1."
  There is life for a look at the Cru -- ci -- fied One,
  There is life at this mo -- ment for thee;
  Then look, sin -- ner. look un -- to Him and be saved,
  Un -- to Him who was  nail'd to the tree.
  Look! look! look and live!
  There is life for a look at the Cru -- ci -- fied One,
  There is life at this mo -- ment for thee.

  \set stanza = "2."
  Oh, why was He there as the Bear -- er of sin,
  If on  Je -- sus thy guilt was not laid?
  Oh, why from His side flow'd the sin -- cleans -- ing blood,
  If His dy -- ing thy debt has not paid?
  Look! look! look and live!
  There is life for a look at the Cru -- ci -- fied One,
  There is life at this mo -- ment for thee.

  \set stanza = "3."
  It is not thy tears of re -- pent -- ance or prayers,
  But the \markup\italic Blood, that a -- tones for the soul;
  On Him, then, who shed it thou may -- est at once
  Thy weight of in -- i -- qui -- ties roll.
  Look! look! look and live!
  There is life for a look at the Cru -- ci -- fied One,
  There is life at this mo -- ment for thee.

  \set stanza = "4."
  Then doubt not thy wel -- come, Since God has de -- clared
  There re -- main -- eth no more to be done;
  That once in the end of the world He ap -- peared,
  And com -- plet -- ed the work He be -- gun.
  Look! look! look and live!
  There is life for a look at the Cru -- ci -- fied One,
  There is life at this mo -- ment for thee.

  \set stanza = "5."
  Then take with re -- joic -- ing from Je -- sus at once
  The life e -- ver -- last -- ing He gives;
  And know with as -- sur -- ance thou ne -- ver canst die,
  Since Je -- sus, thy righ -- teous -- ness, lives.
  Look! look! look and live!
  There is life for a look at the Cru -- ci -- fied One,
  There is life at this mo -- ment for thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "is " "life " "for " "a " "look " "at " "the " Cru ci "fied " "One, "
  "\nThere " "is " "life " "at " "this " mo "ment " "for " "thee; "
  "\nThen " "look, " sin "ner. " "look " un "to " "Him " "and " "be " "saved, "
  "\nUn" "to " "Him " "who " "was "  "nail'd " "to " "the " "tree. "
  "\nLook! " "look! " "look " "and " "live! "
  "\nThere " "is " "life " "for " "a " "look " "at " "the " Cru ci "fied " "One, "
  "\nThere " "is " "life " "at " "this " mo "ment " "for " "thee. "

  \set stanza = "2."
  "\nOh, " "why " "was " "He " "there " "as " "the " Bear "er " "of " "sin, "
  "\nIf " "on "  Je "sus " "thy " "guilt " "was " "not " "laid? "
  "\nOh, " "why " "from " "His " "side " "flow'd " "the " sin cleans "ing " "blood, "
  "\nIf " "His " dy "ing " "thy " "debt " "has " "not " "paid? "
  "\nLook! " "look! " "look " "and " "live! "
  "\nThere " "is " "life " "for " "a " "look " "at " "the " Cru ci "fied " "One, "
  "\nThere " "is " "life " "at " "this " mo "ment " "for " "thee. "

  \set stanza = "3."
  "\nIt " "is " "not " "thy " "tears " "of " re pent "ance " "or " "prayers, "
  "\nBut " "the " "Blood, " "that " a "tones " "for " "the " "soul; "
  "\nOn " "Him, " "then, " "who " "shed " "it " "thou " may "est " "at " "once "
  "\nThy " "weight " "of " in i qui "ties " "roll. "
  "\nLook! " "look! " "look " "and " "live! "
  "\nThere " "is " "life " "for " "a " "look " "at " "the " Cru ci "fied " "One, "
  "\nThere " "is " "life " "at " "this " mo "ment " "for " "thee. "

  \set stanza = "4."
  "\nThen " "doubt " "not " "thy " wel "come, " "Since " "God " "has " de "clared "
  "\nThere " re main "eth " "no " "more " "to " "be " "done; "
  "\nThat " "once " "in " "the " "end " "of " "the " "world " "He " ap "peared, "
  "\nAnd " com plet "ed " "the " "work " "He " be "gun. "
  "\nLook! " "look! " "look " "and " "live! "
  "\nThere " "is " "life " "for " "a " "look " "at " "the " Cru ci "fied " "One, "
  "\nThere " "is " "life " "at " "this " mo "ment " "for " "thee. "

  \set stanza = "5."
  "\nThen " "take " "with " re joic "ing " "from " Je "sus " "at " "once "
  "\nThe " "life " e ver last "ing " "He " "gives; "
  "\nAnd " "know " "with " as sur "ance " "thou " ne "ver " "canst " "die, "
  "\nSince " Je "sus, " "thy " righ teous "ness, " "lives. "
  "\nLook! " "look! " "look " "and " "live! "
  "\nThere " "is " "life " "for " "a " "look " "at " "the " Cru ci "fied " "One, "
  "\nThere " "is " "life " "at " "this " mo "ment " "for " "thee. "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
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
  \bookOutputSuffix "single"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" \sopranoSingle
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." } { \global \altoSingle }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle } { \global \bassSingle }
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" \sopranoSingle
            \new Voice = "women" \partCombine { \global \sopranoSingle \bar "|." } { \global \altoSingle }
            \new Lyrics \lyricsto "aligner" \wordsSingle
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenorSingle } { \global \bassSingle }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \sopranoSingle \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \altoSingle }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenorSingle }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bassSingle }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
