\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "In the Still of the Night"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Cole Porter"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 2/2
}

TempoTrack = {
  \tempo Andantino 4=100
  s1
  \set Score.tempoHideNote = ##t
  s1*8
  \repeat volta 2 {
    \tempo 4=100
    s1*67
    \alternative {
      {
        s1*3
        \tempo 4=90
        s1
        s2 \tempo 4=100 s
      }
      {
        s1*2
        s2 \tempo 4=90 s2
        s1
        \tempo 4=45
        s1
      }
    }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "2a" } s1*6
  \mark \markup { \box "2b" } s1*3
  \repeat volta 2 {
    s1*4
    \mark \markup { \box "2c" } s1*7
    \mark \markup { \box "3a" } s1*7
    \mark \markup { \box "3b" } s1*7
    \mark \markup { \box "4a" } s1*6
    \mark \markup { \box "4b" } s1*7
    \mark \markup { \box "5a" } s1*7
    \mark \markup { \box "5b" } s1*7
    \mark \markup { \box "6a" } s1*7
    \mark \markup { \box "6b" } s1*7
    \mark \markup { \box "7a" } s1
    \alternative {
      {
        s1*5
      }
      {
        \mark \markup { \box "7b" } s1*5
      }
    }
  }
}

soprano = \relative {
  \global
  R1*8
  R1^\markup Mysteriously
  \repeat volta 2 {
    a'1^\pp( % 2b+++
    aes1) ~
    aes1
    R1
    a1( % 2c
    aes1) ~
    aes1
    r2 cis,4^\markup\italic "(melody)" d
    bes'2 a4 bes
    g2.^\< a4
    bes2 c\!
    c2.^\mf 4 % 3a
    c2. 4
    c1~
    c2. r4
    R1
    a1^\pp (
    aes1) ~
    aes1 % 3b
    R1
    a1(
    aes1) (
    gis1)
    r2 dis4^\markup\italic "(melody)" e
    a2 gis4 a
    fis2. gis4 % 4a
    a4 b\omit\cresc^\markup\italic "cresc. molto" c d
    e2.^\mf 4
    e2. 4
    e1^cresc ~
    e2. r4
    f1_\>\omit\f^\markup{\dynamic f Appassionato}  ~ % 4b
    f2.\! e4
    e1
    d1
    r2 e,
    d'2.^\markup\italic espressivo c4
    c1~
    c2. r4 % 5a
    f1\omit\f^\markup{\italic più \dynamic f}
    f2. e4
    e2. d4
    d1
    r2 e,
    d'2. c4
    c1~ % 5b
    c2. r4
    r2 a^\mf
    d2. c4
    c2. bes4
    bes1
    bes1^\dim ~
    bes2 f4 g % 6a
    a1^\markup\italic rit. ~
    a2 r^\markup\italic "a tempo"
    aes1^\pp ~
    aes1(
    g1) ~
    g2 r
    f1~ ( % 6b
    f2 e4 f~
    f1~
    f2) c4 d
    f1~
    f1
    g1~
    g2 a4^\< bes\! % 7a
    \alternative {
      {
        c1^\sf ~
        c2. 4
        d1
        d2\omit\dim^\markup\italic "rall. e dim." d
        f2\pp r^\markup\italic "a tempo"
      }
      {
        c1^\mf ~ % 7b
        c2 4 d
        f2 e4\omit\dim^\markup\italic "rall. e dim." d
        f2 e4 d
        d2.\fermata^\pp r4
      }
    }
  }
  \bar "|."
}

wordsSop = \lyricmode {
  oo __ oo __
  At the moon in its flight,
  My thoughts all stray to you, to you. __
  oo __ oo __
  Oh, the times with -- out num -- ber,
  Dar -- ling, when I say to you, to you: __
  "\"Do" __ you love me
  As I love you? __
  Are you my life -- to -- be,
  My dream come "true?\"" __
  Or will this dream of mine fade __ out of sight, __
  oo __ oo __
  in the chill, __
  Still __ of the night, __
  the still of the night?

  night, __
  Like the moon in the still of the night?
}

wordsSopSingle = \lyricmode {
  oo __ oo __
  At the moon in its flight,
  My thoughts all stray to you, to you. __
  oo __ oo __
  Oh, the times with -- out num -- ber,
  Dar -- ling, when I say to you, to you: __
  "\"Do" __ you love me
  As I love you? __
  Are you my life -- to -- be,
  My dream come "true?\"" __
  Or will this dream of mine fade __ out of sight, __
  oo __ oo __
  in the chill, __
  Still __ of the night, __
  the still of the night?

  oo __ oo __
  At the moon in its flight,
  My thoughts all stray to you, to you. __
  oo __ oo __
  Oh, the times with -- out num -- ber,
  Dar -- ling, when I say to you, to you: __
  "\"Do" __ you love me
  As I love you? __
  Are you my life -- to -- be,
  My dream come "true?\"" __
  Or will this dream of mine fade __ out of sight, __
  oo __ oo __
  in the chill, __
  Still __ of the night, __
  Like the moon in the still of the night?
}

wordsSopMidi = \lyricmode {
  "oo "  "oo " 
  "\nAt " "the " "moon " "in " "its " "flight, "
  "\nMy " "thoughts " "all " "stray " "to " "you, " "to " "you. " 
  "\noo "  "oo " 
  "\nOh, " "the " "times " with "out " num "ber, "
  "\nDar" "ling, " "when " "I " "say " "to " "you, " "to " "you: " 
  "\n\"Do "  "you " "love " "me "
  "\nAs " "I " "love " "you? " 
  "\nAre " "you " "my " life- to- "be, "
  "\nMy " "dream " "come " "true?\" " 
  "\nOr " "will " "this " "dream " "of " "mine " "fade "  "out " "of " "sight, " 
  "\noo "  "oo " 
  "\nin " "the " "chill, " 
  "\nStill "  "of " "the " "night, " 
  "\nthe " "still " "of " "the " "night? "

  "\noo "  "oo " 
  "\nAt " "the " "moon " "in " "its " "flight, "
  "\nMy " "thoughts " "all " "stray " "to " "you, " "to " "you. " 
  "\noo "  "oo " 
  "\nOh, " "the " "times " with "out " num "ber, "
  "\nDar" "ling, " "when " "I " "say " "to " "you, " "to " "you: " 
  "\n\"Do "  "you " "love " "me "
  "\nAs " "I " "love " "you? " 
  "\nAre " "you " "my " life- to- "be, "
  "\nMy " "dream " "come " "true?\" " 
  "\nOr " "will " "this " "dream " "of " "mine " "fade "  "out " "of " "sight, " 
  "\noo "  "oo " 
  "\nin " "the " "chill, " 
  "\nStill "  "of " "the " "night, " 
  "\nLike " "the " "moon " "in " "the " "still " "of " "the " "night? "
}

alto = \relative {
  \global
  R1*8
  r2 c'4^\p d
  \repeat volta 2 {
    f2 e4 f
    d1~
    d1
    r2 c4 d
    f2 e4 f % 2c
    d1
    d1
    r2 cis4 d
    f2 4 4
    e2.^\< 4
    e2 2\!
    g2.^\mf 4 % 3a
    g2(f4) 4
    f1(
    e2.) r4
    r2 c4^\p d
    f2 e4 f
    d1~
    d1 % 3b
    r2 c4 d
    f2 e4 f
    d1
    e1
    r2 c4 4
    e2 4 4
    d2. 4 % 4a
    e4 gis\omit\cresc^\markup\italic "cresc. molto." a b
    c2.^\mf a4
    a2. 4
    g1\cresc ~
    g2. r4
    a1^\f ~ % 4b
    a2. 4
    bes1
    bes1
    r2 g
    g2.^\markup\italic espressivo 4
    g2.(f4) ~
    f2. r4 % 5a
    c'1\omit\f^\markup{\italic più \dynamic f}
    cis2. 4
    c2. bes4
    bes1
    r2 g
    g2. 4
    g1~ % 5b
    g2. r4
    r2 fis^\mf
    g2. a4
    a2. g4
    g1
    f1^\dim ~
    f2 4 4 % 6a
    f1^\markup\italic rit. ~
    f2 c4^\p^\markup\italic "a tempo" d
    f1~
    f2 e4 f
    d1~
    d2 c4 d
    f1~ % 6b
    f2 e4 f
    d1~
    d2 r
    r2 d
    d1
    e1 ~
    e2 4^\< g\! % 7a
    \alternative {
      {
        a1^\mf ~
        a2. 4
        aes1
        aes2\omit\dim^\markup\italic "rall. e dim." 2
        a2^\pp c,4^\p^\markup\italic "a tempo" d
      }
      {
        a'1^\mf ~ % 7b
        a2 4 4
        aes2 4\omit\dim^\markup\italic "rall. e dim." 4
        aes2 4 4
        a2.\fermata^\pp r4
      }
    }
  }
  \bar "|."
}

wordsAlto = \lyricmode {
  In the still of the night, __
  As I gaze from my win -- dow,
  At the moon in its flight,
  My thoughts all stray to you, to you. __
  In the still of the night, __
  While the world is in slum -- ber,
  Oh, the times with -- out num -- ber,
  Dar -- ling, when I say to you, to you: __
  "\"Do" __ you love me
  As I love you? __
  Are you my life -- to -- be,
  My dream come "true?\"" __
  Or will this dream of mine fade __ out of sight, __
  Like the moon, __ grow -- ig dim, __
  on the rim __ of the hill __
  the chill, __
  Still __ of the night, __
  the still of the night?
  In the 

  night, __
  Like the moon in the still of the night?
}

wordsAltoSingle = \lyricmode {
  In the still of the night, __
  As I gaze from my win -- dow,
  At the moon in its flight,
  My thoughts all stray to you, to you. __
  In the still of the night, __
  While the world is in slum -- ber,
  Oh, the times with -- out num -- ber,
  Dar -- ling, when I say to you, to you: __
  "\"Do" __ you love me
  As I love you? __
  Are you my life -- to -- be,
  My dream come "true?\"" __
  Or will this dream of mine fade __ out of sight, __
  Like the moon, __ grow -- ig dim, __
  on the rim __ of the hill __
  the chill, __
  Still __ of the night, __
  the still of the night?

  In the still of the night, __
  As I gaze from my win -- dow,
  At the moon in its flight,
  My thoughts all stray to you, to you. __
  In the still of the night, __
  While the world is in slum -- ber,
  Oh, the times with -- out num -- ber,
  Dar -- ling, when I say to you, to you: __
  "\"Do" __ you love me
  As I love you? __
  Are you my life -- to -- be,
  My dream come "true?\"" __
  Or will this dream of mine fade __ out of sight, __
  Like the moon, __ grow -- ig dim, __
  on the rim __ of the hill __
  the chill, __
  Still __ of the night, __

  Like the moon in the still of the night?
}

wordsAltoMidi = \lyricmode {
  "In " "the " "still " "of " "the " "night, " 
  "\nAs " "I " "gaze " "from " "my " win "dow, "
  "\nAt " "the " "moon " "in " "its " "flight, "
  "\nMy " "thoughts " "all " "stray " "to " "you, " "to " "you. " 
  "\nIn " "the " "still " "of " "the " "night, " 
  "\nWhile " "the " "world " "is " "in " slum "ber, "
  "\nOh, " "the " "times " with "out " num "ber, "
  "\nDar" "ling, " "when " "I " "say " "to " "you, " "to " "you: " 
  "\n\"Do "  "you " "love " "me "
  "\nAs " "I " "love " "you? " 
  "\nAre " "you " "my " life- to- "be, "
  "\nMy " "dream " "come " "true?\" " 
  "\nOr " "will " "this " "dream " "of " "mine " "fade "  "out " "of " "sight, " 
  "\nLike " "the " "moon, "  grow "ig " "dim, " 
  "\non " "the " "rim "  "of " "the " "hill " 
  "\nthe " "chill, " 
  "\nStill "  "of " "the " "night, " 
  "\nthe " "still " "of " "the " "night? "

  "\nIn " "the " "still " "of " "the " "night, " 
  "\nAs " "I " "gaze " "from " "my " win "dow, "
  "\nAt " "the " "moon " "in " "its " "flight, "
  "\nMy " "thoughts " "all " "stray " "to " "you, " "to " "you. " 
  "\nIn " "the " "still " "of " "the " "night, " 
  "\nWhile " "the " "world " "is " "in " slum "ber, "
  "\nOh, " "the " "times " with "out " num "ber, "
  "\nDar" "ling, " "when " "I " "say " "to " "you, " "to " "you: " 
  "\n\"Do "  "you " "love " "me "
  "\nAs " "I " "love " "you? " 
  "\nAre " "you " "my " life- to- "be, "
  "\nMy " "dream " "come " "true?\" " 
  "\nOr " "will " "this " "dream " "of " "mine " "fade "  "out " "of " "sight, " 
  "\nLike " "the " "moon, "  grow "ig " "dim, " 
  "\non " "the " "rim "  "of " "the " "hill " 
  "\nthe " "chill, " 
  "\nStill "  "of " "the " "night, " 

  "\nLike " "the " "moon " "in " "the " "still " "of " "the " "night? "
}

tenor = \relative {
  \global
  R1*9
  \repeat volta 2 {
    c'1^\pp ~
    c1~
    c1
    R1
    c1~ % 2c
    c1~
    c1
    r2 bes4 4
    d2 4 4
    c2.^\< 4
    c2 2\!
    c2.^\mf 4 | c2. 4 | bes1~ | bes2. r4 | R1 | c1^\pp ~ | c1 ~ % 3a
    c1 | R1 | c1~ | c( | bes) | r2 a4 4 | a2 gis4 a
    gis2. b4 | c d\omit\cresc^\markup\italic "cresc. molto" c e | 2.^\mf c4 | c2. 4 bes1^\cresc ~ | bes2. r4 % 4a
    c1^\f ~ | 2. 4 | f1 | f1 | r2 c | e2.^\markup\italic espressivo 4 | c1~
    c2. r4 | f1\omit\f^\markup{\italic più \dynamic f} | 2. 4 | 2. 4 | 1 | r2 c | e2. 4 % 5a
    ees1~ | 2. r4 | r2 d^\mf | e2. d4 | 2. 4 | 1  des1^\dim ~
    des2 bes4 4 | c1^\markup\italic rit. ~ | 2 r^\markup\italic "a tempo" | d1^\pp~ | d~ | d~ | d2 r % 6a
    c1~ | c( | b1) ~ | 2 r | r bes | 1 | 1~
    bes2 c4^\< c\! % 7a
    \alternative {
      {
        c1^\mf ~ | 2. 4 | 1 | 2\omit\dim^\markup\italic "rall. e dim." 2 | 2^\pp r^\markup\italic "a tempo"
      }
      {
        c1^\mf ~ | 2 4 4 | 2 4\omit\dim^\markup\italic "rall. e dim." 4 | 2 4 4 | 2.\fermata^\pp r4
      }
    }
  }
  \bar "|."
}

wordsTenor = \lyricmode {
  oo __ oo __

  At the moon in its flight,
  My thoughts all stray to you, to you. __
  oo __ oo __
  Oh, the times with -- out num -- ber,
  Dar -- ling, when I say to you, to you: __
  "\"Do" __ you love me
  As I love you? __
  Are you my life -- to -- be,
  My dream come "true?\"" __
  Or will this dream of mine fade __ out of sight, __
  oo __ oo __
  the chill, __
  Still __ of the night, __
  the still of the night?

  night, __
  Like the moon in the still of the night?
}

wordsTenorSingle = \lyricmode {
  oo __ oo __

  At the moon in its flight,
  My thoughts all stray to you, to you. __
  oo __ oo __
  Oh, the times with -- out num -- ber,
  Dar -- ling, when I say to you, to you: __
  "\"Do" __ you love me
  As I love you? __
  Are you my life -- to -- be,
  My dream come "true?\"" __
  Or will this dream of mine fade __ out of sight, __
  oo __ oo __
  the chill, __
  Still __ of the night, __
  the still of the night?

  oo __ oo __

  At the moon in its flight,
  My thoughts all stray to you, to you. __
  oo __ oo __
  Oh, the times with -- out num -- ber,
  Dar -- ling, when I say to you, to you: __
  "\"Do" __ you love me
  As I love you? __
  Are you my life -- to -- be,
  My dream come "true?\"" __
  Or will this dream of mine fade __ out of sight, __
  oo __ oo __
  the chill, __
  Still __ of the night, __
  Like the moon in the still of the night?
}

wordsTenorMidi = \lyricmode {
  "oo "  "oo " 

  "\nAt " "the " "moon " "in " "its " "flight, "
  "\nMy " "thoughts " "all " "stray " "to " "you, " "to " "you. " 
  "\noo "  "oo " 
  "\nOh, " "the " "times " with "out " num "ber, "
  "\nDar" "ling, " "when " "I " "say " "to " "you, " "to " "you: " 
  "\n\"Do "  "you " "love " "me "
  "\nAs " "I " "love " "you? " 
  "\nAre " "you " "my " life- to- "be, "
  "\nMy " "dream " "come " "true?\" " 
  "\nOr " "will " "this " "dream " "of " "mine " "fade "  "out " "of " "sight, " 
  "\noo "  "oo " 
  "\nthe " "chill, " 
  "\nStill "  "of " "the " "night, " 
  "\nthe " "still " "of " "the " "night? "

  "\noo "  "oo " 

  "\nAt " "the " "moon " "in " "its " "flight, "
  "\nMy " "thoughts " "all " "stray " "to " "you, " "to " "you. " 
  "\noo "  "oo " 
  "\nOh, " "the " "times " with "out " num "ber, "
  "\nDar" "ling, " "when " "I " "say " "to " "you, " "to " "you: " 
  "\n\"Do "  "you " "love " "me "
  "\nAs " "I " "love " "you? " 
  "\nAre " "you " "my " life- to- "be, "
  "\nMy " "dream " "come " "true?\" " 
  "\nOr " "will " "this " "dream " "of " "mine " "fade "  "out " "of " "sight, " 
  "\noo "  "oo " 
  "\nthe " "chill, " 
  "\nStill "  "of " "the " "night, " 
  "\nLike " "the " "moon " "in " "the " "still " "of " "the " "night? "
}

bass = \relative {
  \global
  R1*9
  \repeat volta 2 {
    f1^\pp ~
    f1~
    f1
    R1
    f1~ | f~ | f | r2 g4 4 | 2 g,4 4 | c2.^\< 4 | 2 4(bes\!) % 2c
    a2.^\mf 4 | a'2. 4 | g1( | c,2.) r4 | R1 | f1^\pp ~ | f ~ % 3a
    f1 | R1 | f1~ | f( | e) | r2 a,4 4 | c2 4 4
    b2. e4 | e4 4\omit\cresc^\markup\italic "cresc. molto" e gis | a2.^\mf a,4 | c2. 4 | c1\cresc ~ | c2. r4 % 4a
    f1^\f~ | 2. 4 | bes1 | 1 | r2 2 | 2.^\markup\italic espressivo 4 | a1~
    a2. r4 | 1\omit\f^\markup{\italic più \dynamic f} | 2. 4 | bes2. bes,4 | 1 | r2 bes' | 2. 4 % 5a
    a1~ | 2. r4 | R1 | R1 | R1 | r4 d, e(fis) | g1^\dim ~
    g2 des4 4 | c1^\markup\italic rit. ~ | 2 r^\markup\italic "a tempo" | b'1^\pp ~ | b( | bes)~ | bes2 r % 6a
    a1~ | a( | aes)~ | aes2 r | r g | g1 | c,1~
    c2 4^\< 4\! % 7a
    \alternative {
      {f1^\mf ~ | 2. 4 | 1 | 2\omit\dim^\markup\italic "rall. e dim." 2 | 2 r^\markup\italic "a tempo"
      }
      {
        f1^\mf ~ | 2 4 4 | 2 4\omit\dim^\markup\italic "rall. e dim." 4 | 2 4 4 | 2.\fermata^\pp r4
      }
    }
  }
  \bar "|."
}

wordsBass = \lyricmode {
  oo __ oo __
  At the moon in its flight,
  My thoughts all stray to you, to you. __
  oo __ oo __
  Oh, the times with -- out num -- ber,
  Dar -- ling, when I say to you, to you: __
  "\"Do" __ you love me
  As I love you? __
  Are you my life -- to -- be,
  My dream come "true?\"" __
  of mine __ fade __ out of sight, __
  oo __ oo __
  the chill, __
  Still __ of the night, __
  the still of the night?

  night, __
  Like the moon in the still of the night?
}

wordsBassSingle = \lyricmode {
  oo __ oo __
  At the moon in its flight,
  My thoughts all stray to you, to you. __
  oo __ oo __
  Oh, the times with -- out num -- ber,
  Dar -- ling, when I say to you, to you: __
  "\"Do" __ you love me
  As I love you? __
  Are you my life -- to -- be,
  My dream come "true?\"" __
  of mine __ fade __ out of sight, __
  oo __ oo __
  the chill, __
  Still __ of the night, __
  the still of the night?

  oo __ oo __
  At the moon in its flight,
  My thoughts all stray to you, to you. __
  oo __ oo __
  Oh, the times with -- out num -- ber,
  Dar -- ling, when I say to you, to you: __
  "\"Do" __ you love me
  As I love you? __
  Are you my life -- to -- be,
  My dream come "true?\"" __
  of mine __ fade __ out of sight, __
  oo __ oo __
  the chill, __
  Still __ of the night, __
  Like the moon in the still of the night?
}

wordsBassMidi = \lyricmode {
  "oo "  "oo " 
  "\nAt " "the " "moon " "in " "its " "flight, "
  "\nMy " "thoughts " "all " "stray " "to " "you, " "to " "you. " 
  "\noo "  "oo " 
  "\nOh, " "the " "times " with "out " num "ber, "
  "\nDar" "ling, " "when " "I " "say " "to " "you, " "to " "you: " 
  "\n\"Do "  "you " "love " "me "
  "\nAs " "I " "love " "you? " 
  "\nAre " "you " "my " "life-" "to-" "be, "
  "\nMy " "dream " "come " "true?\" " 
  "\nof " "mine "  "fade "  "out " "of " "sight, " 
  "\noo "  "oo " 
  "\nthe " "chill, " 
  "\nStill "  "of " "the " "night, " 
  "\nthe " "still " "of " "the " "night? "

  "\noo "  "oo " 
  "\nAt " "the " "moon " "in " "its " "flight, "
  "\nMy " "thoughts " "all " "stray " "to " "you, " "to " "you. " 
  "\noo "  "oo " 
  "\nOh, " "the " "times " with "out " num "ber, "
  "\nDar" "ling, " "when " "I " "say " "to " "you, " "to " "you: " 
  "\n\"Do "  "you " "love " "me "
  "\nAs " "I " "love " "you? " 
  "\nAre " "you " "my " life- to- "be, "
  "\nMy " "dream " "come " "true?\" " 
  "\nof " "mine "  "fade "  "out " "of " "sight, " 
  "\noo "  "oo " 
  "\nthe " "chill, " 
  "\nStill "  "of " "the " "night, " 
  "\nLike " "the " "moon " "in " "the " "still " "of " "the " "night? "
}

pianoRHone = \relative {
  \global \voiceOne
  \bar "|."
  <c'' c'>1-> ~
  q1
  <d, d'>1->~
  q1
  <c c'>1-> ~
  q1
  d1~ % 2b
  d1
  r2 c4( d
  \repeat volta 2 {
    f2 e4 f
    d1) ~
    d1
    r2 c4(d
    f2 e4 f % 2c
    d1)
    d1->
    r2 cis4(d
    bes'2 a4 bes
    g2. a4
    bes2 c)
    c2. 4 % 3a
    c1~
    c1~
    c1~
    c2 c,4(d
    f2 e4 f
    d1) ~
    d1 % 3b
    r2 c4(d
    f2 e4 f
    d1)
    e1-> ~
    e2 dis4( e
    a2 gis4 a
    fis2. gis4 % 4a
    a4 b c d
    e2.) 4
    e1~
    e1~
    e1
    <f, f'>1->^\markup\upright Appassionato  ~ % 4b
    q2. <e e'>4
    <e e'>1->
    <d d'>1
    r2 e(
    d'2. c4)
    <c, g' c>2.-> f4(
    e4 f a c) % 5a
    f1->
    f2.-> e4
    e2.-> d4
    d1->
    r2 e,(
    d'2. c4)
    <ees, g c>2.-> g4( % 5b
    a4 c ees g)
    r2 a,(
    d2. c4)
    <d, a' c>2.(<d g bes>4)
    q1--
    <des f bes>1~
    <f bes>2 f4(g % 6a
    a1)~
    a2 c,4(d
    f1~
    f2 e4 f
    d1) ~
    d2 c4(d
    f1~ % 6b
    f2 e4 d
    d1) ~
    d2 c4(d
    f1) ~
    f1
    g1~
    g2 a4 bes % 7a
    \alternative {
      {
        <c, c'>1-> ~
        q1
        d1->~
        d1
        r2 c4 d
      }
      {
        <c c'>1->
        q1
        d1-> ~
        d1
        <c f a c>2.\fermata r4
      }
    }
  }
}

pianoRHtwo = \relative {
  \global \voiceTwo
  r4 <f'' a> r q
  r4 q r q
  r4 <aes, c> r q
  r4 q r q
  r4 <f a> r q
  r4 q r q
  r4 <aes, c> r q
  r4 q r q
  r4 <f a> r q
  \repeat volta 2 {
    r4 <a c> r q
    r4 <aes c> r q
    r4 q r q
    r4 <f a> r q
    r4 <a c> r q % 2c
    r4 <aes c>4 r q
    r4 q r q
    r4 <f bes> r q
    r4 <d' f> r q
    r4 <c e>2 4
    r4 <e g> r q
    r4 <c g'> r q % 3a
    r4 q r <c f>
    r4 <c f bes> r q
    r4 <c e bes'>2 4
    r4 <c f a> r <f, a>
    r4 <a c> r q
    r4 <aes c> r q
    r4 q r q % 3b
    r4 <f a> r q
    r4 <a c> r q
    r4 <aes c> r q
    r4 <gis b> r q
    r4 <a c> r q
    r4 <a e'> r q
    r4 <gis d'> r <d' e> % 4a
    r4 <d gis> r q
    r4 <e b' c> r q
    r4 <e b' c>2 <e a c>4
    r4 q2 4
    r4 q2 <e g c>4
    r4 <a c>2 4 % 4b
    r4 q2 4
    r4 <f bes>2 4
    r4 q2 4
    <f, g bes>2 <g bes>
    <e' g>2. 4
    s1
    s1 % 5a
    <f c'>4 2 4
    <f cis'>4 2 <e cis'>4
    <e c'>4 2 <d bes'>4
    q4 2 4
    <f, g bes>2 <g bes>
    <e' g>2. 4
    s1 % 5b
    s1
    <g, c d>2 <c fis>
    <e g>2 4 <d a'>
    s1
    s1
    s1
    bes1-> % 6a
    c1~
    c2 r
    r4 <aes d> r q
    r4 q r q
    r4 <e g> r q
    r4 q r q
    r4 <f c'> r q % 6b
    r4 q r q
    r4 <f b> r q
    r4 q r q
    r4 <f bes d> r q
    r4 q r q
    r4 <g c e> r q
    r4 q r <c e> % 7a
    \alternative {
      {
        r4 <f a> r q
        r4 q r q
        r4 <aes, c> r q
        r4 q r q
        r4 <f a> r q
      }
      {
        r4 <f' a> r q % 7b
        r4 q r q
        r4 <aes, c> r q
        r4 q r q
        s1
      }
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
  s1*3
  s1\mp
  s1
  s1\dim % 2b
  s1
  s2 s\p
  \repeat volta 2 {
    s1*9
    s1\<
    s1
    s1\mf % 3a
    s1
    s1
    s1\>
    s2\! s\p
    s1*10
    s4 s2.\omit\cresc-\markup\italic "cresc. molto" % 4a+
    s1\mf
    s1
    s1\cresc
    s1
    s1\f % 4b
    s1*4
    s1-\markup\italic espressivo
    s1
    s1\< % 5a
    s1\omit\f-\markup{\italic più \dynamic f}
    s1*6
    s1\< % 5b
    s4\sf s2.\omit\mf-\markup{\dynamic mf \italic subito}
    s1
    s1
    s1
    s2.. s8-\markup{\halign #RIGHT \italic "subito calmato"}
    s1 % 6a
    s1\<-\markup\italic rit.
    s4\> s2.\! \omit\p-\markup{\dynamic p \italic "a tempo"}
    s4 s2.\<
    s4\! s2.\>
    s1\!
    s2 s-\markup{\italic sempre \dynamic p}
    s1 % 6b
    s4 s2.\>
    s1\!
    s4 s2.\<
    s1\!
    s1
    s1
    s4 s2.\< % 7a
    \alternative {
      {
        s1\mf
        s1
        s1
        s1\omit\dim-\markup\italic "rall. e dim."
        s2\pp s\omit\p-\markup{\dynamic p \italic "a tempo"}
      }
      {
        s1\mf
        s1
        s2 s\omit\dim-\markup\italic "rall. e dim."
        s1
        s1\pp
      }
    }
  }
}

pianoLHone = \relative {
  \global
  <f, c' a'>1-> \arpeggio
  c'2(c,4 c')
  f,1
  c'2(c,4 c')
  f,1
  c'2(c,4 c')
  f,1
  c'2(c,4 c')
  f,1
  \repeat volta 2 {
    c'2(c,)
    f1
    c'2-> c,4(c')
    f,1
    c'2(c,) % 2c
    f1
    c'2(c,4 c')
    g1
    g'2(g,)
    c1
    c,2(c'4 bes
    a1) % 3a
    a'2(a,4 a')
    g1
    c,2(c,4 c')
    f,1
    c'2(c,)
    f1
    c'2-> c,4(c') % 3b
    f,1
    c'2(c,)
    f1(
    e2) 4(e'
    a,1)
    c2(c,)
    b'1( % 4a
    e2 e,4 e')
    a,1
    a'2(a,4 a')
    \voiceOne r4 bes2 4
    r4 bes2-> 4 \oneVoice
    <f, c' a'>1\arpeggio % 4b
    <a f'>1
    <bes f'>1~
    q1
    c4 2 4
    a4 2 4
    <a g'>2.-> f'4(
    e4 f a c) % 5a
    <a, f'>4 2 4
    q4 2 4
    <bes f'>4 2 4
    q4 2 4
    c4 2 4
    bes4 2 4
    <a ees' g>2.-> g'4( % 5b
    a c ees g)
    d,4 2 4~
    d4 2 fis4
    g4 2 4
    \voiceOne r4 d(e fis) \oneVoice
    \acciaccatura g,8 g'4-- 2-- 4--
    des4-- 2-- 4-- % 6a
    c4 2 a4(
    d4 c) r2
    b1
    b,2(b')
    bes1
    bes,2(bes')
    a1 % 6b
    a,2(a')
    aes1
    aes,2(aes')
    g1
    g2(g,4 g')
    c,1
    c'2(c,)
    \alternative {
      {
        f1
        c'2(c,4 c')
        f,1
        c'2-> c,4(c')
        f,1
      }
      {
        f1
        c'2(c,4 c')
        f,1
        c'2-> c,4(c')
        <f, c' a'>2.\arpeggio\fermata r4
      }
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s1*9
  \repeat volta 2 {
    s1*29
    c1
    c1
    s1*19
    g1
    s1*16
    \alternative {
      { s1*5 }
      { s1*5 }
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

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
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBassSingle}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSingle
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
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
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
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
  \bookOutputSuffix "midi-alto"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
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
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
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
  \bookOutputSuffix "midi-tenor"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
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
  \bookOutputSuffix "midi-bass"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
