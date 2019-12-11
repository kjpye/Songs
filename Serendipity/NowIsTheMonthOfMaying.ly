\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Now Is The Month Of Maying"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Thomas Morley"
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
  \key g \major
  \time 4/4
  \tempo 4=120
  \partial 4
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

soprano = \relative c'' {
  \global
  g4
  \repeat volta 2 {
    g4 g a a
    b2 b4 g
    b4. a8 b4 cis
    d2 d4 a8 b
    c4 c b g
    a4 fis d d'8 c
    b4 c a a
  }
  \alternative {
    {
      g2 r4 g
    }
    {   
      g2 r4 b
    }   
  }
  \repeat volta 2 {
    a4 d d cis
    d2 r4 a
    c4 c b b
    a2 r4 d8 c
    b4 g d'2
    d,8 e fis g a b c4
    b4. c8 b4 a
  }
  \alternative {
    {
      g2 r4 b
    }
    {
      g1^\fermata
    }
  }
  \bar "|."
}

alto = \relative c' {
  \global
  c4
  \bar "|."
}

tenorOne = \relative c {
  \global
  \clef "treble_8"
  c4
  \bar "|."
}

tenorTwo = \relative c {
  \global
  \clef "treble_8"
  c4
  \bar "|."
}

bass= \relative c' {
  \global
  \clef bass
  c4
  \bar "|."
}

pianoRH = \relative c' {
  \global
  c4
  \bar "|."
}

pianoRHone = \relative c' {
  \global
  \clef bass
  \voiceOne
  c4
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \voiceTwo
  c4
  \bar "|."
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
  c4
  \bar "|."
}

pianoLHtwo = \relative c' {
  \global
  \clef bass
  \voiceTwo
  c4
  \bar "|."
}

wordsSopA = \lyricmode {
	  Now is the month of may- ing when mer- ry lads are play- ing:
	  Fa la la la la la la la la,
	  fa la la la la la la. Now
	  la. Each with his bon- ny lass up- on the green- y grass
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la Each la
}

wordsSopB = \lyricmode {
	  The spring clad all in glad- ness
	  Doth laugh at Win- ter's sad- ness
	  Fa la la la la la la la la,
	  fa la la la la la la. The
	  la. And to the bag- pipe's sound
	  The nymphs tread out their ground.
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la And la
}

wordsSopC = \lyricmode {
	  Fie then! why sit we mus- ing,
	  Love's sweet de- light re- fus- ing?
	  Fa la la la la la la la la,
	  fa la la la la la la. Fie
	  la. Say, dain- ty nymphs, and speak
	  Shall we play bar- ley break?
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la Say la
}

wordsAltoA = \lyricmode {
	  Now is the month of may- ing when mer- ry lads are play- ing:
	  Fa la la la la la la la la,
	  fa la la la la la la. Now
	  la. Each with his bon- ny lass up- on the green- y grass
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la Each la
}

wordsAltoB = \lyricmode {
	  The spring clad all in glad- ness
	  Doth laugh at Win- ter's sad- ness
	  Fa la la la la la la la la,
	  fa la la la la la la. The
	  la. And to the bag- pipe's sound
	  The nymphs tread out their ground.
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la And la
}

wordsAltoC = \lyricmode {
	  Fie then! why sit we mus- ing,
	  Love's sweet de- light re- fus- ing?
	  Fa la la la la la la la la,
	  fa la la la la la la. Fie
	  la. Say, dain- ty nymphs, and speak
	  Shall we play bar- ley break?
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la Say la
}

wordsTenorOneA = \lyricmode {
	  Now is the month of may- ing when mer- ry lads are play- ing:
	  Fa la la la la la la la la,
	  fa la la la la la la. Now
	  la. Each with his bon- ny lass up- on the green- y grass
	  Fa la la la la
	  fa la la la la la la la

	  fa la la la Each la
}

wordsTenorOneB = \lyricmode {
	  The spring clad all in glad- ness
	  Doth laugh at Win- ter's sad- ness
	  Fa la la la la la la la la,
	  fa la la la la la la. The
	  la. And to the bag- pipe's sound
	  The nymphs tread out their ground.
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la And la
}

wordsTenorOneC = \lyricmode {
	  Fie then! why sit we mus- ing,
	  Love's sweet de- light re- fus- ing?
	  Fa la la la la la la la la,
	  fa la la la la la la. Fie
	  la. Say, dain- ty nymphs, and speak
	  Shall we play bar- ley break?
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la Say la
}

wordsTenorTwoA = \lyricmode {
	  Now is the month of may- ing when mer- ry lads are play- ing:
	  Fa la la la la la la la la,
	  fa la la la la la la. Now
	  la. Each with his bon- ny lass up- on the green- y grass
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la Each la
}

wordsTenorTwoB = \lyricmode {
	  The spring clad all in glad- ness
	  Doth laugh at Win- ter's sad- ness
	  Fa la la la la la la la la,
	  fa la la la la la la. The
	  la. And to the bag- pipe's sound
	  The nymphs tread out their ground.
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la And la
}

wordsTenorTwoC = \lyricmode {
	  Fie then! why sit we mus- ing,
	  Love's sweet de- light re- fus- ing?
	  Fa la la la la la la la la,
	  fa la la la la la la. Fie
	  la. Say, dain- ty nymphs, and speak
	  Shall we play bar- ley break?
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la Say la
}

wordsBassA = \lyricmode {
	  Now is the month of may- ing when mer- ry lads are play- ing:
	  Fa la la la la la la la la,
	  fa la la la la la la. Now
	  la. Each with his bon- ny lass up- on the green- y grass
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la Each la
}

wordsBassB = \lyricmode {
	  The spring clad all in glad- ness
	  Doth laugh at Win- ter's sad- ness
	  Fa la la la la la la la la,
	  fa la la la la la la. The
	  la. And to the bag- pipe's sound
	  The nymphs tread out their ground.
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la And la
}

wordsBassC = \lyricmode {
	  Fie then! why sit we mus- ing,
	  Love's sweet de- light re- fus- ing?
	  Fa la la la la la la la la,
	  fa la la la la la la. Fie
	  la. Say, dain- ty nymphs, and speak
	  Shall we play bar- ley break?
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la Say la
}

\score {
  <<
    \new ChoirStaff <<
% Single soprano staff
      \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
        \new Voice \RehearsalTrack
        \new Voice = "soprano" \soprano
        \new Lyrics \lyricsto "soprano" \wordsSopA
        \new Lyrics \lyricsto "soprano" \wordsSopB
        \new Lyrics \lyricsto "soprano" \wordsSopC
      >>
% Single alto staff
      \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
        \new Voice = "alto" \alto
        \new Lyrics \lyricsto "alto" \wordsAltoA
        \new Lyrics \lyricsto "alto" \wordsAltoB
        \new Lyrics \lyricsto "alto" \wordsAltoC
      >>
% Single tenor one staff
      \new Staff \with { instrumentName = #"Tenor One" shortInstrumentName = #"T1" } <<
        \new Voice = "tenorone" \tenorOne
        \new Lyrics \lyricsto "tenorone" \wordsTenorOneA
        \new Lyrics \lyricsto "tenorone" \wordsTenorOneB
        \new Lyrics \lyricsto "tenorone" \wordsTenorOneC
      >>
% Single tenor two staff
      \new Staff \with { instrumentName = #"Tenor Two" shortInstrumentName = #"T2" } <<
        \new Voice = "tenortwo" \tenorTwo
        \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoA
        \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoB
        \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoC
      >>
% Single bass staff
      \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
        \new Voice = "bass" \bass
        \new Lyrics \lyricsto "bass" \wordsBassA
        \new Lyrics \lyricsto "bass" \wordsBassB
        \new Lyrics \lyricsto "bass" \wordsBassC
      >>
    >>
  >>
  \layout { indent = 1.5\cm }
  \midi {
    \context {
      \Score
%      tempoWholesPerMinute = #(ly:make-moment 100 4)
       RemoveAllEmptyStaves = ##t
    }
  }
}
