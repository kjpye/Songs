\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Softly, O Midnight Hours!"
%  subtitle    = "Four Romantic Choruses No. 3"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Colin Brumby"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Aubrey de Vere"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
 tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 17) % uncomment for multiple systems per page

global = {
  \key g \major
  \time 3/4
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    \tempo 4=90
    s2.*14
    \time 2/4 s8 \tempo 4=85 s4. \time 3/4 s2.
    \tempo 4=90
    s2.*14
    \time 2/4 s8 \tempo 4=85 s4. \time 3/4 s2.
    s2.
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \repeat volta 2 {
    \mark \markup { \circle "8a" } s2.*3
    \mark \markup { \circle "8b" } s2.*5
    \mark \markup { \circle "9a" } s2.*4
    \mark \markup { \circle "9b" } s2.*2 s2 s2.
    \mark \markup { \circle "10a" } s2.*4
    \mark \markup { \circle "10b" } s2.*5
    \mark \markup { \circle "11a" } s2.*4
    \mark \markup { \circle "11b" } s2. s2 s2.
  }
  \alternative {{s2.}{s2.}}
}

soprano = \relative {
  \global
  \repeat volta 2 {
    fis'4^\p^\markup\bold "Andante sommesso" 4.^\< g8
    a8.^\> g16 fis4. g8^\cresc
    a8. b16 d4. c8
    b4^\dim ~4. 8 % 8b
    a8. 16 4. 8
    g2 d4\<
    d4(c4.) e8\!
    fis2^\> a4
    d,8.^\cresc 16 e4. 8 % 9a
    g4(fis4.) 8
    a8. 16 g4. 8
    b4(a4.) 8
    c4(b4.) 8 % 9b
    d4 c e^\mf( \time 2/4
    e8) c\omit\dim^\markup\italic "dim. e rall." a g \time 3/4
    g2^\p(fis4\fermata)
    e4\omit\p^\markup\italic {\dynamic p a tempo} e4.^\< fis8 % 10a
    g8.^\> fis16\! e4. fis8^\cresc
    g8. a16 c4. b8
    a4^\dim ~4. 8
    g8. 16 4. 8 % 10b
    fis2 c'4^\<
    c4(b4.)\! d8
    e,2^\> r4\!
    d4 4.^\cresc 8
    e8. 16 g4(fis~ % 11a
    fis8) 8 a8. 16 g4~
    g8 8 b4(a8.) 16
    \slurDashed c4(b4.) 8
    d4(c) \slurSolid e4^\mf ~ \time 2/4
    e8 c\omit\dim^\markup\italic "dim. e rall." a g \time 3/4
    g2(a4~
  }
  \alternative {
    {
      a4^\p b2\fermata)
    }
    {
      a4\repeatTie^\p (<g b>2) \fermata
    }
  }
  \bar "|."
}

sopranoSingle = \relative {
  \global
  fis'4^\p^\markup\bold "Andante sommesso" 4.^\< g8
  a8.^\> g16 fis4. g8^\cresc
  a8. b16 d4. c8
  b4^\dim ~4. 8 % 8b
  a8. 16 4. 8
  g2 d4\<
  d4(c4.) e8\!
  fis2^\> a4
  d,8.^\cresc 16 e4. 8 % 9a
  g4(fis4.) 8
  a8. 16 g4. 8
  b4(a4.) 8
  c4(b4.) 8 % 9b
  d4 c e^\mf( \time 2/4
  e8) c\omit\dim^\markup\italic "dim. e rall." a g \time 3/4
  g2^\p(fis4\fermata)
  e4\omit\p^\markup\italic {\dynamic p a tempo} e4.^\< fis8 % 10a
  g8.^\> fis16\! e4. fis8^\cresc
  g8. a16 c4. b8
  a4^\dim ~4. 8
  g8. 16 4. 8 % 10b
  fis2 c'4^\<
  c4(b4.)\! d8
  e,2^\> r4\!
  d4 4.^\cresc 8
  e8. 16 g4(fis~ % 11a
  fis8) 8 a8. 16 g4~
  g8 8 b4(a8.) 16
  c4(b4.) 8
  d4 c e4^\mf ~ \time 2/4 % 11b
  e8 c\omit\dim^\markup\italic "dim. e rall." a g \time 3/4
  g2(a4~
  a4^\p b2\fermata) \bar "||" \break
% second time
  fis4^\p 4.^\< g8
  a8.^\> g16 fis4. g8^\cresc
  a8. b16 d4. c8
  b4^\dim ~4. 8 % 8b
  a8. 16 4. 8
  g2 d4\<
  d4(c4.) e8\!
  fis2^\> a4
  d,8.^\cresc 16 e4. 8 % 9a
  g4(fis4.) 8
  a8. 16 g4. 8
  b4(a4.) 8
  c4(b4.) 8 % 9b
  d4 c e^\mf( \time 2/4
  e8) c\omit\dim^\markup\italic "dim. e rall." a g \time 3/4
  g2^\p(fis4\fermata)
  e4\omit\p^\markup\italic {\dynamic p a tempo} e4.^\< fis8 % 10a
  g8.^\> fis16\! e4. fis8^\cresc
  g8. a16 c4. b8
  a4^\dim ~4. 8
  g8. 16 4. 8 % 10b
  fis2 c'4^\<
  c4(b4.)\! d8
  e,2^\> r4\!
  d4 4.^\cresc 8
  e8. 16 g4(fis~ % 11a
  fis8) 8 a8. 16 g4~
  g8 8 b4(a8.) 16
  c4 b4. 8
  d4(c) e4^\mf ~ \time 2/4
  e8 c\omit\dim^\markup\italic "dim. e rall." a g \time 3/4
  g2(a4~
  a4^\p <g b>2) \fermata
  \bar "|."
}

nom  = { \set   ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

wordsSopOne = \lyricmode {
  \set stanza = "1."
  Soft -- ly, O mid -- night hours!
  Move soft -- ly o'er the bow'rs __
  Where lies in hap -- py sleep a girl __ so fair!
  for ye have pow'r, men say, __
  Our hearts in sleep to sway, __
  And cage __ cold fan -- cies in __ a moon -- light snare. __

  \set stanza = "2."
  Round ev -- 'ry neck and arm
  En -- clasp a sep -- 'rate charm; __
  Hang o'er her pois'd, but breathe nor sigh __ nor pray'r;
  Si -- lent -- ly ye may smile, __
  But hold your breath __ the while, __
  And let __ the \nom wind sweep \yesm back __ your cloud -- y hair. __
}

wordsSopTwo = \lyricmode {
  \set stanza = "3."
  Bend down your glit -- t'ring urns,
  Ere yet the dawn re -- turns, __
  And star with dew the lawn her feet __ shall tread;
  Up -- on the air rain balm, __
  Bid all the woods be calm, __
  Am -- bro -- sial dreams with health -- ful slum -- bers wed. __

  \set stanza = "4."
  That so the Maid -- en may
  With smiles your care re -- pay. __
  When from her couch she lifts her gold -- en head;
  Wak -- ing with ear -- liest birds, __
  Ere yet the mist -- y herds __
  Leave \nom warm 'mid \yesm the
  gray __ grass __ their dusk -- y bed. __ "(bed.)"
}

wordsSopSingle = \lyricmode {
  \set stanza = "1."
  Soft -- ly, O mid -- night hours!
  Move soft -- ly o'er the bow'rs __
  Where lies in hap -- py sleep a girl __ so fair!
  for ye have pow'r, men say, __
  Our hearts in sleep to sway, __
  And cage __ cold fan -- cies in __ a moon -- light snare. __

  \set stanza = "2."
  Round ev -- 'ry neck and arm
  En -- clasp a sep -- 'rate charm; __
  Hang o'er her pois'd, but breathe nor sigh __ nor pray'r;
  Si -- lent -- ly ye may smile, __
  But hold your breath __ the while, __
  And let __ the wind sweep back __ your cloud -- y hair. __

  \set stanza = "3."
  Bend down your glit -- t'ring urns,
  Ere yet the dawn re -- turns, __
  And star with dew the lawn her feet __ shall tread;
  Up -- on the air rain balm, __
  Bid all the woods be calm, __
  Am -- bro -- sial dreams with health -- ful slum -- bers wed. __

  \set stanza = "4."
  That so the Maid -- en may
  With smiles your care re -- pay. __
  When from her couch she lifts her gold -- en head;
  Wak -- ing with ear -- liest birds, __
  Ere yet the mist -- y herds __
  Leave warm 'mid the
  gray __ grass __ their dusk -- y bed. __ "(bed.)"
}

wordsSopMidi = \lyricmode {
  \set stanza = "1."
  "Soft" "ly, " "O " mid "night " "hours! "
  "\nMove " soft "ly " "o'er " "the " "bow'rs " 
  "\nWhere " "lies " "in " hap "py " "sleep " "a " "girl "  "so " "fair! "
  "\nfor " "ye " "have " "pow'r, " "men " "say, " 
  "\nOur " "hearts " "in " "sleep " "to " "sway, " 
  "\nAnd " "cage "  "cold " fan "cies " "in "  "a " moon "light " "snare. " 

  \set stanza = "2."
  "\nRound " ev "'ry " "neck " "and " "arm "
  "\nEn" "clasp " "a " sep "'rate " "charm; " 
  "\nHang " "o'er " "her " "pois'd, " "but " "breathe " "nor " "sigh "  "nor " "pray'r; "
  "\nSi" lent "ly " "ye " "may " "smile, " 
  "\nBut " "hold " "your " "breath "  "the " "while, " 
  "\nAnd " "let "  "the " "wind " "sweep " "back "  "your " cloud "y " "hair. " 

  \set stanza = "3."
  "\nBend " "down " "your " glit "t'ring " "urns, "
  "\nEre " "yet " "the " "dawn " re "turns, " 
  "\nAnd " "star " "with " "dew " "the " "lawn " "her " "feet "  "shall " "tread; "
  "\nUp" "on " "the " "air " "rain " "balm, " 
  "\nBid " "all " "the " "woods " "be " "calm, " 
  "\nAm" bro "sial " "dreams " "with " health "ful " slum "bers " "wed. " 

  \set stanza = "4."
  "\nThat " "so " "the " Maid "en " "may "
  "\nWith " "smiles " "your " "care " re "pay. " 
  "\nWhen " "from " "her " "couch " "she " "lifts " "her " gold "en " "head; "
  "\nWak" "ing " "with " ear "liest " "birds, " 
  "\nEre " "yet " "the " mist "y " "herds " 
  "\nLeave " "warm " "'mid " "the "
  "\ngray "  "grass "  "their " dusk "y " "bed. "  "(bed.) "
}

alto = \relative {
  \global
  \repeat volta 2 {
    e'4^\p e4.^\< d8
    fis8.^\> d16 e4. d8^\cresc
    fis8. g16 4. fis8
    fis4^\dim (e4.) 8 % 8b
    e8. 16 d4. 8
    d2 g4^\<
    g4.(b8)\! a8(g)
    e4^\> (d) fis\!
    b,8.^\cresc 16 4. 8 % 9a
    e4~4. 8
    d8. fis16 d4. 8
    g4~4. 8
    a4~4. gis8 % 9b
    g4 fis e^\mf ~ \time 2/4
    e8 g\omit\dim^\markup\italic "dim. e rall." e8 ees \time 3/4
    c2.\fermata^\p
    d4\omit\p^\markup\italic {\dynamic p a tempo} 4.^\< c8 % 10a
    e8.^\> d16 4. c8^\cresc
    e8. fis16 4. e8
    e4^\dim (d4.) 8
    d8. 16 c4. 8 % 10b
    c2 fis4^\<
    fis4.(a8)\~ g8(fis)
    d4^\> (c) r\!
    b4 4.^\cresc 8
    b8. 16 e2~ % 11a
    e8 e d8. 16 4~
    d8 8 g4~8. 16
    \slurDashed a4(4.) gis8
    g4(fis) \slurSolid e^\mf ~ \time 2/4 % 11b
    e8 g\omit\dim^\markup\italic "dim. e rall." e ees \time 3/4
    c2(e4~
  }
  \alternative {
    {
      e4^\p dis2\fermata)
    }
    {
      e4\repeatTie^\p (<d g>2\fermata)
    }
  }
  \bar "|."
}

altoSingle = \relative {
  \global
  e'4^\p e4.^\< d8
  fis8.^\> d16 e4. d8^\cresc
  fis8. g16 4. fis8
  fis4^\dim (e4.) 8 % 8b
  e8. 16 d4. 8
  d2 g4^\<
  g4.(b8)\! a8(g)
  e4^\> (d) fis\!
  b,8.^\cresc 16 4. 8 % 9a
  e4~4. 8
  d8. fis16 d4. 8
  g4~4. 8
  a4~4. gis8 % 9b
  g4 fis e^\mf ~ \time 2/4
  e8 g\omit\dim^\markup\italic "dim. e rall." e8 ees \time 3/4
  c2.\fermata^\p
  d4\omit\p^\markup\italic {\dynamic p a tempo} 4.^\< c8 % 10a
  e8.^\> d16 4. c8^\cresc
  e8. fis16 4. e8
  e4^\dim (d4.) 8
  d8. 16 c4. 8 % 10b
  c2 fis4^\<
  fis4.(a8)\~ g8(fis)
  d4^\> (c) r\!
  b4 4.^\cresc 8
  b8. 16 e2~ % 11a
  e8 e d8. 16 4~
  d8 8 g4~8. 16
  a4~4. gis8
  g4 fis e^\mf ~ \time 2/4 % 11b
  e8 g\omit\dim^\markup\italic "dim. e rall." e ees \time 3/4
  c2(e4~
  e4^\p dis2\fermata)
% second time
  e4^\p e4.^\< d8
  fis8.^\> d16 e4. d8^\cresc
  fis8. g16 4. fis8
  fis4^\dim (e4.) 8 % 8b
  e8. 16 d4. 8
  d2 g4^\<
  g4.(b8)\! a8(g)
  e4^\> (d) fis\!
  b,8.^\cresc 16 4. 8 % 9a
  e4~4. 8
  d8. fis16 d4. 8
  g4~4. 8
  a4~4. gis8 % 9b
  g4 fis e^\mf ~ \time 2/4
  e8 g\omit\dim^\markup\italic "dim. e rall." e8 ees \time 3/4
  c2.\fermata^\p
  d4\omit\p^\markup\italic {\dynamic p a tempo} 4.^\< c8 % 10a
  e8.^\> d16 4. c8^\cresc
  e8. fis16 4. e8
  e4^\dim (d4.) 8
  d8. 16 c4. 8 % 10b
  c2 fis4^\<
  fis4.(a8)\~ g8(fis)
  d4^\> (c) r\!
  b4 4.^\cresc 8
  b8. 16 e2~ % 11a
  e8 e d8. 16 4~
  d8 8 g4~8. 16
  a4 4. gis8
  g4(fis) e^\mf ~ \time 2/4 % 11b
  e8 g\omit\dim^\markup\italic "dim. e rall." e ees \time 3/4
  c2(e4~
  e4^\p <d g>2\fermata)
  \bar "|."
}

wordsAltoOne = \lyricmode {
  \set stanza = "1."
  Soft -- ly, O mid -- night hours!
  Move soft -- ly o'er the bow'rs __
  Where lies in hap -- py sleep a girl __ so __ fair! __
  for ye have pow'r, men say, __
  Our hearts in sleep to sway, __
  And cage __ cold fan -- cies in __ a moon -- light snare.

  \set stanza = "2."
  Round ev -- 'ry neck and arm
  En -- clasp a sep -- 'rate charm; __
  Hang o'er her pois'd, but breathe nor sigh __ nor __ pray'r;
  Si -- lent -- ly ye may smile, __
  But hold your breath __ the while, __
  And let __ the \nom wind sweep \yesm back __ your cloud -- y hair. __
}

wordsAltoTwo = \lyricmode {
  \set stanza = "3."
  Bend down your glit -- t'ring urns,
  Ere yet the dawn re -- turns, __
  And star with dew the lawn er feet __ shall __ tread; __
  Up -- on the air rain balm, __
  Bid all the woods be calm, __
  Am -- bro -- sial dreams with health -- ful slum -- bers wed.

  \set stanza = "4."
  That so the Maid -- en may
  With smiles your care re -- pay. __
  When from her couch she lifts her gold -- en head;
  Wak -- ing with ear -- liest birds, __
  Ere yet the mist -- y herds __
  Leave \nom warm 'mid \yesm the
  gray __ grass __ their dusk -- y bed. __ "(bed.)"
}

wordsAltoSingle = \lyricmode {
  \set stanza = "1."
  Soft -- ly, O mid -- night hours!
  Move soft -- ly o'er the bow'rs __
  Where lies in hap -- py sleep a girl __ so __ fair! __
  for ye have pow'r, men say, __
  Our hearts in sleep to sway, __
  And cage __ cold fan -- cies in __ a moon -- light snare.

  \set stanza = "2."
  Round ev -- 'ry neck and arm
  En -- clasp a sep -- 'rate charm; __
  Hang o'er her pois'd, but breathe nor sigh __ nor __ pray'r;
  Si -- lent -- ly ye may smile, __
  But hold your breath __ the while, __
  And let __ the wind sweep back __ your cloud -- y hair. __

  \set stanza = "3."
  Bend down your glit -- t'ring urns,
  Ere yet the dawn re -- turns, __
  And star with dew the lawn er feet __ shall __ tread; __
  Up -- on the air rain balm, __
  Bid all the woods be calm, __
  Am -- bro -- sial dreams with health -- ful slum -- bers wed.

  \set stanza = "4."
  That so the Maid -- en may
  With smiles your care re -- pay. __
  When from her couch she lifts her gold -- en head;
  Wak -- ing with ear -- liest birds, __
  Ere yet the mist -- y herds __
  Leave warm 'mid the
  gray __ grass __ their dusk -- y bed. __ "(bed.)"
}

wordsAltoMidi = \lyricmode {
  \set stanza = "1."
  "Soft" "ly, " "O " mid "night " "hours! "
  "\nMove " soft "ly " "o'er " "the " "bow'rs " 
  "\nWhere " "lies " "in " hap "py " "sleep " "a " "girl "  "so "  "fair! " 
  "\nfor " "ye " "have " "pow'r, " "men " "say, " 
  "\nOur " "hearts " "in " "sleep " "to " "sway, " 
  "\nAnd " "cage "  "cold " fan "cies " "in "  "a " moon "light " "snare. "

  \set stanza = "2."
  "\nRound " ev "'ry " "neck " "and " "arm "
  "\nEn" "clasp " "a " sep "'rate " "charm; " 
  "\nHang " "o'er " "her " "pois'd, " "but " "breathe " "nor " "sigh "  "nor "  "pray'r; "
  "\nSi" lent "ly " "ye " "may " "smile, " 
  "\nBut " "hold " "your " "breath "  "the " "while, " 
  "\nAnd " "let "  "the " "wind " "sweep " "back "  "your " cloud "y " "hair. " 

  \set stanza = "3."
  "\nBend " "down " "your " glit "t'ring " "urns, "
  "\nEre " "yet " "the " "dawn " re "turns, " 
  "\nAnd " "star " "with " "dew " "the " "lawn " "er " "feet "  "shall "  "tread; " 
  "\nUp" "on " "the " "air " "rain " "balm, " 
  "\nBid " "all " "the " "woods " "be " "calm, " 
  "\nAm" bro "sial " "dreams " "with " health "ful " slum "bers " "wed. "

  \set stanza = "4."
  "\nThat " "so " "the " Maid "en " "may "
  "\nWith " "smiles " "your " "care " re "pay. " 
  "\nWhen " "from " "her " "couch " "she " "lifts " "her " gold "en " "head; "
  "\nWak" "ing " "with " ear "liest " "birds, " 
  "\nEre " "yet " "the " mist "y " "herds " 
  "\nLeave " "warm " "'mid " "the "
  "\ngray "  "grass "  "their " dusk "y " "bed. "  "(bed.) "
}

tenor = \relative {
  \global
  \repeat volta 2 {
    c'4^\p c4.^\< b8
    d8.^\> b16 c4. b8^\cresc
    d8. 16 e4. d8
    d4^\dim(c4.) 8 % 8b
    c8. 16 b4. 8
    b2 4^\<
    b4(a8 g)\! fis8(c')
    a2^\> c4\!
    g8.^\cresc 16 4. 8 % 9a
    c4~4. 8
    fis,8. d'16 b4. 8
    e4~4. 8
    e4(d4.) b8 % 9b
    b4 a g^\mf ~ \time 2/4
    g8 a\omit\dim^\markup\italic "dim. e rall." c c \time 3/4
    a2.^\fermata^\p
    b4\omit\p^\markup\italic {\dynamic p a tempo} 4.^\< a8 % 10a
    c8.^\> a16 b4. a8^\cresc
    c8. 16 d4. c8
    c4^\dim (b4.) 8
    b8. 16 a4. 8 % 10b
    a2 4^\<
    a4( g8 fis)\! e(a)
    g2^\> r4\!
    g4 4.^\cresc 8
    g8. 16 c2~ % 11a
    c8 c fis,8. b16 b4~
    b8 8 e4~8. 16
    \slurDashed e4(d4.) b8
    d4(c) \slurSolid g4^\mf ~ \time 2/4 % 11b
    g8 a\omit\dim^\markup\italic "dim. e rall." c c \time 3/4
    a2( fis4~
  }
  \alternative {
    {
      fis2.\fermata^\p)
    }
    {
      fis4\repeatTie^\p (<d g>2\fermata)
    }
  }
  \bar "|."
}

tenorSingle = \relative {
  \global
  c'4^\p c4.^\< b8
  d8.^\> b16 c4. b8^\cresc
  d8. 16 e4. d8
  d4^\dim(c4.) 8 % 8b
  c8. 16 b4. 8
  b2 4^\<
  b4(a8 g)\! fis8(c')
  a2^\> c4\!
  g8.^\cresc 16 4. 8 % 9a
  c4~4. 8
  fis,8. d'16 b4. 8
  e4~4. 8
  e4(d4.) b8 % 9b
  b4 a g^\mf ~ \time 2/4
  g8 a\omit\dim^\markup\italic "dim. e rall." c c \time 3/4
  a2.^\fermata^\p
  b4\omit\p^\markup\italic {\dynamic p a tempo} 4.^\< a8 % 10a
  c8.^\> a16 b4. a8^\cresc
  c8. 16 d4. c8
  c4^\dim (b4.) 8
  b8. 16 a4. 8 % 10b
  a2 4^\<
  a4( g8 fis)\! e(a)
  g2^\> r4\!
  g4 4.^\cresc 8
  g8. 16 c2~ % 11a
  c8 c fis,8. b16 b4~
  b8 8 e4~8. 16
  e4(d4.) b8
  d4 c g4^\mf ~ \time 2/4 % 11b
  g8 a\omit\dim^\markup\italic "dim. e rall." c c \time 3/4
  a2( fis4~
  fis2.\fermata^\p)
% second time
  c'4^\p c4.^\< b8
  d8.^\> b16 c4. b8^\cresc
  d8. 16 e4. d8
  d4^\dim(c4.) 8 % 8b
  c8. 16 b4. 8
  b2 4^\<
  b4(a8 g)\! fis8(c')
  a2^\> c4\!
  g8.^\cresc 16 4. 8 % 9a
  c4~4. 8
  fis,8. d'16 b4. 8
  e4~4. 8
  e4(d4.) b8 % 9b
  b4 a g^\mf ~ \time 2/4
  g8 a\omit\dim^\markup\italic "dim. e rall." c c \time 3/4
  a2.^\fermata^\p
  b4\omit\p^\markup\italic {\dynamic p a tempo} 4.^\< a8 % 10a
  c8.^\> a16 b4. a8^\cresc
  c8. 16 d4. c8
  c4^\dim (b4.) 8
  b8. 16 a4. 8 % 10b
  a2 4^\<
  a4( g8 fis)\! e(a)
  g2^\> r4\!
  g4 4.^\cresc 8
  g8. 16 c2~ % 11a
  c8 c fis,8. b16 b4~
  b8 8 e4~8. 16
  e4 d4. b8
  d4(c) g4^\mf ~ \time 2/4 % 11b
  g8 a\omit\dim^\markup\italic "dim. e rall." c c \time 3/4
  a2( fis4~
  fis4^\p <d g>2\fermata)
  \bar "|."
}

wordsTenorOne = \lyricmode {
  \set stanza = "1."
  Soft -- ly, O mid -- night hours!
  Move soft -- ly o'er the bow'rs __
  Where lies in hap -- py sleep a girl __ so __ fair!
  for ye have pow'r, men say, __
  Our hearts in sleep to sway, __
  And cage __ cold fan -- cies in __ a moon -- light snare.

  \set stanza = "2."
  Round ev -- 'ry neck and arm
  En -- clasp a sep -- 'rate charm; __
  Hang o'er her pois'd, but breathe nor sigh __ nor __ pray'r;
  Si -- lent -- ly ye may smile, __
  But hold your breath __ the while, __
  And let __ the \nom wind sweep \yesm back __ your cloud -- y hair. __
}

wordsTenorTwo = \lyricmode {
  \set stanza = "3."
  Bend down your glit -- t'ring urns,
  Ere yet the dawn re -- turns, __
  And star with dew the lawn her feet __ shall tread; __
  Up -- on the air rain balm, __
  Bid all the woods be calm, __
  Am -- bro -- sial dreams with health -- ful slum -- bers wed.

  \set stanza = "4."
  That so the Maid -- en may
  With smiles your care re -- pay. __
  When from her couch she lifts her gold -- en head;
  Wak -- ing with ear -- liest birds, __
  Ere yet the mist -- y herds __
  Leave \nom warm 'mid \yesm the
  gray __ grass __ their dusk -- y bed. __ "(bed.)"
}

wordsTenorSingle = \lyricmode {
  \set stanza = "1."
  Soft -- ly, O mid -- night hours!
  Move soft -- ly o'er the bow'rs __
  Where lies in hap -- py sleep a girl __ so __ fair!
  for ye have pow'r, men say, __
  Our hearts in sleep to sway, __
  And cage __ cold fan -- cies in __ a moon -- light snare.

  \set stanza = "2."
  Round ev -- 'ry neck and arm
  En -- clasp a sep -- 'rate charm; __
  Hang o'er her pois'd, but breathe nor sigh __ nor __ pray'r;
  Si -- lent -- ly ye may smile, __
  But hold your breath __ the while, __
  And let __ the wind sweep back __ your cloud -- y hair. __

  \set stanza = "3."
  Bend down your glit -- t'ring urns,
  Ere yet the dawn re -- turns, __
  And star with dew the lawn her feet __ shall tread; __
  Up -- on the air rain balm, __
  Bid all the woods be calm, __
  Am -- bro -- sial dreams with health -- ful slum -- bers wed.

  \set stanza = "4."
  That so the Maid -- en may
  With smiles your care re -- pay. __
  When from her couch she lifts her gold -- en head;
  Wak -- ing with ear -- liest birds, __
  Ere yet the mist -- y herds __
  Leave warm 'mid the
  gray __ grass __ their dusk -- y bed. __ "(bed.)"
}

wordsTenorMidi = \lyricmode {
  \set stanza = "1."
  "Soft" "ly, " "O " mid "night " "hours! "
  "\nMove " soft "ly " "o'er " "the " "bow'rs " 
  "\nWhere " "lies " "in " hap "py " "sleep " "a " "girl "  "so "  "fair! "
  "\nfor " "ye " "have " "pow'r, " "men " "say, " 
  "\nOur " "hearts " "in " "sleep " "to " "sway, " 
  "\nAnd " "cage "  "cold " fan "cies " "in "  "a " moon "light " "snare. "

  \set stanza = "2."
  "\nRound " ev "'ry " "neck " "and " "arm "
  "\nEn" "clasp " "a " sep "'rate " "charm; " 
  "\nHang " "o'er " "her " "pois'd, " "but " "breathe " "nor " "sigh "  "nor "  "pray'r; "
  "\nSi" lent "ly " "ye " "may " "smile, " 
  "\nBut " "hold " "your " "breath "  "the " "while, " 
  "\nAnd " "let "  "the " "wind " "sweep " "back "  "your " cloud "y " "hair. " 

  \set stanza = "3."
  "\nBend " "down " "your " glit "t'ring " "urns, "
  "\nEre " "yet " "the " "dawn " re "turns, " 
  "\nAnd " "star " "with " "dew " "the " "lawn " "her " "feet "  "shall " "tread; " 
  "\nUp" "on " "the " "air " "rain " "balm, " 
  "\nBid " "all " "the " "woods " "be " "calm, " 
  "\nAm" bro "sial " "dreams " "with " health "ful " slum "bers " "wed. "

  \set stanza = "4."
  "\nThat " "so " "the " Maid "en " "may "
  "\nWith " "smiles " "your " "care " re "pay. " 
  "\nWhen " "from " "her " "couch " "she " "lifts " "her " gold "en " "head; "
  "\nWak" "ing " "with " ear "liest " "birds, " 
  "\nEre " "yet " "the " mist "y " "herds " 
  "\nLeave " "warm " "'mid " "the "
  "\ngray "  "grass "  "their " dusk "y " "bed. "  "(bed.) "
}

bass = \relative {
  \global
  \repeat volta 2 {
    a4^\p a4.^\< e8
    b8.\> e16 a4.\! e8^\cresc
    b8. e16 a4. 8
    g4^\dim ~4. 8 % 8b
    fis8. 16 4. 8
    e2 4^\<
    a,2 c4\!
    d2^\> 4\!
    g,8.^\cresc 16 c4. 8 % 9a
    a4~4. 8
    b8. 16 e4. 8
    c4~4. 8
    fis4(f4.) e8 % 9b
    a,4 4 c^\mf ~ \time 2/4
    c8 ees\omit\dim^\markup\italic "dim. e rall." fis a \time 3/4
    ees4^\p(d2\fermata)
    g4\omit\p^\markup\italic {\dynamic p a tempo} 4. d8 % 10a
    a8.^> d16\! g4. d8^\cresc
    a8. d16 g4. 8
    fis4^\dim ~ 4. 8
    e8. 16 4. 8 % 10b
    d2 4^\<
    g,2 a8\!(b)
    c2^\> r4\!
    g4 4.^\cresc 8
    c8. 16 a2~ % 11a
    a8 8 b8. 16 e4~
    e8 8 c4~8. 16
    \slurDashed fis4(f4.) e8
    a,4(4) \slurSolid c4^\mf( \time 2/4 % 11b
    b8) ees\omit\dim^\markup\italic "dim. e rall." fis a \time 3/4
    ees2(c4~
  }
  \alternative {
    {
      c4^\p b2\fermata)
    }
    {
      c4\repeatTie^\p (<g d'>2\fermata)
    }
  }
}

bassSingle = \relative {
  \global
  a4^\p a4.^\< e8
  b8.\> e16 a4.\! e8^\cresc
  b8. e16 a4. 8
  g4^\dim ~4. 8 % 8b
  fis8. 16 4. 8
  e2 4^\<
  a,2 c4\!
  d2^\> 4\!
  g,8.^\cresc 16 c4. 8 % 9a
  a4~4. 8
  b8. 16 e4. 8
  c4~4. 8
  fis4(f4.) e8 % 9b
  a,4 4 c^\mf ~ \time 2/4
  c8 ees\omit\dim^\markup\italic "dim. e rall." fis a \time 3/4
  ees4^\p(d2\fermata)
  g4\omit\p^\markup\italic {\dynamic p a tempo} 4. d8 % 10a
  a8.^> d16\! g4. d8^\cresc
  a8. d16 g4. 8
  fis4^\dim ~ 4. 8
  e8. 16 4. 8 % 10b
  d2 4^\<
  g,2 a8\!(b)
  c2^\> r4\!
  g4 4.^\cresc 8
  c8. 16 a2~ % 11a
  a8 8 b8. 16 e4~
  e8 8 c4~8. 16
  fis4(f4.) e8
  a,4 4 c4^\mf( \time 2/4 % 11b
  b8) ees\omit\dim^\markup\italic "dim. e rall." fis a \time 3/4
  ees2(c4~
  c4^\p b2\fermata)
% second time  
  a'4^\p a4.^\< e8
  b8.\> e16 a4.\! e8^\cresc
  b8. e16 a4. 8
  g4^\dim ~4. 8 % 8b
  fis8. 16 4. 8
  e2 4^\<
  a,2 c4\!
  d2^\> 4\!
  g,8.^\cresc 16 c4. 8 % 9a
  a4~4. 8
  b8. 16 e4. 8
  c4~4. 8
  fis4(f4.) e8 % 9b
  a,4 4 c^\mf ~ \time 2/4
  c8 ees\omit\dim^\markup\italic "dim. e rall." fis a \time 3/4
  ees4^\p(d2\fermata)
  g4\omit\p^\markup\italic {\dynamic p a tempo} 4. d8 % 10a
  a8.^> d16\! g4. d8^\cresc
  a8. d16 g4. 8
  fis4^\dim ~ 4. 8
  e8. 16 4. 8 % 10b
  d2 4^\<
  g,2 a8\!(b)
  c2^\> r4\!
  g4 4.^\cresc 8
  c8. 16 a2~ % 11a
  a8 8 b8. 16 e4~
  e8 8 c4~8. 16
  fis4 f4. e8
  a,2 c4^\mf( \time 2/4 % 11b
  b8) ees\omit\dim^\markup\italic "dim. e rall." fis a \time 3/4
  ees2(c4~
  c4^\p <g d'>2\fermata)
}

wordsBassOne = \lyricmode {
  \set stanza = "1."
  Soft -- ly, O mid -- night hours!
  Move soft -- ly o'er the bow'rs __
  Where lies in hap -- py sleep a girl __ so __ fair!
  for ye have pow'r, men say, __
  Our hearts in sleep to sway, __
  And cage __ cold fan -- cies in __ a moon -- light snare. __

  \set stanza = "2."
  Round ev -- 'ry neck and arm
  En -- clasp a sep -- 'rate charm; __
  Hang o'er her pois'd, but breathe nor sigh nor __ pray'r;
  Si -- lent -- ly ye may smile, __
  But hold your breath __ the while, __
  And let __ the \nom wind sweep \yesm back __ your cloud -- y hair. __
}

wordsBassTwo = \lyricmode {
  \set stanza = "3."
  Bend down your glit -- t'ring urns,
  Ere yet the dawn re -- turns, __
  And star with dew the lawn her feet shall tread;
  Up -- on the air rain balm, __
  Bid all the woods be calm, __
  Am -- bro -- sial dreams with health -- ful slum -- bers wed. __

  \set stanza = "4."
  That so the Maid -- en may
  With smiles your care re -- pay. __
  When from her couch she lifts her gold -- en head;
  Wak -- ing with ear -- liest birds, __
  Ere yet the mist -- y herds __
  Leave \nom warm 'mid \yesm the
  gray __ grass __ their dusk -- y bed. __ "(bed.)"
}

wordsBassSingle = \lyricmode {
  \set stanza = "1."
  Soft -- ly, O mid -- night hours!
  Move soft -- ly o'er the bow'rs __
  Where lies in hap -- py sleep a girl __ so __ fair!
  for ye have pow'r, men say, __
  Our hearts in sleep to sway, __
  And cage __ cold fan -- cies in __ a moon -- light snare. __

  \set stanza = "2."
  Round ev -- 'ry neck and arm
  En -- clasp a sep -- 'rate charm; __
  Hang o'er her pois'd, but breathe nor sigh nor __ pray'r;
  Si -- lent -- ly ye may smile, __
  But hold your breath __ the while, __
  And let __ the wind sweep back __ your cloud -- y hair. __

  \set stanza = "3."
  Bend down your glit -- t'ring urns,
  Ere yet the dawn re -- turns, __
  And star with dew the lawn her feet shall tread;
  Up -- on the air rain balm, __
  Bid all the woods be calm, __
  Am -- bro -- sial dreams with health -- ful slum -- bers wed. __

  \set stanza = "4."
  That so the Maid -- en may
  With smiles your care re -- pay. __
  When from her couch she lifts her gold -- en head;
  Wak -- ing with ear -- liest birds, __
  Ere yet the mist -- y herds __
  Leave warm 'mid the
  gray __ grass __ their dusk -- y bed. __ "(bed.)"
}

wordsBassMidi = \lyricmode {
  \set stanza = "1."
  "Soft" "ly, " "O " mid "night " "hours! "
  "\nMove " soft "ly " "o'er " "the " "bow'rs " 
  "\nWhere " "lies " "in " hap "py " "sleep " "a " "girl "  "so "  "fair! "
  "\nfor " "ye " "have " "pow'r, " "men " "say, " 
  "\nOur " "hearts " "in " "sleep " "to " "sway, " 
  "\nAnd " "cage "  "cold " fan "cies " "in "  "a " moon "light " "snare. " 

  \set stanza = "2."
  "\nRound " ev "'ry " "neck " "and " "arm "
  "\nEn" "clasp " "a " sep "'rate " "charm; " 
  "\nHang " "o'er " "her " "pois'd, " "but " "breathe " "nor " "sigh " "nor "  "pray'r; "
  "\nSi" lent "ly " "ye " "may " "smile, " 
  "\nBut " "hold " "your " "breath "  "the " "while, " 
  "\nAnd " "let "  "the " "wind " "sweep " "back "  "your " cloud "y " "hair. " 

  \set stanza = "3."
  "\nBend " "down " "your " glit "t'ring " "urns, "
  "\nEre " "yet " "the " "dawn " re "turns, " 
  "\nAnd " "star " "with " "dew " "the " "lawn " "her " "feet " "shall " "tread; "
  "\nUp" "on " "the " "air " "rain " "balm, " 
  "\nBid " "all " "the " "woods " "be " "calm, " 
  "\nAm" bro "sial " "dreams " "with " health "ful " slum "bers " "wed. " 

  \set stanza = "4."
  "\nThat " "so " "the " Maid "en " "may "
  "\nWith " "smiles " "your " "care " re "pay. " 
  "\nWhen " "from " "her " "couch " "she " "lifts " "her " gold "en " "head; "
  "\nWak" "ing " "with " ear "liest " "birds, " 
  "\nEre " "yet " "the " mist "y " "herds " 
  "\nLeave " "warm " "'mid " "the "
  "\ngray "  "grass "  "their " dusk "y " "bed. "  "(bed.) "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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
  \bookOutputSuffix "vocal-repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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
  \bookOutputSuffix "vocal-single"
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsBassSingle
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
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff <<
          \new Staff = rh \with { printPartCombineTexts = ##f }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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
  \bookOutputSuffix "vocal-singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    paper-height = 1300\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsBassSingle
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
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoSingle
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
            \new Voice \altoSingle
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
            \clef "treble_8"
            \new Voice \tenorSingle
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
            \clef "bass"
            \new Voice \bassSingle
            \addlyrics \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {}
  }
}
