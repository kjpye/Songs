\version "2.25.26"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come Again, Sweet Love"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "John Dowland"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
  tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 2/4
  \tempo 4=120
}

soprano = \relative c'' {
  \global
  \repeat volta 3 {
    r4 b8. c16
    d2
    r4 d
    e4 d
    c4. c8
    b2
    r4 d
    d4 c
    b4 b
    a2
    r4 a
    b4 g
    a4. a8
    a2
    \repeat volta 2 {
      r8 d, g4
      r8 e a4
      r8 fis b4
      r8 g c4
      r8 a d4~
      d2~
      d2
      r8 d c b
      a4 r8 b
      a8 g g4~(
      g8 fis16 e) fis4
      g2
    }
    R2
  }
}

dynamicsSop = {
}

alto = \relative c'' {
  \global
  \repeat volta 3 {
    g4. g8
    g2
    r4 b
    a8 g g4~
    g4 fis
    g2
    r4 g
    g4 e8.(fis16)
    g4. g8
    fis2
    r4 fis
    g4. d8
    e4. e8
    fis2
    \repeat volta 2 {
      d2
      e4 r8 e
      fis4 r8 fis
      g4 r8 g
      a4 r8 a
      b2~
      b4 a
      g8. f16 e8 g
      fis4. g8
      e4 b8(c)
      d4. c8
      b2
    }
    R2
  }
}

dynamicsAlto = {
}

tenor = \relative c' {
  \global
  \clef "treble_8"
  \repeat volta 3 {
    d4. d8
    b2
    r4 b
    c4 d
    e4. d16(c)
    d2
    r4 b
    b a
    g4 d'
    d2
    r4 d
    d4. d8
    d4 cis
    d2
    \repeat volta 2 {
      g,2
      g4 r8 c
      a4 r8 d
      b4 r8 e
      d4. c8
      b8 g g a
      b4 c
      d4 r8 g,
      d'4. d8
      c8 b b a16(g)
      a4. a8
      g2
    }
    R2
  }
}
  
dynamicsTenor = {
}

bass= \relative c' {
  \global
  \clef bass
  \repeat volta 3 {
    g4 g
    g2
    r4 g,
    c4 b
    a4. a8
    g2
    r4 g
    g4 a
    b4 g
    d'2
    r4 d
    g,4 b
    a4. a8
    d2
    \repeat volta 2 {
      b2
      c4. c8
      d4. d8
      e4. e8
      fis4. fis8
      g4 g,
      g4 a
      b4 c
      d4 b
      c8(d) e4
      d4. d8
      g,2
    }
    R2
  }
}

dynamicsBass = {
}

wordsSopOne = \lyricmode {
  \set stanza = "1. "
  Come a -- gain! sweet love doth now in -- vite
  Thy grac -- es, that re -- frain
  To do me due de -- light;
  \repeat volta 2 {
    To see, to hear, to touch, to kiss, to die, __
    With thee a -- gain in sweet -- est sym -- pa -- thy.
  }
}

wordsSopTwo = \lyricmode {
  \set stanza = "2. "
  Come a -- gain! that I may cease to mourn
  Through thy un -- kind dis -- dain:
  For now, left and for -- lorn,
  \repeat volta 2 {
    I sit, I sigh, I weep, I faint, I die, __
    In dead -- ly pain, and end -- less mis -- er -- y.
  }
}

wordsSopThree = \lyricmode {
  \set stanza = "3. "
  Gen -- tle Love, draw forth thy wound -- ing dart,
  Thou canst not pierce her heart:
  For I, that do ap -- prove
  \repeat volta 2 {
    By sighs and tears, "(more" hot that they are "shafts)" __
    Do tempt: while she, while she, for tri -- umphs, laughs.
  }
}

wordsSopMidi = \lyricmode {
  "Come " a "gain! " "sweet " "love " "doth " "now " in "vite "
  "\nThy " grac "es, " "that " re "frain "
  "\nTo " "do " "me " "due " de "light; "
  \repeat volta 2 {
    "\nTo " "see, " "to " "hear, " "to " "touch, " "to " "kiss, " "to " "die, "
    "\nWith " "thee " a "gain " "in " sweet "est " sym pa "thy. "
  }

  "\nCome " a "gain! " "that " "I " "may " "cease " "to " "mourn "
  "\nThrough " "thy " un "kind " dis "dain: "
  "\nFor " "now, " "left " "and " for "lorn, "
  \repeat volta 2 {
    "\nI " "sit, " "I " "sigh, " "I " "weep, " "I " "faint, " "I " "die, "
    "\nIn " dead "ly " "pain, " "and " end "less " mis er "y. "
  }
  
  "\nGen" "tle " "Love, " "draw " "forth " "thy " wound "ing " "dart, "
  "\nThou " "canst " "not " "pierce " "her " "heart: "
  "\nFor " "I, " "that " "do " ap "prove "
  \repeat volta 2 {
    "\nBy " "sighs " "and " "tears, " "(more " "hot " "that " "they " "are " "shafts) " 
    "\nDo " "tempt: " "while " "she, " "while " "she, " "for " tri "umphs, " "laughs. "
  }
}

wordsAltoOne = \lyricmode {
  \set stanza = "1. "
  Come a -- gain! sweet love doth now in -- vite
  Thy grac -- es, that re -- frain
  To do me due de -- light;
  \repeat volta 2 {
    To see, to hear, to touch, to kiss, to die, to die, __
    With thee a -- gain in sweet -- est sym -- pa -- thy.
  }
}

wordsAltoTwo = \lyricmode {
  \set stanza = "2. "
  Come a -- gain! that I may cease to mourn
  Through thy un -- kind dis -- dain:
  For now, left and for -- lorn,
  \repeat volta 2 {
    I sit, I sigh, I weep, I faint, I die, I die, __
    In dead -- ly pain, and end -- less mis -- er -- y.
  }
}

wordsAltoThree = \lyricmode {
  \set stanza = "3. "
  Gen -- tle Love, draw forth thy wound -- ing dart,
  Thou canst not pierce her heart:
  For I, that do ap -- prove
  \repeat volta 2 {
    By sighs and tears, "(more" hot that they are "shafts)" __
    Do tempt, do tempt: while she, while she, for tri -- umphs, laughs.
  }
}

wordsAltoMidi = \lyricmode {
  "Come " a "gain! " "sweet " "love " "doth " "now " in "vite "
  "\nThy " grac "es, " "that " re "frain "
  "\nTo " "do " "me " "due " de "light; "
  \repeat volta 2 {
    "\nTo " "see, " "to " "hear, " "to " "touch, " "to " "kiss, " "to " "die, " "to " "die, "
    "\nWith " "thee " a "gain " "in " sweet "est " sym pa "thy. "
  }

  "\nCome " a "gain! " "that " "I " "may " "cease " "to " "mourn "
  "\nThrough " "thy " un "kind " dis "dain: "
  "\nFor " "now, " "left " "and " for "lorn, "
  \repeat volta 2 {
    "\nI " "sit, " "I " "sigh, " "I " "weep, " "I " "faint, " "I " "die, " "I " "die, "
    "\nIn " dead "ly " "pain, " "and " end "less " mis er "y. "
  }

  "\nGen" "tle " "Love, " "draw " "forth " "thy " wound "ing " "dart, "
  "\nThou " "canst " "not " "pierce " "her " "heart: "
  "\nFor " "I, " "that " "do " ap "prove "
  \repeat volta 2 {
    "\nBy " "sighs " "and " "tears, " "(more " "hot " "that " "they " "are " "shafts) " 
    "\nDo " "tempt, " "do " "tempt: " "while " "she, " "while " "she, " "for " tri "umphs, " "laughs. "
  }
}

wordsTenorOne = \lyricmode {
  \set stanza = "1. "
  Come a -- gain! sweet love doth now in -- vite
  Thy grac -- es, that re -- frain
  To do me due de -- light;
  \repeat volta 2 {
    To see, to hear, to touch, to kiss, to die, to die,
    With thee a -- gain, with thee a -- gain  in sweet -- est sym -- pa -- thy.
  }
}

wordsTenorTwo = \lyricmode {
  \set stanza = "2. "
  Come a -- gain! that I may cease to mourn
  Through thy un -- kind dis -- dain:
  For now, left and for -- lorn,
  \repeat volta 2 {
    I sit, I sigh, I weep, I faint, I die, I die,
    In dead -- ly pain, in dead -- ly pain and end -- less mis -- er -- y.
  }
}

wordsTenorThree = \lyricmode {
  \set stanza = "3. "
  Gen -- tle Love, draw forth thy wound -- ing dart,
  Thou canst not pierce her heart:
  For I, that do ap -- prove
  \repeat volta 2 {
    By sighs and tears, "(more" hot that they are shafts, are "shafts)"
    Do tempt, do tempt: while she, while she, for tri -- umphs, tri -- umphs laughs.
  }
}

wordsTenorMidi = \lyricmode {
  "Come " a "gain! " "sweet " "love " "doth " "now " in "vite "
  "\nThy " grac "es, " "that " re "frain "
  "\nTo " "do " "me " "due " de "light; "
  \repeat volta 2 {
    "\nTo " "see, " "to " "hear, " "to " "touch, " "to " "kiss, " "to " "die, " "to " "die, "
    "\nWith " "thee " a "gain, " "with " "thee " a "gain "  "in " sweet "est " sym pa "thy. "
  }

  "\nCome " a "gain! " "that " "I " "may " "cease " "to " "mourn "
  "\nThrough " "thy " un "kind " dis "dain: "
  "\nFor " "now, " "left " "and " for "lorn, "
  \repeat volta 2 {
    "\nI " "sit, " "I " "sigh, " "I " "weep, " "I " "faint, " "I " "die, " "I " "die, "
    "\nIn " dead "ly " "pain, " "in " dead "ly " "pain " "and " end "less " mis er "y. "
  }

  "\nGen" "tle " "Love, " "draw " "forth " "thy " wound "ing " "dart, "
  "\nThou " "canst " "not " "pierce " "her " "heart: "
  "\nFor " "I, " "that " "do " ap "prove "
  \repeat volta 2 {
    "\nBy " "sighs " "and " "tears, " "(more " "hot " "that " "they " "are " "shafts, " "are " "shafts) "
    "\nDo " "tempt, " "do " "tempt: " "while " "she, " "while " "she, " "for " tri "umphs, " tri "umphs " "laughs. "
  }
}

wordsBassOne = \lyricmode {
  \set stanza = "1."
  Come a -- gain! sweet love doth now in -- vite
  Thy grac -- es, that re -- frain
  To do me due de -- light;
  \repeat volta 2 {
    To see, to hear, to touch, to kiss, to die, to die,
    With thee a -- gain in sweet -- est sym -- pa -- thy.
  }
}

wordsBassTwo = \lyricmode {
  \set stanza = "2."
  Come a -- gain! that I may cease to mourn
  Through thy un -- kind dis -- dain:
  For now, left and for -- lorn,
  \repeat volta 2 {
    I sit, I sigh, I weep, I faint, I die, I die,
    In dead -- ly pain, and end -- less mis -- er -- y.
  }
}

wordsBassThree = \lyricmode {
  \set stanza = "3."
  Gen -- tle Love, draw forth thy wound -- ing dart,
  Thou canst not pierce her heart:
  For I, that do ap -- prove
  \repeat volta 2 {
    By sighs and tears, "(more" hot that they are "shafts)"
    Do tempt, do tempt: while she, while she, for tri -- umphs, laughs.
  }
}

wordsBassMidi = \lyricmode {
  "Come " a "gain! " "sweet " "love " "doth " "now " in "vite "
  "\nThy " grac "es, " "that " re "frain "
  "\nTo " "do " "me " "due " de "light; "
  \repeat volta 2 {
    "\nTo " "see, " "to " "hear, " "to " "touch, " "to " "kiss, " "to " "die, " "to " "die, "
    "\nWith " "thee " a "gain " "in " sweet "est " sym pa "thy. "
  }

  "\nCome " a "gain! " "that " "I " "may " "cease " "to " "mourn "
  "\nThrough " "thy " un "kind " dis "dain: "
  "\nFor " "now, " "left " "and " for "lorn, "
  \repeat volta 2 {
    "\nI " "sit, " "I " "sigh, " "I " "weep, " "I " "faint, " "I " "die, " "I " "die, "
    "\nIn " dead "ly " "pain, " "and " end "less " mis er "y. "
  }

  "\nGen" "tle " "Love, " "draw " "forth " "thy " wound "ing " "dart, "
  "\nThou " "canst " "not " "pierce " "her " "heart: "
  "\nFor " "I, " "that " "do " ap "prove "
  \repeat volta 2 {
    "\nBy " "sighs " "and " "tears, " "(more " "hot " "that " "they " "are " "shafts) "
    "\nDo " "tempt, " "do " "tempt: " "while " "she, " "while " "she, " "for " tri "umphs, " "laughs. "
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" {\soprano \bar "|."}
          \addlyrics \wordsSopOne
          \addlyrics \wordsSopTwo
          \addlyrics \wordsSopThree
        >>
                                % Single alto staff
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
          \addlyrics \wordsAltoOne
          \addlyrics \wordsAltoTwo
          \addlyrics \wordsAltoThree
        >>
                                % Single tenor staff
        \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \new Voice = "tenor" \tenor
          \addlyrics \wordsTenorOne
          \addlyrics \wordsTenorTwo
          \addlyrics \wordsTenorThree
        >>
                                % Single bass staff
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \bass
          \addlyrics \wordsBassOne
          \addlyrics \wordsBassTwo
          \addlyrics \wordsBassThree
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" {\soprano \bar "|."}
          \addlyrics { \wordsSopOne \wordsSopTwo \wordsSopThree }
        >>
                                % Single alto staff
        \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
          \addlyrics { \wordsAltoOne \wordsAltoTwo \wordsAltoThree }
        >>
                                % Single tenor staff
        \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \new Voice = "tenor" \tenor
          \addlyrics { \wordsTenorOne \wordsTenorTwo \wordsTenorThree }
        >>
                                % Single bass staff
        \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \bass
          \addlyrics { \wordsBassOne \wordsBassTwo \wordsBassThree }
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" {\soprano \bar "|."}
          \addlyrics { \wordsSopOne \wordsSopTwo \wordsSopThree}
        >>
                                % Single alto staff
        \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
          \addlyrics { \wordsAltoOne \wordsAltoTwo \wordsAltoThree}
        >>
                                % Single tenor staff
        \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \new Voice = "tenor" \tenor
          \addlyrics { \wordsTenorOne \wordsTenorTwo \wordsTenorThree}
        >>
                                % Single bass staff
        \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \bass
          \addlyrics { \wordsBassOne \wordsBassTwo \wordsBassThree}
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix singlepage-sop
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
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" {\soprano \bar "|."}
          \addlyrics {\wordsSopOne \wordsSopTwo \wordsSopThree}
        >>
                                % Single alto staff
        \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \magnifyStaff #4/7
          \new Voice = "alto" \alto
          \addlyrics {\tiny \wordsAltoOne \wordsAltoTwo \wordsAltoThree}
        >>
                                % Single tenor staff
        \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \magnifyStaff #4/7
          \new Voice = "tenor" \tenor
          \addlyrics { \tiny \wordsTenorOne \wordsTenorTwo \wordsTenorThree }
        >>
                                % Single bass staff
        \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \magnifyStaff #4/7
          \new Voice = "bass" \bass
          \addlyrics { \tiny \wordsBassOne \wordsBassTwo \wordsBassThree }
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}


\book {
  \bookOutputSuffix singlepage-alto
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
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \magnifyStaff #4/7
          \new Voice = "soprano" {\soprano \bar "|."}
          \addlyrics {\tiny \wordsSopOne \wordsSopTwo \wordsSopThree}
        >>
                                % Single alto staff
        \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
          \addlyrics {\wordsAltoOne \wordsAltoTwo \wordsAltoThree}
        >>
                                % Single tenor staff
        \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \magnifyStaff #4/7
          \new Voice = "tenor" \tenor
          \addlyrics { \tiny \wordsTenorOne \wordsTenorTwo \wordsTenorThree }
        >>
                                % Single bass staff
        \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \magnifyStaff #4/7
          \new Voice = "bass" \bass
          \addlyrics { \tiny \wordsBassOne \wordsBassTwo \wordsBassThree }
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}


\book {
  \bookOutputSuffix singlepage-tenor
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
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \magnifyStaff #4/7
          \new Voice = "soprano" {\soprano \bar "|."}
          \addlyrics {\tiny \wordsSopOne \wordsSopTwo \wordsSopThree}
        >>
                                % Single alto staff
        \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \magnifyStaff #4/7
          \new Voice = "alto" \alto
          \addlyrics {\tiny \wordsAltoOne \wordsAltoTwo \wordsAltoThree}
        >>
                                % Single tenor staff
        \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \new Voice = "tenor" \tenor
          \addlyrics {\wordsTenorOne \wordsTenorTwo \wordsTenorThree }
        >>
                                % Single bass staff
        \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \magnifyStaff #4/7
          \new Voice = "bass" \bass
          \addlyrics { \tiny \wordsBassOne \wordsBassTwo \wordsBassThree }
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}


\book {
  \bookOutputSuffix singlepage-bass
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
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \magnifyStaff #4/7
          \new Voice = "soprano" {\soprano \bar "|."}
          \addlyrics {\tiny \wordsSopOne \wordsSopTwo \wordsSopThree}
        >>
                                % Single alto staff
        \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \magnifyStaff #4/7
          \new Voice = "alto" \alto
          \addlyrics {\tiny \wordsAltoOne \wordsAltoTwo \wordsAltoThree}
        >>
                                % Single tenor staff
        \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \magnifyStaff #4/7
          \new Voice = "tenor" \tenor
          \addlyrics { \tiny \wordsTenorOne \wordsTenorTwo \wordsTenorThree }
        >>
                                % Single bass staff
        \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \bass
          \addlyrics {\wordsBassOne \wordsBassTwo \wordsBassThree }
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" \soprano
          \addlyrics \wordsSopMidi
        >>
                                % Single alto staff
        \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
        >>
                                % Single tenor staff
        \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \new Voice = "tenor" \tenor
        >>
                                % Single bass staff
        \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \bass
        >>
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
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
          \addlyrics \wordsAltoMidi
        >>
                                % Single tenor staff
        \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \new Voice = "tenor" \tenor
        >>
                                % Single bass staff
        \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \bass
        >>
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
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
        >>
                                % Single tenor staff
        \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \new Voice = "tenor" \tenor
          \addlyrics \wordsTenorMidi
        >>
                                % Single bass staff
        \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \bass
        >>
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
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Staff = alto \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
        >>
                                % Single tenor staff
        \new Staff = tenor \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
          \new Voice = "tenor" \tenor
        >>
                                % Single bass staff
        \new Staff = bass \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \bass
          \addlyrics \wordsBassMidi
        >>
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
