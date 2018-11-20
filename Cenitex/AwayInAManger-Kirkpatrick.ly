\version "2.13.53"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key f \major
  \time 3/4
}

sopMusic = \relative c' {
  \partial 4
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  \repeat volta 3 {
    c4
    f4 f g8(a)
    f4 f a8(bes)
    c4 c d
    bes2 \bar "" \break g8(a)
    bes4 bes c
    a4 a f8(a)
    g4 d f
    e2 \bar "" \break c4
    f4 f g8(a)
    f4 f a8(bes)
    c4 c d
    bes2 \bar "" \break g8(a)
    bes4 bes c
    a4 a f8(a)
    g4 d e
    f2
  }
}

altoMusic = \relative c' {
  \partial 4
  \repeat volta 3 {
    c4
    c4 c d8(e)
    f4 c f8(g)
    a4 a a
    g2 d4
    g8(a) g(f) g4
    f4 c f4
    d4. c8 d4
    c2 c4
    c4. c8 d(e)
    f8(d) c4 f8(g)
    a8(bes) a(g) f(e)
    d2 d4
    g8(f) g(e) f(g)
    a8(g) f(e) d4
    d8(c) d4 c8(bes)
    a2
  }
}

tenorMusic = \relative c' {
  \partial 4
  \repeat volta 3 {
    c8(bes)
    a4 a bes8(c)
    a4 a c
    f4. f8 e4
    d4(c) bes8(a)
    g4 c g
    c4 c d
    b4 a b
    c2 c8(bes)
    c8(bes) a4 bes8(c)
    a8(bes) c(d) e(d)
    c4 f,8(g) a4
    bes8(c d c) bes(a)
    g4 c g
    c4 c a
    d4 c8(bes) a(g)
    f2
  }
}

bassMusic = \relative c' {
  \partial 4
  \repeat volta 3 {
    a8(g)
    f4 f f
    f4 f f
    f4 f f
    f2 f4
    e4 e e
    f4 e d
    g4 g g
    c,2 c'8(bes)
    a8(g) f(e) d(c)
    f8(g) a(bes) c(bes)
    a8(g) f(e) d(f)
    g8(a bes a) g(f)
    e8(d) e(c) d(e)
    f8(g) a4 d,8(c)
    bes4 g c
    f,2
  }
}

firstverse =\lyricmode {
  \set stanza = "pp 1. "
  A- way in a man- ger, no crib for a bed,
  The lit- tle Lord Je- sus laid down his sweet head.
  The stars in the bright sky looked down where he lay,
  The lit- tle Lord Je- sus a- sleep on the hay.
}

Mfirstverse =\lyricmode {
  "/A" "way " "in " "a " "man" "ger, " "no " "crib " "for " "a " "bed,"
  "/The " "lit" "tle " "Lord " "Je" "sus " "laid " "down " "his " "sweet " "head."
  "/The " "stars " "in " "the " "bright " "sky " "looked " "down " "where " "he " "lay,"
  "/The " "lit" "tle " "Lord " "Je" "sus " "a" "sleep " "on " "the " "hay."
}

secondverse = \lyricmode {
  \set stanza = "p 2. "
  The cat- tle are low- ing, the ba- by a- wakes,
  But lit- tle Lord Je- sus no cry- ing he makes.
  I love thee, Lord Je- sus! Look down from the sky,
  And stay by my side un- til morn- ing is nigh.
}

Msecondverse = \lyricmode {
  "\The " "cat" "tle " "are " "low" "ing, " "the " "ba" "by " "a" "wakes,"
  "/But " "lit" "tle " "Lord " "Je" "sus " "no " "cry" "ing " "he " "makes."
  "/I " "love " "thee, " "Lord " "Je" "sus! " "Look " "down " "from " "the " "sky,"
  "/And " "stay " "by " "my " "side " "un" "til " "morn" "ing " "is " "nigh."
}

thirdverse = \lyricmode {
  \set stanza = "pp 3. "
  Be near me, Lord Je- sus, I ask thee to stay
  Close by me for e- ver, and love me, I pray.
  Bless all the dear chil- dren in thy ten- der care,
  And fit us for hea- ven, to live with thee there.
}

Mthirdverse = \lyricmode {
  "\Be " "near " "me, " "Lord " "Je" "sus, " "I " "ask " "thee " "to " "stay"
  "/Close " "by " "me " "for " "e" "ver, " "and " "love " "me, " "I " "pray."
  "/Bless " "all " "the " "dear " "chil" "dren " "in " "thy " "ten" "der " "care,"
  "/And " "fit " "us " "for " "hea" "ven, " "to " "live " "with " "thee " "there."
}

\book
{
  \header {
    title     = "Away in a Manger"
    composer  = "W. J. Kirkpatrick (1838-1920)"
    arranger  = "arr. David Willcocks"
    poet      = "anon."
    copyright = \today
  }
  \score {
    \context ChoirStaff <<
      \context Staff = women <<
	\context Voice =
	sopranos { \voiceOne << \global \sopMusic >> }
	\context Voice =
	altos { \voiceTwo << \global \altoMusic >> }
      >>
      \context Lyrics = firstverse { s1 }
      \context Lyrics = secondverse { s1 }
      \context Lyrics = thirdverse { s1 }
      \context Staff = men <<
	\clef bass
	\context Voice =
	tenors { \voiceOne <<\global \tenorMusic >> }
	\context Voice =
	basses { \voiceTwo <<\global \bassMusic >> }
      >>
      \context Lyrics = firstverse \lyricsto basses \firstverse
      \context Lyrics = secondverse \lyricsto basses \secondverse
      \context Lyrics = thirdverse \lyricsto basses \thirdverse
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup #'minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
  \score { % karaoke
    \context ChoirStaff <<
      \context Staff = women <<
	\context Voice =
	sopranos { \voiceOne << \global \unfoldRepeats \sopMusic >> }
	\context Voice =
	altos { \voiceTwo << \global \unfoldRepeats \altoMusic >> }
      >>
      \context Lyrics = firstverse { s1 }
      \context Lyrics = secondverse { s1 }
      \context Lyrics = thirdverse { s1 }
      \context Staff = men <<
	\clef bass
	\context Voice =
	tenors { \voiceOne <<\global \unfoldRepeats \tenorMusic >> }
	\context Voice =
	basses { \voiceTwo <<\global \unfoldRepeats \bassMusic >> }
      >>
      \context Lyrics = firstverse \lyricsto basses { \Mfirstverse \Msecondverse \Mthirdverse }
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
  \score { % soprano
    \context ChoirStaff <<
      \context Staff = women <<
	\context Voice =
	sopranos { \voiceOne << \global \unfoldRepeats \sopMusic >> }
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
  \score { % alto
    \context ChoirStaff <<
      \context Staff = women <<
	\context Voice =
	altos { \voiceTwo << \global \unfoldRepeats \altoMusic >> }
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
  \score { % tenor
    \context ChoirStaff <<
      \context Staff = men <<
	\clef bass
	\context Voice =
	tenors { \voiceOne <<\global \unfoldRepeats \tenorMusic >> }
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
  \score { % bass
    \context ChoirStaff <<
      \context Staff = men <<
	\clef bass
	\context Voice =
	basses { \voiceTwo <<\global \unfoldRepeats \bassMusic >> }
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
