\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "Quem Pastores Laudavere"
  copyright = \today
}

global = {
  \key f \major
  \time 3/4
}

sopMusic = \relative c' {
  f2 a4 c2 a4 bes4(c) d c2 g4 \bar "||"
  a4(bes) c bes(a) g f2 d4 e2 c4 \bar "||"
  a'2 bes4 c2 d4 c2 g4 a2 f4 \bar "||"
  bes2 bes4 a(g) f f(d) e f2. \bar "||"
}

altoMusic = \relative c' {
  f2 f4 g2 f4 f2 f4 f2 e4
  f2 f4 d2 e4 d2 b4 c2 c4
  c2 f4 f2 f4 f2 e4 e2 d4
  d2 g4 e2 d4 d2 c4 c2.
}

tenorMusic = \relative c' {
  a2 c4 c2 c4 bes2 bes4 g(a) bes
  a2 a4 bes2 bes4 a2 g4 g2 e4
  f2 f4 f2 bes4 g(a) bes a2 a4
  bes2 d4 c2 a4 bes2 bes4 a2.
}

bassMusic = \relative c {
  f2 f4 e2 f4 d2 bes4 c2 c4
  f2 a4 g2 c,4 d2 g4 c,2 c4
  f2 d4 a2 bes4 c2 c4 cis2 d4
  g,2 g4 a2 d4 g,2 c4 f2.
}

firstverse =\lyricmode {
  \set stanza = "1. "
  Shep- herds came, their prai- ses bring- ing,
  Who had heard the an- gels sing- ing,
  'Far from you be fear un- ru- ly,
  Christ is King of Glo- ry born.'
}

secondverse = \lyricmode {
  \set stanza = "2. "
  Sa- ges, whom a star had gui- ded,
  In- cense, gold and myrrh pro- vid- ed,
  Made their sac- ri- fi- ces du- ly
  To the King of Glo- ry born.
}

thirdverse = \lyricmode {
  \set stanza = "3. "
  Je- sus, born the King of hea- ven,
  Un- to us in mer- cy gi- ven,
  Be un- to Thy me- rit tru- ly
  Hon- our, praise, and glo- ry done.
}

\book
{
  \score { % this version for the printed page
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  #(set-accidental-style 'modern)
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \voiceOne << \global \sopMusic >> }
	  \context Voice =
	  altos { \set midiInstrument = #"clarinet"
		  \voiceTwo << \global \altoMusic >> }
	>>
	\context Lyrics = firstverse { s1 }
	\context Lyrics = secondverse { s1 }
	\context Lyrics = thirdverse { s1 }
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \set midiInstrument = #"clarinet"
		     \voiceOne <<\global \tenorMusic >> }
	    \context Voice =
	    basses { \set midiInstrument = #"clarinet"
		     \voiceTwo <<\global \bassMusic >> }
	  >>
	}
	\context Lyrics = firstverse \lyricsto sopranos {\firstverse}
	\context Lyrics = secondverse \lyricsto sopranos {\secondverse}
	\context Lyrics = thirdverse \lyricsto sopranos {\thirdverse}
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
  \score { % manually unfold everything for the midi file
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \voiceOne {\global \sopMusic \sopMusic \sopMusic} }
	  \context Voice =
	  altos { \set midiInstrument = #"clarinet"
		  \voiceTwo {\global \altoMusic \altoMusic \altoMusic} }
	>>
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \set midiInstrument = #"clarinet"
		     \voiceOne {\global \tenorMusic \tenorMusic \tenorMusic } }
	    \context Voice =
	    basses { \set midiInstrument = #"clarinet"
		     \voiceTwo {\global \bassMusic \bassMusic \bassMusic } }
	  >>
	}
	\context Lyrics = firstverse \lyricsto sopranos {\firstverse \secondverse \thirdverse}
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
	tempoWholesPerMinute = #(ly:make-moment 144 4)
      }
    }
  }
}
  
