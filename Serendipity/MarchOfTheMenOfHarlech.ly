\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Marchof the Men of Harlech"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Welsh Air"
  arranger    = "Arranged with Descant by H. A. Chambers"
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
  \tempo 4=120
%  \partial 4
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
  r1
  r1
  \repeat volta 2 {
    r1
    r1
    r1
    r1
    r1
    r1
    r1
    r1
  }
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  r1
  \bar "||"
  f4 f d' d
  c4 bes a c
  bes4 d g d
  \bar "|."
}

dynamicsTenor = {
}

bass= \relative c {
  \global
  \clef bass
  r1
  r1
  \repeat volta 2 {
    f4.. e16 d4.. e16
    f4 g a f
    bes4 a g f
    e4 d e c
    f4.. e16 d4.. e16
    f4 g a d
    c16 a8.(a4)g4.. a16
    f2. r4
  }
  g4.. f16 e4.. f16
  g4 g r2
  c4.. bes16 a4.. bes16
  c4 c r4 r8. c16
  c4.. bes16 a4.. bes16
  c4.. bes16 a4.. bes16
  c8.(d16) c8.(bes16) a8.(g16) a8.(bes16)
  c4 c r2
  d4 d c c
  bes4 bes a a
  g4 bes8.(a16) g4 f
  e4 d e c
  f4.. e16 d4.. e16
  f4 g a d
  c16 a8.(a4) g4..-> a16
  f2.-> r4
  \repeat volta 2 {
    f4.. e16 d4.. e16
    f4 g a f
    bes4 a g f
    e4 d e c
    f4.. e16 d4.. e16
    f4 g a d
    c16-> a8.(a4) g4.. a16
    f2. r4
  }
  g4.. f16 e4.. f16
  g4 g r2
  c4.. bes16 a4.. bes16
  c4 c r r8. c16
  c4.. bes16 a4.. bes16
  c4.. bes16 a4.. bes16
  c8.(d16) c8.(bes16) a8.(g16) a8.(bes16)
  c4 c r2
  d4 d c c
  bes4 bes a a
  g4 bes8.(a16) g4 f
  e4 d e c
  f4.. e16 d4.. e16
  f4 g a d
  c16 a8.(a4) g4..-> a16
  f2.-> r4
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
  \clef treble
  \voiceOne
  c4
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \clef treble
  \voiceTwo
  c4
  \bar "|."
}

pianoLH = \relative c' {
  \global
  \clef bass
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

wordsSop = \lyricmode {
  words
}

wordsAlto = \lyricmode {
  words
}

wordsTenor = \lyricmode {
  words
}

wordsOneA = \lyricmode {
  Men of Har- lech! in the hol- low,
  Do ye hear, like rush- ing bil- low,
  Wave on wave that surg- ing fol- low,
  Bat- tle's dis- tant ound?
}

wordsOneB = \lyricmode {
  'Tis the tramp of Sax- on foe- men,
  Sax- on spear- men, Sax- on bow- men
  Be they knights, or hinds, or yeo- men,
  They shall bite the ground!
}

wordsOneC = \lyricmode {
  Loose the folds a- sun- der,
  Flag we con- quer un- der!
  The pla- cid sky, now bright on high,
  Shall launch its bolt in thun- der!
  On- ward! 'tis our coun- try needs us!
  He is bra- vest, he who leads us!
  Hon- our;s self now proud- ly heads us!
  Cam- bria, God, and Right!
}

wordsEmpty = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
}

wordsTwoA = \lyricmode {
  Rock- y steeps and pass- es nar- row
  Flash with spear and flight of ar- row,
  Who would think of death or sor- row!
  Glo- ry crowns us now!
}

wordsTwoB = \lyricmode {
  Hurl the reel- ing horse- men o- ver!
  Let the earth dead foe- en cov- er!
  Fate of friend, of wife, of lover,
  Trembles on a blow!
}

wordsTwoC = \lyricmode {
  Strands of life are riv- en;
  Blow for blow is giv- en,
  In dead- ly lock, or bat- tle shock,
  And mer- cy shrieks to heav- en!
  Men of Har- lech, young and hoar- y,
  Would you win a name in stor- y!
  Strike for home, for life, for glo- ry!
  Cam- bria, God, and Right!
}

\score {
  <<
    \new ChoirStaff <<
%      \new Dynamics \dynamicsSop
%      \new Staff \with { instrumentName = #"Soprano" } <<
%        \new Voice = "soprano" \soprano
%        \new Lyrics \lyricsto "soprano" \wordsSop
%      >>
%      \new Dynamics \dynamicsAlto
%      \new Staff \with { instrumentName = #"Alto" } <<
%        \new Voice = "alto" \alto
%        \new Lyrics \lyricsto "alto" \wordsAlto
%      >>
      \new Dynamics \dynamicsTenor
      \new Staff \with { instrumentName = #"Tenor" } <<
        \new Voice = "tenor" \tenor
        \new Lyrics \lyricsto "tenor" { \wordsTwoA \wordsTwoC }
        \new Lyrics \lyricsto "tenor" { \wordsTwoB            }
      >>
      \new Dynamics \dynamicsBass
      \new Staff \with { instrumentName = #"Bass" } <<
        \new Voice = "bass" \bass
        \new Lyrics \lyricsto "bass" { \wordsOneA \wordsOneC  \wordsTwoA \wordsTwoC }
        \new Lyrics \lyricsto "bass" { \wordsTwoA \wordsEmpty \wordsTwoA            }
      >>
    >>
    \new PianoStaff <<
      \new Staff <<
        \new Voice \pianoRH
        \new Voice \pianoRHone
        \new Voice \pianoRHtwo
      >>
      \new Dynamics \dynamicsPiano
      \new Staff <<
        \new Voice \pianoLH
        \new Voice \pianoLHone
        \new Voice \pianoLHtwo
      >>
    >>
  >>
  \layout {
    \context { \Staff \RemoveAllEmptyStaves }
    indent = 1.5\cm
  }
  \midi {
    \context {
      \Score
%      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
