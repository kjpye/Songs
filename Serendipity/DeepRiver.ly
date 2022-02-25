\version "2.18.2"
%\include "../include/merge-rests.ly"

#(set-global-staff-size 19)

\header {
  title    = "Deep River"
%  poet     = "Joseph M. Scriven"
%  composer = "Charles Crozat Converse"
}

\layout {
  ragged-last-bottom = ##f
}

global = {
  \key ees \major
  \time 4/4
}

sopA = \relative {
    g'2(~g8 f ees4)
    f4 c2 ees4
    ees4 ees ees'4. c8
    bes4 g2(f4)
    g2(g8 f ees4)
    f4 c ees4. ees8
    ees8. ees16 g4 f8. ees16 c8. c16
    ees4 ees2.^\markup{\italic FINE}
}

sopB = \relative {
  c''8 c4 d8(c) bes g4
  bes4(g2)bes8. bes16
  c4(ees) d(c)
  bes4(g2) bes4
  c4(ees) d(c)
  bes4(g2) bes4
  c4(ees) d(c)
  bes4(g2) bes4
  g8. g16 g8. g16 g8(f) ees f
  g8(f4) ees8g8(f4) ees8
  g2~g8 f ees f
  g4(^\markup{\italic{D.C. al FINE}} bes2.)
  \bar"|."
}

sop = \relative c'' {
  \global
  \voiceOne
  \repeat volta 2 {
    \sopA
  }
  \sopB
}

altoA = \relative {
  ees'2 ees
  c4 c2 c4
  bes4 bes g'4. g8
  d4 d2.
  bes4(des2.)
  c4 c c4. c8
  c8. c16 ees4 c8. c16 c8. c16
  bes4 bes2.
}

altoB = \relative {
  ees'8 ees4 ees8 ees4 ees
  d2. d8. d16
  ees4(g) f(ees)
  d2. d4
  ees4(g) f(ees)
  d2. d4
  ees4(g) f(ees)
  d2. d4
  des8. des16 des8. des16 c4 c8 c
  c4. c8 c4. c8
  ees2~ees8 c c c
  d1
  \bar"|."
}

tenorA = \relative {
  bes2(bes8 aes g4)
  aes4 aes2 aes4
  g4 g c4. c8
  bes4 bes2(aes4)
  g2 bes8(aes g4)
  bes4 bes bes4. bes8
  g8. g16 c4 aes8. aes16 aes8. aes16
  g4 g2.
}

tenorB = \relative {
  g8 g4 g8 g4 c
  bes2. bes8. bes16
  g2 g
  bes2. bes4
  g2 a
  bes2. bes4
  g2 g
  bes2. bes4
  bes8. bes16 bes8. bes16 aes4 g8 g
  aes4. g8 aes4. c8 c4(a4~a8) a a a
  bes4(aes2.)
  \bar"|."
}

bassA = \relative {
  ees2 ees
  aes,4 aes2 aes'4
  ees4 ees ees4. ees8
  g4 g(bes,2)
  ees2 ees
  aes,4 aes aes4. aes8
  c8. c16 c4 f8. f16 bes,8. bes16
  ees4 ees2.
}

bassB = \relative {
  c8 c4 c8 c4 c
  g'2. g8. g16
  c,2 c
  g'2. g4
  c,2 f
  g2. g4
  c,2 c
  g'2. g4
  ees8. ees16 ees8. ees16 aes,4 c8 c
  aes4. c8 f4. aes8
  a4(f4~f8)f8 f f
  bes,1
  \bar"|."
}

trebleaccOne = \relative c' {
  \global
  \bar"|."
}

trebleaccTwo = \relative c' {
  \global
  \bar"|."
}

bassaccOne = \relative c' {
  \global
  \bar"|."
}

bassaccTwo = \relative c {
  \global
  \bar"|."
}

textOne = \lyricmode {
  Deep Riv- er, my home is o- ver Jor- dan,
  Deep Riv- er, Lord, I want to cross o- ver in- to camp- ground,
  O don't you want to go to the gos- pel feast,
  That prom- ised land where all is peace,
  O don't you want to go to that prom- ised land
  that land where all is peace?
}

textSopMidi = \lyricmode {
  "Deep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground, "
  "\nDeep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground, "
  "\nO " "don't " "you " "want " "to " "go " "to " "the " gos "pel " "feast, "
  "\nThat " prom "ised " "land " "where " "all " "is " "peace, "
  "\nO " "don't " "you " "want " "to " "go " "to " "that " prom "ised " "land "
  "\nthat " "land " "where " "all " "is " "peace? "
  "\nDeep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground. "
}

textAltoMidi = \lyricmode {
  "Deep " "Deep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground, "
  "\nDeep " "Deep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground, "
  "\nO " "don't " "you " "want " "to " "go " "to " "the " gos "pel " "feast, "
  "\nThat " prom "ised " "land " "where " "all " "is " "peace, "
  "\nO " "don't " "you " "want " "to " "go " "to " "that " prom "ised " "land "
  "\nthat " "land " "where " "all " "is " "peace? "
  "\nDeep " "Deep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground. "
}

textBass = \lyricmode {
  Deep, deep
  _ _ _ _ _ _ _ _ _
  Deep, deep
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

textSingle = \lyricmode {
  Deep Riv- er, my home is o- ver Jor- dan,
  Deep Riv- er, Lord, I want to cross o- ver in- to camp- ground,
  Deep Riv- er, my home is o- ver Jor- dan,
  Deep Riv- er, Lord, I want to cross o- ver in- to camp- ground,
  O don't you want to go to the gos- pel feast,
  That prom- ised land where all is peace,
  O don't you want to go to that prom- ised land
  that land where all is peace?
  Deep Riv- er, my home is o- ver Jor- dan,
  Deep Riv- er, Lord, I want to cross o- ver in- to camp- ground.
}

textBassMidi = \lyricmode {
  "Deep, " "deep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep, " "deep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground, "
  "\nDeep, " "deep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep, " "deep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground, "
  "\nO " "don't " "you " "want " "to " "go " "to " "the " gos "pel " "feast, "
  "\nThat " prom "ised " "land " "where " "all " "is " "peace, "
  "\nO " "don't " "you " "want " "to " "go " "to " "that " prom "ised " "land "
  "\nthat " "land " "where " "all " "is " "peace? "
  "\nDeep, " "deep " Riv "er, " "my " "home " "is " o "ver " Jor "dan, "
  "\nDeep, " "deep " Riv "er, " "Lord, " "I " "want " "to " "cross " o "ver " in "to " camp "ground. "
}

textBassSingle = \lyricmode {
  Deep, deep
  _ _ _ _ _ _ _ _ _
  Deep, deep
  _ _ _ _ _ _ _ _ _ _ _ _ _
  Deep, deep
  _ _ _ _ _ _ _ _ _
  Deep, deep
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  Deep, deep
  _ _ _ _ _ _ _ _ _
  Deep, deep
  _ _ _ _ _ _ _ _ _ _ _ _ _
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice = sop {\global \voiceOne \repeat volta 2 {\sopA } \sopB  }
	\new Voice = alt {\global \voiceTwo \repeat volta 2 {\altoA} \altoB }
      >>
      \new Lyrics \lyricsto sop \textOne
      \new Staff = men <<
	\new Voice = tenor {\clef "bass" \global \voiceOne \repeat volta 2 {\tenorA} \tenorB }
	\new Voice = bass  {\clef "bass" \global \voiceTwo \repeat volta 2 {\bassA } \bassB  }
      >>
      \new Lyrics \with {alignAboveContext = men} \lyricsto bass \textBass
    >>
    
    \layout {
      \context {
	\Staff
	\override DynamicText.direction = #UP
	\override DynamicText.staff-padding = #0
	\override DynamicLineSpanner.direction = #UP
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice = sop {\global \voiceOne \sopA  \sopA  \sopB  \sopA  }
	\new Voice = alt {\global \voiceTwo \altoA \altoA \altoB \altoA }
      >>
      \new Lyrics \lyricsto sop \textSingle
      \new Staff = men <<
	\new Voice = ten {\clef "bass" \global \voiceOne \tenorA \tenorA \tenorB \tenorA }
	\new Voice = bas {\clef "bass" \global \voiceTwo \bassA  \bassA  \bassB  \bassA  }
      >>
      \new Lyrics \with {alignAboveContext = men} \lyricsto bas \textBassSingle
    >>
    
    \layout {
      \context {
	\Staff
	\override DynamicText.direction = #UP
	\override DynamicText.staff-padding = #0
	\override DynamicLineSpanner.direction = #UP
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice = sop {\global \voiceOne \sopA  \sopA  \sopB  \sopA  }
	\new Voice = alt {\global \voiceTwo \altoA \altoA \altoB \altoA }
      >>
      \new Lyrics \lyricsto sop \textSingle
      \new Staff = men <<
	\new Voice = ten {\clef "bass" \global \voiceOne \tenorA \tenorA \tenorB \tenorA }
	\new Voice = bas {\clef "bass" \global \voiceTwo \bassA  \bassA  \bassB  \bassA  }
      >>
      \new Lyrics \with {alignAboveContext = men} \lyricsto bas \textBassSingle
    >>
    
    \layout {
      \context {
	\Staff
	\override DynamicText.direction = #UP
	\override DynamicText.staff-padding = #0
	\override DynamicLineSpanner.direction = #UP
      }
    }
  }
}

tempoTrack = {
  \tempo 4=100
}

\book {
  \bookOutputSuffix "midi"
  \score {
    \new ChoirStaff <<
      \new Staff = soprano <<
        \new Voice \tempoTrack
	\new Voice = sop {\global \voiceOne \sopA  \sopA  \sopB  \sopA  }
        \addlyrics \textSopMidi
      >>
      \new Staff = alto <<
	\new Voice = alt {\global \voiceTwo \altoA \altoA \altoB \altoA }
      >>
      \new Staff = ten <<
	\new Voice = ten {\clef "bass" \global \voiceOne \tenorA \tenorA \tenorB \tenorA }
      >>
      \new Staff = bass <<
	\new Voice = bas {\clef "bass" \global \voiceTwo \bassA  \bassA  \bassB  \bassA  }
      >>
    >>
    
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
    \new ChoirStaff <<
      \new Staff = soprano <<
        \new Voice \tempoTrack
	\new Voice = sop {\global \voiceOne \sopA  \sopA  \sopB  \sopA  }
      >>
      \new Staff = alto <<
	\new Voice = alt {\global \voiceTwo \altoA \altoA \altoB \altoA }
        \addlyrics \textAltoMidi
      >>
      \new Staff = ten <<
	\new Voice = ten {\clef "bass" \global \voiceOne \tenorA \tenorA \tenorB \tenorA }
      >>
      \new Staff = bass <<
	\new Voice = bas {\clef "bass" \global \voiceTwo \bassA  \bassA  \bassB  \bassA  }
      >>
    >>
    
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
    \new ChoirStaff <<
      \new Staff = soprano <<
        \new Voice \tempoTrack
	\new Voice = sop {\global \voiceOne \sopA  \sopA  \sopB  \sopA  }
      >>
      \new Staff = alto <<
	\new Voice = alt {\global \voiceTwo \altoA \altoA \altoB \altoA }
      >>
      \new Staff = ten <<
	\new Voice = ten {\clef "bass" \global \voiceOne \tenorA \tenorA \tenorB \tenorA }
      >>
      \new Staff = bass <<
	\new Voice = bas {\clef "bass" \global \voiceTwo \bassA  \bassA  \bassB  \bassA  }
        \addlyrics \textBassMidi
      >>
    >>
    
    \midi {}
  }
}
