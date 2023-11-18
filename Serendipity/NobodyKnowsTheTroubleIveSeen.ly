\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Nobody Knows the Trouble I've Seen"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Negro Spiritual"
  arranger    = "Arr. Arthur S. Loam"
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
  \key aes \major
  \time 4/4
}

TempoTrack = {
  \tempo "Slow, with much expression" 4=54
  \repeat volta 2 {
    s1*16
  }
  \set Score.tempoHideNote = ##t
  s1*4 | s8 \tempo "more slowly" 4=52 s2.. |
  s1 | s2. \tempo rall 4=50 s4 | s1 |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \repeat volta 2 {
    \textMark \markup { \box "1a" } s1*3
    \textMark \markup { \box "1b" } s1*3
    \textMark \markup { \box "2a" } s1*3
    \textMark \markup { \box "2b" } s1*3
    \textMark \markup { \box "3a" } s1*3
    \textMark \markup { \box "3b" } s1
  }
  s1*2
  \textMark \markup { \box "4a" } s1*3
  \textMark \markup { \box "4b" } s1*3
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\p | s | s | s | s | s\< |
    s2\mf s\> | s4 s2\! s4\mf | s2. s4\mp | s1 | s2\< s\! | s2.\> s4\mf |
    s1 | s | s2 s\> | s2 s\! |
  }
  s1\p\< | s4\! s2.\> |
  s1\pp | s | s\pp |
  s4 s2.\< | s4.\p s8\> s2 | s2\! s\pp |
}

soprano = \relative {
  \global
  \repeat volta 2 {
    c''8 ees,4 f8 aes4. bes8 | c c c4 2 | ees,8 4 f8 aes4 4 |
    f4 ees2. | c'8 ees,4 f8 aes4. bes8 | c8 8 4 4.(des8) |
    ees4. c8 bes4 c | aes4 2\fermata c4 | ees4 4 c c, | % 2a
    ees4 4 c2 | r4 ees'4 c2 | bes2. c4 |
    ees4 4 c c | ees4 4 c2 | c bes | % 3a
    aes2. r4 |
  }
  c8 ees,4 f8 aes4. bes8 | c8 8 4 2 |
  ees,8 4 f8 aes4 4 | f ees2. | c'8 ees,4 f8 aes4. bes8 | % 4a
  c8 8 4 4.(des8) | ees4. c8 bes4 c | aes2 2\fermata |
  \bar "|."
}

wordsSopOne = \lyricmode {
  No -- bo -- dy knows the troub -- le I've seen,
  No -- bod -- y knows but Je -- sus,
  No -- bo -- dy knows the troub -- le I've seen, __
  Glo -- ry Hal -- le -- lu -- jah!
  Some -- times I'm up, some -- times I'm down,
  O, yes. Lord.
  Some -- times I'm al -- most to the ground,
  Oh, yes, Lord.
}

wordsSopTwo = \lyricmode {
  No -- bo -- dy knows the troub -- le I've seen,
  No -- bod -- y knows but Je -- sus,
  No -- bo -- dy knows the troub -- le I've seen, __
  Glo -- ry Hal -- le -- lu -- jah!
  I nev -- er shall  for -- get that day,
  Oh, yes, Lord.
  When Je -- sus washed my sins a -- way,
  Oh, yes, Lord.

  No -- bo -- dy knows the troub -- le I've seen,
  No -- bod -- y knows but Je -- sus,
  No -- bo -- dy knows the troub -- le I've seen, __
  Glo -- ry, Hal -- le -- lu -- jah!
}

wordsMidiWomen = \lyricmode {
  "No" bo "dy " "knows " "the " troub "le " "I've " "seen, "
  "\nNo" bod "y " "knows " "but " Je "sus, "
  "\nNo" bo "dy " "knows " "the " troub "le " "I've " "seen, " 
  "\nGlo" "ry " Hal le lu "jah! "
  "\nSome" "times " "I'm " "up, " some "times " "I'm " "down, "
  "\nO, " "yes. " "Lord. "
  "\nSome" "times " "I'm " al "most " "to " "the " "ground, "
  "\nOh, " "yes, " "Lord. "

  "\nNo" bo "dy " "knows " "the " troub "le " "I've " "seen, "
  "\nNo" bod "y " "knows " "but " Je "sus, "
  "\nNo" bo "dy " "knows " "the " troub "le " "I've " "seen, " 
  "\nGlo" "ry " Hal le lu "jah! "
  "\nI " nev "er " "shall "  for "get " "that " "day, "
  "\nOh, " "yes, " "Lord. "
  "\nWhen " Je "sus " "washed " "my " "sins " a "way, "
  "\nOh, " "yes, " "Lord. "

  "\nNo" bo "dy " "knows " "the " troub "le " "I've " "seen, "
  "\nNo" bod "y " "knows " "but " Je "sus, "
  "\nNo" bo "dy " "knows " "the " troub "le " "I've " "seen, " 
  "\nGlo" "ry, " Hal le lu "jah! "
}

alto = \relative {
  \global
  \repeat volta 2 {
    c'4 8 8 des(f) 4 | ees8 8 4 c4(des) | c4 8 8 ees4. 8 |
    bes4 2. | ees4 c8 8 des(f) 4 | ees8 f aes(g) f4(fes) |
    ees4 aes4 8(f) g(f) | 4 ees2\fermata 4 | 4 g aes c, | % 2a
    bes8(aes) g4 aes2 | ees'4.(g8) f(aes g f) | 4(des ees) 4 |
    ees4 g aes8(g) f4 | ees4 4 f(ees) | d2 des | % 3a
    des2(c4) r |
  }
  c4 8 8 des(f) 4 | ees8 8 4 c(des) |
  c4 8 8 ees4. 8 | des4 2. | ees4 c8 8 des(f) 4 | % 4a
  ees8 f aes(g) f4(fes) | ees aes4 8(f) g(f) | f2 ees\fermata |
  \bar "|."
}

wordsAltoOne = \lyricmode {
  No -- bo -- dy knows the troub -- le I've seen, __
  No -- bod -- y knows but Je -- sus,
  No -- bo -- dy knows the troub -- le I've __ seen, __
  Glo -- ry Hal -- le -- lu -- jah!
  Some -- times I'm up, some -- times __ I'm down,
  O, __ yes. __ Lord. __
  Some -- times I'm al -- most to the ground, __
  Oh, yes, Lord. __
}

wordsAltoTwo = \lyricmode {
  No -- bo -- dy knows the troub -- le I've seen, __
  No -- bod -- y knows but Je -- sus,
  No -- bo -- dy knows the troub -- le I've __ seen, __
  Glo -- ry Hal -- le -- lu -- jah!
  I nev -- er shall  for -- get __ that day,
  Oh, __ yes, __ Lord. __
  When Je -- sus washed my sins a -- way, __
  Oh, yes, Lord. __

  No -- bo -- dy knows the troub -- le I've seen, __
  No -- bod -- y knows but Je -- sus,
  No -- bo -- dy knows the troub -- le I've __ seen, __
  Glo -- ry, Hal -- le -- lu -- jah!
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
  \repeat volta 2 {
    s1\p | s | s | s2\< s\> | s1\! | s\< |
    s2\mf s\> | s8 s\! s2 s4\mf | s2. s4\p | s1 | s2\< s\! | s2.\> s4\mf |
    s1 | s | s2 s\> | s2 s2\! |
  }
  s1\p\< | s4\! s2.\> |
  s1\pp | s2\< s\> | s1\pp |
  s4 s2.\< | s4.\p s8\> s2 | s\! s\pp |
}

tenor = \relative {
  \global
  \repeat volta 2 {
    ees4 8 aes f(aes) des4 | c8 8 aes4 2 | 4 8 8 4. 8 |
    aes4 g8 g aes4 bes | c aes8 8 f(aes) des4 | c8 8 4 8(aes bes4) |
    aes8(bes) c(d) des4 ees8(des) | 4 c2\fermata aes4 | g c c aes | % 2a
    g8(f) ees4 2 | g4.(bes8) aes(c bes aes) | 4(f g) aes |
    g4 c c c | 4 8(bes) a2 | aes2 4(g) | % 3a
    f2(ees4) r |
  }
  ees4 8 aes f(aes) des4 | c8 8 aes4 2 |
  aes4 8 8 4. 8 | 4 g8 g aes4 bes | c aes8 8 f(aes) des4 | % 4a
  c8 8 4 8(aes bes4) | aes8(bes) c(d) des4 ees8(des) | des2 c\fermata |
  \bar "|."
}

wordsTenorOne = \lyricmode {
  No -- bo -- dy knows the troub -- le I've seen,
  No -- bod -- y knows but Je -- sus, but Je -- sus,
  No -- bo -- dy knows the troub -- le I've __ seen, __
  Glo -- ry Hal -- le -- lu -- jah!
  Some -- times I'm up, some -- times __ I'm down,
  O, __ yes. __ Lord. __
  Some -- times I'm al -- most to the __ ground,
  Oh, yes,  __ Lord. __
}

wordsTenorTwo = \lyricmode {
  No -- bo -- dy knows the troub -- le I've seen,
  No -- bod -- y knows but Je -- sus, but Je -- sus,
  No -- bo -- dy knows __ the troub -- le I've __ seen, __
  Glo -- ry Hal -- le -- lu -- jah!
  I nev -- er shall  for -- get __ that day,
  Oh, __ yes, __ Lord. __
  When Je -- sus washed my sins a -- way,
  Oh, yes, Lord. __

  No -- bo -- dy knows __ the troub -- le I've seen, __
  No -- bod -- y knows __ but Je -- sus, but Je -- sus,
  No -- bo -- dy knows the troub -- le I've seen, __
  Glo -- ry, __ Hal -- le -- lu -- jah!
}

wordsMidiMen = \lyricmode {
  "No" bo "dy " "knows " "the " troub "le " "I've " "seen, "
  "\nNo" bod "y " "knows " "but " Je "sus, " "but " Je "sus, "
  "\nNo" bo "dy " "knows " "the " troub "le " "I've "  "seen, " 
  "\nGlo" "ry " Hal le lu "jah! "
  "\nSome" "times " "I'm " "up, " some "times "  "I'm " "down, "
  "\nO, "  "yes. "  "Lord. " 
  "\nSome" "times " "I'm " al "most " "to " "the "  "ground, "
  "\nOh, " "yes, "   "Lord. " 

  "\nNo" bo "dy " "knows " "the " troub "le " "I've " "seen, "
  "\nNo" bod "y " "knows " "but " Je "sus, " "but " Je "sus, "
  "\nNo" bo "dy " "knows "  "the " troub "le " "I've "  "seen, " 
  "\nGlo" "ry " Hal le lu "jah! "
  "\nI " nev "er " "shall "  for "get "  "that " "day, "
  "\nOh, "  "yes, "  "Lord. " 
  "\nWhen " Je "sus " "washed " "my " "sins " a "way, "
  "\nOh, " "yes, " "Lord. " 

  "\nNo" bo "dy " "knows "  "the " troub "le " "I've " "seen, " 
  "\nNo" bod "y " "knows "  "but " Je "sus, " "but " Je "sus, "
  "\nNo" bo "dy " "knows " "the " troub "le " "I've " "seen, " 
  "\nGlo" "ry, "  Hal le lu "jah! "
}

bass = \relative {
  \global
  \repeat volta 2 {
    aes,4 8 8 4 aes' | 8 8 8(g) f4(fes) | ees4 8 8 c4. 8 |
    bes4 ees8 8 f4 g | aes aes,8 8 4 aes' | 8 g f(ees) des2 |
    c4 f ees4 4 | aes2 aes,4\fermata aes' | c, c f f | % 2a
    ees4 4 aes,2 | c c | ees2. aes,4 |
    c4 c f8(g) aes4 | ges4 4 f2 | 4(bes,) ees2 | % 3a
    aes2. r4 |
  }
  aes,4 8 8 4 aes' | 8 8 8(g) f4(fes) |
  ees4 aes,8 8 c4. 8 | bes4 ees8 8 f4 g | aes aes,8 8 4 aes' | % 4a
  aes8 g f(ees) des2 | c4 f ees ees | aes2 aes,\fermata |
  \bar "|."
}

wordsBassOne = \lyricmode {
  No -- bo -- dy knows the troub -- le I've __ seen, __
  No -- bod -- y knows but Je -- sus, but Je -- sus,
  No -- bo -- dy knows the troub -- le I've __ seen,
  Glo -- ry Hal -- le -- lu -- jah!
  Some -- times I'm up, some -- times I'm down,
  O, yes. Lord.
  Some -- times I'm al -- most to the ground, __
  Oh, __ yes, Lord. __
}

wordsBassTwo = \lyricmode {
  No -- bo -- dy knows the troub -- le I've __ seen, __
  No -- bod -- y knows but Je -- sus, but Je -- sus,
  No -- bo -- dy knows the troub -- le I've __ seen,
  Glo -- ry Hal -- le -- lu -- jah!
  I nev -- er shall  for -- get __ that day,
  Oh, yes, Lord.
  When Je -- sus washed __ my sins a -- way,
  Oh, __ yes, Lord.

  No -- bo -- dy knows the troub -- le I've __ seen, __
  No -- bod -- y knows but Je -- sus, but Je -- sus,
  No -- bo -- dy knows the troub -- le I've __ seen,
  Glo -- ry Hal -- le -- lu -- jah!
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

#(set-global-staff-size 20)

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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsSopOne
            \addlyrics \wordsSopTwo
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics \wordsAltoOne
            \addlyrics \wordsAltoTwo
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsTenorOne
            \addlyrics \wordsTenorTwo
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
            \addlyrics \wordsBassOne
            \addlyrics \wordsBassTwo
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \new Voice \TempoTrack
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
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

#(set-global-staff-size 17)

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
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics { \wordsSopOne \wordsSopTwo}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics { \wordsAltoOne \wordsAltoTwo }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
            \addlyrics { \wordsTenorOne \wordsTenorTwo }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
            \addlyrics { \wordsBassOne \wordsBassTwo }
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \new Voice \TempoTrack
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
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
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics { \wordsSopOne \wordsSopTwo}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics { \wordsAltoOne \wordsAltoTwo }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
            \addlyrics { \wordsTenorOne \wordsTenorTwo }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
            \addlyrics { \wordsBassOne \wordsBassTwo }
          >>
        >>
%        \new PianoStaff = piano <<
%          \new Staff = pianorh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \new Voice \TempoTrack
%            \new Voice \partCombine \soprano \alto
%          >>
%          \new Dynamics \dynamicsPiano
%          \new Staff = pianolh \with {
%            printPartCombineTexts = ##f
%            \accidentalStyle Score.modern
%          }
%          <<
%            \clef "bass"
%            \new Voice \partCombine \tenor \bass
%          >>
%        >>
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
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics { \wordsSopOne \wordsSopTwo }
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics { \tiny \wordsAltoOne \wordsAltoTwo }
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics { \tiny \wordsTenorOne \wordsTenorTwo }
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics { \tiny \wordsBassOne \wordsBassTwo }
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
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics { \tiny \wordsSopOne \wordsSopTwo}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice \alto
            \addlyrics { \wordsAltoOne \wordsAltoTwo }
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics { \tiny \wordsTenorOne \wordsTenorTwo }
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics { \tiny \wordsBassOne \wordsBassTwo }
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
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics { \tiny \wordsSopOne \wordsSopTwo}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics { \tiny \wordsAltoOne \wordsAltoTwo }
          >>
                                % Single tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
            \addlyrics { \wordsTenorOne \wordsTenorTwo }
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
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsMen}
            \new Voice \bass
            \addlyrics { \tiny \wordsBassOne \wordsBassTwo }
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
%   \articulate
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
            \new Dynamics \with {alignAboveContext = soprano} {\teeny \dynamicsWomen}
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics { \tiny \wordsSopOne \wordsSopTwo}
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = alto} {\teeny \dynamicsWomen}
            \new Voice \alto
            \addlyrics { \tiny \wordsAltoOne \wordsAltoTwo }
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
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsMen}
            \new Voice \tenor
            \addlyrics { \tiny \wordsTenorOne \wordsTenorTwo }
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice \bass
            \addlyrics { \wordsBassOne \wordsBassTwo }
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
  \bookOutputSuffix "midi-women"
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \soprano
            \addlyrics \wordsMidiWomen
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
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
  \bookOutputSuffix "midi-men"
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
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
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
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice \tenor
            \addlyrics \wordsMidiMen
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
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
