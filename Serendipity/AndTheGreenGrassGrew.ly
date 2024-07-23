\version "2.25.18"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "And the Green Grass Grew"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Donald Moore"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "William Jerome (1912)"
  meter       = "with additional words by Donald Moore"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 2/2
}

TempoTrack = {
  \tempo "Lightly, in madrigal style" 2=70
  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \repeat segno 2 {
    \repeat volta 2 {
      \textMark \markup { \box "2a" } s1*2
      \textMark \markup { \box "2b" } s1*3
      \textMark \markup { \box "3a" } s1*3
      \textMark \markup { \box "3b" } s1*3
      \textMark \markup { \box "4a" } s1*3
      \textMark \markup { \box "4b" } s1*3
    }
    \volta 1 {
      \textMark \markup { \box "5a" } s1*3
      \textMark \markup { \box "5b" } s1*3
      \textMark \markup { \box "6a" } s1*2
      \textMark \markup { \box "6b" } s1*3
      \textMark \markup { \box "7a" } s1*2
      \textMark \markup { \box "7b" } s1*3
    }
  }
}

dynamicsSopI = {
  \override DynamicTextSpanner.style = #'none
  \repeat segno 2 {
    \repeat volta 2 {
      s1\mf | s1*4 |
      s1*3 | s2\> s\! | s4 s\p s2\< | s4 s\mp s2\< |
      s4 s2.\mf | s1*2 | s2. s4\cresc | s1 | s1\f |
    }
    \volta 1 {
      s1*4 | s1\omit\p-\markup{\italic sub. \dynamic p} | s |
      s1 | s2. s4\omit\f-\markup{\italic sub. \dynamic f} | s1 | s2. s4\omit\p-\markup{\italic sub. \dynamic p} | s1 |
      s2. s4\omit\f-\markup{\italic sub. \dynamic f} | s1*2 | s2 s-\markup\italic rit. | s1\ff |
    }
  }
}

sopranoI = \relative {
  \global
  \repeat segno 2 {
    \repeat volta 2 {
      b'4. c8 d4 b | a d8 8 c4 a |
      b4 d8 8 b4 g | e g a4 8 8 | b4 r r2 |
      r4 e8 d c4 8 b | a4 g8 a b4 d8 8 | c4 b a4 8 8 | % 3a
      b2 r | r4 e,8 fis g4 fis8 g | a4 fis8 g a4 g8 a |
      b4 e8 8 d2~ | 4 e8 8 d4 b8 8 | a4 g a a | % 4a
      b4 e8 8 d4 b8 8 | a4 g a4. 8 | b1\parenthesize\fermata\fine |
    }
    \volta 1 {
      e4. d8 c4 b | a4 g8(a) b4 4 | c b8(c) d4 b | % 5a
      a4. 8 b2 | e4. d8 c4 b | a4 g8(a) b4 4 |
      c4 b8(c) d4 b | a4. 8 b4 g8 fis | % 6a
      e4 a fis b8(a) | g4 c a g8 fis | e4 a fis b8(a) |
      g4 c a g8(a) | b4 d d b | % 7a
      a4 g a g8(a) | b4 d d cis | d2~2\fermata |
    }
  }
  \bar "|."
}

wordsSopI = \lyricmode {
  \repeat segno 2 {
    \repeat volta 2 {
      And the green grass grew all a -- round, a -- round,
      and it grew and grew and grew all a -- round.
      And it grew and it grew and it grew,
      and the green grass grew all a -- round.
      From a seed that was sewn to a love that has grown,
      to a love, __ to a love,
      to a love that’s grown and grown to a love,
      to a love that’s grown and grown.
    }
    \volta 1 {
      And each bird in tree -- top __ high said,
      “Oh, you __ kid,” and winked his eye.
      And each bird in tree -- top __ high said,
      “Oh, you __ kid,” and winked his eye
      and with all your gold my __ tur -- tle dove,
      and with all your gold my __ tur -- tle dove,
      how __ can you doubt my love, my love,
      how __ can you doubt my love? __
    }
  }
}

dynamicsSopII = {
  \override DynamicTextSpanner.style = #'none
  \repeat segno 2 {
    \repeat volta 2 {
      s1 | s4 s2.\mf | s1*3 |
      s1*3 | s2\> s\! | s1 | s4 s\mp s2\< |
      s2 s4\! s\mf | s1*2 | s2. s4\cresc | s1 | s\f |
    }
    \volta 1 {
      s1*4 | s1\omit\p-\markup{\italic sub. \dynamic p} | s |
      s1 | s2. s4\omit\f-\markup{\italic sub. \dynamic f} | s1 | s2. s4\omit\p-\markup{\italic sub. \dynamic p} | s1 |
      s2. s4\omit\f-\markup{\italic sub. \dynamic f} | s1*2 | s2 s-\markup\italic rit. | s1\ff |
    }
  }
}

sopranoII = \relative {
  \global
  \repeat segno 2 {
    \repeat volta 2 {
      R1 | s4 fis'8 g a4 fis |
      g2. d4 c g' g fis8 8 | g4 d'8 c b4 8 a |
      g2 r4 a8 g | fis4 e8 fis g4 8 8 | e4 g g fis8 8 | % 3a
      g2 r | R1 | r4 d8 e fis4 e8 fis |
      g4 c8 8 b4 8 8 | a4 g8 a b4 g8 8 | fis4 g g fis | % 4a
      g4 c8 8 b4 g8 8 | fis4 g g fis | g1\parenthesize\fermata |
    }
    \volta 1 {
      g4. 8 4 4 | fis e8(fis) g4 4 | a g8(a) b4 g | % 5a
      g4 fis g2 | 4. 8 4 4 | fis e8(fis) g4 4 |
      a4 g8(a) b4 g | g fis g d8 8 | % 6a
      c4 4 d d | e e fis d8 8 | c4 c d d |
      g4 c a g8(a) | b4 d d b | % 7a
      fis4 e fis e8(fis) | g4 a g g | 2(fis\fermata) |
    }
  }
  \bar "|."
}

wordsSopII = \lyricmode {
  \repeat segno 2 {
    \repeat volta 2 {
      And the green grass grew and grew and grew all a -- round,
      And it grew and it grew and it grew and it grew,
      and the green grass grew all a -- round.
      From a seed that was sewn to a love, to a love, to a love,
      to a love that’s grown and grown to a love,
      to a love that’s grown and grown.
    }
    \volta 1 {
      And each bird in tree -- top __ high said,
      “Oh, you __ kid,” and winked his eye,
      And each bird in tree -- top __ high said,
      “Oh, you __ kid,” and winked his eye,
      and with all your gold my tur -- tle dove,
      and with all your gold my tur -- tle dove,
      how __ can you doubt my love, my love,
      how __ can you doubt my love? __
    }
  }
}

dynamicsAlto = {
  \override DynamicTextSpanner.style = #'none
  \repeat segno 2 {
    \repeat volta 2 {
      s1*2 | s4 s2.\mf | s1*2 |
      s1*3 | s4 s2.\p | s2 s\< | s4 s\mp s2\< |
      s2 s4\! s\mf | s1*2 | s2. s4\cresc | s1 | s\f |
    }
    \volta 1 {
      s1*4 | s1\omit\p-\markup{\italic sub. \dynamic p} | s |
      s1 | s2. s4\omit\f-\markup{\italic sub. \dynamic f} | s1 | s2. s4\omit\p-\markup{\italic sub. \dynamic p} | s1 |
      s2. s4\omit\f-\markup{\italic sub. \dynamic f} | s1*2 | s2 s-\markup\italic rit. | s1\ff |
    }
  }
}

alto = \relative {
  \global
  \repeat segno 2 {
    \repeat volta 2 {
      R1 | R |
      r4 b8 c d4 b | c b8 8 d4 4 | g b8 a g4 8 fis |
      e2 r | r2 r4 b8 8 | c4 g' d4 8 8 | % 3a
      g4 b,8 c d4 c8 d | e4 c8 d e4 d8 e | fis4 d8 8 4 8 8 |
      g2 r4 g8 8 | fis4 e8 fis g4 8 8 | d4 e d4. 8 | % 4a
      g2 r4 g8 8 | d4 e d4. 8 g1\parenthesize\fermata |
    }
    \volta 1 {
      c,4. d8 e4 g | d d g g | g4. 8 4 4 | % 5a
      d4 4 g2 | c,4. d8 e4 g | d4 4 g g |
      g4. 8 4 4 | d d g b,8 8 | % 6a
      c4 a d b | e c d b8 8 | c4 a d b |
      e4 c d d | g4. 8 fis4 g | % 7a
      d4 e d d | g fis e a, | d2~2\fermata |
    }
  }
  \bar "|."
}

wordsAlto = \lyricmode {
  \repeat segno 2 {
    \volta 2 {
      And the green grass grew all a -- round, a -- round,
      And it grew and it grew,
      and the green grass grew all a -- round.
      From a seed that was sewn to a love that has grown,
      to a love that has grown, to a love, to a love,
      to a love that’s grown and grown,
      to a love that’s grown and grown.
    }
    \volta 1 {
      And each bird in tree -- top high said
      “Oh, you kid,” and winked his eye.
      And each bird in tree -- top high said
      “Oh, you kid,” and winked his eye.
      and with all your gold my tur -- tle dove,
      and with all your gold my tur -- tle dove,
      how __ can you doubt my love, my love,
      how __ can you doubt my love? __
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  \repeat segno 2 {
    \repeat volta 2 {
      s1\omit\mf-\markup{\dynamic mf \italic "(for rehearsal only)"} | s1*4 |
      s1*3 | s4 s2.\p | s2 s\< | s4 s\mp s2\< |
      s4 s2.\mf | s1*2 | s2. s4\cresc | s1 | s\f |
    }
    \volta 1 {
      s1*4 | s1\omit\p-\markup{\italic sub. \dynamic p} | s |
      s1 | s2. s4\omit\f-\markup{\italic sub. \dynamic f} | s1 | s2. s4\omit\p-\markup{\italic sub. \dynamic p} | s1 |
      s2. s4\omit\f-\markup{\italic sub. \dynamic f} | s1*2 | s2 s-\markup\italic rit. | s1\ff |
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \TempoTrack
            \new Voice \partCombine \sopranoI \sopranoII
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \alto
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
%        \RemoveAllEmptyStaves
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
    output-suffix = repeat-noacc
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
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
%        \RemoveAllEmptyStaves
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
    output-suffix = repeat-noacc-bass
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Single soprano I staff
          \new Staff = "soprano1" \with {
            instrumentName = #"Soprano I"
            shortInstrumentName = #"SI"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano1"} \dynamicsSopI
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \sopranoI
            \addlyrics \wordsSopI
          >>
                                % Single soprano II staff
          \new Staff = "soprano2" \with {
            instrumentName = #"Soprano II"
            shortInstrumentName = #"SII"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = "soprano2"} \dynamicsSopII
            \new Voice \sopranoII
            \addlyrics \wordsSopII
          >>
                                % Single alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef bass
            \new Dynamics \with {alignAboveContext = alto} \dynamicsAlto
            \new Voice \transpose c c,\alto
            \addlyrics \wordsAlto
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
%        \RemoveAllEmptyStaves
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
