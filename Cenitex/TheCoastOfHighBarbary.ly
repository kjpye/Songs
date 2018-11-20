\version "2.14.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "The Coast of High Barbary"
  copyright = \today
}

global = {
  \time 6/8
  \key g \major
  \tempo 4.=110
}

soprano = \relative c' {
  \global
  \voiceOne
  r4. b4 b8 % 1
  \repeat volta 8 {
  e4. e4 fis8
  g4 g8 fis4 d8
  e4 g8 fis4 d8
  e4. r8 r a % 5
  b4. ~ b4 g8
  a4. ~ a4 fis8
  e4(fis8) g4(a8)
  b4. ~ b4 b8
  b4 b8 b4 g8 % 10
  a4 a8 a(g) fis
  g4 a8 b4 e,8
  d4. r8 r d
  e4 e8 e4 e8
  e4 fis8 g4 a8 % 15
  b4. e,4 e8
  }
  \alternative {
    { e4. b }
    { e2.}
  }
  % e4. e4 fis8
  % g4 g8 fis4 d8
  % e4 g8 fis4 d8 % 20
  % e4. r8 r a
  % b4. ~ b4 g8
  % a4. ~ a4 fis8
  % e4(fis8) g4(a8)
  % b4. ~ b4 b8 % 25
  % b5 b8 b4 g8
  % a4 a8 a(g) fis
  % g4 a8 b4 e,8
  % d4. r8 r d
  % e4 e8 e4 e8 % 30
  % e4(fis8 g4) a8
  % b4. e,4 e8
  % e4. b
  % e4. e4 fis8
  % g4. fis4 d8 % 35
  % e4 g8 fis4 d8
  % e4. r8 r a8
  % b4. ~ b4 g8
  % a4. ~ a4 f8
  % e4(fis8) g4(a8) % 40
  % b4. ~ b4 b8
  % b4 b8 b4 g8
  % a4 a8 a(g) fis
  % g4 a8 b4 e,8
  % d4. r8 r d % 45
  % e4 e8 e4 e8
  % e4(fis8 g4) a8
  % b4. d,4 d8
  % d4. r8 r b
  % e4. e4 fis8 % 50
  % g4. fis4 d8
  % e4 g8 fis4 d8
  % e4. r8 r a
  % b4. ~ b4 g8
  % a4. ~ a4 fis8
}

alto = \relative c' {
  \global
  \voiceTwo
  r4. b4 b8 % 1
  \repeat volta 8 {
  e4. e4 fis8
  g4 g8 fis4 d8
  e4 g8 fis4 d8
  e4. r8 r a % 5
  b4. ~ b4 g8
  a4. ~ a4 fis8
  e4(fis8) g4(a8)
  b4. ~ b4 b8
  b4 b8 b4 g8 % 10
  a4 a8 a(g) fis
  g4 a8 b4 e,8
  d4. r8 r a
  b4 b8 b4 b8
  e4 fis8 g4 a8 % 15
  b4. e,4 e8
  }
  \alternative {
    { b4. b }
    { e2.}
  }
  
}

tenor = \relative c {
  \global
  \voiceOne
  r4. b4 b8 % 1
  \repeat volta 8 {
  e4. e4 fis8
  g4 g8 fis4 d8
  e4 g8 fis4 d8
  e4. r8 r a % 5
  b4. ~ b4 g8
  a4. ~ a4 fis8
  e4(fis8) g4(a8)
  b4. ~ b4 b8
  b4 b8 b4 g8 % 10
  a4 a8 a(g) fis
  g4 a8 b4 e,8
  d4. r8 r fis
  g4 g8 g4 g8
  e4 fis8 g4 a8 % 15
  b4. e,4 e8
  }
  \alternative {
    { g4. b, }
    { e2.}
  }
}

bass = \relative c {
  \global
  \voiceTwo
  r4. b4 b8
  \repeat volta 8 {
  e4. e4 fis8
  g4 g8 fis4 d8
  e4 g8 fis4 d8
  e4. r8 r a % 5
  b4. ~ b4 g8
  a4. ~ a4 fis8
  e4(fis8) g4(a8)
  b4. ~ b4 b8
  b4 b8 b4 g8 % 10
  a4 a8 a(g) fis
  g4 a8 b4 e,8
  d4. r8 r d
  e4 e8 e4 e8
  e4 fis8 g4 a,8 % 15
  b4. e,4 e8
  }
  \alternative {
    { e4. b' }
    { e2.}
  }
  
}

verseOne = \lyricmode {
  \set stanza = "1."
  Look a- head, look a- stern, _ Look the wea- ther in the lee.
  Blow high, Blow low, And so sailed we
  {
    \override LyricText #'color = #(x11-color 'blue)
    I see a wreck to wind- ward and a lof- ty ship to lee
    \override LyricText #'color = #(x11-color 'black)
  }
  A sail- ing down a- long the coasts of High Bar- bar- y.
  O _
}

MverseOne = \lyricmode {
  "Look " "a" "head, " "look " "a" "stern, " "" "Look " "the " "wea" "ther " "in " "the " "lee."
  "/Blow " "high, " "Blow " "low, " "And " "so " "sailed " "we"
  "/I " "see " "a " "wreck " "to " "wind" "ward " "and " "a " "lof" "ty " "ship " "to " "lee"
  "/A " "sail" "ing " "down " a "long " "the " "coasts " "of " "High " "Bar" "bar" "y."
}

verseTwo = \lyricmode {
    \set stanza = "2."
  {
    \override LyricText #'color = #(x11-color 'blue)
    O _ are you a pi- rate or a man- o- war cried we.
    \override LyricText #'color = #(x11-color 'black)
  }
  Blow high, Blow low, And so sailed we
  {
    \override LyricText #'color = #(x11-color 'red)
    O no! I'm not a pi- rate but a man- o- war, cried he.
    \override LyricText #'color = #(x11-color 'black)
  }
  A sail- ing down a- long the coasts of High Bar- bar- y.
  We'll _ 
}

MverseTwo = \lyricmode {
  "\O " "are " "you " "a " "pi" "rate " "or " "a " "man-" "o-" "war " "cried " "we. "
  "/Blow " "high, " "Blow " "low, " "And " "so " "sailed " "we "
  "/O " "no! " "I'm " "not " "a " "pi" "rate " "but " "a " "man" "o" "war, " "cried " "he. "
  "/A " "sail" "ing " "down " a "long " "the " "coasts " "of " "High " "Bar" "bar" "y."
}

verseThree = \lyricmode {
  \set stanza = "3."
  {
    \override LyricText #'color = #(x11-color 'blue)
    We'll _ back up our top- _ sails and heave our ves- sel to;
    \override LyricText #'color = #(x11-color 'black)
  }
  Blow high, Blow low, And so sailed we
  {
    \override LyricText #'color = #(x11-color 'blue)
    For we have got some let- ters to be car- ried home by you,
    \override LyricText #'color = #(x11-color 'black)
  }
  A sail- ing down a- long the coasts of High Bar- bar- y.
  For _
}

MverseThree = \lyricmode {
  "\We'll " "back " "up " "our " "top" "" "sails " "and " "heave " "our " "ves" "sel " "to; "
  "/Blow " "high, " "Blow " "low, " "And " "so " "sailed " "we "
  "/For " "we " "have " "got " "some " "let" "ters " "to " "be " "car" "ried " "home " "by " "you, "
  "/A " "sail" "ing " "down " a "long " "the " "coasts " "of " "High " "Bar" "bar" "y."
}

verseFour = \lyricmode {
  \set stanza = "4."
  \override LyricText #'color = #(x11-color 'red)
  For _ broad- side to broad- side they _ fought all on the main
  \override LyricText #'color = #(x11-color 'black)
  Blow high, Blow low, And so sailed we
  \override LyricText #'color = #(x11-color 'red)
  Un- til at last the fri- gate shot the pi- rate's mast a- way
  \override LyricText #'color = #(x11-color 'black)
  A sail- ing down a- long the coasts of High Bar- bar- y.
  For _
}

MverseFour = \lyricmode {
  "\For " "broad" "side " "to " "broad" "side " "they " "" "fought " "all " "on " "the " "main "
  "/Blow " "high, " "Blow " "low, " "And " "so " "sailed " "we "
  "/Un" "til " "at " "last " "the " "fri" "gate " "shot " "the " "pi" "rate's " "mast " "a" "way "
  "/A " "sail" "ing " "down " a "long " "the " "coasts " "of " "High " "Bar" "bar" "y."
}

verseFive = \lyricmode {
  \set stanza = "5."
  \override LyricText #'color = #(x11-color 'red)
  For _ quart- ters! For Quart- _ ers! the sau- cy pi- rates cried,
  \override LyricText #'color = #(x11-color 'black)
  Blow high, Blow low, And so sailed we
  \override LyricText #'color = #(x11-color 'blue)
  The quart- ers that we showed them was to sink them in the tide.
  \override LyricText #'color = #(x11-color 'black)
  A sail- ing down a- long the coasts of High Bar- bar- y.
  With _
}

MverseFive = \lyricmode {
  "\For " "quart" "ers! " "For " "quart" "" "ers! " "the " "sau" "cy " "pi" "rates " "cried, "
  "/Blow " "high, " "Blow " "low, " "And " "so " "sailed " "we "
  "/The " "quart" "ers " "that " "we " "showed " "them " "was " "to " "sink " "them " "in " "the " "tide. "
  "/A " "sail" "ing " "down " a "long " "the " "coasts " "of " "High " "Bar" "bar" "y."
}

verseSix = \lyricmode {
  \set stanza = "6."
  "(Instrumental)" _ _ _ _ _
}

verseSeven = \lyricmode {
  \set stanza = "7."
  \override LyricText #'color = #(x11-color 'blue)
  With _ cut- lass and gun, _ O we fought for ho- urs three.
  \override LyricText #'color = #(x11-color 'black)
  Blow high, Blow low, And so sailed we
  \override LyricText #'color = #(x11-color 'red)
  The ship it was our cof- fin and our grave it was the sea.
  \override LyricText #'color = #(x11-color 'black)
  A sail- ing down a- long the coasts of High Bar- bar- y.
}

verseEight = \lyricmode {
  \set stanza = "8."
  With _ cut- lass and gun, _ O we fought for ho- urs three.
  Blow high, Blow low, And so sailed we
  The ship it was their/our cof- fin and their/our grave it was the sea.
  "(Unis)A" sail- ing down a- long the coasts of High Bar- bar- _ _ y.
}

MverseSix = \lyricmode {
}

MverseSeven = \lyricmode {
  "With " "cut" "lass " "and " "gun, " "_ " "O " "we " "fought " "for " "ho" "urs " "three. "
  "Blow " "high, " "Blow " "low, " "And " "so " "sailed " "we "
  "The " "ship " "it " "was " "their " "cof" "fin " "and " "their " "grave " "it " "was " "the " "sea. "
  "/A " "sail" "ing " "down " a "long " "the " "coasts " "of " "High " "Bar" "bar" "y."
}


\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "flute"
    } <<
      \new Voice = "soprano" { \unfoldRepeats\soprano }
    >>
    \new Staff \with {
      midiInstrument = "clarinet"
    } <<
      \new Voice = "alto" { \unfoldRepeats\alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" { \MverseOne \MverseTwo \MverseThree \MverseFour \MverseFive \MverseFive \MverseSix \MverseSeven \MverseSeven }
    \new Staff \with {
      midiInstrument = "oboe"
      instrumentName = \markup \center-column { T B }
    } <<
      \new Voice = "tenor" { \unfoldRepeats \tenor }
    >>
    \new Staff \with {
      midiInstrument = "bassoon"
      instrumentName = \markup \center-column { T B }
    } <<
      \new Voice = "bass" { \unfoldRepeats \bass }
    >>
  >>
  \midi {}
}
\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFour
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFive
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseSix
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseSeven
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseEight
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { T B }
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout {}
}
