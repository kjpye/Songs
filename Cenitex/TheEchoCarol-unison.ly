\version "2.18.2"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key g \major
  \time 2/4
}

mainmelody = \relative c'' {
  \repeat volta 3 {
    g4 fis8 e
    d4. d8
    e4 fis
    g2
    g4 fis8 e
    d4. d8
    e4 fis
    g4. g8
    fis4. fis8
    e2
    fis4. fis8
    e2
    g4 a
    b2
    g4 a
    b2
    b4 a8 g
    fis4 e
    fis4 dis
    e2
    b'4 a8 g
    fis4 e
    fis4 dis
    e2
  }
}

melody = \relative c''{
  \mainmelody
  b4 a8 g
  fis4 e
  fis2
  dis2
  e2-\fermata
}

sopMusic = \relative c'' {
  b4 a8 g
  fis4 e
  fis dis
  e2
  \mainmelody
  b'4 a8 g
  fis4 e
  fis4 b
  b4 dis
  e2-\fermata
}
 
altoMusic = \relative c'' {
  g4 fis8 e
  dis4 c
  c4 b
  b2
  \repeat volta 3 {
    g'4 fis8 e %5
    d4. d8
    c4 d
    d2
    g4 fis8 e
    d4. d8
    c4 d
    d4. d8
    dis4. dis8
    b2
    dis4. dis8
    b2
    e4 fis
    g2
    e4 fis
    g2
    g4 fis8 e
    dis4 c
    c4 b
    b2
    g'4 fis8 e
    dis4 c
    c4 b
    b2
  }
  g'4 fis8 e
  dis4 c
  c2
  <dis fis>4 <fis b>
  <e g b>2-\fermata
}

tenorMusic = \relative c' {
  d4 d8 b
  b4 g
  a4 fis
  g2
  \repeat volta 3 {
    g4 fis8 e %5
    d4. d8
    g4 a
    b2
    g4 fis8 e
    d4. d8
    g4 a
    b4. b8
    a4. a8
    g2
    a4. a8
    g2
    b4 d
    d2
    b4 d
    d2
    d4 d8 b
    b4 g
    a4 fis
    g2
    d'4 d8 b
    b4 g
    a4 fis
    g2
  }
  d'4 c8 b
  b4 g
  a2
  fis2
  e2-\fermata
}

bassMusic = \relative c {
  g4 d'8 e
  b4 c
  a4 b
  e2
  \repeat volta 3 {
    g4 fis8 e %5
    d4. d8
    c8 b a4
    g2
    g'4 fis8 e
    d4. d8 %10
    c8 b a4
    g4. g8
    b4. b8
    e2
    b4. b8 %15
    e2
    e4 d
    g2
    e4 d
    g2 %20
    g,4 d'8 e
    b4 c
    a4 b
    e2
    g,4 d'8 e %25
    b4 c
    a4 b
    d2
  }
  g,4 d'8 e
  b4 c %26
  a2
  b2
  e,2-\fermata
}

firstverse = \lyricmode {
  \set stanza = "1. "
  While by my sheep I watched at night
  Glad tid- ings brought an an- gel bright
}

Mfirstverse = \lyricmode {
  "Joy " "to " "the " "world! " "The " "Lord " "is " "come;"
  "/Let " "earth " "re" "ceive " "her " "King;"
}

secondverse = \lyricmode {
  \set stanza = "2. "
  "\"There" shall be "born\"" so he did say,
  "\"in" Beth- le- hem, a Child to- "day\""
  How great my joy!
  "(great" my "joy!)"
  Joy! Joy! Joy!
  "(Joy!" Joy! "Joy!)"
  Praise we the Lord in Heav'n on High!
  "(Praise" we the Lord in Heav'n on "High!)"
  Praise we the Lord in Heav'n on High!
}

Msecondverse = \lyricmode {
  "\Joy " "to " "the " "earth! " "the " "Sav" "iour " "reigns;"
  "/Let " "men " "their " "songs " "em" "ploy;"
}

thirdverse = \lyricmode {
  \set stanza = "3. "
  "\"There" shall be he in man- ger dim,
  Who shall re- deem the world from "sin\"."
}

Mthirdverse = \lyricmode {
  \set stanza = "mf 3. "
  No more let sins and sor- rows grow,
  Nor thorns in- fest the ground;
}

\book
{
  \header {
    title = "The Echo Carol"
    composer = "Traditional"
    copyright = \today
  }
  \paper {
    page-count = #1
  }
  \score {
    <<
      \context Staff <<
        \context Voice = melody { \global r2*4 \melody}
      >>
      \context Lyrics = firstverse { s1 }
      \context Lyrics = secondverse { s1 }
      \context Lyrics = thirdverse { s1 }
	\context Lyrics = firstverse  \lyricsto melody {\firstverse }
	\context Lyrics = secondverse \lyricsto melody {\secondverse}
	\context Lyrics = thirdverse  \lyricsto melody {\thirdverse }
      \context PianoStaff <<
	\context Staff = treble <<
          \set Staff.printPartCombineTexts = ##f
          \partcombine
          << \global \sopMusic >>
          << \global \altoMusic >>
	>>
	\context Staff = bass <<
          \clef bass
          \set Staff.printPartCombineTexts = ##f
          \partcombine
          << \global \tenorMusic >>
          << \global \bassMusic >>
	>>
      >>
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
        }
	\context {\RemoveEmptyStaffContext
	\override VerticalAxisGroup #'remove-first = ##t }
    }
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
          \set Staff.midiInstrument = #"flute"
	  \context Voice =
	  sopranos { \voiceOne {\global R2 \unfoldRepeats \sopMusic } }
          \set Staff.midiInstrument = #"clarinet"
	  \context Voice =
	  altos { \voiceTwo {\global R2 \unfoldRepeats \altoMusic} }
	>>
	\context Lyrics = firstverse { s1 }
	\context Staff = men {
	  <<
	    \clef bass
          \set Staff.midiInstrument = #"oboe"
	    \context Voice =
	    tenors { \voiceOne {\global R2 \unfoldRepeats \tenorMusic} }
          \set Staff.midiInstrument = #"bassoon"
	    \context Voice =
	    basses { \voiceTwo {\global R2 \unfoldRepeats \bassMusic} }
	  >>
	}
	\context Lyrics = firstverse \lyricsto sopranos {
	  \Mfirstverse
	  \Msecondverse
	  \Mthirdverse}
      >>
    >>
    \midi {
      \context {
	\Staff
	\remove "Staff_performer"
      }
      \context {
	\Voice
	\consists "Staff_performer"
      }
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
          \set Staff.midiInstrument = #"flute"
	  \context Voice =
	  sopranos { \voiceOne {\global R2 \unfoldRepeats \sopMusic } }
          \set Staff.midiInstrument = #"clarinet"
	  \context Voice =
	  altos { \voiceTwo {\global R2 \unfoldRepeats \altoMusic} }
	>>
	\context Lyrics = firstverse { s1 }
	\context Staff = men {
	  <<
	    \clef bass
          \set Staff.midiInstrument = #"oboe"
	    \context Voice = tenors
	    { \voiceOne {\global R2 \unfoldRepeats \tenorMusic} }
          \set Staff.midiInstrument = #"bassoon"
	    \context Voice = basses
	    { \voiceTwo {\global R2 \unfoldRepeats \bassMusic} }
	  >>
	}
	\context Lyrics = firstverse \lyricsto tenors {
	  \Mfirstverse
	  \Msecondverse
	  \Mthirdverse}
      >>
    >>
    \midi {
      \context {
	\Staff
	\remove "Staff_performer"
      }
      \context {
	\Voice
	\consists "Staff_performer"
      }
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
          \set Staff.midiInstrument = #"flute"
	  \context Voice =
	  sopranos { \voiceOne {\global R2 \unfoldRepeats \sopMusic } }
          \set Staff.midiInstrument = #"clarinet"
	  \context Voice =
	  altos { \voiceTwo {\global R2 \unfoldRepeats \altoMusic} }
	>>
	\context Lyrics = firstverse { s1 }
	\context Staff = men {
	  <<
	    \clef bass
          \set Staff.midiInstrument = #"oboe"
	    \context Voice = tenors
	    { \voiceOne {\global R2 \unfoldRepeats \tenorMusic} }
          \set Staff.midiInstrument = #"bassoon"
	    \context Voice = basses
	    { \voiceTwo {\global R2 \unfoldRepeats \bassMusic} }
	  >>
	}
	\context Lyrics = firstverse \lyricsto basses {
	  \Mfirstverse
	  \Msecondverse
	  \Mthirdverse}
      >>
    >>
    \midi {
      \context {
	\Staff
	\remove "Staff_performer"
      }
      \context {
	\Voice
	\consists "Staff_performer"
      }
      \context {
	\Score
	tempoWholesPerMinute = #(ly:make-moment 100 4)
      }
    }
  }
}
  
  
