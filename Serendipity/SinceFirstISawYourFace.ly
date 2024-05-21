\version "2.25.16"

\include "kjp.ly"

\header {
  title = "Since First I Saw Your Face"
  composer = "Thomas Ford (1580—1642)"
  % Remove default LilyPond tagline
  tagline = ##f
}

%\paper {
%  #(set-paper-size "a4")
%  line-width = 180\mm
%  left-margin = 20\mm
%  bottom-margin = 10\mm
%  top-margin = 10\mm
%}

TempoTrack = {
  \tempo 4=120
}

global = {
  \key d \major
  \time 2/2
  \partial 4
}

soprano = \relative c' {
  d4
  d4. e8 fis4 g % 1
  a4 g8 fis e4 b'
  a4. 8 g4 fis
  e4.(d8) 4 d
  d4. e8 fis4 g % 5
  a4 g8(fis) e4 b'
  a4. 8 g4 fis
  e4.(d8) d4 \section \break \repeat volta 2 { fis
    b4. 8 gis4 e
    a4. 8 fis4 d % 10
    d'4. 8 4 c
    b2 a
    r2 b4. g8
    a4. fis8 g4. e8
    fis4 b a4. 8 % 15
    g4 fis e2
    fis2.
  }
  \section
}

alto = \relative c' {
  d4
  d4. 8 4 4
  e4 e8 e fis4 e
  d4. 8 cis4 b
  d4(cis) d d
  d4. 8 4 d
  e4 e e e
  fis4. d8 cis4 d
  d4(cis) d \section \repeat volta 2 { fis4
    dis4. 8 e4 e
    e4 cis d a'
    b4. 8 4 a
    a4(gis) a2
    e4 fis d e
    cis4 d b4. cis8
    d4 b cis4. 8
    b8(cis) d2 cis4
    d2.
  }
  \section
}

tenor = \relative c {
  fis4
  fis4. g8 a4 b
  cis4 8 8 4 b8(cis)
  d4 a a a
  a2 fis4 fis
  fis4. g8 a4 b
  cis4 4 4 b8(cis)
  d4 a a a
  a2 fis4 \section \repeat volta 2 { a
    b4. 8 4 gis
    e4 a a fis
    fis'4 g e e
    e2 cis
    cis4 d b4. cis8
    a4. b8 g4 a
    fis4 g e4. fis8
    g8(a) 4 2
    fis2.
  }
  \section
}

bass = \relative c {
  d4
  d4. 8 4 b
  a4 8 8 a'4 g
  fis4. 8 e4 d
  a2 d4 d
  d4. 8 4 b
  a4 a a' g
  fis4. 8 e4 d
  a2 d4 \section \repeat volta 2 { r
    r4 b e4. 8
    cis4 a d4. 8
    b4 g gis8 gis a a
    e'2 a,
    a'4. fis8 g4. e8
    fis4. d8 e4. a,8
    d4 g, a8(b) cis(d)
    e4 d a2
    d2.
  }
  \section
}

sopranoWordsOne = \lyricmode {
  \set stanza = "1."
  Since first I saw your face I re -- solv’d to ho -- nour and re -- known ye;
  If now I be dis -- dain’d, I wish my heart had ne -- ver known ye.
  \repeat volta 2 {
    What I that loved, and you that lik’d,
    Shall we be -- gin to wran -- gle?
    No, no, no, my heart is fast, And can -- not dis -- en -- tan -- gle.
  }
}

sopranoWordsTwo = \lyricmode {
  \set stanza = "2."
  The sun, whose beams most glor -- i -- ous are,
  Re -- ject -- ed no be -- hold -- er;
  And your sweet beau -- ty past com -- pare,
  Makes my poor eyes the bold -- er.
  \repeat volta 2 {
    Where beau -- ty moves, and wit de -- lights,
    And signs of kind -- ness blind me,
    There, O there, wher -- e’er I go,
    I leave my heart be -- hind me.
  }
}

sopranoWordsThree = \lyricmode {
  \set stanza = "3."
  If I de -- sire or praise you too much,
  That fault you may for -- give me,
  Or if my hands had strayed a touch,
  Then just -- ly might you leave me.
  \repeat volta 2 {
    I asked you leave you bade me love,
    Is’t now the time to chide me?
    No, no, no I'll love you still,
    What for -- tune e’er be -- tide me.
  }
}

sopranoWordsMidi = \lyricmode {
  \set stanza = "1."
  "Since " "first " "I " "saw " "your " "face " "I " re "solv’d " "to " ho "nour " "and " re "known " "ye; "
  "\nIf " "now " "I " "be " dis "dain'd, " "I " "wish " "my " "heart " "had " ne "ver " "known " "ye.\n"
  \repeat volta 2 {
    "\nWhat " "I " "that " "loved, " "and " "you " "that " "lik’d, "
    "\nShall " "we " be "gin " "to " wran "gle? "
    "\nNo, " "no, " "no, " "my " "heart " "is " "fast, " "And " can "not " dis en tan "gle.\n"
  }

  \set stanza = "2."
  "\nThe " "sun, " "whose " "beams " "most " glor i "ous " "are, "
  "\nRe" ject "ed " "no " be hold "er; "
  "\nAnd " "your " "sweet " beau "ty " "past " com "pare, "
  "\nMakes " "my " "poor " "eyes " "the " bold "er.\n"
  \repeat volta 2 {
    "\nWhere " beau "ty " "moves, " "and " "wit " de "lights, "
    "\nAnd " "signs " "of " kind "ness " "blind " "me, "
    "\nThere, " "O " "there, " wher "e’er " "I " "go, "
    "\nI " "leave " "my " "heart " be "hind " "me.\n"
  }

  \set stanza = "3."
  "\nIf " "I " de "sire " "or " "praise " "you " "too " "much, "
  "\nThat " "fault " "you " "may " for "give " "me, "
  "\nOr " "if " "my " "hands " "had " "strayed " "a " "touch, "
  "\nThen " just "ly " "might " "you " "leave " "me.\n"
  \repeat volta 2 {
    "\nI " "asked " "you " "leave " "you " "bade " "me " "love, "
    "\nIs’t " "now " "the " "time " "to " "chide " "me? "
    "\nNo, " "no, " "no " "I’ll " "love " "you " "still, "
    "\nWhat " for "tune " "e’er " be "tide " "me.\n"
  }
}

altoWordsOne = \lyricmode {
  \set stanza = "1."
  Since first I saw your face I re -- solv’d to ho -- nour and re -- known ye;
  If now I be dis -- dain’d, I wish my heart had ne -- ver known ye.
  \repeat volta 2 {
    What I that loved, and you that lik’d,
    Shall we be -- gin to wran -- gle?
    No, no, no, no, no, my heart is fast, And can -- not dis -- en -- tan -- gle.
  }
}

altoWordsTwo = \lyricmode {
  \set stanza = "2."
  The sun, whose beams most glor -- i -- ous are,
  Re -- ject -- ed no be -- hold -- er;
  And your sweet beau -- ty past com -- pare,
  Makes my poor eyes the bold -- er.
  \repeat volta 2 {
    Where beau -- ty moves, and wit de -- lights,
    And signs of kind -- ness blind me,
    There, O there, wher -- "e’re," wher -- "e’er" I go,
    I leave my heart be -- hind me.
  }
}

altoWordsThree = \lyricmode {
  \set stanza = "3."
  If I de -- sire or praise you too much,
  That fault you may for -- give me,
  Or if my hands had strayed a touch,
  Then just -- ly might you leave me.
  \repeat volta 2 {
    I asked you leave you bade me love,
    Is’t now the time to chide me?
    No, no, no, no, no, I’ll love you still,
    What for -- tune e’er be -- tide me.
  }
}

altoWordsMidi = \lyricmode {
  \set stanza = "1."
  "Since " "first " "I " "saw " "your " "face " "I " re "solv’d " "to " ho "nour " "and " re "known " "ye; "
  "\nIf " "now " "I " "be " dis "dain’d, " "I " "wish " "my " "heart " "had " ne "ver " "known " "ye.\n"
  \repeat volta 2 {
    "\nWhat " "I " "that " "loved, " "and " "you " "that " "lik’d, "
    "\nShall " "we " be "gin " "to " wran "gle? "
    "\nNo, " "no, " "no, " "no, " "no, " "my " "heart " "is " "fast, " "And " can "not " dis en tan "gle.\n"
  }

  \set stanza = "2."
  "\nThe " "sun, " "whose " "beams " "most " glor i "ous " "are, "
  "\nRe" ject "ed " "no " be hold "er; "
  "\nAnd " "your " "sweet " beau "ty " "past " com "pare, "
  "\nMakes " "my " "poor " "eyes " "the " bold "er.\n"
  \repeat volta 2 {
    "\nWhere " beau "ty " "moves, " "and " "wit " de "lights, "
    "\nAnd " "signs " "of " kind "ness " "blind " "me, "
    "\nThere, " "O " "there, " wher "e’re, " wher "e’er " "I " "go, "
    "\nI " "leave " "my " "heart " be "hind " "me.\n"
  }

  \set stanza = "3."
  "\nIf " "I " de "sire " "or " "praise " "you " "too " "much, "
  "\nThat " "fault " "you " "may " for "give " "me, "
  "\nOr " "if " "my " "hands " "had " "strayed " "a " "touch, "
  "\nThen " just "ly " "might " "you " "leave " "me.\n"
  \repeat volta 2 {
    "\nI " "asked " "you " "leave " "you " "bade " "me " "love, "
    "\nIs’t " "now " "the " "time " "to " "chide " "me? "
    "\nNo, " "no, " "no, " "no, " "no, " "I’ll " "love " "you " "still, "
    "\nWhat " for "tune " "e’er " be "tide " "me.\n"
  }
}

tenorWordsOne = \lyricmode {
  \set stanza = "1."
  Since first I saw your face I re -- solv’d to ho -- nour and re -- known ye;
  If now I be dis -- dain’d, I wish my heart had ne -- ver known ye.
  \repeat volta 2 {
    What I that loved, and you that lik’d,
    Shall we be -- gin to wran -- gle?
    No, no, no, no, no, my heart is fast, And can -- not dis -- en -- tan -- gle.
  }
}

tenorWordsTwo = \lyricmode {
  \set stanza = "2."
  The sun, whose beams most glor -- i -- ous are,
  Re -- ject -- ed no be -- hold -- er;
  And your sweet beau -- ty past com -- pare,
  Makes my poor eyes the bold -- er.
  \repeat volta 2 {
    Where beau -- ty moves, and wit de -- lights,
    And signs of kind -- ness blind me,
    There, O there, wher -- "e’re," wher -- "e’er" I go,
    I leave my heart be -- hind me.
  }
}

tenorWordsThree = \lyricmode {
  \set stanza = "3."
  If I de -- sire or praise you too much,
  That fault you may for -- give me,
  Or if my hands had strayed a touch,
  Then just -- ly might you leave me.
  \repeat volta 2 {
    I asked you leave you bade me love,
    Is’t now the time to chide me?
    No, no, no, no, no, I’ll love you still,
    What for -- tune e’er be -- tide me.
  }
}

tenorWordsMidi = \lyricmode {
  \set stanza = "1."
  "Since " "first " "I " "saw " "your " "face " "I " re "solv’d " "to " ho "nour " "and " re "known " "ye; "
  "\nIf " "now " "I " "be " dis "dain’d, " "I " "wish " "my " "heart " "had " ne "ver " "known " "ye.\n"
  \repeat volta 2 {
    "\nWhat " "I " "that " "loved, " "and " "you " "that " "lik’d, "
    "\nShall " "we " be "gin " "to " wran "gle? "
    "\nNo, " "no, " "no, " "no, " "no, " "my " "heart " "is " "fast, " "And " can "not " dis en tan "gle.\n"
  }

  \set stanza = "2."
  "\nThe " "sun, " "whose " "beams " "most " glor i "ous " "are, "
  "\nRe" ject "ed " "no " be hold "er; "
  "\nAnd " "your " "sweet " beau "ty " "past " com "pare, "
  "\nMakes " "my " "poor " "eyes " "the " bold "er.\n"
  \repeat volta 2 {
    "\nWhere " beau "ty " "moves, " "and " "wit " de "lights, "
    "\nAnd " "signs " "of " kind "ness " "blind " "me, "
    "\nThere, " "O " "there, " wher "e’re, " wher "e’er " "I " "go, "
    "\nI " "leave " "my " "heart " be "hind " "me.\n"
  }

  \set stanza = "3."
  "\nIf " "I " de "sire " "or " "praise " "you " "too " "much, "
  "\nThat " "fault " "you " "may " for "give " "me, "
  "\nOr " "if " "my " "hands " "had " "strayed " "a " "touch, "
  "\nThen " just "ly " "might " "you " "leave " "me.\n"
  \repeat volta 2 {
    "\nI " "asked " "you " "leave " "you " "bade " "me " "love, "
    "\nIs’t " "now " "the " "time " "to " "chide " "me? "
    "\nNo, " "no, " "no, " "no, " "no, " "I’ll " "love " "you " "still, "
    "\nWhat " for "tune " "e’er " be "tide " "me.n"
  }
}

bassWordsOne = \lyricmode {
  \set stanza = "1."
  Since first I saw your face I re -- solv’d to ho -- nour and re -- known ye;
  If now I be dis -- dain’d, I wish my heart had ne -- ver known ye.
  \repeat volta 2 {
    What I that loved, and you that lik’d,
    Shall we be -- gin to wran -- gle?
    No, no, no, no, no, my heart is fast, And can -- not dis -- en -- tan -- gle.
  }
}

bassWordsTwo = \lyricmode {
  \set stanza = "2."
  The sun, whose beams most glor -- i -- ous are,
  Re -- ject -- ed no be -- hold -- er;
  And your sweet beau -- ty past com -- pare,
  Makes my poor eyes the bold -- er.
  \repeat volta 2 {
    Where beau -- ty moves, and wit de -- lights,
    And signs of kind -- ness blind me,
    There, O there, wher -- "e’re," wher -- "e’er" I go,
    I leave my heart be -- hind me.
  }
}

bassWordsThree = \lyricmode {
  \set stanza = "3."
  If I de -- sire or praise you too much,
  That fault you may for -- give me,
  Or if my hands had strayed a touch,
  Then just -- ly might you leave me.
  \repeat volta 2 {
    I asked you leave you bade me love,
    Is’t now the time to chide me?
    No, no, no, no, no I’ll love you still,
    What for- -- tune e’er be -- tide me.
  }
}

bassWordsMidi = \lyricmode {
  \set stanza = "1."
  "Since " "first " "I " "saw " "your " "face " "I " re "solv’d " "to " ho "nour " "and " re "known " "ye; "
  "\nIf " "now " "I " "be " dis "dain’d, " "I " "wish " "my " "heart " "had " ne "ver " "known " "ye.\n"
  \repeat volta 2 {
    "\nWhat " "I " "that " "loved, " "and " "you " "that " "lik’d, "
    "\nShall " "we " be "gin " "to " wran "gle? "
    "\nNo, " "no, " "no, " "no, " "no, " "my " "heart " "is " "fast, " "And " can "not " dis en tan "gle.\n"
  }

  \set stanza = "2."
  "\nThe " "sun, " "whose " "beams " "most " glor i "ous " "are, "
  "\nRe" ject "ed " "no " be hold "er; "
  "\nAnd " "your " "sweet " beau "ty " "past " com "pare, "
  "\nMakes " "my " "poor " "eyes " "the " bold "er.\n"
  \repeat volta 2 {
    "\nWhere " beau "ty " "moves, " "and " "wit " de "lights, "
    "\nAnd " "signs " "of " kind "ness " "blind " "me, "
    "\nThere, " "O " "there, " wher "e’re, " wher "e’er " "I " "go, "
    "\nI " "leave " "my " "heart " be "hind " "me.\n"
  }

  \set stanza = "3."
  "\nIf " "I " de "sire " "or " "praise " "you " "too " "much, "
  "\nThat " "fault " "you " "may " for "give " "me, "
  "\nOr " "if " "my " "hands " "had " "strayed " "a " "touch, "
  "\nThen " just "ly " "might " "you " "leave " "me. "
  \repeat volta 2 {
    "\nI " "asked " "you " "leave " "you " "bade " "me " "love, "
    "\nIs’t " "now " "the " "time " "to " "chide " "me? "
    "\nNo, " "no, " "no, " "no, " "no " "I’ll " "love " "you " "still, "
    "\nWhat " for "tune " "e’er " be "tide " "me. "
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    \new ChoirStaff <<
      \new Staff = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \new Voice \TempoTrack
        \new Voice {\global \soprano}
        \addlyrics \sopranoWordsOne
        \addlyrics \sopranoWordsTwo
        \addlyrics \sopranoWordsThree
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \new Voice {\global \alto}
        \addlyrics \altoWordsOne
        \addlyrics \altoWordsTwo
        \addlyrics \altoWordsThree
      >>
      \new Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
        \clef "treble_8"
        \new Voice {\global \tenor}
        \addlyrics \tenorWordsOne
        \addlyrics \tenorWordsTwo
        \addlyrics \tenorWordsThree
      >>
      \new Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
        \clef bass
        \new Voice {\global \bass}
        \addlyrics \bassWordsOne
        \addlyrics \bassWordsTwo
        \addlyrics \bassWordsThree
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \new Voice \TempoTrack
        \new Voice {\global \repeat unfold 3 \soprano}
        \addlyrics {\sopranoWordsOne \sopranoWordsTwo \sopranoWordsThree}
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \new Voice {\global \alto \nl \alto \nl \alto \bar "|."}
        \addlyrics {\altoWordsOne \altoWordsTwo \altoWordsThree}
      >>
      \new Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
        \clef "treble_8"
        \new Voice {\global \repeat unfold 3 \tenor}
        \addlyrics {\tenorWordsOne \tenorWordsTwo \tenorWordsThree}
      >>
      \new Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
        \clef bass
        \new Voice {\global \repeat unfold 3 \bass}
        \addlyrics {\bassWordsOne \bassWordsTwo \bassWordsThree}
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

\book {
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
      \new Staff = soprano \with {
        instrumentName = Soprano
        shortInstrumentName = S
      }
      <<
        \new Voice \TempoTrack
        \new Voice {\global \repeat unfold 3 \soprano}
        \addlyrics {\sopranoWordsOne \sopranoWordsTwo \sopranoWordsThree}
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \new Voice {\global \alto \nl \alto \nl \alto \bar "|."}
        \addlyrics {\altoWordsOne \altoWordsTwo \altoWordsThree}
      >>
      \new Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
        \clef "treble_8"
        \new Voice {\global \repeat unfold 3 \tenor}
        \addlyrics {\tenorWordsOne \tenorWordsTwo \tenorWordsThree}
      >>
      \new Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
        \clef bass
        \new Voice {\global \repeat unfold 3 \bass}
        \addlyrics {\bassWordsOne \bassWordsTwo \bassWordsThree}
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

\book {
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
        \new Voice \TempoTrack
        \new Voice {\global \repeat unfold 3 \soprano}
        \addlyrics {\sopranoWordsOne \sopranoWordsTwo \sopranoWordsThree}
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \magnifyStaff #4/7
        \new Voice {\global \alto \nl \alto \nl \alto \bar "|."}
        \addlyrics {\tiny \altoWordsOne \altoWordsTwo \altoWordsThree}
      >>
      \new Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice {\global \repeat unfold 3 \tenor}
        \addlyrics {\tiny \tenorWordsOne \tenorWordsTwo \tenorWordsThree}
      >>
      \new Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice {\global \repeat unfold 3 \bass}
        \addlyrics {\tiny \bassWordsOne \bassWordsTwo \bassWordsThree}
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

\book {
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
        \magnifyStaff #4/7
        \new Voice \TempoTrack
        \new Voice {\global \repeat unfold 3 \soprano}
        \addlyrics {\tiny \sopranoWordsOne \sopranoWordsTwo \sopranoWordsThree}
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \new Voice {\global \alto \nl \alto \nl \alto \bar "|."}
        \addlyrics {\altoWordsOne \altoWordsTwo \altoWordsThree}
      >>
      \new Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice {\global \repeat unfold 3 \tenor}
        \addlyrics {\tiny \tenorWordsOne \tenorWordsTwo \tenorWordsThree}
      >>
      \new Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice {\global \repeat unfold 3 \bass}
        \addlyrics {\tiny \bassWordsOne \bassWordsTwo \bassWordsThree}
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

\book {
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
        \magnifyStaff #4/7
        \new Voice \TempoTrack
        \new Voice {\global \repeat unfold 3 \soprano}
        \addlyrics {\tiny \sopranoWordsOne \sopranoWordsTwo \sopranoWordsThree}
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \magnifyStaff #4/7
        \new Voice {\global \alto \nl \alto \nl \alto \bar "|."}
        \addlyrics {\tiny \altoWordsOne \altoWordsTwo \altoWordsThree}
      >>
      \new Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
        \clef "treble_8"
        \new Voice {\global \repeat unfold 3 \tenor}
        \addlyrics {\tenorWordsOne \tenorWordsTwo \tenorWordsThree}
      >>
      \new Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice {\global \repeat unfold 3 \bass}
        \addlyrics {\tiny \bassWordsOne \bassWordsTwo \bassWordsThree}
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

\book {
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
        \magnifyStaff #4/7
        \new Voice \TempoTrack
        \new Voice {\global \repeat unfold 3 \soprano}
        \addlyrics {\tiny \sopranoWordsOne \sopranoWordsTwo \sopranoWordsThree}
      >>
      \new Staff = alto \with {
        instrumentName = Alto
        shortInstrumentName = A
      }
      <<
        \magnifyStaff #4/7
        \new Voice {\global \alto \nl \alto \nl \alto \bar "|."}
        \addlyrics {\tiny \altoWordsOne \altoWordsTwo \altoWordsThree}
      >>
      \new Staff = tenor \with {
        instrumentName = Tenor
        shortInstrumentName = T
      }
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice {\global \repeat unfold 3 \tenor}
        \addlyrics {\tiny \tenorWordsOne \tenorWordsTwo \tenorWordsThree}
      >>
      \new Staff = bass \with {
        instrumentName = Bass
        shortInstrumentName = B
      }
      <<
        \clef bass
        \new Voice {\global \repeat unfold 3 \bass}
        \addlyrics {\bassWordsOne \bassWordsTwo \bassWordsThree}
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern-cautionary
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

\book {
  \paper {
    output-suffix = midi-sop
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \TempoTrack
        \new Voice {\global \repeat unfold 3 \soprano}
        \addlyrics \sopranoWordsMidi
      >>
      \new Staff = alto \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice {\global \alto \nl \alto \nl \alto \bar "|."}
      >>
      \new Staff = tenor \with {
        midiInstrument = "choir aahs"
      }
      <<
        \clef "treble_8"
        \new Voice {\global \repeat unfold 3 \tenor}
      >>
      \new Staff = bass \with {
        midiInstrument = "choir aahs"
      }
      <<
        \clef bass
        \new Voice {\global \repeat unfold 3 \bass}
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
    output-suffix = midi-alto
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \TempoTrack
        \new Voice {\global \repeat unfold 3 \soprano}
      >>
      \new Staff = alto \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice {\global \alto \nl \alto \nl \alto \bar "|."}
        \addlyrics \altoWordsMidi
      >>
      \new Staff = tenor \with {
        midiInstrument = "choir aahs"
      }
      <<
        \clef "treble_8"
        \new Voice {\global \repeat unfold 3 \tenor}
      >>
      \new Staff = bass \with {
        midiInstrument = "choir aahs"
      }
      <<
        \clef bass
        \new Voice {\global \repeat unfold 3 \bass}
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
    output-suffix = midi-tenor
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \TempoTrack
        \new Voice {\global \repeat unfold 3 \soprano}
      >>
      \new Staff = alto \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice {\global \alto \nl \alto \nl \alto \bar "|."}
      >>
      \new Staff = tenor \with {
        midiInstrument = "choir aahs"
      }
      <<
        \clef "treble_8"
        \new Voice {\global \repeat unfold 3 \tenor}
        \addlyrics \tenorWordsMidi
      >>
      \new Staff = bass \with {
        midiInstrument = "choir aahs"
      }
      <<
        \clef bass
        \new Voice {\global \repeat unfold 3 \bass}
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
    output-suffix = midi-bass
  }
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice \TempoTrack
        \new Voice {\global \repeat unfold 3 \soprano}
      >>
      \new Staff = alto \with {
        midiInstrument = "choir aahs"
      }
      <<
        \new Voice {\global \alto \nl \alto \nl \alto \bar "|."}
      >>
      \new Staff = tenor \with {
        midiInstrument = "choir aahs"
      }
      <<
        \clef "treble_8"
        \new Voice {\global \repeat unfold 3 \tenor}
      >>
      \new Staff = bass \with {
        midiInstrument = "choir aahs"
      }
      <<
        \clef bass
        \new Voice {\global \repeat unfold 3 \bass}
        \addlyrics \bassWordsMidi
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
