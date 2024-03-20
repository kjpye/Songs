\version "2.25.13"

\include "kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "An Eriskay Love Lilt"
  subtitle    = "Gradh Geal mo chridh"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "From \"Songs of the Hebrides\""
  arranger    = "Arr. Hugh S. Roberton"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
 tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 3/4
  \tempo "Softly and lingeringly, but rhythmical." 4=44
%  \tempo 4=52
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
%  \mark \markup { \circle "1a" }
  \textMark \markup { \box "2a" } s2.*4
  \textMark \markup { \box "3a" } s2.*4
  \textMark \markup { \box "3b" } s2.*4
  \textMark \markup { \box "4a" } s2.*4
  \textMark \markup { \box "4b" } s2.*4
  \textMark \markup { \box "5a" } s2.*4
  \textMark \markup { \box "5b" } s2.*4
  \textMark \markup { \box "6a" } s2.*4
  \textMark \markup { \box "6b" } s2.*4
  \textMark \markup { \box "7a" } s2.*4
  \textMark \markup { \box "7b" } s2.*4
}

soprano = \relative c'' {
  \global
  c2.~
  c4 c2(
  d8 des c2)~
  c4 c2(
  d8 bes g2) % 3a
  bes8(a g f e d)
  r4 r f8( g
  a8 c f,2)~
  f2 f8 a % 3b
  c4. d8 c a
  f2 f8 a
  c4. d8 c a
  g2 c,8 d % 4a
  e4. f8 g4
  c2 d,8 d
  c4. d8 \breathe f4
  f2 r4 % 4b
  r4 c'2(
  d8 des c2~
  c4) c2(
  d8 bes g2) % 5a
  bes8(a g f e d)
  r4 r f8(g
  a8 c f,2~
  f2) f8 a % 5b
  c4. d8 c a
  f2 f8 a
  c4. d8 c a
  g2 c,8 d % 6a
  e4. f8 g4
  c2 d,8 d
  c4. d8 f4
  f2 r4 % 6b
  r4 c'2(
  d8 des c2~
  c4) c2(
  d8 bes g2) % 7a
  bes8(a g f e d)
  r4 r f8(g
  a8 c f,2~
  f2) r4 % 7b
  r4 c2(
  d8 des c2)
  c2.->\fermata
  \bar "|."
}

dynamicsSop = {
  \override DynamicTextSpanner.style = #'none
  s2.
  s2.*3
  s2. % 3a
  s2.\>
  s2.\!
  s2.
  s4. s\mf\<^\markup {(with tender passion)} % 3b
  s2.\!
  s2.
  s2.
  s2.*4 % 4a
  s2\> s4\! % 4b
  s4 s2^\markup \upright {(The new moon and the lapping water)}
  s2.
  s2.
  s2. % 5a
  s2.\>
  s2.\!
  s2.
  s2\> s4\f^\markup {(rapturously, lovingly)} % 5b
  s2.*3
  s2.*4 % 6a
  s2\> s4\! % 6b
  s4 s2^\markup \upright {(the new moon and the lapping water)}
  s2.
  s2.
  s4 s2\> % 7a
  s2.\>
  s2\! s4^\markup \upright {(the moon creeps behind a cloud)}
  s2.
  s2\> s4\! % 7b
  s4 s2\pp
  s2.
  s2.\pp^\markup \bold morendo
}

wordsSop = \lyricmode {
  Hm __ _ _ _ _
  When I'm lone- ly dear white heart,
  Black the night or wild the sea,
  By love's light my foot finds
  The old path- way to thee.
  Hm __ _ _ _
  Thou'rt the mu- sic of my heart,
  Harp of joy oh Crootch mo cree,
  Moon of guid- ance by night,
  Strength and light thou'rt to me.
  Hm __ _ _ _
  Mm __ _
}

alto = \relative c'' {
  \global
  a2.~
  a4 a2~
  a2.~
  a4 a2(
  bes8 g d2) % 3a
  g8(f e d c bes)
  c8(bes a g) d'(f~
  f8 a c, bes d4
  c2) c8 f % 3b
  a4. e8 f e
  d8(c bes a) c f
  a8->(g) fis4-> g8 f
  f4(e8 d)c b % 4a
  bes4. a8 c4
  c2 bes8 g
  a4. a8 \breathe d8(des) %%% FIX
  c2 r4 % 4b
  r4 a'2~
  a2.~
  a4 a2(
  bes8 g d2) % 5a
  g8(f e d c bes)
  c8(bes a g) d'8(f~
  f8 a c, bes d4->
  c2) c8 f % 5b
  a4. e8 f e
  d8(c bes a) c f
  a8->(g) fis4-> g8 f
  f4(e8 d) c b % 6a
  bes4. a8 c4
  c2 bes8 g
  a4. a8 d8(des) %%% FIX
  c2 r4 % 6b
  r4 a'2~
  a2.~
  a4 a2(
  bes8 g d2) % 7a
  g8(f e d c bes)
  c8(bes a g) d'( f~
  f8 a c, bes d4->
  c2) r4 % 7b
  r4 a2~
  a2.
  a2.->\fermata
  \bar "|."
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  s2.-\markup \upright {(The new moon and the lapping water)}
  s2.*3
  s2. % 3a
  s2.\>
  s2\> s4\!
  s2 s4\>
  s2 s4\mf\< % 3b
  s2.\!
  s2.
  s2.
  s2.*4 % 4a
  s2\> s4\! % 4b
  s2.*3
  s2. % 5a
  s2.\>
  s2\> s4\!
  s2 s4\>
  s2 s4\f % 5b
  s2.*3
  s2.*4 % 6a
  s2\> s4\! % 6b
  s2.*3
  s4 s2\> % 7a
  s2.\>
  s2\> s4\!
  s2 s4\>
  s2 s4\! % 7b
  s4 s2\pp
  s2.
  s2.\ppp^\markup \bold morendo
}

wordsAlto = \lyricmode {
  Hm __ _ _ _ _ _
  When I'm lone- ly dear white heart,
  Black the night or wild the sea,
  By love's light my foot finds
  The old path- way to thee.
  Hm __ _ _ _ _
  Thou'rt the mu- sic of my heart,
  Harp of joy oh Crootch mo cree,
  Moon of guid- ance by night,
  Strength and light thou'rt to me.
  Hm __ _ _ _ _
  Mm __ _
}

wordsAltoMidi = \lyricmode {
  "Hm "  "" "" "" "" ""
  "\nWhen " "I'm " lone "ly " "dear " "white " "heart, "
  "\nBlack " "the " "night " "or " "wild " "the " "sea, "
  "\nBy " "love's " "light " "my " "foot " "finds "
  "\nThe " "old " path "way " "to " "thee. "
  "\nHm "  "" "" "" ""
  "\nThou'rt " "the " mu "sic " "of " "my " "heart, "
  "\nHarp " "of " "joy " "oh " "Crootch " "mo " "cree, "
  "\nMoon " "of " guid "ance " "by " "night, "
  "\nStrength " "and " "light " "thou'rt " "to " "me. "
  "\nHm "  "" "" "" ""
  "\nMm "  ""
}

tenor = \relative c' {
  \global
  f2.~
  f4 e2(
  f2.)~
  f4 fis2(
  g8 d bes2) % 3a
  r2.
  a8(g f e) bes'(b
  c8 f a, g gis4->
  a2) a8 c % 3b
  f8(e d) bes a c
  bes8(a g f) a d
  e4-> d-> d8 d
  d4(c8 bes) a aes % 4a
  g4. c8 bes4
  a2 f8 f
  f4 fis-> \breathe g
  a2 r4 % 4b
  r4 e'2(
  f2.~
  f4) fis2(
  g8 d bes2) % 5a
  r2.
  a8(g f e) bes'(b
  c8 f a, g gis4->
  a2) a8 c % 5b
  f8(e d) bes a c
  bes8(a g f) a d
  e4-> d-> d8 d
  d4(c8 bes) a aes % 6a
  g4. c8 bes4
  a2 f8 f
  f4 fis-> g
  a2 r4 % 6b
  r4 e'2(
  f2.~
  f4) fis2(
  g8 d bes2) % 7a
  r2.
  a8(g f e) bes'(b
  c8 f a, g gis4->
  a2) r4 % 7b
  r4 e2(
  f2.)
  f2.->\fermata
  \bar "|."
}

dynamicsTenor = {
  \override DynamicTextSpanner.style = #'none
  s2.*4
  s2. % 3a
  s2.
  s2\> s4\!
  s2 s4\>
  s2 s4\mf\< % 3b
  s2.\!
  s2.*2
  s2.*4 % 4a
  s2\> s4\! % 4b
  s2.*3
  s2. % 5a
  s2.
  s2\> s4\!
  s2 s4\>
  s2 s4\f % 5b
  s2.*3
  s2.*4 % 6a
  s2\> s4\! % 6b
  s2.*3
  s4 s2\> % 7a
  s2.\!
  s2\> s4\!
  s2 s4\>
  s2 s4\! % 7b
  s4 s2\pp
  s2.
  s2.\ppp^\markup \bold morendo
}

wordsTenor = \lyricmode {
  Hm __ _ _ _ _
  When I'm lone- ly dear white heart,
  Black the night or wild the sea,
  By love's light my foot finds
  The old path- way to thee.
  Hm __ _ _ _
  Thou'rt the mu- sic of my heart,
  Harp of joy oh Crootch mo cree,
  Moon of guid- ance by night,
  Strength and light thou'rt to me.
  Hm __ _ _ _
  Mm __ _
}

bass= \relative c {
  \global
  r4 r f8 a
  c4.(d8) c a
  f2 f8 a
  c4.(d8) c a
  g2 c,8 d % 3a
  e4. f8 g4
  c2 d,8 d
  c4. d8 f4
  f2 <f, f'>4~ % 3b
  q8 q q q q4~
  q8 q q4 \times 2/3 {f'8(e) d}
  a4-> a-> bes8 bes
  b4(c) c8 c % 4a
  c8(cis d) dis e(c)
  f8(c a f) bes bes
  c4. c8 \breathe c4
  f,2 f'8 a % 4b
  c4.(d8) c a
  f2 f8 a
  c4.(d8) c a
  g2 c,8 d % 5a
  e4. f8 g4
  c2 d,8 d
  c4. d8 f4
  f2 <f, f'>4-> ~ % 5b
  q8 q q q q4~
  q8 q q4 \times 2/3 {f'8(e) d}
  a4-> a-> bes8 bes
  b4(c) c8 c % 6a
  c8(cis d) dis e(c)
  f8(c a f) bes bes
  c4. c8 c4
  f,2 f'8 a % 6b
  c4.(d8) c a
  f2 f8 a
  c4.(d8) c a
  g2 c,8 d % 7a
  e4. f8 g4
  c2 d,8 d
  c4. d8 f4
  f2 f,8(a % 7b
  c4. d8 c a
  f2.)~
  f2.\fermata
  \bar "|."
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s4^\markup \bold {Softly and with suggestion of "distance."} s2-\markup \upright {(Her lover sings)}
  s2.*3
  s2.*4 % 3a
  s2\> s4\mf % 3b
  s2.*3
  s2.*4 % 4a
  s2\> s4\!-\markup \upright {(Her lover sings)}^\markup \bold {Softly but "nearer."} % 4b
  s2.*3
  s2.*4 % 5a
  s2\> s4\f\> % 5b
  s8 s\! s2
  s2.
  s2.
  s2.*4 % 6a
  \break s2 s4_\markup \upright {(Her lover sings)}^\markup \bold {Very softly and very "distant."} % 6b
  s2.*3
  s2 s4\> % 7a
  s2.\!
  s2.
  s2.
  s2\> s4_\markup \upright {(It is the black night)} ^\markup \bold Slower. % 7b
  s2.
  s2.
  s2.\ppp^\markup \bold morendo
}


wordsBass = \lyricmode {
  Vair me o __ ro van
  o Vair me o __ ro van
  ee Vair me o- ru o ho
  Sad am I with- out thee—
  When __ I'm lone- ly dear __ white heart,
  Black the night or wild the sea, __
  By love's light __ my foot finds __
  The old path- way to thee.
  Vair me o __ ro van o
  Vair me o __ ro van ee
  Vair me o ru o ho
  Sad am I with- out thee—
  Thou'rt __ the mu- sic of __ my heart,
  Harp of joy oh Crootch mo cree, __
  Moon of guid- ance by night, __
  Strength and light thou'rt to me.
  Vair me o __ ro van o
  Vair me o__ ro van ee
  Vair me o ru o ho
  Sad am I with- out thee.
  Mm. __
}

wordsBassMidi = \lyricmode {
  "Vair " "me " "o "  "ro " "van " "o "
  "\nVair " "me " "o "  "ro " "van " "ee "
  "\nVair " "me " o "ru " "o " "ho "
  "\nSad " "am " "I " with "out " "thee— "
  "\nWhen "  "I'm " lone "ly " "dear "  "white " "heart, "
  "\nBlack " "the " "night " "or " "wild " "the " "sea, " 
  "\nBy " "love's " "light "  "my " "foot " "finds " 
  "\nThe " "old " path "way " "to " "thee. "
  "\nVair " "me " "o "  "ro " "van " "o "
  "\nVair " "me " "o "  "ro " "van " "ee "
  "\nVair " "me " "o " "ru " "o " "ho "
  "\nSad " "am " "I " with "out " "thee— "
  "\nThou'rt "  "the " mu "sic " "of "  "my " "heart, "
  "\nHarp " "of " "joy " "oh " "Crootch " "mo " "cree, " 
  "\nMoon " "of " guid "ance " "by " "night, " 
  "\nStrength " "and " "light " "thou'rt " "to " "me. "
  "\nVair " "me " "o "  "ro " "van " "o "
  "\nVair " "me " "o__ " "ro " "van " "ee "
  "\nVair " "me " "o " "ru " "o " "ho "
  "\nSad " "am " "I " with "out " "thee. "
  "\nMm. " 
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\p
  s2.*3
  s2. % 3a
  s2.\>
  s2\> s4\!
  s2.
  s2\> s4\mf % 3b
  s2.*3
  s2.*4 % 4a
  s2\> s4\! % 4b
  s2.*3
  s2. % 5a
  s2.\>
  s2\> s4\!
  s2.
  s2\> s4\f % 5b
  s2.*3
  s2.*4 % 6a
  s2\> s4\p % 6b
  s2.*3
  s2\> s4\< % 7a
  s2.\>
  s2\> s4\!
  s2.
  s2\> s4\pp % 7b
  s2.\pp
  s2.
  s2.\ppp^\markup \bold morendo
}

#(set-global-staff-size 17)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          \accidentalStyle Score.modern-cautionary
        }
        <<
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh \with {
          printPartCombineTexts = ##f
        }
        <<
          \partCombine \soprano \alto
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = pianolh \with {
          printPartCombineTexts = ##f
        }
        <<
          \clef "bass"
          \partCombine \tenor \bass
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
  \paper {
    output-suffix = single-noacc
  }
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
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
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
        >>
      >>
      \new PianoStaff <<
        \new Staff = pianorh \with {
          printPartCombineTexts = ##f
        }
        <<
          \partCombine \soprano \alto
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = pianolh \with {
          printPartCombineTexts = ##f
        }
        <<
          \clef "bass"
          \partCombine \tenor \bass
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
  \paper {
    output-suffix = singlepage-noacc
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
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Voice \RehearsalTrack
          \new Dynamics \with {alignAboveContext = soprano}\dynamicsSop
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
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
  \paper {
    output-suffix = singlepage-noacc-sop
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
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \new Dynamics \with {alignAboveContext = soprano} \dynamicsSop
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" \wordsSop
        >>
                                % Single alto staff
         \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" {\tiny \wordsAlto}
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" {\tiny \wordsTenor}
        >>
                                % Single bass staff
         \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" {\tiny \wordsBass}
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
  \paper {
    output-suffix = singlepage-noacc-alto
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
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" {\tiny \wordsSop}
        >>
                                % Single alto staff
         \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAlto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" {\tiny \wordsTenor}
        >>
                                % Single bass staff
         \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" {\tiny \wordsBass}
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
  \paper {
    output-suffix = singlepage-noacc-tenor
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
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" {\tiny \wordsSop}
        >>
                                % Single alto staff
         \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" {\tiny \wordsAlto}
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenor
        >>
                                % Single bass staff
         \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \magnifyStaff #4/7
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" {\tiny \wordsBass}
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
  \paper {
    output-suffix = singlepage-noacc-bass
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
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsSop}
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
          \new Lyrics \lyricsto "soprano" {\tiny \wordsSop}
        >>
                                % Single alto staff
         \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsAlto}
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" {\tiny \wordsAlto}
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
        }
        <<
          \magnifyStaff #4/7
          \clef "treble_8"
          \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" {\tiny \wordsTenor}
        >>
                                % Single bass staff
         \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
        }
        <<
          \clef "bass"
          \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBass
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
  \paper {
    output-suffix = midi
  }
  \score {
                                %   \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsSop
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsAlto
          \new Voice = "alto" \alto
          \new Lyrics \lyricsto "alto" \wordsAltoMidi
        >>
                                % Single tenor staff
        \new Staff \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsTenor
          \clef "treble_8"
          \new Voice = "tenor" \tenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsBass
          \clef "bass"
          \new Voice = "bass" \bass
        >>
      >>
      \new PianoStaff <<
        \new Staff = piano \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \soprano
          \new Voice \bass
          \new Dynamics \dynamicsPiano
          \new Voice \tenor
          \new Voice \bass
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
  \paper {
    output-suffix = midi-bass
  }
  \score {
                                %   \articulate
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff = soprano \with {
          instrumentName = #"Soprano"
          shortInstrumentName = #"S"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsSop
          \new Voice \RehearsalTrack
          \new Voice \soprano
        >>
                                % Single alto staff
        \new Staff = alto \with {
          instrumentName = #"Alto"
          shortInstrumentName = #"A"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \dynamicsAlto
          \new Voice \alto
        >>
                                % Single tenor staff
        \new Staff = tenor \with {
          instrumentName = #"Tenor"
          shortInstrumentName = #"T"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "treble_8"
          \new Dynamics \dynamicsTenor
          \new Voice \tenor
        >>
                                % Single bass staff
        \new Staff = bass \with {
          instrumentName = #"Bass"
          shortInstrumentName = #"B"
          midiInstrument = "choir aahs"
        }
        <<
          \clef "bass"
          \new Dynamics \dynamicsBass
          \new Voice \bass
          \addlyrics \wordsBassMidi
        >>
      >>
      \new PianoStaff <<
        \new Staff = piano \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \soprano
          \new Voice \alto
          \new Dynamics \dynamicsPiano
          \new Voice \tenor
          \new Voice \bass
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
