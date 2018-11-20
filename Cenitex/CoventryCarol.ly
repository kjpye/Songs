\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key f \major
}

womenMusic = \relative c'' {
  \cadenzaOn
  g1 g2 fis2 \bar "|" g1 bes2 \bar "|" a2. a4 g2 \bar "|"
  fis1. \bar "|" g2 a bes \bar "|" c a \bar "|"
  g1 d'2 \bar "|" c2. c4 bes2 \bar "|" a1. \bar "|"
  g2 fis g \bar "|" c a \bar "|" bes1-\fermata \bar "|:"
% verse
  g1 g2 fis \bar "|" g1 bes2 \bar "|" a1 g2 \bar "|" fis1. \bar "|"
  g2 a bes \bar "|" c a \bar "|" g1 d'2 \bar "|"
  c1 bes2 \bar "|" a1 bes2 \bar "|" a2. a4 g2 \bar "|" f1. \bar "|"
  g2 fis g \bar "|" c a \bar "|" bes1-\fermata \bar ":|"
}

tenorMusic = \relative c' {
  d1 d2 d b1 d2 f2. f4 bes, c d1. d2 f d es d4(c)
  b1 f'2 f2. f4 d2 d1. d2 d bes es d d1-\fermata
  d1 d2 d d1 d2 f1 bes,4(c) d1. d2 f d es d4(c) b1 f'2
  f1 d2 d1 d2 f1 bes,4 c d1. d2 d bes es d d1-\fermata
}

bassMusic = \relative c' {
  g1 g2 d g,1 g'2 f2. f4 g2 d1. g2 f g c, d
  g,1 bes2 f'2. f4 g2 d1. g2 d g c, d g,1-\fermata
  f'1 g2 d g,1 g'2 f1 es2 d1. g2 f g c, d g,1 bes2
  f'1 g2 d1 g2 f2. f4 es2 d1. g2 d g c, d g,1-\fermata
}

firstverse =\lyricmode {
  \set stanza = "1. "
  O sis- ters too, How may we do
  For to pre- serve this day
  This poor young- ling,
  For whom we do sing,
  By by, lul- ly lul- lay?
}

refrain = \lyricmode {
  Lul- ly lul- la, thou lit- tle tiny child,
  By by, lul- lu lul- lay, thou lit- tle tiny child,
  By by, lul- ly lul- lay.
}

nullrefrain = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

secondverse = \lyricmode {
  \set stanza = "2. "
  He- rod the king,
  In his rag- ing,
  Char- ged he hath this day
  His men of might,
  In his _ own sight,
  All young chil- dren to slay.
}

thirdverse = \lyricmode {
  \set stanza = "3. "
  That woe is me,
  Poor child for thee!
  And ev- er morn and dat,
  For thy Part- ing
  Neith- er say nor sing
  By by, lu- ly lul- lay!
}

\book
{
  \header {
    title = "Coventry Carol"
    copyright = \today
  }
  \score {
    <<
      \override Score.VerticalAxisGroup #'remove-first = ##t
      \context ChoirStaff <<
	\context Staff = women {
	  \context Voice = women { \global \womenMusic }
	  }
	\context Lyrics = firstverse { s1 }
	\context Lyrics = secondverse { s1 }
	\context Lyrics = thirdverse { s1 }
	\context Staff = tenors {
	  <<
	    \clef "G_8"
	    \global \tenorMusic
	  >>
	}
	\context Staff = basses {
	  <<
	    \clef bass
	    \global \bassMusic
	  >>
	}
	\context Lyrics = firstverse \lyricsto women {\nullrefrain \firstverse}
	\context Lyrics = secondverse \lyricsto women {\refrain \secondverse}
	\context Lyrics = thirdverse \lyricsto women {\nullrefrain \thirdverse}
      >>
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff minimumVerticalExtent = #'(-3 . 3)
      }
      \context {
	\RemoveEmptyStaffContext
	\override RemoveEmptyVerticalGroup #'remove-first = ##t 
	% \override Score.VerticalAxisGroup #'remove-first = ##t
      }
    }
  }
}
  
