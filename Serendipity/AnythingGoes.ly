\version "2.20.2"

\include "articulate.ly"
\include "swing.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Anything Goes"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Cole Porter"
  arranger    = "Arr. Teena Chinn"
%  opus        = "opus"

  poet        = "Cole Porter"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key aes \major
  \time 4/4
}

drumPitchNames.cc = #'crashcymbal
#(define mystyle
  '((crashcymbal    cross   #f  5)
    (bassdrum       default #f -1)
    (tomtom         default #f  1)
    (rimofsnaredrum cross   #f  3)
  ))

drumPitchNames.cc = #'crashcymbal
drumPitchNames.tt = #'tomtom
drumPitchNames.bd = #'bassdrum
drumPitchNames.sd = #'rimofsnaredrum

midiDrumPitches.crashcymbal = des
midiDrumPitches.tomtom      = d
midiDrumPitches.bassdrum    = b,,
midiDumPitches.rimofsnaredrum = d,

DrumTrack = \drummode {
  \time 4/4
  cc4->^\markup \upright {Crash cymbal} <bd tt>->^\markup \upright {Tom Tom}_\markup \upright {Bass Drum} cc-> <bd tt>->
  cc4-> <bd tt>-> cc-> <bd tt>->
  cc4-> <bd tt> <bd tt cc>-> <bd tt cc>->
  s1^\markup Fill 
  \repeat unfold 3 {<bd sd>4 <tt sd> <bd sd> <tt sd>} % 5
  tt4 \tripletFeel 8 {tt8 tt} s2^\markup Fill
  \repeat volta 2 {
    \repeat unfold 6 {<bd sd>4 <tt sd> <bd sd> <tt sd>} % 9
  }
  \alternative {
    {
      <bd sd>4 <tt sd> <bd sd> <tt sd>
      tt4 \tripletFeel 8 {tt8 tt} s2^\markup Fill
    }
    {
      tt4 \tripletFeel 8 {tt8 tt} s2^\markup Fill
    }
  }
  tt4-^ r r8 s4.^\markup Fill
  \repeat unfold 6 {<bd sd>4 <tt sd> <bd sd> <tt sd>} % 19
  tt4 r tt tt~
  tt4 s2.^\markup Fill
  \repeat unfold 5 {<bd sd>4 <tt sd> <bd sd> <tt sd>} % 27
  <bd tt sd>4 q s2^\markup Fill
  <bd sd>4 <tt sd> <bd sd> <tt sd>
  tt4-^ \tripletFeel 8 {tt8 tt->~tt tt} s4^\markup Fill
  \repeat volta 2 {
    \time 3/4 \repeat unfold 2 {<bd sd>4 <tt sd> q} \time 4/4
    \repeat unfold 5 {<bd sd>4 <tt sd> <bd sd> <tt sd>}
  }
  \alternative {
    {
      <bd sd>4 <tt sd> <bd sd> <tt sd>
      tt4-^ \tripletFeel 8 {tt8 tt~tt tt} s4^\markup Fill
    }
    {
      tt4-^ \tripletFeel 8 {tt8 tt~tt tt} s4^\markup Fill
    }
  }
  \repeat unfold 5 {tt4-^ r4 r8 tt4.->}
  \repeat unfold 2 {<bd sd>4 <tt sd> <bd sd> <tt sd>} % 50
  tt4 r tt tt~
  tt4 s2.^\markup Fill
  \time 3/4 \repeat unfold 2 {<bd sd>4 <tt sd> q} \time 4/4
  \repeat unfold 6 {<bd sd>4 <tt sd> <bd sd> <bd sd>}
  cc4 <bd tt> cc\fermata <bd tt>\fermata
  <bd cc>4 <tt sd> <bd sd> <tt sd> % 63
  \repeat unfold 6 {<bd sd>4 <tt sd> <bd sd> <tt sd>}
  <bd tt sd>4 r r8 s4.^\markup Fill
  \repeat unfold 4 {<bd sd>4 <tt sd> <bd sd> <tt sd>} % 71
  tt4-^ r4 r8 tt4.-> % 75
  tt4-^ r r tt
  tt4 r tt tt~
  tt4 s2.^\markup Fill
  <bd cc>4 <tt sd> <bd sd> <tt sd> % 79
  \repeat unfold 4 {<bd sd>4 <tt sd> <bd sd> <tt sd>}
  <bd tt sd>4 r s2^\markup Fill
  <bd cc>4 <tt sd> <bd sd> <tt sd>
  s1^\markup Fill
  <bd cc>4 <tt sd> <bd sd> <tt sd> % 87
  tt4-^ tt-> s2^\markup Fill
  <bd tt cc>4 <tt sd> <bd sd> <tt sd>
  s2^\markup Fill <bd tt sd>4-> r
}

TempoTrack = {
  \tempo "Lively, but not too fast." 4=158
  s1*8
  \repeat volta 2 { s1*6 } \alternative { {s1*2} {s1} }
  s1*17
  \repeat volta 2 { \time 3/4 s2.*2 \time 4/4 s1*5 } \alternative { {s1*2} {s1} }
  s1*9
  \time 3/4 s2.*2 \time 4/4 % 7a++
  s1*6
  \set Score.tempoHideNote = ##t
  \tempo 4=120 s2 \tempo 4=60 s2 % 7c+
  \set Score.tempoHideNote = ##f
  \tempo 4=84
  s4 \set Score.tempoHideNote = ##t % 7c++
  \tempo 4=87 s4 \tempo 4=90 s4 \tempo 4=93 s4
  \tempo 4=96 s4 \tempo 4=99 s4 \tempo 4=102 s4 \tempo 4=105 s4
  \tempo 4=108 s4 \tempo 4=111 s4 \tempo 4=114 s4 \tempo 4=117 s4
  \tempo 4=120 s4 \tempo 4=123 s4 \tempo 4=126 s4 \tempo 4=129 s4
  \tempo 4=132 s4 \tempo 4=135 s4 \tempo 4=138 s4 \tempo 4=141 s4
  \tempo 4=143 s4 \tempo 4=146 s4 \tempo 4=149 s4 \tempo 4=152 s4
  \set Score.tempoHideNote = ##f
  \tempo "Tempo I" 4=158 % 8b
  s1*24
}
       
RehearsalTrack = {
  \mark \markup { \box "3a" } s1*4
  \mark \markup { \box "3b" } s1*4
  \repeat volta 2 {
    \set Score.currentBarNumber = #9
    \mark \markup { \box "3c" } s1*4
    \mark \markup { \box "4a" } s1*2
  }
  \alternative {
    { s1*2 }
    { s1   }
  }
  \set Score.currentBarNumber = #18
  \mark \markup { \box "4b" } s1*4
  \mark \markup { \box "4c" } s1*4
  \mark \markup { \box "5a" } s1*4
  \mark \markup { \box "5b" } s1*5
  \repeat volta 2 {
    \time 3/4
    \set Score.currentBarNumber = #35
    \mark \markup { \box "5c" } s2.*2 \time 4/4 s1*2
    \mark \markup { \box "6a" } s1*3
  }
  \alternative {
    { s1*2 }
    { \mark \markup { \box "6b" } s1 }
  }
  \set Score.currentBarNumber = #45
  s1*3
  \mark \markup { \box "6c" } s1*4
  \mark \markup { \box "7a" } s1*2 \time 3/4 s2.*2 \time 4/4 s1
  \mark \markup { \box "7b" } s1*4
  \mark \markup { \box "7c" } s1*4
  \mark \markup { \box "8a" } s1*4
  \mark \markup { \box "8b" } s1*4
  \mark \markup { \box "8c" } s1*4
  \mark \markup { \box "9a" } s1*5
  \mark \markup { \box "9b" } s1*5
  \mark \markup { \box "9c" } s1*6
}

ChordTrack = \chordmode {
  aes2 f:m/g
  f2:m aes/ees
  des2:maj7
  aes4/c bes:m7
  s4 aes/g f:m aes/ees
  bes1:m/des % 3b
  ees2:9 bes4:m7 des/ees
  aes2 f:m7
  bes4.:m7 ees:7 r4  
  \repeat volta 2 {
    aes1 % 3c
    s1
    s1
    s2 aes:7/c
    des2 bes:m7 % 4a
    des1/ees
  }
  \alternative {
    {
      aes2 f:m7
      bes4.:m7 ees:7 r4
    }
    {
      aes1
    }
  }
  g1:7 % 4b
  c1
  g1:7/d
  c1:m/ees
  g1:7/d % 4c
  c2:m c:m %%% FIX
  c2:m7 f:9
  f:m9 f4:m ees:7
  s1 % 5a
  aes1
  s1
  s1
  s2. aes4:7/c % 5b
  des2:6 bes:m7
  des1/ees
  aes1
  f4:6 r2.
  \repeat volta 2 {
    \time 3/4 bes2. % 5c
    bes2./a \time 4/4
    g2:m7 bes/f
    bes1
    s2 bes:7/d % 6a
    ees1:6
    c2:m7 c:m7/f
  }
  \alternative {
    {
      bes2 g:m7
      c4:7 r2. %%% FIX
    }
    {
      bes1 % 6b
    }
  }
  a1:7
  d1
  a1:7/e
  d1:m/f % 6c
  a1:7/e
  d2:m d:m/a %%% FIX
  d2:m7 g:9
  c2.:m9 f4:7 % 7a
  s1
  \time 3/4 bes2.
  bes2./a \time 4/4
  g2:m7 bes/f
  bes1 % 7b
  s2 bes:7/d
  ees1:6
  c1:m7 %%% FIX
  bes2 bes/a % 7c
  g1
  c1
  s1
  s2 c:maj7/g % 8a
  a2:m/c e4:m7/d c:7/e %%% FIX
  f1:6
  d2:m7 d:m7 %%% FIX
  c1 % 8b
  b1
  e1
  b1:7/fis
  e1:m/g % 8c
  b1:7/fis
  e1:m
  s2. e4:m7
  b2:m9 a4:m g:7 % 9a
  c1
  s1
  s2. e4:m7/b %%% FIX
  a2:m c:7/g % 9b
  d1:m
  d1:m7
  c1
  a2:m c4:9/g c:7
  d1:m % 9c
  f1/g
  c1
  s1
  s1
  s1
}

sopA = \relative {
  R1*7
  r2 r4 ees'^\markup \italic {1st verse only}
}

sopB = \relative {
    ees'4 f c ees % 3c
    f4 \tripletFeel 8 {ees8 f~} \tripletFeel 8 {f ees} c4
    ees8 f4 c8 ees4 \tripletFeel 8 {ees8 aes~}
    \tripletFeel 8 {aes8 f} aes4 bes c
    bes1 % 4a
    r2 aes8 aes aes4
}

sopBb = \relative {
  r1*6 % 3c
}

sopC = \relative {
      aes'1
      r2. ees4
}

sopCb = \relative {
      aes'1
      r1
}

sopD = \relative {
      aes'1
    }

sopDb = {
  r1
}
sopE = \relative {
  r4 \tripletFeel 8 {g'8 g~} \tripletFeel 8 {g g} g4 % 4b
  g4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4
  a4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4
  bes4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4
  b4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4 % 4c
  c4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g fis} \tripletFeel 8 {g fis}
  g4 \tripletFeel 8 {c,8 c~ c b} c4
  \tripletFeel 8 {c8 c} b4 c ees~
  ees2 r4 ees % 5a
  ees4 f c ees
  f4 \tripletFeel 8 {ees8 f~f ees} c4
  ees8 f4 c8 ees4 \tripletFeel 8 {f8 aes~
                                  aes f} aes4 bes c % 5b
  bes1
  r2 \tripletFeel 8 {bes 8 aes} f4
  aes1
  r2 r4 f \key bes \major
}

sopF = \relative {
    \time 3/4
    f'2 g4 % 5c
    d2 f4 \time 4/4
    g4 \tripletFeel 8 {f8 g~g f} d4
    f8 g4 d8 f4 \tripletFeel 8 { g8 bes~
                                   bes g} bes4 c d % 6a
    c1
    r2 \tripletFeel 8 {bes8 bes} bes4
}

sopG = \relative {
      bes'1
      r2 r4 f
}

sopH = \relative {
      bes'1 % 6b
}

sopI = \relative {
  \tripletFeel 8 {r4 a'8 a~a a a4}
  \tripletFeel 8 {a4 a8 a~a a a4}
  \tripletFeel 8 {b4 a8 a~a a a4}
  \tripletFeel 8 {c4 a8 a~a a a4} % 6c
  \tripletFeel 8 {cis4 a8 a~a a a4}
  \tripletFeel 8 {d4 a8 a~a gis a gis}
  \tripletFeel 8 {a4 d,8 d~d cis d4}
  \tripletFeel 8 {d8 d cis4 d f~} % 7a
  f2 r4 f \time 3/4
  f2 g4
  d2 f4 \time 4/4
  \tripletFeel 8 {g4 f8 g~g f d4}
  f8 g4 d8 f4 \tripletFeel 8 {g8 bes~ % 7b
                              bes g bes4 c d}
  c1
  r2 \tripletFeel 8 {des8 c c4}
  bes1( % 7c
  b2) \breathe g\fermata \bar "||" \key c \major
  g4 a e g
  \tripletFeel 8 {a4 g8 a~a g e4}
  \tripletFeel 8 {g8 a4 e8 g4 a8 c~ % 8a
                  c8 a c4 d e}
  d1
  r2 \tripletFeel 8 {c8 c c4}
  c1 % 8b
  r4 \tripletFeel 8 {b8 b~b b b4}
  \tripletFeel 8 {b4 b8 b~b b b4}
  \tripletFeel 8 {cis4 b8 b~b b b4}
  \tripletFeel 8 {d4 b8 b~b b b4} % 8c
  \tripletFeel 8 {dis4 b8 b~b b b4}
  \tripletFeel 8 {e4 b8 b~b ais b ais}
  \tripletFeel 8 {b4 e,8 e~e dis e4}
  \tripletFeel 8 {e8 e dis4 e g~} % 9a
  g2 r4 g
  g4 a e g
  \tripletFeel 8 {a4 g8 a~a g e4}
  \tripletFeel 8 {g8 a4 e8 g4 a8 c~
                  c8 a c4 d e} % 9b
  d1
  r2 \tripletFeel 8 {e8 d c4}
  c1~
  c4 c d e
  d1 % 9c
  r2 \tripletFeel 8 {<c f>8 q q4}
  <e g>1~
  q1~
  q1~
  q2. r4
}

soprano = \relative c' {
  \global
  \sopA
  \repeat volta 2 {
    \sopB
  }
  \alternative { {\sopC} {\sopD} }
  \sopE
  \repeat volta 2 {
    \sopF
  }
  \alternative { {\sopG} {\sopH} }
  \sopI
  \bar "\."
}
       
wordsAll = \lyricmode {
  \set stanza = "1. (Women only)"
  In old- en days a glimpse of stock- ing
  was looked on as some- thing shock- ing,
  now heav- en knows,
  an- y- thing goes.
  \set stanza = "2. (Men)" Good _

  The world has gone mad to- day __
  and good's bad to- day, __
  and black's white to- day, __
  and day's night to- day, __
  when most guys to- day __
  that wom- en prize to- day __
  are just sil- ly gi- go- los; __

  So though I'm not a great ro- manc- er,
  I know that you're bound to an- swer when I pro- pose,
  an- y- thing goes.

  In old- en days a glimpse of stock- ing
  was looked on as some- thing shock- ing,
  now heav- en knows,
  an- y- thing goes.
  
  Good    goes.
  
  The world has gone mad to- day __
  and good's bad to- day, __
  and black's white to- day, __
  and day's night to- day, __
  when most guys to- day __
  that wom- en prize to- day __
  are just sil- ly gi- go- los; __

  So though I'm not a great ro- manc- er,
  I know that you're bound to an- swer when I pro- pose,
  an- y- thing goes.

  In old- en days a glimpse of stock- ing
  was looked on as some- thing shock- ing,
  now heav- en knows,
  an- y- thing goes.
  
  The world has gone mad to- day __
  and good's bad to- day, __
  and black's white to- day, __
  and day's night to- day, __
  when most guys to- day __
  that wom- en prize to- day __
  are just sil- ly gi- go- los; __

  So though I'm not a great ro- manc- er,
  I know that you're bound to an- swer when I pro- pose,
  an- y- thing goes.

  Now heav- en knows,
  an- y- thing goes.
}

wordsAllTwo = \lyricmode {
  \set stanza = "2. (Men only)"
  Good auth- ors, too, who once knew bet- ter words
  now on- ly use four- let- ter words
  writ- ing prose,
  an- y- thing _ _ goes

  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _
  Good auth- ors, too, who once knew bet- ter words
  now on- ly use four- let- ter words
  writ- ing prose,
  an- y- thing _ _ goes
}

wordsSingleWomen = \lyricmode {
  \set stanza = "1. (Women only)"
  In old- en days a glimpse of stock- ing
  was looked on as some- thing shock- ing,
  now heav- en knows,
  an- y- thing goes.

  The world has gone mad to- day __
  and good's bad to- day, __
  and black's white to- day, __
  and day's night to- day, __
  when most guys to- day __
  that wom- en prize to- day __
  are just sil- ly gi- go- los; __

  So though I'm not a great ro- manc- er,
  I know that you're bound to an- swer when I pro- pose,
  an- y- thing goes.

  In old- en days a glimpse of stock- ing
  was looked on as some- thing shock- ing,
  now heav- en knows,
  an- y- thing goes.
  
  Good auth- ors, too, who once knew bet- ter words
  now on- ly use four- let- ter words
  writ- ing prose,
  an- y- thing goes
  
  The world has gone mad to- day __
  and good's bad to- day, __
  and black's white to- day, __
  and day's night to- day, __
  when most guys to- day __
  that wom- en prize to- day __
  are just sil- ly gi- go- los; __

  So though I'm not a great ro- manc- er,
  I know that you're bound to an- swer when I pro- pose,
  an- y- thing goes.

  In old- en days a glimpse of stock- ing
  was looked on as some- thing shock- ing,
  now heav- en knows,
  an- y- thing goes.
  
  The world has gone mad to- day __
  and good's bad to- day, __
  and black's white to- day, __
  and day's night to- day, __
  when most guys to- day __
  that wom- en prize to- day __
  are just sil- ly gi- go- los; __

  So though I'm not a great ro- manc- er,
  I know that you're bound to an- swer when I pro- pose,
  an- y- thing goes.

  Now heav- en knows,
  an- y- thing goes.
}

wordsSingleWomen = \lyricmode {
  \set stanza = "1. (Women only)"
  "\nIn " old "en " "days " "a " "glimpse " "of " stock "ing "
  "\nwas " "looked " "on " "as " some "thing " shock "ing, "
  "\nnow " heav "en " "knows, "
  "\nan" y "thing " "goes. "

  "\nThe " "world " "has " "gone " "mad " to "day " 
  "\nand " "good's " "bad " to "day, " 
  "\nand " "black's " "white " to "day, " 
  "\nand " "day's " "night " to "day, " 
  "\nwhen " "most " "guys " to "day " 
  "\nthat " wom "en " "prize " to "day " 
  "\nare " "just " sil "ly " gi go "los; " 

  "\nSo " "though " "I'm " "not " "a " "great " ro manc "er, "
  "\nI " "know " "that " "you're " "bound " "to " an "swer " "when " "I " pro "pose, "
  "\nan" y "thing " "goes. "

  "\nIn " old "en " "days " "a " "glimpse " "of " stock "ing "
  "\nwas " "looked " "on " "as " some "thing " shock "ing, "
  "\nnow " heav "en " "knows, "
  "\nan" y "thing " "goes. "
  
  "\nGood " auth "ors, " "too, " "who " "once " "knew " bet "ter " "words "
  "\nnow " on "ly " "use " "four-" let "ter " "words "
  "\nwrit" "ing " "prose, "
  "\nan" y "thing " "goes "
  
  "\nThe " "world " "has " "gone " "mad " to "day " 
  "\nand " "good's " "bad " to "day, " 
  "\nand " "black's " "white " to "day, " 
  "\nand " "day's " "night " to "day, " 
  "\nwhen " "most " "guys " to "day " 
  "\nthat " wom "en " "prize " to "day " 
  "\nare " "just " sil "ly " gi go "los; " 

  "\nSo " "though " "I'm " "not " "a " "great " ro manc "er, "
  "\nI " "know " "that " "you're " "bound " "to " an "swer " "when " "I " pro "pose, "
  "\nan" y "thing " "goes. "

  "\nIn " old "en " "days " "a " "glimpse " "of " stock "ing "
  "\nwas " "looked " "on " "as " some "thing " shock "ing, "
  "\nnow " heav "en " "knows, "
  "\nan" y "thing " "goes. "
  
  "\nThe " "world " "has " "gone " "mad " to "day " 
  "\nand " "good's " "bad " to "day, " 
  "\nand " "black's " "white " to "day, " 
  "\nand " "day's " "night " to "day, " 
  "\nwhen " "most " "guys " to "day " 
  "\nthat " wom "en " "prize " to "day " 
  "\nare " "just " sil "ly " gi go "los; " 

  "\nSo " "though " "I'm " "not " "a " "great " ro manc "er, "
  "\nI " "know " "that " "you're " "bound " "to " an "swer " "when " "I " pro "pose, "
  "\nan" y "thing " "goes. "

  "\nNow " heav "en " "knows, "
  "\nan" y "thing " "goes. "
}

wordsSingleMen = \lyricmode {
  \set stanza = "2. (Men)"
  Good auth- ors, too, who once knew bet- ter words
  now on- ly use four- let- ter words
  writ- ing prose,
  an- y- thing goes

  The world has gone mad to- day __
  and good's bad to- day, __
  and black's white to- day, __
  and day's night to- day, __
  wom- en prize just
  sil- ly gi- go- los; __

  So though I'm not a great ro- manc- er,
  I know that you're bound to an- swer when I pro- pose,
  an- y- thing goes.

  Oo a
  glimpse of stock- ing
  was looked on as some- thing shock- ing,
  now heav- en knows,
  an- y- thing goes.
  
  too who once knew bet- ter words
  now on- ly use four- let- ter words
  writ- ing prose,
  an- y- thing goes
  
  The world has gone mad to- day __
  and good's bad to- day, __
  and black's white to- day, __
  and day's night to- day, __
  wom- en prize
  just sil- ly gi- go- los; __

  I'm  a great ro- manc- er,
  I know that you're bound to an- swer when I pro- pose,
  an- y- thing goes.

  In old- en days a glimpse of stock- ing
  was looked on as some- thing shock- ing,
  now heav- en knows,
  an- y- thing goes.
  
  The world has gone mad to- day __
  and good's bad to- day, __
  and black's white to- day, __
  and day's night to- day, __
  when most guys to- day __
  that wom- en prize to- day __
  are just sil- ly gi- go- los; __

  So though I'm not a great ro- manc- er,
  I know that you're bound to an- swer when I pro- pose,
  an- y- thing goes.

  Now heav- en knows,
  an- y- thing goes.
}

wordsSingleMen = \lyricmode {
  \set stanza = "2. (Men)"
  "\nGood " auth "ors, " "too, " "who " "once " "knew " bet "ter " "words "
  "\nnow " on "ly " "use " "four-" let "ter " "words "
  "\nwrit" "ing " "prose, "
  "\nan" y "thing " "goes "

  "\nThe " "world " "has " "gone " "mad " to "day " 
  "\nand " "good's " "bad " to "day, " 
  "\nand " "black's " "white " to "day, " 
  "\nand " "day's " "night " to "day, " 
  "\nwom" "en " "prize " "just "
  "\nsil" "ly " gi go "los; " 

  "\nSo " "though " "I'm " "not " "a " "great " ro manc "er, "
  "\nI " "know " "that " "you're " "bound " "to " an "swer " "when " "I " pro "pose, "
  "\nan" y "thing " "goes. "

  "\nOo " "a "
  "\nglimpse " "of " stock "ing "
  "\nwas " "looked " "on " "as " some "thing " shock "ing, "
  "\nnow " heav "en " "knows, "
  "\nan" y "thing " "goes. "
  
  "\ntoo " "who " "once " "knew " bet "ter " "words "
  "\nnow " on "ly " "use " "four-" let "ter " "words "
  "\nwrit" "ing " "prose, "
  "\nan" y "thing " "goes "
  
  "\nThe " "world " "has " "gone " "mad " to "day " 
  "\nand " "good's " "bad " to "day, " 
  "\nand " "black's " "white " to "day, " 
  "\nand " "day's " "night " to "day, " 
  "\nwom" "en " "prize "
  "\njust " sil "ly " gi go "los; " 

  "\nI'm "  "a " "great " ro manc "er, "
  "\nI " "know " "that " "you're " "bound " "to " an "swer " "when " "I " pro "pose, "
  "\nan" y "thing " "goes. "

  "\nIn " old "en " "days " "a " "glimpse " "of " stock "ing "
  "\nwas " "looked " "on " "as " some "thing " shock "ing, "
  "\nnow " heav "en " "knows, "
  "\nan" y "thing " "goes. "
  
  "\nThe " "world " "has " "gone " "mad " to "day " 
  "\nand " "good's " "bad " to "day, " 
  "\nand " "black's " "white " to "day, " 
  "\nand " "day's " "night " to "day, " 
  "\nwhen " "most " "guys " to "day " 
  "\nthat " wom "en " "prize " to "day " 
  "\nare " "just " sil "ly " gi go "los; " 

  "\nSo " "though " "I'm " "not " "a " "great " ro manc "er, "
  "\nI " "know " "that " "you're " "bound " "to " an "swer " "when " "I " pro "pose, "
  "\nan" y "thing " "goes. "

  "\nNow " heav "en " "knows, "
  "\nan" y "thing " "goes. "
}

altoA = \relative {
  R1*7
  r2 r4 ees'
}

altoB = \relative {
  ees'4 f c ees
  f4 \tripletFeel 8 {ees8 f~} \tripletFeel 8 {f ees} c4
  ees8 f4 c8 ees4 \tripletFeel 8 {ees8 aes~}
  \tripletFeel 8 {aes8 f} aes4 bes c
  bes1 % 4a
  r2 aes8 aes aes4
}

altoBb = \relative {
  r1*6
}

altoC = \relative {
      aes'1
      r2. ees4
}

altoCb = \relative {
      aes'1
      r1
}

altoD = {
      aes'1
}

altoDb = {
  r1
}

altoE = \relative {
  r4 \tripletFeel 8 {g'8 g~} \tripletFeel 8 {g g} g4 % 4b
  g4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4
  a4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4
  bes4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4
  b4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4 % 4c
  c4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4
  g4 \tripletFeel 8 {c,8 c~ c b} c4
  \tripletFeel 8 {c8 c} b4 c des~
  des2 r4 ees % 5a
  ees4 f c ees
  f4 \tripletFeel 8 {ees8 f~f ees} c4
  des8 f4 c8 ees4 \tripletFeel 8 {f8 aes~
                                  aes f} aes4 ges ges % 5b
  f1
  r2 \tripletFeel 8 {f8 f} f4
  ees1
  r2 r4 f \key bes \major
}

altoF = \relative {
    \time 3/4
    f'2 g4 % 5c
    d2 f4 \time 4/4
    g4 \tripletFeel 8 {f8 g~g f} d4
    f8 g4 d8 f4 \tripletFeel 8 { g8 bes~
                                   bes g} bes4 aes aes % 6a
    g1
    r2 \tripletFeel 8 {g8 g} f4
}

altoG = \relative {
      bes'1
      r2 r4 f
}

altoH = {
      f'1
}

altoI = \relative {
  \tripletFeel 8 {r4 a'8 a~a a a4}
  \tripletFeel 8 {a4 a8 a~a a a4}
  \tripletFeel 8 {b4 a8 a~a a a4}
  \tripletFeel 8 {c4 a8 a~a a a4} % 6c
  \tripletFeel 8 {cis4 a8 a~a a a4}
  \tripletFeel 8 {d4 a8 a~a gis a gis}
  \tripletFeel 8 {a4 d,8 d~d cis d4}
  \tripletFeel 8 {d8 d cis4 d ees~} % 7a
  ees2 r4 f \time 3/4
  f2 g4
  d2 f4 \time 4/4
  \tripletFeel 8 {g4 f8 g~g f d4}
  f8 g4 d8 f4 \tripletFeel 8 {g8 bes~ % 7b
                              bes g bes4 aes aes}
  g1
  r2 \tripletFeel 8 {ges8 ges ges4}
  f1( % 7c
  g2) \breathe g\fermata \bar "||" \key c \major
  g4 a e g
  \tripletFeel 8 {a4 g8 a~a g e4}
  \tripletFeel 8 {g8 a4 e8 e4 e8 a~ % 8a
                  a8 a a4 g g}
  f1
  r2 \tripletFeel 8 {f8 f f4}
  e1 % 8b
  r4 \tripletFeel 8 {b'8 b~b b fis4}
  \tripletFeel 8 {gis4 gis8 gis~gis gis gis4}
  \tripletFeel 8 {fis4 fis8 fis~fis fis fis4}
  \tripletFeel 8 {gis4 gis8 gis~gis gis gis4} % 8c
  \tripletFeel 8 {fis4 fis8 fis~fis fis fis4}
  \tripletFeel 8 {g4 b8 b~b ais b ais}
  \tripletFeel 8 {b4 e,8 d~d cis d4}
  \tripletFeel 8 {c8 c dis4 e f~} % 9a
  f2 r4 g
  g4 a e g
  \tripletFeel 8 {a4 g8 a~a g e4}
  \tripletFeel 8 {g8 a4 e8 e4 e8 a~
                  a8 a a4 g g} % 9b
  f1
  r2 \tripletFeel 8 {f8 f f4}
  e1~
  e4 a g g
  f1 % 9c
  r2 \tripletFeel 8 {a8 a a4}
  c1~
  c1~
  c1~
  c2. r4
  \bar "|."
}

alto = { \global \altoA
         \repeat volta 2 { \altoB } \alternative { {\altoC} {\altoD} }
         \altoE
         \repeat volta 2 { \altoF } \alternative { {\altoG} {\altoH} }
         \altoI
       }

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s1*7
  s2. s4\mf
  \repeat volta 2 {
    s1*6
  }
  \alternative {
    {
      s1*2
    }
    {
      s1
    }
  }
  s1*17
  \repeat volta 2 {
    \time 3/4 s2.*2 \time 4/4
    s1*5
  }
  \alternative {
    {
      s1*2
    }
    {
      s1
    }
  }
  s1*9
  \time 3/4 s2.*2 \time 4/4
  s1*5
  s1\cresc % 8c
  s1-\markup \italic {molto rit}
  s4\f s2.-\markup \italic {accel. poco a poco}
  s1*5
  s1
  s1*23
}

tenorAa = \relative {
  R1*8
}

tenorA = \relative {
  R1*7
  r2 r4 ees^\markup \italic {2nd verse only}
}

tenorBa = \relative {
  r1*6
}

tenorB = \relative {
    ees4 f c ees
    f4 \tripletFeel 8 {ees8 f~} \tripletFeel 8 {f ees} c4
    ees8 f4 c8 ees4 \tripletFeel 8 {ees8 aes~}
    \tripletFeel 8 {aes8 f} aes4 bes c
    bes1 % 4a
    r2 aes8 aes aes4
}

tenorCa = \relative {
  r1
  r2. ees4
}

tenorC = \relative {
      aes'1
      r2. ees4
}

tenorD = {
      aes1
}

tenorE = \relative {
  r4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4 % 4b
  g4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4
  a4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4
  bes4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4
  b4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g r} r4 % 4c
  c2 b
  bes2 a
  \tripletFeel 8 {aes8 aes} g4 aes bes~
  bes2 r4 ees, % 5a
  ees4 f c ees
  f4 \tripletFeel 8 {ees8 f~f ees} c4
  ees8 f4 c8 ees4 \tripletFeel 8 {f8 aes~
                                  aes f} aes4 ees' ees % 5b
  des1
  r2 \tripletFeel 8 {des8 des} des4
  c1
  r1 \key bes \major
}

tenorF = \relative {
    \time 3/4
    bes2. % 5c
    a2. \time 4/4
    g4 \tripletFeel 8 {f8 g~g f} d4
    f8 g4 d8 f4 \tripletFeel 8 {g8 bes~
                                bes g} a4 f' f % 6a
    ees1
    r2 \tripletFeel 8 {ees8 ees ees4}
}

tenorG = {
      d1
      r1
}

tenorH = {
      bes1 % 6b
}

tenorI = \relative {
  r4 \tripletFeel 8 {a8 a~a a} a4
  \tripletFeel 8 {a4 a8 a~a a a4}
  \tripletFeel 8 {b4 a8 a~a a a4}
  \tripletFeel 8 {c4 a8 a~a a a4} % 6c
  \tripletFeel 8 {cis a8 a~a r r4}
  d2 cis
  c2 b
  \tripletFeel 8 {bes8 bes} a4 bes c~ % 7a
  c2 r \time 3/4
  bes2.
  a2. \time 4/4
  \tripletFeel 8 {g4 f8 g~g f d4}
  f8 g4 d8 f4 \tripletFeel 8 {g8 bes~ % 7b
                              bes8 g} bes4 f' f
  ees1
  r2 \tripletFeel 8 {ees8 ees ees4}
  d1~ % 7c
  d2 \breathe g,2\fermata \bar "||" \key c \major
  g4 a e g
  \tripletFeel 8 {a4 g8 a~a g g4}
  c8 c4 c8 d4 \tripletFeel 8 {d8 e~ % 8a
                              e8 e e4 e c}
  d1
  r2 \tripletFeel 8 {d8 d d4}
  c1 % 8b
  r4 \tripletFeel 8 {b8 b~b b dis4}
  \tripletFeel 8 {e4 e8 e~e e e4}
  \tripletFeel 8 {dis4 8 8~8 8 4}
  \tripletFeel 8 {e4 e8 e~e e e4} % 8c
  \tripletFeel 8 {dis4 8 8~8 8 4}
  \tripletFeel 8 {e4 b8 b~b aes b aes}
  b4 \tripletFeel 8 {b8 b~b ais b4}
  \tripletFeel 8 {a8 a} c4 c d~ % 9a
  d2 r4 g,
  g4 a e g
  \tripletFeel 8 {a4 g8 a~a g g4}
  \tripletFeel 8 {c8 c4 c8 d4 d8 e~
                  e8 e} e4 e c % 9b
  d1
  r2 \tripletFeel 8 {c8 c} c4
  c1(
  c4) e e c
  d1 % 9c
  r2 \tripletFeel 8 {f8 f} f4
  g1~
  g1~
  g1~
  g2. r4
}

tenor = \relative c {
  \global
  \voiceOne
  \tenorA
  \repeat volta 2 {\tenorB} \alternative { {\tenorC} {\tenorD} }
  \tenorE
  \repeat volta 2 {\tenorF} \alternative { {\tenorG} {\tenorH} }
  \tenorI
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
}

bassAa = \relative {
  R1*8
}

bassA = \relative {
  R1*7
  r2 r4 ees
}

bassBa = \relative {
  r1*6
}

bassB = \relative {
    ees4 f c ees
    f4 \tripletFeel 8 {ees8 f~} \tripletFeel 8 {f ees} c4
    ees8 f4 c8 ees4 \tripletFeel 8 {ees8 aes~}
    \tripletFeel 8 {aes8 f} aes4 bes c
    bes1 % 4a
    r2 aes8 aes aes4
}

bassCa = \relative {
  r1
  r2. ees4
}

bassC = \relative {
      aes1
      r2. ees4
}

bassD = {
      aes1
}

bassE = \relative {
  r4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4 % 4b
  g4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4
  a4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4
  bes4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g g} g4
  b4 \tripletFeel 8 {g8 g~} \tripletFeel 8 {g r} r4 % 4c
  c2 b
  bes2 a
  \tripletFeel 8 {aes8 aes} g4 aes g~
  g2 r4 ees % 5a
  ees4 f c ees
  f4 \tripletFeel 8 {ees8 f~f ees} c4
  ees8 f4 c8 ees4 \tripletFeel 8 {f8 aes~
                                  aes f} aes4 aes aes % 5b
  aes1
  r2 \tripletFeel 8 {aes8 aes} aes4
  aes1
  r1 \key bes \major
}

bassF = \relative {
    \time 3/4
    bes2. % 5c
    a2. \time 4/4
    g4 \tripletFeel 8 {f8 g~g f} d4
    f8 g4 d8 f4 \tripletFeel 8 {g8 bes~
                                bes g} bes4 bes bes % 6a
    bes1
    r2 \tripletFeel 8 {c8 c c4}
}

bassG = {
      bes1
      r1
}

bassH = {
      bes1 % 6b
}

bassI = \relative {
  r4 \tripletFeel 8 {a8 a~a a} a4
  \tripletFeel 8 {a4 a8 a~a a a4}
  \tripletFeel 8 {b4 a8 a~a a a4}
  \tripletFeel 8 {c4 a8 a~a a a4} % 6c
  \tripletFeel 8 {cis a8 a~a r r4}
  d2 cis
  c2 b
  \tripletFeel 8 {bes8 bes} a4 bes a~ % 7a
  a2 r \time 3/4
  bes2.
  a2. \time 4/4
  \tripletFeel 8 {g4 f8 g~g f d4}
  f8 g4 d8 f4 \tripletFeel 8 {g8 bes~ % 7b
                              bes8 g} bes4 bes bes
  bes1
  r2 \tripletFeel 8 {c8 c c4}
  bes1( % 7c
  b2) \breathe g2\fermata \bar "||" \key c \major
  g4 a e g
  \tripletFeel 8 {a4 g8 a~a g g4}
  c8 c4 c8 b4 \tripletFeel 8 {b8 a~ % 8a
                              a8 a a4 bes bes}
  a1
  r2 \tripletFeel 8 {bes8 bes bes4}
  g1 % 8b
  r4 \tripletFeel 8 {b8 b~b b b4}
  \tripletFeel 8 {b4 b8 b~b b b4}
  \tripletFeel 8 {a4 a8 a~a a a4}
  \tripletFeel 8 {b4 b8 b~b b b4} % 8c
  \tripletFeel 8 {a4 a8 a~a a a4}
  \tripletFeel 8 {b4 b8 b~b aes b aes}
  b4 \tripletFeel 8 {g8 g~g fis g4}
  \tripletFeel 8 {f8 f} a4 a b~ % 9a
  b2 r4 g
  g4 a e g
  \tripletFeel 8 {a4 g8 a~a g g4}
  \tripletFeel 8 {c8 c4 c8 b4 b8 a~
                  a8 a} a4 bes bes % 9b
  a1
  r2 \tripletFeel 8 {a8 a} a4
  g1(
  a4) a bes bes
  a1 % 9c
  r2 \tripletFeel 8 {c8 c} c4
  c1~
  c1~
  c1~
  c2. r4
}

bass= \relative c {
  \global
  \voiceTwo
  \bassA
  \repeat volta 2 { \bassB } \alternative { {\bassC} {\bassD} }
  \bassE
  \repeat volta 2 { \bassF } \alternative { {\bassG} {\bassH} }
  \bassI
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
}

wordsBass = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  wom- en prize just sil- ly gi- go- los;
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  wom- en prize just sil- ly gi- go- los; __
  I'm a great ro- manc- er,
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

pianoRH = \relative c' {
  \global
  <aes c ees>2-> <aes c f>->
  <f aes c>2-> <aes c ees>->
  <aes c ees>2-> <aes c ees>4-> <aes des f>-> ~
  q4 <aes c ees> <aes c f> <c ees aes>
  s1 % 3b
  s2 \tripletFeel 8 {<des f aes>8 q} q4
  s1
  <aes des f>4 \tripletFeel 8 {q8 <g des' ees>} r4 ees'
  \repeat volta 2 {
    r4 <aes, c ees> r q % 3c
    r4 <aes c ees> r q
    r4 <aes c ees> r q
    r4 <aes c ees> r <aes ees' ges>
    r4 <aes des f> r q % 4a
    r4 q r <des f aes>
  }
  \alternative {
    {
      r4 <c ees aes> r q
      <aes des f>4 \tripletFeel 8 {q8 <g des' ees>} r4 ees'
    }
    {
      r4 <c ees aes> r q
    }
  }
  <b d f g>4-^ r r8 q4.-> % 4b
  r4 <c e g> r q
  r4 <b f' g> r q
  r4 <c ees g> r q
  r4 <b f g> r q % 4c
  r4 <c ees g> r <b ees g>
  r4 <bes ees g> r <a ees' g>
  <aes ees' g>4 r <aes c> <g des' ees>~
  q4 q r q % 5a
  r4 <aes c ees> r q
  r4 q r q
  r4 q r q
  r4 q r <aes ees' ges> % 5b
  r4 <aes bes des f> r <des f aes>
  q4 q r2
  r4 <c ees aes> r q
  <c ees a>4-^ \tripletFeel 8 {f8 f~f f} f4-^ \key bes \major
  \repeat volta 2 {
    \time 3/4
    r4 <bes, d f> q % 5c
    r4 q q \time 4/4
    r4 q r q
    r4 q r q
    r4 q r <bes f aes> % 6a
    r4 <bes c ees g> r q
    r4 q r q
  }
  \alternative {
    {
      r4 <bes d f> r q
      <bes ees f>4-^ \tripletFeel 8 {f'8 f->~f f f4-^}
    }
    {
      r4 <bes, ees f> r <d f bes> % 6b
    }
  }
  <cis g' a>4-^ r r8 q4.->
  <d fis a>4-^ r r8 q4.->
  <cis g' a>4-^ r r8 q4.->
  <d f a>4-^ r r8 q4.-> % 6c
  <cis g' a>4-^ r r8 q4.
  r4 <d f a> r <cis f a>
  r4 <c  a> r <bes f' a>
  <g bes d>4 r q <a ees' f>~ % 7a
  q4 q r q
  \time 3/4 r4 <bes d f> q
  r4 q q \time 4/4
  r4 q r q
  r4 q r q % 7b
  r4 q r <bes f' aes>
  r4 <bes c ees g> r q
  r4 <bes ees ges> r q
  r4 <bes d f> r <d f bes> % 7c
  <d g b>2-> <b d g>->\fermata \bar "||" \key c \major
  r4 <c e g> r q
  r4 q r q
  r4 q r <b e g> % 8a
  r4 <c e a> <bes e g> <bes c g'>
  r4 <c d f a> r q
  r4 q r <c d f aes>
  r4 <c e g> r q % 8b
  <b dis fis>4-^ r r8 <dis f b>4.->
  r4 <e gis b> r q
  r4 <dis a b> r q
  r4 <e g b> r q % 8c
  r4 <dis a' b> r q
  <g b e>4-^ r r8 <e g b>4.->
  q4-^ r r <b d e>
  <a c e>4 r q <b f' g>~ % 9a
  q4 q r q
  r4 <c e g> r q
  r4 q r q
  r4 q r <d e a>
  r4 <c e a> r <bes e g> % 9b
  r4 <d g a> r q
  <f a c>4-^ r r2
  r4 <e g c> r q
  <f a c>4 q <e bes' d> <g bes e>
  r4 <f a d> r q % 9c
  <a c f>4-^ q2-> q4
  r4 <c e g> r q
  r4 q r q
  r4 q r q
  \override Glissando.style = #'zigzag
  q4 \cadenzaOn c'4->^\markup \italic gliss. \glissando \hideNotes c,, \unHideNotes \cadenzaOff r4
  \bar "|."
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
  s1*4
  bes1~ % 3b
  bes2 s
  aes1
% nothing more to see here
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  s1*4
  r4 <des f> r q % 3b
  r4 q4 s2
  r4 <c ees> r q
% or here
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f
  s1*6
  s2\> s4\! s\mf % 3b+++
  \repeat volta 2 {
    s1*6
  }
  \alternative {
    {
      s1*2
    }
    {
      s1
    }
  }
  s1*17
  \repeat volta 2 {
    \time 3/4 s2.*2 \time 4/4
    s1*5
  }
  \alternative {
    {
      s1*2
    }
    {
      s1
    }
  }
  s1*9
  \time 3/4 s2.*2 \time 4/4 % 7a++
  s1*5
  s1\cresc
  s1-\markup \italic {molto rit.}
  s4\f s2.-\markup \italic {accel. poco a poco}
  s1*29
}

pianoLH = \relative c {
  \global
  \oneVoice
  r4 aes2-> g4->~
  g4 f2-> ees4-> ~
  ees4 des-> c-> bes-> ~
  bes4 g' f ees
  des4 r bes' r % 3b
  ees,4 r bes' ees,
  aes4 r f r
  bes4 \tripletFeel 8 {f8 ees} r4 ees'
  \repeat volta 2 {
    aes,4 r g r
    f4 r ees r
    aes4 r ees r
    aes4 r c, r
    des4 r bes r % 4a
    ees4 r ees' r
  }
  \alternative {
    {
      aes,4 r f r
      bes4 \tripletFeel 8 {f8 ees} r4 ees'
    }
    {
      aes,4 r ees aes
    }
  }
  g4-^ r r8 g4.-> % 4b
  c,4 r c r
  d4 r d r
  ees4 r ees r
  d4 r g r % 4c
  c4 r g r
  c4 r f, r
  f4 r f ees~
  \tripletFeel 8 {ees8 ees'} des4 c bes % 5a
  aes4 r g r
  f4 r ees r
  aes4 r ees r
  aes4 r c, r % 5b
  des4 r bes r
  ees4 ees r2
  aes4 r g r
  f4-^ \tripletFeel 8 {f'8 f->~f f f4-^} \key bes \major
  \repeat volta 2 {
    \time 3/4
    bes,2. % 5c
    bes2. \time 4/4
    g4 r f r
    bes4 r f r
    bes4 r d, r % 6a
    ees4 r d r
    c4 r f r
  }
  \alternative {
    {
      bes4 r g r
      \tripletFeel 8 {c4-^ f8 f->~f f f4-^}
    }
    {
      bes,4 r f bes % 6b
      a4-^ r r8 a4.->
      d,4-^ r r8 d4.->
      e4-^ r r8 e4.->
      f4-^ r r8 f4.-> % 6c
      e4-^ r r8 a4.->
      d4 r a r
      d4 r f, d'
      c4 r c, f~ % 7a
      \tripletFeel 8 {f8 f'} ees4 d c
      \time 3/4 bes2.
      a2. \time 4/4
      g4 r f r
      bes4 r f r % 7b
      bes4 r d, r
      ees4 r d r
      c4 r c' r
      bes 4 r a r % 7c
      r4 g->~g g->\fermata \bar "||" \key c \major
      c4 r b r
      a4 r g r
      c4 r g r % 8a
      c4 r d, e
      f4 r e r
      d4 r d' r
      c4 r g c % 8b
      b4-^ r r8 b4.->
      e,4 r e r
      fis4 r fis r
      g4 r g r % 8c
      fis 4 r b r
      e,4-^ r r8 e4.->
      e4-^ r r e
      d4 r a' g~ % 9a
      \tripletFeel 8 {g8 g} f4 e d
      c4 r b' r
      a4 r g r
      c4 r b r
      a4 r g c, % 9b
      d4 r a' r
      d,4-^ r r2
      c4 r b' r
      a4 a g c,
      d4 r a' r % 9c
      g4-^ <g, g'>2 g'4
      c4 r g r
      c4 r g r
      c4 r g r
      c4 r <c, c'>4-> r
    }
  }
%  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \soprano }
            \new Voice = "alto"    { \voiceTwo \alto    }
            \new Lyrics \lyricsto "soprano" \wordsAll
            \new Lyrics \lyricsto "soprano" \wordsAllTwo
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" \tenor
            \new Voice = "bass" \bass
            \new Lyrics \lyricsto "bass" \wordsBass
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
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
          >>
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
        \remove Ledger_line_engraver
        } << \DrumTrack >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \global \sopA \sopB \sopCb \sopBb \sopDb \sopE \sopF \sopG \sopF \sopH \sopI }
            \new Voice = "alto"    { \voiceTwo \global \altoA \altoB \altoCb \altoBb \altoDb \altoE \altoF \altoG \altoF \altoH \altoI }
            \new Lyrics \lyricsto "soprano" \wordsSingleWomen
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \global \voiceOne \tenorAa \tenorBa \tenorCa \tenorB \tenorD \tenorE \tenorF \tenorG \tenorF \tenorH \tenorI }
            \new Voice = "bass" { \global \voiceTwo \bassAa \bassBa \bassCa \bassB \bassD \bassE \bassF \bassG \bassF \bassH \bassI }
            \new Lyrics \lyricsto "bass" \wordsSingleMen
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
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
          >>
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
        \remove Ledger_line_engraver
        } << \DrumTrack >>
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
  \bookOutputSuffix "midi-women"
  \score {
   \unfoldRepeats
%   \articulate
   <<
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \global \sopA \sopB \sopCb \sopBb \sopDb \sopE \sopF \sopG \sopF \sopH \sopI }
            \new Voice = "alto"    { \voiceTwo \global \altoA \altoB \altoCb \altoBb \altoDb \altoE \altoF \altoG \altoF \altoH \altoI }
            \new Lyrics \lyricsto "soprano" \wordsSingleWomen
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \global \voiceOne \tenorAa \tenorBa \tenorCa \tenorB \tenorD \tenorE \tenorF \tenorG \tenorF \tenorH \tenorI }
            \new Voice = "bass" { \global \voiceTwo \bassAa \bassBa \bassCa \bassB \bassD \bassE \bassF \bassG \bassF \bassH \bassI }
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
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
          >>
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
        \remove Ledger_line_engraver
        } << \DrumTrack >>
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
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Dynamics \dynamicsWomen
          \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = "soprano" { \voiceOne \global \sopA \sopB \sopCb \sopBb \sopDb \sopE \sopF \sopG \sopF \sopH \sopI }
            \new Voice = "alto"    { \voiceTwo \global \altoA \altoB \altoCb \altoBb \altoDb \altoE \altoF \altoG \altoF \altoH \altoI }
          >>
                                  % Joint tenor/bass staff
          \new Dynamics \dynamicsMen
          \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
            \clef "bass"
            \new Voice = "tenor" { \global \voiceOne \tenorAa \tenorBa \tenorCa \tenorB \tenorD \tenorE \tenorF \tenorG \tenorF \tenorH \tenorI }
            \new Voice = "bass" { \global \voiceTwo \bassAa \bassBa \bassCa \bassB \bassD \bassE \bassF \bassG \bassF \bassH \bassI }
            \new Lyrics \lyricsto "bass" \wordsSingleMen
          >>
        >>
        <<
          \new ChordNames { \ChordTrack }
%          \new FretBoards { \ChordTrack }
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
          >>
        >>
      >>
      \new DrumStaff \with {
        \override StaffSymbol.line-count = #1
        drumStyleTable = #(alist->hash-table mystyle)
        drumPitchTable = #(alist->hash-table midiDrumPitches)
        \remove Ledger_line_engraver
        } << \DrumTrack >>
    >>
 >>
    \midi {}
  }
}
