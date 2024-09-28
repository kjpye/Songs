\version "2.25.19"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
%  title       = "title"
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
  \key bes \major
  \time 6/8
}

TempoTrack = {
  \tempo 4=120
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup\box      "20a" s2.*6
  \textMark \markup\box      "20b" s2.*6
  \textMark \markup\box      "21a" s2.*6
  \textMark \markup\box      "21b" s2.*2
  \mark     \markup\bold\huge K    s2.*3
}

dynamicsSolo = {
  \override DynamicTextSpanner.style = #'none
  s2.*12 | % 20
  s2.*3 | s2.\sf | s2.*7 |
}

solo = \relative {
  \global
  f''2.\repeatTie ~ | 2.~ | 4.(g4 e8 | f2.~ | 4 bes,8 c4 bes8 | c4 bes8 d4 bes8 | % 20a
  ees4 bes8 c4 d8 | ees4 f8 g4) r8 | f,4. g4(a8) | bes4(c8 d4 ees8 | f4.) f | 2.~ |
  f4. bes,4 r8 | R2. | R | g'4.~4 ees8 | 8(d c) ees4(c8) | c(bes a) bes4(c8) | % 21a
  d8(ees f) <<{\vo g4(a8) | bes4(f8 g4) a8} \new Voice {\vt f4. | f(g4) a8
                                                      }>> \ov bes4. bes,4 r8 | R2.*2 |
}

wordsSolo = \lyricmode {
  …Bahn, __ wie ein __ Held __ zum Sie -- gen,
  freu -- dig, freu -- dig, wie __ ein __ Held,
  ein __ Held __ zum Sie -- gen!
}

dynamicsTenorI = {
  \override DynamicTextSpanner.style = #'none
  s2.*12 | % 20
  s2.*2 | s2.\sf | s\sf | s2.*7 |
}

tenorI = \relative {
  \global
  f'4 r8 f,4 r8 | f'4. d4(c8) | bes4(a8) bes4(c8) | ees4.(d4 c8) | d4. bes4 r8 | d4. bes4 r8 | % 20a
  ees4 r8 ees4(f8) | g4. 4 r8 | f4 r8 f,4 r8 | f'2.~ | 4. c4(d8) | d4(c8) 4 r8 |
  R2.*2 | g'4. 4 r8 | 4. 4 r8 | f4. f, | f'2.~ | % 21a
  f4. f | 2.~ | 4. bes,4 r8 | R2.*2 |
}

wordsTenorI = \lyricmode {
  Lau -- fet, Brü -- der, eu -- re __ Bahn, __
  freu -- dig, wie ein Held zum Sie -- gen,
  wie ein Held __ zum Sie -- gen,
  freu -- dig, freu -- dig,
  wie ein Held __ zum Sie -- gen!
}

dynamicsTenorII = {
  \override DynamicTextSpanner.style = #'none
  s2.*12 | % 20
  s2.*2 | s2.\sf | s\sf | s2.*7 |
}

tenorII = \relative {
  \global
  c'4 r8 f,4 r8 | c'4. bes4(a8) | g4(f8) bes4(c8) | ees4.(d4 c8) | bes4. 4 r8 | 4. 4 r8 | % 20a
  bes4 r8 4. | 4. g4 r8 | d'4 r8 f,4 r8 | f'2.~ | 4. a,4(bes8) | bes4(f8) 4 r8 |
  R2.*2 | ees4. 4 r8 | 4. 4 r8 | f4. f, | f'2.~ | % 21a
  f4. 4. | 2.~ | 4. bes,4 r8 | R2.*2 |
}

wordsTenorII = \lyricmode {
  Lau -- fet, Brü -- der, eu -- re __ Bahn, __
  freu -- dig, wie ein Held zum Sie -- gen,
  wie ein Held __ zum Sie -- gen,
  freu -- dig, freu -- dig,
  wie ein Held __ zum Sie -- gen!
}

wordsMidi = \lyricmode {
  "Lau" "fet, " Brü "der, " eu "re "  "Bahn, " 
  "\nfreu" "dig, " "wie " "ein " "Held " "zum " Sie "gen, "
  "\nwie " "ein " "Held "  "zum " Sie "gen, "
  "\nfreu" "dig, " freu "dig, "
  "\nwie " "ein " "Held "  "zum " Sie "gen! "
}

dynamicsBass = {
  \override DynamicTextSpanner.style = #'none
  s2.*12 | % 20
  s2. | s2.\sf | s | s\sf | s2.*7 |
}

bass = \relative {
  \global
  f4 r8 f4 r8 | 4. 4. | c c | ees(d4 c8) | bes'4. bes,4 r8 | aes'4. aes,4 r8 | % 20a
  g'4 r8 4(f8) | ees4. e4 r8 | f4 r8 4 r8 | 2.~ | 4. f | bes4(f8) 4 r8 |
  R2. | bes4. 4 r8 | R2. | ees4. ees,4 r8 | f4. f | 2.~ | % 21a
  f4. f | 2.~ | 4. bes,4 r8 | R2.*2 |
}

wordsBass = \lyricmode {
  Lau -- fet, Brü -- der, eu -- re __ Bahn, __
  freu -- dig, wie ein Held zum Sie -- gen,
  wie ein Held __ zum Sie -- gen,
  freu -- dig, freu -- dig,
  wie ein Held __ zum Sie -- gen!
}

pianoRHone = \relative {
  \global
  <c'' a' c>8(<d bes' d> <ees c' ees>) <d bes' d>4-. <bes d bes'>8-. | % 20a
  <c a' c>8(<d bes' d> <ees c' ees>) <d bes' d>4 <c a' c>8~ |
  q8(<bes g' bes> <a f' a>) <bes g' bes>4 <c e c'>8 |
  <f, f'>8(<g g'> <a a'> <bes bes'> <c c'> <d d'>) |
  q4 <d bes' d>8 4.~ |
  q4 <ees bes' c ees>8 <f bes d f>4.~ |
  <f bes f'>4 8 \vo <bes ees>4.~ | % 20b
  \ov <g bes ees>4 <d g d'>8 <c g' c>4.~ |
  <c ees c'>4 <bes d bes'>8 4.~ |
  q4 <c a' c>8 <d bes' d>4.~ |
  q4 <c a' c>8 4 <bes d bes'>8 |
  <f' bes d>4 <ees a c>8 \vo f'4.\arpeggio ~ |
  f4 \ov <ees, c' ees>8 <d bes' d>4.~ | % 21a
  q4 <bes d bes'>8 4.~ |
  <bes g' bes>4 <f' aes>8 <ees g>4.~ |
  q4 <g ees'>8 4 <ees c'>8~ |
  q8(<d bes'> <c a'>) <ees c'>4 <c a'>8~ |
  q8(<bes g'> <a f'>) <bes g'>4(<c a'>8) |
  <d bes'>8(<ees c'> <f d'>) ~q(<ees c'> <c a'>) | % 21b
  <bes d bes'>8(<c ees c'> <d f d'>)~q(<c ees c'> <a c a'>) |
  <bes bes'>4 bes,8 4.~^\sf |
  bes4 c8 4.~^\sf |
  c4 d8 g4 f8 |
}

pianoRHtwo = \relative {
  \global \vt
  s2.*6 | % 20a
  s4. ees''4(f8) | s2.*4 | s4. <ees a c>4\arpeggio <d bes'>8 |
  s2.*6 | % 21a
  s2.*5 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\omit\f-\markup{\italic più \dynamic f} | s2.*3 | s2.\omit\f-\markup{\italic più \dynamic f} | s2. | % 20a
  s2.*2 | s4\f s2-\markup{\italic più \dynamic f} | s2.*3 |
  s2.\ff | s2.*5 | % 21a
  s2.*2 | s2.-\markup{\italic sempre \dynamic ff} | s2.*2 |
}

pianoLHone = \relative {
  \global
  <f, f'>4 r8 <bes bes'>4 r8 | % 20a
  <f f'>4 r8 <f' f'>4 r8 |
  <c, c'>4 r8 <c' c'>4 r8 |
  <ees f ees'>4. <d f d'>4 <c f c'>8 |
  <bes, bes'>4 r8 <bes' bes'>4 r8 |
  <aes aes'>4 r8 <aes' aes'>4 r8 |
  <g, g'>4 r8 4(<f f'>8) | % 20b
  <ees ees'>4 r8 <e e'>4 r8 |
  <f f'>4 <ges' ges'>8(<f f'>4) r8 |
  <f, f'>4 <ges' ges'>8(<f f'>4) r8 |
  <f, f'>4 g''8(<f, f'>4) r8 |
  <bes, bes'>4 <f f'>8 4 <bes bes'>8 |
  q4 r8 \clef treble <bes' d f bes>4 r8 \clef bass | % 21a
  <bes,, bes'>4 r8 <bes' d f bes>4 r8 |
  <ees, ees'>4 r8 <ees' g bes ees>4 r8 |
  <ees, ees'>4 r8 <ees' g c ees>4 r8 |
  <f, f'>4 r8 <f' a c f>4 r8 |
  <f, f'>4 r8 <f' a c f>4 r8 |
  <bes, bes'>4 r8 <f a c f>4 r8 | % 21b
  <bes bes'>4 r8 <f f'>4 r8 |
  d'8 8 8 8 ees f |
  f8 g f ees d c |
  bes8 a bes b c d |
}

pianoLHtwo = \relative {
  \global
  s2.*23 |
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
                                % Single soprano staff
        \new Staff = solo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = #"TS"
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics \wordsSolo
        >>
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics \wordsTenorI
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = II
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsTenorII
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
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
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = #"TS"
        }
        <<
          \magnifyStaff #4/7
          \new Dynamics \with {alignAboveContext = solo} \teeny \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
          \addlyrics {\tiny \wordsSolo}
        >>
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \teeny \dynamicsTenorI
            \new Voice \tenorI
            \addlyrics {\tiny \wordsTenorI}
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = II
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsTenorII
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \teeny \dynamicsBass
            \new Voice \bass
            \addlyrics {\tiny \wordsBass}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
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
    <<
      <<
                                % Single solo staff
        \new Staff = solo \with {
          instrumentName = #"Tenor Solo"
          shortInstrumentName = #"TS"
          midiInstrument = "choir aahs"
        }
        <<
          \new Dynamics \with {alignAboveContext = solo} \dynamicsSolo
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \solo
        >>
        \new ChoirStaff <<
                                % Single tenor I staff
          \new Staff = "tenor1" \with {
            instrumentName = #"Tenor I"
            shortInstrumentName = #"I"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = "tenor1"} \dynamicsTenorI
            \new Voice \tenorI
          >>
                                % Single tenor II staff
          \new Staff = "tenor2" \with {
            instrumentName = "Tenor II"
            shortInstrumentName = II
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = "tenor2"} \dynamicsTenorII
            \new Voice \tenorII
            \addlyrics \wordsMidi
          >>
                                % Single bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsBass
            \new Voice \bass
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \TempoTrack
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
            \new Dynamics \teeny \dynamicsPiano
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
