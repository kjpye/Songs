\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Abide With Me"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "W. H. Monk"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "H. F. Lyte"
  meter       = "10.10.10.10"
  piece       = "Eventide"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
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
  \key c \minor
  \time 4/4
  \tempo 4=100
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

melody = \relative c'' {
  \global
  \voiceOne
  s1
  s1
  s1
  s1
  \repeat volta 3 {
    g2 g4 f
    ees2 bes'
    c4 bes bes aes
    g1 \bar "||"
    g2 aes4 bes
    c2 bes
    aes4 f g a
    bes1 \bar "||"
    g2 g4 f
    ees2 bes'
    bes4 aes aes g
    f1 \bar "||"
    f2 g4 aes
    g4 f ees aes
    g2 f
    ees1
  }
}

pianoRHone = \relative c' {
  \global
  \voiceOne
  f2 g4 aes
  g4 f ees aes
  g2 f
  ees1
  \repeat volta 3 {
    g2 g4 f
    ees2 bes'
    c4 bes bes aes
    g1 \bar "||"
    g2 aes4 bes
    c2 bes
    aes4 f g a
    bes1 \bar "||"
    g2 g4 f
    ees2 bes'
    bes4 aes aes g
    f1 \bar "||"
    f2 g4 aes
    g4 f ees aes
    g2 f
    ees1
  }
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  d2 ees4 d
  ees4 d ees f
  ees2 d
  ees1
  \repeat volta 3 {
    ees2 d4 d
    ees2 ees
    ees4 d ees f
    ees1
    ees2 ees4 ees
    ees2 ees
    ees4 f ees ees
    d1
    ees2 d4 d
    ees2 ees
    ees4 ees e e
    f1
    d2 ees4 d
    ees4 d ees f
    ees2 d
    ees1
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
  bes2 bes4 bes
  bes4 aes g c
  bes2. aes4
  g1
  \repeat volta 3 {
    bes2 bes4 aes
    g2 ees
    ees4 bes' bes bes
    bes1
    bes2 aes4 g
    aes2 g
    c4 bes bes ees,
    f1
    g4(aes) bes aes
    g2 ees'4(d)
    c4 c c bes
    aes1
    bes2 bes4 bes
    bes4 aes g c
    bes2. aes4
    g1
  }
}

pianoLHtwo = \relative c' {
  \global
  \clef bass
  \voiceTwo
  aes2 g4 f
  ees4 bes c aes
  bes2 bes
  ees1
  \repeat volta 3 {
    ees2 bes4 bes
    c2 g
    aes4 bes c d
    ees1
    ees4(d) c bes
    aes2 ees'
    f4 d ees c
    bes1
    ees2 bes4 bes
    c2 g
    aes4. bes8 c4 c
    f1
    aes2 g4 f
    ees4 bes c aes
    bes2 bes
    ees1
  }
}

wordsOne = \lyricmode {
  A- bide with me, fast falls the e- ven- tide;
  The dark- ness deep- ens, Lord, with me a- bide;
  When oth- er help- ers fail, and com- forts flee,
  Help of the help- less, oh, a- bide with me!
}

wordsTwo = \lyricmode {
  I need thy pre- sence ev- ery pas- sing hour
  What but Thy grace can foil the tempt- "er's" power?
  Who like Thy- self my guide and stay can be?
  Through cloud and sun- shine, oh, a- bide with me!
}

wordsThree = \lyricmode {
  I fear no foe, with Thee at hand to bless;
  Ills have no weight, and tears no bit- ter- ness;
  Where is "death's" sting? where, grave thy vic- tor- y?
  I tri- umph still, if Thou a- bide with me.
}

\score {
  <<
    \new ChoirStaff <<
% Single soprano staff
      \new Dynamics \dynamicsSop
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice = "soprano" \melody
        \new Lyrics \lyricsto "soprano" \wordsOne
        \new Lyrics \lyricsto "soprano" \wordsTwo
        \new Lyrics \lyricsto "soprano" \wordsThree
      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice \pianoRHone
        \new Voice \pianoRHtwo
      >>
      \new Dynamics \dynamicsPiano
      \new Staff <<
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
%              \set Staff.midiInstrument = #"church organ"
              <<
                \new Voice = melody { \pianoRHone}
                \new Voice          { \pianoRHtwo }
              >>
            }
            \new Staff = bass \unfoldRepeats {
%              \set Staff.midiInstrument = #"church organ"
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
