\version "2.14.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "What Shall We Do with the Drunken Sailor"
  copyright = \today
}

global = {
  \time 2/4
  \key c \major
  \tempo 4=108
}

soprano = \relative c'' {
  \global
  \repeat volta 4 {
    a16 a a a a a a a
    a16 a d,8 f a
    g16 g g g g g g g
    g16 g c,8 e g
    a16 a a a a a a a
    a16 a b8 c d
    c8 a g e
    d4 d
    a'4 a8. a16
    a8 d, f a
    g4 g8. g16
    g8 c, e g
    a4 a8. a16
    a8 b c d
    c8 a g e
    d4 d
  }
}

verseOne = \lyricmode {
  \set stanza = "1."
  What _ shall we do _ with the drun- _ ken sai- lor,
  What _ shall we do _ with the drun- _ ken sai- lor,
  What _ shall we do _ with the drun- _ ken sai- lor
  Ear- ly in the morn- ing?
  
  Hoo- ray and up she ri- ses,
  Hoo- ray and up she ri- ses,
  Hoo- ray and up she ri- ses
  Ear- ly in the morn- ing.
  
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Give him five _ su- gars in a cap- _ pu- cin- o
  Give him five _ su- gars in a cap- _ pu- cin- o
  Give him five _ su- gars in a cap- _ pu- cin- o
  Ear- ly in the morn- ing
}

verseThree = \lyricmode {
  \set stanza = "3."
  Bring _ him _ round _ with a Blood- _ y Mar- y
  Bring _ him _ round _ with a Blood- _ y Mar- y
  Bring _ him _ round _ with a Blood- _ y Mar- y
  Ear- ly in the morn- ing
}

verseFour = \lyricmode {
  \set stanza = "4."
  Put him in a long _ boat _ 'til he gets sob- er
  Put him in a long _ boat _ 'til he gets sob- er
  Put him in a long _ boat _ 'til he gets sob- er
  Ear- ly in the morn- ing
}

allwords = \lyricmode {
  "What " "" "shall " "we " "do " "" "with " "the " drun "" "ken " sai "lor,"
  "/What " "" "shall " "we " "do " "" "with " "the " drun "" "ken " sai "lor,"
  "/What " "" "shall " "we " "do " "" "with " "the " drun "" "ken " sai "lor,"
  "/Ear" "ly " "in " "the " morn "ing?"

  "/Hoo" "ray " "and " "up " "she " ri "ses,"
  "/Hoo" "ray " "and " "up " "she " ri "ses,"
  "/Hoo" "ray " "and " "up " "she " ri "ses"
  "/Ear" "ly " "in " "the " morn ing.

  "\Give " "him " "five " "" su "gars " "in " "a " cap "" pu cin o
  "/Give " "him " "five " "" su "gars " "in " "a " cap "" pu cin o
  "/Give " "him " "five " "" su "gars " "in " "a " cap "" pu cin o
  "/Ear" "ly " "in " "the " morn ing.

  "/Hoo" "ray " "and " "up " "she " ri "ses,"
  "/Hoo" "ray " "and " "up " "she " ri "ses,"
  "/Hoo" "ray " "and " "up " "she " ri "ses"
  "/Ear" "ly " "in " "the " morn ing.

  "\Bring " "" "him " "" "round " "" "with " "a " Blood "" "y " Mar y
  "/Bring " "" "him " "" "round " "" "with " "a " Blood "" "y " Mar y
  "/Bring " "" "him " "" "round " "" "with " "a " Blood "" "y " Mar y
  "/Ear" "ly " "in " "the " morn ing.

  "/Hoo" "ray " "and " "up " "she " ri "ses,"
  "/Hoo" "ray " "and " "up " "she " ri "ses,"
  "/Hoo" "ray " "and " "up " "she " ri "ses"
  "/Ear" "ly " "in " "the " morn ing.

  "\Put " "him " "in " "a " "long " "" "boat " "" "'til " "he " "gets " sob er
  "/Put " "him " "in " "a " "long " "" "boat " "" "'til " "he " "gets " sob er
  "/Put " "him " "in " "a " "long " "" "boat " "" "'til " "he " "gets " sob er
  "/Ear" "ly " "in " "the " morn ing

  "/Hoo" "ray " "and " "up " "she " ri "ses,"
  "/Hoo" "ray " "and " "up " "she " ri "ses,"
  "/Hoo" "ray " "and " "up " "she " ri "ses"
  "/Ear" "ly " "in " "the " morn ing.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
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
  >>
  \layout { }
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      instrumentName = \markup \center-column { S A }
    } <<
      \new Voice = "soprano" { \voiceOne \unfoldRepeats \soprano }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \allwords
  >>
  \midi { }
}
