\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
%  title = \markup{{\fontsize #5 ℜ}{"ubber Duckie"}}
  title = \markup{
%    \general-align #Y #DOWN
    {\epsfile #Y #10 #"letterR.ps"}
    {"UBBER DUCKIE"}
  }
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = "composer"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \time 4/4
  \tempo 4=120
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s2.*4
}

soprano = \relative {
  \global
  r4 d'8. cis16 d8. f16~f4
  ees4bes'8. a16~a2
  r4 f8. e16 f8. fis16~fis4
  g4 d'8. c16~c2
  r4 bes8. a16 bes8. f16 d4
  \tuplet 3/2 {ees4 f ees} d4 c
  f1
  ees8. f16~f8. g16 f2
  r4 d8. c16 d8. f16~f4
  ees4 bes'8. a16~a2
  r4 f8. e16 f8. fis16~fis4
  g4 d'8.c16~c2
  r4 bes8. a16 bes8. f16 d8 d
  \tuplet 3/2 {ees4 f ees} ees c
  f1
  g1
  r4 a8. a16 \tuplet 3/2 {a4 g f}
  r4 g8. g16 \tuplet 3/2 {g4 f ees}
  a4. a8~a2
  r4 a4 bes b
  r4 c8. bes16 c8. bes16 a4
  r4 bes8. a16 bes8. a16 g4
  c4(b8.) c16~c2
  f,8. g16 a4 g8. f16~f4
  r4 d8. cis16 d8. f16~f4
  ees4 bes'8. a16~a2
  r4 f8. e16 f8. fis16~fis4
  g4 d'8. c16~c2
  \repeat volta 2 {
    r4 bes8. a16 bes8. f16 d4
    \tuplet 3/2 {ees4 f ees} d c
  }
  r4 bes'8. a16 bes8. f16 d4
  ees8. g16 bes4 d8.(bes16) c4
  bes1
  \bar "|."
}

wordsSop = \lyricmode {
  Rub- ber Duc- kie you're the one
  You make bath- time lots of fun.
  Rub- ber Duc- kie, I'm aw- full- y fond of you.
  Vo- do- dee- o.
  Rub- ber duc- kie joy of joys
  when I squeeze you you make noise
  Rub- ber duc- kie you're my ver- y best friend, it's true
  Ah Ever- y day when I make my way to the tub- by
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- duba duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of you
}

wordsSopSingle = \lyricmode {
  Rub- ber Duc- kie you're the one
  You make bath- time lots of fun.
  Rub- ber Duc- kie, I'm aw- full- y fond of you.
  Vo- do- dee- o.
  Rub- ber duc- kie joy of joys
  when I squeeze you you make noise
  Rub- ber duc- kie you're my ver- y best friend, it's true
  Ah Ever- y day when I make my way to the tub- by
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- duba duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of you
}

wordsSopMidi = \lyricmode {
  "Rub" "ber " Duc "kie " "you're " "the " "one "
  "\nYou " "make " bath "time " "lots " "of " "fun. "
  "\nRub" "ber " Duc "kie, " "I'm " aw full "y " "fond " "of " "you. "
  "\nVo" do dee "o. "
  "\nRub" "ber " duc "kie " "joy " "of " "joys "
  "\nwhen " "I " "squeeze " "you " "you " "make " "noise "
  "\nRub" "ber " duc "kie " "you're " "my " ver "y " "best " "friend, " "it's " "true "
  "\nAh " Ever "y " "day " "when " "I " "make " "my " "way " "to " "the " tub "by "
  "\nI " "find " "that " lit "tle " fel "low " "who's " "cute " "and " yel "low " "and " chub "by "
  "\nRub" a "duba " duck "y "
  "\nRub" "ber " duc "kie " "you're " "so " "fine "
  "\nand " "I'm " luck "y " "that " "you're " "mine "
  "\nRub" "ber " duc "kie " "I'm " aw ful "ly " "fond " "of "
  "\nRub" "ber " duc "kie " "I'm " aw ful "ly " "fond " "of "
  "\nRub" "ber " duc "kie " "I'm " aw ful "ly " "fond " "of " "you "
}

alto = \relative {
  \global
  r4 d'8. cis16 d8. d16~d4
  cis4 ees8. ees16~ees2
  r4 d8. cis16 d8. d16~d4
  d4 d8. ees16~ees2
  r4 d8. cis16 d8. d16 d4
  \tuplet 3/2 {c4 d c} d c
  d1
  c8. c16~c8. c16 c2
  r4 d8. cis16 d8. d16~d4
  c4 ees8. ees16~ees2
  r4 d8. cis16 d8. d16~d4
  d4 d8. ees16~ees2
  r4 d8. cis16 d8. d16 d8 d
  \tuplet 3/2 {c4 d c} d c
  d1~
  d2 d4(cis)
  <d f>2 <f a>
  <d g>2 <cis g'>
  <d f>2(<e f>)
  r4 f f f
  r4 f8. f16 f8. f16 f4
  r4 f8. f16 e8. e16 e4
  ees4~ees8. ees16~ees2
  c8. c16 c4 c8. c16~c4
  r4 d8. cis16 d8. d16~d4
  c4 ees8. ees16~ees2
  r4 d8. cis16 d8. d16~d4
  d4 d8. ees16~ees2
  \repeat volta 2 {
    r4 d8. cis16 d8. d16 d4
    \tuplet 3/2 {c4 d c} d c
  }
  r4 d8. cis16 d8. d16 d4
  ees8. ees16 ees4 ees ees
  d1
  \bar "|."
}

wordsAlto = \lyricmode {
  Rub- ber Duc- kie you're the one
  You make bath- time lots of fun.
  Rub- ber Duc- kie, I'm aw- full- y fond of you.
  Vo- do- dee- o.
  Rub- ber duc- kie joy of joys
  when I squeeze you you make noise
  Rub- ber duc- kie you're my ver- y best friend, it's true
  Ah Ah Ah Ah Ah Ah
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- duba duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of you
}

wordsAltoSingle = \lyricmode {
  Rub- ber Duc- kie you're the one
  You make bath- time lots of fun.
  Rub- ber Duc- kie, I'm aw- full- y fond of you.
  Vo- do- dee- o.
  Rub- ber duc- kie joy of joys
  when I squeeze you you make noise
  Rub- ber duc- kie you're my ver- y best friend, it's true
  Ah Ah Ah Ah Ah Ah
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- duba duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of you
}

wordsAltoMidi = \lyricmode {
  "Rub" "ber " Duc "kie " "you're " "the " "one "
  "\nYou " "make " bath "time " "lots " "of " "fun. "
  "\nRub" "ber " Duc "kie, " "I'm " aw full "y " "fond " "of " "you. "
  "\nVo" do dee "o. "
  "\nRub" "ber " duc "kie " "joy " "of " "joys "
  "\nwhen " "I " "squeeze " "you " "you " "make " "noise "
  "\nRub" "ber " duc "kie " "you're " "my " ver "y " "best " "friend, " "it's " "true "
  "\nAh " "Ah " "Ah " "Ah " "Ah " "Ah "
  "\nI " "find " "that " lit "tle " fel "low " "who's " "cute " "and " yel "low " "and " chub "by "
  "\nRub" a "duba " duck "y "
  "\nRub" "ber " duc "kie " "you're " "so " "fine "
  "\nand " "I'm " luck "y " "that " "you're " "mine "
  "\nRub" "ber " duc "kie " "I'm " aw ful "ly " "fond " "of "
  "\nRub" "ber " duc "kie " "I'm " aw ful "ly " "fond " "of "
  "\nRub" "ber " duc "kie " "I'm " aw ful "ly " "fond " "of " "you "
}

tenor = \relative {
  \global
  r4 bes8. a16 a8. a16~a4
  bes4 bes8. c16~c2
  r4 bes8. bes16 bes8. bes16~bes4
  bes4 bes8.bes16~bes2
  r4 bes8. bes16 bes8. bes16 g4
  \tuplet 3/2 {bes4 bes bes} a a
  bes2(aes)
  g8. a16~a8. bes16 a2
  r4 bes8. a16 aes8. aes16~aes4
  bes4 bes8. c16~c2
  r4 bes8. bes16 bes8. bes16~bes4
  bes4 bes8. bes16~bes2
  r4 bes8. bes16 bes8. bes16 g8 g
  \tuplet 3/2 {bes4 bes bes} a a
  bes1
  g1
  a4(d)cis(c)
  b2 a
  a2(cis)
  r4 a4 aes aes
  r4 a8. a16 a8. a16 a4
  r4 d8. d16 d8. d16 d4
  c4~c8. bes16(a2)
  a8. bes16 c4 bes8. a16~a4
  r4 bes8. a16 bes8. aes16~aes4
  bes4 bes8. c16~c2
  r4 bes8. bes16 bes8. bes16~bes4
  bes4 bes8. bes16~bes2
  \repeat volta 2 {
    r4 bes8. bes16 bes8. bes16 g4
    \tuplet 3/2 {bes4 bes bes} a a
  }
  r4 bes8. bes16 bes8. bes16 g4
  bes8. bes16 bes4 a a
  bes1
  \bar "|."
}

tenoracc = \relative {
  \global
  s4 bes8. a16 a8. a16~a4
  bes4 bes8. c16~c2
  s4 bes8. bes16 bes8. bes16~bes4
  bes4 bes8.bes16~bes2
  s4 bes8. bes16 bes8. bes16 g4
  \tuplet 3/2 {bes4 bes bes} a a
  bes2(aes)
  g8. a16~a8. bes16 a2
  s4 bes8. a16 aes8. aes16~aes4
  bes4 bes8. c16~c2
  s4 bes8. bes16 bes8. bes16~bes4
  bes4 bes8. bes16~bes2
  s4 bes8. bes16 bes8. bes16 g8 g
  \tuplet 3/2 {bes4 bes bes} a a
  bes1
  g1
  a4(d)cis(c)
  b2 a
  a2(cis)
  s4 a4 aes aes
  s4 a8. a16 a8. a16 a4
  s4 d8. d16 d8. d16 d4
  c4~c8. bes16(a2)
  a8. bes16 c4 bes8. a16~a4
  s4 bes8. a16 bes8. aes16~aes4
  bes4 bes8. c16~c2
  s4 bes8. bes16 bes8. bes16~bes4
  bes4 bes8. bes16~bes2
  \repeat volta 2 {
    s4 bes8. bes16 bes8. bes16 g4
    \tuplet 3/2 {bes4 bes bes} a a
  }
  s4 bes8. bes16 bes8. bes16 g4
  bes8. bes16 bes4 a a
  bes1
  \bar "|."
}

wordsTenor = \lyricmode {
  Rub- ber Duc- kie you're the one
  You make bath- time lots of fun.
  Rub- ber Duc- kie, I'm aw- full- y fond of you.
  Vo- do- dee- o.
  Rub- ber duc- kie joy of joys
  when I squeeze you you make noise
  Rub- ber duc- kie you're my ver- y best friend, it's true
  Ah Ah Ah Ah Ah Ah
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- duba duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of you
}

wordsTenorSingle = \lyricmode {
  Rub- ber Duc- kie you're the one
  You make bath- time lots of fun.
  Rub- ber Duc- kie, I'm aw- full- y fond of you.
  Vo- do- dee- o.
  Rub- ber duc- kie joy of joys
  when I squeeze you you make noise
  Rub- ber duc- kie you're my ver- y best friend, it's true
  Ah Ah Ah Ah Ah Ah
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- duba duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of you
}

wordsTenorMidi = \lyricmode {
  "Rub" "ber " Duc "kie " "you're " "the " "one "
  "\nYou " "make " bath "time " "lots " "of " "fun. "
  "\nRub" "ber " Duc "kie, " "I'm " aw full "y " "fond " "of " "you. "
  "\nVo" do dee "o. "
  "\nRub" "ber " duc "kie " "joy " "of " "joys "
  "\nwhen " "I " "squeeze " "you " "you " "make " "noise "
  "\nRub" "ber " duc "kie " "you're " "my " ver "y " "best " "friend, " "it's " "true "
  "\nAh " "Ah " "Ah " "Ah " "Ah " "Ah "
  "\nI " "find " "that " lit "tle " fel "low " "who's " "cute " "and " yel "low " "and " chub "by "
  "\nRub" a "duba " duck "y "
  "\nRub" "ber " duc "kie " "you're " "so " "fine "
  "\nand " "I'm " luck "y " "that " "you're " "mine "
  "\nRub" "ber " duc "kie " "I'm " aw ful "ly " "fond " "of "
  "\nRub" "ber " duc "kie " "I'm " aw ful "ly " "fond " "of "
  "\nRub" "ber " duc "kie " "I'm " aw ful "ly " "fond " "of " "you "
}

bass = \relative {
  \global
  bes,4~bes8. bes16 b8. b16~b4
  c4 c8. f16~f2
  bes,4 ~ bes8. bes16 d8. d16~d4
  ees4 g8. ges16 ~ ges2
  bes4~bes8 bes g8 g f4
  \tuplet 3/2 {c4 c c} f f
  bes,4.(~ bes8 b4.~b8)
  c8. f16~f8. f16 f4(f,)
  bes4 ~ bes8. bes16 b8. b16~b4
  c4 c8. f16~f2
  bes,4~bes8. bes16 d8. d16~d4
  ees4 g8. ges16~ges2
  bes4~bes8. bes16 g8. g16 f8. f16
  \tuplet 3/2 {c4 c c} f4 f
  bes,1
  bes2 a4(e')
  d2 d
  e2 a
  d,2(e)
  r4 d des des
  r4 f8. f16 d8. d16 d4
  r4 g8. g16 c8. c16 c4
  c4~c8. g16(fis2)
  f8. f16 f4 f8. f16~f4
  bes,4~bes8. bes16 b8. b16~b4
  c4 c8. f16~f2
  bes,4~bes8. bes16 d8. d16~d4
  ees4 g8. ges16~ges2
  \repeat volta 2 {
    r4 bes8. bes16 g8. g16 f4
    \tuplet 3/2 {d4 d d} f4 f
  }

  bes4~bes8. bes16 g8. g16 f4
  c8. c16 c4 f4 f
  bes,1
}

wordsBass = \lyricmode {
  Rub- ber Duc- kie you're the one
  You make bath- time lots of fun.
  Rub- ber Duc- kie, I'm aw- full- y fond of you.
  Vo- do- dee- o.
  Rub- ber duc- kie joy of joys
  when I squeeze you you make noise
  Rub- ber duc- kie you're my ver- y best friend, it's true
  Ah Ah Ah Ah Ah Ah Ah
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- duba duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of you
}

wordsBassSingle = \lyricmode {
  Rub- ber Duc- kie you're the one
  You make bath- time lots of fun.
  Rub- ber Duc- kie, I'm aw- full- y fond of you.
  Vo- do- dee- o.
  Rub- ber duc- kie joy of joys
  when I squeeze you you make noise
  Rub- ber duc- kie you're my ver- y best friend, it's true
  Ah Ah Ah Ah Ah Ah Ah
  I find that lit- tle fel- low who's cute and yel- low and chub- by
  Rub- a- duba duck- y
  Rub- ber duc- kie you're so fine
  and I'm luck- y that you're mine
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of
  Rub- ber duc- kie I'm aw- ful- ly fond of you
}

wordsBassMidi = \lyricmode {
  "Rub" "ber " Duc "kie " "you're " "the " "one "
  "\nYou " "make " bath "time " "lots " "of " "fun. "
  "\nRub" "ber " Duc "kie, " "I'm " aw full "y " "fond " "of " "you. "
  "\nVo" do dee "o. "
  "\nRub" "ber " duc "kie " "joy " "of " "joys "
  "\nwhen " "I " "squeeze " "you " "you " "make " "noise "
  "\nRub" "ber " duc "kie " "you're " "my " ver "y " "best " "friend, " "it's " "true "
  "\nAh " "Ah " "Ah " "Ah " "Ah " "Ah " "Ah "
  "\nI " "find " "that " lit "tle " fel "low " "who's " "cute " "and " yel "low " "and " chub "by "
  "\nRub" a "duba " duck "y "
  "\nRub" "ber " duc "kie " "you're " "so " "fine "
  "\nand " "I'm " luck "y " "that " "you're " "mine "
  "\nRub" "ber " duc "kie " "I'm " aw ful "ly " "fond " "of "
  "\nRub" "ber " duc "kie " "I'm " aw ful "ly " "fond " "of "
  "\nRub" "ber " duc "kie " "I'm " aw ful "ly " "fond " "of " "you "
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
}

\book {
  \bookOutputSuffix "acc"
  \score {
    <<
      \new PianoStaff = piano <<
        \new Staff = pianorh \with {
          printPartCombineTexts = ##f
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \partCombine \soprano \alto
          \new NullVoice \soprano
          \addlyrics \wordsSop
        >>
        \new Dynamics \dynamicsPiano
        \new Staff = pianolh \with {
          printPartCombineTexts = ##f
          midiInstrument = "acoustic grand piano"
        }
        <<
          \clef "bass"
          \new Voice \partCombine {\partCombineChords \tenoracc} \bass
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
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSop
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAlto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
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
            midiInstrument = "choir aahs"
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
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSingle
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
          }
          <<
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassSingle
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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            midiInstrument = "choir aahs"
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

\book {
  \bookOutputSuffix "midi-alto"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            midiInstrument = "choir aahs"
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

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            midiInstrument = "choir aahs"
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

\book {
  \bookOutputSuffix "midi-bass"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \TempoTrack
%            \new Voice \RehearsalTrack
            \new Voice \soprano
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
%            midiInstrument = "choir aahs"
          }
          <<
            \new Voice \alto
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
%            midiInstrument = "choir aahs"
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
          }
          <<
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
      >>
    >>
    \midi {}
  }
}
