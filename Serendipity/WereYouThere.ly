\version "2.25.12"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Were you there?"
  subtitle    = "Traditional Spiritual"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Hugh S. Roberton (1874—1952)"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Traditional"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
  \partial 4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "At the pace of slow speech, and with intense expressiveness" 4=60
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "1a" } s4 s1*2
  \textMark \markup { \box "1b" }    s1*4
  \textMark \markup { \box "2a" }    s1*4
  \textMark \markup { \box "2b" }    s1*3
  \textMark \markup { \box "3a" } s4 s1*2
  \textMark \markup { \box "3b" }    s1*4
  \textMark \markup { \box "4a" }    s1*4
  \textMark \markup { \box "4b" }    s1*2 s2.
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s4\mf | s1*4 | s1\< | s2\> s\! |
  s1 | s2 s\> | s1\! | s1*4 |
  s4 | s1*4 s2\< s4.\! s8\> s2 s\! | % 3
  s1 | s2. s8.\> s16\! | s1 | s\f | s1*2 | s2.
}

soprano = \relative {
  \global
  ees'8 aes | c4 8 8 bes aes c8. bes16 | aes2. r4 |
  R1 | R1 | ees'2 <d aes'>4. <d f>8 | ees2 r |
  r2 r4 aes,8 des | c4 8 8 bes aes c8. bes16 | aes2 r | R1 | % 2a
  r2 r4\fermata aes8 8 | 4 8 8 8 8 g8. 16 aes2.\fermata r4 \section |
  \partial 4 ees8 aes | c4 8 8 bes aes c8. bes16 | aes2. r4 | % 3a
  R1 | R | ees'2 <d aes'>4. <d f>8 | ees2 r |
  r2 r4 aes,8 8 | 4 8 8 8 8 g8. 16 | aes2 r | <des f>8 <c ees>4 <aes c>8 8. <ees aes>16 8 <ges aes> | % 4a
  <f bes>8 <f aes> q <ees aes> <c f> <c ees>\fermata aes'8 8 | 4 8 8 8 8 g8. 16 | aes2~4\fermata
  \bar "|."
}

wordsSop = \lyricmode {
  Were you there when they cru -- ci -- fied my Lord?
  Oh, were you there?
  Were you there when they cru -- ci -- fied my Lord?
  Were you there when they cru -- ci -- fied my Lord?

  Were you there when they laid him in the tomb?
  Oh, were you there?
  Were you there when they laid him in the tomb?
  Some -- times it caus -- es me to trem -- ble, bro -- thers, trem -- ble!
  Were you there when they laid him in the tomb?
}

wordsSopMidi = \lyricmode {
  "Were " "you " "there " "when " "they " cru ci "fied " "my " "Lord? "
  "\nOh, " "were " "you " "there? "
  "\nWere " "you " "there " "when " "they " cru ci "fied " "my " "Lord? "
  "\nWere " "you " "there " "when " "they " cru ci "fied " "my " "Lord?\n"

  "\nWere " "you " "there " "when " "they " "laid " "him " "in " "the " "tomb? "
  "\nOh, " "were " "you " "there? "
  "\nWere " "you " "there " "when " "they " "laid " "him " "in " "the " "tomb? "
  "\nSome" "times " "it " caus "es " "me " "to " trem "ble, " bro "thers, " trem "ble! "
  "\nWere " "you " "there " "when " "they " "laid " "him " "in " "the " "tomb? "
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s4\omit\mf | s1*4 | s1\< | s2\> s\! |
  s1 | s2 s\> | s1\! s1*4 |
  s4 | s1*4 | s2\< s4.\! s8\> | s2 s\! | % 3
  s1 | s2. s8.\> s16\! | s1 | s\f | s1*2 | s2.
}

alto = \relative {
  \global
  c'8 8 | ees4 8 8 des c ees8. des16 | c4(des ees) aes8 8 |
  aes2.(8. c,16 | ees4) aes8-> 8-> g2-> | <aes c>2 <f b>4. 8 | <aes c>2 r |
  r2 r4 c,8 f | ees4 8 8 des c ees8. des16 | c2-> aes'->~ | 4 4->(~2~ | % 2a
  aes2 bes8 c\fermata) c, f | ees4 8 8 des c ees8. des16 | c2.\fermata r4 \section
  c8 8 | ees4 8 8 des c ees8. des16 | c4(des ees) aes8 8 | % 3a
  aes2.(8. c,16 | ees4) aes8-> 8-> g2-> | <aes c>2 <f b>4. 8 | <aes c>2 r |
  r2 r4 c,8 f | ees4 8 8 des c ees8. des16 | c2 r | g'8 aes4 ees8 8. c16 8 8 | % 4a
  des8 8 8 c b c\fermata c f | ees4 8 8 des c ees8. des16 | c4 8 des ees4\fermata
  \bar "|."
}

wordsAlto = \lyricmode {
  Were you there when they cru -- ci -- fied my Lord?
  Were you there? __ Were you there? Oh, were you there?
  Were you there when they cru -- ci -- fied my Lord?
  Oh! __ oh __
  Were you there when they cru -- ci -- fied my Lord?

  Were you there when they laid him in the tomb? __
  Were you there? __ In the tomb? Oh, were you there?
  Were you there when they laid him in the tomb?
  Some -- times it caus -- es me to trem -- ble, bro -- thers, trem -- ble!
  Were you there when they laid him in the tomb?
  Were you there?
}

wordsAltoMidi = \lyricmode {
  "Were " "you " "there " "when " "they " cru ci "fied " "my " "Lord? "
  "\nWere " "you " "there? "  "Were " "you " "there? " "Oh, " "were " "you " "there? "
  "\nWere " "you " "there " "when " "they " cru ci "fied " "my " "Lord? "
  "\nOh! "  "oh " 
  "\nWere " "you " "there " "when " "they " cru ci "fied " "my " "Lord?\n"

  "\nWere " "you " "there " "when " "they " "laid " "him " "in " "the " "tomb? " 
  "\nWere " "you " "there? "  "In " "the " "tomb? " "Oh, " "were " "you " "there? "
  "\nWere " "you " "there " "when " "they " "laid " "him " "in " "the " "tomb? "
  "\nSome" "times " "it " caus "es " "me " "to " trem "ble, " bro "thers, " trem "ble! "
  "\nWere " "you " "there " "when " "they " "laid " "him " "in " "the " "tomb? "
  "\nWere " "you " "there? "
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s4\omit\mf | s2.\< s4\! | s1*4 | s1\< |
  s2.\> s4\! | s2 s\> | s1\! s\f | s1*3 |
  s4 | s1\< | s\! | s1*3 | s2\< s\! |
  s2.\> s4\! | s2. s8.\> s16\! | s1*4 | s2.
}

tenor = \relative {
  \global
  aes8 8 | 2. g8. 16 | aes2. 8 c |
  ees4 8 8 f ees8 8. c16 | bes4 des8-> c-> bes2-> | R1 | ees2 <d aes'>4. <des fes>8 |
  ees2. aes,8 bes | c4 8 8 bes aes g8. 16 | aes2 r | f'8 ees4 c8 8. aes16 8 8 | % 2a
  bes8 aes8 8 8 f ees\fermata aes8 des | c4 8 8 bes aes c8. bes16 | aes2.\fermata r4 \section |
  aes8 8 | 2. g8. 16 | aes2. 8 c | % 3a
  ees4 8 8 f ees8 8. c16 | bes4 d8-> c bes2-> | R1 | ees2 <d aes'>4. <d fes>8 |
  ees2. aes,8 des | c4 8 8 bes aes c8. bes16 | aes2 2-> ~ | 4 2.-> ~ | % 4a
  aes2~4\fermata 8 des | c4 8 8 bes aes c8. bes16 | aes4 8 bes c4\fermata
  \bar "|."
}

wordsTenor = \lyricmode {
  Were you there? Were you there?
  Were you there when they cru -- ci -- fied my Lord?
  Were you there? Oh, were you there?
  Were you there when they cru -- ci -- fied my Lord?
  Some -- times it caus -- es me to trem -- ble, bro -- thers, trem -- ble!
  Were you there when they cru -- ci -- fied my Lord?

  Were you there in the tomb?
  Were you there when they laid him in the tomb? In the tomb?
  Oh, were you there? Were you there when they laid him in the tomb?
  Oh! __ oh! __
  Were you there when they laid him in the tomb?
  Were you there?
}

wordsTenorMidi = \lyricmode {
  "Were " "you " "there? " "Were " "you " "there? "
  "\nWere " "you " "there " "when " "they " cru ci "fied " "my " "Lord? "
  "\nWere " "you " "there? " "Oh, " "were " "you " "there? "
  "\nWere " "you " "there " "when " "they " cru ci "fied " "my " "Lord? "
  "\nSome" "times " "it " caus "es " "me " "to " trem "ble, " bro "thers, " trem "ble! "
  "\nWere " "you " "there " "when " "they " cru ci "fied " "my " "Lord?\n"

  "\nWere " "you " "there " "in " "the " "tomb? "
  "\nWere " "you " "there " "when " "they " "laid " "him " "in " "the " "tomb? " "In " "the " "tomb? "
  "\nOh, " "were " "you " "there? " "Were " "you " "there " "when " "they " "laid " "him " "in " "the " "tomb? "
  "\nOh! "  "oh! " 
  "\nWere " "you " "there " "when " "they " "laid " "him " "in " "the " "tomb? "
  "\nWere " "you " "there? "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s4\omit\mf | s2.\< s4\! | s1*4 | s1\< |
  s2.\> s4\! | s2 s\> | s1\! | s\f | s1*3 |
  s4 | s1\< | s\! | s1*3 | s2\< s\! |
  s2.\> s4\! | s2. s8.\> s16\! | s1*4 | s2.
}

bass = \relative {
  \global
  aes,8 8 | 2. g8. 16 | aes4(bes c) aes'8 8 |
  c4 8 8 d c c8. aes16 | g4 f8-> d-> ees2-> | R1 | <aes c>2 <fes b>4. 8 |
  <aes c>2. f8 bes, | ees4 8 8 8 8 8. 16 | aes,2 r | des'8 c4 aes8 8. ees16 8 c | % 2a
  des8 8 8 8 8 aes\fermata f' bes, | ees4 8 8 8 8 8. 16 | aes2.\fermata r4 \section
  aes,8 8 | 2. g8. 16 | aes4(bes c) aes'8 8 | % 3a
  c4 8 8 des c8 8. aes16 | g4 f8-> d-> ees2-> | R1 | <aes c>2 <fes b>4. 8 |
  <aes c>2. f8 bes, | ees4 8 8 8 8 8. 16 | aes,2 r | R1 | % 4a
  r2 r4 f'8 bes, | ees4 8 8 8 8 8. 16 |
  <<{\vo aes,4 aes'8 f ees4\fermata} \new Voice {\vt aes,2~4\fermata}>>
  \bar "|."
}

wordsBass = \lyricmode {
  Were you there? Were you there?
  Were you there when they cru -- ci -- fied my Lord?
  Were you there? Oh, were you there?
  Were you there when they cru -- ci -- fied my Lord?
  Some -- times it caus -- es me to trem -- ble, bro -- thers, trem -- ble!
  Were you there when they cru -- ci -- fied my Lord?

  Were you there in the tomb?
  Were you there when they laid him in the tomb? In the tomb?
  Oh, were you there? Were you there when they laid him in the tomb?
  Were you there when they laid him in the tomb?
  Were you there?
}

wordsBassMidi = \lyricmode {
  "Were " "you " "there? " "Were " "you " "there? "
  "\nWere " "you " "there " "when " "they " cru ci "fied " "my " "Lord? "
  "\nWere " "you " "there? " "Oh, " "were " "you " "there? "
  "\nWere " "you " "there " "when " "they " cru ci "fied " "my " "Lord? "
  "\nSome" "times " "it " caus "es " "me " "to " trem "ble, " bro "thers, " trem "ble! "
  "\nWere " "you " "there " "when " "they " cru ci "fied " "my " "Lord?\n"

  "\nWere " "you " "there " "in " "the " "tomb? "
  "\nWere " "you " "there " "when " "they " "laid " "him " "in " "the " "tomb? " "In " "the " "tomb? "
  "\nOh, " "were " "you " "there? " "Were " "you " "there " "when " "they " "laid " "him " "in " "the " "tomb? "
  "\nWere " "you " "there " "when " "they " "laid " "him " "in " "the " "tomb? "
  "\nWere " "you " "there? "
}

pianoRHone = \relative {
  \global
  c4
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  c4
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global
  c4
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  c4
  \bar "|."
}

#(set-global-staff-size 18)

\book {
  \bookOutputSuffix single
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
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
  \bookOutputSuffix single-noacc
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
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
  \bookOutputSuffix singlepage
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBass
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
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
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics {\tiny \wordsSop}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
            \new Voice \alto
            \addlyrics {\tiny \wordsAlto}
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics\wordsBass
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
  \bookOutputSuffix midi-sop
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
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

\book {
  \bookOutputSuffix midi-alto
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
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

\book {
  \bookOutputSuffix midi-tenor
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
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

\book {
  \bookOutputSuffix midi-bass
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
            \addlyrics \wordsBassMidi
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
