\version "2.18.2"

TempoTrack = {
  \tempo 4=150
}

global = {
  \key c \major
  \time 3/4
}

soprano = \relative c' {
  \global
  \repeat volta 2 {
    \break
    c2.
    c2 b4
    c2 d4
    e2 f4
    g4 c, a'
    g2 c,4 % 5
    d2.~
    d2 \oneVoice r4 \voiceOne
    e2.
    e2 e4
    fis2 g4 % 10
    a2 c4
    b4 g a
    b2 c4
    b2.~
    b4 \oneVoice r \voiceOne g % 15
    c2.
    a2 c4
    b4 g2~
    g2.
    a2 a4 % 20
    g2 f4
    g2.~
    g2 \oneVoice r4 \voiceOne
    g2 e4
    fis4 g a % 25
    b4 d,2~
    d2 d4
    c'2 c4
    b2 a4
    g2.~ % 30
    g2 \oneVoice r4 \voiceOne
    c,2.
    c2 b4
    c2 d4
    e2 f4
    g4 c, a'
    g2 c,4
    d2.~
    d2 \oneVoice r4 \voiceOne
    e2.
    e2 e4 fis2 g4 a2 c4
    b4 g a
    b2 c4
    b2.~
    b4 \oneVoice r \voiceOne g
    c2 c4
    c4 b c
    c2 c4
    c4 b c
    c2 c4
    b2 c4
    d2.~
    d2 \oneVoice r4 \voiceOne
    c2.
    b2 d4
    c2 a4
    g2 g4
    a4 b c
    d2 c4
    c2.-\fermata
  }
}

words = \lyricmode {
  Let there be peace on earth,
  and let it be- gin with me;
  let there be peace on earth,
  the peace that was meant to be.
  With God as our Fath- er,
  we are fam- i- ly.
  Let us walk with each oth- er in per- fect har- mon- y.
  Let peace be- gin with me; let this be the mom- ent now.
  With ev- ery breath I take, let this be my sol- emn vow;
  to take each mom- ent and live each mom- ent in peace e- ter- nal- ly.
  Let there be peace on earth, and let it be- gin with me.
}  

wordsMidi = \lyricmode {
  "Let " "there " "be " "peace " "on " "earth,"
  "\nand " "let " "it " "be" "gin " "with " "me;"
  "\nlet " "there " "be " "peace " "on " "earth,"
  "\nthe " "peace " "that " "was " "meant " "to " "be."
  "\nWith " "God " "as " "our " "Fath" "er,"
  "\nwe " "are " "fam" "i" "ly."
  "\nLet " "us " "walk " "with " "each " "oth" "er "
  "\nin " "per" "fect " "har" "mon" "y."
  "\nLet " "peace " "be" "gin " "with " "me; "
  "\nlet " "this " "be " "the " "mom" "ent " "now."
  "\nWith " "ev" "ery " "breath " "I " "take, "
  "\nlet " "this " "be " "my " "sol" "emn " "vow;"
  "\nto " "take " "each " "mom" "ent " "and "
  "\nlive " "each " "mom" "ent " "in " "peace " "e" "ter" "nal" "ly."
  "\nLet " "there " "be " "peace " "on " "earth, "
  "\nand " "let " "it " "be" "gin " "with " "me.\n"
}  

alto = \relative c' {
  \global
  \repeat volta 2 {
    g2.
    a2 a4
    a2 a4
    b2 b4
    c4 c c
    c2 c4
    c2.(
    b2) s4
    c2.
    c2 c4
    dis2 e4
    dis2 dis4
    e4 e fis
    fis2 fis4
    f2.~
    f4 s f
    e2.
    c2 e4
    e4 e2~
    e2.
    f2 f4
    e2 d4
    e2.~
    e2 s4
    e2 c4
    c4 c c
    b4 b2~
    b2 b4
    e2 e4
    d2 c4
    b2.~
    b2 s4
    g2.
    a2 a4
    a2 g4
    b2 b4
    c4 c c
    c2 c4
    c2.(
    b2) s4
    c2.
    c2 c4
    dis2 e4
    fis2 fis4
    g4 e fis
    fis2 fis4
    f2.~
    f4 s f
    e2 e4
    e4 e e
    e2 e4
    e4 e e
    f2 f4
    f2 f4
    fis2.(
    aes2)s4
    g2.
    gis2 gis4
    a2 f4
    e2 e4
    f4 g f
    f2 f4
    e2.
  }
}

tenor = \relative c {
  \global
  \repeat volta 2 {
    e2.
    e2 e4
    f2 f4
    f2 f4
    e4 e f
    g2 e4
    f2.~
    f2 s4
    g2.
    g2 g4
    a2 g4
    fis2 a4
    g4 b b
    b2 a4
    g2.(d'4) s b
    a2.
    e2 fis4
    g4 b2(
    bes2.)
    c2 c4
    b2 b4
    c2.~
    c2 s4
    c2 g4
    a4 g fis
    g4 g2~
    g2 g4
    g2 g4
    fis2 fis4
    g2.(
    f2) s4
    e2.
    e2 e4
    f2 f4
    f2 f4
    e4 e f
    e2 e4
    f2.~
    f2 s4
    g2.
    g2 g4
    b2 b4
    b2 a4
    b4 b b
    b2 a4
    g2.(
    d'4) s b
    g2 g4
    g4 g g
    gis2 gis4
    gis4 gis gis
    a2 a4
    gis2 a4
    c2.~
    c2 s4
    c2.
    d2 b4
    a2 c4
    c2 c4
    c4 c c
    b2 d4
    c2.
  }
}

bass = \relative c {
  \global
  \repeat volta 2 {
    c2.
    a2 a4
    d2 d4
    g,2 g4
    c4 c f % 5
    e2 a,4
    g2.~g2 \oneVoice r4 \voiceTwo
    c2.
    c2 c4
    b2 b4 % 10
    b2 b4
    e4 e e
    dis2 dis4
    d2.(
    g4) \oneVoice r \voiceTwo g, % 15
    a2.
    a2 a4
    e'4 e2(
    c2.)
    f2 f4 % 20
    g2 g4
    c,2.~
    c2 \oneVoice r4 \voiceTwo
    a2 a4
    d4 d d % 25
    g,4 g2~
    g2 g4
    a2 a4
    d2 d4
    g,2.~ % 30
    g2 \oneVoice r4 \voiceTwo
    c2.
    a2 a4
    d2 d4
    g,2 g4 % 35
    c4 c f,
    g2 g4
    g2.~
    g2 \oneVoice r4 \voiceTwo
    c2. % 40
    c2 c4
    b2 b4
    b2 b4
    e4 e e
    dis2 dis4
    d2.(
    g4) \oneVoice r \voiceTwo g,
    c2 c4
    c4 c c
    c2 c4
    c4 c c
    f2 f4
    f2 f4
    d2.(
    f2) \oneVoice r4 \voiceTwo
    e2.
    e2 e4
    f2 f4
    c2 c4
    f4 e d
    g2 g,4
    c2._\fermata
  }
}

\header {
  title = "Let There Be Peace On Earth"
  composer = "Jill Jackson-Miller and Sy Miller"
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine #'(2 . 88) \soprano \alto
            \new NullVoice \soprano
            \addlyrics \words
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) \tenor \bass
          >>
        >>
      >>
    >>
    \layout {
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
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \TempoTrack
            \new Voice {\partCombine #'(2 . 88) \unfoldRepeats \soprano \unfoldRepeats \alto \bar "|." }
            \new NullVoice \unfoldRepeats \soprano
            \addlyrics {\words \set stanza = "2." \words}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) \unfoldRepeats \tenor \unfoldRepeats \bass
          >>
        >>
      >>
    >>
    \layout {
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
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
          }
          <<
            \new Voice \TempoTrack
            \new Voice {\partCombine #'(2 . 88) \unfoldRepeats \soprano \unfoldRepeats \alto \bar "|." }
            \new NullVoice \unfoldRepeats \soprano
            \addlyrics {\words \set stanza = "2." \words}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
          }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) \unfoldRepeats \tenor \unfoldRepeats \bass
          >>
        >>
      >>
    >>
    \layout {
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
  \bookOutputSuffix "midi"
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics {\wordsMidi \wordsMidi}
          >>
                                % Alto staff
          \new Staff = alto \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}
