\version "2.13.53"
today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\include "predefined-guitar-fretboards.ly"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

global = {
  \key f \major
  \time 3/4 
  \key f \major
  \tempo 4 = 160 
}

melody = \relative c {
  \partial 4 c'8 c
  \repeat volta 4 {
    f4 f8 g f e
    d4 d d
    g g8 a g f
    e4 c c
				% 5
    a' a8 bes a g
    f4 d c8 c
    d4 g e
    f2 c4
    f f f
				% 10
    e2 e4
    f e d
    c2 g'4
				%  a g \times 2/3 {f8 f f}
    a g8 g f f
    c'4 c, c8 c
				% 15
    d4 g e
  }
  \alternative { {f2 c8 c} {f2 r4} }
}

bass = \relative c {
  \partial 4 r4
  \repeat volta 4 {
    <a' f c >2. <f d bes >2. <g f b, >2. <g e c >2. <a g des >2. 
    <a f d >2. <f d bes >2 
    <bes g c, >4 <c a f >2 
    r4 <a f c >2. <g e c >2. <g f b, >2. <g e c >2 
    r4 <c a f >2. <f, c a >2.
    <f d bes >2 <bes g c, >4
  }
  \alternative {
    { <c a f >2 r4
    }
    {
      <c a f >2 r4
    }
  }
}

firstverse = \lyricmode {
  We _ wish you a Mer- ry Christ- mas,
  We wish you a Mer- ry Christ- mas,
  We wish you a Mer- ry Christ- mas,
  And a Hap- py New Year.
  Good tid- ings we bring
  to you and your kin.
  We wish you a Mer- ry Christ- mas,
  And a hap- py new year.
  Now _
}

secondverse = \lyricmode {
  Now _ bring us some fig- gy pud- ding
  Now bring us some fig- gy pud- ding
  Now bring us some fig- gy pud- ding
  And _ bring some out here
  Good tid- ings we bring
  to you and your kin.
  We wish you a Mer- ry Christ- mas,
  And a hap- py new year.
  For we
}

thirdverse = \lyricmode {
  For we all like _ fig- gy pud- ding
  We all like _ fig- gy pud- ding
  We all like _ fig- gy pud- ding
  So _ bring some out here
  Good tid- ings we bring
  to you and your kin.
  We wish you a Mer- ry Christ- mas,
  And a hap- py new year.
  And we
}

fourthverse = \lyricmode {
  And we won't go un- til we've got some
  We won't go un- til we've got some
  We won't go un- til we've got some
  So _ bring some out here
  Good tid- ings we bring
  to you and your kin.
  We wish you a Mer- ry Christ- mas,
  And a hap- py new "" _ _ year.
}

Mfirstverse =\lyricmode {
  "We " "" "wish " "you " "a " "Mer" "ry " "Christ" "mas, "
  "/We " "wish " "you " "a " "Mer" "ry " "Christ" "mas, "
  "/We " "wish " "you " "a " "Mer" "ry " "Christ" "mas, "
  "/And " "a " "Hap" "py " "New " "Year. "
  "/Good " "tid" "ings " "we " "bring "
  "/to " "you " "and " "your " "kin. "
  "/We " "wish " "you " "a " "Mer" "ry " "Christ" "mas, "
  "/And " "a " "hap" "py " "new " "year. "
}

Msecondverse = \lyricmode {
  "\Now " "" "bring " "us " "some " fig "gy " pud "ding"
  "/Now " "bring " "us " "some " fig "gy " pud "ding"
  "/Now " "bring " "us " "some " fig "gy " pud "ding"
  "/And " "" "bring " "some " "out " "here"
  "/Good " tid "ings " "we " "bring"
  "/to " "you " "and " "your " "kin."
  "/We " "wish " "you " "a " Mer "ry " Christ "mas,"
  "/And " "a " hap "py " "new " "year."
}

Mthirdverse = \lyricmode {
  "\For " "we " "all " "like " "" fig "gy " pud "ding"
  "/We " "all " "like " "" fig "gy " pud "ding"
  "/We " "all " "like " "" fig "gy " pud "ding"
  "/So " "" "bring " "some " "out " "here"
  "/Good " tid "ings " "we " "bring"
  "/to " "you " "and " "your " "kin."
  "/We " "wish " "you " "a " Mer "ry " Christ "mas,"
  "/And " "a " hap "py " "new " "year."
}

Mfourthverse = \lyricmode {
  "\And " "we " "won't " "go " un "til " "we've " "got " "some"
  "/We " "won't " "go " un "til " "we've " "got " "some"
  "/We " "won't " "go " un "til " "we've " "got " "some"
  "/So " "" "bring " "some " "out " "here"
  "/Good " tid "ings " "we " "bring"
  "/to " "you " "and " "your " "kin."
  "/We " "wish " "you " "a " Mer "ry " Christ "mas,"
  "/And " "a " hap "py " "new " "year."
}

chordtrack = \chordmode {
  \partial 4 s4
  \repeat volta 4 {
    f2.
    bes
    g:7
    c:7
    a:7
    d:m
    bes2 c4:7
    f2.
    f
    c
    g:7
    c:7
    f
    c
    g2:m c4:7
  } \alternative {
  {
    f2.
  } {
    f2.
  }
  }
}

\book
{
  \header {
    title = "We Wish You a Merry Christmas"
    copyright = \today
  }
  \score {
    \context GrandStaff <<
    <<
      <<
        \new ChordNames { \transpose f g \chordtrack }
%        \new FretBoards { \transpose f g \chordtrack }
      >>
    \context ChoirStaff <<
      \context Staff = melody <<
	\context Voice =
	melody { \transpose f g {\global \melody} }
      >>
      \context Lyrics = firstverse  { s1 }
      \context Lyrics = secondverse { s1 }
      \context Lyrics = thirdverse  { s1 }
      \context Lyrics = fourthverse { s1 }
      \context Staff = bass <<
	\clef bass
	\context Voice =
	bass { \transpose f g {\global \bass }}
      >>
      \context Lyrics = firstverse  \lyricsto melody \firstverse
      \context Lyrics = secondverse \lyricsto melody \secondverse
      \context Lyrics = thirdverse  \lyricsto melody \thirdverse
      \context Lyrics = fourthverse \lyricsto melody \fourthverse
    >>
    >>
>>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
    }
  }

  \score {
    \context ChoirStaff <<
      \context Staff = melody <<
	\set Staff.midiInstrument = #"acoustic grand"
	\context Voice =
	melody { \transpose f g {\global \unfoldRepeats \melody }}
      >>
      \context Lyrics = firstverse { s1 }
      \context Staff = bass <<
	\set Staff.midiInstrument = #"acoustic grand"
	\clef bass
	\context Voice =
	bass { \transpose f g {\global \unfoldRepeats \bass }}
      >>
      \context Lyrics = firstverse \lyricsto melody {\Mfirstverse \Msecondverse \Mthirdverse \Mfourthverse }
    >>
    
    \midi {}
  }
}
