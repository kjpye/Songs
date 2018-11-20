\version "2.18.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key e \major
  \time 4/4
  \tempo 4=150
}

boychildharm = \relative c' {
  e4 b' a gis r8 e4 cis8 a4 r8 fis' e4 r8 gis fis gis a4 gis1
}

bellsharm = {
  \skip 1
}

harkharm = \relative c'' {
  gis4 gis a4. a8 fis4 fis gis4. fis8 e4 e fis4. e8 dis2. r8 cis b4 gis' fis r8 e cis4. a8 fis4 r8 cis'8 b4 r8 e dis( e) fis4 e1
%  b4 b cis4. cis8 a4 a b4. a8 gis4 gis a4. gis8 fis2. \skip 8*2 \skip 1*2 dis4 r8 gis fis( gis) a4 gis1
}

momentharm = {
  \time 2/4
  \skip 2
  \time 4/4
  \skip 1*3 \skip 2
  gis4 gis gis8 a b cis~cis cis cis cis~cis4 b8 a gis4 gis fis8 gis a4 % gis2
}

harmony = \relative c' {
  e4 b' a gis8 r8 r8 e4 cis8 a4 r8 e' dis4 r8 gis8 fis4 e dis2.
  r8 e dis4 b' a r8 gis e4 cis8 a r4 r8 e'8 dis4 r8 gis8 fis8(gis) a(gis) gis2 \fermata r2
  \skip 1*8
  \boychildharm
  \bellsharm
  \harkharm
  e4 b' a gis r8 e4 cis8 a4 r8 e' dis4 r8 gis fis( gis) a4 gis1
  \skip 1*3 \skip 2.. e8
  e4 b' a8 gis r4 e8 cis r8 a4 e'8 e e dis4 gis8 fis ~ fis gis4 a8 gis1
  \bellsharm
  \harkharm
  \momentharm gis2
  \key fis \major
  \skip 1*3 \skip 8*7
  fis8 fis4 cis' b ais r8 fis4 dis8 b4 fis'8 fis eis4 ais gis8(ais) b4 ais1
  \transpose e fis \relative c'' {
    \bellsharm
    \harkharm
    \boychildharm
    \momentharm gis2_\fermata
  }
%  \skip 1*7
%  r8 ais ais ais b ais gis fis
}

bells = \relative c' {
  e'4 b gis e
}

boychild = {
  b4^\markup{Tutti} gis' fis e r8 cis4 a8 fis4 r8 cis'8 b4 r8 e8 dis(e) fis4 e1
}

hark = \relative c'' {
  gis4 gis a4. a8 fis4 fis gis4. fis8 e4 e fis4. e8 dis2. r8 cis b4 gis' fis r8 e cis4. a8 fis4 r8 cis'8 b4 r8 e dis( e) fis4 e1
}

moment = {
  \time 2/4
  e4^\markup{Men} e
  \time 4/4
  e8 fis gis a4 e cis8 a4 gis8 a b4. b8 b cis dis e ~ e gis4 fis8 ~ fis e cis b
  e4^\markup{Tutti} e e8 fis gis a ~ a e cis a ~ a4 gis8 a b4 b b8 cis dis4 % e2
}

ohmylord = \relative {
  \repeat volta 4 {
    ais'4 gis8(fis)fis2 ais8 ais4 b8 ais8 gis fis gis ais4 gis8(fis) fis2
    ais8 ais4 b8 ais gis fis ais cis4 b8(gis) gis2
    cis8 cis4 b8 ais b gis ais fis4 ais8 gis fis4 gis8 ais ~
    }
  \alternative {
    {
      <<
	{ais1}
	{s8^\markup{Men} ais ais ais b ais gis fis}
      >>
    }
    {
      <<
	{ais1}
	{s8^\markup{Men} ais ais ais b ais gis fis}
      >>
      ais4^\markup{Tutti} gis8(fis) fis2 \fermata
    }
  }
}

melody = \relative c' {
  b4 gis' fis e8 r8 r8 cis4 a8 fis4 r8 cis' b4 r8 e8 dis4 cis b2.
  r8 cis b4 gis' fis r8 e cis4 a8 fis r4 r8 cis'8 b4 r8 e8 dis8(e) fis(e) e2 \fermata r2
  e4(e e8 fis gis a~a e4 cis8 a4) gis8( a b4 b b8 cis <a b e>4 <gis b e>1)
  r8 b^\markup{Men} b b e4 r8 b cis4 a8 fis4 r8 cis'8 cis b4 cis8 cis8~cis a4 gis8 ~ gis1
  \boychild
  \bells
  \hark
  b4 gis' fis e r8 cis4 a8 fis4 r8 cis' b4 r8 e dis( e) fis4 e1
  r8 b^\markup{Men} b b e4 r8 b cis4 a8 fis4 cis'8 cis cis b4 dis cis8 a4 gis8 ~ gis2.. b8^\markup{Tutti} b4 gis' fis8 e r4 cis8 a r8 fis4 cis'8 cis cis b4 e8 dis ~ dis e4 fis8 e1
  \bells
  \hark
  \moment e2
  \key fis \major
  r8 cis^\markup{Men} cis cis fis4. cis8 dis b4. gis8 r dis' dis cis4 eis8 dis ~ dis b4 ais8 ~ ais2..
  cis8^\markup{Tutti} cis4 ais' gis fis r8 dis4 b8 gis4 dis'8 dis cis4 fis eis8(fis) gis4 fis1
  \transpose e fis \relative {
    \bells
    \hark
    \boychild
    \moment e2^\fermata
  }
}

chordtrack = \chordmode {
  e1
  a1
  e1
  b1
  e1 % 5
  a1
  e2 b2
  e1
  e1
  a1 % 10
  b1
  e1
  e1
  fis1:m
  b1 % 15
  e
  e
  a
  e
  b % 20
  e
  e2 fis:m
  b2 e
  cis1:m
  b % 25
  e
  a
  e2 b
  e1
  e % 30
  a
  e2 b
  e1
  e
  fis:m % 35
  b
  e
  e
  a
  e2 b % 40
  e1
  s1
  e2 fis:m
  b  e
  cis1:m % 45
  b
  e
  a
  e2 b
  e1 % 50
  e2
  s2 a
  s2 b
  s2 e
  b1 % 55
  e
  a
  s2 e
  b2 e
  fis1 % 60
  cis
  fis
  fis
  b
  fis2 cis % 65
  fis1
  fis
  fis2 gis:m
  cis2 e
  e1:m % 70
  cis
  fis
  b
  fis
  cis % 75
  fis
  b
  fis2 cis
  fis1
  fis2 % 80 
  s2 b
  s2 cis
  s2 fis
  cis1
  fis1 % 85
  s2 b
  s2 cis
  s2 fis
  \repeat volta 4 {
    fis1
    fis % 90
    fis
    cis
    cis
    fis
  }
  \alternative {
    {
      fis2 cis % 95
    }
    {
      fis2 cis
      fis1
    }
  }

}

drumtrack = \drummode {
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
  hihat4 hh hh hh
}

maryslyrics =\lyricmode {
%  \set stanza = "1. "
  Ma- ry's boy child, Je- sus Christ, was born on Christ- mas Day.
  And we will live for e- ver more, be- cause of Christ- mas Day.
  _ _
  Long time a- go in Beth- le- hem, so the Ho- ly Bi- ble say
  Ma- ry's boy child, Je- sus Christ, was born on Christ- mas Day.
  _ _ _ _
  Hark now hear, the an- gels sing, a king was born to- day,
  And we will live for ev- er- more, be- cause of Christ- mas Day.
  Ma- ry's boy child Je- sus Christ, was born, on Christ- mas Day.

  While Shep- herds watched their flocks by night, they see a bright new shin- ing star.
  They hear a cho- ir sing a song, the mu- sic seemed to come from a- far.
  _ _ _ _ Hark now hear, the an- gels sing, a king was born to- day.
  And we will live for ev- er- more, be- cause of Christ- mas Day.

  Oh, a mom- ent the world was a- glow, all the bells rang out there were tears of joy and laugh- ter.
  Peo- ple shout- ed let ev- ery- one know, there is hope for all to find peace.
  And then they found, a lit- tle nook, in a sta- ble all for- lorn.
  And in a man- ger cold and dark, Ma- ry's lit- tle boy was born.
  _ _ _ _
  Hark now hear the an- gels sing, a king was born to- day.
  And we will live for ev- er- more, be- cause of Christ- mas Day.
  Ma- ry's boy child, Je- sus Christ, was born, on Christ- mas Day.

  Oh, a mom- ent the world was a- glow, all the bells rang out there were tears of joy and laugh- ter.
  Peo- ple shout- ed let ev- ery- one know, there is hope for all to find peace.
}

firstverse = \lyricmode {
  \set stanza = "1. "
  Oh my Lord, you sent your Son to save us
  Oh my Lord, Your ver- y self you gave us
  Oh my Lord, that sin may not en- slave us
  And love may reign once more. This day will live for- ev- er.
}

secondverse = \lyricmode {
  \set stanza = "2. "
  Oh my Lord, there in the crib they found Him,
  Oh my Lord, A gol- den ha- lo round Him,
  Oh my Lord, they gath- ered all a- round Him
  To see Him and a- dore. This day will live for- e- ver.
}

thirdverse = \lyricmode {
  \set stanza = "3. "
  Oh my Lord, they had be- gun to doubt you,
  Oh my Lord, Truth is they know a- bout you,
  Oh my Lord, but they were lost with- out you,
  They need- ed you so bad. He is the truth for- e- ver.
}

fourthverse = \lyricmode {
  \set stanza = "4. "
  Oh my Lord, you sent your Son to save us
  Oh my Lord, Your ver- y self you gave us
  Oh my Lord, that sin may not en- slave us
  And love may reign once more.
  _ _ _ _ _ _ _ _
  This day will live for- ev- er.
  Oh, my Lord.
}

Mmaryslyrics =\lyricmode {
  "Ma" "ry's " "boy " "child, " "Je" "sus " "Christ, " "was " "born " "on " "Christ" "mas " "Day."
  "/And " "we " "will " "live " "for " "e" "ver " "more, " "be" "cause " "of " "Christ" "mas " "Day."
  "" ""
  "/Long " "time " "a" "go " "in " "Beth" "le" "hem, " "so " "the " "Ho" "ly " "Bi" "ble " "say"
  "/Ma" "ry's " "boy " "child, " "Je" "sus " "Christ, " "was " "born " "on " "Christ" "mas " "Day."
  "" "" "" ""
  "/Hark " "now " "hear, " "the " "an" "gels " "sing, " "a " "king " "was " "born " "to" "day,"
  "/And " "we " "will " "live " "for " "ev" "er" "more, " "be" "cause " "of " "Christ" "mas " "Day."
  "/Ma" "ry's " "boy " "child " "Je" "sus " "Christ, " "was " "born, " "on " "Christ" "mas " "Day."

  "/While " "Shep" "herds " "watched " "their " "flocks " "by " "night, " "they " "see " "a " "bright " "new " "shin" "ing " "star."
  "/They " "hear " "a " "cho" "ir " "sing " "a " "song, " "the " "mu" "sic " "seemed " "to " "come " "from " "a" "far."
  "" "" "" ""
  "/Hark " "now " "hear, " "the " "an" "gels " "sing, " "a " "king " "was " "born " "to" "day."
  "/And " "we " "will " "live " "for " "ev" "er" "more, " "be" "cause " "of " "Christ" "mas " "Day."

  "/Oh, " "a " "mom" "ent " "the " "world " "was " "a" "glow, " "all " "the " "bells " "rang " "out " "there " "were " "tears " "of " "joy " "and " "laugh" "ter."
  "/Peo" "ple " "shout" "ed " "let " "ev" "ery" "one " "know, " "there " "is " "hope " "for " "all " "to " "find " "peace."
  "/And " "then " "they " "found, " "a " "lit" "tle " "nook, " "in " "a " "sta" "ble " "all " "for" "lorn."
  "/And " "in " "a " "man" "ger " "cold " "and " "dark, " "Ma" "ry's " "lit" "tle " "boy " "was " "born."
  "" "" "" ""
  "/Hark " "now " "hear " "the " "an- " "gels " "sing, " "a " "king " "was " "born " "to" "day."
  "/And " "we " "will " "live " "for " "ev" "er" "more, " "be" "cause " "of " "Christ" "mas " "Day."
  "/Ma" "ry's " "boy " "child, " "Je" "sus " "Christ, " "was " "born, " "on " "Christ" "mas " "Day."

  "\Oh, " "a " "mom" "ent " "the " "world " "was " "a" "glow, "
  "/all " "the " "bells " "rang " "out "
  "/there " "were " "tears " "of " "joy " "and " "laugh" "ter."
  "/Peo" "ple " "shout" "ed " "let " "ev" "ery" "one " "know, "
  "/There " "is " "hope " "for " "all " "to " "find " "peace."
}

Mfirstverse = \lyricmode {
  "\Oh " "my " "Lord, " "you " "sent " "your " "Son " "to " "save " "us"
  "/Oh " "my " "Lord, " "Your " "ver" "y " "self " "you " "gave " "us"
  "/Oh " "my " "Lord, " "that " "sin " "may " "not " "en" "slave " "us"
  "/And " "love " "may " "reign " "once " "more. " "This " "day " "will " "live " "for" "ev" "er."
}

Msecondverse = \lyricmode {
  "\Oh " "my " "Lord, " "there " "in " "the " "crib " "they " "found " "Him,"
  "/Oh " "my " "Lord, " "A " "gol" "den " "ha" "lo " "round " "Him,"
  "/Oh " "my " "Lord, " "they " "gath" "ered " "all " "a" "round " "Him"
  "/To " "see " "Him " "and " "a" "dore. " "This " "day " "will " "live " "for" "e" "ver."
}

Mthirdverse = \lyricmode {
  "\Oh " "my " "Lord, " "they " "had " "be" "gun " "to " "doubt " "you,"
  "/Oh " "my " "Lord, " "Truth " "is " "they " "know " "a" "bout " "you,"
  "/Oh " "my " "Lord, " "but " "they " "were " "lost " "with" "out " "you,"
  "/They " "need" "ed " "you " "so " "bad. " "He " "is " "the " "truth " "for" "e" "ver."
}

Mfourthverse = \lyricmode {
  "\Oh " "my " "Lord, " "you " "sent " "your " "Son " "to " "save " "us"
  "/Oh " "my " "Lord, " "Your " "ver" "y " "self " "you " "gave " "us"
  "/Oh " "my " "Lord, " "that " "sin " "may " "not " "en" "slave " "us"
  "/And " "love " "may " "reign " "once " "more."
  "/This " "day " "will " "live " "for" "ev" "er."
  "/Oh, " "my " "Lord."
}

\book

{
  \header
  {
    title = "Mary's Boy Child"
    copyright = \today
  }
  \score % score
  {
    \context ChoirStaff
    <<
      <<
        \new ChordNames { \transpose e f \chordtrack }
%        \new FretBoards { \transpose e f \chordtrack }
%        \new ChordNames { \chordtrack }
%        \new FretBoards { \chordtrack }
      >>
      \context Staff = all
      {
	<<
	  \context Voice =
	  harmony { \voiceOne << \transpose e f {\global \harmony} >> }
	  \context Voice =
	  melody { \voiceTwo << \transpose e f {\global \melody} >> }
	>>
	\context Voice =
	ohmylord { \voiceOne << \transpose e f \ohmylord >> }
      }
      \context Lyrics = maryslyrics {
	\lyricsto melody \maryslyrics
      }
      \context Lyrics = firstverse \lyricsto ohmylord \firstverse
      \context Lyrics = secondverse \lyricsto ohmylord \secondverse
      \context Lyrics = thirdverse \lyricsto ohmylord \thirdverse
      \context Lyrics = fourthverse \lyricsto ohmylord \fourthverse
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
  \score { % karaoke
    \unfoldRepeats <<

      \context ChoirStaff
      <<
        \context Staff = all
        {
	  \context Voice = harmony <<
%	    \set Staff.midiInstrument = #"flute"
	    { \voiceOne << \transpose e f {\global \harmony} >> }
	  >>
	}
	\context Staff = melody {
	  \context Voice = melody <<
%	    \set Staff.midiInstrument = #"clarinet"
	    { \voiceTwo << \transpose e f {\global \melody} >> }
	  >>
	  \context Voice =
	  ohmylord { \voiceOne << \transpose e f \ohmylord >> }
        }
        \context Lyrics = maryslyrics {
	  \lyricsto melody \Mmaryslyrics
        }
        \context Lyrics = firstverse \lyricsto ohmylord { \Mfirstverse \Msecondverse \Mthirdverse \Mfourthverse }
      >>
      \new DrumStaff { \drumtrack }
    >>
    \midi {
    }
  }
  \score { % melody
    \unfoldRepeats <<
      \context ChoirStaff
      <<
	\context Staff {
	  \context Voice { \transpose e f {\global \melody} }
	  \context Voice { \transpose e f \ohmylord }
        }
      >>
      \new DrumStaff { \drumtrack }
    >>
    \midi { }
  }
  \score { % harmony
    \unfoldRepeats <<
      \context ChoirStaff
      <<
        \context Staff
        {
	  \context Voice { \transpose e f {\global \harmony} }
	  \context Voice { \transpose e f \ohmylord }
	}
      >>
      \new DrumStaff { \drumtrack }
    >>
    \midi { }
  }
}
