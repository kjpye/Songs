\version "2.19.80"

global = {
  \time 4/4
  \key c \major
  \tempo 4 = 150
}

melodyOne = \relative c'' {
  \global
  r1
  r1
}

melodyTwo = \relative c'' {
  g8 f g f e4 c % 3
  r4 e8 f g f g f
  e8 f g a bes a bes a % 5
  g4 r r2
  aes4 g ges f
  ees8 d c d ees4 r
  ees8 d c d ees4 c
  g'4 r r2 % 10
  g8 f g f e4 c
  r4 e8 f g f g f
  e8 f g a bes a bes a
  g4 r r2
}

melodyThree = \relative c'' {
  aes4 g ges f % 15
  ees8 d c d ees4 r
  ees8 d c ees d c b d
  c4 e-\fermata f-\fermata g-\fermata
  \repeat volta 2 {
    aes4 aes aes aes
    aes4 bes8 c bes4 aes % 20
    g4 8 8 8 8 8 8
    g4 r r g
    f4 f f f
  } \alternative {
    {
      f4 g8 aes g4. f8
      e4. r8 r2 % 25
      r4 e f g
    }
    {
      ees4 d c ees
    }
  }
  g4 r r2
  r4 e-\fermata f-\fermata g-\fermata
  a4 a a a % 30
  a4 b8 c b4 a
  g4 8 8 8 8 8 8
  g1
  f4 f f f
  f4 g8 a g4 f % 35
  e4. r8 r2
  r4 e4 f g
  aes4 aes aes aes
  aes4 bes8 c bes4 aes
  g4 8 8 8 8 8 8 % 40
  g4 r r g
  f4 f f f
  ees4 d c ees
  g1 ~
  g4 r r2 % 45
}

melodyFour = \relative c'' {
  aes4 g ges f
  ees8 d c d ees2
  aes4 g ges f
  ees8 d c d ees2
  aes4 g ges f % 50
  ees8 d c d ees2-\fermata
  ees8 d c ees g4 b
  c1 ~
  c1
  r1 % 55
  r1
  \bar "|."
}

trebleOne = \relative c'' {
  \global
  r4 <g c e>8 q r4 q4
  r4 <g c e>8 q r4 q4
}

trebleTwo = \relative c''' {
  g8 f g f e4 c
  r4 e8 f g f g f
  e8 f g a bes a bes a
  g4 <g, c e>8 q r4 q
  aes'4 g ges f
  ees8 d c d ees4 r
  ees8 d c d ees4 c
  g'4 r \ottava #1 g' \ottava #0 r
  g,8 f g f e4 c
  r4 e8 f g f g f
  e8 f <e g> <f a> <g bes> <f a> <g bes> <f a>
  <e g>4 <g, c e>8 q r4 q
}

trebleThree = \relative c''' {
  aes4 g ges f
  ees8 d c d ees4 r
  ees8 d c ees d c b d
  c4 e-\fermata f-\fermata g-\fermata
  \repeat volta 2 {
    r4 <c, f> r q
    r4 d r d
    r4 <b e> r q
    <bes ees g>4 <f bes ees f> <g bes c e> r
    r4 <aes c> r q
  }
  \alternative {
    {
      f'4 g8 aes g4. f8
      r4 c8 g e' c g' e
      c'4 e, f g
    }
    {
      <aes, c>1
    }
  }
  <b f g>4 r r2
  r4 e-\fermata f-\fermata <bes, e g>-\fermata
  <c f a>4 <c a'> <cis a'> <e a>
  <f a>4 <g b>8 <a c> <<
    { \voiceOne b4 a }
    { \new Voice { \voiceTwo dis,2 } }
  >> \oneVoice
  <e g>4 q8 q q q <d g> <e g>
  <cis g'>1
  <d f>4 q <cis f> <c f>
  <b f>4 <e g>8 <f a> <e g>4 <d f>
  r4 c8 g e' c g' e
  c'4-> e, f g
  <c, aes'>4 q <cis aes'> <c aes'>
  <d aes'>4 <g bes>8 <aes c> <g b>4 <f aes>
  <ees g>4 q8 q <d g> q q q
  <c ees g>4 <f, bes des f> <g bes c e> r
  r4 <aes c> r q
  <fis a>1
  <b d f g>1 ~
  q4 r r2
}

trebleFour = \relative c''' {
  aes4 g ges f
  ees8 d c d ees2
  aes4 g ges f
  ees8 d c d ees2
  aes4 g ges f
  ees8 d c d <g, des' ees>2-\fermata
  ees'8 d c ees g4 b
  g8 f g f e4 c
  r4 e8 f g f g f
  e8 f g a bes a bes a
  bes4 <f b> <e c'> r
}

bassOne = \relative c {
  \global
  c4 c'8 c g,4 c'
  c,4 c'8 c g,4 c'
}

bassTwo = \relative c {
  c4 c'8 c g,4 c'
  c,4 c'8 c g,4 c'
  c,4 c'8 c g,4 c'
  c,4 c'8 c g,4 c'
  d,,4 g'8 g g,4 g'
  c,4 c'8 c g,4 c'
  fis,,2 a
  <g g'>4 r g-> r
  c4 c'8 c g,4 c'
  c,4 c'8 c g,4 c'
  c,4 c'8 c g,4 c'
  c,4 c'8 c g,4 c'
}

bassThree = \relative c {
  d,4 g'8 g g,4 g'
  c,4 c'8 c g,4 c'
  <a, d'>4 r <g g'> r
  <c, c''>4 c-\fermata d-\fermata e-\fermata
  \repeat volta 2 {
    f4 f' c f
    bes,4 bes' f, bes'
    ees,,4 ees' bes ees
    ees, bes'-> c-> r
    f,4 f' c f
  }
  \alternative {
    {
      d,4 g' g, g'
      <c, c'>4 r r2
      q4 c, d e--
    }
    {
      fis2 a
    }
  }
  g4 r g8 gis b gis
  g4 c, d e
  f4 f' a, a'
  d,, d'' fis,,-- b--
  c4 c' b,-- bes
  a4-- bes a-- g
  d4 d'' a, d'
  g,,4 g' d, g'
  <c, c'>4 r r2
  q4 r r2
  f,4 f' f, f'
  bes,4 bes' f, bes'
  ees,,4 ees' bes ees
  ees,4 bes-> c-> r
  f,4 f' c f
  fis,2-- a
  g4 gis-- b-- fis--
  g4 r r2
}

bassFour = \relative c {
  g2. g,4
  c'2. g,4
  g'2. g,4
  c'1
  <<
    { \voiceOne r2 g }
    { \new Voice { \voiceTwo g,1 } }
  >> \oneVoice
  <c c'>4 bes a2-- -\fermata
  d'4 d,, g g'
  c,4 c'8 c g,4 c'
  c,4 c'8 c g,4 c'
  <c, c'>4 r bes8 a bes a
  bes4 <g g'> <c c'> r
}

firstVerse = \lyricmode {
  If I were a rich man
  dai- dle, dee- dle, dai- dle, dig- guh, dig- guh, dee- dle, dai- dle, dum.
  All day long I'd bid- dy, bid- dy, bum.
  If I were a wealth- y man.
  Would- n't have to work hard
  dai- dle, dee- dle, dai- dle, dig- guh, dig- guh, dee- dle, dai- dle, dum.
  If I were a bid- dy, bid- dy, rich
  dig- guh, dig- guh, dee- dle, dai- dle, man.

  I'd build a big tall house with rooms by the doz- en right in the mid- dle of the town.
  A fine tin roof with real wood- en floors be- low.
  There could be
}

secondVerseA = \lyricmode {
  _ _ _ _ _ _ % If I were a rich man
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ % dai- dle, dee- dle, dai- dle, dig- guh, dig- guh, dee- dle, dai- dle, dum.
  _ _ _ _ _ _ _ _ _ % All day long I'd bid- dy, bid- dy, bum.
  _ _ _ _ _ _ _ % If I were a wealth- y man.
  _ _ _ _ _ _ % Would- n't have to work hard
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ % dai- dle, dee- dle, dai- dle, dig- guh, dig- guh, dee- dle, dai- dle, dum.
  _ _ _ _ _ _ _ _ _ % If I were a bid- dy, bid- dy, rich
  _ _ _ _ _ _ _ _ _ % dig- guh, dig- guh, de-- dle, dai- dle, man.

  _ _ _ % I'd build a
}

secondVerseB = \lyricmode {
  one long stair- case just go- ing up and one e- ven long- er com- ing down.
  And one more lead- ing
}

secondVerseC = \lyricmode {
  _ _ _ _ _ _ _ _ _
}

secondVerseD = \lyricmode {
  no- where just for show.
  I'd fill my yard with chick's and tur- keys and geese and ducks for the town to see and hear;
  squawk- ing just as nois- i- ly as they can.
  and each loud quack and cluck and gob- ble and honk will land like a trum- pet on the ear,
  as if to say here lives a waelth- y man.
  
  If I were a rich man
  dai- dle, dee- dle, dai- dle, dig- guh, dig- guh, dee- dle, dai- dle, dum.
  All day long I'd bid- dy, bid- dy, bum.
  If I were a wealth- y man.
  Would- n't have to work hard
  dai- dle, dee- dle, dai- dle, dig- guh, dig- guh, dee- dle, dai- dle, dum.

  Lord, who made the li- on and the lamb.
  You de- creed I should be what I am;
  would it spoil some vast e- ter- nal plan,
  if I were a wealth- y man.
}

MfirstVerse = \lyricmode {
  "If " "I " "were " "a " "rich " "man"
  "/dai" "dle, " "dee" "dle, " "dai" "dle, "
  "/dig" "guh, " "dig" "guh, " "dee" "dle, " "dai" "dle, " "dum."
  "/All " "day " "long " "I'd " "bid" "dy, " "bid" "dy, " "bum."
  "/If " "I " "were " "a " "wealth" "y " "man."
  "/Would" "n't " "have " "to " "work " "hard"
  "/dai" "dle, " "dee" "dle, " "dai" "dle,"
  "/dig" "guh, " "dig" "guh, " "dee" "dle, " "dai" "dle, " "dum."
  "/If " "I " "were " "a " "bid" "dy, " "bid" "dy, " "rich"
  "/dig" "guh, " "dig" "guh, " "dee" "dle, " "dai" "dle, " "man."

  "/I'd " "build " "a " "big " "tall " "house "
  "/with " "rooms " "by " "the " "doz" "en "
  "/right " "in " "the " "mid" "dle " "of " "the " "town."
  "/A " "fine " "tin " "roof "
  "/with " "real " "wood" "en " "floors " "be" "low."
  "/There " "could " "be "
}

MsecondVerseB = \lyricmode {
  "one " "long " "stair" "case "
  "/just " "go" "ing " "up "
  "/and " "one " "e" "ven " "long" "er " "com" "ing " "down."
  "/And " "one " "more " "lead" "ing "
}

MsecondVerseD = \lyricmode {
  "no" "where " "just " "for " "show."
  "/I'd " "fill " "my " "yard "
  "/with " "chick's " "and " "tur" "keys "
  "/and " "geese " "and " "ducks "
  "/for " "the " "town " "to " "see " "and " "hear;"
  "/squawk" "ing " "just " "as " "nois" "i" "ly "
  "/as " "they " "can."
  "/and " "each " "loud " "quack " "and " "cluck "
  "/and " "gob" "ble " "and " "honk "
  "/will " "land " "like " "a " "trum" "pet " "on " "the " "ear,"
  "/as " "if " "to " "say "
  "/here " "lives " "a " "wealth" "y " "man."
  
  "/If " "I " "were " "a " "rich " "man"
  "/dai" "dle, " "dee" "dle, " "dai" "dle," 
  "/dig" "guh, " "dig" "guh, " "dee" "dle, " "dai" "dle, " "dum."
  "/All " "day " "long " "I'd " "bid" "dy, " "bid" "dy, " "bum."
  "/If " "I " "were " "a " "wealth" "y " "man."
  "/Would" "n't " "have " "to " "work " "hard"
  "/dai" "dle, " "dee" "dle, " "dai" "dle, "
  "/dig" "guh, " "dig" "guh, "
  "/dee" "dle, " "dai" "dle, " "dum."

  "/Lord, " "who " "made " "the "
  "/li" "on " "and " "the " "lamb."
  "/You " "de" "creed " "I "
  "/should " "be " "what " "I " "am;"
  "/would " "it " "spoil " "some "
  "/vast " "e" "ter" "nal " "plan,"
  "/if " "I " "were " "a " "wealth" "y " "man."
}

\book {
  \header {
    title = "If I Were A Rich Man"
    composer = "Jerry Bock"
    poet = "Sheldon Harnick"
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody {
	  \melodyOne \melodyTwo \melodyThree \melodyTwo \melodyFour
	}
	\addlyrics \firstVerse
	\addlyrics { \secondVerseA \secondVerseB \secondVerseC \secondVerseD}
	\context PianoStaff {
	  <<
	    \new Staff = treble {
	      \trebleOne \trebleTwo \trebleThree \trebleTwo \trebleFour
	    }
	    \new Staff = bass {
	      \clef bass
	      \bassOne \bassTwo \bassThree \bassTwo \bassFour
	    }
	  >>
	}
      >>
    }
    \layout {}
  }

  \score {
    \context GrandStaff {
      <<
	\new Staff = melody {
	  \melodyOne \melodyTwo \unfoldRepeats \melodyThree \melodyTwo \melodyFour
	}
	\addlyrics { \MfirstVerse \MsecondVerseB \MsecondVerseD }
	\context PianoStaff {
	  <<
	    \new Staff = treble {
	      \trebleOne \trebleTwo \unfoldRepeats \trebleThree \trebleTwo \trebleFour
	    }
	    \new Staff = bass {
	      \clef bass
	      \bassOne \bassTwo \unfoldRepeats \bassThree \bassTwo \bassFour
	    }
	  >>
	}
      >>
    }
    \midi {}
  }
}
