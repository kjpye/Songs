\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key c \major
  \time 6/8
}

sopMusic = \relative c'' {
c4. c c c 
\set Staff.timeSignatureFraction = #'(6 . 8)
c8 c c c8 c c c8 c c c8 c c c4. c
\set Staff.timeSignatureFraction = #'(6 . 8)
c c c c
}

altoMusic = \relative c' {
f4. f f f
\set Staff.timeSignatureFraction = #'(6 . 8)
f8 f f f8 f f f8 f f f8 f f f4. f
\set Staff.timeSignatureFraction = #'(6 . 8)
f f f f
}

tenorMusic = \relative c {
  \time 6/8
  f4. f f f
  \set Staff.timeSignatureFraction = #'(2 . 4)
  \compressMusic #'(3 . 2) {
    f8 f f f f f  f f f f f f
  }
  \set Staff.timeSignatureFraction = #'(6 . 8)
  f4. f f f
}

bassMusic = \relative c {
  \time 6/8
  c4. c c c
  \set Staff.timeSignatureFraction = #'(2 . 4)
  \compressMusic #'(3 . 2) {
    c8 c c c c c c c c c c c
  }
  \set Staff.timeSignatureFraction = #'(6 . 8)
  c4. c c c
}

\book
{
  \header {
    title = "Sussex Carol"
    copyright = \today
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  \context Voice =
	  sopranos { \voiceOne << \global \sopMusic >> }
	  \context Voice =
	  altos { \voiceTwo << \global \altoMusic >> }
	>>
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \voiceOne <<\global \tenorMusic >> }
	    \context Voice =
	    basses { \voiceTwo <<\global \bassMusic >> }
	  >>
	}
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
}
  
