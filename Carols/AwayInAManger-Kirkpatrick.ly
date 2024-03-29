\version "2.25.9"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

global = {
  \key f \major
  \time 3/4
  \tempo 4=90
}

soprano = \relative c' {
  \partial 4
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  c4
  f4 f g8(a)
  f4 f a8(bes)
  c4 c d
  bes2 \bar "|" \break g8(a)
  bes4 bes c
  a4 a f8(a)
  g4 d f
  e2 \bar "|" \break c4
  f4 f g8(a)
  f4 f a8(bes)
  c4 c d
  bes2 \bar "|" \break g8(a)
  bes4 bes c
  a4 a f8(a)
  g4 d e
  f2 \break
}

alto = \relative c' {
  \partial 4
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

tenor = \relative c' {
  \partial 4
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

bass = \relative c' {
  \partial 4
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

firstverse =\lyricmode {
  \set stanza = \markup{\dynamic pp \bold "1. "}
  A -- way in a man -- ger, no crib for a bed,
  The lit -- tle Lord Je -- sus laid down his sweet head.
  The stars in the bright sky looked down where he lay,
  The lit -- tle Lord Je -- sus a -- sleep on the hay.
}

secondverse = \lyricmode {
  \set stanza = \markup{\dynamic p \bold "2. "}
  The cat -- tle are low -- ing, the ba -- by a -- wakes,
  But lit -- tle Lord Je -- sus no cry -- ing he makes.
  I love thee, Lord Je -- sus! Look down from the sky,
  And stay by my side un -- til morn -- ing is nigh.
}

thirdverse = \lyricmode {
  \set stanza = \markup{\dynamic pp \bold "3. "}
  Be near me, Lord Je -- sus, I ask thee to stay
  Close by me for e -- ver, and love me, I pray.
  Bless all the dear chil -- dren in thy ten -- der care,
  And fit us for hea -- ven, to live with thee there.
}

wordsMidi = \lyricmode {
  "A" "way " "in " "a " "man" "ger, " "no " "crib " "for " "a " "bed,"

  "\nThe " "lit" "tle " "Lord " "Je" "sus " "laid " "down " "his " "sweet " "head."
  "\nThe " "stars " "in " "the " "bright " "sky " "looked " "down " "where " "he " "lay,"
  "\nThe " "lit" "tle " "Lord " "Je" "sus " "a" "sleep " "on " "the " "hay.\n"

  "\nThe " "cat" "tle " "are " "low" "ing, " "the " "ba" "by " "a" "wakes,"
  "\nBut " "lit" "tle " "Lord " "Je" "sus " "no " "cry" "ing " "he " "makes."
  "\nI " "love " "thee, " "Lord " "Je" "sus! " "Look " "down " "from " "the " "sky,"
  "\nAnd " "stay " "by " "my " "side " "un" "til " "morn" "ing " "is " "nigh.\n"

  "\nBe " "near " "me, " "Lord " "Je" "sus, " "I " "ask " "thee " "to " "stay"
  "\nClose " "by " "me " "for " "e" "ver, " "and " "love " "me, " "I " "pray."
  "\nBless " "all " "the " "dear " "chil" "dren " "in " "thy " "ten" "der " "care,"
  "\nAnd " "fit " "us " "for " "hea" "ven, " "to " "live " "with " "thee " "there."
}

\header {
  title     = "Away in a Manger"
  composer  = "W. J. Kirkpatrick (1838-1920)"
  arranger  = "arr. David Willcocks"
  poet      = "anon."
  copyright = \today
}

\book
{
  \bookOutputSuffix "repeat"
  \score {
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice { \voiceOne \global \soprano \bar "|." }
	\new Voice { \voiceTwo \global \alto }
        \addlyrics \firstverse
        \addlyrics \secondverse
        \addlyrics \thirdverse
      >>
      \context Staff = men <<
	\clef bass
	\new Voice { \voiceOne \global \tenor }
        \new Voice { \voiceTwo \global \bass  }
      >>
    >>
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup.minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
}

\book
{
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice { \voiceOne \global \repeat unfold 3 \soprano \bar "|." }
	\new Voice { \voiceTwo \global \alto \section \break \alto \section \break \alto }
        \addlyrics {\firstverse \secondverse \thirdverse}
      >>
      \context Staff = men <<
	\clef bass
	\new Voice { \voiceOne \global \tenor \section \tenor \section \tenor }
	\new Voice { \voiceTwo \global \repeat unfold 3 \bass }
      >>
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup.minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
}

\book
{
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice { \voiceOne \global \repeat unfold 3 \soprano \bar "|." }
	\new Voice { \voiceTwo \global \alto \section \break \alto \section \break \alto }
        \addlyrics {\firstverse \secondverse \thirdverse}
      >>
      \context Staff = men <<
	\clef bass
	\new Voice { \voiceOne \global \tenor \section \tenor \section \tenor }
	\new Voice { \voiceTwo \global \repeat unfold 3 \bass }
      >>
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup.minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
}

\book
{
  \bookOutputSuffix "singlepage-sop"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = soprano <<
	\new Voice {\global \repeat unfold 3 \soprano \bar "|." }
        \addlyrics {\firstverse \secondverse \thirdverse}
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
	\new Voice {\global \alto \section \break \alto \section \break \alto }
        \addlyrics {\tiny \firstverse \secondverse \thirdverse}
      >>
      \context Staff = tenor <<
        \magnifyStaff #4/7
	\clef "treble_8"
	\new Voice {\global \tenor \section \tenor \section \tenor }
        \addlyrics {\tiny \firstverse \secondverse \thirdverse}
      >>
      \context Staff = bass <<
        \magnifyStaff #4/7
	\clef bass
	\new Voice {\global \repeat unfold 3 \bass }
        \addlyrics {\tiny \firstverse \secondverse \thirdverse}
      >>
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup.minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
}

\book
{
  \bookOutputSuffix "singlepage-alto"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = soprano <<
        \magnifyStaff #4/7
	\new Voice {\global \repeat unfold 3 \soprano \bar "|." }
        \addlyrics {\tiny \firstverse \secondverse \thirdverse}
      >>
      \new Staff = alto <<
	\new Voice {\global \alto \section \break \alto \section \break \alto }
        \addlyrics {\firstverse \secondverse \thirdverse}
      >>
      \context Staff = tenor <<
        \magnifyStaff #4/7
	\clef "treble_8"
	\new Voice {\global \tenor \section \tenor \section \tenor }
        \addlyrics {\tiny \firstverse \secondverse \thirdverse}
      >>
      \context Staff = bass <<
        \magnifyStaff #4/7
	\clef bass
	\new Voice {\global \repeat unfold 3 \bass }
        \addlyrics {\tiny \firstverse \secondverse \thirdverse}
      >>
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup.minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
}

\book
{
  \bookOutputSuffix "singlepage-tenor"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = soprano <<
        \magnifyStaff #4/7
	\new Voice {\global \repeat unfold 3 \soprano \bar "|." }
        \addlyrics {\tiny \firstverse \secondverse \thirdverse}
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
	\new Voice {\global \alto \section \break \alto \section \break \alto }
        \addlyrics {\tiny \firstverse \secondverse \thirdverse}
      >>
      \context Staff = tenor <<
	\clef "treble_8"
	\new Voice {\global \tenor \section \tenor \section \tenor }
        \addlyrics {\firstverse \secondverse \thirdverse}
      >>
      \context Staff = bass <<
        \magnifyStaff #4/7
	\clef bass
	\new Voice {\global \repeat unfold 3 \bass }
        \addlyrics {\tiny \firstverse \secondverse \thirdverse}
      >>
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup.minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
}

\book
{
  \bookOutputSuffix "singlepage-bass"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = soprano <<
        \magnifyStaff #4/7
	\new Voice {\global \repeat unfold 3 \soprano \bar "|." }
        \addlyrics {\tiny \firstverse \secondverse \thirdverse}
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
	\new Voice {\global \alto \section \break \alto \section \break \alto }
        \addlyrics {\tiny \firstverse \secondverse \thirdverse}
      >>
      \context Staff = tenor <<
        \magnifyStaff #4/7
	\clef "treble_8"
	\new Voice {\global \tenor \section \tenor \section \tenor }
        \addlyrics {\tiny \firstverse \secondverse \thirdverse}
      >>
      \context Staff = bass <<
	\clef bass
	\new Voice {\global \repeat unfold 3 \bass }
        \addlyrics {\firstverse \secondverse \thirdverse}
      >>
    >>
    
    \layout {
      \context {
				% a little smaller so lyrics
				% can be closer to the staff
	\Staff \override VerticalAxisGroup.minimum-Y-extent = #'(-3 . 3)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score { % karaoke
    \new ChoirStaff <<
      \new Staff = soprano <<
	\new Voice { \global \repeat unfold 3 \soprano \bar "|." }
        \addlyrics \wordsMidi
      >>
      \new Staff = alto <<
	\new Voice { \global \repeat unfold 3 \alto }
      >>
      \new Staff = tenor <<
	\clef "treble_8"
	\new Voice { \global \repeat unfold 3 \tenor }
      >>
      \new Staff = bass <<
	\clef bass
	\new Voice { \global \repeat unfold 3 \bass  }
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
      \tempo 4 = 100
    }
  }
}
