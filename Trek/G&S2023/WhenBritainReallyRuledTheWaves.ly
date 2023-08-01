\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "When Britain Really Ruled the Waves"
  subtitle    = "Lord Mountararat & Chorus"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Arthur Sullivan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "W. S. Gilbert"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 3/4
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "53a" } s2.*5
  \repeat volta 3 {
    \textMark \markup { \box "53b" } s2.*5
    \textMark \markup { \box "53c" } s2.*5
    \textMark \markup { \box "54a" } s2.*4
    \textMark \markup { \box "54b" } s2.*4
    \textMark \markup { \box "54c" } s2.*3
    \alternative {
      { s2. }
      { s2. }
    }
  }
}

dynamicsSolo = {
}

solo = \relative {
  \global
  R2.*4 | r4 r e \section |
  \repeat volta 3 {
    a8. e16 4 gis | a8. e16 4 gis | a8 b cis4 b8(a) | b2 fis4 | b8. fis16 4 ais |
    b8. fis16 4 ais | b8 cis d4. 8 | cis8 b a4 b | gis8 e fis4. e8 | 2 4 |
    fis4. e8 fis b | gis8. fis16 e4 gis | a4. gis8 a d | b8. a16 gis4 e | % 54a
    a4. 8 8 8 | 8. b16 cis8 a fis d' | cis a b4. a8 | 2 \section \sectionLabel \markup\bold Chorus \break r4
    R2.*3 |
    \alternative {
      { r4 r e }
      { R2.\fermata }
    }
  }
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
}

soprano = \relative {
  \global
  R2.*5
  \repeat volta 3 {
    R2.*17 |
    r4 r \section e'4
    e'4. fis8 e d | cis8. d16 e8 a, fis d' | cis8 a b4. a8
    \alternative {
      { a2 r4 }
      { a2.\fermata }
    }
  }
  \bar "|."
}

wordsOne = \lyricmode {
  \set stanza = "1."
  When Bri -- tain real -- ly ruled the waves—
  "(In" good Queen Bess -- 's __ "time)"
  The House of Peers made no pre -- tence,
  To in -- tel -- lec -- tual em -- in -- ence,
  Or scho -- lar -- ship sub -- lime;
  Yet Bri -- tain won her proud -- est bays
  In good Queen Bess -- 's glo -- rious days!
  Yet Bri -- tain won her proud -- est bays
  In good Queen Bess -- 's glo -- rious days!

  \set stanza = "2."
  When
}

wordsTwo = \lyricmode {
  _ Wel -- ling -- ton thrash'd Bo -- na -- parte,
  As ev -- 'ry child can tell,
  The House of Peers through -- out thhe war,
  Did no -- thing in par -- tic -- u -- lar,
  And did it ve -- ry well!
  Yet Bri -- tain set the world a -- blaze
  In good King George -- 's glo -- rious days!
  Yet Bri -- tain set the world a -- blaze
  In good King George -- 's glo -- rious days!

  \set stanza = "3."
  And
}

wordsThree = \lyricmode {
  _
  while the House of Peers with -- holds
  Its le -- gis -- la -- tive __ hand,
  And no -- ble states -- men do not itch
  To i -- ter -- fere with mat -- ters which
  They do not un -- der -- stand,
  As bright will shine Great Bri -- tain's rays,
  As in King George -- 's glo -- rious days!
  As bright will shine Great Bri -- tain's rays,
  As in King George -- 's glo -- rious days!
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  When Bri -- tain real -- ly ruled the waves—
  "(In" good Queen Bess -- 's __ "time)"
  The House of Peers made no pre -- tence,
  To in -- tel -- lec -- tual em -- in -- ence,
  Or scho -- lar -- ship sub -- lime;
  Yet Bri -- tain won her proud -- est bays
  In good Queen Bess -- 's glo -- rious days!
  Yet Bri -- tain won her proud -- est bays
  In good Queen Bess -- 's glo -- rious days!

  \set stanza = "2."
  When Wel -- ling -- ton thrash'd Bo -- na -- parte,
  As ev -- 'ry child can tell,
  The House of Peers through -- out thhe war,
  Did no -- thing in par -- tic -- u -- lar,
  And did it ve -- ry well!
  Yet Bri -- tain set the world a -- blaze
  In good King George -- 's glo -- rious days!
  Yet Bri -- tain set the world a -- blaze
  In good King George -- 's glo -- rious days!

  \set stanza = "3."
  And while the House of Peers with -- holds
  Its le -- gis -- la -- tive __ hand,
  And no -- ble states -- men do not itch
  To i -- ter -- fere with mat -- ters which
  They do not un -- der -- stand,
  As bright will shine Great Bri -- tain's rays,
  As in King George -- 's glo -- rious days!
  As bright will shine Great Bri -- tain's rays,
  As in King George -- 's glo -- rious days!
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "[Solo]When " Bri "tain " real "ly " "ruled " "the " "waves— "
  "\n(In " "good " "Queen " Bess "'s "  "time) "
  "\nThe " "House " "of " "Peers " "made " "no " pre "tence, "
  "\nTo " in tel lec "tual " em in "ence, "
  "\nOr " scho lar "ship " sub "lime; "
  "\nYet " Bri "tain " "won " "her " proud "est " "bays "
  "\nIn " "good " "Queen " Bess "'s " glo "rious " "days! "
  "\nYet " Bri "tain " "won " "her " proud "est " "bays "
  "\nIn " "good " "Queen " Bess "'s " glo "rious " "days!\n"

  \set stanza = "2."
  "\n[Solo]When " Wel ling "ton " "thrash'd " Bo na "parte, "
  "\nAs " ev "'ry " "child " "can " "tell, "
  "\nThe " "House " "of " "Peers " through "out " "thhe " "war, "
  "\nDid " no "thing " "in " par tic u "lar, "
  "\nAnd " "did " "it " ve "ry " "well! "
  "\nYet " Bri "tain " "set " "the " "world " a "blaze "
  "\nIn " "good " "King " George "'s " glo "rious " "days! "
  "\nYet " Bri "tain " "set " "the " "world " a "blaze "
  "\nIn " "good " "King " George "'s " glo "rious " "days!\n"

  \set stanza = "3."
  "\n[Solo]And " "while " "the " "House " "of " "Peers " with "holds "
  "\nIts " le gis la "tive "  "hand, "
  "\nAnd " no "ble " states "men " "do " "not " "itch "
  "\nTo " i ter "fere " "with " mat "ters " "which "
  "\nThey " "do " "not " un der "stand, "
  "\nAs " "bright " "will " "shine " "Great " Bri "tain's " "rays, "
  "\nAs " "in " "King " George "'s " glo "rious " "days! "
  "\nAs " "bright " "will " "shine " "Great " Bri "tain's " "rays, "
  "\nAs " "in " "King " George "'s " glo "rious " "days!\n"
}

wordsChorusOne = \lyricmode {
  Yes, Bri -- tain won her proud -- est bays
  In good Queen Bess -- 's glo -- rious days.
}

wordsChorusTwo = \lyricmode {
  Yet Bri -- tain set the world a -- blaze
  In good King George -- 's glo -- rious days!
}

wordsChorusThree = \lyricmode {
  As bright will shine Great Bri -- tain's rays,
  As in King George -- 's glo -- rious days!
}

wordsChorusMidi = \lyricmode {
  "\n[Chorus]Yes, " Bri "tain " "won " "her " proud "est " "bays "
  "\nIn " "good " "Queen " Bess "'s " glo "rious " "days.\n"

  "\n[Chorus]Yet " Bri "tain " "set " "the " "world " a "blaze "
  "\nIn " "good " "King " George "'s " glo "rious " "days!\n"

  "\n[Chorus]As " "bright " "will " "shine " "Great " Bri "tain's " "rays, "
  "\nAs " "in " "King " George "'s " glo "rious " "days! "
}

alto = \relative {
  \global
  R2.*5
  \repeat volta 3 {
    R2.*17 |
    r4 r e' |
    a4. 8 8 8 | 8. 16 8 8 fis fis | e a gis4. a8 |
    \alternative {
      { a2 r4 }
      { a2.\fermata | }
    }
  }
  \bar "|."
}

tenor = \relative {
  \global
  R2.*5
  \repeat volta 3 {
    R2.*17 |
    r4 r e |
    e'4. d8 e e | 8. d16 cis8 a a b | cis cis d4. cis8 |
    \alternative {
      { cis2 r4 }
      { cis2.\fermata }
    }
  }
  \bar "|."
}

bass = \relative {
  \global
  R2.*5
  \repeat volta 3 {
    R2.*17 |
    r4 r e |
    cis'4. d8 cis b | a8. b16 cis8 cis, d b | e e e4. a,8 | 
    \alternative {
      { a2 r4 }
      { a2.\fermata }
    }
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  r4 r e'' |
  <e a e'>4. <fis a fis'>8 <e a e'> <d a' d> |
  <cis a' cis>8. <d a' d>16 <e a e'>8 <a, e' a> <a d fis> <d fis d'> |
  <cis e cis'>8 <a e' a> <b e g b>4. <a cis e a>8 |
  q2 r4 \section |
  \repeat volta 3 {
    <a, cis a'>8. <a cis e>16 4 <b d gis> | % 53b
    <a  cis a'>8. <a cis e>16 4 <b d gis> |
    <a c a'>8 <e' b'> <e a cis>4 \voiceOne <gis b>8 <fis a> \oneVoice |
    <e gis b>2 <ais, e' fis>4 |
    <b d b'>8. <b d fis>16 4 <cis e ais> |
    <b d b'>8. <b d fis>16 4 <cis e ais> | % 53c
    <d b'>8 <fis cis'> <fis b d>4. 8 |
    <cis gis' cis>8 <cis gis' b> <cis fis a>4 <b fis' b> |
    <b e gis>8 <b e> \voiceOne fis'4.(e8) \oneVoice | <gis, e'>2 e'4 |
    <d fis>4. e8 q <d fis b> | % 54a
    <e gis>8. <b fis'>16 <b e>4 <e gis> |
    <cis a'>4. <d gis>8 <d a'> <d d'> |
    <e b'>8. <e a>16 <e gis>4 e |
    <e a e'>4. <a fis'>8 <a e'> <a d> | % 54b
    <a cis>8. <a d>16 <a e'>8 <e a> fis <fis b d> |
    <e a cis>8 <cis e a> <d gis b>4. <cis a'>8 |
    q2 \section <e e'>4 |
    <e' a e'>4. <fis a fis'>8 <e a e'> <d a' d> | % 54c
    <cis a' cis>8. <d a' d>16 <e a e'>8 <a, e' a> <a d fis> <d fis d'> |
    <cis e cis'>8 <a e' a> <b e g b>4. <a cis e a>8 |
    \alternative {
      { <a cis e a>2 r4 }
      { q2.\fermata}
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  R2.*5 |
  \repeat volta 3 {
    s2. | s | s2 dis'4 |
    s2.*5 | s4 <cis e> <a dis> | s2.*12 |
    \alternative {
      { s2. }
      { s2. }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2 s4\ff s2.*4 |
  \repeat volta 3 {
    s2.\p | s2.*16 | s2 s4\ff | s2.*3 |
    \alternative {
      { s2. }
      { s2. }
    }
  }
}

pianoLHone = \relative {
  \global
  r4 r <e, e'> |
  <cis' cis'>4. <d d'>8 <cis cis'> <b b'> |
  <a a'>8. <b b'>16 <cis cis'>8  <cis a'> <d a'> <b b'> |
  <e, e'>8 <e' cis' e> <e d' e>4. <a, a'>8 |
  q2 r4 \section
  \repeat volta 3 {
    a8. cis16 e4 e, | a8. cis16 e4 e, | a8 gis fis4 b | e,2 fis'4 | b,8. d16 fis4 fis, |
    b8. d16 fis4 fis, | b8 8 b'4. 8 | eis,8 8 fis4 dis | e8 g, a4(b) | <e, e'>2 <cis a'>4 |
    <d' a'>4. <cis a'>8 <d a'> b | % 54a
    <e b'>8. <e a>16 <e gis>4 <e b'> |
    <fis a>4. 8 8 8 |
    <gis b>8. <fis b>16 <e b'>4 gis |
    <a cis>4. <a d>8 <a cis> <a b> | % 54b
    <a e'>8. <b e>16 <a cis>8 <cis, a'> <d a'> b |
    e8 8 <e, e'>4. <a e'>8 |
    <a e'>2 \section <e e'>4 |
    <cis' c'>4. <d d'>8 <cis cis'> <b b'> | % 54c
    <a a'>8. <b b'>16 <cis cis'>8 <cis a'> <d a'> <b b'> |
    <e, e'>8 <e' cis' e> <e d' e>4. <a, a'>8 |
    \alternative {
      { q2 r4 }
      { q2.\fermata }
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
}

#(set-global-staff-size 19)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Lord MA"
            shortInstrumentName = #"LdM"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \clef "treble_8"
            \new Voice \solo
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partCombine #'(2 . 88) \soprano \alto
            \new NullVoice \soprano
            \addlyrics \wordsChorusOne
            \addlyrics \wordsChorusTwo
            \addlyrics \wordsChorusThree
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) \tenor \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
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
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Lord MA"
            shortInstrumentName = #"LdM"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \clef "treble_8"
            \new Voice \solo
            \addlyrics \wordsSingle
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partCombine #'(2 . 88) \unfoldRepeats \soprano \unfoldRepeats \alto
            \new NullVoice \soprano
            \addlyrics {\wordsChorusOne \wordsChorusTwo \wordsChorusThree}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) \unfoldRepeats \tenor \unfoldRepeats \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Lord MA"
            shortInstrumentName = #"LdM"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \clef "treble_8"
            \new Voice \solo
            \addlyrics \wordsSingle
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partCombine #'(2 . 88) \unfoldRepeats \soprano \unfoldRepeats \alto
            \new NullVoice \soprano
            \addlyrics {\wordsChorusOne \wordsChorusTwo \wordsChorusThree}
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) \unfoldRepeats \tenor \unfoldRepeats \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
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
  \bookOutputSuffix "singlepage-sep"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Lord MA"
            shortInstrumentName = #"LdM"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \clef "treble_8"
            \new Voice \solo
            \addlyrics \wordsSingle
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \unfoldRepeats \soprano
            \addlyrics {\wordsChorusOne \wordsChorusTwo \wordsChorusThree}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \unfoldRepeats \alto
            \addlyrics {\wordsChorusOne \wordsChorusTwo \wordsChorusThree}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Voice \unfoldRepeats \tenor
            \addlyrics {\wordsChorusOne \wordsChorusTwo \wordsChorusThree}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \bass
            \addlyrics {\wordsChorusOne \wordsChorusTwo \wordsChorusThree}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
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
  \bookOutputSuffix "singlepage-sep-bass"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Lord MA"
            shortInstrumentName = #"LdM"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSolo}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \clef "treble_8"
            \new Voice \solo
            \addlyrics {\tiny \wordsSingle}
          >>
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \unfoldRepeats \soprano
            \addlyrics {\tiny \wordsChorusOne \wordsChorusTwo \wordsChorusThree}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \unfoldRepeats \alto
            \addlyrics {\tiny \wordsChorusOne \wordsChorusTwo \wordsChorusThree}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Voice \unfoldRepeats \tenor
            \addlyrics {\tiny \wordsChorusOne \wordsChorusTwo \wordsChorusThree}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \unfoldRepeats \bass
            \addlyrics {\wordsChorusOne \wordsChorusTwo \wordsChorusThree}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
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
  \bookOutputSuffix "midi"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single solo staff
          \new Staff = solo \with {
            instrumentName = #"Lord MA"
            shortInstrumentName = #"LdM"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSolo
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \clef "treble_8"
            \new Voice \solo
            \addlyrics \wordsMidi
          >>
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \partCombine #'(2 . 88) \unfoldRepeats \soprano \unfoldRepeats \alto
            \new NullVoice \soprano
            \addlyrics \wordsChorusMidi
          >>
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            midiInstrument = "choir aahs"
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) \unfoldRepeats \tenor \unfoldRepeats \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
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
