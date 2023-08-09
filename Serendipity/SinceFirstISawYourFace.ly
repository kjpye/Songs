\version "2.25.0"

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
    d2.
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
  Since first I saw your face I re -- solv'd to ho -- nour and re -- known ye;
  If now I be dis -- dain'd, I wish my heart had ne -- ver known ye.
  \repeat volta 2 {
    What I that loved, and you that lik'd,
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
    There, O there, wher -- "e'er" I go,
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
    Is't now the time to chide me?
    No, no, no I'll love you still,
    What for -- tune e'er be -- tide me.
  }
}

sopranoWordsMidi = \lyricmode {
  \set stanza = "1."
  "Since " "first " "I " "saw " "your " "face " "I " re "solv'd " "to " ho "nour " "and " re "known " "ye; "
  "\nIf " "now " "I " "be " dis "dain'd, " "I " "wish " "my " "heart " "had " ne "ver " "known " "ye.\n"
  \repeat volta 2 {
    "\nWhat " "I " "that " "loved, " "and " "you " "that " "lik'd, "
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
    "\nThere, " "O " "there, " wher "e'er " "I " "go, "
    "\nI " "leave " "my " "heart " be "hind " "me.\n"
  }

  \set stanza = "3."
  "\nIf " "I " de "sire " "or " "praise " "you " "too " "much, "
  "\nThat " "fault " "you " "may " for "give " "me, "
  "\nOr " "if " "my " "hands " "had " "strayed " "a " "touch, "
  "\nThen " just "ly " "might " "you " "leave " "me.\n"
  \repeat volta 2 {
    "\nI " "asked " "you " "leave " "you " "bade " "me " "love, "
    "\nIs't " "now " "the " "time " "to " "chide " "me? "
    "\nNo, " "no, " "no " "I'll " "love " "you " "still, "
    "\nWhat " for "tune " "e'er " be "tide " "me.\n"
  }
}

altoWordsOne = \lyricmode {
  \set stanza = "1."
  Since first I saw your face I re -- solv'd to ho -- nour and re -- known ye;
  If now I be dis -- dain'd, I wish my heart had ne -- ver known ye.
  \repeat volta 2 {
    What I that loved, and you that lik'd,
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
    There, O there, wher -- "e're," wher -- "e'er" I go,
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
    Is't now the time to chide me?
    No, no, no, no, no, I'll love you still,
    What for -- tune e'er be -- tide me.
  }
}

altoWordsMidi = \lyricmode {
  \set stanza = "1."
  "Since " "first " "I " "saw " "your " "face " "I " re "solv'd " "to " ho "nour " "and " re "known " "ye; "
  "\nIf " "now " "I " "be " dis "dain'd, " "I " "wish " "my " "heart " "had " ne "ver " "known " "ye.\n"
  \repeat volta 2 {
    "\nWhat " "I " "that " "loved, " "and " "you " "that " "lik'd, "
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
    "\nThere, " "O " "there, " wher "e're, " wher "e'er " "I " "go, "
    "\nI " "leave " "my " "heart " be "hind " "me.\n"
  }

  \set stanza = "3."
  "\nIf " "I " de "sire " "or " "praise " "you " "too " "much, "
  "\nThat " "fault " "you " "may " for "give " "me, "
  "\nOr " "if " "my " "hands " "had " "strayed " "a " "touch, "
  "\nThen " just "ly " "might " "you " "leave " "me.\n"
  \repeat volta 2 {
    "\nI " "asked " "you " "leave " "you " "bade " "me " "love, "
    "\nIs't " "now " "the " "time " "to " "chide " "me? "
    "\nNo, " "no, " "no, " "no, " "no, " "I'll " "love " "you " "still, "
    "\nWhat " for "tune " "e'er " be "tide " "me.\n"
  }
}

tenorWordsOne = \lyricmode {
  \set stanza = "1."
  Since first I saw your face I re -- solv'd to ho -- nour and re -- known ye;
  If now I be dis -- dain'd, I wish my heart had ne -- ver known ye.
  \repeat volta 2 {
    What I that loved, and you that lik'd,
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
    There, O there, wher -- "e're," wher -- "e'er" I go,
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
    Is't now the time to chide me?
    No, no, no, no, no, I'll love you still,
    What for -- tune e'er be -- tide me.
  }
}

tenorWordsMidi = \lyricmode {
  \set stanza = "1."
  "Since " "first " "I " "saw " "your " "face " "I " re "solv'd " "to " ho "nour " "and " re "known " "ye; "
  "\nIf " "now " "I " "be " dis "dain'd, " "I " "wish " "my " "heart " "had " ne "ver " "known " "ye.\n"
  \repeat volta 2 {
    "\nWhat " "I " "that " "loved, " "and " "you " "that " "lik'd, "
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
    "\nThere, " "O " "there, " wher "e're, " wher "e'er " "I " "go, "
    "\nI " "leave " "my " "heart " be "hind " "me.\n"
  }

  \set stanza = "3."
  "\nIf " "I " de "sire " "or " "praise " "you " "too " "much, "
  "\nThat " "fault " "you " "may " for "give " "me, "
  "\nOr " "if " "my " "hands " "had " "strayed " "a " "touch, "
  "\nThen " just "ly " "might " "you " "leave " "me.\n"
  \repeat volta 2 {
    "\nI " "asked " "you " "leave " "you " "bade " "me " "love, "
    "\nIs't " "now " "the " "time " "to " "chide " "me? "
    "\nNo, " "no, " "no, " "no, " "no, " "I'll " "love " "you " "still, "
    "\nWhat " for "tune " "e'er " be "tide " "me.n"
  }
}

bassWordsOne = \lyricmode {
  \set stanza = "1."
  Since first I saw your face I re -- solv'd to ho -- nour and re -- known ye;
  If now I be dis -- dain'd, I wish my heart had ne -- ver known ye.
  \repeat volta 2 {
    What I that loved, and you that lik'd,
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
    There, O there, wher -- "e're," wher -- "e'er" I go,
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
    Is't now the time to chide me?
    No, no, no, no, no I'll love you still,
    What for- -- tune e'er be -- tide me.
  }
}

bassWordsMidi = \lyricmode {
  \set stanza = "1."
  "Since " "first " "I " "saw " "your " "face " "I " re "solv'd " "to " ho "nour " "and " re "known " "ye; "
  "\nIf " "now " "I " "be " dis "dain'd, " "I " "wish " "my " "heart " "had " ne "ver " "known " "ye.\n"
  \repeat volta 2 {
    "\nWhat " "I " "that " "loved, " "and " "you " "that " "lik'd, "
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
    "\nThere, " "O " "there, " wher "e're, " wher "e'er " "I " "go, "
    "\nI " "leave " "my " "heart " be "hind " "me.\n"
  }

  \set stanza = "3."
  "\nIf " "I " de "sire " "or " "praise " "you " "too " "much, "
  "\nThat " "fault " "you " "may " for "give " "me, "
  "\nOr " "if " "my " "hands " "had " "strayed " "a " "touch, "
  "\nThen " just "ly " "might " "you " "leave " "me. "
  \repeat volta 2 {
    "\nI " "asked " "you " "leave " "you " "bade " "me " "love, "
    "\nIs't " "now " "the " "time " "to " "chide " "me? "
    "\nNo, " "no, " "no, " "no, " "no " "I'll " "love " "you " "still, "
    "\nWhat " for "tune " "e'er " be "tide " "me. "
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
    \new ChoirStaff <<
      \new Staff <<
        \new Voice \TempoTrack
        \new Voice = "soprano" {\global \soprano}
        \new Lyrics \lyricsto "soprano" \sopranoWordsOne
        \new Lyrics \lyricsto "soprano" \sopranoWordsTwo
        \new Lyrics \lyricsto "soprano" \sopranoWordsThree
      >>
      \new Staff <<
        \new Voice = "alto" {\global \alto}
        \new Lyrics \lyricsto "alto" \altoWordsOne
        \new Lyrics \lyricsto "alto" \altoWordsTwo
        \new Lyrics \lyricsto "alto" \altoWordsThree
      >>
      \new Staff <<
        \clef "treble_8"
        \new Voice = "tenor" {\global \tenor}
        \new Lyrics \lyricsto "tenor" \tenorWordsOne
        \new Lyrics \lyricsto "tenor" \tenorWordsTwo
        \new Lyrics \lyricsto "tenor" \tenorWordsThree
      >>
      \new Staff <<
        \clef bass
        \new Voice = "bass" {\global \bass}
        \new Lyrics \lyricsto "bass" \bassWordsOne
        \new Lyrics \lyricsto "bass" \bassWordsTwo
        \new Lyrics \lyricsto "bass" \bassWordsThree
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

#(set-global-staff-size 20)

nl = { \section \break }
\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff <<
        \new Voice \TempoTrack
        \new Voice = "soprano" {\global \repeat unfold 3 \soprano}
        \new Lyrics \lyricsto "soprano" {\sopranoWordsOne \sopranoWordsTwo \sopranoWordsThree}
      >>
      \new Staff <<
        \new Voice = "alto" {\global \alto \nl \alto \nl \alto \bar "|."}
        \new Lyrics \lyricsto "alto" {\altoWordsOne \altoWordsTwo \altoWordsThree}
      >>
      \new Staff <<
        \clef "treble_8"
        \new Voice = "tenor" {\global \repeat unfold 3 \tenor}
        \new Lyrics \lyricsto "tenor" {\tenorWordsOne \tenorWordsTwo \tenorWordsThree}
      >>
      \new Staff <<
        \clef bass
        \new Voice = "bass" {\global \repeat unfold 3 \bass}
        \new Lyrics \lyricsto "bass" {\bassWordsOne \bassWordsTwo \bassWordsThree}
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

#(set-global-staff-size 20)

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
      \new Staff <<
        \new Voice \TempoTrack
        \new Voice = "soprano" {\global \repeat unfold 3 \soprano}
        \new Lyrics \lyricsto "soprano" {\sopranoWordsOne \sopranoWordsTwo \sopranoWordsThree}
      >>
      \new Staff <<
        \new Voice = "alto" {\global \alto \nl \alto \nl \alto \bar "|."}
        \new Lyrics \lyricsto "alto" {\altoWordsOne \altoWordsTwo \altoWordsThree}
      >>
      \new Staff <<
        \clef "treble_8"
        \new Voice = "tenor" {\global \repeat unfold 3 \tenor}
        \new Lyrics \lyricsto "tenor" {\tenorWordsOne \tenorWordsTwo \tenorWordsThree}
      >>
      \new Staff <<
        \clef bass
        \new Voice = "bass" {\global \repeat unfold 3 \bass}
        \new Lyrics \lyricsto "bass" {\bassWordsOne \bassWordsTwo \bassWordsThree}
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

#(set-global-staff-size 20)

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
      \new Staff <<
        \new Voice \TempoTrack
        \new Voice = "soprano" {\global \repeat unfold 3 \soprano}
        \new Lyrics \lyricsto "soprano" {\sopranoWordsOne \sopranoWordsTwo \sopranoWordsThree}
      >>
      \new Staff <<
        \magnifyStaff #4/7
        \new Voice = "alto" {\global \alto \nl \alto \nl \alto \bar "|."}
        \new Lyrics \lyricsto "alto" {\tiny \altoWordsOne \altoWordsTwo \altoWordsThree}
      >>
      \new Staff <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice = "tenor" {\global \repeat unfold 3 \tenor}
        \new Lyrics \lyricsto "tenor" {\tiny \tenorWordsOne \tenorWordsTwo \tenorWordsThree}
      >>
      \new Staff <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice = "bass" {\global \repeat unfold 3 \bass}
        \new Lyrics \lyricsto "bass" {\tiny \bassWordsOne \bassWordsTwo \bassWordsThree}
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

#(set-global-staff-size 20)

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
      \new Staff <<
        \magnifyStaff #4/7
        \new Voice \TempoTrack
        \new Voice = "soprano" {\global \repeat unfold 3 \soprano}
        \new Lyrics \lyricsto "soprano" {\tiny \sopranoWordsOne \sopranoWordsTwo \sopranoWordsThree}
      >>
      \new Staff <<
        \new Voice = "alto" {\global \alto \nl \alto \nl \alto \bar "|."}
        \new Lyrics \lyricsto "alto" {\altoWordsOne \altoWordsTwo \altoWordsThree}
      >>
      \new Staff <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice = "tenor" {\global \repeat unfold 3 \tenor}
        \new Lyrics \lyricsto "tenor" {\tiny \tenorWordsOne \tenorWordsTwo \tenorWordsThree}
      >>
      \new Staff <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice = "bass" {\global \repeat unfold 3 \bass}
        \new Lyrics \lyricsto "bass" {\tiny \bassWordsOne \bassWordsTwo \bassWordsThree}
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

#(set-global-staff-size 20)

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
      \new Staff <<
        \magnifyStaff #4/7
        \new Voice \TempoTrack
        \new Voice = "soprano" {\global \repeat unfold 3 \soprano}
        \new Lyrics \lyricsto "soprano" {\tiny \sopranoWordsOne \sopranoWordsTwo \sopranoWordsThree}
      >>
      \new Staff <<
        \magnifyStaff #4/7
        \new Voice = "alto" {\global \alto \nl \alto \nl \alto \bar "|."}
        \new Lyrics \lyricsto "alto" {\tiny \altoWordsOne \altoWordsTwo \altoWordsThree}
      >>
      \new Staff <<
        \clef "treble_8"
        \new Voice = "tenor" {\global \repeat unfold 3 \tenor}
        \new Lyrics \lyricsto "tenor" {\tenorWordsOne \tenorWordsTwo \tenorWordsThree}
      >>
      \new Staff <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice = "bass" {\global \repeat unfold 3 \bass}
        \new Lyrics \lyricsto "bass" {\tiny \bassWordsOne \bassWordsTwo \bassWordsThree}
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

#(set-global-staff-size 20)

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
      \new Staff <<
        \magnifyStaff #4/7
        \new Voice \TempoTrack
        \new Voice = "soprano" {\global \repeat unfold 3 \soprano}
        \new Lyrics \lyricsto "soprano" {\tiny \sopranoWordsOne \sopranoWordsTwo \sopranoWordsThree}
      >>
      \new Staff <<
        \magnifyStaff #4/7
        \new Voice = "alto" {\global \alto \nl \alto \nl \alto \bar "|."}
        \new Lyrics \lyricsto "alto" {\tiny \altoWordsOne \altoWordsTwo \altoWordsThree}
      >>
      \new Staff <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice = "tenor" {\global \repeat unfold 3 \tenor}
        \new Lyrics \lyricsto "tenor" {\tiny \tenorWordsOne \tenorWordsTwo \tenorWordsThree}
      >>
      \new Staff <<
        \clef bass
        \new Voice = "bass" {\global \repeat unfold 3 \bass}
        \new Lyrics \lyricsto "bass" {\bassWordsOne \bassWordsTwo \bassWordsThree}
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
  \bookOutputSuffix "midi-sop"
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff <<
        \new Voice \TempoTrack
        \new Voice = "soprano" {\global \repeat unfold 3 \soprano}
        \new Lyrics \lyricsto "soprano" \sopranoWordsMidi
      >>
      \new Staff <<
        \new Voice = "alto" {\global \alto \nl \alto \nl \alto \bar "|."}
      >>
      \new Staff <<
        \clef "treble_8"
        \new Voice = "tenor" {\global \repeat unfold 3 \tenor}
      >>
      \new Staff <<
        \clef bass
        \new Voice = "bass" {\global \repeat unfold 3 \bass}
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
  \bookOutputSuffix "midi-alto"
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff <<
        \new Voice \TempoTrack
        \new Voice = "soprano" {\global \repeat unfold 3 \soprano}
      >>
      \new Staff <<
        \new Voice = "alto" {\global \alto \nl \alto \nl \alto \bar "|."}
        \new Lyrics \lyricsto "alto" \altoWordsMidi
      >>
      \new Staff <<
        \clef "treble_8"
        \new Voice = "tenor" {\global \repeat unfold 3 \tenor}
      >>
      \new Staff <<
        \clef bass
        \new Voice = "bass" {\global \repeat unfold 3 \bass}
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
  \bookOutputSuffix "midi-tenor"
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff <<
        \new Voice \TempoTrack
        \new Voice = "soprano" {\global \repeat unfold 3 \soprano}
      >>
      \new Staff <<
        \new Voice = "alto" {\global \alto \nl \alto \nl \alto \bar "|."}
      >>
      \new Staff <<
        \clef "treble_8"
        \new Voice = "tenor" {\global \repeat unfold 3 \tenor}
        \new Lyrics \lyricsto "tenor" \tenorWordsMidi
      >>
      \new Staff <<
        \clef bass
        \new Voice = "bass" {\global \repeat unfold 3 \bass}
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
  \bookOutputSuffix "midi-bass"
  \score {
    \unfoldRepeats
    \new ChoirStaff <<
      \new Staff <<
        \new Voice \TempoTrack
        \new Voice = "soprano" {\global \repeat unfold 3 \soprano}
      >>
      \new Staff <<
        \new Voice = "alto" {\global \alto \nl \alto \nl \alto \bar "|."}
      >>
      \new Staff <<
        \clef "treble_8"
        \new Voice = "tenor" {\global \repeat unfold 3 \tenor}
      >>
      \new Staff <<
        \clef bass
        \new Voice = "bass" {\global \repeat unfold 3 \bass}
        \new Lyrics \lyricsto "bass" \bassWordsMidi
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
