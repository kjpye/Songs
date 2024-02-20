\version "2.25.13"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He that shall endure."
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

global = {
  \key f \major
  \time 4/4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Andante Sostenuto" 4=100
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "151a" } s1*6
  \textMark \markup { \box "151b" } s1*7
  \textMark \markup { \box "151c" } s1*6
  \textMark \markup { \box "152a" } s1*5
  \textMark \markup { \box "152b" } s1*6
  \textMark \markup { \box "152c" } s1*7
}

dynamicsSop = {
  s2\p s\< | s\> s\! | s1\pp | s | s4 s2.\cresc | s2 s\f |
  s1 | s\p | s | s4 s2.\cresc | s1\f | s4 s2.\dim | s1\p |
  s2 s\cresc | s1 | s | s\f | s2 s\dim | s s\p |
  s4 s2.\cresc | s2. s4\cresc | s2 s\f | s s\dim | s1\f | % 152a
  s1 | s | s\sf | s\f | s | s2 s\dim |
  s1 | s | s\p | s | s\pp | s | s |
}

soprano = \relative {
  \global
  c''4 c c a | d c8 bes a2 | f4(g a) c | bes2 a | 4 c c f | f e8 e f2 |
  R1 | f,4(g a) c | bes2 a | d4 e f2(~ | 4 e d2 | c4 d) g,2  a4(b c) e |
  d2 fis,4 g~ | g(a bes) d | c2 bes | a4(b cis) e | d2 c | r d4 4 |
  d4 b e d8 c | b2 a4(b | c) e d2( | c b) | a1 | % 152a
  R1 | c4 4 4 a | d c8 bes a2 | bes4(c d) f | ees2 d | c4(d e g |
  g2) e | d c | f,4(g a) c | bes2 a | d,4(e f) a | g1 | f\fermata |
  \bar "|."
}

wordsSop = \lyricmode {
  He that shall en -- dure to the end,
  shall __ be sav -- ed;
  He that shall en -- dure to the end,
  shall __ be sav -- ed, shall be sav -- ed,
  shall __ be sav -- ed,
  shall __ be sav -- ed,
  shall __ be sav -- ed;
  He that shall en -- dure to the end,
  shall __ be sav -- ed;
  He that shall en -- dure to the end,
  shall __ be sav -- ed, shall be sav -- ed,
  shall __ be sav -- ed,
  shall __ be sav -- ed.
}

wordsSopMidi = \lyricmode {
  "He " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed; "
  "\nHe " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed, " "shall " "be " sav "ed, "
  "\nshall "  "be " sav "ed, "
  "\nshall "  "be " sav "ed, "
  "\nshall "  "be " sav "ed; "
  "\nHe " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed; "
  "\nHe " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed, " "shall " "be " sav "ed, "
  "\nshall "  "be " sav "ed, "
  "\nshall "  "be " sav "ed. "
}

dynamicsAlto = {
  s2\p s\< | s\> s\! | s1\pp | s | s4 s2.\cresc | s2 s\f |
  s2 s\p | s1 | s | s | s1\f | s4 s2.\dim | s1\p |
  s1 | s1 | s | s | s | s1\p |
  s2 s\cresc | s2 s\< | s2\! s\f | s1 | s\p | % 152a
  s2 s\cresc | s1 | s2. s4\f | s1 | s | s2 s\dim |
  s1 | s | s\p | s | s\pp | s | s |
}

alto = \relative {
  \global
  f'4 e f f | f e8 e f2 | c4 e f2~ | 4(c) 2 | f4 e f f | g4 8 8 f2 |
  r2 f4(e | d) bes c2 | d r | R1 | g4 4 4 e | a g8 f e2 | f e |
  fis4(g d2 | g4 8 ees) d2 | e4(f) g(bes) | r2 a4 a | a f bes a8 g | fis4(c' bes a |
  gis2) a4 e  e e a g8 f | e2 f4 b8(a) | gis4(a2 g4~ | g f e) a~ | % 152a
  a2 g4 g | g f8(e) f2~ | 4 8 e f4 f~ | 4 2 4 | g(a bes) d | g,2 c4(g) |
  a4(g2 c4~ | c bes2) a4 | d,4(e f) a | g2 f | d2. f4 | 2(e) | c1\fermata |
  \bar "|."
}

wordsAlto = \lyricmode {
  He that shall en -- dure to the end,
  shall __ be sav -- ed;
  He that shall en -- dure to the end,
  shall __ be sav -- ed;
  He that shall en -- dure to the end,
  shall __ be sav -- ed, sav -- ed;
  He that shall en -- dure to the end, __
  He that shall en -- dure to the end,
  shall __ be sav -- ed;
  He that shall en -- dure to the end,
  he __ shall __ be sav -- edm shall be __ sav -- ed,
  shall __ be sav -- ed, shall be sav -- ed.
}

wordsAltoMidi = \lyricmode {
  "He " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed; "
  "\nHe " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed; "
  "\nHe " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed, " sav "ed; "
  "\nHe " "that " "shall " en "dure " "to " "the " "end, " 
  "\nHe " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed; "
  "\nHe " "that " "shall " en "dure " "to " "the " "end, "
  "\nhe "  "shall "  "be " sav "edm " "shall " "be "  sav "ed, "
  "\nshall "  "be " sav "ed, " "shall " "be " sav "ed. "
}

dynamicsTenor = {
  s2\p s\< | s\> s\! | s1\pp | s | s4 s2.\cresc | s2 s\f |
  s1\p | s | s2. s4\cresc | s1 | s\f | s4 s2.\dim | s1\p |
  s2 s\cresc | s1 | s | s\f | s2 s\dim | s1\p |
  s2 s\cresc | s2 s\< | s2\! s\f | s2 s\dim | s1\p | % 152a
  s1 | s | s2. s4\f | s1 | s | s2 s\dim |
  s1 | s | s\p | s | s\pp | s | s |
}

tenor = \relative {
  \global
  a4 bes c c | bes g8 g f2 | a4(c2) 4 | d(e) f2 | c4 4 4 a | d c8 bes a2
  f4(g a) c | b2 a | r f'4(e | d2) c | b4(c2) b4 | a(b c) e | d2 a4 c~ |
  c4(bes a) bes | bes(f2) bes4 | c2 e4(d) | cis4(d e) g | f2 e | fis4 4 g f |
  e4 d8 e c4(a | gis2) r | r a4(b | c) e d2( | cis4 d2) cis4 | % 152a
  d4 d d bes | e c8 bes c4 c | c8(bes) a(g f4 d' | d a) bes2 | R1 | e4(f g e |
  c4 d2 c4 | d e2) f4 | d2 c | r d~ | 2. 4 | 2(c4 bes) | a1\fermata |
  \bar "|."
}

wordsTenor = \lyricmode {
  He that shall en -- dure to the end,
  shall __ be sav -- ed;
  He that shall en -- dure to the end,
  shall __ be sav -- ed, shall be sav -- ed,
  shall __ be, shall __ be sav -- ed,
  shall __ be sav -- ed;
  He that shall en -- dure to the end,
  shall __ be sav -- ed;
  He that shall en -- dure to the end,
  shall __ be sav -- ed, shall __ be sav -- ed,
  shall __ be sav -- ed,
  shall __ be sav -- ed.
}

wordsTenorMidi = \lyricmode {
  "He " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed; "
  "\nHe " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed, " "shall " "be " sav "ed, "
  "\nshall "  "be, " "shall "  "be " sav "ed, "
  "\nshall "  "be " sav "ed; "
  "\nHe " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed; "
  "\nHe " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed, " "shall "  "be " sav "ed, "
  "\nshall "  "be " sav "ed, "
  "\nshall "  "be " sav "ed. "
}

dynamicsBass = {
  s2\p s\< | s\> s\! | s2 s\pp | s1 | s4 s2.\cresc | s2 s\f |
  s1 | s2 s\p | s1 | s\cresc | s | s | s |
  s1 | s | s | s\f | s2. s4\dim | s1\p |
  s2 s\cresc | s1 | s2 s\f | s1 | s4\p s2.\cresc | % 152a
  s1 | s | s | s\f | s | s |
  s2 s\dim | s1 | s\p | s | s\pp | s | s |
}

bass = \relative {
  \global
  f4 g a f | bes, c8 c f2 | r2 f4 a | g2 f | 4 c a a | bes c8 c d2 |
  R1 | r2 f~ | 4(g a) c | bes2(a) | g1 | R | R |
  d4-> d d bes | ees d8 c bes2~ | 4(a g) g'~ | g(f e) cis | d(f g a) | d,2 r |
  e2 e | 4 c f e8 d | c2 d4 d | e2 e | a,4 a a f | % 152a
  bes4 8 8 bes'2~ | 4(a8 g) a4 f | bes,(c) d2 | 4(f a) d | c2 bes~ | 2 r |
  a,4(bes c) e | f(g a c | bes2) a | R1 | d,2. c4 | bes2(c) | f,1\fermata |
  \bar "|."
}

wordsBass = \lyricmode {
  He that shall en -- dure to the end,
  shall __ be sav -- ed;
  He that shall en -- dure to the end,
  shall __ be sav -- ed;
  He that shall en -- dure to the end, __
  shall __ be sav -- ed;
  He that shall en -- dure to the end,
  shall __ be sav -- ed;
  He that shall en -- dure to the end, __
  shall __ be sav -- ed, shall be sav -- ed, __
  shall __ be sav -- ed,
  shall be sav -- ed.
}

wordsBassMidi = \lyricmode {
  "He " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed; "
  "\nHe " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed; "
  "\nHe " "that " "shall " en "dure " "to " "the " "end, " 
  "\nshall "  "be " sav "ed; "
  "\nHe " "that " "shall " en "dure " "to " "the " "end, "
  "\nshall "  "be " sav "ed; "
  "\nHe " "that " "shall " en "dure " "to " "the " "end, " 
  "\nshall "  "be " sav "ed, " "shall " "be " sav "ed, " 
  "\nshall "  "be " sav "ed, "
  "\nshall " "be " sav "ed. "
}

pianoRHone = \relative {
  \global
  c''4 c c a | d c8 bes a2 | f4(g a c | bes2 a) | 4 c c f | f e f2 |
  R1 | f,4(g a c) | bes2 a | d4 e f2 | 4 e d2 | c4 d  g,2  a4(b c e) |
  d2 <fis, a>4 g | g a bes d | c2 bes | a4 b cis e | d2 <e, c'>~ | c'4 c d4 4 |
  d4 <gis, b> e' d8 c | b2 a4 b | c e d2 | c b | a2. 4~ | % 152a
  a4 a g <f g> | c'4 4 4 a | d(c8 bes) a2 | bes4 c d <bes f'> | ees2 d | c4(d <c e> g') |
  g2(e) | d(c) | <d, f>4(<e g> <f a> <a c>) | d(e f a)~ | a4 r r2 | r2 <g, c e> | <a c f>1\fermata |
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  f'4 e f f | f <e c'>8 e f2 | c4(e f2~ | 4 e <c f>2) | <c f>4 <c e g> <c f> f | <d g>4 g f2 |
  r2 f4 e | d( bes c2) | d f4 e | <d f> g c f, | g4 4 4 e | a g8 f e2 | f <e c'> |
  <fis c'>4 <g bes> d2 | bes4 f'8 ees d2 | e4 f <e g> <d bes'> | <cis e> d e4 <g a> | <f a> f bes a8 g | fis4 4 <g bes> <f a> |
  <e gis>4 d8 e a4 e | e e a g8 f | e2 f4 b8 a | gis4 a2 g4 | <cis, g'> <d f>~ <d e> cis | % 152a
  d4 d d bes( | <e g>) f8 e f4 4 | 4 8 e f4 <d f> | 4 f2 4 | <g bes> <f a> <f bes> d' | <<{\voiceThree g,2 \voiceFour <g c>} \new Voice {\voiceTwo e4 f s2}>> |
  \voiceTwo <a c>4 <g d'>2 c4 | <d, c'> <e bes'>2 <f a>4 | d2 c | bes'4 c d f~ | f4 r r2 | r2 s | s1 |
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2\p s\< | s\> s\! | s1\pp  s | s1\cresc | s |
  s1\p | s | s2 s\cresc | s1 | s\f | s\dim | s |
  s1\cresc | s | s | s\f | s | s |
  s2\p s\cresc | s1 | s2. s4\f | s1\dim | s4\p s2.\cresc | % 152a
  s1 | s\sf | s | s\f | s | s4\p s2.\dim |
  s1 | s | s\p | s4 s2.\dim | s1 | s2 s\pp | s1 |
}

pianoLHone = \relative {
  \global
  a4 bes c c | bes g8 c f,,2 | a'4 c~c c | d c s2 | s2. a4 | s c8 bes a2 |
  f4(g a c) | bes2 <a c> | f4(g a c) | bes2 a | b4 c2 b4 | a(b c) e | d2 a |
  d,4 d d bes | ees4(d8 c) bes2~ | bes4 a g g' | g4 f e cis | d f g a | d,2 r |
  e2 c'4 a | \partCombineApart gis2 r | \partCombineAutomatic r a4 b | c e d2 | a,4 a a f | % 152a
  bes4 8 8 bes'4 s | bes c8 bes c4 c~ | c8(bes a g) f4 s | s4 a s2 | R1 | bes2 bes, |
  a4(bes c e) | f(g a c) | bes2 a | R1 | R | r2 <c,,c'> | <f, f'>1\fermata |
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  f4 g a f | bes, c s2 | \partCombineApart r2 f4 a | g2 f | 4 c a a | \partCombineChords bes c8 s d2 |
  \partCombineApart R1 | \partCombineAutomatic s2 f | f,4(g a c) | bes2 a | g'1 | \partCombineApart R | R |
  \partCombineAutomatic d,4 d d bes | ees(d8 c) bes2 | s1 | g'4 f e cis | d s2. | s1 |
  e2 e' | 4 c f e8 d | c2 d4 d | e2 e | a,,4 a a f | % 152a
  bes4 s bes'2~ | 4 a'8 g a4 f | bes, c d2 | 4 f bes d | c2 bes | bes,2 bes, |
  a4(bes c e) | f(g a c) | bes2 a | R1 | R | s1 | s |
  \bar "|."
}

#(set-global-staff-size 16)

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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
%            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
%            \new Voice \partCombine \soprano \alto
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
%            \new Voice \partCombine \tenor \bass
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics \wordsTenor
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = bass} {\teeny \dynamicsBass}
            \clef "bass"
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = tenor} {\teeny \dynamicsTenor}
            \clef "treble_8"
            \new Voice \tenor
            \addlyrics {\tiny \wordsTenor}
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics {\teeny \dynamicsPiano}
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
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
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsTenor
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
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \clef "bass"
            \new Voice \bass
            \addlyrics \wordsBassMidi
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
            \new Dynamics \dynamicsPiano
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
