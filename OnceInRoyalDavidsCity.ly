\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key g \major
  \time 4/4
}

sopMusic = \relative c' {
  d4 fis
  g4. g8 g(fis) g(a)
  a4 g \bar "||" g b
  d4. b8 b a g fis
  g2 \bar "||"
  d4 fis
  g4. g8 g(fis) g(a)
  a4 g \bar "||" g b
  d4. b8 b a g fis
  g2 \bar "||"
  e'4 e
  d4. g,8 c4 c
  \slurDashed b4(b) \slurSolid \bar "||" e e
  d4. b8 b(a) g(fis)
  \slurDashed g4( g)
  \bar "||"
}

altoMusic = \relative c' {
  d4 fis4
  d4 d cis cis
  d8(c) b4 \bar "||" d4 g
  d4 d e d
  d2
  d4 fis4
  d4 d cis cis
  d8(c) b4 \bar "||" d4 g
  d4 d e d
  d2
  e8(fis) g(a)
  d,4 d e fis
  \slurDashed g(fis) \slurSolid \bar "||" e8(fis) g(a)
  d,8(fis g) g e4 d
  \slurDashed d4( d)
}

tenorMusic = \relative c' {
  b4 c
  d b a g
  fis4 g \bar "||" b d
  a4 b8(d) d(c) b(a)
  b2
  b4 c
  d b a g
  fis4 g \bar "||" b d
  a4 b8(d) d(c) b(a)
  b2
  g4 c
  b4 b c d
  \slurDashed d(d) \slurSolid \bar "||" c c
  b8(c d) d d(c) b(a)
  \slurDashed b4(b)
}

bassMusic = \relative c' {
  b4 a
  b g e a,
  d4 g, \bar "||" b' g
  fis g c, d
  g2
  b4 a
  b g e a,
  d4 g, \bar "||" b' g
  fis g c, d
  g2
  c,8(d) e(fis)
  g4 b a d,
  \slurDashed g4(g) \slurSolid \bar "||" c,8(d) e(fis)
  g8( a b) g c,4 d
  \slurDashed g,4(g)
}

words = \lyricmode {
  \set stanza = "1. "
  Once in Roy- al Dav- id's ci- ty
  Stood a low- ly cat- tle shed,
  Where a mo- ther laid her ba- by
  In a man- ger for his bed:
  Ma- ry was that mo- ther mild,
  Je- sus Christ her lit- tle child.
  \set stanza = "2. "
  He came down to earth from hea- ven
  Who is God and Lord of all,
  And his shel- ter was a sta- ble,
  And his cra- dle was a stall:
  With the poor and mean and low-ly,
  Lived on earth our Sa- viour ho-ly.
  \set stanza = "5. "
  And our eyes at last shall see him,
  Through his own re- deem- ing love,
  For that child so dear and gen- tle
  Is our Lord in heaven a- bove:
  And he leads his chil- dren on
  To the place where he is gone.
  \set stanza = "6. "
  Not in that poor low- ly sta- ble,
  With the ox- en stand- ing by,
  We shall see him: but in hea- ven
  Set at God's right hand on high:
  Where like stars his chil- dren crowned
  All in white shall wait a- round.
}

\book
{
  \header {
    title = "Once in Royal David's City"
    copyright = \today
  }
  \score {
    <<
      \context ChoirStaff <<
	\context Staff = women <<
	  #(set-accidental-style 'modern)
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \voiceOne << {\global \partial 2 \sopMusic \sopMusic \sopMusic \sopMusic r2} >> }
	  \context Voice =
	  altos { \set midiInstrument = #"clarinet"
		  \voiceTwo <<{ \global \partial 2 \altoMusic \altoMusic \altoMusic \altoMusic r2}>> }
	>>
	\context Lyrics = words { s1 }
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \set midiInstrument = #"clarinet"
		     \voiceOne <<{\global \partial 2 \tenorMusic \tenorMusic \tenorMusic \tenorMusic r2} >> }
	    \context Voice =
	    basses { \set midiInstrument = #"clarinet"
		     \voiceTwo <<{\global \partial 2 \bassMusic \bassMusic \bassMusic \bassMusic r2} >> }
	  >>
	}
	\context Lyrics = words \lyricsto altos { \words }
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
	  #(set-accidental-style 'modern)
	  \context Voice =
	  sopranos { \set midiInstrument = #"clarinet"
		     \voiceOne << {\global \partial 2 \sopMusic \sopMusic \sopMusic \sopMusic r2} >> }
	  \context Voice =
	  altos { \set midiInstrument = #"clarinet"
		  \voiceTwo { \global \partial 2 \altoMusic \altoMusic \altoMusic \altoMusic r2 } }
	>>
	\context Lyrics = words { s1 }
	\context Staff = men {
	  <<
	    \clef bass
	    \context Voice =
	    tenors { \set midiInstrument = #"clarinet"
		     \voiceOne << {\global \partial 2 \tenorMusic \tenorMusic \tenorMusic  \tenorMusic r2} >> }
	    \context Voice =
	    basses { \set midiInstrument = #"clarinet"
		     \voiceTwo <<{\global \partial 2 \bassMusic \bassMusic \bassMusic \bassMusic r2} >> }
	  >>
	}
	\context Lyrics = words \lyricsto altos {\words}
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
  
