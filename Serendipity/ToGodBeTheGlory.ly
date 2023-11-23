\version "2.25.9"

\header {
  title    = "To God Be the Glory"
%  poet     = "Joseph M. Scriven"
  composer = "W.H. Doane (1832-1916)"
}

TempoTrack = {
  \tempo 4=110
}

global = {
  \key aes \major
  \time 3/4
}

sop = \relative c' {
  \global
  \voiceOne
  \repeat volta 3 {
    \partial 4 ees4
    ees2 f8 g
    aes4 ees aes
    bes4 ees, bes'
    c2 c4
    des4 f, des' % 5
    c4 aes c
    c4 bes f
    bes2 ees,4
    ees2 f8 g
    aes4 ees aes % 10
    bes4 ees, bes'
    c2 c4
    ees4 des bes
    aes4 g aes
    c4 c bes
    aes2 c8. des16
    ees2 c8. des16
    ees2 ees8. c16
    aes4 bes c
    bes2 bes8. c16
    des2 bes8. c16
    des2 es8 bes
    ees4 ees des
    c2 ees,4
    ees2 f8 g
    aes4 ees aes
    bes4 ees, bes' c2 c4
    ees4 des bes
    aes4 g aes
    c4 c bes
    aes2
  }
  \bar"|."
}

alt = \relative c' {
  \global
  \voiceTwo
  \repeat volta 3 {
    \partial 4 c4
    c4(ees) des8 des
    c4 c ees
    ees4 ees ees
    ees2 ees4
    f4 des f
    ees4 ees ees
    d4 d f
    ees2 des4
    c4(ees) des8 des
    c4 c ees
    ees4 ees ees
    ees2 ges4
    f4 f f
    ees4 ees ees
    ees4 ees des
    c2 ees8. ees16
    ees2 aes8. g16
    aes2 ees8. ees16
    ees4 des c
    ees2 ees8. ees16
    ees2 ees8. ees16 ees2 ees8 ees
    ees4 ees ees
    ees2 des4
    c4(ees) des8 des
    c4 c ees
    ees4 ees ees
    ees2 ges4
    f4 f f
    ees4 ees ees
    ees4 ees des
    c2
    \alternative {
      { \section \break }
      { }
    }
  }
  \bar"|."
}

ten = \relative c' {
  \global
  \voiceOne
  \repeat volta 3 {
    \partial 4 aes4
    aes2 bes8 bes
    aes4 c aes
    g4 g g
    aes2 aes4aes4 aes aes
    aes4 aes aes
    aes4 f bes8(aes)
    g2 g4
    aes2 bes8 bes
    aes4 c aes
    g4 g g
    aes2 aes4
    aes4 bes des
    c4 bes c
    aes4 aes g
    aes2 aes8. bes16
    c2 aes8. bes16
    c2 c8. aes16
    aes4 g aes
    g2 g8. aes16
    bes2 g8. aes16
    bes2 bes8 g
    aes4 aes g
    aes2 g4
    aes2 bes8 bes
    aes4 c aes
    g4 g g
    aes2 aes4
    aes4 bes des
    c4 bes c
    aes4 aes g
    aes2
    \alternative {
      { \section }
      { }
    }
  }
  \bar"|."
}

bas = \relative c {
  \global
  \voiceTwo
  \repeat volta 3 {
    \partial 4 aes4
    aes4(c) ees8 ees
    aes,4 aes c
    ees4 ees ees
    aes,2 aes4
    des4 des des
    aes4 c aes
    bes4 bes d
    ees2 ees4
    aes,4(c) ees8 ees
    aes,4 aes c
    ees4 ees ees
    aes,2 aes4
    des4 des des
    ees4 ees ees
    ees4 ees ees
    aes,2 aes'8. aes16
    aes2 aes8. aes16
    aes2 aes8. aes,16
    c4 bes aes
    ees'2 ees8. ees16
    ees2 ees8. ees16
    ees2 ees8 des
    c4 c bes
    aes2 ees'4
    aes,4(c) ees8 ees
    aes,4 aes c
    ees4 ees ees
    aes,2 aes4
    des4 des des
    ees4 ees ees
    ees4 ees ees
    aes,2
  }
  \bar"|."
}

textOne = \lyricmode {
  \set stanza = "1."
  To God be the glor- y!
  Great things He has done,
  so loved He the world that he gave us His Son
  who yield- ed His life an a- tone- ment for sin
  and o- pened the life- gate that all may go in.
}

textTwo = \lyricmode {
  \set stanza = "2."
  O per- fect re- dempt- ion
  the pur- chase of blood!
  To e- very be- liev- er
  the prom- ise of God,
  The vil- est of- fend- er
  who trul- y be- lieves,
  that mom- ent from Je- sus
  a par- don re- ceives.
}

chorus = \lyricmode {
  Praise the Lord!
  Praise the Lord!
  Let the earth hear His voice.
  Praise the Lord!
  Praise the Lord!
  Let the peo- ple re- joice.
  O come to the Fa- ther through Je- sus the Son
  and give Him the glo- ry; great things He has done.
}

textThree = \lyricmode {
  \set stanza = "3."
  Great things He has taught us,
  great things He has done,
  and great our re- joic- ing
  through Je- sus the Son;
  but pur- er and high- er
  and great- er will be
  our won- der, our trans- port
  when Je- sus we see!
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "To " "God " "be " "the " glor "y! "
  "\nGreat " "things " "He " "has " "done, "
  "\nso " "loved " "He " "the " "world " "that " "he " "gave " "us " "His " "Son "
  "\nwho " yield "ed " "His " "life " "an " a tone "ment " "for " "sin "
  "\nand " o "pened " "the " life "gate " "that " "all " "may " "go " "in. "
  "\nPraise " "the " "Lord! "
  "\nPraise " "the " "Lord! "
  "\nLet " "the " "earth " "hear " "His " "voice. "
  "\nPraise " "the " "Lord! "
  "\nPraise " "the " "Lord! "
  "\nLet " "the " peo "ple " re "joice. "
  "\nO " "come " "to " "the " Fa "ther " "through " Je "sus " "the " "Son "
  "\nand " "give " "Him " "the " glo "ry; " "great " "things " "He " "has " "done.\n"

  \set stanza = "2."
  "\nO " per "fect " re dempt "ion "
  "\nthe " pur "chase " "of " "blood! "
  "\nTo " e "very " be liev "er "
  "\nthe " prom "ise " "of " "God, "
  "\nThe " vil "est " of fend "er "
  "\nwho " trul "y " be "lieves, "
  "\nthat " mom "ent " "from " Je "sus "
  "\na " par "don " re "ceives. "
  "\nPraise " "the " "Lord! "
  "\nPraise " "the " "Lord! "
  "\nLet " "the " "earth " "hear " "His " "voice. "
  "\nPraise " "the " "Lord! "
  "\nPraise " "the " "Lord! "
  "\nLet " "the " peo "ple " re "joice. "
  "\nO " "come " "to " "the " Fa "ther " "through " Je "sus " "the " "Son "
  "\nand " "give " "Him " "the " glo "ry; " "great " "things " "He " "has " "done.\n"

  \set stanza = "3."
  "\nGreat " "things " "He " "has " "taught " "us, "
  "\ngreat " "things " "He " "has " "done, "
  "\nand " "great " "our " re joic "ing "
  "\nthrough " Je "sus " "the " "Son; "
  "\nbut " pur "er " "and " high "er "
  "\nand " great "er " "will " "be "
  "\nour " won "der, " "our " trans "port "
  "\nwhen " Je "sus " "we " "see! "
  "\nPraise " "the " "Lord! "
  "\nPraise " "the " "Lord! "
  "\nLet " "the " "earth " "hear " "His " "voice. "
  "\nPraise " "the " "Lord! "
  "\nPraise " "the " "Lord! "
  "\nLet " "the " peo "ple " re "joice. "
  "\nO " "come " "to " "the " Fa "ther " "through " Je "sus " "the " "Son "
  "\nand " "give " "Him " "the " glo "ry; " "great " "things " "He " "has " "done. "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice = sop << \sop >>
	\new Voice = alt << \alt >>
      >>
      \new Lyrics \lyricsto sop \textOne
      \new Lyrics \lyricsto sop { \textTwo \chorus }
      \new Lyrics \lyricsto sop \textThree
      \new Staff = men <<
	\new Voice = ten << \clef "bass" \ten >>
	\new Voice = bas << \clef "bass" \bas >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice = sop << \sop >>
	\new Voice = alt << \alt >>
      >>
      \new Lyrics \lyricsto sop {\textOne \chorus \textTwo \chorus \textThree \chorus }
      \new Staff = men <<
	\new Voice = ten << \clef "bass" \ten >>
	\new Voice = bas << \clef "bass" \bas >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice = sop << \sop >>
	\new Voice = alt << \alt >>
      >>
      \new Lyrics \lyricsto sop {\textOne \chorus \textTwo \chorus \textThree \chorus }
      \new Staff = men <<
	\new Voice = ten << \clef "bass" \ten >>
	\new Voice = bas << \clef "bass" \bas >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
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
      \new Staff = soprano <<
	\new Voice \sop
        \addlyrics {\textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
	\new Voice \alt
        \addlyrics {\tiny \textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
      \new Staff = tenor <<
        \magnifyStaff #4/7
        \clef "treble_8"
	\new Voice \ten
        \addlyrics {\tiny \textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
      \new Staff = bass <<
        \magnifyStaff #4/7
        \clef bass
	\new Voice \bas
        \addlyrics {\tiny \textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
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
      \new Staff = soprano <<
        \magnifyStaff #4/7
	\new Voice \sop
        \addlyrics {\tiny \textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
      \new Staff = alto <<
	\new Voice \alt
        \addlyrics {\textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
      \new Staff = tenor <<
        \magnifyStaff #4/7
        \clef "treble_8"
	\new Voice \ten
        \addlyrics {\tiny \textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
      \new Staff = bass <<
        \magnifyStaff #4/7
        \clef bass
	\new Voice \bas
        \addlyrics {\tiny \textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
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
      \new Staff = soprano <<
        \magnifyStaff #4/7
	\new Voice \sop
        \addlyrics {\tiny \textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
	\new Voice \alt
        \addlyrics {\tiny \textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
      \new Staff = tenor <<
        \clef "treble_8"
	\new Voice \ten
        \addlyrics {\textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
      \new Staff = bass <<
        \magnifyStaff #4/7
        \clef bass
	\new Voice \bas
        \addlyrics {\tiny \textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
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
      \new Staff = soprano <<
        \magnifyStaff #4/7
	\new Voice \sop
        \addlyrics {\tiny \textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
      \new Staff = alto <<
        \magnifyStaff #4/7
	\new Voice \alt
        \addlyrics {\tiny \textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
      \new Staff = tenor <<
        \magnifyStaff #4/7
        \clef "treble_8"
	\new Voice \ten
        \addlyrics {\tiny \textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
      \new Staff = bass <<
        \clef bass
	\new Voice \bas
        \addlyrics {\textOne \chorus \textTwo \chorus \textThree \chorus }
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "church organ"
      }
      <<
        \new Dynamics \TempoTrack
	\new Voice \sop
        \addlyrics \wordsMidi
      >>
      \new Staff = alto \with {
        midiInstrument = "church organ"
      }
      <<
	\new Voice \alt
      >>
      \new Staff = tenor \with {
        midiInstrument = "church organ"
      }
      <<
	\new Voice \ten
      >>
      \new Staff = bass \with {
        midiInstrument = "church organ"
      }
      <<
	\new Voice \bas
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
