\version "2.25.9"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Battle of Jericho"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Traditional Spiritual"
  arranger    = "Arr. Roger Emerson"
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
  \key bes \major
  \time 4/4
}

TempoTrack = {
  \tempo Driving 4=144
  s1
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "3a" } s1*3
  \mark \markup { \box "3b" } s1*3
  \repeat segno 2 {
    \mark \markup { \box "4a" } s1*3
    \mark \markup { \box "4b" } s1*3
    \mark \markup { \box "5a" } s1*3
    \mark \markup { \box "5b" } s1*3
    \alternative {
      \volta 1 {
        \mark \markup { \box "6a" } s1*2
        \mark \markup { \box "6b" } s1*2
        \mark \markup { \box "7a" } s1*3
        \mark \markup { \box "7b" } s1*3
      }
    }
  }
  \mark \markup { \box "8a" } s1*3
  \mark \markup { \box "8b" } s1*3
  \mark \markup { \box "9a" } s1*3
  \mark \markup { \box "9b" } s1*3
  \mark \markup { \box "10a" } s1*3
  \mark \markup { \box "10b" } s1*3
  \mark \markup { \box "11a" } s1*3
  \mark \markup { \box "11b" } s1*3
  \mark \markup { \box "12a" } s1*3
  \repeat volta 2 {
    \mark \markup { \box "12b" } s1*3
    \mark \markup { \box "13a" } s1*3
    \alternative {
      \volta 1 { \mark \markup { \box "13b" } s1*2 }
      \volta 2 { s1 }
    }
  }
  \mark \markup { \box "14a" } s1*3
  \mark \markup { \box "14b" } s1*4
}

ChordTrack = \chordmode {
  s1 | s1 | g4:m7 g2.:m11 |
  s1 | g4:m7 g2.:m11 | s1 |
  \repeat segno 2 {
    g4:m f/a bes c | g8:m f4/g g8:m s2 | f8 g4:m/f  f8 s2 | % 4a
    g8:m f4/g g4.:m d4:7 | g:m f/a bes c | g8:m f4/g g8:m s2 |
    c4:m9 c:m d:aug d | g1:m | s1 | % 5a
    g4:m7 g2.:m11 | s1 | g4:m7 g2.:m11 |
    \alternative {
      \volta 1 {
        s1 | g:m9^7 | % 6a
        g1:min7 | g:m9 |
        c1:13 | g:m9^7 | g:min7 | % 7a
        g1:m9 | c:13 | s8 a4.:m7.5- d2:7.9+ |
      }
    }
  }
  s1 | g:m9^7 | g:min7 | % 8a
  g1:m9 | c:13 | g:m9^7 |
  g1:min7 | g:m9 | c:13 | % 9a
  s8 a4.:m7.5- d2:7.9+ | g4:m f/a bes c | g8:m f4/g g8:m s2 |
  f8 g4:m/f f8 s2 | g8:m f4/g g4.:m d4:7 | g:m f/a bes c | % 10a
  g8:m f4/g g8:m s2 | c4:m9 c:m d:aug d | g1:m |
  s1 | g:m9 | s | % 11a
  ees1:maj7 | s | c2:m7 f/c |
  c2:m9 c:m7 | d1:sus | s2 d | % 12a
  \repeat volta 2 {
    g4:m f/a bes c | g8:m f4/g g8:m s2 | f8 g4:m/f f8 s2 |
    g8:m f4/g g4.:m d4:7 | g4:m f/a bes c | g8:m f4/g g8:m s2 | % 13a
    \alternative {
      \volta 1 { c4:m9 c:m d:aug d | g1:m | }
      \volta 2 { c2:m9 a:m7.5- | }
    }
  }
  d2:aug d | R1 | s | % 14a
  g1:m | g:m9^7 | g:m | s |
}

partI = \relative {
  \global
  R1
  R1
  bes'4^\f 8 8~2~
  bes2.^\< r4\! % 3b
  bes4^\f 8 8~2~
  bes2.^\< r4\!
  \repeat segno 2 {
    g8^\f fis g a bes a bes(c) % 4a
    d8 4 8~4 r
    c8 4 8~4 r
    d8 4 8(~8 c bes a) % 4b
    g8 fis g a bes a bes(c)
    d8 4 8~4 bes8 c
    d4 c bes8 8 a4 % 5a
    g1
    R1
    bes4 8 8~2~ % 5b
    bes2.^\< r4\!
    bes4^\f 8 8~2~
    \alternative {
      \volta 1 {
        bes2^\< r4\! g8^\mf 8 % 6a
        g8 d d d d4 4
        d4 8 8~4 r % 6b
        R1
        r2 r4 g8 8 % 7a
        g4 d4 4 4
        d4 8 8~4 bes'8 c
        d8 8 c4 bes a8 g~ % 7b
        g1
        R1
      }
      \volta 2 {
%  g8^\mf fis g a bes a bes(c) % 4a
%  d8 4 8~4 r
%  c8 4 8~4 r
%  d8 4 8(~8 c bes a) % 4b
%  g8 fis g a bes a bes(c)
%  d8 4 8~4 bes8 c
%  d4 c bes8 8 a4 % 5a
%  g1
%  R1
%  bes4 8 8~2~ % 5b
%  bes2.^\< r4\!
%  bes4^\f 8 8~2~
      }
    }
  }
  bes2^\<\repeatTie r4\! g^\mf % 8a
  g4 d d d
  d4 8 8~4 r
  R1 % 8b
  r2 r4 g
  g4 d d d
  d4 8 8~4 bes'8 c % 9a
  d8 8 c4 bes a8 g~
  g1
  R1 % 9b
  g8^\f fis g a bes a bes(c)
  d8 4 8~4 r
  c8 4 8~4 r % 10a
  d8 4 8(~8 c bes a)
  g8 fis g a bes a bes(c)
  d8 4 8~4 bes8 c % 10b
  d4 c bes8 8 a4
  g1
  R1 % 11a
  R1
  R1
  bes4.-> ^\mf 8-> ~4 4-> ~ % 11b
  bes8 4.-> 4-> a^>
  bes2->^\cresc c4-> c->
  d4^> d^> ees2^> % 12a
  d1^> ~
  d2. r4
  \repeat volta 2 {
    g,8\omit\f^\markup {\dynamic mp "/" \dynamic f} fis g a bes a bes(c) % 12b
    d8 4 8~4 r
    c8 4 8~4 r
    d8 4 8(~8 c bes a) % 13a
    g8 fis g a bes a bes(c)
    d8 4 8~4 bes8 c
  }
  \alternative {
    {
      d4 c bes8 8 a4 % 13b
      g2. r4
    }
    {
      d'2 c
    }
  }
  bes4 4 a2 % 14a
  \override NoteHead.style = #'cross
  bes4^\markup\italic Stomp 4 4 4
  bes8 8 8 8 8 8 8 8
  \revert NoteHead.style
  <bes d \tweak font-size -2 g>1^\markup div. ~ % 14b
  q1~
  q1
  R1
  \bar "|."
}

wordsI = \lyricmode {
  Josh -- u -- a! __
  Josh -- u -- a! __
  \repeat segno 2 {
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    Jer -- i -- cho, __
    Jer -- i -- cho, __
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    and the walls came tum -- bl -- in' down.
    Josh -- u -- a! __
    Josh -- u -- a! __
    \alternative {
      \volta 1 {
        You may talk a -- bout your kings of Gid -- e -- on, __
        But there's none like good old Josh -- u -- a __
        at the bat -- tle of Jer -- i -- cho. __
      }
      \volta 2 { }
    }
  }
  _ Up to the wall of Jer -- i -- cho __
  "\"Go" sound them ram "horns,\"" Josh -- ua cried, __
  "\"Cause" the bat -- tle is in my "hand!\"" __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Down! Down! __ Down! __ Down! Down!
  The walls came a -- tum -- bl -- in' down! __
  \repeat volta 2 {
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    Jer -- i -- cho, __
    Jer -- i -- cho, __
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    and the
    \alternative {
      \volta 1 { walls came tum -- bl -- in' down. }
      \volta 2 { walls came }
    }
  }
  tum -- bl -- in'…
  _ _ _ _ _ _ _ _ _ _ _ _
  down! __
}

wordsISingle = \lyricmode {
  Josh -- u -- a! __
  Josh -- u -- a! __
  \repeat segno 2 {
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    Jer -- i -- cho, __
    Jer -- i -- cho, __
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    and the walls came tum -- bl -- in' down.
    Josh -- u -- a! __
    Josh -- u -- a! __
    \alternative {
      \volta 1 {
        You may talk a -- bout your kings of Gid -- e -- on, __
        But there's none like good old Josh -- u -- a __
        at the bat -- tle of Jer -- i -- cho. __
      }
      \volta 2 { }
    }
  }
  Up to the wall of Jer -- i -- cho __
  "\"Go" sound them ram "horns,\"" Josh -- ua cried, __
  "\"Cause" the bat -- tle is in my "hand!\"" __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Down! Down! __ Down! __ Down! Down!
  The walls came a -- tum -- bl -- in' down! __
  \repeat volta 2 {
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    Jer -- i -- cho, __
    Jer -- i -- cho, __
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    and the
    \alternative {
      \volta 1 { walls came tum -- bl -- in' down. }
      \volta 2 { walls came }
    }
  }
  tum -- bl -- in'…
  _ _ _ _ _ _ _ _ _ _ _ _
  down! __
}

wordsImidi = \lyricmode {
  "Josh" u "a! " 
  "\nJosh" u "a! " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "
  "\nJosh" u "a! " 
  "\nJosh" u "a! " 

  "\nYou " "may " "talk " a "bout " "your " "kings " "of " Gid e "on, " 
  "\nBut " "there's " "none " "like " "good " "old " Josh u "a " 
  "\nat " "the " bat "tle " "of " Jer i "cho. " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "
  "\nJosh" u "a! " 
  "\nJosh" u "a! " 

  "\nUp " "to " "the " "wall " "of " Jer i "cho " 
  "\n\"Go " "sound " "them " "ram " "horns,\" " Josh "ua " "cried, " 
  "\n\"Cause " "the " bat "tle " "is " "in " "my " "hand!\" " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "

  "\nDown! " "Down! "  "Down! "  "Down! " "Down! "
  "\nThe " "walls " "came " a tum bl "in' " "down! " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " 
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\ndown! " 
}

partII = \relative {
  \global
  R1
  R1
  bes'4^\f f8 8~2~
  f2.^\< r4\! % 3b
  bes4^\f f8 8~2~
  f2.^\< r4\!
  \repeat segno 2 {
    g8^\f fis g a bes a bes(c) % 4a
    g8 4 8~4 r
    f8 4 8~4 r
    g8 4 8(~4 fis) % 4b
    g8 fis g a bes a bes(c)
    g8 4 8~4 bes8 a
    g4 4 fis8 8 4 % 5a
    g1
    R1
    bes4 f8 8~2~ % 5b
    f2.^\< r4\!
    bes4^\f f8 8~2~
    \alternative {
      \volta 1 {
        f2^\< r4\! g8^\mf g % 6a
        g8 d d d d4 d
        d4 d8 8~4 r % 6b
        R1
        r2 r4 g8 8 % 7a
        g4 d d d
        d4 8 8~4 bes'8 c
        d8 8 c4 bes a8 g~
        g1
        R1
      }
      \volta 2 { }
    }
  }
  f2^\<\repeatTie r4\! g^\mf % 8a
  g4 d d d
  d4 8 8~4 r
  R1 % 8b
  r2 r4 g
  g4 d d d
  d4 8 8~4 bes'8 c % 9a
  d8 8 c4 bes a8 g~
  g1
  R1 % 9b
  g8^\f fis g a bes a bes(c)
  g8 4 8~4 r
  f8 4 8~4 r % 10a
  g8 4 8(~4 fis)
  g8 fis g a bes a bes(c)
  g8 4 8~4 bes8 a % 10b
  g4 4 fis8 8 4
  g1
  R1 % 11a
  bes,4.->^\mp^\markup\italic "Put Boy Altos on this part" 8->~4 4->~
  bes8 4.-> 2->
  bes'4.->^\mf^\markup\italic "Regular Altos" a8-> ~4 g4-> ~ % 11b
  g8 f4.-> g4-> a->
  bes2->^\cresc c4-> c->
  bes4-> 4-> g2-> % 12a
  d'4->( c bes a
  g a fis) r
  \repeat volta 2 {
    g8\omit\f^\markup {\dynamic mp / \dynamic f} fis g a bes a bes(c) % 12b
    g8 4 8~4 r
    f8 4 8~4 r
    g8 4 8(~4 fis) % 13a
    g8 fis g a bes a bes(c)
    g8 4 8~4 bes8 a
  }
  \alternative {
    {
      g4 4 fis8 8 4 % 13b
      g2. r4
    }
    {
      g2 2
    }
  }
  fis4 4 2 % 13a
  \override NoteHead.style = #'cross
  bes4^\markup\italic Stomp 4 4 4
  bes8 8 8 8 8 8 8 8
  \revert NoteHead.style
  g1(
  a1
  <g bes>1)^\markup div.
  R1
  \bar "|."
}

wordsII = \lyricmode {
  Josh -- u -- a! __
  Josh -- u -- a! __
  \repeat segno 2 {
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    Jer -- i -- cho, __
    Jer -- i -- cho, __
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    and the walls came tum -- bl -- in' down.
    Josh -- u -- a! __
    Josh -- u -- a! __
    \alternative {
      \volta 1 {
        You may talk a -- bout your kings of Gid -- e -- on, __
        But there's none like good old Josh -- u -- a __
        at the bat -- tle of Jer -- i -- cho. __
      }
%      \volta 2 { }
    }
  }
  _ Up to the wall of Jer -- i -- cho __
  "\"Go" sound them ram "horns,\"" Josh -- ua cried, __
  "\"Cause" the bat -- tle is in my "hand!\"" __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Down! Down! __ Down! __ Down! Down! __
  Down! Down! __ Down! __ Down! Down!
  The walls came a -- tum -- bl -- in' down! __
  \repeat volta 2 {
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    Jer -- i -- cho, __
    Jer -- i -- cho, __
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    and the
    \alternative {
      \volta 1 { walls came tum -- bl -- in' down. }
      \volta 2 { walls came }
    }
    }
  tum -- bl -- in'…
  _ _ _ _ _ _ _ _ _ _ _ _
  down! __
}

wordsIISingle = \lyricmode {
  Josh -- u -- a! __
  Josh -- u -- a! __
  \repeat segno 2 {
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    Jer -- i -- cho, __
    Jer -- i -- cho, __
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    and the walls came tum -- bl -- in' down.
    Josh -- u -- a! __
    Josh -- u -- a! __
    \alternative {
      \volta 1 {
        You may talk a -- bout your kings of Gid -- e -- on, __
        But there's none like good old Josh -- u -- a __
        at the bat -- tle of Jer -- i -- cho. __
      }
%      \volta 2 { }
    }
  }
  Up to the wall of Jer -- i -- cho __
  "\"Go" sound them ram "horns,\"" Josh -- ua cried, __
  "\"Cause" the bat -- tle is in my "hand!\"" __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Down! Down! __ Down! __ Down! Down! __
  Down! Down! __ Down! __ Down! Down!
  The walls came a -- tum -- bl -- in' down! __
  \repeat volta 2 {
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    Jer -- i -- cho, __
    Jer -- i -- cho, __
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    and the
    \alternative {
      \volta 1 { walls came tum -- bl -- in' down. }
      \volta 2 { walls came }
    }
    }
  tum -- bl -- in'…
  _ _ _ _ _ _ _ _ _ _ _ _
  down! __
}

wordsIImidi = \lyricmode {
  "Josh" u "a! " 
  "\nJosh" u "a! " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "
  "\nJosh" u "a! " 
  "\nJosh" u "a! " 

  "\nYou " "may " "talk " a "bout " "your " "kings " "of " Gid e "on, " 
  "\nBut " "there's " "none " "like " "good " "old " Josh u "a " 
  "\nat " "the " bat "tle " "of " Jer i "cho. " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "
  "\nJosh" u "a! " 
  "\nJosh" u "a! " 

  "\nUp " "to " "the " "wall " "of " Jer i "cho " 
  "\n\"Go " "sound " "them " "ram " "horns,\" " Josh "ua " "cried, " 
  "\n\"Cause " "the " bat "tle " "is " "in " "my " "hand!\" " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "

  "\nDown! " "Down! "  "Down! "  "Down! " "Down! " 
  "\nDown! " "Down! "  "Down! "  "Down! " "Down! "
  "\nThe " "walls " "came " a tum bl "in' " "down! " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " 
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\ndown! " 
}

partIII = \relative {
  \global
  R1
  R1
  bes4 c8 8~2~
  c2.^\< r4\! % 3b
  bes4^\f c8 8~2~
  c2.^\< r4\!
  \repeat segno 2 {
    g8^\f fis g a bes a bes(c) % 4a
    g8 a4 bes8~4 r
    f8 g4 a8~4 r
    g8 a4 bes8(~8 c d c) % 4b
    g8 fis g a bes a bes(c)
    g8 a4 bes8~4 8 c
    bes4 c d8 8 4 % 5a
    g,1
    R1
    bes4 c8 8~2~ % 5b
    c2.^\< r4\!
    bes4^\f c8 8~2~
    \alternative {
      \volta 1 {
        c2\< r\! % 6a
        R1
        r2 r4 g8^\mf 8 % 6b
        g8 <d \tweak font-size -3 d'> q q q(<c \tweak font-size -3 c'>) <bes \tweak font-size -3 bes'>(<c \tweak font-size -3 c'>) |
        <d \tweak font-size -3 d'>2 r | % 7a
        R1 |
        r2 r4 bes'8 c |
        d8 8 c4 bes a8 g~ |
        g1 |
        R1 |
      }
%      \volta 2 { }
    }
  }
  c2^\<\repeatTie r2\! % 8a
  R1 |
  r2 r4 g^\mf
  g4 <d \tweak font-size -2 d'> q8(<c \tweak font-size -3 c'>) <bes \tweak font-size -3 bes'>(<c \tweak font-size -3 c'>) % 8b
  <d \tweak font-size -3 d'>2 r
  R1
  r2 r4 bes'8 c % 9a
  d8 8 c4 bes a8 g~
  g1
  R1 % 9b
  g8^\f fis g a bes a bes(c)
  g8 a4 bes8~4 r
  f8 g4 bes8~4 r % 10a
  g8 a4 bes8(~8 c d c)
  g8 fis g a bes a bes(c)
  g8 a4 bes8~4 8 c % 10b
  bes4 c d8 8 4
  g,1
  R1 % 11a
  bes4.->^\mp a8->~4 g->~
  g8 f4.-> g4->(a)
  R1 % 11b
  r2 r4 a4->^\mf
  bes2->^\cresc c4-> 4->
  d4-> 4-> c2-> % 12a
  d2.->( c4
  bes4 c a) r
  \repeat volta 2 {
    g8\omit\f^\markup {\dynamic mp / \dynamic f} fis g a bes a bes(c)
    g8 a4 bes8~4 r
    f8 g4 a8~4 r
    g8 a4 bes8(~8 c d c) % 13a
    g8 fis g a bes a bes(c)
    g8 a4 bes8~4 8 c
  }
  \alternative {
    {
      bes4 c d8 8 4 % 13b
      g,2. r4
    }
    {
      bes2 c
    }
  }
  d4 4 2 % 14a
  \override NoteHead.style = #'cross
  d,4^\markup\italic Stomp 4 4 4
  d8 8 8 8 8 8 8 8
  \revert NoteHead.style
  d'1~ % 14b
  d1~
  d1
  R1
  \bar "|."
}

wordsIII = \lyricmode {
  Josh -- u -- a! __
  Josh -- u -- a! __
  \repeat segno 2 {
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    Jer -- i -- cho, __
    Jer -- i -- cho, __
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    and the walls came tum -- bl -- in' down.
    Josh -- u -- a! __
    Josh -- u -- a! __
    \alternative {
      \volta 1 {
        You may talk a -- bout your man __ of __ Saul,
        at the bat -- tle of Jer -- i -- cho. __
      }
%      \volta 2 { }
    }
  }
  _ He marched with spear __ in __ hand.
  "\"Cause" the bat -- tle is in my "hand!\"" __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Down! Down! __ Down! __ Down! Down! __
  The walls came a -- tum -- bl -- in' down! __
  \repeat volta 2 {
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    Jer -- i -- cho, __
    Jer -- i -- cho, __
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    and the
    \alternative {
      \volta 1 { walls came tum -- bl -- in' down. }
      \volta 2 { walls came }
    }
  }
  tum -- bl -- in'…
  _ _ _ _ _ _ _ _ _ _ _ _
  down! __
}

wordsIIISingle = \lyricmode {
  Josh -- u -- a! __
  Josh -- u -- a! __
  \repeat segno 2 {
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    Jer -- i -- cho, __
    Jer -- i -- cho, __
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    and the walls came tum -- bl -- in' down.
    Josh -- u -- a! __
    Josh -- u -- a! __
    \alternative {
      \volta 1 {
        You may talk a -- bout your man __ of __ Saul,
        at the bat -- tle of Jer -- i -- cho. __
      }
%      \volta 2 { }
    }
  }
  He marched with spear __ in __ hand.
  "\"Cause" the bat -- tle is in my "hand!\"" __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  Jer -- i -- cho, __
  Jer -- i -- cho, __
  Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
  and the walls came tum -- bl -- in' down.

  Down! Down! __ Down! __ Down! Down! __
  The walls came a -- tum -- bl -- in' down! __
  \repeat volta 2 {
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    Jer -- i -- cho, __
    Jer -- i -- cho, __
    Josh -- ua fought the bat -- tle of __ Jer -- i -- cho, __
    and the
    \alternative {
      \volta 1 { walls came tum -- bl -- in' down. }
      \volta 2 { walls came }
    }
  }
  tum -- bl -- in'…
  _ _ _ _ _ _ _ _ _ _ _ _
  down! __
}

wordsIIImidi = \lyricmode {
  "Josh" u "a! " 
  "\nJosh" u "a! " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "
  "\nJosh" u "a! " 
  "\nJosh" u "a! " 

  "\nYou " "may " "talk " a "bout " "your " "man "  "of "  "Saul, "
  "\nat " "the " bat "tle " "of " Jer i "cho. " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "
  "\nJosh" u "a! " 
  "\nJosh" u "a! " 

  "\nHe " "marched " "with " "spear "  "in "  "hand. "
  "\n\"Cause " "the " bat "tle " "is " "in " "my " "hand!\" " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "

  "\nDown! " "Down! "  "Down! "  "Down! " "Down! " 
  "\nThe " "walls " "came " a tum bl "in' " "down! " 

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " "down. "

  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nJer" i "cho, " 
  "\nJer" i "cho, " 
  "\nJosh" "ua " "fought " "the " bat "tle " "of "  Jer i "cho, " 
  "\nand " "the " "walls " "came " tum bl "in' " 
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\nSTOMP " "STOMP " "STOMP " "STOMP "
  "\ndown! " 
}

pianoRH = \relative {
  \global
  R1
  R1
  <bes f' bes>4 <c f bes>8 8~2~ |
  q2. r4 | % 3b
  <bes f' bes>4 <c f bes>8 8~2~ |
  q2. r4 |
  \repeat segno 2 {
    <bes d g>4 <a c f> <f bes d> <g c e> | % 4a
    <bes d g>8 <c f a>4 <d g bes>8~2 |
    <a c f>8 <bes d g>4 <c f a>8~2 |
    <bes d g>8 <c f a>4 <d g bes>8~4 <c fis a> | % 4b
    <bes d g>4 <a c f> <f bes d> <g c e> |
    <bes d g>8 <c f a>4 <d g bes>8~2 |
    <ees g d'>4 <ees g c> <d fis bes> <d fis a> | % 5a
    <bes d g>1~ |
    q1
    <bes f' bes>4 <c f bes>8 8~2~ | % 5b
    q2. r4 |
    <bes f' bes>4 <c f bes>8 8~2~ |
    \alternative {
      \volta 1 {
        q2. r4 | % 6a
        <g' a bes d>8 r r q~2 |
        <fis a bes d>8 r r q~2 | % 6b
        <f a bes d>8 r r q~2 |
        <e a bes d>8 r r q~2 | % 7a
        <g a bes d>8 r r q~2 |
        <fis a bes d>8 r r q~2 |
        <f a bes d>8 r r q~2 | % 7b
        <e a bes d>1 |
        r8 <g c ees>8-> 4-> <fis c' f>8-> 4.-> |
      }
    }
  }
  \section \sectionLabel \markup {\bold CODA}
  <c f bes>2.\repeatTie r4 | % 8a
  <g' a bes d>8 r r q~2 |
  <fis a bes d>8 r r q~2 |
  <f a bes d>8 r r q~2 | % 8b
  <e a bes d>8 r r q~2 |
  <g a bes d>8 r r q~2 |
  <fis a bes d>8 r r q~2 | % 9a
  <f a bes d>8 r r q~2 |
  <e a bes d>1 |
  r8 <g c ees>-> 4-> <fis c' f!>8-> 4.-> | % 9b
  <bes, d g>4 <a c f> <f bes d> <g c e> |
  <bes d g>8 <c f a>4 <d g bes>8~2 |
  <a c f>8 <bes d g>4 <c f a>8~2 | % 10a
  <bes d g>8 <c f a>4 <d g bes>8~4 <c fis a> |
  <bes d g>4 <a c f> <f bes d> <g c e> |
  <bes d g>8 <c f a>4 <d g bes>8~2 | % 10b
  <ees g d'>4 <ees g c> <d fis bes> <d fis a> |
  <bes d g>1 |
  R1 | % 11a
  bes4.-> <a bes>8-> ~4 <g bes>4-> ~ |
  q8 <f bes>4.-> <g bes>4-> <a bes>-> |
  bes'4.-> <a bes>8-> ~4 <g bes>-> ~ | % 11b
  q8 <f bes>4.-> <g bes>4-> a-> |
  <ees g bes>2-> <f a c>-> |
  <ees g bes d>2-> <f g bes ees>-> | % 12a
  <<{\voiceOne d'4 c bes a} \new Voice {\voiceTwo <d, a'>1->}>>
  \oneVoice <bes d g>4 <c d a'> <a d fis>2 |
  \repeat volta 2 {
    <bes d g>4 <a c f> <f bes d> <g c e> | % 12b
    <bes d g>8 <c f a>4 <d g bes>8~2 |
    <a c f>8 <bes d g>4 <c f a>8~2 |
    <bes d g>8 <c f a>4 <d g bes>8~4 <c fis a> | % 13a
    <bes d g>4 <a c f> <f bes d> <g c e> |
    <bes d g>8 <c f a>4 <d g bes>8~2 |
    \alternative {
      \volta 1 { <ees g d'>4 <ees g c> <d fis bes> <d fis a> | <bes d g>1 | } % 13b
      \volta 2 { <ees g d'>2 <ees g c> }
    }
  }
  <d fis bes>2 <d fis a> | R1 | R | % 14a
  <g bes d g>1-> | <a bes d g>-> | <g bes d g>-> | q8-^ r r4 r2 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1*5 |
  \repeat segno 2 {
    s1 | s-\markup\italic "sim." | s1*4 | % 4
    s1*6 |
    \alternative {
      \volta 1 {
        s1\> | s\mf | s1*2 | % 6
        s1*4 | s1\cresc | s |
      }
    }
  }
  s1\> | s\mf | s1*4 | % 8
  s1*2 | s1\cresc | s1 | s\f | s-\markup\italic "sim." |
  s1*5 | s1\dim | % 10
  s1 | s\mp | s | s\mf | s | s\cresc |
  s1*3 | % 12a
  \repeat volta 2 {
    s1\f | s-\markup\italic "sim." | s | % 12b
    s1*3 | % 13a
    \alternative {
      \volta 1 { s1*2 }
      \volta 2 { s1 }
    }
  }
  s1*7 |
}

pianoLH = \relative {
  \global
  \repeat unfold 6 {g,,8-- g'-. e,-- e'-. f,-- d'-. fis,-- fis'-. | }
  \repeat segno 2 {
    \break
    g,8-- g'-. a,-- a'-. d,-- d'-. c,-- c'-. | % 4a
    g,8 g' g, g' g, g' g, g' |
    f,8 f' f, f' f, f' f, f' |
    g,8 g' g, g' g, g' d4 | % 4b
    g,8 g' a, a' bes, bes' c, c' |
    g,8 g' g, g' g, g' g, g' |
    c,8 c' c, c' d, d' d, d' | % 5a
%    \repeat unfold 5 {g,,8 g' e, e' f, f' fis, fis' |}
    g,,8 g' e, e' f, f' fis, fis' |
    g,8 g' e, e' f, f' fis, fis' |
    g,8 g' e, e' f, f' fis, fis' |
    g,8 g' e, e' f, f' fis, fis' |
    g,8 g' e, e' f, f' fis, fis' |
    \alternative {
      \volta 1 {
        g,8 g' e, e' f, f' fis, fis' | % 6a
        <g, g'>2~8 d'' g d |
        <g, g'>2~8 d' g d | % 6b
        <g, g'>2~8 d' g d |
        <c, c'>2~8 <e e'> <f f'> <fis fis'> | % 7a
        <g g'>2~8 d' g d |
        <g, g'>2~8 d' g d |
        <g, g'>2~8 d' g d | % 7b
        <c, c'>4 4 4 4 |
        r8 <a a'>-> 4-> <d d'>8-> 4.-> |
      }
%      \volta 2 { }
    }
  }
  g,8 g' e, e' d, d' fis, fis' | % 8a
  <g, g'>2~8 d'' g d |
  <g, g'>2~8 d' g d |
  <g, g'>2~8 d' g d | % 8b
  <c, c'>2~8 <e e'> <f f'> <fis fis'> |
  <g g'>2~8 d' g d |
  <g, g'>2~8 d' g d | % 9a
  <g, g'>2~8 d' g d |
  <c, c'>4 4 4 4 |
  r8 <a a'>-> q4-> <d d'>8-> 4.-> | % 9b
  g,8-- g'-. a,-- a'-. bes,-- bes'-. c,-- c'-. |
  g,8 g' g, g' g, g' g, g' |
  f,8 f' f, f' f, f' f, f' | % 10a
  g,8 g' g, g' g, g' d4 |
  g,8 g' a, a' bes, bes' c, c' |
  g,8 g' g, g' g, g' g, g' | % 10b
  c,8 c' c, c' d, d' d, d' |
  \repeat unfold 4 {<g,, g'>8[r q] r q[r q] r |}
  \repeat unfold 2 {<ees ees'>8[r q] r q[r q] r |} % 11b
  \repeat unfold 2 {<c c'>8[r q] r q[r q] r |}
  <d d'>8[r q] r q[r q] r | % 12a+
  r8 8 8 8 8 8 8 8 |
  \repeat volta 2 {
    g8-- g'-. a,-- a'-. bes,-- bes'-. c,-- c'-. | % 12b
    g,8 g' g, g' g, g' g, g' |
    f,8 f' f, f' f, f' f, f' |
    g,8 g' g, g' g, g' d4 | % 13a
    g,8 g' a, a' bes, bes' c, c' |
    g,8 g' g, g' g, g' g, g' |
    \alternative {
      \volta 1 {
        c,8 c' c, c' d, d' d, d' | % 13b
        g,,8 g' e, e' f, f' fis, fis' |
      }
      \volta 2 { r4 <c c'>2 <a a'>4~ | }
    }
  }
  q4 <d d'>2 <d, d'>4 | % 14a
  <d' d'>8[r q] r q[r q] r |
  q8 q q q q q q q
  \repeat unfold 3 {g,8-- g'-. e,-- e'-. f,-- f'-. fis,-- fis'-. |} % 14b
  <g, g'>8-^ r r4 r2 |
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsI
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partII
            \addlyrics \wordsII
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partIII
            \addlyrics \wordsIII
          >>
        >>
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #22
%    system-separator-markup = \slashSeparator
%  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsISingle
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partII
            \addlyrics \wordsIISingle
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partIII
            \addlyrics \wordsIIISingle
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
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
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsISingle
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partII
            \addlyrics \wordsIISingle
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partIII
            \addlyrics \wordsIIISingle
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-i"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsISingle
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partII
            \addlyrics {\tiny \wordsIISingle}
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partIII
            \addlyrics {\tiny \wordsIIISingle}
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "singlepage-ii"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics {\tiny \wordsISingle}
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partII
            \addlyrics \wordsIISingle
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partIII
            \addlyrics {\tiny \wordsIIISingle}
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "singlepage-iii"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics {\tiny \wordsISingle}
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partII
            \addlyrics {\tiny \wordsIISingle}
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partIII
            \addlyrics \wordsIIISingle
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRH
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "midi-1"
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
            \addlyrics \wordsImidi
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partII
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partIII
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "midi-2"
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partII
            \addlyrics \wordsIImidi
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partIII
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
  \bookOutputSuffix "midi-3"
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single part I staff
          \new Staff = "part1" \with {
            instrumentName = #"Part I"
            shortInstrumentName = #"I"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \partI
          >>
                                % Single Part II staff
          \new Staff = "part2" \with {
            instrumentName = #"Part II"
            shortInstrumentName = #"II"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partII
          >>
                                % Single Part III staff
          \new Staff = "part3" \with {
            instrumentName = #"Part III"
            shortInstrumentName = #"III"
%            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partIII
            \addlyrics \wordsIIImidi
          >>
        >>
%      <<
%        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
%      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \pianoRH
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \pianoLH
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
