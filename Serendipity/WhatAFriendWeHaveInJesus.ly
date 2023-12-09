\version "2.25.9"
%\include "../include/merge-rests.ly"

#(set-global-staff-size 19)

\header {
  title    = "What a Friend We Have in Jesus"
  poet     = "Joseph M. Scriven"
  composer = "Charles Crozat Converse"
}

\layout {
  ragged-last-bottom = ##f
}

global = {
  \key f \major
  \time 4/4
  \tempo 4=80
}

sop = \relative c'' {
  \global
  \voiceOne
  \repeat volta 3 {
    c4. c8 d c a f | f2 d \caesura |
    c4. f8 a f c' a | g1 \caesura | \break
    c4. c8 d c a f | f2 d \caesura |
    c4. f8 a g f e | f1 \caesura | \break
    g4. fis8 g a bes g | a2 c \caesura |
    d4. d8 c a bes a | g1 \caesura | \break
    c4. c8 d c a f | f2 d \caesura |
    c4. f8 a g f e | f1 |
  }
  f1 | f1 |
  \bar"|."
}

alt = \relative c' {
  \global
  \voiceTwo
  \repeat volta 3 {
    f4. f8 f f f c | d2 bes |
    c4. c8 c c f f | e1 |
    f4. f8 f f f c | d2 bes |
    c4. c8 f c c c | c1 |
    e4. dis8 e f g e | f2 f |
    f4. f8 f f g f | e1 |
    f4. f8 f f f f | d2 bes |
    a4. c8 f c c c | c1 |
  }
  d1 | c1 |
  \bar"|."
}

ten = \relative c' {
  \global
  \voiceOne
  \repeat volta 3{
    a4. a8 bes a c a | bes2 f |
    a4. a8 a a a c | c1 |
    a4. a8 bes a c a | bes2 f |
    f4. a8 c bes a g | a1 |
    c4. c8 c c c c | c2 a |
    bes4. bes8 c c c c | c1 |
    a4. a8 bes a c a | bes2 f |
    f4. a8 c bes a g | a1 |
  }
  bes1 | a1 |
  \bar"|."
}

bas = \relative c {
  \global
  \voiceTwo
  \repeat volta 3 {
    f4. f8 f f f f | bes,2 bes |
    f'4. f8 f f f f | c1 |
    f4. f8 f f f f | bes,2 bes |
    c4. c8 c c c c | f1 |
    c4. c8 c c c c | f2 f |
    bes4. bes8 a f e f | c1 |
    f4. f8 f f f f | bes,2 bes |
    c4. c8 c c c c | f1 |
  }
  bes,1 | f'1 |
  \bar"|."
}

textOne = \lyricmode {
  \set stanza = "1."
  What a friend we have in Je -- sus,
  all our sins and griefs to bear!
  What a priv -- i -- lege to car -- ry
  e -- very thing to God in prayer!
  Oh what peace we of -- ten for -- feit!
  Oh what need -- less pain we bear!
  All be -- cause we do not car -- ry
  e -- very thing to God in prayer.
}

textTwo = \lyricmode {
  \set stanza = "2."
  Have we tri -- als and temp -- tat -- ions?
  Is there troub -- le an -- y -- where?
  We should nev -- er be dis -- cour -- aged;
  take it to the Lord in prayer!
  Can we find a friend so faith -- ful
  who will all our sor -- rows share?
  Je -- sus knows our e -- very weak -- ness;
  take it to the Lord in prayer!
}

textThree = \lyricmode {
  \set stanza = "3."
  Are we weak and heav -- y lad -- en,
  cum -- bered with a load of care?
  Prec -- ious Sav -- iour, still our ref -- uge;
  take it to the Lord in prayer!
  Do thy friends des -- pise, for -- sake thee?
  Take it to the Lord in prayer!
  In His arms He'll take and shield Thee,
  thou wilt find a sol -- ace there.
  A -- men
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "What " "a " "friend " "we " "have " "in " Je "sus, "
  "\nall " "our " "sins " "and " "griefs " "to " "bear! "
  "\nWhat " "a " priv i "lege " "to " car "ry "
  "\ne" "very " "thing " "to " "God " "in " "prayer! "
  "\nOh " "what " "peace " "we " of "ten " for "feit! "
  "\nOh " "what " need "less " "pain " "we " "bear! "
  "\nAll " be "cause " "we " "do " "not " car "ry "
  "\ne" "very " "thing " "to " "God " "in " "prayer.\n"

  \set stanza = "2."
  "\nHave " "we " tri "als " "and " temp tat "ions? "
  "\nIs " "there " troub "le " an y "where? "
  "\nWe " "should " nev "er " "be " dis cour "aged; "
  "\ntake " "it " "to " "the " "Lord " "in " "prayer! "
  "\nCan " "we " "find " "a " "friend " "so " faith "ful "
  "\nwho " "will " "all " "our " sor "rows " "share? "
  "\nJe" "sus " "knows " "our " e "very " weak "ness; "
  "\ntake " "it " "to " "the " "Lord " "in " "prayer!\n"

  \set stanza = "3."
  "\nAre " "we " "weak " "and " heav "y " lad "en, "
  "\ncum" "bered " "with " "a " "load " "of " "care? "
  "\nPrec" "ious " Sav "iour, " "still " "our " ref "uge; "
  "\ntake " "it " "to " "the " "Lord " "in " "prayer! "
  "\nDo " "thy " "friends " des "pise, " for "sake " "thee? "
  "\nTake " "it " "to " "the " "Lord " "in " "prayer! "
  "\nIn " "His " "arms " "He'll " "take " "and " "shield " "Thee, "
  "\nthou " "wilt " "find " "a " sol "ace " "there. "
  "\nA" "men "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    \new ChoirStaff <<
      \new Staff = women \with {
      }
      <<
	\new Voice \sop
	\new Voice \alt
        \addlyrics \textOne
        \addlyrics \textTwo
        \addlyrics \textThree
      >>
      \new Staff = men \with {
      }
      <<
	\new Voice = ten << \clef "bass" \ten >>
	\new Voice = bas << \clef "bass" \bas >>
      >>
    >>
    \layout { }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = women \with {
      }
      <<
	\new Voice \sop
	\new Voice \alt
        \addlyrics {\textOne \textTwo \textThree}
      >>
      \new Staff = men \with {
      }
      <<
	\new Voice = ten << \clef "bass" \ten >>
	\new Voice = bas << \clef "bass" \bas >>
      >>
    >>
    
    \layout { }
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = women \with {
      }
      <<
	\new Voice \sop
	\new Voice \alt
        \addlyrics {\textOne \textTwo \textThree}
      >>
      \new Staff = men \with {
      }
      <<
	\new Voice = ten << \clef "bass" \ten >>
	\new Voice = bas << \clef "bass" \bas >>
      >>
    >>
    
    \layout { }
  }
}

\book {
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
      \new Staff = soprano
      <<
	\new Voice \sop
        \addlyrics {\textOne \textTwo \textThree}
      >>
      \new Staff = alto
      <<
        \magnifyStaff #4/7
	\new Voice \alt
        \addlyrics {\tiny \textOne \textTwo \textThree}
      >>
      \new Staff = tenor \with {
      }
      <<
        \magnifyStaff #4/7
	\new Voice = ten << \clef "treble_8" \ten >>
        \addlyrics {\tiny \textOne \textTwo \textThree}
      >>
      \new Staff = bass \with {
      }
      <<
        \magnifyStaff #4/7
	\new Voice = bas << \clef "bass" \bas >>
        \addlyrics {\tiny \textOne \textTwo \textThree}
      >>
    >>
    \layout { }
  }
}

\book {
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
      \new Staff = soprano
      <<
        \magnifyStaff #4/7
	\new Voice \sop
        \addlyrics {\tiny \textOne \textTwo \textThree}
      >>
      \new Staff = alto
      <<
	\new Voice \alt
        \addlyrics {\textOne \textTwo \textThree}
      >>
      \new Staff = tenor \with {
      }
      <<
        \magnifyStaff #4/7
	\new Voice = ten << \clef "treble_8" \ten >>
        \addlyrics {\tiny \textOne \textTwo \textThree}
      >>
      \new Staff = bass \with {
      }
      <<
        \magnifyStaff #4/7
	\new Voice = bas << \clef "bass" \bas >>
        \addlyrics {\tiny \textOne \textTwo \textThree}
      >>
    >>
    \layout { }
  }
}

\book {
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
      \new Staff = soprano
      <<
        \magnifyStaff #4/7
	\new Voice \sop
        \addlyrics {\tiny \textOne \textTwo \textThree}
      >>
      \new Staff = alto
      <<
        \magnifyStaff #4/7
	\new Voice \alt
        \addlyrics {\tiny \textOne \textTwo \textThree}
      >>
      \new Staff = tenor \with {
      }
      <<
	\new Voice = ten << \clef "treble_8" \ten >>
        \addlyrics {\textOne \textTwo \textThree}
      >>
      \new Staff = bass \with {
      }
      <<
        \magnifyStaff #4/7
	\new Voice = bas << \clef "bass" \bas >>
        \addlyrics {\tiny \textOne \textTwo \textThree}
      >>
    >>
    \layout { }
  }
}

\book {
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
      \new Staff = soprano
      <<
        \magnifyStaff #4/7
	\new Voice \sop
        \addlyrics {\tiny \textOne \textTwo \textThree}
      >>
      \new Staff = alto
      <<
        \magnifyStaff #4/7
	\new Voice \alt
        \addlyrics {\tiny \textOne \textTwo \textThree}
      >>
      \new Staff = tenor \with {
      }
      <<
        \magnifyStaff #4/7
	\new Voice = ten << \clef "treble_8" \ten >>
        \addlyrics {\tiny \textOne \textTwo \textThree}
      >>
      \new Staff = bass \with {
      }
      <<
	\new Voice = bas << \clef "bass" \bas >>
        \addlyrics {\textOne \textTwo \textThree}
      >>
    >>
    \layout { }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "choir aahs"
      }
      <<
	\new Voice \sop
        \addlyrics \wordsMidi
      >>
      \new Staff = alto \with {
        midiInstrument = "choir aahs"
      }
      <<
	\new Voice \alt
      >>
      \new Staff = tenor \with {
        midiInstrument = "choir aahs"
      }
      <<
	\new Voice = ten \ten
      >>
      \new Staff = bass \with {
        midiInstrument = "choir aahs"
      }
      <<
	\new Voice = bas << \clef "bass" \bas >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
