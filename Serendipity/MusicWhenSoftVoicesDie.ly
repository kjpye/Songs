\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Music, when soft voices die"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "C. Hubert H. Parry [1848-1918]"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "P. B. Shelley [1792-1822]"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key e \major
  \time 4/4
}

TempoTrack = {
  \tempo "Lento espresivo" 4=60
  s1
  \set Score.tempoHideNote = ##t
  s1*18
  \tempo 4=50 s1
  \tempo 4=30
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "262a" } s1*3
  \mark \markup { \box "262b" } s1*3
  \mark \markup { \box "263a" } s1*4
  \mark \markup { \box "263b" } s1*3
  \mark \markup { \box "264a" } s1*4
  \mark \markup { \box "264b" } s1*4
}

soprano = \relative {
%  \ambitusAfter key-signature
  \global
  gis'8^\p^\< (a cis^\>) b gis8^\< (a cis^\>) b |
  e,8\!(eis4) fis8 gis2 |
  gis8^\<(ais cis bis dis) cis\! e4~ |
  e8 gis,^\> b4~8. cis16\! b4 | % 262b
  cis4.^\p 8 8(dis^\< e) fis |
  fis4.\! a,8^\> 8 gis\! r4 |
  gis8(ais b) cis dis4. gis,8 | % 263a
  gis8(b4) fisis8 ais gis4 r8 |
  gis8^\pp^\< (ais cis^\>) b gis^\<(ais cis) b |
  d4.\! cis8 b4^\> (a8\!) gis |
  a8^\<(b d) cis fis8.->^\f e16 dis8^\> cis | % 263b
  e4(dis8\!) gis,8 4. 8 |
  gis8^\p(ais) b^\cresc (cis) 2~ |
  cis8^\> dis e fis bis,2^\p | % 264a
  bis8^\pp (cis dis) e fis,4. 8 |
  a4. gis8 fis4. e8 |
  eis8^\<(fis g) a\! cis8->(b4^\>) a8 |
  gis4^\dim (e gis4.) fis8 | % 264b
  e4 b'~8 e, fis gis |
  a4^\markup\italic rit. (b c^\>) dis, |
  e1\!\fermata
  \bar "|."
}

wordsSop = \lyricmode {
  Mu -- sic, when soft voi -- ces die,
  Vi -- brates in __ the mem -- o -- ry. __
  O -- dours, when __ sweet vio -- lets sick -- en,
  Live __ with -- in the sense they quick -- en.
  Rose __ leaves, when the rose is dead,
  Are heaped, __ are heaped for the be -- lov -- ed's bed;
  And so __ thy __ thoughts, __ when thou art gone,
  Love __ it -- self shall slum -- ber,
  slum -- ber, love __ it -- self __
  shall slum -- ber on,
  love __ it -- self shall slum -- ber on.
}

wordsSopMidi = \lyricmode {
  "Mu" "sic, " "when " "soft " voi "ces " "die, "
  "\nVi" "brates " "in "  "the " mem o "ry. " 
  "\nO" "dours, " "when "  "sweet " vio "lets " sick "en, "
  "\nLive "  with "in " "the " "sense " "they " quick "en. "
  "\nRose "  "leaves, " "when " "the " "rose " "is " "dead, "
  "\nAre " "heaped, "  "are " "heaped " "for " "the " be lov "ed's " "bed; "
  "\nAnd " "so "  "thy "  "thoughts, "  "when " "thou " "art " "gone, "
  "\nLove "  it "self " "shall " slum "ber, "
  "\nslum" "ber, " "love "  it "self " 
  "\nshall " slum "ber " "on, "
  "\nlove "  it "self " "shall " slum "ber " "on. "
}

alto = \relative {
  \global
  e'8^\p^\< (cis dis^\>) e e^\< (cis e^\>) dis |
  cis8\!(b a) fis' e(dis fis e16 dis) |
  dis8^\<(cis) fis4~8 e4\!(fis8 |
  gis8) b^\> a dis, fis8. dis16\! e4 | % 262b
  e8^\p^\<(fis a^\>) gis8 8\!(fis4^\<) a8 |
  a4.\! fis8^\<fis(e4) dis8\! |
  cis4^\<(gis'\! ~8) fis fis e | % 263a
  dis8 (eis fisis) dis fisis gis4 r8 |
  <<{gis4.^\pp 8 4.^\< 8\!} \new Voice {s4^\< s8^\> s\! s2}>> |
  gis8(fis4) eis8 4^\> (fis8\!) fis |
  fis4. r8 a8.->^\f gis16 a8^\> fis | % 263b
  gis8(fisis) fis4\! 8(e4) 8 |
  e4^\p gis^\cresc fis(b~ |
  b8^\>) a a fis\! fis^\p(e4 dis8) | % 264a
  cis4.^\pp 8^\< e4\!(dis8) cis |
  fis4. e8 dis4. cis8 |
  cis4.^\< fis8\! e8^>(d cis^\>) e |
  e4^\dim (cis~8 d) dis4 | % 264b
  e8 8^\<(fis a^\< ~ 8) gis\! fis e |
  e2. b4^\> |
  b1\!\fermata
  \bar "|."
}

wordsAlto = \lyricmode {
  Mu -- sic, when __ soft voi -- ces die, __
  Vi -- brates, __ vi -- brates in __ the mem -- o -- ry. __
  O -- dours, when __ sweet vio -- lets sick -- en,
  Live __ with -- in the sense they quick -- en.
  Rose __ leaves, when the rose is dead,
  Are heaped, heaped for the be -- lov -- ed's bed; __
  And so __ thy __ thoughts, __ when thou art gone,
  Love __ it -- self shall slum -- ber,
  slum -- ber, love __ it -- self __
  shall slum -- ber on,
  love __ it -- self shall slum -- ber on.
}

wordsAltoMidi = \lyricmode {
  "Mu" "sic, " "when "  "soft " voi "ces " "die, " 
  "\nVi" "brates, "  vi "brates " "in "  "the " mem o "ry. " 
  "\nO" "dours, " "when "  "sweet " vio "lets " sick "en, "
  "\nLive "  with "in " "the " "sense " "they " quick "en. "
  "\nRose "  "leaves, " "when " "the " "rose " "is " "dead, "
  "\nAre " "heaped, " "heaped " "for " "the " be lov "ed's " "bed; " 
  "\nAnd " "so "  "thy "  "thoughts, "  "when " "thou " "art " "gone, "
  "\nLove "  it "self " "shall " slum "ber, "
  "\nslum" "ber, " "love "  it "self " 
  "\nshall " slum "ber " "on, "
  "\nlove "  it "self " "shall " slum "ber " "on. "
}

tenor = \relative {
  \global
  b8^\p^\< (a fis^\>) gis b8^\< (a fis^\>) gis |
  a8\!(gis a) cis cis(bis a bis) |
  gis4^\< 4 4.\! a8 |
  b4^\> (cis8) b a8. 16\! gis4 | % 262b
  gis8^\p^\< (a cis^\>) b\! 8(a4^\<) cis8 |
  cis8\!(bis4) cis8^\> dis gis,4.
  cis4\!(dis8 e dis) b gis ais | % 263a
  b8(gis dis') cis cis b4 r8 |
  b8^\p^\< (cis e^\>) dis\! b^\<(cis e) d\! |
  b4. cis8^\< dis4^\> (cis8\!) b |
  cis8^\< (b gis) a cis8.->^\f 16^\> a8 cis | % 263b
  gis8^\< (ais cis\!) bis bis(cis4) 8 |
  cis4.^\p 8^\cresc 8(des e^\<) eis |
  gis8\! (fis4^\>) a,8 8^\p(gis4 fis8) | % 264a
  e4.^\pp 8 fis4. cis'8 |
  cis8(c) b4 8(a) gis4 |
  a4 cis e,8^\<(gis cis\!) c |
  b4^\dim (a8 gis a4.) 8 | % 264b
  gis8 8^\<(a cis^\> ~8) b\! a gis |
  e8^\pp(fis4 gis8 a^\< c^\>b) a\! |
  gis1\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  Mu -- sic, when __ soft voi -- ces die, __
  Vi -- brates, vi -- brates in __ the mem -- o -- ry. __
  O -- dours, when __ sweet vio -- lets sick -- en,
  Live __ with -- in the sense __ they quick -- en.
  Rose __ leaves, when __ the rose is dead,
  Are heaped, __  are heaped for the be -- lov -- ed's bed; __
  And so  thy thoughts, __ when thou art gone, __
  Love it -- self __ shall slum -- ber,
  slum -- ber, love it -- self __  shall slum -- ber on,
  love __ it -- self shall slum -- ber on.
}

wordsTenorMidi = \lyricmode {
  "Mu" "sic, " "when "  "soft " voi "ces " "die, " 
  "\nVi" "brates, " vi "brates " "in "  "the " mem o "ry. " 
  "\nO" "dours, " "when "  "sweet " vio "lets " sick "en, "
  "\nLive "  with "in " "the " "sense "  "they " quick "en. "
  "\nRose "  "leaves, " "when "  "the " "rose " "is " "dead, "
  "\nAre " "heaped, "   "are " "heaped " "for " "the " be lov "ed's " "bed; " 
  "\nAnd " "so "  "thy " "thoughts, "  "when " "thou " "art " "gone, " 
  "\nLove " it "self "  "shall " slum "ber, "
  "\nslum" "ber, " "love " it "self "   "shall " slum "ber " "on, "
  "\nlove "  it "self " "shall " slum "ber " "on. "
}

bass = \relative {
  \global
  e4.^\p 8 2~ |
  e8 d cis a gis2 |
  e'4^\< dis cis\! c |
  b4.^\> 8 e2\! | % 262b
  cis4.^\p 8^\< fis4^\< e |
  dis4\! cis^\> bis fis' |
  e4(dis8) cis b4 cis | % 263a
  dis4. 8 8 gis4 r8 |
  gis4.^\p^\< 8\> fis4.^\< 8 |
  eis8^\<(fis a) gis^\> fis4.\! 8 |
  fis2^\< dis8.->^\f e16^\> fis8 a\! | % 263b
  gis4. 8 cis,4. 8 |
  cis'4^\p b^\cresc ais gis |
  fis4^\> dis gis,2^\p | % 264a
  a4.^\pp 8 ais^\<(cis dis\!) e |
  dis4 e b8(bis) cis4 |
  fis,4. 8 gis4 a |
  b4^\dim(cis fis,) b | % 264b
  e2. 4 |
  <<{\voiceTwo cis4(b a) gis8(fis)} \new Voice {\voiceOne e'2. b4}>> |
  <e, b'>1^\fermata\omit\ppp |
  \bar "|."
}

wordsBass = \lyricmode {
  Mu -- sic, when __ soft voi -- ces die.
  Vi -- brates in the mem -- o -- ry. __
  O -- dours, when sweet vio -- lets sick -- en,
  Live __ with -- in the sense they quick -- en.
  Rose leaves, when the rose __ is dead,
  Are heaped, heaped for the be -- lov -- ed's bed;
  And so thy thoughts, when thou art gone,
  Love it -- self __ shall slum -- ber, slum -- ber,
  love it -- self shall slum -- ber on,
  shall slum -- ber __ on.
}

wordsBassMidi = \lyricmode {
  "Mu" "sic, " "when "  "soft " voi "ces " "die. "
  "\nVi" "brates " "in " "the " mem o "ry. " 
  "\nO" "dours, " "when " "sweet " vio "lets " sick "en, "
  "\nLive "  with "in " "the " "sense " "they " quick "en. "
  "\nRose " "leaves, " "when " "the " "rose "  "is " "dead, "
  "\nAre " "heaped, " "heaped " "for " "the " be lov "ed's " "bed; "
  "\nAnd " "so " "thy " "thoughts, " "when " "thou " "art " "gone, "
  "\nLove " it "self "  "shall " slum "ber, " slum "ber, "
  "\nlove " it "self " "shall " slum "ber " "on, "
  "\nshall " slum "ber "  "on. "
}

pianoRHone = \relative {
  \global

  \bar "|."
}

pianoRHtwo = \relative {
  \global

  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

pianoLHone = \relative {
  \global

  \bar "|."
}

pianoLHtwo = \relative {
  \global

  \bar "|."
}

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \consists Ambitus_engraver
          }
          <<
%  \ambitusAfter key-signature
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \consists Ambitus_engraver
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \consists Ambitus_engraver
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
          }
          <<
%            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
          }
          <<
            \clef "bass"
%            \new Voice \partCombine \pianoLHone \pianoLHtwo
            \new Voice \partCombine \tenor \bass
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
  \bookOutputSuffix "single-noacc"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \consists Ambitus_engraver
          }
          <<
%  \ambitusAfter key-signature
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \consists Ambitus_engraver
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \consists Ambitus_engraver
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "bass"
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "singlepage-noacc"
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
            \consists Ambitus_engraver
          }
          <<
%  \ambitusAfter key-signature
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \consists Ambitus_engraver
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \consists Ambitus_engraver
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
            \consists Ambitus_engraver
          }
          <<
            \clef "bass"
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
          }
          <<
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
          }
          <<
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
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
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
          }
          <<
            \new Voice \TempoTrack
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
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
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
          }
          <<
            \new Voice \TempoTrack
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
            \new Voice \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
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
          }
          <<
            \new Voice \TempoTrack
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
            \new Voice \tenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \tenor \bass
          >>
        >>
      >>
    >>
    \midi {}
  }
}
