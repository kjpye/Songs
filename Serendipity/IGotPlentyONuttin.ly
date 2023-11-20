\version "2.25.9"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Got Plenty O' Nuttin'"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "George Gershwin"
  arranger    = "Arr. William Stickles"
%  opus        = "opus"

  poet        = "Ira Gershwin & Du Bose Heyward"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key bes \major
  \time 2/2
}

TempoTrack = {
  \tempo Allegretto 4=120
%  \set Score.tempoHideNote = ##t
  s1*6
  \repeat volta 2 {
    s1*43
    \alternative {
      {
        s2 \tempo 4=110 s | % 8a
        s1
        s1
        \tempo 4=100 s1
        \tempo 4=120 s1
        s1
      }
      {
        s2 \tempo 4=110 s | % 8b
        s1*5
      }
    }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "2a" } s1*4
  \mark \markup { \box "2b" } s1*2
  \repeat volta 2 {
    s1*2
    \mark \markup { \box "3a" } s1*4
    \mark \markup { \box "3b" } s1*5
    \mark \markup { \box "4a" } s1*4
    \mark \markup { \box "4b" } s1*4
    \mark \markup { \box "5a" } s1*4
    \mark \markup { \box "5b" } s1*4
    \mark \markup { \box "6a" } s1*4
    \mark \markup { \box "6b" } s1*4
    \mark \markup { \box "7a" } s1*4
    \mark \markup { \box "7b" } s1*4
    \alternative {
      {
        \mark \markup { \box "8a" } s1*6
      }
      {
        \mark \markup { \box "8b" } s1*6
      }
    }
  }
}

sopranoA = \relative {
  bes'4 4 c bes8 c | d8 f4.~4 r8 f, |
  d'4 8 c~8 d c4 | bes2 a | g4^\markup\italic\bold marcato 4 e4. r8 | g4 4 e4. 8 | % 3a
  g4 4 e g | gis1~ | 2 a | bes4 4 c bes8 c | d f4.~4 r |
  d4 8 c~8 d c4 | bes2(a) | g4 4 e8 4 8 | g8 4 8 e8 8 8 8 | % 4a
  \tag #'both {g4 4 <<{\voiceOne e4 g} \new Voice {\voiceTwo \tiny e8 4 g8}>>} % 4b
  \tag #'v1   {g4 4              e4 g                                        }
  \tag #'v2   {g4 4                                                e8 4 g8   }
  \oneVoice gis1~ | 2 a | bes1~ |
  bes2 r | a2(c | b) bes( | a c | % 5a
  b2) bes( | a c | b bes | a4) d,8 f g4^\markup\italic "marcato e" ees8 g |
  a4^\cresc f8 a bes4 g8 bes | c4 a8 c ees2~ | 4 r f2^\> | bes,4^\p 4 c bes8 c | % 6a
  d8 f4.~4 r8 f, | d'4 8 c~8 d c4 | bes2 r | R1 |
  g4 4 e4. 8 | g8 4 8 e4 g | gis1 | R1 | % 7a
  R1 | r2 g4 4 | bes r r2 | r2 g4 4 |
}

sopranoB = \relative {
  bes'4 r g^\f^\markup\italic rall. 4 | <f bes>1~ | q2 r | R1 | R1 | R1 \break | % 7a
}

sopranoC = \relative {
  bes'4 r g4^\f^\markup\italic rall. 4 | bes1\omit\cresc^\markup\italic "cresc. ed animato" ~ | 1~ | 1~ | 4\omit\ff r r2 | R1 |
}

sopranoR = {
  \global
  R1*5
  r2 r4 f'^\p
  \repeat volta 2 {
    \keepWithTag #'both \sopranoA
    \alternative {
      { \break \sopranoB }
      { \break \sopranoC }
    }
  }
}

sopranoS = {
  \global
  R1*5
  r2 r4 f'^\p
  \keepWithTag #'v1 \sopranoA
  \sopranoB
  \keepWithTag #'v2 \sopranoA
  \sopranoC
}

wordsSopOne = \lyricmode {
  Oh, I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got no car, got no mule,
  I got no mis -- er -- y. __
  De folks wid plen -- ty o' plen -- ty __
  Got a lock on de door, __
  Fraid some -- bod -- y's a -- go -- in'
  to rob 'em while dey's out a mak -- in' more. __
  What for? __
  \markup\italic Hum __ \markup\italic Hum __ \markup\italic Hum __
  'Cause de things dat I prize,
  Like de stars in de skies, are all free. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  got my song, got Heb -- ben the whole day long.
  Got my gal,
  Got my Lawd, Got my song. __
  
}

wordsSopTwo = \lyricmode {
  _ I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got the sun, got the moon,
  _ Got the deep blue sea. __
  De folks wid plen -- ty o' plen -- ty __
  Got to pray __ all de day, __
  Seems wid plen -- ty you sure got to wor -- ry
  how to keep the deb -- ble a -- way, __
  A -- way. __
  \markup\italic Hum __ \markup\italic Hum __ \markup\italic Hum __
  to be good, to be bad,
  What the hell?
  I is glad I's a -- live. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  got my song, got Heb -- ben the whole day long.
  Got my gal,
  Got my Lawd, Got my song. __
  
}

wordsSopSingle = \lyricmode {
  Oh, I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got no car, got no mule,
  I got no mis -- er -- y. __
  De folks wid plen -- ty o' plen -- ty __
  Got a lock on de door, __
  Fraid some -- bod -- y's a -- go -- in'
  to rob 'em while dey's out a mak -- in' more. __
  What for? __
  \markup\italic Hum __ \markup\italic Hum __ \markup\italic Hum __
  'Cause de things dat I prize,
  Like de stars in de skies, are all free. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  got my song, got Heb -- ben the whole day long.
  Got my gal,
  Got my Lawd, Got my song. 

  I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got the sun, got the moon,
  _ Got the deep blue sea. __
  De folks wid plen -- ty o' plen -- ty __
  Got to pray __ all de day, __
  Seems wid plen -- ty you sure got to wor -- ry
  how to keep the deb -- ble a -- way, __
  A -- way. __
  \markup\italic Hum __ \markup\italic Hum __ \markup\italic Hum __
  to be good, to be bad,
  What the hell?
  I is glad I's a -- live. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  got my song, got Heb -- ben the whole day long.
  Got my gal,
  Got my Lawd, Got my song. __
}

wordsSopMidi = \lyricmode {
  "Oh, " "I " "got " plen "ty " "o' " nut "tin', " 
  "\nAn' " nut "tin's " plen "ty " "fo' " "me. "
  "\nI " "got " "no " "car, " "got " "no " "mule, "
  "\nI " "got " "no " mis er "y. " 
  "\nDe " "folks " "wid " plen "ty " "o' " plen "ty " 
  "\nGot " "a " "lock " "on " "de " "door, " 
  "\nFraid " some bod "y's " a go "in' "
  "\nto " "rob " "'em " "while " "dey's " "out " "a " mak "in' " "more. " 
  "\nWhat " "for? " 
  \markup\italic Hum __ \markup\italic Hum __ \markup\italic Hum __
  "\n'Cause " "de " "things " "dat " "I " "prize, "
  "\nLike " "de " "stars " "in " "de " "skies, " "are " "all " "free. " 
  "\nOh, " "I " "got " plen "ty " "o " nut "tin', " 
  "\nAn " nut "tins " plen "ty " "fo' " "me. "
  "\ngot " "my " "song, " "got " Heb "ben " "the " "whole " "day " "long. "
  "\nGot " "my " "gal, "
  "\nGot " "my " "Lawd, " "Got " "my " "song. " 

  "\nI " "got " plen "ty " "o' " nut "tin', " 
  "\nAn' " nut "tin's " plen "ty " "fo' " "me. "
  "\nI " "got " "the " "sun, " "got " "the " "moon, "
  "" "\nGot " "the " "deep " "blue " "sea. " 
  "\nDe " "folks " "wid " plen "ty " "o' " plen "ty " 
  "\nGot " "to " "pray "  "all " "de " "day, " 
  "\nSeems " "wid " plen "ty " "you " "sure " "got " "to " wor "ry "
  "\nhow " "to " "keep " "the " deb "ble " a "way, " 
  "\nA" "way. " 
  \markup\italic Hum __ \markup\italic Hum __ \markup\italic Hum __
  "\nto " "be " "good, " "to " "be " "bad, "
  "\nWhat " "the " "hell? "
  "\nI " "is " "glad " "I's " a "live. " 
  "\nOh, " "I " "got " plen "ty " "o " nut "tin', " 
  "\nAn " nut "tins " plen "ty " "fo' " "me. "
  "\ngot " "my " "song, " "got " Heb "ben " "the " "whole " "day " "long. "
  "\nGot " "my " "gal, "
  "\nGot " "my " "Lawd, " "Got " "my " "song. " 
}

altoA = \relative {
    f'4 4 g4 8 8 | bes8 4.~4 r8 f |
    f4 8 g~8 bes g4 | f2 fis | d4^\markup\italic marcato 4 c4. r8 | d4 4 c4. 8 | % 3a
    d4 4 c e | <ees gis>1~ | 2 f | 4 4 g4 8 8 | bes8 4.~4 r |
    bes4 8 g~8 bes g4 | f2(fis) | d4 4 c8 4 8 | d8 4 8 c c c c | % 4a
    \tag #'both {d4 4 <<{\voiceOne c e} \new Voice {\voiceTwo \tiny c8 4 e8}>> | } % 4b
    \tag #'v1   {d4 4              c e                                         | }
    \tag #'v2   {d4 4                                               c8 4 e8    | }
    \oneVoice <e gis>1~ | 2 f | f g |
    f2 r | <d f>1~ | 2 <d e>2(~ | <d f>1~ | % 5a
    q2) <<{\voiceOne e2( | f1~ | f2 e | f4)} \new Voice {\voiceTwo d2~ | d1~ | d1~ | d4}>>
    \oneVoice d8 f g4^\markup\italic "marcato e" ees8 f |
    a4^\cresc f8 a bes4 g8 bes | c4 f,8 a8 2~ | 4 r4 2^\> | f4^\p f g4 8 8 | % 6a
    bes8 4.~4 r8 f | 4 8 g~8 bes g4 | f2 r | R1 |
    d4 4 c4. 8 | d8 4 8 c4 e | e1 | R | % 7a
    R1 | r2 ees4 4 | f r r2 | r2 ees4 4 |
  }

altoB = \relative {
  f'4 r ees^\f^\markup\italic rall. ees | <bes d>1~ | 2 r | R1 | R1 | R1 |
}

altoC = \relative {
  f'4 r g^\f^\markup\italic rall. g | bes1\omit\cresc^\markup\italic "cresc. ed animato" ~ | 1~ | 1~ | 4\omit\ff r r2 | R1 |

}
altoR = {
  \global
  R1*5
  r2 r4 f'^\p
  \repeat volta 2 {
    \keepWithTag #'both \altoA
    \alternative {
      { \break \altoB }
      { \break \altoC }
    }
  }
}

altoS = {
  \global
  R1*5
  r2 r4 f'^\p
  \keepWithTag #'v1 \altoA
  \altoB
  \keepWithTag #'v2 \altoA
  \altoC
}

wordsAltoOne = \lyricmode {
  Oh, I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got no car, got no mule,
  I got no mis -- er -- y. __
  De folks wid plen -- ty o' plen -- ty __
  Got a lock on de door, __
  Fraid some -- bod -- y's a -- go -- in'
  to rob 'em while dey's out a mak -- in' more. __
  What for, what for? __
  \markup\italic Hum __ \markup\italic Hum __ \markup\italic Hum __
  'Cause de things dat I prize,
  Like de stars in de skies, are all free. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  got my song, got Heb -- ben the whole day long.
  Got my gal,
  Got my Lawd, Got my song. __
}

wordsAltoTwo = \lyricmode {
  _ I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got the sun, got the moon,
  _ Got the deep blue sea. __
  De folks wid plen -- ty o' plen -- ty __
  Got to pray __ all de day, __
  Seems wid plen -- ty you sure got to wor -- ry
  how to keep the deb -- ble a -- way, __
  A -- way, a -- way. __
  \markup\italic Hum __ \markup\italic Hum __ \markup\italic Hum __
  to be good, to be bad,
  What the hell?
  I is glad I's a -- live. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  got my song, got Heb -- ben the whole day long.
  Got my gal,
  Got my _ _ _ _ Lawd, Got my song. __
}

wordsAltoSingle = \lyricmode {
  Oh, I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got no car, got no mule,
  I got no mis -- er -- y. __
  De folks wid plen -- ty o' plen -- ty __
  Got a lock on de door, __
  Fraid some -- bod -- y's a -- go -- in'
  to rob 'em while dey's out a mak -- in' more. __
  What for, what for? __
  \markup\italic Hum __ \markup\italic Hum __ \markup\italic Hum __
  'Cause de things dat I prize,
  Like de stars in de skies, are all free. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  got my song, got Heb -- ben the whole day long.
  Got my gal,
  Got my Lawd, Got my song. __

  \set stanza = "2."
  I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got the sun, got the moon,
  _ Got the deep blue sea. __
  De folks wid plen -- ty o' plen -- ty __
  Got to pray __ all de day, __
  Seems wid plen -- ty you sure got to wor -- ry
  how to keep the deb -- ble a -- way, __
  A -- way, a -- way. __
  \markup\italic Hum __ \markup\italic Hum __ \markup\italic Hum __
  to be good, to be bad,
  What the hell?
  I is glad I's a -- live. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  got my song, got Heb -- ben the whole day long.
  Got my gal,
  Got my Lawd, Got my song. __
}

wordsAltoMidi = \lyricmode {
  "Oh, " "I " "got " plen "ty " "o' " nut "tin', " 
  "\nAn' " nut "tin's " plen "ty " "fo' " "me. "
  "\nI " "got " "no " "car, " "got " "no " "mule, "
  "\nI " "got " "no " mis er "y. " 
  "\nDe " "folks " "wid " plen "ty " "o' " plen "ty " 
  "\nGot " "a " "lock " "on " "de " "door, " 
  "\nFraid " some bod "y's " a go "in' "
  "\nto " "rob " "'em " "while " "dey's " "out " "a " mak "in' " "more. " 
  "\nWhat " "for, " "what " "for? " 
  \markup\italic Hum __ \markup\italic Hum __ \markup\italic Hum __
  "\n'Cause " "de " "things " "dat " "I " "prize, "
  "\nLike " "de " "stars " "in " "de " "skies, " "are " "all " "free. " 
  "\nOh, " "I " "got " plen "ty " "o " nut "tin', " 
  "\nAn " nut "tins " plen "ty " "fo' " "me. "
  "\ngot " "my " "song, " "got " Heb "ben " "the " "whole " "day " "long. "
  "\nGot " "my " "gal, "
  "\nGot " "my " "Lawd, " "Got " "my " "song. " 

  \set stanza = "2."
  "\nI " "got " plen "ty " "o' " nut "tin', " 
  "\nAn' " nut "tin's " plen "ty " "fo' " "me. "
  "\nI " "got " "the " "sun, " "got " "the " "moon, "
  "" "\nGot " "the " "deep " "blue " "sea. " 
  "\nDe " "folks " "wid " plen "ty " "o' " plen "ty " 
  "\nGot " "to " "pray "  "all " "de " "day, " 
  "\nSeems " "wid " plen "ty " "you " "sure " "got " "to " wor "ry "
  "\nhow " "to " "keep " "the " deb "ble " a "way, " 
  "\nA" "way, " a "way. " 
  \markup\italic Hum __ \markup\italic Hum __ \markup\italic Hum __
  "\nto " "be " "good, " "to " "be " "bad, "
  "\nWhat " "the " "hell? "
  "\nI " "is " "glad " "I's " a "live. " 
  "\nOh, " "I " "got " plen "ty " "o " nut "tin', " 
  "\nAn " nut "tins " plen "ty " "fo' " "me. "
  "\ngot " "my " "song, " "got " Heb "ben " "the " "whole " "day " "long. "
  "\nGot " "my " "gal, "
  "\nGot " "my " "Lawd, " "Got " "my " "song. " 
}

tenorA = \relative {
  d'4 4 ees4 8 8 | f8 d4.~4 r8 f,
  bes4 8 ees~8 f ees4 | d2 c | b4^\markup\italic marcato 4 g4. r8 | b4 4 g4. 8 | % 3a
  b4 4 g c | b1~ | 2 c | d4 4 ees4 8 8 | f d4.~4 r |
  f4 8 ees~8 f ees4 | d2(c) | b4 4 g8 4 8 | b8 4 8 g g g g | % 4a
  \tag #'both {b4 4 <<{\voiceOne g4 c} \new Voice {\voiceTwo \tiny g8 4 c8}>>} | % 4b
  \tag #'v1   {b4 4              g4 c                                        } |
  \tag #'v2   {b4 4                                                g8 4 c8   } |
  \oneVoice b1~ | 2 c | d ees |
  d2 r | a4 f8 d f4 d8 f | a2 g8 a g d | f1~ | % 5a
  f4 r g8 a g d | f4 d8 f a2~ | 2 g8 a g d | f4 d8 f g4^\markup\italic "marcato e" ees8 g |
  a4^\cresc f8 a bes4 g8 bes | c4 a8 c c2~ | 4 r ees2^\> | d4^\p d ees4 8 8 | % 6a
  f8 d4.~4 r8 f, | bes4 8 ees~8 f ees4 | d2 r | R1 |
  b4 4 g4. 8 | b8 4 8 g4 c | b1 |
  \override NoteHead.style = #'cross
  \tuplet 3/2 {bes4^\markup\italic "(spoken in a high voice)" 4 4} 4 4
  \revert NoteHead.style
  R1 | r2 c4 4 | d4 r r2 | r c4 4 | % 7b
}

tenorB = \relative {
  d'4 r bes^\f^\markup\italic rall. bes | f1~ | 2 r | R1 | R1 | R1 | % 8a
}

tenorC = \relative {
  d'4 r g,^\f^\markup\italic rall. 4 | bes1\omit\cresc^\markup\italic "cresc. ed animato" ~ | 1~ | 1~ | 4\omit\ff r r2 | R1 |
}

tenorR = {
  \global
  R1*5
  r2 r4 f'^\p
  \repeat volta 2 {
    \keepWithTag #'both \tenorA
    \alternative {
      { \break \tenorB }
      { \break \tenorC }
    }
  }
}

tenorS = {
  \global
  R1*5
  r2 r4 f'^\p
  \keepWithTag #'v1 \tenorA
  \tenorB
  \keepWithTag #'v2 \tenorA
  \tenorC
}

wordsTenorOne = \lyricmode {
  Oh, I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got no car, got no mule,
  I got no mis -- er -- y. __
  De folks wid plen -- ty o' plen -- ty __
  Got a lock on de door, __
  Fraid some -- bod -- y's a -- go -- in'
  to rob 'em while dey's out a mak -- in' more. __
  What for, what for? __

  I got no lock on de door, dat's no way to be __
  Dey kin steal de rug from de floor, __
  Dat's o -- keh wid me,
  'Cause de things dat I prize,
  Like de stars in de skies, are all free. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  got my song, got Heb -- ben the whole day long.
  No use com -- plain -- in'!
  Got my gal,
  Got my Lawd, Got my song. __
}

wordsTenorTwo = \lyricmode {
  _ I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got the sun, got the moon,
  _ Got the deep blue sea. __
  De folks wid plen -- ty o' plen -- ty __
  Got to pray __ all de day, __
  Seems wid plen -- ty you sure got to wor -- ry
  how to keep the deb -- ble a -- way, __
  A -- way, a -- way. __

  I ain't a -- fret -- tin 'bout hell
  Till de time ar -- rive. __
  Nev -- er wor -- ry long as I'm well, __
  Nev -- er one to strive to be good, to be bad,
  What the hell?
  I is glad I's a -- live. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  got my song, got Heb -- ben the whole day long.
  No use com -- plain -- in'!
  Got my gal,
  Got my _ _ _ _ Lawd, Got my song. __
}

wordsTenorSingle = \lyricmode {
  Oh, I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got no car, got no mule,
  I got no mis -- er -- y. __
  De folks wid plen -- ty o' plen -- ty __
  Got a lock on de door, __
  Fraid some -- bod -- y's a -- go -- in'
  to rob 'em while dey's out a mak -- in' more. __
  What for, what for? __

  I got no lock on de door, dat's no way to be __
  Dey kin steal de rug from de floor, __
  Dat's o -- keh wid me,
  'Cause de things dat I prize,
  Like de stars in de skies, are all free. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  got my song, got Heb -- ben the whole day long.
  No use com -- plain -- in'!
  Got my gal,
  Got my Lawd, Got my song. __

  I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got the sun, got the moon,
  _ Got the deep blue sea. __
  De folks wid plen -- ty o' plen -- ty __
  Got to pray __ all de day, __
  Seems wid plen -- ty you sure got to wor -- ry
  how to keep the deb -- ble a -- way, __
  A -- way, a -- way. __

  I ain't a -- fret -- tin 'bout hell
  Till de time ar -- rive. __
  Nev -- er wor -- ry long as I'm well, __
  Nev -- er one to strive to be good, to be bad,
  What the hell?
  I is glad I's a -- live. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  got my song, got Heb -- ben the whole day long.
  No use com -- plain -- in'!
  Got my gal,
  Got my Lawd, Got my song. __
}

wordsTenorMidi = \lyricmode {
  "Oh, " "I " "got " plen "ty " "o' " nut "tin', " 
  "\nAn' " nut "tin's " plen "ty " "fo' " "me. "
  "\nI " "got " "no " "car, " "got " "no " "mule, "
  "\nI " "got " "no " mis er "y. " 
  "\nDe " "folks " "wid " plen "ty " "o' " plen "ty " 
  "\nGot " "a " "lock " "on " "de " "door, " 
  "\nFraid " some bod "y's " a go "in' "
  "\nto " "rob " "'em " "while " "dey's " "out " "a " mak "in' " "more. " 
  "\nWhat " "for, " "what " "for? " 

  "\nI " "got " "no " "lock " "on " "de " "door, " "dat's " "no " "way " "to " "be " 
  "\nDey " "kin " "steal " "de " "rug " "from " "de " "floor, " 
  "\nDat's " o "keh " "wid " "me, "
  "\n'Cause " "de " "things " "dat " "I " "prize, "
  "\nLike " "de " "stars " "in " "de " "skies, " "are " "all " "free. " 
  "\nOh, " "I " "got " plen "ty " "o " nut "tin', " 
  "\nAn " nut "tins " plen "ty " "fo' " "me. "
  "\ngot " "my " "song, " "got " Heb "ben " "the " "whole " "day " "long. "
  "\nNo " "use " com plain "in'! "
  "\nGot " "my " "gal, "
  "\nGot " "my " "Lawd, " "Got " "my " "song. " 

  "\nI " "got " plen "ty " "o' " nut "tin', " 
  "\nAn' " nut "tin's " plen "ty " "fo' " "me. "
  "\nI " "got " "the " "sun, " "got " "the " "moon, "
  "" "\nGot " "the " "deep " "blue " "sea. " 
  "\nDe " "folks " "wid " plen "ty " "o' " plen "ty " 
  "\nGot " "to " "pray "  "all " "de " "day, " 
  "\nSeems " "wid " plen "ty " "you " "sure " "got " "to " wor "ry "
  "\nhow " "to " "keep " "the " deb "ble " a "way, " 
  "\nA" "way, " a "way. " 

  "\nI " "ain't " a fret "tin " "'bout " "hell "
  "\nTill " "de " "time " ar "rive. " 
  "\nNev" "er " wor "ry " "long " "as " "I'm " "well, " 
  "\nNev" "er " "one " "to " "strive " "to " "be " "good, " "to " "be " "bad, "
  "\nWhat " "the " "hell? "
  "\nI " "is " "glad " "I's " a "live. " 
  "\nOh, " "I " "got " plen "ty " "o " nut "tin', " 
  "\nAn " nut "tins " plen "ty " "fo' " "me. "
  "\ngot " "my " "song, " "got " Heb "ben " "the " "whole " "day " "long. "
  "\nNo " "use " com plain "in'! "
  "\nGot " "my " "gal, "
  "\nGot " "my " "Lawd, " "Got " "my " "song. " 
}

bassA = \relative {
  bes,4 4 4 8 8 | bes'8 4.~4 r8 f
  bes4 8 8~8 8 4 | bes,2 d | g,4^\markup\italic marcato 4 c4. r8 | g4 4 c4. 8 | % 3a
  g4 4 c c | e1~ | 2 f | bes,4 4 4 8 8 | bes'8 4.~4 r4 |
  bes4 8 8~8 8 4 | bes,2(d) | g,4 4 c8 4 8 | g8 4 8 c c c c | % 4a
  \tag #'both {g4 4 <<{\voiceOne c c} \new Voice {\voiceTwo \teeny c8 4 8}>> | } % 4b
  \tag #'v1   {g4 4              c c                                        | }
  \tag #'v2   {g4 4                                               c8 4 8    | }
  e1~ | 2 f | bes c |
  bes2 r | a4 f8 d f4 d8 f | bes2 g8 a g d | f1~ | % 5a
  f4 r g8 a g d | f4 d8 f a2~ | 2 g8 a g d | f4 d8 f g4^\markup\italic "marcato e" ees8 g |
  a4^\cresc f8 a bes4 g8 bes | c4 f,8 a f2~ | 4 r4 2^\> | bes4^\p 4 4 8 8 | % 6a
  bes8 4.~4 r8 f | bes4 8 8~8 8 4 | 2 a | g4 4 e4. r8 |
  r2 r4 r8 c | g8 4 8 c4 4 | e1 | R | % 7a
  r2 a4 4 | bes1~ | 4 r aes aes | bes1~ |
}

bassB = \relative {
  bes4 r ees,^\f^\markup\italic rall. 4 | bes1 ~ | 2 r | R1 | R | R | % 8a
}

bassC = \relative {
  bes4\repeatTie r4 g4^\f g | bes1\omit\cresc^\markup\italic "cresc. ed animato" ~ | 1~ | 1~ | 4\omit\ff r r2 | R1 |
}

bassR = {
  \global
  R1*5
  r2 r4 f^\p
  \repeat volta 2 {
    \keepWithTag #'both \bassA
    \alternative {
      { \break \bassB }
      { \break \bassC }
    }
  }
}

bassS = {
  \global
  R1*5
  r2 r4 f^\p
  \keepWithTag #'v1 \bassA
  \bassB
  \keepWithTag #'v2 \bassA
  \bassC
}

wordsBassOne = \lyricmode {
  Oh, I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got no car, got no mule,
  I got no mis -- er -- y. __
  De folks wid plen -- ty o' plen -- ty __
  Got a lock on de door, __
  Fraid some -- bod -- y's a -- go -- in'
  to rob 'em while dey's out a mak -- in' more. __
  What for, what for? __

  I got no lock on de door, dat's no way to be __
  Dey kin steal de rug from de floor, __
  Dat's o -- keh wid me,
  'Cause de things dat I prize,
  Like de stars in de skies, are all free. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  I got my gal, got Heb -- ben the whole day long.
  Got my gal, __
  Got my Lawd, Got my song. __
}

wordsBassTwo = \lyricmode {
  _ I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got the sun, got the moon,
  _ Got the deep blue sea. __
  De folks wid plen -- ty o' plen -- ty __
  Got to pray __ all de day, __
  Seems wid plen -- ty you sure got to wor -- ry
  how to keep the deb -- ble a -- way, __
  A -- way, a -- way. __

  I ain't a -- fret -- tin 'bout hell
  Till de time ar -- rive. __
  Nev -- er wor -- ry long as I'm well, __
  Nev -- er one to strive to be good, to be bad,
  What the hell?
  I is glad I's a -- live. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  I got my gal, got Heb -- ben the whole day long.
  Got my gal,
  Got my Lawd, _ _ _ _ Got my song. __
}

wordsBassSingle = \lyricmode {
  Oh, I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got no car, got no mule,
  I got no mis -- er -- y. __
  De folks wid plen -- ty o' plen -- ty __
  Got a lock on de door, __
  Fraid some -- bod -- y's a -- go -- in'
  to rob 'em while dey's out a mak -- in' more. __
  What for, what for? __

  I got no lock on de door, dat's no way to be __
  Dey kin steal de rug from de floor, __
  Dat's o -- keh wid me,
  'Cause de things dat I prize,
  Like de stars in de skies, are all free. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  I got my gal, got Heb -- ben the whole day long.
  Got my gal, __
  Got my Lawd, Got my song. __

  \set stanza = "2."
  I got plen -- ty o' nut -- tin', __
  An' nut -- tin's plen -- ty fo' me.
  I got the sun, got the moon,
  _ Got the deep blue sea. __
  De folks wid plen -- ty o' plen -- ty __
  Got to pray __ all de day, __
  Seems wid plen -- ty you sure got to wor -- ry
  how to keep the deb -- ble a -- way, __
  A -- way, a -- way. __

  I ain't a -- fret -- tin 'bout hell
  Till de time ar -- rive. __
  Nev -- er wor -- ry long as I'm well, __
  Nev -- er one to strive to be good, to be bad,
  What the hell?
  I is glad I's a -- live. __
  Oh, I got plen -- ty o nut -- tin', __
  An nut -- tins plen -- ty fo' me.
  I got my gal, got Heb -- ben the whole day long.
  Got my gal,
  Got my Lawd, Got my song. __
}

wordsBassMidi = \lyricmode {
  "Oh, " "I " "got " plen "ty " "o' " nut "tin', " 
  "\nAn' " nut "tin's " plen "ty " "fo' " "me. "
  "\nI " "got " "no " "car, " "got " "no " "mule, "
  "\nI " "got " "no " mis er "y. " 
  "\nDe " "folks " "wid " plen "ty " "o' " plen "ty " 
  "\nGot " "a " "lock " "on " "de " "door, " 
  "\nFraid " some bod "y's " a go "in' "
  "\nto " "rob " "'em " "while " "dey's " "out " "a " mak "in' " "more. " 
  "\nWhat " "for, " "what " "for? " 

  "\nI " "got " "no " "lock " "on " "de " "door, " "dat's " "no " "way " "to " "be " 
  "\nDey " "kin " "steal " "de " "rug " "from " "de " "floor, " 
  "\nDat's " o "keh " "wid " "me, "
  "\n'Cause " "de " "things " "dat " "I " "prize, "
  "\nLike " "de " "stars " "in " "de " "skies, " "are " "all " "free. " 
  "\nOh, " "I " "got " plen "ty " "o " nut "tin', " 
  "\nAn " nut "tins " plen "ty " "fo' " "me. "
  "\nI " "got " "my " "gal, " "got " Heb "ben " "the " "whole " "day " "long. "
  "\nGot " "my " "gal, " 
  "\nGot " "my " "Lawd, " "Got " "my " "song. " 

  \set stanza = "2."
  "\nI " "got " plen "ty " "o' " nut "tin', " 
  "\nAn' " nut "tin's " plen "ty " "fo' " "me. "
  "\nI " "got " "the " "sun, " "got " "the " "moon, "
  "" "\nGot " "the " "deep " "blue " "sea. " 
  "\nDe " "folks " "wid " plen "ty " "o' " plen "ty " 
  "\nGot " "to " "pray "  "all " "de " "day, " 
  "\nSeems " "wid " plen "ty " "you " "sure " "got " "to " wor "ry "
  "\nhow " "to " "keep " "the " deb "ble " a "way, " 
  "\nA" "way, " a "way. " 

  "\nI " "ain't " a fret "tin " "'bout " "hell "
  "\nTill " "de " "time " ar "rive. " 
  "\nNev" "er " wor "ry " "long " "as " "I'm " "well, " 
  "\nNev" "er " "one " "to " "strive " "to " "be " "good, " "to " "be " "bad, "
  "\nWhat " "the " "hell? "
  "\nI " "is " "glad " "I's " a "live. " 
  "\nOh, " "I " "got " plen "ty " "o " nut "tin', " 
  "\nAn " nut "tins " plen "ty " "fo' " "me. "
  "\nI " "got " "my " "gal, " "got " Heb "ben " "the " "whole " "day " "long. "
  "\nGot " "my " "gal, "
  "\nGot " "my " "Lawd, " "Got " "my " "song. " 
}

pianoRHone = \relative {
  \global
  <bes bes'>4-> q-> <c c'>-> <bes bes'>8-> <c c'>-> |
  <d d'>8-> <f f'>4.-> r4 f8\( g |
  a4 f8 a c4 \tuplet 3/2 {f,8( a c} |
  ees4)\) <c, c'>8(<d d'> <ees ees'> <f f'> <g g'> <a a'> |
  <bes d f bes>8->) r <f, bes d>4-> r <g c ees>-> | % 2b
  r4 <a d f>-> r <c ees f>-> |
  \repeat volta 2 {
    r4 <bes d f>-. e <bes ees g>-. |
    r4 <a d f>8-. 8-. r4 <a ees' f> |
    r <d f bes> r <ees g c> | % 3a
    r4 <d f bes> r <c fis a> |
    r4 <b d g> r <g c e> |
    r4 <b d g> r <g c e> |
    r4 <b d g> (<g c e> <c ees g> | % 3b
    gis'1)~ |
    gis2 a( |
    bes4) <bes, d f> r <bes ees g> |
    r4 <a d f>8 8 r4 <c ees g> |
    r4 <d f bes> r <ees g c> | % 4a
    r4 <d f bes> r <c fis a> |
    r4 <b d g> r <g c e> |
    r4 <b d g> r <g c e> |
    r4 <b d g> <g c e> <c es g> | % 4b
    \voiceOne gis'1~ |
    gis2( a)( |
    bes4) \oneVoice <bes, d f> r <c ees g>8 8 |
    r4 <d f a> r <bes d f> | % 5a
    \voiceOne a'4(f8 d f4 d8 f |
    a2 g8 a g d |
    << {f2)} \new Voice {r4 d}>> r4 <d f> |
    r4 <d f> g8( a g d | % 5b
    f4 d8 f a2)~ |
    a2 g8( a g d |
    <d f>4) d8(f <e g>4) ees8( g |
    <f a>4) f8(a <g bes>4) g8(bes \oneVoice | % 6a
    <f a c>4) <ees g a>8(c' <g c ees>4) <f f'>8(<g g'> |
    <a a'>8 <bes bes'> <c c'> <d d'> <ees ees'> <f f'>) \ottava #1 <g g'> <a a'> |
    <bes bes'>8 \ottava #0 r <bes,, d f>4 r <bes ees g> |
    r4 <a d f>8 8 r4 <a ees f> | % 6b
    r4 <d f bes> r <ees g c> |
    r4 <d f bes> r <c fis a> |
    r4 <b d g> r <g c e> |
    r4 <b d g> r <g c e> | % 7a
    r4 <b d g> <g c e> <c ees g> |
    gis'1 |
    r4 <b, e gis> r q |
    r4 q \voiceOne a'4(a | % 7b
    bes1)~ |
    bes4 r aes(4 |
    bes1) ~ |
    \alternative {
      {
        bes4 r g g | % 8a
        \oneVoice <d f bes>8 r bes'(c d fes ges aes |
        bes1) |
        <d, f a>2(<a d f>) |
        r4 <f, bes d> r <g c ees> |
        r4 <a d f> r <g c ees> |
      }
      {
        \voiceOne bes'4\repeatTie r g g | % 8b
        bes4 4 c bes8 c |
        des4 4 ees des8 ees |
        \oneVoice f8(des'4) r8 f,8 (c'4) r8 |
        r4 g,8.->( f16 cis8. d16 bes8. g16 |
        bes4) r <bes' d f bes>-> r|
      }
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s1*6
  \repeat volta 2 {
    s1*7
    r4 <gis b e> r q | % 3b+
    r4 q r <a c f> |
    s1*7
    r4 <gis b e> r q | % 4b+
    r4 q r <a c f> |
    s1
    s1 % 5a
    a2(c |
    b2 bes |
    a2) c( |
    b2) bes( | % 5b
    a2) c( |
    b2 bes) |
    a2 bes |
    c2 ees | % 6a
    s1*9
    r4 <gis, b e> r q | % 7a++
    s1
    s2 <c f> | % 7b
    r4 <d f> e <c ees g>8 8 |
    r4 <d f> <c ees>2 |
    r4 <d f> e <c ees g>8 8 |
    \alternative {
      {
        r4 <d f> <bes ees>2 | % 8a
        s1*5
      }
      {
        r4 <d f> <bes ees>2 | % 8b
        <d f>4 q r <des g> |
        r4 <f bes> r <ees ges> |
        s1*3
      }
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s1 | s1 | s4 s2.\< |
  s2\! s\dim | s1 |
  \repeat volta 2 {
    s1\p | s1
    s1*24
    s2 s-\markup\italic "marcato e" % 5b+3
    s1\cresc % 6a
    s1
    s4 s2.\<
    s4\f s2.\p
    s1*12
    \alternative {
      {
        s2 s\omit\f-\markup{\dynamic f \italic rall.} % 8a
        s1
        s1\<
        s1\> -\markup\italic "poco rit."
        s1\omit\f-\markup{\dynamic f \italic "a tempo"}
        s2.\> s4\!
      }
      {
        s2 s\omit\f -\markup{\dynamic f \italic rall.}
        s1\omit\cresc -\markup\italic "cresc. ed animato"
        s1
        s1\f
        s1
        s1
      }
    }
  }
}

pianoLH = \relative {
  \global
  bes,4-> 4-> c-> bes8-> c-> |
  d8-> f4.-> r4 f8(g |
  a4 f8 a c4) \tuplet 3/2 {f,8( a c} |
  ees4) <ees,, ees'>-> <d d'>-> <c c'>-> |
  <bes bes'>8 r8 r4 q r | % 2b
  q4 r q r |
  \repeat volta 2 {
    q4 r q r |
    q4 r q r |
    q4 r q r | % 3a
    q4 r <d d'> r |
    <g, g'>4 r <c c'> r |
    <g g'>4 r <c c'> r |
    <g g'>4 r <c c'>2 | % 3b
    <e e'>4 r q r |
    q4 r <f f'> r |
    <bes, bes'>4 r q r |
    q4 r q r |
    q4 r q r | % 4a
    q4 r <d d'> r |
    <g, g'>4 r <c c'> r |
    <g g'>4 r <c c'> r |
    <g g'>4 r <c c'>2 | % 4b
    <e e'>4 r q r |
    q4 r <f f'> r |
    <bes, bes'>4 r q r |
    q4 r q r | % 5a
    d'4 r g, r |
    d'4 r g, r |
    d'4 r g, r |
    d'4 r g, r | % 5b
    d'4 r g, r |
    d'4 r g, r |
    d'2 c |
    <f, f'>2 <c c'> | % 6a
    <f f'>1 |
    q4 <ees ees'> <d d'> <c c'> |
    <bes bes'>4 r q r |
    q4 r q r | % 6b
    q4 r q r |
    q4 r <d d'> r |
    <g, g'>4 r <c c'> r |
    <g g'>4 r <c c'> r | % 7a
    <g g'>4 r <c c'>2 |
    <e e'>4 r q r |
    e'4 r b r |
    gis4 r f r | % 7b
    <bes, bes'>4 r q r |
    q4 r q r |
    q4 r q r |
    \alternative {
      {
        q4 r <ees ees'>2 | % 8a
        <bes' f>1~ |
        q4 d8(f g bes d f |
        <<ees1) \new Voice {\voiceTwo r4 f,8 (g f4 f,)}>>
        <bes, bes'>4 r q r |
        q4 r q r |
      }
      {
        q4 r <ees ees'>2 | % 8b
        <bes bes'>4 r <ees ees'>2 |
        <f f'>2 <a a'> |
        <aes' des f>4 4 <a ees' f> q |
        f,4 g'8.-> (f16 cis8. d16 bes8. g16 |
        bes4) r <bes' f'>-> r |
      }
    }
  }
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
%   \articulate
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
            \new Voice \sopranoR
            \new NullVoice {s1*5 s2. f4 \keepWithTag #'v1 \sopranoA \sopranoB}
            \addlyrics \wordsSopOne
            \new NullVoice {s1*5 s2. f4 \keepWithTag #'v2 \sopranoA s1*6 \sopranoC}
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice {\keepWithTag #'both \altoR}
            \new NullVoice {s1*5 s2. f4 \keepWithTag #'v1 \altoA \altoB}
            \addlyrics \wordsAltoOne
            \new NullVoice {s1*5 s2. f4 \keepWithTag #'v2 \altoA \altoC}
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice     {\keepWithTag #'both \tenorR}
            \new NullVoice {s1*5 s2. f4 \keepWithTag #'v1 \tenorA \tenorB}
            \addlyrics \wordsTenorOne
            \new NullVoice {s1*5 s2. f4 \keepWithTag #'v2 \tenorA \tenorC}
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice {\keepWithTag #'both \bassR}
            \new NullVoice {s1*5 s2. f4 \keepWithTag #'v1 \bassA \bassB}
            \addlyrics \wordsBassOne
            \new NullVoice {s1*5 s2. f4 \keepWithTag #'v2 \bassA \bassC}
            \addlyrics \wordsBassTwo
          >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
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
         \new Voice \sopranoS
         \addlyrics \wordsSopSingle
       >>
                                % Single alto staff
       \new Staff = alto \with {
         instrumentName = #"Alto"
         shortInstrumentName = #"A"
         midiInstrument = "choir aahs"
       }
       <<
         \new Voice \altoS
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
         \new Voice \tenorS
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
         \new Voice \bassS
         \addlyrics \wordsBassSingle
       >>
       \new PianoStaff = piano <<
         \new Staff = pianorh \with {
           printPartCombineTexts = ##f
           midiInstrument = "acoustic grand piano"
         }
         <<
           \new Voice \partCombine \pianoRHone \pianoRHtwo
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
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
         \new Voice \sopranoS
         \addlyrics \wordsSopSingle
       >>
                                % Single alto staff
       \new Staff = alto \with {
         instrumentName = #"Alto"
         shortInstrumentName = #"A"
         midiInstrument = "choir aahs"
       }
       <<
         \new Voice \altoS
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
         \new Voice \tenorS
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
         \new Voice \bassS
         \addlyrics \wordsBassSingle
       >>
       \new PianoStaff = piano <<
         \new Staff = pianorh \with {
           printPartCombineTexts = ##f
           midiInstrument = "acoustic grand piano"
         }
         <<
           \new Voice \partCombine \pianoRHone \pianoRHtwo
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
  \bookOutputSuffix "singlepage-sop"
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
         \new Voice \sopranoS
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
         \new Voice \altoS
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
         \new Voice \tenorS
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
         \new Voice \bassS
         \addlyrics {\tiny \wordsBassSingle}
       >>
       \new PianoStaff = piano <<
         \new Staff = pianorh \with {
           printPartCombineTexts = ##f
           midiInstrument = "acoustic grand piano"
         }
         <<
         \magnifyStaff #4/7
           \new Voice \partCombine \pianoRHone \pianoRHtwo
         >>
         \new Dynamics {\teeny \dynamicsPiano}
         \new Staff = pianolh \with {
           midiInstrument = "acoustic grand piano"
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
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
         \new Voice \sopranoS
         \addlyrics {\tiny \wordsSopSingle}
       >>
                                % Single alto staff
       \new Staff = alto \with {
         instrumentName = #"Alto"
         shortInstrumentName = #"A"
         midiInstrument = "choir aahs"
       }
       <<
         \new Voice \altoS
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
         \new Voice \tenorS
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
         \new Voice \bassS
         \addlyrics {\tiny \wordsBassSingle}
       >>
       \new PianoStaff = piano <<
         \new Staff = pianorh \with {
           printPartCombineTexts = ##f
           midiInstrument = "acoustic grand piano"
         }
         <<
         \magnifyStaff #4/7
           \new Voice \partCombine \pianoRHone \pianoRHtwo
         >>
         \new Dynamics {\teeny \dynamicsPiano}
         \new Staff = pianolh \with {
           midiInstrument = "acoustic grand piano"
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
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
         \new Voice \sopranoS
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
         \new Voice \altoS
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
         \new Voice \tenorS
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
         \new Voice \bassS
         \addlyrics {\tiny \wordsBassSingle}
       >>
       \new PianoStaff = piano <<
         \new Staff = pianorh \with {
           printPartCombineTexts = ##f
           midiInstrument = "acoustic grand piano"
         }
         <<
         \magnifyStaff #4/7
           \new Voice \partCombine \pianoRHone \pianoRHtwo
         >>
         \new Dynamics {\teeny \dynamicsPiano}
         \new Staff = pianolh \with {
           midiInstrument = "acoustic grand piano"
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
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
         \new Voice \sopranoS
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
         \new Voice \altoS
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
         \new Voice \tenorS
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
         \new Voice \bassS
         \addlyrics \wordsBassSingle
       >>
       \new PianoStaff = piano <<
         \new Staff = pianorh \with {
           printPartCombineTexts = ##f
           midiInstrument = "acoustic grand piano"
         }
         <<
         \magnifyStaff #4/7
           \new Voice \partCombine \pianoRHone \pianoRHtwo
         >>
         \new Dynamics {\teeny \dynamicsPiano}
         \new Staff = pianolh \with {
           midiInstrument = "acoustic grand piano"
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
     \new ChoirStaff <<
                                % Single soprano staff
       \new Staff = soprano \with {
         instrumentName = #"Soprano"
         shortInstrumentName = #"S"
         midiInstrument = "choir aahs"
       }
       <<
         \new Voice \TempoTrack
         \new Voice \sopranoS
         \addlyrics \wordsSopMidi
       >>
                                % Single alto staff
       \new Staff = alto \with {
         instrumentName = #"Alto"
         shortInstrumentName = #"A"
         midiInstrument = "choir aahs"
       }
       <<
         \new Voice \altoS
       >>
                                % Single tenor staff
       \new Staff = tenor \with {
         instrumentName = #"Tenor"
         shortInstrumentName = #"T"
         midiInstrument = "choir aahs"
       }
       <<
         \clef "treble_8"
         \new Voice \tenorS
       >>
                                % Single bass staff
       \new Staff = bass \with {
         instrumentName = #"Bass"
         shortInstrumentName = #"B"
         midiInstrument = "choir aahs"
       }
       <<
         \clef "bass"
         \new Voice \bassS
       >>
       \new PianoStaff = piano <<
         \new Staff = pianorh \with {
           printPartCombineTexts = ##f
           midiInstrument = "acoustic grand piano"
         }
         <<
           \new Voice \partCombine \pianoRHone \pianoRHtwo
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
   \midi {}
 }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
   \unfoldRepeats
%   \articulate
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
         \new Voice \sopranoS
       >>
                                % Single alto staff
       \new Staff = alto \with {
         instrumentName = #"Alto"
         shortInstrumentName = #"A"
         midiInstrument = "choir aahs"
       }
       <<
         \new Voice \altoS
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
         \new Voice \tenorS
       >>
                                % Single bass staff
       \new Staff = bass \with {
         instrumentName = #"Bass"
         shortInstrumentName = #"B"
         midiInstrument = "choir aahs"
       }
       <<
         \clef "bass"
         \new Voice \bassS
       >>
       \new PianoStaff = piano <<
         \new Staff = pianorh \with {
           printPartCombineTexts = ##f
           midiInstrument = "acoustic grand piano"
         }
         <<
           \new Voice \partCombine \pianoRHone \pianoRHtwo
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
   \midi {}
 }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
   \unfoldRepeats
%   \articulate
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
         \new Voice \sopranoS
       >>
                                % Single alto staff
       \new Staff = alto \with {
         instrumentName = #"Alto"
         shortInstrumentName = #"A"
         midiInstrument = "choir aahs"
       }
       <<
         \new Voice \altoS
       >>
                                % Single tenor staff
       \new Staff = tenor \with {
         instrumentName = #"Tenor"
         shortInstrumentName = #"T"
         midiInstrument = "choir aahs"
       }
       <<
         \clef "treble_8"
         \new Voice \tenorS
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
         \new Voice \bassS
       >>
       \new PianoStaff = piano <<
         \new Staff = pianorh \with {
           printPartCombineTexts = ##f
           midiInstrument = "acoustic grand piano"
         }
         <<
           \new Voice \partCombine \pianoRHone \pianoRHtwo
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
   \midi {}
 }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
   \unfoldRepeats
%   \articulate
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
         \new Voice \sopranoS
       >>
                                % Single alto staff
       \new Staff = alto \with {
         instrumentName = #"Alto"
         shortInstrumentName = #"A"
         midiInstrument = "choir aahs"
       }
       <<
         \new Voice \altoS
       >>
                                % Single tenor staff
       \new Staff = tenor \with {
         instrumentName = #"Tenor"
         shortInstrumentName = #"T"
         midiInstrument = "choir aahs"
       }
       <<
         \clef "treble_8"
         \new Voice \tenorS
       >>
                                % Single bass staff
       \new Staff = bass \with {
         instrumentName = #"Bass"
         shortInstrumentName = #"B"
         midiInstrument = "choir aahs"
       }
       <<
         \clef "bass"
         \new Voice \bassS
         \addlyrics \wordsBassMidi
       >>
       \new PianoStaff = piano <<
         \new Staff = pianorh \with {
           printPartCombineTexts = ##f
           midiInstrument = "acoustic grand piano"
         }
         <<
           \new Voice \partCombine \pianoRHone \pianoRHtwo
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
   \midi {}
 }
}
