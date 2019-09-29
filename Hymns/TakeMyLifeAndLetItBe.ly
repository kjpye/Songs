\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Take My Life and Let It Be"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
  poet    = "Francis R. Havergal"
%  meter   = arranger
%  piece       = opus

  composer    = "Mozart/Mueller"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = "poet"
  meter       = "7.7.7.7."
  piece       = "Nottingham"

% centered at bottom
%  tagline     = "tagline" % default lilypond version
  tagline   = ##f
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
  \key g \major
  \time 3/2
  \tempo 2=125
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
%  \mark \markup { \circle "1a" }
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
  s1.
  s1.
  s1.
  s1.
  \repeat volta 4 {
    g1 g2
    fis2(e) d2
    c'1 c2
    b1. \bar "||"
    d1 b2
    d2(c) a
    g1 b2
    a1. \bar "||"
    g1 g2
    fis2.(e4) d2
    c'1 c2
    b1. \bar "||"
    d1 b2
    a2(c) e
    g,1 fis2
    g1.
  }
}

pianoRHone = \relative c'' {
  \global
  \voiceOne
    d1 b2
    a2(c) e
    g,1 fis2
    g1.
  \repeat volta 4 {
    g1 g2
    fis2(e) d2
    c'1 c2
    b1. \bar "||"
    d1 b2
    d2(c) a
    g1 b2
    a1. \bar "||"
    g1 g2
    fis2.(e4) d2
    c'1 c2
    b1. \bar "||"
    d1 b2
    a2(c) e
    g,1 fis2
    g1.
  }
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
    d2(g) f
    e1 e2
    d1 c2
    b1.
  \repeat volta 4 {
    d1 d2
    d1 d2
    d1 fis2
    g1.
    g1 g2
    e1 d2
    d1 g2
    fis1.
    g1 g2
    fis2.(e4) d2
    d1 fis2
    g1.
    d2(g) f
    e1 e2
    d1 c2
    b1.
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
    b1 d2
    c1 a2
    b1 a2
    g1.
  \repeat volta 4 {
    b1 b2
    a1 fis2
    fis2(a) d
    d1.
    d1 d2
    a1 c2
    b1 d2
    d1.
    b2(d) b
    c2.(b4) a(g)
    fis2(a) d
    d1.
    b1 d2
    c1 a2
    b1 a2
    g1.
  }
}

pianoLHtwo = \relative c' {
  \global
  \clef bass
  \voiceTwo
    g1 gis2
    a1 c,2
    d1 d2
    g,1.
  \repeat volta 4 {
    g'1 g2
    d1 d2
    d2(fis) d
    g1.
    b1 g2
    a1 fis2
    g2(b) g
    d1.
    g2(b) g
    a2.(g4) fis(e)
    d2(fis) d
    g1.
    g1 gis2
    a1 c,2
    d1 d2
    g,1.
  }
}

wordsOne = \lyricmode {
  Take my life, and let it be
  Con- sec- ra- ted, Lord, to Thee;
  Take my mom- ents and my days,
  Let them flow in cease- less praise.
}

wordsOneA = \lyricmode {
  Take my life, and let it be
  Con- sec- ra- ted, Lord, to Thee;
  Take my mom- ents and my days,
  Let them flow in cease- less praise.
}

wordsTwo = \lyricmode {
  Take my hands, and let them move
  At the im- pulse of thy love;
  Take my feet, and let them be
  Swift and beau- ti- ful for Thee.
}

wordsThree = \lyricmode {
Take my voice, and let me sing
  Al- ways, on- ly, for my King;
  Take my lips, and let them be
  Filled with mes- sag- es from Thee.
}

wordsTwoA = \lyricmode {
Take my voice, and let me sing
  Al- ways, on- ly, for my King;
  Take my lips, and let them be
  Filled with mes- sag- es from Thee.
}

wordsFour = \lyricmode {
  Take my sil- ver and my gold;
  Not a mite would I with- hold:
  Take my in- tel- lect, and use
  Ev- ery pow- er as Thou shalt choose.
}

wordsThreeA = \lyricmode {
  Take my in- tel- lect, and use
  Ev- ery pow- er as Thou shalt choose.
  Take my will, and make it Thine;
  It shall be no long- er mine:
}

wordsFive = \lyricmode {
  Take my will, and make it Thine;
  It shall be no long- er mine:
  Take my heart-- it is Thine Own,
  It shall be Thy roy- al throne.
}

wordsSix = \lyricmode {
  Take my love: my Lord, I pour
  At Thy feet its treas- ure- store;
  Take my- self, and I will be
  Ev- er, on- ly, all for Thee.
}

wordsFourA = \lyricmode {
  Take my love: my Lord, I pour
  At Thy feet its treas- ure- store;
  Take my- self, and I will be
  Ev- er, on- ly, all for Thee.
}

\score {
  <<
%    \new ChoirStaff <<
% Single soprano staff
      \new Dynamics \dynamicsSop
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice \RehearsalTrack
        \new Voice = "soprano" \melody
        \new Lyrics \lyricsto "soprano" \wordsOneA
        \new Lyrics \lyricsto "soprano" \wordsTwoA
        \new Lyrics \lyricsto "soprano" \wordsThreeA
        \new Lyrics \lyricsto "soprano" \wordsFourA
      >>
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
        \new Voice = "pianorhone" \pianoRHone
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

