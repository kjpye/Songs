\version "2.25.9"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key f \major
  \time 3/4
}

sopMusic = \relative c'' {
  \partial 4
  \repeat volta 3 {
    c4 c4. bes8 a4 a g f f e d c2
    c4 c4. d8 c4 c g' e d c f a2
    c4 c4. bes8 a4 a g f f e d c2
    c4 bes'4. a8 g4 a g f g d e f2
    r4 r2
  }
}

altoMusic = \relative c'' {
  \partial 4
  \repeat volta 3 {
    a4 a4. g8 f4 f e f d c bes a2
    a4 bes4. bes8 bes4 bes bes bes bes a c f2
    a4 a4. g8 f4 f e f d c bes a2
    c4 g'4. f8 e4 f e f d bes bes a2
    r4 r2
  }
}

tenorMusic = \relative c' {
  \partial 4
  \repeat volta 3 {
    c4 a4. bes8 c4 c c c bes g f f2
    f4 e4. f8 e4 e e g f f a c2
    c4 a4. bes8 c4 c c c bes g f f2
    a4 c4. c8 c4 c c c bes g g f2
    r4 r2
  }
}

bassMusic = \relative c' {
  \partial 4
  \repeat volta 3 {
    f,4 f4. f8 f4 f, g a bes c d f2
    f4 c4. c8 c4 c c e f f f f2
    f4 f4. f8 f4 f, g a bes c d f2
    f4 c4. d8 e4 f g a bes bes, c f,2
    r4 r2
  }
}

firstverse =\lyricmode {
  \set stanza = "p 1. "
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
  \set stanza = "mp 2. "
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
  \set stanza = "mf 3. "
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
    title = "Away in a Manger"
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
	\Staff \override VerticalAxisGroup.minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
  \score {
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
      \tempo 4 = 100
    }
  }
}
