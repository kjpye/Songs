% Original from John Lemcke

\version "2.25.15"

\include "kjp.ly"

\header {
  title = "My Country"
  composer = "Gustav Holst"
  arranger = "Arr. Stephen Sharp 2008"
  poet = "Dorothea Mackellar"
  tagline = ##f
  subsubtitle = \markup {
    \column {
      "The love of field and coppice,"
      "Of green and shaded lanes."
      "Of ordered woods and gardens"
      "Is running in your veins,"
      "Strong love of grey-blue distance"
      "Brown streams and soft dim skies"
      "I know but cannot share it,"
      "My love is otherwise."
    }
  }
}

\paper {
  ragged-last-bottom = ##t
  top-margin = 5\mm
  bottom-margin = 5\mm
  line-width = 180\mm
  left-margin = 20\mm
}

global = {
  \key c \major
  \time 3/4
  \partial 4
}

TempoTrack = {
  \tempo 4=76 s4 s2.*23 s2
}

soprano = \relative c'' {
  \global
  e,8( g) |
  a4. c8 b[g] | c(d) c4 b | a8 b a4 g | e2 e8( g) |
  a4. c8 b8.[g16] | c8(d) e4 e | e8 d c4 d | c2 \teeny g8(e) |
  d4. d8 c[e] | d4 g \normalsize g8( e) |d4. d8 e[g] | a2 a8( b) |
  c8. c16 b4 a | g c e, |d8 c d4 e | g2 e8( g) |
  a4. c8 b[g] | c(d) c4 b | a8 b a4 g | e2 e8( g) |
  a4. c8 b8.[g16] | c8(d) e4 e | e8 d c4 d | c2
}

melody = \relative c'' {
%  \global
  e,8(g) |
  a4. c8 b[g] | c(d) c4 b | a8 b a4 g | e2 e8( g) |
  a4. c8 b8.[g16] | c8(d) e4 e | e8 d c4 d | c2 g8(e) |
  d4. d8 c[e] | d4 g g8( e) |d4. d8 e[g] | a2 a8( b) |
  c8. c16 b4 a | g c e, |d8 c d4 e | g2 e8(g) |
  a4. c8 b[g] | c(d) c4 b | a8 b a4 g | e2 e8( g) |
  a4. c8 b8.[g16] | c8(d) e4 e | e8 d c4 d | c2 \bar "|."
}

pianoRHone = \relative c'' {
  \global
  e,8 (g) |
  a4. c8 b[g] | c(d) c4 b | a8 b a4 g | e2 e8( g) |
  a4. c8 b8.[g16] | c8(d) e4 e | e8 d c4 d | c2 g8 (e) |
  d4. d8 c[e] | d4 g g8( e) |d4. d8 e[g] | a2 a8( b) |
  c8. c16 b4 a | g c e, |d8 c d4 e | g2 e8 (g) |
  a4. c8 b[g] | c( d c4) b | a8 b a4 g | e2 e8( g) |
  a4. c8 b8.[g16] | c8(d) e4 e | e8 d c4 d | c2 \bar "|."
}

alto = \relative c' {
  \global
  e8(g) |
  f4. a8 g[f] | g4 e g | c,8 d c4 d | c2 e8( g) |
  f4. a8 g8.[f16] | e8(f) g4 c | c8 c a4 a | g2 g8(e) |
  d4. d8 c[e] | d4 g, g8( a) | b4. b8 c[e] | f2 f8( g) |
  a8. a16 a4 f | g f c |a8 c a4 c | d4(c) e8(g) |
  f4. a8 g[f] | g4 e g | c,8 d c4 d | c2 e8( g) |
  f4. a8 g8.[f16] | e8(f) g4 c | c8 8 a4 a | g2
}

pianoRHtwo = \relative c' {
  \global
  e8 (g) |
  f4. a8 g[f] | g4 e g | c,8 d c4 d | c2 e8( g) |
  f4. a8 g8.[f16] | e8(f) g4 c | c8 c a4 a | g2 g8 (e) |
  d4. d8 c[e] | d4 g, g8( a) | b4. b8 c[e] | f2 f8( g) |
  a8. a16 a4 f | g f c |a8 c a4 c | d4 (c) e8 ( g) |
  f4. a8 g[f] | g4 e g | c,8 d c4 d | c2 e8( g) |
  f4. a8 g8.[f16] | e8(f) g4 c | c8 8 a4 a | g2
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mf | s2.\cresc | s2.*6 | s2\f s4\mp | s2.\cresc | s2.*6 |
  s2\mf s4\cresc | s2.*7 | s2\f
}

tenor = \relative c {
  \global
  e8(g) | c4. c8 d[d] | e(f) e4 c | f8 f c4 b | c2 e8( b) |
  c4. c8 d8.[d16] | c4 c e | g8 f e4 d | e2 e8(c) |
  b4. b8 c[a] | b4 g c | b4. d8 c[b] | c2 d4 |
  e8. c16 c4 c | c c g | c8 a a4 a | g2 e'8(b)
  c4. c8 d[d] | e(f) e4 c | f8 f c4 b | c2 e8( b) |
  c4. c8 d8.[d16] | c4 c e | g8 f e4 f | e2}

pianoLHone = \relative c {
  \global
  e8 (g) | c4. c8 d[d] | e(f) e4 c | f8 f c4 b | c2 e8( b) |
  c4. c8 d8.[d16] | c4 c e | g8 f e4 d | e2 e8 (c) |
  b4. b8 c[a] | b4 g c | b4. d8 c[b] | c2 d4 |
  e8. c16 c4 c | c c g | c8 a a4 a | g2 e'8 (b)
  c4. c8 d[d] | e(f) e4 c | f8 f c4 b | c2 e8( b) |
  c4. c8 d8.[d16] | c4 c e | g8 f e4 f | e2
}

bass = \relative c {
  \global
  e8( g) |
  f4. e8 d[b'] | c4 g e | a8 g f4 g | a2 a8 (g) |
  f4. e8 d8.[b'16] | c4 g e | f8 f f4 f | c2 c8(e) |
  g4. g8 a[f] | g4 b, e | g b, c8 g' | f4( e) d |
  a'8. a16 g4 f | e d c | f8 e d4 c | b(a) g |
  f4. c'8 d[b'] | c4 g e | a8 g f4 g | a2 a8 (g) |
  f4. e8 d8.[b'16] | c4 g e | f8 f f4 f | c2}

pianoLHtwo = \relative c {
  e8 (g) |
  f4. e8 d[b'] | c4 g e | a8 g f4 g | a2 a8 (g) |
  f4. e8 d8.[b'16] | c4 g e | f8 f f4 f | c2 c8 (e) |
  g4. g8 a[f] | g4 b, e | g b, c8 g' | f4( e) d |
  a'8. a16 g4 f | e d c | f8 e d4 c | b (a) g |
  f4. c'8 d[b'] | c4 g e | a8 g f4 g | a2 a8 (g) |
  f4. e8 d8.[b'16] | c4 g e | f8 f f4 f | c2
}

sopranoVerseOne = \lyricmode {
  I love a sun -- burnt coun -- try,
  a land of sweep -- ing plains,
  of rag -- ged moun -- tain ran -- ges,
  of droughts and flood -- ing rains.
  \markup {\italic (The }
    \markup {\italic stark }
    \markup {\italic white }
    \markup {\italic ring-}
    \markup {\italic barked }
    \markup {\italic for } --
    \markup {\italic ests,) }
  all tra -- gic to the moon,
  the sap -- phire mis -- ted moun -- tains,
  the hot gold hush of noon.
  I love her far hor -- i -- zons,
  I love her jew -- el sea,
  her beau -- ty and her ter -- ror,
  the wide brown land for me.
}

sopVerseTwo = \lyricmode {
  \set stanza = "Unison -"
  Core of my heart my coun -- try,
  land of the rain -- bow gold.
  For flood and fire and fa -- mine,
  she pays us back three fold.
  An o -- pal hear -- ted coun -- try
  a wil -- ful lav -- ish land.
  All you who have not loved her,
  you will not un -- der -- stand.
  Though earth holds ma -- ny splen -- dours,
  wher -- ev -- er I may die,
  I know to what brown coun -- try
  my hom -- ing thoughts will fly.
}

VerseOne = \lyricmode {
  I love a sun -- burnt coun -- try,
  a land of sweep -- ing plains,
  of rag -- ged moun -- tain ran -- ges,
  of droughts and flood -- ing rains.
  The stark white ring- -- barked for -- ests,
  all tra -- gic to the moon,
  the sap -- phire mis -- ted moun -- tains,
  the hot gold hush of noon.
  I love her far hor -- i -- zons,
  I love her jew -- el sea,
  her beau -- ty and her terr -- or,
  the wide brown land for me.
}

VerseTwo = \lyricmode {
  Core of my heart my coun -- try,
  land of the rain -- bow gold.
  For flood and fire and fam -- ine,
  she pays us back three fold.
  An o -- pal hear -- ted coun -- try
  a wil -- ful lav -- ish land.
  All you who have not loved her,
  you will not un -- der -- stand.
  Though earth holds ma -- ny splen -- dours,
  wher -- ev -- er I may die,
  I know to what brown coun -- try
  my hom -- ing thoughts will fly.

}

wordsMidi = \lyricmode {
  "I " "love " "a " sun "burnt " coun "try, "
  "\na " "land " "of " sweep "ing " "plains, "
  "\nof " rag "ged " moun "tain " ran "ges, "
  "\nof " "droughts " "and " flood "ing " "rains. "
  "\nThe " "stark " "white " ring- "barked " for "ests, "
  "\nall " tra "gic " "to " "the " "moon, "
  "\nthe " sap "phire " mis "ted " moun "tains, "
  "\nthe " "hot " "gold " "hush " "of " "noon. "
  "\nI " "love " "her " "far " hor i "zons, "
  "\nI " "love " "her " jew "el " "sea, "
  "\nher " beau "ty " "and " "her " terr "or, "
  "\nthe " "wide " "brown " "land " "for " "me.\n"

  "\nCore " "of " "my " "heart " "my " coun "try, "
  "\nland " "of " "the " rain "bow " "gold. "
  "\nFor " "flood " "and " "fire " "and " fam "ine, "
  "\nshe " "pays " "us " "back " "three " "fold. "
  "\nAn " o "pal " hear "ted " coun "try "
  "\na " wil "ful " lav "ish " "land. "
  "\nAll " "you " "who " "have " "not " "loved " "her, "
  "\nyou " "will " "not " un der "stand. "
  "\nThough " "earth " "holds " ma "ny " "splendours, "
  "\nwher" ev "er " "I " "may " "die, "
  "\nI " "know " "to " "what " "brown " coun "try "
  "\nmy " hom "ing " "thoughts " "will " "fly. "

}

bassVerseOne = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.

}

bassVerseTwo = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.

}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    \new ChoirStaff <<
      \new Staff = soprano \with {
        instrumentName = S
        shortInstrumentName = S
      }
      <<
        \new Dynamics \with {alignAboveContext = soprano} \dynamicsPiano
        \new Voice { \soprano \bar ":|." }
        \addlyrics \sopranoVerseOne
        \addlyrics \sopVerseTwo
      >>
      \new Staff = alto \with {
        instrumentName = A
        shortInstrumentName = A
        }
      <<
        \new Dynamics \with {alignAboveContext = alto} \dynamicsPiano
        \new Voice \alto
        \addlyrics \VerseOne
      >>
      \new Staff = tenor \with {
        instrumentName = T
        shortInstrumentName = T
        }
      <<
        \new Dynamics \with {alignAboveContext = tenor} \dynamicsPiano
        \clef "treble_8"
        \new Voice \tenor
        \addlyrics \VerseOne
      >>
      \new Staff = bass \with {
        instrumentName = B
        shortInstrumentName = B
        }
      <<
        \new Dynamics \with {alignAboveContext = bass} \dynamicsPiano
        \clef bass
        \new Voice \bass
        \addlyrics \VerseOne
      >>
    >>
    \layout {
      indent = 0
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

#(set-global-staff-size 17)

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = piano
  }
  \score {
    \new PianoStaff <<
      \new Staff \with {
        midiInstrument = "acoustic grand piano"
        printPartCombineTexts = ##f
      }
      <<
        \new Voice \partCombine \pianoRHone \pianoRHtwo
        \new NullVoice { \soprano \bar ":|." }
        \addlyrics { \sopranoVerseOne }
        \addlyrics { \sopVerseTwo }
      >>
      \new Dynamics \dynamicsPiano
      \new Staff \with {
        midiInstrument = "acoustic grand piano"
        printPartCombineTexts = ##f
      }
      <<
        \clef bass
        \new Voice \partCombine \pianoLHone \pianoLHtwo
      >>
    >>
    \layout {
      indent = 0
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

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \new ChoirStaff <<
      \new Staff = unison \with {
        shortInstrumentName = All
        }
      <<
        \new Dynamics \with {alignAboveContext = unison} { s4 s2.*23 s2 \dynamicsPiano }
        \new Voice { s4 s2.*23 s2 \section \sectionLabel TUTTI \break \melody }
        \addlyrics { \set stanza = "2." \VerseTwo }
        >>
      \new Staff = soprano \with {
        instrumentName = S
        shortInstrumentName = S
        }
      <<
        \new Dynamics \with {alignAboveContext = soprano} \dynamicsPiano
        \new Voice { \soprano \section \break }
        \addlyrics { \set stanza = "1." \sopranoVerseOne }
      >>
      \new Staff = alto \with {
        instrumentName = A
        shortInstrumentName = A
        }
      <<
        \new Dynamics \with {alignAboveContext = alto} \dynamicsPiano
        \new Voice {\alto \section}
        \addlyrics { \VerseOne }
      >>
      \new Staff = tenor \with {
        instrumentName = T
        shortInstrumentName = T
        }
      <<
        \clef "treble_8"
        \new Dynamics \with {alignAboveContext = tenor} \dynamicsPiano
        \new Voice {\tenor \section}
        \addlyrics { \VerseOne }
      >>
      \new Staff = bass \with {
        instrumentName = B
        shortInstrumentName = B
        }
      <<
        \clef bass
        \new Dynamics \with {alignAboveContext = bass} \dynamicsPiano
        \new Voice {\bass \section}
        \addlyrics { \VerseOne }
      >>
    >>
    \layout {
      indent = 0
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
    \new ChoirStaff <<
      \new Staff
      <<
        \new Voice { \soprano \section \break \melody \bar "|." }
        \addlyrics { \set stanza = "1." \sopranoVerseOne \set stanza = "2." \VerseTwo}
      >>
      \new Staff
      <<
        \new Voice \alto
        \addlyrics { \VerseOne }
      >>
      \new Staff
      <<
        \new Voice { \clef "treble_8" \tenor }
        \addlyrics { \VerseOne }
      >>
      \new Staff
      <<
        \new Voice { \clef bass \bass }
        \addlyrics { \VerseOne }
      >>
    >>
    \layout {
      indent = 0
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
    \new ChoirStaff <<
      \new Staff = unison
      <<
        \new Dynamics \with {alignAboveContext = unison} {s4 s2.*23 s2 \dynamicsPiano}
        \new Voice { s4 s2.*23 s2 \section \sectionLabel TUTTI \break \melody \bar "|." }
        \addlyrics { \set stanza = "2." \VerseTwo }
      >>
      \new Staff = soprano
      <<
        \new Dynamics \with {alignAboveContext = soprano} \dynamicsPiano
        \new Voice { \soprano \section \break }
        \addlyrics { \set stanza = "1." \sopranoVerseOne }
      >>
      \new Staff = alto
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsPiano}
        \new Voice {\alto \section}
        \addlyrics { \tiny \set stanza = "1." \VerseOne }
      >>
      \new Staff = tenor
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsPiano}
        \clef "treble_8"
        \new Voice { \tenor \section }
        \addlyrics { \tiny \set stanza = "1." \VerseOne }
      >>
      \new Staff = bass
      <<
        \magnifyStaff #4/7
        \clef bass
        \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsPiano}
        \new Voice {\bass \section}
        \addlyrics { \tiny \set stanza = "1." \VerseOne }
      >>
    >>
    \layout {
      indent = 0
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
    \new ChoirStaff <<
      \new Staff = unison
      <<
        \new Dynamics \with {alignAboveContext = unison} {s4 s2.*23 s2 \dynamicsPiano}
        \new Voice { s4 s2.*23 s2 \section \sectionLabel TUTTI \break \melody \bar "|." }
        \addlyrics { \set stanza = "2." \VerseTwo }
      >>
      \new Staff = soprano
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsPiano}
        \new Voice { \soprano \section \break }
        \addlyrics { \tiny \set stanza = "1." \sopranoVerseOne }
      >>
      \new Staff = alto
      <<
        \new Dynamics \with {alignAboveContext = alto} \dynamicsPiano
        \new Voice {\alto \section}
        \addlyrics { \set stanza = "1." \VerseOne }
      >>
      \new Staff = tenor
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsPiano}
        \clef "treble_8"
        \new Voice { \tenor \section }
        \addlyrics { \tiny \set stanza = "1." \VerseOne }
      >>
      \new Staff = bass
      <<
        \magnifyStaff #4/7
        \clef bass
        \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsPiano}
        \new Voice {\bass \section}
        \addlyrics { \tiny \set stanza = "1." \VerseOne }
      >>
    >>
    \layout {
      indent = 0
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
    \new ChoirStaff <<
      \new Staff = unison
      <<
        \new Dynamics \with {alignAboveContext = unison} {s4 s2.*23 s2 \dynamicsPiano}
        \new Voice { s4 s2.*23 s2 \section \break \melody \bar "|." }
        \addlyrics { \set stanza = "2." \VerseTwo }
      >>
      \new Staff = soprano
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsPiano}
        \new Voice { \soprano \section \break }
        \addlyrics { \tiny \set stanza = "1." \sopranoVerseOne }
      >>
      \new Staff = alto
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsPiano}
        \new Voice {\alto \section}
        \addlyrics { \tiny \set stanza = "1." \VerseOne }
      >>
      \new Staff = tenor
      <<
        \new Dynamics \with {alignAboveContext = tenor} \dynamicsPiano
        \clef "treble_8"
        \new Voice { \tenor \section }
        \addlyrics { \set stanza = "1." \VerseOne }
      >>
      \new Staff = bass
      <<
        \magnifyStaff #4/7
        \clef bass
        \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsPiano}
        \new Voice {\bass \section}
        \addlyrics { \tiny \set stanza = "1." \VerseOne }
      >>
    >>
    \layout {
      indent = 0
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
    \new ChoirStaff <<
      \new Staff = unison
      <<
        \new Dynamics \with {alignAboveContext = unison} {s4 s2.*23 s2 \dynamicsPiano}
        \new Voice { s4 s2.*23 s2 \section \sectionLabel TUTTI \break \melody \bar "|." }
        \addlyrics { \set stanza = "2." \VerseTwo }
      >>
      \new Staff = soprano
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsPiano}
        \new Voice { \soprano \section \break }
        \addlyrics { \tiny \set stanza = "1." \sopranoVerseOne }
      >>
      \new Staff = alto
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsPiano}
        \new Voice {\alto \section}
        \addlyrics { \tiny \set stanza = "1." \VerseOne }
      >>
      \new Staff = tenor
      <<
        \magnifyStaff #4/7
        \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsPiano}
        \clef "treble_8"
        \new Voice { \tenor \section }
        \addlyrics { \tiny \set stanza = "1." \VerseOne }
      >>
      \new Staff = bass
      <<
        \clef bass
        \new Dynamics \with {alignAboveContext = bass} \dynamicsPiano
        \new Voice {\bass \section}
        \addlyrics { \set stanza = "1." \VerseOne }
      >>
    >>
    \layout {
      indent = 0
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
    output-suffix = midi
  }
  \score {
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = flute
      }
      <<
        \new Voice \TempoTrack
        \new Dynamics \dynamicsPiano
        \new Voice { \soprano \melody }
        \addlyrics \wordsMidi
      >>
      \new Staff = alto \with {
        midiInstrument = oboe
      }
      <<
        \new Dynamics \dynamicsPiano
        \new Voice {\alto \melody}
      >>
      \new Staff = tenor \with {
        midiInstrument = clarinet
      }
      <<
        \new Dynamics \dynamicsPiano
        \new Voice {\tenor \transpose c c, \melody}
      >>
      \new Staff = bass \with {
        midiInstrument = "fretless bass"
      }
      <<
        \new Dynamics \dynamicsPiano
        \new Voice {\bass \transpose c c, \melody}
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
