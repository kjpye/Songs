% Original from John Lemcke

\version "2.25.12"

\include "kjp.ly"
\include "articulate.ly"

%today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (currenttime)))

\header {
  title = "Es Ist Ein' Ros'"
  subtitle = "(There is a flower)"
  tagline = ##f

  arranger = "Arr. Michael Prætorius"
  poet = "German, 15th century"
  meter = "English words by Ursula Vaughan Williams"

%  copyright = \today
}

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
  \partial 2
}

soprano = \relative {
  \cadenzaOn
  c''2 \bar"|" c4 c d c \bar"|" c2 a bes \bar"|"
  a4 g2 \bar"|" f e4 \bar"|" f2 \section \break
  c'2 \bar"|" c4 c d c \bar"|" c2 a bes \bar"|"
  a4 g2 \bar"|" f e4 \bar"|" f2 \section \break
  r4 a \bar "|" g e f d \bar"|" c2. \section c'4 \bar"|"
  c c d c \bar "|" \break c2 a bes \bar "|"
  a4 g2 \bar "|" f e4 \bar "|" f2
  \cadenzaOff
}

alto = \relative c'' {
  \cadenzaOn
  a2 a4 f f f e2 d d c d4 (d8) a c2 \section c
  a'2 a4 f f f e2 d d c d4 (d8) a c2 \section c
  r4 f d c c b c8 (d e2) \section e4 g f f f e2 d d f4 d (e) f (g) c, c2
  \cadenzaOff
}

tenor = \relative c' {
  \cadenzaOn
  c2 c4 a bes a g2 f f a4 (c) bes a2 g4 a2 \section
  c2 c4 a bes a g2 f f a4 (c) bes a2 g4 a2 \section
  r4 c bes a a g g2. \section g4 g a bes a g2 fis g c4 bes a (a) g2 a
  \cadenzaOff
}

bass = \relative c {
  \cadenzaOn
  f2 f4 f bes f c2 d bes f'4 e d (d) c2 f \section
  f2 f4 f bes f c2 d bes f'4 e d (d) c2 f \section
  r4 f g a f g c,2. \section c4 e f bes f c2 d g, a4 bes c (c) c2 f
  \cadenzaOff
}


% Google translate of the German words:

%   A rose has sprung up
%   From a tender root,
%   When the ancients sang to us:
%   From Jesse came the species;
%   And brought a little flower,
%   In the middle of the cold winter,
%   Probably half the night.

%   The little rose I mean
%   Of which Esaias says,
%   Brought us alone
%   Marie the pure maid.
%   From God's eternal counsel
%   Did she give birth to a child?
%   Probably half the night.


verseOneGerman = \lyricmode {
  \set stanza = "1."
  Es ist ein' Ros' ent -- sprung -- en
  Aus ein -- er Wur -- zel zart,
  Als uns die Al -- ten sung -- en:
  Aus Jes -- se kam die Art;
  Und hat ein Blüm -- lein bracht,
  Mit -- ten im kal -- ten Wint -- er,
  Wohl zu der hal -- ben Nacht.
}

verseOneGermanMidi = \lyricmode {
  \set stanza = "1."
  "Es " "ist " "ein' " "Ros' " ent sprung "en "
  "\nAus " ein "er " Wur "zel " "zart, "
  "\nAls " "uns " "die " Al "ten " sung "en: "
  "\nAus " Jes "se " "kam " "die " "Art; "
  "\nUnd " "hat " "ein " Blüm "lein " "bracht, "
  "\nMit" "ten " "im " kal "ten " Wint "er, "
  "\nWohl " "zu " "der " hal "ben " "Nacht.\n"
}

verseTwoGerman = \lyricmode {
  \set stanza = "2."
  Das Rös -- lein das ich mei -- ne,
  Da -- von Es -- ai -- as sagt,
  Hat uns geb -- racht all -- ei -- ne
  Mar -- ie die rei -- ne Magd.
  Aus Got -- tes ew' -- gem Rat
  Hat sie ein Kind ge -- bo -- ren,
  Wohl zu der hal -- ben Nacht.
}

verseTwoGermanMidi = \lyricmode {
  \set stanza = "2."
  "\nDas " Rös "lein " "das " "ich " mei "ne, "
  "\nDa" "von " Es ai "as " "sagt, "
  "\nHat " "uns " geb "racht " all ei "ne "
  "\nMar" "ie " "die " rei "ne " "Magd. "
  "\nAus " Got "tes " ew' "gem " "Rat "
  "\nHat " "sie " "ein " "Kind " ge bo "ren, "
  "\nWohl " "zu " "der " hal "ben " "Nacht. "
}

verseOneEnglish = \lyricmode {
  \set stanza = "1."
  There is a flow -- er spring -- ing
  From ten -- der roots it grows,
  From Ed -- en beau -- ty bring -- ing
  From Jes -- se's stem it grows,
  On his green branch it blows.
  A bud that in cold win -- ter
  At mid -- night will un -- close.
}

verseOneEnglishMidi = \lyricmode {
  \set stanza = "1."
  "There " "is " "a " flow "er " spring "ing "
  "\nFrom " ten "der " "roots " "it " "grows, "
  "\nFrom " Ed "en " beau "ty " bring "ing "
  "\nFrom " Jes "se's " "stem " "it " "grows, "
  "\nOn " "his " "green " "branch " "it " "blows. "
  "\nA " "bud " "that " "in " "cold " win "ter "
  "\nAt " mid "night " "will " un "close.\n"
}

verseTwoEnglish = \lyricmode {
  \set stanza = "2."
  Pure Ma -- ry, maid -- en hol -- y,
  The Dream by proph -- ets seen,
  Who in a stab -- le low -- ly
  A -- bove her child did lean
  So gent -- le and ser -- ene:
  This was E -- sai -- as' vis -- ion,
  The tree of liv -- ing green.
}

verseTwoEnglishMidi = \lyricmode {
  \set stanza = "2."
  "\nPure " Ma "ry, " maid "en " hol "y, "
  "\nThe " "Dream " "by " proph "ets " "seen, "
  "\nWho " "in " "a " stab "le " low "ly "
  "\nA" "bove " "her " "child " "did " "lean "
  "\nSo " gent "le " "and " ser "ene: "
  "\nThis " "was " E sai "as' " vis "ion, "
  "\nThe " "tree " "of " liv "ing " "green.\n"
}

verseThreeEnglish = \lyricmode {
  \set stanza = "3."
  To Ma -- ry, rose of heav -- en,
  With lov -- ing hearts we say
  Let our sins be for -- giv -- en,
  And grief be turned a -- way
  U -- pon this Christ -- mas Day
  To Je -- sus, child of win -- ter,
  For grace and hope we pray.
}

verseThreeEnglishMidi = \lyricmode {
  \set stanza = "3."
  "\nTo " Ma "ry, " "rose " "of " heav "en, "
  "\nWith " lov "ing " "hearts " "we " "say "
  "\nLet " "our " "sins " "be " for giv "en, "
  "\nAnd " "grief " "be " "turned " a "way "
  "\nU" "pon " "this " Christ "mas " "Day "
  "\nTo " Je "sus, " "child " "of " win "ter, "
  "\nFor " "grace " "and " "hope " "we " "pray. "
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "en-repeat"
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" { \voiceOne \global \soprano \bar ":|." }
        \new Voice = "alto"    { \voiceTwo \global \alto }
      >>
      \new Lyrics \lyricsto "soprano" \verseOneEnglish
      \new Lyrics \lyricsto "soprano" \verseTwoEnglish
      \new Lyrics \lyricsto "soprano" \verseThreeEnglish
      \new Staff \with {
        instrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \global \tenor }
        \new Voice = "bass"  { \voiceTwo \global \bass }
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "en-single"
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "piano"
        instrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" { \voiceOne \global \repeat unfold 3 \soprano \bar "|." }
        \addlyrics {\verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
        \new Voice = "alto"    { \voiceTwo \global \alto \nl \alto \nl \alto }
      >>
      \new Staff \with {
        midiInstrument = "piano"
        instrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \global \repeat unfold 3 \tenor }
        \new Voice = "bass"  { \voiceTwo \global \repeat unfold 3 \bass }
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "en-singlepage"
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
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" { \voiceOne \global \repeat unfold 3 \soprano \bar "|." }
        \addlyrics {\verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
        \new Voice = "alto"    { \voiceTwo \global \alto \nl \alto \nl \alto }
      >>
      \new Staff \with {
        instrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \global \repeat unfold 3 \tenor }
        \new Voice = "bass"  { \voiceTwo \global \repeat unfold 3 \bass }
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "en-singlepage-sop"
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
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "piano"
        instrumentName = "Soprano"
        shortInstrumentName = "S"
      } <<
        \new Voice = "soprano" { \voiceOne \global \repeat unfold 3 \soprano \bar "|." }
        \addlyrics {\verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
      >>
      \new Staff = alto \with {
        midiInstrument = "piano"
        instrumentName = "Alto"
        shortInstrumentName = "A"
      } <<
        \magnifyStaff #4/7
        \new Voice = "alto"    { \voiceTwo \global \alto \nl \alto \nl \alto }
        \addlyrics {\tiny \verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
      >>
      \new Staff = tenor \with {
        midiInstrument = "piano"
        instrumentName = "Tenor"
        shortInstrumentName = "T"
      } <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice = "tenor" { \voiceOne \global \repeat unfold 3 \tenor }
        \addlyrics {\tiny \verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
      >>
      \new Staff = bass \with {
        midiInstrument = "piano"
        instrumentName = "Bass"
        shortInstrumentName = "B"
      } <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice = "bass"  { \voiceTwo \global \repeat unfold 3 \bass }
        \addlyrics {\tiny \verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "en-singlepage-alto"
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
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "piano"
        instrumentName = "Soprano"
        shortInstrumentName = "S"
      } <<
        \magnifyStaff #4/7
        \new Voice = "soprano" { \voiceOne \global \repeat unfold 3 \soprano \bar "|." }
        \addlyrics {\tiny \verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
      >>
      \new Staff = alto \with {
        midiInstrument = "piano"
        instrumentName = "Alto"
        shortInstrumentName = "A"
      } <<
        \new Voice = "alto"    { \voiceTwo \global \alto \nl \alto \nl \alto }
        \addlyrics {\verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
      >>
      \new Staff = tenor \with {
        midiInstrument = "piano"
        instrumentName = "Tenor"
        shortInstrumentName = "T"
      } <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice = "tenor" { \voiceOne \global \repeat unfold 3 \tenor }
        \addlyrics {\tiny \verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
      >>
      \new Staff = bass \with {
        midiInstrument = "piano"
        instrumentName = "Bass"
        shortInstrumentName = "B"
      } <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice = "bass"  { \voiceTwo \global \repeat unfold 3 \bass }
        \addlyrics {\tiny \verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "en-singlepage-tenor"
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
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "piano"
        instrumentName = "Soprano"
        shortInstrumentName = "S"
      } <<
        \magnifyStaff #4/7
        \new Voice = "soprano" { \voiceOne \global \repeat unfold 3 \soprano \bar "|." }
        \addlyrics {\tiny \verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
      >>
      \new Staff = alto \with {
        midiInstrument = "piano"
        instrumentName = "Alto"
        shortInstrumentName = "A"
      } <<
        \magnifyStaff #4/7
        \new Voice = "alto"    { \voiceTwo \global \alto \nl \alto \nl \alto }
        \addlyrics {\tiny \verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
      >>
      \new Staff = tenor \with {
        midiInstrument = "piano"
        instrumentName = "Tenor"
        shortInstrumentName = "T"
      } <<
        \clef "treble_8"
        \new Voice = "tenor" { \voiceOne \global \repeat unfold 3 \tenor }
        \addlyrics {\verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
      >>
      \new Staff = bass \with {
        midiInstrument = "piano"
        instrumentName = "Bass"
        shortInstrumentName = "B"
      } <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice = "bass"  { \voiceTwo \global \repeat unfold 3 \bass }
        \addlyrics {\tiny \verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "en-singlepage-bass"
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
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "piano"
        instrumentName = "Soprano"
        shortInstrumentName = "S"
      } <<
        \magnifyStaff #4/7
        \new Voice = "soprano" { \voiceOne \global \repeat unfold 3 \soprano \bar "|." }
        \addlyrics {\tiny \verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
      >>
      \new Staff = alto \with {
        midiInstrument = "piano"
        instrumentName = "Alto"
        shortInstrumentName = "A"
      } <<
        \magnifyStaff #4/7
        \new Voice = "alto"    { \voiceTwo \global \alto \nl \alto \nl \alto }
        \addlyrics {\tiny \verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
      >>
      \new Staff = tenor \with {
        midiInstrument = "piano"
        instrumentName = "Tenor"
        shortInstrumentName = "T"
      } <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice = "tenor" { \voiceOne \global \repeat unfold 3 \tenor }
        \addlyrics {\tiny \verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
      >>
      \new Staff = bass \with {
        midiInstrument = "piano"
        instrumentName = "Bass"
        shortInstrumentName = "B"
      } <<
        \clef bass
        \new Voice = "bass"  { \voiceTwo \global \repeat unfold 3 \bass }
        \addlyrics {\verseOneEnglish \verseTwoEnglish \verseThreeEnglish}
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "en-midi"
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
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "piano"
        instrumentName = "Soprano"
        shortInstrumentName = "S"
      } <<
        \tempo 4=100
        \new Voice = "soprano" { \voiceOne \global \repeat unfold 3 \soprano \bar "|." }
        \addlyrics {\verseOneEnglishMidi \verseTwoEnglishMidi \verseThreeEnglishMidi}
      >>
      \new Staff = alto \with {
        midiInstrument = "piano"
        instrumentName = "Alto"
        shortInstrumentName = "A"
      } <<
        \new Voice = "alto"    { \voiceTwo \global \alto \nl \alto \nl \alto }
      >>
      \new Staff = tenor \with {
        midiInstrument = "piano"
        instrumentName = "Tenor"
        shortInstrumentName = "T"
      } <<
        \clef "treble_8"
        \new Voice = "tenor" { \voiceOne \global \repeat unfold 3 \tenor }
      >>
      \new Staff = bass \with {
        midiInstrument = "piano"
        instrumentName = "Bass"
        shortInstrumentName = "B"
      } <<
        \clef bass
        \new Voice = "bass"  { \voiceTwo \global \repeat unfold 3 \bass }
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "de-repeat"
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" { \voiceOne \global \soprano \bar ":|." }
        \new Voice = "alto"    { \voiceTwo \global \alto }
      >>
      \new Lyrics \lyricsto "soprano" \verseOneGerman
      \new Lyrics \lyricsto "soprano" \verseTwoGerman
      \new Staff \with {
        instrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \global \tenor }
        \new Voice = "bass"  { \voiceTwo \global \bass }
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "de-single"
  \score {
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "piano"
        instrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" { \voiceOne \global \repeat unfold 2 \soprano \bar "|." }
        \addlyrics {\verseOneGerman \verseTwoGerman}
        \new Voice = "alto"    { \voiceTwo \global \alto \nl \alto }
      >>
      \new Staff \with {
        midiInstrument = "piano"
        instrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \global \repeat unfold 2 \tenor }
        \new Voice = "bass"  { \voiceTwo \global \repeat unfold 2 \bass }
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "de-singlepage"
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
    \new ChoirStaff <<
      \new Staff \with {
        instrumentName = \markup \center-column { "S." "A." }
      } <<
        \new Voice = "soprano" { \voiceOne \global \repeat unfold 2 \soprano \bar "|." }
        \addlyrics {\verseOneGerman \verseTwoGerman}
        \new Voice = "alto"    { \voiceTwo \global \alto \nl \alto }
      >>
      \new Staff \with {
        instrumentName = \markup \center-column { "T." "B." }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \global \repeat unfold 2 \tenor }
        \new Voice = "bass"  { \voiceTwo \global \repeat unfold 2 \bass }
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "de-singlepage-sop"
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
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "piano"
        instrumentName = "Soprano"
        shortInstrumentName = "S"
      } <<
        \new Voice = "soprano" { \voiceOne \global \repeat unfold 2 \soprano \bar "|." }
        \addlyrics {\verseOneGerman \verseTwoGerman}
      >>
      \new Staff = alto \with {
        midiInstrument = "piano"
        instrumentName = "Alto"
        shortInstrumentName = "A"
      } <<
        \magnifyStaff #4/7
        \new Voice = "alto"    { \voiceTwo \global \alto \nl \alto }
        \addlyrics {\tiny \verseOneGerman \verseTwoGerman}
      >>
      \new Staff = tenor \with {
        midiInstrument = "piano"
        instrumentName = "Tenor"
        shortInstrumentName = "T"
      } <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice = "tenor" { \voiceOne \global \repeat unfold 2 \tenor }
        \addlyrics {\tiny \verseOneGerman \verseTwoGerman}
      >>
      \new Staff = bass \with {
        midiInstrument = "piano"
        instrumentName = "Bass"
        shortInstrumentName = "B"
      } <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice = "bass"  { \voiceTwo \global \repeat unfold 2 \bass }
        \addlyrics {\tiny \verseOneGerman \verseTwoGerman}
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "de-singlepage-alto"
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
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "piano"
        instrumentName = "Soprano"
        shortInstrumentName = "S"
      } <<
        \magnifyStaff #4/7
        \new Voice = "soprano" { \voiceOne \global \repeat unfold 2 \soprano \bar "|." }
        \addlyrics {\tiny \verseOneGerman \verseTwoGerman}
      >>
      \new Staff = alto \with {
        midiInstrument = "piano"
        instrumentName = "Alto"
        shortInstrumentName = "A"
      } <<
        \new Voice = "alto"    { \voiceTwo \global \alto \nl \alto }
        \addlyrics {\verseOneGerman \verseTwoGerman}
      >>
      \new Staff = tenor \with {
        midiInstrument = "piano"
        instrumentName = "Tenor"
        shortInstrumentName = "T"
      } <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice = "tenor" { \voiceOne \global \repeat unfold 2 \tenor }
        \addlyrics {\tiny \verseOneGerman \verseTwoGerman}
      >>
      \new Staff = bass \with {
        midiInstrument = "piano"
        instrumentName = "Bass"
        shortInstrumentName = "B"
      } <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice = "bass"  { \voiceTwo \global \repeat unfold 2 \bass }
        \addlyrics {\tiny \verseOneGerman \verseTwoGerman}
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "de-singlepage-tenor"
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
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "piano"
        instrumentName = "Soprano"
        shortInstrumentName = "S"
      } <<
        \magnifyStaff #4/7
        \new Voice = "soprano" { \voiceOne \global \repeat unfold 2 \soprano \bar "|." }
        \addlyrics {\tiny \verseOneGerman \verseTwoGerman}
      >>
      \new Staff = alto \with {
        midiInstrument = "piano"
        instrumentName = "Alto"
        shortInstrumentName = "A"
      } <<
        \magnifyStaff #4/7
        \new Voice = "alto"    { \voiceTwo \global \alto \nl \alto }
        \addlyrics {\tiny \verseOneGerman \verseTwoGerman}
      >>
      \new Staff = tenor \with {
        midiInstrument = "piano"
        instrumentName = "Tenor"
        shortInstrumentName = "T"
      } <<
        \clef "treble_8"
        \new Voice = "tenor" { \voiceOne \global \repeat unfold 2 \tenor }
        \addlyrics {\verseOneGerman \verseTwoGerman}
      >>
      \new Staff = bass \with {
        midiInstrument = "piano"
        instrumentName = "Bass"
        shortInstrumentName = "B"
      } <<
        \magnifyStaff #4/7
        \clef bass
        \new Voice = "bass"  { \voiceTwo \global \repeat unfold 2 \bass }
        \addlyrics {\tiny \verseOneGerman \verseTwoGerman}
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "de-singlepage-bass"
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
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "piano"
        instrumentName = "Soprano"
        shortInstrumentName = "S"
      } <<
        \magnifyStaff #4/7
        \new Voice = "soprano" { \voiceOne \global \repeat unfold 2 \soprano \bar "|." }
        \addlyrics {\tiny \verseOneGerman \verseTwoGerman}
      >>
      \new Staff = alto \with {
        midiInstrument = "piano"
        instrumentName = "Alto"
        shortInstrumentName = "A"
      } <<
        \magnifyStaff #4/7
        \new Voice = "alto"    { \voiceTwo \global \alto \nl \alto }
        \addlyrics {\tiny \verseOneGerman \verseTwoGerman}
      >>
      \new Staff = tenor \with {
        midiInstrument = "piano"
        instrumentName = "Tenor"
        shortInstrumentName = "T"
      } <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice = "tenor" { \voiceOne \global \repeat unfold 2 \tenor }
        \addlyrics {\tiny \verseOneGerman \verseTwoGerman}
      >>
      \new Staff = bass \with {
        midiInstrument = "piano"
        instrumentName = "Bass"
        shortInstrumentName = "B"
      } <<
        \clef bass
        \new Voice = "bass"  { \voiceTwo \global \repeat unfold 2 \bass }
        \addlyrics {\verseOneGerman \verseTwoGerman}
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
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
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
  \bookOutputSuffix "de-midi"
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
    \new ChoirStaff <<
      \new Staff = soprano \with {
        midiInstrument = "piano"
        instrumentName = "Soprano"
        shortInstrumentName = "S"
      } <<
        \tempo 4=100
        \new Voice = "soprano" { \voiceOne \global \repeat unfold 2 \soprano \bar "|." }
        \addlyrics {\verseOneGermanMidi \verseTwoGermanMidi}
      >>
      \new Staff = alto \with {
        midiInstrument = "piano"
        instrumentName = "Alto"
        shortInstrumentName = "A"
      } <<
        \new Voice = "alto"    { \voiceTwo \global \alto \nl \alto }
      >>
      \new Staff = tenor \with {
        midiInstrument = "piano"
        instrumentName = "Tenor"
        shortInstrumentName = "T"
      } <<
        \clef "treble_8"
        \new Voice = "tenor" { \voiceOne \global \repeat unfold 2 \tenor }
      >>
      \new Staff = bass \with {
        midiInstrument = "piano"
        instrumentName = "Bass"
        shortInstrumentName = "B"
      } <<
        \clef bass
        \new Voice = "bass"  { \voiceTwo \global \repeat unfold 2 \bass }
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
