\version "2.20.2"

\include "swing.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "As Time Goes By"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Herman Huffield"
  arranger    = "Arr. Russ Robinson"
%  opus        = "opus"

  poet        = "Herman Huffield"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

TempoA = {
  \tempo "Medium Swing" 4=90
  s4
  \set Score.tempoHideNote = ##t
  s1*4
  \repeat volta 2 {s1*6} \alternative {{s1 s1}{s1}} % 2b+
  s1
}

TempoB = {
  s1*13
}

TempoC = {
  s1*7
  \repeat volta 2 {s1*6} \alternative {{s1 s1}{s1}}
  s1
}

TempoD = {
  s1*3
  s2. \tempo 4=80 s4 % 8a % 8a
  s2 \tempo 4=30 s4 \tempo 4=80 s4
  \tempo 4=90 s1*3
  s2 \tempo 4=30 s4 \tempo 4=90
}

TempoTrack = {\TempoA \TempoB \TempoC \TempoD}

RehearsalTrackA = {
  \mark \markup { \box "2a" } s4 s1*3
  \mark \markup { \box "2b" } s1
  \repeat volta 2 { s1*2
                    \mark \markup { \box "3a" } s1*3
                    \mark \markup { \box "3b" } s1
                  }
  \alternative {
    { s1*2 }
    {
      \mark \markup { \box "3c" } s1
    }
  }
  s1
}

RehearsalTrackB = {
  \mark \markup { \musicglyph #"scripts.segno" } s1*2
  \mark \markup { \box "4a" } s1*3
  \mark \markup { \box "4b" } s1*3
  \mark \markup { \box "4c" } s1*3
  \mark \markup { \box "5a" } s1*2
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark \markup \italic \bold \small {To Coda \musicglyph #"scripts.coda"}
}

RehearsalTrackC = {
  s1
  \mark \markup { \box "5b" } s1*3
  \mark \markup { \box "5c" } s1*3
  \repeat volta 2 {
    \mark \markup { \box "6a" } s1*3
    \mark \markup { \box "6b" } s1*3
  }
  \alternative {
    {
      \mark \markup { \box "7a" } s1*2
    }
    { s1 }
  }
  s2..
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark \markup \small \italic \bold { D.S. \musicglyph #"scripts.segno" {al Coda}}
  s8 \break
}

RehearsalTrackD = {
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \mark \markup \bold \italic { \musicglyph #"scripts.coda" Coda} s1*3
  \mark \markup { \box "8a" } s1*3
  \mark \markup { \box "8b" } s1*3
}

RehearsalTrack = { \RehearsalTrackA \RehearsalTrackB \RehearsalTrackC \RehearsalTrackD }

ChordTrackA = \chordmode {
  s4
  f2:7 fis:m7.5-
  g2:m7 c:7
  f2.:m7 bes4:7
  ees4.:6 e8:dim7 s2 % 2b
  \repeat volta 2 {
    f2:m7 bes:7
    bes2:m7 bes:7
    ees2:maj7 f:m7 % 3a
    fis4.:dim7 c8:m7/g s4 g:m7
    f2:7 d:7.9-/fis
    g4:m7 c:7 f:m7 bes % 3b
  }
  \alternative {
    {
      ees2:maj7 e:dim7
      f4.:m7 bes8:7 s2
    }
    {
      ees2:6 ees % 3c
    }
  }
  bes2:m7 ees:9
}

ChordTrackB = \chordmode {
  aes1:maj7
  c1:7
  f1:m7 % 4a
  a1:dim7
  c2:m aes:7
  f1:9 % 4b
  bes4:sus7 bes:7 e2:dim7
  f2:m7 bes:7
  f2:m7 bes:7 % 4c
  bes2:m7 bes:7
  ees2:maj7 f:m7
  fis4.:dim7 c:m7/g g4:m7 % 5a
  f2:7 d:7.9-/fis
}

ChordTrackC = \chordmode {
  g2:m7 c:7
  f2:m7 bes:7 % 5b
  ees1
  f2:7 fis:dim7
  g2:m7 c:7 % 5c
  f2:m7 bes:7
  ees4.:6 e8:dim7 s2
  \repeat volta 2 {
    f2:m7 bes:7 % 6a
    bes2:m7 bes:7
    ees2:maj7 f:m7
    fis2:dim7 g:m7 % 6b
    f2:7 d:7.9-/fis
    g4:m7 c:7 f:m7 bes:7
  }
  \alternative {
    {
      ees2:maj7 e:dim7 % 7a
      f4.:m7 bes8:7 s2
    }
    {
      ees2:6 ees
    }
  }
  bes2:m7 ees:9
}

ChordTrackD = \chordmode {
  g2:m7 c:9 % 7b
  f2:7 fis:dim7
  g2:m7 c:7
  f2:7 fis:dim7 % 8a
  g2:m7 c:7
  f1:m9
  bes1:13 % 8b
  ees1:6.9
  des4:6.9 d8:6.9 ees4.:6.9
}

ChordTrack = { \ChordTrackA \ChordTrackB \ChordTrackC \ChordTrackD }

soloA = \relative {
  \global
  s4
  s1*4
  \repeat volta 2 {s1*6} \alternative {{s1 s1}{s1}}
  s1
}

soloB = {
  s1*13
}

soloC = \relative {
  s1*6
  s2. s8 g'
  \repeat volta 2 {
    \tripletFeel 8 {aes8 g~ \tuplet 3/2 {g f ees}} f4. g8 % 6a
    \tripletFeel 8 {bes8 aes~ \tuplet 3/2 {aes g f}} aes4. bes8
    \tripletFeel 8 {ees8 d c bes} c2~
    c2. r8 d % 6b
    \tripletFeel 8 {f ees d c} d4 ees
    bes4 bes ees, f
  }
  \alternative {{g1 r2 r4 r8 g}{aes1}}
  R1
}

soloD = {
  R1*9
}

solo = {\soloA \soloB \soloC \soloD}

wordsSoloOne = \lyricmode {
  You must re- mem- ber this,
  a kiss is __ still a kiss,
  a sigh is just a sigh; __
  The fun- da- men- tal things ap- ply,
  as time goes by.
  And by.
}

wordsSoloTwo = \lyricmode {
  _ when two __ lov- ers woo,
  they still say __ "\"I" love "you.\""
  on that you can re- ly; __
  No mat- ter what the fu- ture brings,
  as time goes
}

wordsSoloSingle = \lyricmode {
  You must re- mem- ber this,
  a kiss is __ still a kiss,
  a sigh is just a sigh; __
  The fun- da- men- tal things ap- ply,
  as time goes by.
  And when two __ lov- ers woo,
  they still say __ "\"I" love "you.\""
  on that you can re- ly; __
  No mat- ter what the fu- ture brings,
  as time goes by.
}

wordsSoloSingleMidi = \lyricmode {
  "\nYou " "must " re mem "ber " "this, "
  "\na " "kiss " "is "  "still " "a " "kiss, "
  "\na " "sigh " "is " "just " "a " "sigh; " 
  "\nThe " fun da men "tal " "things " ap "ply, "
  "\nas " "time " "goes " "by. "
  "\nAnd " "when " "two "  lov "ers " "woo, "
  "\nthey " "still " "say "  "\"I " "love " "you.\" "
  "\non " "that " "you " "can " re "ly; " 
  "\nNo " mat "ter " "what " "the " fu "ture " "brings, "
  "\nas " "time " "goes " by.
}

sopranoA = \relative {
  \global
  r4
  R1*3
  r2 r4 r8 g' % 2b
  \repeat volta 2 {
    \tripletFeel 8 {aes8 g~ \tuplet 3/2 {g8 f ees}} f4. g8
    \tripletFeel 8 {bes8 aes ~ \tuplet 3/2 {aes8 g f}} aes4. bes8
    \tripletFeel 8 {g8 f ees d} ees2~ % 3a
    ees2. r8 d
    \tripletFeel 8 {f ees d c} d4 ees
    bes4 bes ees f % 3b
  }
  \alternative {
    {
      g1
      ees4.(g8) r4 r8 g
    }
    {
      ees1 % 3c
    }
  }
  des1 \bar "||"
}

sopranoB = \relative {
  r1
  r1
  \tripletFeel 8 {r8 f'[^\markup{\italic{opt. solo}} g f] c' c4.} % 4a
  \tripletFeel 8 {c8 d~ \tuplet 3/2 {d c b}} c4 r
  \tuplet 3/2 {g4^\markup \italic All aes g} ees' d
  \tripletFeel 8 {ees8 d~\tuplet 3/2 {d ees d}} f4. d8 % 4b
  c4 c g \tripletFeel 8 {g8 bes~}
  bes2. r8 g \bar "||"
  \tripletFeel 8 {aes8 g~\tuplet 3/2 {g f ees}} f8 4 g8 % 4c
  \tripletFeel 8 {bes8 aes~\tuplet 3/2{aes g f}} aes8 4 bes8
  \tripletFeel 8 {g8 f ees d} ees2~
  ees2. r8 d % 5a
  \tripletFeel 8 {f8 ees d c} d4 ees
}

sopranoC = \relative {
  bes4 2 g'4
  bes2 g % 5b
  ees2. r4
  R1
  R1 % 5c
  R1
  R1
  \repeat volta 2 {
    aes1^\markup \italic {Sing 2nd time only} % 6a
    aes4(c bes2)
    bes2(aes
    a2 bes) % 6b
    f2 fis
    \tripletFeel 8 {g8 bes c bes~ bes4 g8 ees}\laissezVibrer
  }
  \alternative {
    {
      R1 % 7a
      R1
    }
    {
      ees2\repeatTie ~ees
    }
  }
  des1 \bar "||"
}

sopranoD = \relative {
  bes4 2 r8 d % 7b
  \tripletFeel 8 {f8 ees d c} d4 ees
  g4 2 r8 d'
  \tripletFeel 8 {f ees d c} d4 ees % 8a
  bes4 bes2\fermata \breathe g4
  bes1
  c1 % 8b
  ees1~
  ees2~ees4\fermata
  \bar "|."
}

soprano = { \sopranoA \sopranoB \sopranoC \sopranoD }

altoA = \relative {
  \global
  r4
  R1*3
  r2 r4 r8 g' % 2b
  \repeat volta 2 {
    \tripletFeel 8 {aes8 g~ \tuplet 3/2 {g8 f ees}} f4. g8
    \tripletFeel 8 {bes8 aes ~ \tuplet 3/2 {aes8 g f}} aes4. bes8
    \tripletFeel 8 {g8 f ees d} c2~ % 3a
    c2. r8 d
    \tripletFeel 8 {f ees d c} d4 c
    bes4 bes c d % 3b
  }
  \alternative {
    {
      d2(cis)
      c4.(d8) r4 r8 g
    }
    {
      c,2(bes) % 3c
    }
  }
  bes1 \bar "||"
}

altoB = \relative {
  r1
  r1
  s1 % 4a
  s1
  \tuplet 3/2 {g'4 aes g} ges ges
  \tripletFeel 8 {f8 f~ \tuplet 3/2 {f g g}} a4. 8 % 4b
  aes4 aes e\tripletFeel 8 {e8 aes~}
  aes2. r8 g
  \tripletFeel 8 {aes8 g~\tuplet 3/2 {g f ees}} f8 4 g8 % 4c
  \tripletFeel 8 {bes8 aes~\tuplet 3/2{aes g f}} aes8 4 bes8
  \tripletFeel 8 {g8 f ees d} c2~
  c2. r8 d % 5a
  \tripletFeel 8 {f8 ees d c} d4 c
}

altoC = \relative {
  bes4 2 g'4
  ees2 d % 5b
  c2. r4
  R1
  R1*3 % 5c
  \repeat volta 2 {
    ees2(d) % 6a
    des4(f g f)
    f2(ees
    ees4 fis f2) % 6b
    f2 fis
    \tripletFeel 8 {g8 bes c bes~ bes4 g8 ees} % FIX
  }
  \alternative {
    {
      R1 % 7a
      R1
    }
    {
      ees2\repeatTie(c)
    }
  }
  bes1 \bar "||"
}

altoD = \relative {
  bes4 2 r8 d % 7b
  \tripletFeel 8 {f8 ees d c} d4 c
  d4 2 r8 d
  \tripletFeel 8 {f8 ees d c} d4 ees % 8a
  f4 g2\fermata r4
  r8 ees r4 ees2
  r8 g r4 g2 % 8b
  r8 <f bes> r4 q2
  <ees aes>4(\tripletFeel 8 {<e a>8) <f bes>~} q4\fermata
  \bar "|."
}

alto = { \altoA \altoB \altoC \altoD }

wordsWomenOne = \lyricmode {
  You must re- mem- ber this,
  a kiss is __ still a kiss,
  a sigh is just a sigh; __
  The fun- da- men- tal things ap- ply,
  as time goes by. __
  Oo __
  And by. __ Oo __
  hearts full of pas- sion,
  jeal- ous- y and hate;
  wom- an needs man
  and man must have his mate,
  that no one can de- ny __
  It's still the same old sto- ry,
  a fight for __ love and glo- ry,
  a case of do or die! __
  The world will al- ways wel- come lov- ers, __
  as time goes by.
  Oo __ Oo __ Ah __ % 6a
  Doo Doo Doo ba doo ba __
  doo ba
  _ Oo __
  lov- ers, __
  the world will al- ways wel- come lov -- ers, __
  the world will al- ways wel- come lov -- ers __
}

wordsWomenTwo = \lyricmode {
  _ when two lov- ers woo,
  they still say __ "\"I" love "you,\""
  on that you can re- ly; __
  No mat- ter what the fu- ture brings,
  as time goes
}

wordsWomenSingle = \lyricmode {
  You must re- mem- ber this,
  a kiss is __ still a kiss,
  a sigh is just a sigh; __
  The fun- da- men- tal things ap- ply,
  as time goes by. __
  Oo __

% second verse%
  And when two lov- ers woo,
  they still say __ "\"I" love "you,\""
  on that you can re- ly; __
  No mat- ter what the fu- ture brings,
  as time goes by,
  Oo __
  hearts full of pas- sion,
  jeal- ous- y and hate;
  wom- an needs man
  and man must have his mate,
  that no one can de- ny __
  It's still the same old sto- ry,
  a fight for __ love and glo- ry,
  a case of do or die! __
  The world will al- ways wel- come lov- ers, __
  as time goes by.
  Oo __ Oo __ Ah __ % 6a
  Doo Doo Doo ba doo ba __
  doo ba
  Oo __ Oo __ Ah __ % 6a
  Doo Doo Doo ba doo ba __
  doo ba
  Oo __ Oo
  hearts full of pas- sion,
  jeal- ous- y and hate;
  wom- an needs man
  and man must have his mate,
  that no one can de- ny __
  It's still the same old sto- ry,
  a fight for __ love and glo- ry,
  a case of do or die! __
  The world will al- ways wel- come lov- ers, __
  the world will al- ways wel- come lov -- ers, __
  the world will al- ways wel- come lov -- ers __
}

wordsSopranoSingleMidi = \lyricmode {
  "\nYou " "must " re mem "ber " "this, "
  "\na " "kiss " "is "  "still " "a " "kiss, "
  "\na " "sigh " "is " "just " "a " "sigh; " 
  "\nThe " fun da men "tal " "things " ap "ply, "
  "\nas " "time " "goes " "by. " 
  "\nOo " 

% second verse%
  "\nAnd " "when " "two " lov "ers " "woo, "
  "\nthey " "still " "say "  "\"I " "love " "you,\" "
  "\non " "that " "you " "can " re "ly; " 
  "\nNo " mat "ter " "what " "the " fu "ture " "brings, "
  "\nas " "time " "goes " "by, "
  "\nOo " 
  "\nhearts " "full " "of " pas "sion, "
  "\njeal" ous "y " "and " "hate; "
  "\nwom" "an " "needs " "man "
  "\nand " "man " "must " "have " "his " "mate, "
  "\nthat " "no " "one " "can " de "ny " 
  "\nIt's " "still " "the " "same " "old " sto "ry, "
  "\na " "fight " "for "  "love " "and " glo "ry, "
  "\na " "case " "of " "do " "or " "die! " 
  "\nThe " "world " "will " al "ways " wel "come " lov "ers, " 
  "\nas " "time " "goes " "by. "
  "\nOo "  "Oo "  "Ah "  % 6a
  "\nDoo " "Doo " "Doo " "ba " "doo " "ba " 
  "\ndoo " "ba "
  "\nOo "  "Oo "  "Ah "  % 6a
  "\nDoo " "Doo " "Doo " "ba " "doo " "ba " 
  "\ndoo " "ba "
  "\nOo "  "Oo "
  "\nhearts " "full " "of " pas "sion, "
  "\njeal" ous "y " "and " "hate; "
  "\nwom" "an " "needs " "man "
  "\nand " "man " "must " "have " "his " "mate, "
  "\nthat " "no " "one " "can " de "ny " 
  "\nIt's " "still " "the " "same " "old " sto "ry, "
  "\na " "fight " "for "  "love " "and " glo "ry, "
  "\na " "case " "of " "do " "or " "die! " 
  "\nThe " "world " "will " al "ways " wel "come " lov "ers, " 
  "\nthe " "world " "will " al "ways " wel "come " "lov " "ers, " 
  "\nthe " "world " "will " al "ways " wel "come " "lov " "ers " 
  "\nas " "time " "goes " "by. " 
}

wordsSoprano = \lyricmode {
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
  _ _ _ _ _ _
  as time goes by. __
}

wordsSopranoSingle = \lyricmode {
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
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  as time goes by. __
}

wordsAlto = \lyricmode {
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
  _ _ _ _ _ _
  as time it goes
  as time goes __ by. __
}

wordsAltoSingle = \lyricmode {
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
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  as time it goes
  as time goes __ by. __
}

wordsAltoSingleMidi = \lyricmode {
  "\nYou " "must " re mem "ber " "this, "
  "\na " "kiss " "is "  "still " "a " "kiss, "
  "\na " "sigh " "is " "just " "a " "sigh; " 
  "\nThe " fun da men "tal " "things " ap "ply, "
  "\nas " "time " "goes " "by. " 
  "\nOo " 

% second verse%
  "\nAnd " "when " "two " lov "ers " "woo, "
  "\nthey " "still " "say "  "\"I " "love " "you,\" "
  "\non " "that " "you " "can " re "ly; " 
  "\nNo " mat "ter " "what " "the " fu "ture " "brings, "
  "\nas " "time " "goes " "by, "
  "\nOo " 
%  "\nhearts " "full " "of " pas "sion, "
%  "\njeal" ous "y " "and " "hate; "
  "\nwom" "an " "needs " "man "
  "\nand " "man " "must " "have " "his " "mate, "
  "\nthat " "no " "one " "can " de "ny " 
  "\nIt's " "still " "the " "same " "old " sto "ry, "
  "\na " "fight " "for "  "love " "and " glo "ry, "
  "\na " "case " "of " "do " "or " "die! " 
  "\nThe " "world " "will " al "ways " wel "come " lov "ers, " 
  "\nas " "time " "goes " "by. "
  "\nOo "  "Oo "  "Ah "  % 6a
  "\nDoo " "Doo " "Doo " "ba " "doo " "ba " 
  "\ndoo " "ba "
  "\nOo "  "Oo "  "Ah "  % 6a
  "\nDoo " "Doo " "Doo " "ba " "doo " "ba " 
  "\ndoo " "ba "
  "\nOo "  "Oo "
%  "\nhearts " "full " "of " pas "sion, "
%  "\njeal" ous "y " "and " "hate; "
  "\nwom" "an " "needs " "man "
  "\nand " "man " "must " "have " "his " "mate, "
  "\nthat " "no " "one " "can " de "ny " 
  "\nIt's " "still " "the " "same " "old " sto "ry, "
  "\na " "fight " "for "  "love " "and " glo "ry, "
  "\na " "case " "of " "do " "or " "die! " 
  "\nThe " "world " "will " al "ways " wel "come " lov "ers, " 
  "\nthe " "world " "will " al "ways " wel "come " "lov " "ers, " 
  "\nthe " "world " "will " al "ways " wel "come " "lov " "ers " 
  "\nas " "time " "it " "goes "
  "\nas " "time " "goes " "by. " 
}

dwA = {
  \override DynamicTextSpanner.style = #'none
  s4
  s1*3
  s2 s4 s8 s\mp
  \repeat volta 2 { s1*6 }
  \alternative { {s1*2} {s1}}
  s1
}

dwB = {
  s1*2
  s1 % 4a
  s1
  s1\ff
  s1 % 4b
  s1\>
  s2.\! s8 s\mf
  s1*3 % 4c
  s1 % 5a
}

dwC = {
  s1*8
  \repeat volta 2 {s1*6} \alternative {{s1*2}{s1}} s1 % 6a
  s2 s4 s8 s\f % 7b
}

dwD = {
  s1
  s2. s8 s\ff
  s2. s4-\markup \italic rit.
  s1
  s1-\markup \italic {a tempo}
  s1*2 s2.
}

dynamicsWomen = { \dwA \dwB \dwC \dwD }

tenorA = \relative {
  \global
  r4
  R1*3
  r2 r4 r8 g % 2b
  \repeat volta 2 {
    \tripletFeel 8 {aes8 g~ \tuplet 3/2 {g8 f ees}} f4. g8
    \tripletFeel 8 {bes8 aes ~ \tuplet 3/2 {aes8 g f}} aes4. bes8
    \tripletFeel 8 {ees8 d c bes} c2
    a4. bes8~bes4 r
    a4 a a a
    g4 g aes aes
  }
  \alternative {
    {
      bes1
      aes2 r4 r8 g
    }
    {
      g1 % 3c
    }
  }
  aes2(g) \bar "||"
}

tenorB = \relative {
  s1
  s1
  R1 % 4a
  R1
  \tuplet 3/2 {g4^\markup \italic All aes g} c d
  \tripletFeel 8 {ees8 ees~ \tuplet 3/2 {ees ees ees}} ees4. ees8 % 4b
  ees4 d des \tripletFeel 8 {des8 ees~}(
  ees2 d4) r8 g,
  \tripletFeel 8 {aes8 g~ \tuplet 3/2 {g f ees}} f8 f4 g8 % 4c
  \tripletFeel 8 {bes8 aes~ \tuplet 3/2 {aes g f}} aes8 aes4 bes8
  \tripletFeel 8 {ees8 d c bes} c2
  a4 \tripletFeel 8 {a8 bes~} bes4 r % 5a
  a4 a a a
}

tenorC = \relative {
  g4 g2 g4
  c2 bes % 5b
  bes2. r4
  R1*4
  \repeat volta 2 {
    c2.^\markup \italic {Sing 2nd time only}(bes4)
    bes4(des d2)
    c1(
    c2 d) % 6b
    f,2 fis
    \tripletFeel 8 {g8 bes c bes~bes4 g8 ees\laissezVibrer}
  }
  \alternative {
    {
      R1 % 7a
      R1
    }
    {
      ees2\repeatTie(g)
    }
  }
  aes2(g) \bar "||"
}

tenorD = \relative {
  g4 g2 r4 % 7b
  a4 a a a
  bes4 bes2 r8 d
  \tripletFeel 8 { f8 ees d c} d4 ees % 8a
  d4 d(des\fermata) \breathe r % FIX
  r8 c r4 c2
  r8 d r4 d2 % 8b
  r8 c r4 c2
  \tripletFeel 8 {bes4(b8) c~ c4\fermata}
  \bar "|."
}

tenor = { \tenorA \tenorB \tenorC \tenorD }

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

bassA = \relative {
  \global
  r4
  R1*3
  r2 r4 r8 g % 2b
  \repeat volta 2 {
    \tripletFeel 8 {aes8 g~ \tuplet 3/2 {g8 f ees}} f4. g8
    \tripletFeel 8 {bes8 aes ~ \tuplet 3/2 {aes8 g f}} aes4. bes8
    \tripletFeel 8 {ees8 d c bes} c2 % 3a
    fis,4. g8~g4 r
    ees4 ees fis fis
    f4 e ees bes % 3b
  }
  \alternative {
    {
      ees2(e)
      f4.(bes,8) r4 r8 g'
    }
    {
      ees1 % 3c
    }
  }
  aes2(g) \bar "||"
}

bassB = \relative {
  \tripletFeel 8 {r8 ees^\markup \italic {opt. solo} f ees c' c4.}
  \tripletFeel 8 {c8 des~ \tuplet 3/2 {des c b}} c2
  s1 % 4a
  s1
  \tuplet 3/2 {g4 aes g} aes aes
  \tripletFeel 8 {a8 a~ \tuplet 3/2 {a a a}} a4. ges8 % 4b
  f4 f bes \tripletFeel 8 {bes8 f~}
  f2. r8 g
  \tripletFeel 8 {aes8 g~ \tuplet 3/2 {g f ees}} f8 f4 g8 % 4c
  \tripletFeel 8 {bes8 aes~ \tuplet 3/2 {aes g f}} aes8 aes4 bes8
  \tripletFeel 8 {ees8 d c bes} c2
  \tripletFeel 8 {fis,4 fis8 g~g4} r4 % 5a
  ees4 ees fis fis
}

bassC = \relative {
  g4 f(e) g
  f2 aes % 5b
  g2. r4
  R1
  R1*3 % 5c
  \repeat volta 2 {
    f2(aes4 aes) % 6a
    aes1
    g2(f
    fis2 g) % 6b
    f2 fis
    \tripletFeel 8 {g8 bes c bes~bes4 g8 ees\laissezVibrer}
  }
  \alternative {
    {
      R1 % 7a
      R1
    }
    {
      ees2\repeatTie(g)
    }
  }
  f2(f4 ees) \bar "||"
}

bassD = \relative {
  g4 f(e) r % 7b
  ees4 ees fis fis
  f4 f(e) r8 d
  \tripletFeel 8 {f8 ees d c} d4 ees % 8a
  g4 f(e\fermata) \breathe r % FIX
  r8 f r4 f2
  r8 aes r4 aes2 % 8b
  r8 g r4 g2
  f4(\tripletFeel 8 {fis8) g~}g4\fermata
  \bar "|."
}

bass = { \bassA \bassB \bassC \bassD }

wordsMenOne = \lyricmode {
% other stuff
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  "(a" "sigh;)" __
  these things still ap- ply,
  as time goes
  _ _ _ _ _
  Moon- light and love songs nev- er __ out of date,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  do or die! __
  World will wel- come
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _
  world will wel- come
}

wordsMenTwo = \lyricmode {
% other stuff
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  "(re" "ly;)" __
  mat- ter fu- ture
  brings, as time goes
}

wordsMenSingle = \lyricmode {
% other stuff
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  "(a" "sigh;)" __
  these things still ap- ply,
  as time goes
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  "(re" "ly;)" __
  mat- ter fu- ture
  brings, as time goes


  _ _
  Moon- light and love songs nev- er __ out of date,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  do or die! __
  World will wel- come
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  Moon- light and love songs nev- er __ out of date,
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  do or die! __
  world will wel- come
  _ _
  world will wel- come

}

wordsMenSingleMidi = \lyricmode {
  "\nYou " "must " re mem "ber " "this, "
  "\na " "kiss " "is "  "still " "a " "kiss, "
  "\na " "sigh " "is " "just " "a " "sigh; " 
  "\n(a " "sigh;) " 
  "\nthese " "things " "still " ap "ply, "
  "\nas " "time " "goes " "by. " 
  "\nOo " 

  "\nAnd " "when " "two " lov "ers " "woo, "
  "\nthey " "still " "say "  "\"I " "love " "you,\" "
  "\non " "that " "you " "can " re "ly; " 
  "\n(re" "ly;) " 
  "\nmat" "ter " fu "ture "
  "\nbrings, " "as " "time " "goes " "by, "
  "\nOo " 
  "\nMoon" "light " "and " "love " "songs " nev "er "  "out " "of " "date, "
  "\nwom" "an " "needs " "man "
  "\nand " "man " "must " "have " "his " "mate, "
  "\nthat " "no " "one " "can " de "ny " 
  "\nIt's " "still " "the " "same " "old " sto "ry, "
  "\na " "fight " "for "  "love " "and " glo "ry, "
  "\na " "case " "of " "do " "or " "die! " 
  "\ndo " "or " "die! " 
  "\nWorld " "will " wel "come " lov "ers, " 
  "\nas " "time " "goes " "by. "
  "\nOo "  "Oo "  "Ah "  % 6a
  "\nDoo " "Doo " "Doo " "ba " "doo " "ba " 
  "\ndoo " "ba "
  "\nOo "  "Oo "  "Ah "  % 6a
  "\nDoo " "Doo " "Doo " "ba " "doo " "ba " 
  "\ndoo " "ba "
  "\nOo "  "Oo "
  "\nMoon" "light " "and " "love " "songs " nev "er "  "out " "of " "date, "
  "\nwom" "an " "needs " "man "
  "\nand " "man " "must " "have " "his " "mate, "
  "\nthat " "no " "one " "can " de "ny " 
  "\nIt's " "still " "the " "same " "old " sto "ry, "
  "\na " "fight " "for "  "love " "and " glo "ry, "
  "\na " "case " "of " "do " "or " "die! " 
  "\ndo " "or " "die! " 
  "\nworld " "will " wel "come " lov "ers, " 
  "\nworld " "will " wel "come " "lov " "ers, " 
  "\nthe " "world " "will " al "ways " wel "come " "lov " "ers " 
  "\nas " "time " "it " "goes "
  "\nas " "time " "goes "  "by. " 
}

dmA = {
  \override DynamicTextSpanner.style = #'none
  s4
  s1*3
  s2 s4 s8 s\mp
  \repeat volta 2 { s1*6 }
  \alternative { {s1*2} {s1}}
  s1
}

dmB = {
  s1*2 %3c+
  s1 % 4a
  s1
  s1\ff
  s1 % 4b
  s1\>
  s2.\! s8 s\mf
  s1*3 % 4c
  s1 % 5a
}

dmC = {
  s1*8
  \repeat volta 2 {s1*6} \alternative {{s1*2}{s1}} s1 % 6a
  s2 s4 s8 s\f % 7b
}

dmD = {
  s1
  s2. s8 s\ff
  s1*5
  s2.
}

dynamicsMen = { \dmA \dmB \dmC \dmD }

pianoRHA = \relative {
  \global
  \tripletFeel 8 {d''8 ees16 e}
  s1
  s1
  s1
  <c, ees>4. <cis e>8~q2 % 2b
  \repeat volta 2 {
    <aes ees'>2 s
    <aes des f>2 s
    <g d'>2 s % 3a
    s1
    <a ees'>2 s
    <bes f'>4 <bes e> <aes ees'> <aes d> % 3b
  }
  \alternative {
    {
      <bes d g>4 \tuplet 3/2 {d8 ees g} \tripletFeel 8 {<des g bes>8 des' c bes}
      \tripletFeel 8 {<c, aes'>8 ees c <d g>-.} r2
    }
    {
      s1
    }
  }
  s1 \bar "||"
}

pianoRHB = \relative {
  <g c ees g>4 r8 q r <c ees bes'>4.
  <bes e bes'>4 <bes e aes> \tripletFeel 8 {<bes g'>8-- <bes e>-.} r4
  <c ees aes>4 r8 q r <ees aes c>4. % 4a
  s1
  s2 <c ees aes>4 <d ges aes>
  s1 % 4b
  <aes ees' f>4 <aes d f> <bes des e g> <bes e g>
  <c ees aes>2 <aes d f>8-. <bes' bes'>4.
  <aes, ees'>2 s % 4c
  <aes des f>2 s
  <g d'>2 s
  s1 % 5a
  <a ees'>2 s
}

pianoRHC = \relative {
  <bes f'>4 g16 bes d f \tripletFeel 8 {<bes, e>8 g c bes}
  \tripletFeel 8 {aes8 c ees f} g <aes, d>4. % 5b
  s2. d'8 e16 ees
  s1
  s1 % 5c
  s1
  <c, ees>4. <cis e>8~q2
  \repeat volta 2 {
    <aes ees'>2 s % 6a
    <aes des f>2 s
    <g d'>2 s
    s2 <bes d f g>4 <bes d f> % 6b
    <a ees'>4 q <a d> <a ees'>
    <bes f'>4 <bes e> <aes ees'> <aes d>
  }
  \alternative {
    {
      <bes d g>4 \tuplet 3/2 {d8 ees g} \tripletFeel 8 {<des g bes> des' c bes} % 7a
      \tripletFeel 8 {<c, aes'>8 ees c <d g>-.} r2
    }
    {
      s1
    }
  }
  s1
}

pianoRHD = \relative {
  <bes d f>4 g16 bes d g s2 % 7b
  <a, ees'>4 q <a d> <a ees'>
  <bes d f g>4 q \tripletFeel 8 {<e g bes c>8 <c' c'>->} r d
  s1 % 8a
  <bes d>4 d16 bes g f e4\fermata \breathe r4 % FIX
  r8 <aes, ees' g> r4 q2
  r8 <aes d g> r4 q2 % 8b
  r8 <g c f> r4 q2
  <f bes ees>4 \tripletFeel 8 {<fis b e>8 <g c f>~} q4\fermata
  \bar "|."
}

pianoRH = { \pianoRHA \pianoRHB \pianoRHC \pianoRHD }

pianoRHoneA = \relative {
  \global
  \voiceOne
  s4
  \tripletFeel 8 {f''8 ees d c} d4 ees
  bes4 bes2 \tripletFeel 8 {g8 aes16 a}
  bes2 g
  s1
  \repeat volta 2 {
    s2 d4 g
    s2 g4 f
    s2 c4 ees
    \tripletFeel 8 {c8 ees fis <bes, c ees g>} ~ q4 <bes d f>-.
    s2 d4 ees
    s1
  }
  \alternative {
    {
      s1
      s1
    }
    {
      f4. f16 g <c, ees>4 bes
    }
  }
  \tripletFeel 8 {des8 ees} f4 f g \bar "||"
}

pianoRHoneB = \relative {
  s1
  s1
  s1 % 4a
  c''4 a \tripletFeel 8 {fis8 ees~} ees4
  \tuplet 3/2 {g4 aes g} s2
  <a, g'>2 g'4. ges8 % 4b
  s1
  s1
  s2 d4 g % 4c
  s2 g4 f
  s2 c4 ees
  \tripletFeel 8 {c8 ees fis <bes, c ees g>~} q4 <bes d f>-. % 5a
  s2 d4 ees
}

pianoRHoneC = \relative {
  s1
  s1 % 5b
  f'4 \tripletFeel 8 {ees8 <g, c f>~} q4 s
  \tripletFeel 8 {f''8 ees d c} d4 ees
  bes4 bes2 g8 aes16 a % 5c
  bes2 g
  s1
  \repeat volta 2 {
    s2 d4 g % 6a
    s2 g4 f
    s2 c4 ees
    \tripletFeel 8 {c8 ees} fis4 s2 % 6b
    s1
    s1
  }
  \alternative {
    {
      s1 % 7a
      s1
    }
    {
      f4. f16 g \tripletFeel 8 {ees8 bes c ees}
    }
  }
  \tripletFeel 8 {des8 ees} f4 f g
}

pianoRHoneD = \relative {
  s2 e'4. d8 % 7b
  s1
  s1
  \tripletFeel 8 {f'8 ees d c} d4 ees % 8a
}

pianoRHone = { \pianoRHoneA \pianoRHoneB \pianoRHoneC \pianoRHoneD }

pianoRHtwoA = \relative {
  \global
  \voiceTwo
  s4
  a'2 a
  f2 e
  r8 ees4. r8 d4.
  s1 % 2b
  \repeat volta 2 {
    s2 aes
    s2 <aes d>
    s2 aes
    a4. s8 s2
    s2 a
    s1
  }
  \alternative {
    {
      s1
      s1
    }
    {
      <g c>2 g
    }
  }
  aes2 g \bar "||"
}

pianoRHtwoB = \relative {
  s1
  s1
  s1 % 4a
  ees'2 a,
  <c ees>2 s
  \tripletFeel 8 {ees8 d~ \tuplet 3/2 {d ees d}} <a ees'>2 % 4b
  s1
  s1
  s2 aes2 % 4c
  s2 <aes d>
  s2 aes
  a4. s8 s2 % 5a
  s2 a
}

pianoRHtwoC = \relative {
  s1
  s1 % 5b
  <g c>4. s8 s2
  a'2 a
  f2 e % 5c
  r8 ees4. r8 d4.
  s1
  \repeat volta 2 {
    s2 aes % 6a
    s2 <aes d>
    s2 aes
    a2 s % 6b
    s1
    s1
  }
  \alternative {
    {
      s1 % 7a
      s1
    }
    {
      <g c>2 g
    }
  }
  aes2 g \bar "||"
}

pianoRHtwoD = \relative {
  s2 bes % 7b
  s1
  s1
  a'2 a % 8a
}

pianoRHtwo = { \pianoRHtwoA \pianoRHtwoB \pianoRHtwoC \pianoRHtwoD }

dpA = {
  \override DynamicTextSpanner.style = #'none
  s4
  s1\mf
  s1
  s1
  s1
  \repeat volta 2 {s1\mp s1*5} \alternative {{s1*2} {s1}}
  s1
}

dpB = {
  s1\mf
  s1
  s1 % 4a
  s1
  s1\ff
  s1 % 4b
  s1\>
  s1\!
  s1\mf % 4c
  s1
  s1
  s1 % 5a
  s1
}

dpC = {
  s1*7
  \repeat volta 2 {s1*6} \alternative {{s1*2}{s1}} % 6a
  s1
}

dpD = {
  s1 % 7b
  s1\f
  s1
  s2.\ff s4-\markup \italic rit. % 8a
  s1
  s1-\markup \italic {a tempo}
  s1*3
}

dynamicsPiano = { \dpA \dpB \dpC \dpD }

pianoLHA = \relative {
  \global
  \oneVoice
  r4
  <f ees'>2 <fis ees'>
  <g d'>2 <c, bes'>
  r8 <f aes>4. r8 <bes, aes'>4.
  <ees g>4. <e g>8~2 % 2b
  \repeat volta 2 {
    f,4 c' bes2
    bes4 f' bes,4. bes8~
    <ees, bes'>2 <f ees'> % 3a
    <fis ees'>4. g8~4 g-.
    <f ees'>2 <fis ees'>
    g4 c f, bes % 3b
  }
  \alternative {
    {
      ees,2 e
      <f ees'>4. <bes aes'>8 r <bes, bes'>4.
    }
    {
      s1
    }
  }
  s1 \bar "||"
}

pianoLHB = \relative {
  s1*2
  f,4 g aes c % 4a
  s2 ees4. fis8
  \tuplet 3/2 {<c g'>4~<c aes'> <bes g'>} <aes ges'>4 q
  <f ees'>2 q % 4b
  bes4. bes8 e2
  f4 f, bes8-. r8 r4
  s1*3 % 4c -- FIX
  <fis ees'>4. g8~g4 g-. % 5a
  <f ees'>2 <fis ees'>
}

pianoLHC = \relative {
  g,2 c,
  f2 bes % 5b
  ees,4 \tripletFeel 8 {bes'8 ees~} ees4 r
  <f ees'>2 <fis ees'>
  <g d'>2 <c, bes'> % 5c
  r8 <f aes>4. r8 <bes, aes'>4.
  <ees g>4. <e g>8 r8 ees,4.
  \repeat volta 2 {
    f4 c' bes2 % 6a
    bes4 f' bes,4. bes8~
    <ees, bes'>2 <f ees'>
    <fis ees'>2 g4 g % 6b
    s1
    g4 c f, bes
  }
  \alternative {
    {
      ees,2 e
      <f ees'>4. <bes aes'>8-. r <bes, bes'>4.
    }
    {
      ees4 bes' ees2
    }
  }
  bes4. bes8 ees,2
}

pianoLHD = \relative {
  g,2 \tripletFeel 8 {ees8 g} c4
  s1*2 %%% FIX
  <f, ees'>2 <fis ees'> % 8a
  <g f'>2 <c bes'>4\fermata \breathe r4 % FIX
  f,1
  bes1 % 8b
  ees,1
  des4 \tripletFeel 8 {d8 ees~} ees4\fermata
  \bar "|."
}

pianoLH = { \pianoLHA \pianoLHB \pianoLHC \pianoLHD }

pianoLHoneA = \relative {
  \global
  \voiceOne
  s4
  s1*3
  s1 % 2b
  \repeat volta 2 {s1*6} \alternative {{s1*2} {s1}}
  s1
}

pianoLHoneB = \relative {
  s1
  s1
  s1 % 4a
  ges2 s
  s1
  s1*3 % 4b
  s1*3 % 4c FIX
  s1*2 % 5a
}

pianoLHoneC = \relative {
  s1 % 5a++
  s1*6 % 5b
  \repeat volta 2 {
    s1*4
    ees4 ees ees ees
    s1
  }
  \alternative {{s1 s1}{s1}}
  s1
}

pianoLHoneD = \relative {
}

pianoLHone = { \pianoLHoneA \pianoLHoneB \pianoLHoneC \pianoLHoneD }

pianoLHtwoA = \relative {
  \global
  \voiceTwo
  s4
  s1*3
  s1 % 2b
  \repeat volta 2 {s1*6} \alternative {{s1*2} {s1}}
  s1
}

pianoLHtwoB = \relative {
  s1
  s1
  s1 % 4a
  a,4. a8 s2
  s1
  s1*3 % 4b
  s1*3 % 4c FIX
  s1*2 % 5a
}

pianoLHtwoC = \relative {
  s1 % 5a++
  s1*6 % 5b
  \repeat volta 2 {
    s1*4
    f,2 fis
    s1
  }
  \alternative {{s1 s1}{s1}}
  s1
}

pianoLHtwoD = \relative {
}

pianoLHtwo = { \pianoLHtwoA \pianoLHtwoB \pianoLHtwoC \pianoLHtwoD }

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new Voice \TempoTrack
        \new Voice \RehearsalTrack
        \new ChoirStaff <<
                                  % Single solo staff
          \new Staff \with { instrumentName = #"Solo" shortInstrumentName = #"Solo" } <<
            \new Voice = "solo" \solo
            \new Lyrics \lyricsto "solo" \wordsSoloOne
            \new Lyrics \lyricsto "solo" \wordsSoloTwo
          >>
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Lyrics = "sopabove"
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new NullVoice = "aligner" \soprano
            \new Lyrics \lyricsto "aligner" \wordsWomenOne
            \new Lyrics \lyricsto "aligner" \wordsWomenTwo
            \new Lyrics \lyricsto "alto" \wordsAlto
            \context Lyrics = "sopabove" \lyricsto "soprano" { \wordsSoprano }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenor }
            \new Voice = "bass"  { \voiceTwo \bass  }
            \new Lyrics \lyricsto "bass" \wordsMenOne
            \new Lyrics \lyricsto "bass" \wordsMenTwo
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff <<
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "single"
  \score {
  \unfoldRepeats
%   \articulate
    <<
      <<
        \new Voice { \TempoA \TempoB \TempoC \TempoB \TempoD }
        \new Voice { \RehearsalTrackA \RehearsalTrackB \RehearsalTrackC \RehearsalTrackB \RehearsalTrackD }
        \new ChoirStaff <<
                                  % Single solo staff
          \new Staff \with { instrumentName = #"Solo" shortInstrumentName = #"Solo" } <<
            \new Voice = "solo" { \soloA \soloB \soloC \soloB \soloD }
            \new Lyrics \lyricsto "solo" \wordsSoloSingle
          >>
                                  % Joint soprano/alto staff
          \new Dynamics { \dwA \dwB \dwC \dwB \dwD }
          \new Lyrics = "sopabove"
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice = "soprano" { \voiceOne \sopranoA \sopranoB \sopranoC \sopranoB \sopranoD }
            \new Voice = "alto"    { \voiceTwo \altoA    \altoB    \altoC    \altoB    \altoD    }
            \new NullVoice = "aligner" { \sopranoA \sopranoB \sopranoC \sopranoB \sopranoD }
            \new Lyrics \lyricsto "aligner" \wordsWomenSingle
            \new Lyrics \lyricsto "alto" \wordsAltoSingle
            \context Lyrics = "sopabove" \lyricsto "soprano" { \wordsSopranoSingle }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenorA \tenorB \tenorC \tenorB \tenorD }
            \new Voice = "bass"  { \voiceTwo \bassA  \bassB  \bassC  \bassB  \bassD  }
            \new Lyrics \lyricsto "bass" \wordsMenSingle
          >>
        >>
      <<
        \new ChordNames { \ChordTrackA \ChordTrackB \ChordTrackC \ChordTrackB \ChordTrackD }
%        \new FretBoards { \ChordTrackA \ChordTrackB \ChordTrackC \ChordTrackB \ChordTrackD }
      >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice { \pianoRHA \pianoRHB \pianoRHC \pianoRHB \pianoRHD }
            \new Voice { \pianoRHoneA \pianoRHoneB \pianoRHoneC \pianoRHoneB \pianoRHoneD }
            \new Voice { \pianoRHtwoA \pianoRHtwoB \pianoRHtwoC \pianoRHtwoB \pianoRHtwoD }
          >>
          \new Dynamics { \dpA \dpB \dpC \dpB \dpD }
          \new Staff <<
            \clef "bass"
            \new Voice { \pianoLHA \pianoLHB \pianoLHC \pianoLHB \pianoLHD }
            \new Voice { \pianoLHoneA \pianoLHoneB \pianoLHoneC \pianoLHoneB \pianoLHoneD }
            \new Voice { \pianoLHtwoA \pianoLHtwoB \pianoLHtwoC \pianoLHtwoB \pianoLHtwoD }
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
  \bookOutputSuffix "midi-solo"
  \score {
  \unfoldRepeats
%   \articulate
    <<
      <<
        \new Voice { \TempoA \TempoB \TempoC \TempoB \TempoD }
        \new Voice { \RehearsalTrackA \RehearsalTrackB \RehearsalTrackC \RehearsalTrackB \RehearsalTrackD }
        \new ChoirStaff <<
                                  % Single solo staff
          \new Staff \with { instrumentName = #"Solo" shortInstrumentName = #"Solo" } <<
            \new Voice = "solo" { \soloA \soloB \soloC \soloB \soloD }
            \new Lyrics \lyricsto "solo" \wordsSoloSingleMidi
          >>
                                  % Joint soprano/alto staff
          \new Dynamics { \dwA \dwB \dwC \dwB \dwD }
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice = "soprano" { \voiceOne \sopranoA \sopranoB \sopranoC \sopranoB \sopranoD }
            \new Voice = "alto"    { \voiceTwo \altoA    \altoB    \altoC    \altoB    \altoD    }
            \new NullVoice = "aligner" { \sopranoA \sopranoB \sopranoC \sopranoB \sopranoD }
%            \new Lyrics \lyricsto "aligner" \wordsSopranoSingleMidi
%            \new Lyrics \lyricsto "alto" \wordsAltoSingleMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenorA \tenorB \tenorC \tenorB \tenorD }
            \new Voice = "bass"  { \voiceTwo \bassA  \bassB  \bassC  \bassB  \bassD  }
%            \new Lyrics \lyricsto "bass" \wordsMenSingleMidi
          >>
        >>
      <<
        \new ChordNames { \ChordTrackA \ChordTrackB \ChordTrackC \ChordTrackB \ChordTrackD }
%        \new FretBoards { \ChordTrackA \ChordTrackB \ChordTrackC \ChordTrackB \ChordTrackD }
      >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice { \pianoRHA \pianoRHB \pianoRHC \pianoRHB \pianoRHD }
            \new Voice { \pianoRHoneA \pianoRHoneB \pianoRHoneC \pianoRHoneB \pianoRHoneD }
            \new Voice { \pianoRHtwoA \pianoRHtwoB \pianoRHtwoC \pianoRHtwoB \pianoRHtwoD }
          >>
          \new Dynamics { \dpA \dpB \dpC \dpB \dpD }
          \new Staff <<
            \clef "bass"
            \new Voice { \pianoLHA \pianoLHB \pianoLHC \pianoLHB \pianoLHD }
            \new Voice { \pianoLHoneA \pianoLHoneB \pianoLHoneC \pianoLHoneB \pianoLHoneD }
            \new Voice { \pianoLHtwoA \pianoLHtwoB \pianoLHtwoC \pianoLHtwoB \pianoLHtwoD }
          >>
        >>
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
        \new Voice { \TempoA \TempoB \TempoC \TempoB \TempoD }
        \new Voice { \RehearsalTrackA \RehearsalTrackB \RehearsalTrackC \RehearsalTrackB \RehearsalTrackD }
        \new ChoirStaff <<
                                  % Single solo staff
          \new Staff \with { instrumentName = #"Solo" shortInstrumentName = #"Solo" } <<
            \new Voice = "solo" { \soloA \soloB \soloC \soloB \soloD }
%            \new Lyrics \lyricsto "solo" \wordsSoloSingleMidi
          >>
                                  % Joint soprano/alto staff
          \new Dynamics { \dwA \dwB \dwC \dwB \dwD }
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice = "soprano" { \voiceOne \sopranoA \sopranoB \sopranoC \sopranoB \sopranoD }
            \new Voice = "alto"    { \voiceTwo \altoA    \altoB    \altoC    \altoB    \altoD    }
            \new Lyrics \lyricsto "soprano" \wordsSopranoSingleMidi
%            \new Lyrics \lyricsto "alto" \wordsAltoSingleMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenorA \tenorB \tenorC \tenorB \tenorD }
            \new Voice = "bass"  { \voiceTwo \bassA  \bassB  \bassC  \bassB  \bassD  }
%            \new Lyrics \lyricsto "bass" \wordsMenSingleMidi
          >>
        >>
      <<
%        \new ChordNames { \ChordTrackA \ChordTrackB \ChordTrackC \ChordTrackB \ChordTrackD }
%        \new FretBoards { \ChordTrackA \ChordTrackB \ChordTrackC \ChordTrackB \ChordTrackD }
      >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice { \pianoRHA \pianoRHB \pianoRHC \pianoRHB \pianoRHD }
            \new Voice { \pianoRHoneA \pianoRHoneB \pianoRHoneC \pianoRHoneB \pianoRHoneD }
            \new Voice { \pianoRHtwoA \pianoRHtwoB \pianoRHtwoC \pianoRHtwoB \pianoRHtwoD }
          >>
          \new Dynamics { \dpA \dpB \dpC \dpB \dpD }
          \new Staff <<
            \clef "bass"
            \new Voice { \pianoLHA \pianoLHB \pianoLHC \pianoLHB \pianoLHD }
            \new Voice { \pianoLHoneA \pianoLHoneB \pianoLHoneC \pianoLHoneB \pianoLHoneD }
            \new Voice { \pianoLHtwoA \pianoLHtwoB \pianoLHtwoC \pianoLHtwoB \pianoLHtwoD }
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
        \new Voice { \TempoA \TempoB \TempoC \TempoB \TempoD }
        \new Voice { \RehearsalTrackA \RehearsalTrackB \RehearsalTrackC \RehearsalTrackB \RehearsalTrackD }
        \new ChoirStaff <<
                                  % Single solo staff
          \new Staff \with { instrumentName = #"Solo" shortInstrumentName = #"Solo" } <<
            \new Voice = "solo" { \soloA \soloB \soloC \soloB \soloD }
%            \new Lyrics \lyricsto "solo" \wordsSoloSingleMidi
          >>
                                  % Joint soprano/alto staff
          \new Dynamics { \dwA \dwB \dwC \dwB \dwD }
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice = "soprano" { \voiceOne \sopranoA \sopranoB \sopranoC \sopranoB \sopranoD }
            \new Voice = "alto"    { \voiceTwo \altoA    \altoB    \altoC    \altoB    \altoD    }
            \new Lyrics \lyricsto "alto" \wordsAltoSingleMidi
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenorA \tenorB \tenorC \tenorB \tenorD }
            \new Voice = "bass"  { \voiceTwo \bassA  \bassB  \bassC  \bassB  \bassD  }
          >>
        >>
      <<
%        \new ChordNames { \ChordTrackA \ChordTrackB \ChordTrackC \ChordTrackB \ChordTrackD }
%        \new FretBoards { \ChordTrackA \ChordTrackB \ChordTrackC \ChordTrackB \ChordTrackD }
      >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice { \pianoRHA \pianoRHB \pianoRHC \pianoRHB \pianoRHD }
            \new Voice { \pianoRHoneA \pianoRHoneB \pianoRHoneC \pianoRHoneB \pianoRHoneD }
            \new Voice { \pianoRHtwoA \pianoRHtwoB \pianoRHtwoC \pianoRHtwoB \pianoRHtwoD }
          >>
          \new Dynamics { \dpA \dpB \dpC \dpB \dpD }
          \new Staff <<
            \clef "bass"
            \new Voice { \pianoLHA \pianoLHB \pianoLHC \pianoLHB \pianoLHD }
            \new Voice { \pianoLHoneA \pianoLHoneB \pianoLHoneC \pianoLHoneB \pianoLHoneD }
            \new Voice { \pianoLHtwoA \pianoLHtwoB \pianoLHtwoC \pianoLHtwoB \pianoLHtwoD }
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
        \new Voice { \TempoA \TempoB \TempoC \TempoB \TempoD }
        \new Voice { \RehearsalTrackA \RehearsalTrackB \RehearsalTrackC \RehearsalTrackB \RehearsalTrackD }
        \new ChoirStaff <<
                                  % Single solo staff
          \new Staff \with { instrumentName = #"Solo" shortInstrumentName = #"Solo" } <<
            \new Voice = "solo" { \soloA \soloB \soloC \soloB \soloD }
          >>
                                  % Joint soprano/alto staff
          \new Dynamics { \dwA \dwB \dwC \dwB \dwD }
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice = "soprano" { \voiceOne \sopranoA \sopranoB \sopranoC \sopranoB \sopranoD }
            \new Voice = "alto"    { \voiceTwo \altoA    \altoB    \altoC    \altoB    \altoD    }
            \new NullVoice = "aligner" { \sopranoA \sopranoB \sopranoC \sopranoB \sopranoD }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \voiceOne \tenorA \tenorB \tenorC \tenorB \tenorD }
            \new Voice = "bass"  { \voiceTwo \bassA  \bassB  \bassC  \bassB  \bassD  }
            \new Lyrics \lyricsto "bass" \wordsMenSingleMidi
          >>
        >>
      <<
%        \new ChordNames { \ChordTrackA \ChordTrackB \ChordTrackC \ChordTrackB \ChordTrackD }
%        \new FretBoards { \ChordTrackA \ChordTrackB \ChordTrackC \ChordTrackB \ChordTrackD }
      >>
        \new PianoStaff <<
          \new Staff <<
            \new Voice { \pianoRHA \pianoRHB \pianoRHC \pianoRHB \pianoRHD }
            \new Voice { \pianoRHoneA \pianoRHoneB \pianoRHoneC \pianoRHoneB \pianoRHoneD }
            \new Voice { \pianoRHtwoA \pianoRHtwoB \pianoRHtwoC \pianoRHtwoB \pianoRHtwoD }
          >>
          \new Dynamics { \dpA \dpB \dpC \dpB \dpD }
          \new Staff <<
            \clef "bass"
            \new Voice { \pianoLHA \pianoLHB \pianoLHC \pianoLHB \pianoLHD }
            \new Voice { \pianoLHoneA \pianoLHoneB \pianoLHoneC \pianoLHoneB \pianoLHoneD }
            \new Voice { \pianoLHtwoA \pianoLHtwoB \pianoLHtwoC \pianoLHtwoB \pianoLHtwoD }
          >>
        >>
      >>
    >>
    \midi {}
  }
}

