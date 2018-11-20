\version "2.14.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "South Australia"
  copyright = \today
}

global = {
  \time 4/4
  \key c \major
  \tempo 4=140
}

solo = \relative c'' {
  \global
  c4. c8 c4 g
  a4 g g4 r8 d
  \repeat volta 5 {
    e4. g8 g4 e
    d2 c4 g'
    e4 g g g
    a4 g g2
    a4 g g2
    a4 g g r8 f
    e4 g g e
    d4 e c4. d8
    e4. g8 g4 e
    d2 c
    c'4. c8 c4 g
    a4 g g2
    a4 g g2
    a4 g g2
    c4. c8 c4 g
    a4 g g r8 d
    e4. g8 g4 e
    d2 c
  }
}

all = \relative c'' {
  \global
  s1
  s1
  \repeat volta 5 {
    s1
    s1
    r1
    r1
    a4 g g2
    a4 g g r4
    r1
    r1
    e4. g8 g4 e
    d2 c
    c'4. c8 c4 g
    a4 g g2
    a4 g g2
    a4 g g2
    c4. c8 c4 g
    a4 g g r
    e4. g8 g4 e
    d2 c
  }
}

verseOneSolo = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  \set stanza = "1."
  In South Aus- tra- lia I was born
  heave a- way! Haul a- way!
  In South Aus- tra- lia 'round Cape Horn,
  We're bound for South Aus- tra- lia.
  heave a- way, you rol- ling kings,
  heave a- way, haul a- way,
  Heave a- way, you'll hear me sing
  We're bound for South Aus- tra- lia.
  
}

verseTwoSolo = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  \set stanza = "2."
  \override LyricText #'color = #(x11-color 'blue)
  _ When I sailed a- cross the sea
  _ _ _ _ _ _
  My girl said she'd be true to me
}

verseThreeSolo = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  \set stanza = "3."
  \override LyricText #'color = #(x11-color 'green)
  _ When we lol- loped 'round Cape Horn
  _ _ _ _ _ _
  You'd wish to God you'd never been born
  }

verseFourSolo = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  \set stanza = "4."
  \override LyricText #'color = #(x11-color 'red)
  Wish I was on Aus- tra- lia's Strand
  _ _ _ _ _ _
  With_a glass of whis- ky in my hand
}

verseFiveSolo = \lyricmode {
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  \set stanza = "5."
  In South Aus- tra- lia I was born
  _ _ _ _ _ _
  In South Aus- tra- lia round Cape Horn
}

verseOneAll = \lyricmode {
  heave a- way! Haul a- way!
  bound for South Aus- tra- lia.
  heave a- way, you rol- ling kings,
  heave a- way, haul a- way,
  Heave a- way, you'll hear me sing
  bound for South Aus- tra- lia.
  
}

allwords = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _
  "/In " "South " Aus tra "lia " "I " "was " "born "
  "/heave " a "way! " "Haul " a "way! "
  "/In " "South " Aus tra "lia " "'round " "Cape " "Horn, "
  "/We're " "bound " "for " "South " Aus tra "lia. "
  "/heave " a "way, " "you " rol "ling " "kings, "
  "/heave " a "way, " "haul " a "way, "
  "/Heave " a "way, " "you'll " "hear " "me " "sing "
  "/We're " "bound " "for " "South " Aus tra "lia. "
 
  _ _ _ _ _ _ _
  "\When " "I " "sailed " a "cross " "the " "sea "
  "/heave " a "way! " "Haul " a "way! "
  "/My " "girl " "said " "she'd " "be " "true " "to " "me "
  "/We're " "bound " "for " "South " Aus tra "lia. "
  "/heave " a "way, " "you " rol "ling " "kings, "
  "/heave " a "way, " "haul " a "way, "
  "/Heave " a "way, " "you'll " "hear " "me " "sing "
  "/We're " "bound " "for " "South " Aus tra "lia. "

  _ _ _ _ _ _ _
  "\When " "we " "lol- " "loped " "'round " "Cape " "Horn "
  "/heave " a "way! " "Haul " a "way! "
  "/You'd " "wish " "to " "God " "you'd " "never " "been " "born "
  "/We're " "bound " "for " "South " Aus tra "lia. "
  "/heave " a "way, " "you " rol "ling " "kings, "
  "/heave " a "way, " "haul " a "way, "
  "/Heave " a "way, " "you'll " "hear " "me " "sing "
  "/We're " "bound " "for " "South " Aus tra "lia. "

  _ _ _ _ _ _
  "\Wish " "I " "was " "on " "Aus- " "tra- " "lia's " "Strand "
  "/heave " a "way! " "Haul " a "way! "
  "/With_a " "glass " "of " "whis- " "ky " "in " "my " "hand "
  "/We're " "bound " "for " "South " Aus tra "lia. "
  "/heave " a "way, " "you " rol "ling " "kings, "
  "/heave " a "way, " "haul " a "way, "
  "/Heave " a "way, " "you'll " "hear " "me " "sing "
  "/We're " "bound " "for " "South " Aus tra "lia. "

  _ _ _ _ _ _
  "\In " "South " Aus tra "lia " "I " "was " "born "
  "/heave " a "way! " "Haul " a "way! "
  "/In " "South " Aus tra "lia " "'round " "Cape " "Horn, "
  "/We're " "bound " "for " "South " Aus tra "lia. "
  "/heave " a "way, " "you " rol "ling " "kings, "
  "/heave " a "way, " "haul " a "way, "
  "/Heave " a "way, " "you'll " "hear " "me " "sing "
  "/We're " "bound " "for " "South " Aus tra "lia. "
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "flute"
      instrumentName = \markup \center-column { Solo }
    } <<
      \new Voice = "solo" { \solo }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "solo" \verseOneSolo
    \new Lyrics \lyricsto "solo" \verseTwoSolo
    \new Lyrics \lyricsto "solo" \verseThreeSolo
    \new Lyrics \lyricsto "solo" \verseFourSolo
    \new Lyrics \lyricsto "solo" \verseFiveSolo
    \new Staff \with {
      midiInstrument = "oboe"
      instrumentName = \markup \center-column { All }
    } <<
      \new Voice = "all" { \all }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "all" \verseOneAll
  >>
  \layout { }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "flute"
      instrumentName = \markup \center-column { Solo }
    } <<
      \new Voice = "solo" { \unfoldRepeats \solo }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "solo" { \allwords }
    \new Staff \with {
      midiInstrument = "oboe"
      instrumentName = \markup \center-column { All }
    } <<
      \new Voice = "all" { \unfoldRepeats \all }
    >>
  >>
  \midi { }
}
  