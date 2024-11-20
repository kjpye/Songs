\version "2.25.18"

\include "kjp.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
  title = "Good King Wenceslas"
  copyright = \today
}

global = {
  \key a \major
  \time 4/4
  \tempo 4 = 140
}

emptyA = { R1*8 }
emptyB = { R1*9 }

sopranoA = \relative {
  a'4 a a b
  a4 a e2
  fis4 e fis gis
  a2 a
  a4 a a b
  a4 a e2
  fis4 e fis gis
  a2 a
}

sopranoB = \relative {
  e''4 d cis b
  cis4 b a2
  fis4 e fis gis
  a2 a
  e4 e fis gis
  a4 a b2
  e4 d cis b
  a2(d)
  a1
}

sopMusic = {
  \repeat volta 5 {
    \sopranoA
    \sopranoB
  }
}

sopranoSingle = {
  \sopranoA \sopranoB
  \emptyA   \sopranoB
  \emptyA   \sopranoB
  \sopranoA \emptyB
  \sopranoA \sopranoB
}

altoA = \relative {
  e'4 e e e
  cis4 e b2
  d4 e d d
  e2 e
  e4 e cis e
  e4 d8(cis) b4(e)
  d4 e d d
  e2 e
}

altoB = \relative {
  e'4 fis e e
  e4 e cis2
  d4 cis cis e
  fis2 e
  cis4 e d d
  
  cis8(b) cis(dis) e2
  e4 fis e e
  cis2(fis)
  e1
}

altoMusic = {
  \repeat volta 5 { \altoA \altoB }
}

altoSingle = {
  \altoA    \altoB
  \emptyA   \sopranoB
  \emptyA   \altoB
  \sopranoA \emptyB
  \altoA    \altoB
}

tenorA = \relative {
  cis'4 cis cis gis
  a4 a gis2
  a4 a a b
  cis2 cis
  cis4 cis cis gis
  a4 fis gis(a)
  a4 a a b
  cis2 cis
}

tenorB = \relative {
  a4 a a gis
  gis4 gis a2
  a4 a a b
  d2 cis
  a4 a a b
  
  a4 a gis2
  a4 a a gis
  a2.(b4)
  cis1
}

tenorMusic = {
  \repeat volta 5 { \tenorA \tenorB }
}

tenorSingle = {
                  \tenorA                   \tenorB
  \transpose c c, \sopranoA                 \emptyB
  \transpose c c, \sopranoA                 \tenorB
                  \emptyA   \transpose c c, \sopranoB
                  \tenorA                   \tenorB
}

bassA = \relative {
  a4 a a e
  a4 cis, e2
  d4 cis d b
  a2 a
  a'4 a8(gis) fis4 e8(d)
  cis4 d e(cis)
  d4 cis d8(cis) b4
  a2 a
}

bassB = \relative {
  cis4 d a' e
  cis4 e fis2
  d4 a' fis e
  d4(fis) a2
  a,4 cis d b
  
  fis'4 fis e(d)
  cis4 d e e
  fis4(e d2)
  a'1
}

bassMusic = {
  \repeat volta 5 { \bassA \bassB }
}

bassSingle = {
                  \bassA                    \bassB 
  \transpose c c, \sopranoA                 \emptyB
  \transpose c c, \sopranoA                 \bassB 
                  \emptyA   \transpose c c, \sopranoB
                  \bassA                    \bassB 
}

firstverse =\lyricmode {
  \set stanza = "1. "
  "[A] Good" King Wen -- ces -- las look'd out
  On the feast of Steph -- en;
  When the snow lay round a -- bout…
  Deep, and crisp, and e -- ven;
  Bright -- ly shone the moon that night,
  Though the frost was cru -- el,
  When a poor man came in sight,
  Gath -- ’ring win- ter fu -- el.
}

secondverse = \lyricmode {
  \set stanza = "2. "
  "[M] “Hith" -- er, page, and stand by me,
  If thou know'st it, tell -- ing,
  Yon -- der peas -- ant, who is he?
  Where and what his dwell -- ing?”
  "[W] “Sire," he lives a good league hence,
  Un -- der -- neath the moun- tain;
  Right a -- gainst the for -- est fence,
  By Saint Ag -- nes' foun -- tain.”
}

thirdverse = \lyricmode {
  \set stanza = "3. "
  "[M] “Bring" me flesh and bring me wine,
  Bring me pine logs hith -- er;
  Thou and I will see him dine,
  When we bear them thith -- er.”
  "[A] Page" and Mon -- arch forth they went,
  Forth they went to -- geth -- er,
  Through the rude wind's wild la -- ment,
  And the bit- ter weath -- er.
}

fourthverse = \lyricmode {
  \set stanza = "4. "
  "[W] “Sire," the night is dark -- er now,
  And the wind blows strong -- er,
  Fails my heart, I know not how;
  I can go no long -- er.”
  "[M] “Mark" my foot -- steps, good my page;
  Tread thou in them bold -- ly;
  Thou shalt find the win -- ter's rage
  Freeze thy blood less cold -- ly.”
}

fifthverse = \lyricmode {
  \set stanza = "5. "
  "[A] In" his mas -- ter's steps he trod,
  Where the snow lay dint -- ed;
  Heat was in the ve -- ry sod
  Which the Saint had print -- ed.
  There -- fore, Christ -- ians all, be sure,
  Wealth or rank pos -- ses -- sing,
  Ye who now will bless the poor,
  Shall your -- selves find bless -- ing.
}

wordsWomen =\lyricmode {
  \set stanza = "1. "
  Good King Wen -- ces -- las look'd out
  On the feast of Steph -- en;
  When the snow lay round a -- bout…
  Deep, and crisp, and e -- ven;
  Bright -- ly shone the moon that night,
  Though the frost was cru -- el,
  When a poor man came in sight,
  Gath -- ’ring win- ter fu -- el.

  “Sire, he lives a good league hence,
  Un -- der -- neath the moun- tain;
  Right a -- gainst the for -- est fence,
  By Saint Ag -- nes' foun -- tain.”

  Page and Mon -- arch forth they went,
  Forth they went to -- geth -- er,
  Through the rude wind's wild la -- ment,
  And the bit- ter weath -- er.

  \set stanza = "4. "
  “Sire, the night is dark -- er now,
  And the wind blows strong -- er,
  Fails my heart, I know not how;
  I can go no long -- er.”

  \set stanza = "5. "
  In his mas -- ter's steps he trod,
  Where the snow lay dint -- ed;
  Heat was in the ve -- ry sod
  Which the Saint had print -- ed.
  There -- fore, Christ -- ians all, be sure,
  Wealth or rank pos -- ses -- sing,
  Ye who now will bless the poor,
  Shall your -- selves find bless -- ing.
}

wordsWomenMidi = \lyricmode {
  \set stanza = "1. "
  "Good " "King " Wen ces "las " "look'd " "out"
  "/On " "the " "feast " "of " Steph "en;"
  "/When " "the " "snow " "lay " "round " a "bout… "
  "/Deep, " "and " "crisp, " "and " e "ven;"
  "/Bright" "ly " "shone " "the " "moon " "that " "night,"
  "/Though " "the " "frost " "was " cru "el,"
  "/When " "a " "poor " "man " "came " "in " "sight,"
  "/Gath" "'ring " win "ter " fu "el.\n"

  "\\“Sire, " "he " "lives " "a " "good " "league " "hence,"
  "/Un" der "neath " "the " "moun" "tain;"
  "/Right " a "gainst " "the " for "est " "fence,"
  "/By " "Saint " Ag "nes’ " foun "tain.”\n"

  "\\Page " "and " Mon "arch " "forth " "they " "went,"
  "/Forth " "they " "went " to geth er,
  "/Through " "the " "rude " "wind's " "wild " la "ment,"
  "/And " "the " bit "ter " weath "er.\n"

  "\\“Sire," "the " "night " "is " dark "er " "now,"
  "/And " "the " "wind " "blows " strong "er,"
  "/Fails " "my " "heart, " "I " "know " "not " "how;"
  "/I " "can " "go " "no " long "er.”\n"

  "\\In " "his " mas "ter's " "steps " "he " "trod,"
  "/Where " "the " "snow " "lay " dint "ed;"
  "/Heat " "was " "in " "the " ve "ry " "sod"
  "/Which " "the " "Saint " "had " print "ed."
  "/There" "fore, " Christ "ians " "all, " "be " "sure,"
  "/Wealth " "or " "rank " pos ses "sing,"
  "/Ye " "who " "now " "will " "bless " "the " "poor,"
  "/Shall " your "selves " "find " bless "ing."
}

wordsMen = \lyricmode {
  \set stanza = "1. "
  Good King Wen -- ces -- las look'd out
  On the feast of Steph -- en;
  When the snow lay round a -- bout…
  Deep, and crisp, and e -- ven;
  Bright -- ly shone the moon that night,
  Though the frost was cru -- el,
  When a poor man came in sight,
  Gath -- ’ring win- ter fu -- el.

  \set stanza = "2. "
  “Hith -- er, page, and stand by me,
  If thou know'st it, tell -- ing,
  Yon -- der peas -- ant, who is he?
  Where and what his dwell -- ing?”

  \set stanza = "3. "
  “Bring me flesh and bring me wine,
  Bring me pine logs hith -- er;
  Thou and I will see him dine,
  When we bear them thith -- er.”
  Page and Mon -- arch forth they went,
  Forth they went to -- geth -- er,
  Through the rude wind's wild la -- ment,
  And the bit- ter weath -- er.

  “Mark my foot -- steps, good my page;
  Tread thou in them bold -- ly;
  Thou shalt find the win -- ter's rage
  Freeze thy blood less cold -- ly.”

  \set stanza = "5. "
  In his mas -- ter's steps he trod,
  Where the snow lay dint -- ed;
  Heat was in the ve -- ry sod
  Which the Saint had print -- ed.
  There -- fore, Christ -- ians all, be sure,
  Wealth or rank pos -- ses -- sing,
  Ye who now will bless the poor,
  Shall your -- selves find bless -- ing.
}

wordsMenMidi = \lyricmode {
  \set stanza = "1. "
  "Good " "King " Wen ces "las " "look'd " "out"
  "/On " "the " "feast " "of " Steph "en;"
  "/When " "the " "snow " "lay " "round " a "bout… "
  "/Deep, " "and " "crisp, " "and " e "ven;"
  "/Bright" "ly " "shone " "the " "moon " "that " "night,"
  "/Though " "the " "frost " "was " cru "el,"
  "/When " "a " "poor " "man " "came " "in " "sight,"
  "/Gath" "'ring " win "ter " fu "el.\n"

  \set stanza = "2. "
  "\n“Hith" "er, " "page, " "and " "stand " "by " "me,"
  "/If " "thou " "know'st " "it, " "tell" "ing,"
  "/Yon" "der " "peas" "ant, " "who " "is " "he?"
  "/Where " "and " "what " "his " "dwell" "ing?”\n"

  \set stanza = "3. "
  "\n“Bring " "me " "flesh " "and " "bring " "me " "wine,"
  "/Bring " "me " "pine " "logs " "hith" "er;"
  "/Thou " "and " "I " "will " "see " "him " "dine,"
  "/When " "we " "bear " "them " "thith" er.”
  "/Page " "and " Mon "arch " "forth " "they " "went,"
  "/Forth " "they " "went " to geth er,
  "/Through " "the " "rude " "wind's " "wild " la "ment,"
  "/And " "the " bit "ter " weath "er.\n"

  "/“Mark " "my " foot "steps, " "good " "my " "page;"
  "/Tread " "thou " "in " "them " bold "ly;"
  "/Thou " "shalt " "find " "the " win "ter’s " rage
  "/Freeze " "thy " "blood " "less " cold "ly,”\n"

  \set stanza = "5. "
  "\\In " "his " mas "ter's " "steps " "he " "trod,"
  "/Where " "the " "snow " "lay " dint "ed;"
  "/Heat " "was " "in " "the " ve "ry " "sod"
  "/Which " "the " "Saint " "had " print "ed."
  "/There" "fore, " Christ "ians " "all, " "be " "sure,"
  "/Wealth " "or " "rank " pos ses "sing,"
  "/Ye " "who " "now " "will " "bless " "the " "poor,"
  "/Shall " your "selves " "find " bless "ing."
}

wordsMidi = \lyricmode {
  \set stanza = "1. "
  "Good " "King " Wen ces "las " "look'd " "out"
  "/On " "the " "feast " "of " Steph "en;"
  "/When " "the " "snow " "lay " "round " a "bout… "
  "/Deep, " "and " "crisp, " "and " e "ven;"
  "/Bright" "ly " "shone " "the " "moon " "that " "night,"
  "/Though " "the " "frost " "was " cru "el,"
  "/When " "a " "poor " "man " "came " "in " "sight,"
  "/Gath" "'ring " win "ter " fu "el.\n"

  \set stanza = "2. "
  "\n[MEN] “Hith" "er, " "page, " "and " "stand " "by " "me,"
  "/If " "thou " "know'st " "it, " "tell" "ing,"
  "/Yon" "der " "peas" "ant, " "who " "is " "he?"
  "/Where " "and " "what " "his " "dwell" \set associatedVoice = soprano "ing?”\n"
  "\\[WOMEN] “Sire, " "he " "lives " "a " "good " "league " "hence,"
  "/Un" der "neath " "the " "moun" "tain;"
  "/Right " a "gainst " "the " for "est " "fence,"
  "/By " "Saint " Ag "nes’ " foun \set associatedVoice = tenor "tain.”\n"

  \set stanza = "3. "
  "\n[MEN] “Bring " "me " "flesh " "and " "bring " "me " "wine,"
  "/Bring " "me " "pine " "logs " "hith" "er;"
  "/Thou " "and " "I " "will " "see " "him " "dine,"
  "/When " "we " "bear " "them " "thith" er.”
  "/[ALL] Page " "and " Mon "arch " "forth " "they " "went,"
  "/Forth " "they " "went " to geth er,
  "/Through " "the " "rude " "wind's " "wild " la "ment,"
  "/And " "the " bit "ter " weath \set associatedVoice = soprano "er.\n"

  \set stanza = "4. "
  "\\[WOMEN] “Sire," "the " "night " "is " dark "er " "now,"
  "/And " "the " "wind " "blows " strong "er,"
  "/Fails " "my " "heart, " "I " "know " "not " "how;"
  "/I " "can " "go " "no " long \set associatedVoice = tenor "er.”\n"
  "/[MEN] “Mark " "my " foot "steps, " "good " "my " "page;"
  "/Tread " "thou " "in " "them " bold "ly;"
  "/Thou " "shalt " "find " "the " win "ter’s " rage
  "/Freeze " "thy " "blood " "less " cold "ly,”\n"

  \set stanza = "5. "
  "\\[ALL] In " "his " mas "ter's " "steps " "he " "trod,"
  "/Where " "the " "snow " "lay " dint "ed;"
  "/Heat " "was " "in " "the " ve "ry " "sod"
  "/Which " "the " "Saint " "had " print "ed."
  "/There" "fore, " Christ "ians " "all, " "be " "sure,"
  "/Wealth " "or " "rank " pos ses "sing,"
  "/Ye " "who " "now " "will " "bless " "the " "poor,"
  "/Shall " your "selves " "find " bless "ing."
}

breakTrack = {
  \repeat unfold 4 { s1*17 \section \break }
  s1*17 \bar "|."
}

#(set-global-staff-size 19)

\book
{
  \paper {
    output-suffix = repeat
  }
  \score {
    \new ChoirStaff <<
      \new Staff = women <<
	\new Voice { \vo \global \sopMusic }
        \addlyrics \firstverse
        \addlyrics \secondverse
        \addlyrics \thirdverse
        \addlyrics \fourthverse
        \addlyrics \fifthverse
	\new Voice { \vt \global \altoMusic }
      >>
      \context Staff = men <<
	\clef bass
	\new Voice { \vo \global \tenorMusic }
	\new Voice { \vt \global \bassMusic }
      >>
    >>
    
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book
{
  \paper {
    output-suffix = single
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = women <<
        \breakTrack
	\new Voice { \vo \global \sopranoSingle }
        \addlyrics \wordsWomen
	\new Voice { \vt \global \altoSingle }
      >>
      \context Staff = men <<
	\clef bass
        \breakTrack
	\new Voice { \vo \global \tenorSingle }
        \addlyrics \wordsMen
	\new Voice { \vt \global \bassSingle }
      >>
    >>
    
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book
{
  \paper {
    output-suffix = singlepage
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
        \breakTrack
	\new Voice { \vo \global \sopranoSingle }
        \addlyrics \wordsWomen
	\new Voice { \vt \global \altoSingle }
      >>
      \context Staff = men <<
	\clef bass
        \breakTrack
	\new Voice { \vo \global \tenorSingle }
        \addlyrics \wordsMen
	\new Voice { \vt \global \bassSingle }
      >>
    >>
    
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book
{
  \paper {
    output-suffix = singlepage-sep
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
      \new Staff = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \breakTrack
	\new Voice { \global \sopranoSingle }
        \addlyrics \wordsWomen
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \breakTrack
	\new Voice { \global \altoSingle }
        \addlyrics \wordsWomen
      >>
      \context Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
	\clef "treble_8"
        \breakTrack
	\new Voice { \global \tenorSingle }
        \addlyrics \wordsMen
      >>
      \context Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
	\clef bass
        \breakTrack
	\new Voice { \global \bassSingle }
        \addlyrics \wordsMen
      >>
    >>
    
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book
{
  \paper {
    output-suffix = singlepage-sop
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
      \new Staff = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \breakTrack
	\new Voice { \global \sopranoSingle }
        \addlyrics \wordsWomen
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \breakTrack
        \magnifyStaff #4/7
	\new Voice { \global \altoSingle }
        \addlyrics {\tiny \wordsWomen}
      >>
      \context Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
	\clef "treble_8"
        \breakTrack
        \magnifyStaff #4/7
	\new Voice { \global \tenorSingle }
        \addlyrics {\tiny \wordsMen}
      >>
      \context Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
	\clef bass
        \breakTrack
        \magnifyStaff #4/7
	\new Voice { \global \bassSingle }
        \addlyrics {\tiny \wordsMen}
      >>
    >>
    
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book
{
  \paper {
    output-suffix = singlepage-alto
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
      \new Staff = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \breakTrack
        \magnifyStaff #4/7
	\new Voice { \global \sopranoSingle }
        \addlyrics {\tiny \wordsWomen}
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \breakTrack
	\new Voice { \global \altoSingle }
        \addlyrics \wordsWomen
      >>
      \context Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
	\clef "treble_8"
        \breakTrack
        \magnifyStaff #4/7
	\new Voice { \global \tenorSingle }
        \addlyrics {\tiny \wordsMen}
      >>
      \context Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
	\clef bass
        \breakTrack
        \magnifyStaff #4/7
	\new Voice { \global \bassSingle }
        \addlyrics {\tiny \wordsMen}
      >>
    >>
    
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book
{
  \paper {
    output-suffix = singlepage-tenor
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
      \new Staff = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \breakTrack
        \magnifyStaff #4/7
	\new Voice { \global \sopranoSingle }
        \addlyrics {\tiny \wordsWomen}
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \breakTrack
        \magnifyStaff #4/7
	\new Voice { \global \altoSingle }
        \addlyrics {\tiny \wordsWomen}
      >>
      \context Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
	\clef "treble_8"
        \breakTrack
	\new Voice { \global \tenorSingle }
        \addlyrics \wordsMen
      >>
      \context Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
	\clef bass
        \breakTrack
        \magnifyStaff #4/7
	\new Voice { \global \bassSingle }
        \addlyrics {\tiny \wordsMen}
      >>
    >>
    
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book
{
  \paper {
    output-suffix = singlepage-bass
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
      \new Staff = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \breakTrack
        \magnifyStaff #4/7
	\new Voice { \global \sopranoSingle }
        \addlyrics {\tiny \wordsWomen}
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \breakTrack
        \magnifyStaff #4/7
	\new Voice { \global \altoSingle }
        \addlyrics {\tiny \wordsWomen}
      >>
      \context Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
	\clef "treble_8"
        \breakTrack
        \magnifyStaff #4/7
	\new Voice { \global \tenorSingle }
        \addlyrics {\tiny \wordsMen}
      >>
      \context Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
	\clef bass
        \breakTrack
	\new Voice { \global \bassSingle }
        \addlyrics \wordsMen
      >>
    >>
    
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
%        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \paper {
    output-suffix = midi-joint
    }
  \score {
    <<
    % \context ChoirStaff <<
      \context Staff = sopranos \with {
        midiInstrument = flute
      }
      <<
	\new Voice = soprano { \global \sopranoSingle }
      >>
      \context Staff = altos \with {
        midiInstrument = clarinet
      }
      <<
	\new Voice { \global \altoSingle }
      >>
      \context Staff = tenors \with {
        midiInstrument = oboe
      }
      <<
	\clef "treble_8"
	\new Voice = tenor { \global \tenorSingle }
        \addlyrics \wordsMidi
      >>
      \context Staff = basses \with {
        midiInstrument = bassoon
      }
      <<
	\clef bass
	\new Voice { \global \bassSingle }
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

\book {
  \paper {
    output-suffix = midi-women
    }
  \score {
    <<
    % \context ChoirStaff <<
      \context Staff = sopranos \with {
        midiInstrument = flute
      }
      <<
	\new Voice { \global \sopranoSingle }
        \addlyrics \wordsWomenMidi
      >>
      \context Staff = altos \with {
        midiInstrument = clarinet
      }
      <<
	\new Voice { \global \altoSingle }
      >>
      \context Staff = tenors \with {
        midiInstrument = oboe
      }
      <<
	\clef "treble_8"
	\new Voice { \global \tenorSingle }
      >>
      \context Staff = basses \with {
        midiInstrument = bassoon
      }
      <<
	\clef bass
	\new Voice { \global \bassSingle }
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

\book {
  \paper {
    output-suffix = midi-men
    }
  \score {
    <<
    % \context ChoirStaff <<
      \context Staff = sopranos \with {
        midiInstrument = flute
      }
      <<
	\new Voice { \global \sopranoSingle }
      >>
      \context Staff = altos \with {
        midiInstrument = clarinet
      }
      <<
	\new Voice { \global \altoSingle }
      >>
      \context Staff = tenors \with {
        midiInstrument = oboe
      }
      <<
	\clef "treble_8"
	\new Voice { \global \tenorSingle }
        \addlyrics \wordsMenMidi
      >>
      \context Staff = basses \with {
        midiInstrument = bassoon
      }
      <<
	\clef bass
	\new Voice { \global \bassSingle }
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
