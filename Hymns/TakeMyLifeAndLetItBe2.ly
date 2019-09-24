\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Take my Life and Let it Be"
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
  tagline     = "tagline" % default lilypond version
% tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

% \paper {
%   #(set-paper-size "a4")
%   line-width = 180\mm
%   left-margin = 20\mm
%   bottom-margin = 10\mm
%   top-margin = 10\mm
% }

global = {
  \key f \major
  \time 4/4
  \tempo 4=85
}

colour = {
  \override NoteHead.color   = #red
  \override Stem.color       = #red
  \override Beam.color       = #red
  \override Accidental.color = #red
  \override Slur.color       = #red
  \override Tie.color        = #red
  \override Dots.color       = #red
}

black = {
  \override NoteHead.color   = #black
  \override Stem.color       = #black
  \override Beam.color       = #black
  \override Accidental.color = #black
  \override Slur.color       = #black
  \override Tie.color        = #black
  \override Dots.color       = #black
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box 5 }
  \mark \markup { \circle "1a" }
  s2 s2
}

soprano = \relative c' {
  \global
  c4
  \bar "|."
}

dynamicsSop = {
}

alto = \relative c' {
  \global
  c4
  \bar "|."
}

dynamicsAlto = {
}

tenor = \relative c {
  \global
  \clef "treble_8"
  c4
  \bar "|."
}

dynamicsTenor = {
}

bass= \relative c' {
  \global
  \clef bass
  c4
  \bar "|."
}

dynamicsBass = {
}

dynamicsPiano = {
}

pianoRH = \relative c' {
  \global
  c4
  \bar "|."
}

pianoRHone = \relative c' {
  \global
  \voiceOne
  \repeat volta 5 {
    f4 f f8 c f a 
    c4 bes a2
    a4 a a8 g bes g
    f4 e8 g f2
    a4 a g g8 a
    bes4 c bes(a)
    c4 c d c
    c8 bes bes a a4(g)
    f4 g a bes8 g
    f4 e f2
  }
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  \repeat volta 5 {
    c4 c c c
    f4 c c2
    c4 d d d
    c4 c c2
    f4 f e e8 f
    g4 a g(f)
    f4 f f f
    g4 f f(e)
    f4 e f d
    c4 c c2
  }  
}

pianoLH = \relative c' {
  \global
  \oneVoice
  c4
  \bar "|."
}

pianoLHone = \relative c' {
  \global
  \clef bass
  \voiceOne
  \repeat volta 5 {
    a4 a a a
    a4 g f2
    f4 f bes bes
    a4 g8 bes a2
    c4 c c c
    c4 c c2
    a4 a bes a
    c4 c c2
    a4 c c d8 bes
    a4 g a2
  }
}

pianoLHtwo = \relative c {
  \global
  \clef bass
  \voiceTwo
  \repeat volta 5 {
    f4 f f f
    c4 e f2
    f4 d bes g
    c4 c f,2
    f'4 f c c
    e4 c f2
    f4 f bes, f'
    e4 f c2
    d4 c f, bes
    c4 c f,2
  }
}

wordsSop = \lyricmode {
}

wordsAlto = \lyricmode {
}

wordsTenor = \lyricmode {
}

wordsBass = \lyricmode {
}

\score {
  <<
%    \new ChoirStaff <<
%% Single soprano staff
%      \new Dynamics \dynamicsSop
%      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
%        \new Voice \RehearsalTrack
%        \new Voice = "soprano" \soprano
%        \new Lyrics \lyricsto "soprano" \wordsSop
%      >>
%% Single alto staff
%      \new Dynamics \dynamicsAlto
%      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
%        \new Voice = "alto" \alto
%        \new Lyrics \lyricsto "alto" \wordsAlto
%      >>
%% Single tenor staff
%      \new Dynamics \dynamicsTenor
%      \new Staff \with { instrumentName = #"Tenor" shortInstrumentName = #"T" } <<
%        \new Voice = "tenor" \tenor
%        \new Lyrics \lyricsto "tenor" \wordsTenor
%      >>
%% Single bass staff
%      \new Dynamics \dynamicsBass
%      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
%        \new Voice = "bass" \bass
%        \new Lyrics \lyricsto "bass" \wordsBass
%      >>
%% Joint soprano/alto staff
%      \new Dynamics \dynamicsWomen
%      \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
%        \new Voice \RehearsalTrack
%        \new Voice = "soprano" { \voiceOne \soprano }
%        \new Voice = "alto"    { \voiceTwo \alto    }
%        \new Lyrics \lyricsto "soprano" \words
%      >>
%% Joint tenor/bass staff
%      \new Dynamics \dynamicsMen
%      \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
%        \new Voice = "tenor" \tenor
%        \new Voice = "bass" \bass
%      >>
%    >>
    \new PianoStaff <<
      \new Staff <<
%        \new Voice \pianoRH
        \new Voice \pianoRHone
        \new Voice \pianoRHtwo
      >>
      \new Dynamics \dynamicsPiano
      \new Staff <<
%        \new Voice \pianoLH
        \new Voice \pianoLHone
        \new Voice \pianoLHtwo
      >>
    >>
  >>
  \layout { indent = 1.5\cm }
}

  \score {
    \context GrandStaff {
      <<
        \context PianoStaff {
          <<
            \new Staff = treble \unfoldRepeats {
              \set Staff.midiInstrument = #"church organ"
              <<
                \new Voice = melody { \pianoRHone}
                \new Voice          { \pianoRHtwo }
              >>
            }
            \new Staff = bass \unfoldRepeats {
              \set Staff.midiInstrument = #"church organ"
              <<
                \new Voice { \pianoLHone }
                \new Voice { \pianoLHtwo }
              >>
            }
          >>
        }
      >>
    }
  \midi {}
  }

