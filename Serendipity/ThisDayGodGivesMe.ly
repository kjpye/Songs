\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "This Day God Gives Me"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Gaelic melody"
  arranger    = "arr. and harm. Martin Shaw 1875-1958"
%  opus        = "opus"

%  poet        = "poet"
  meter       = "55.54D"
  piece       = "Bunessan"

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
  \key c \major
  \time 9/4
  \tempo 4=120
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
  c4 e g c2. d
  b4 a g a2. g
  c,4 d e g2. a
  g4 e c d2.~d
  g4 e g c2. a
  g4 e c c2. d
  e4 d e g2. a
  d,4 e d c2.~c
  \bar "|."
}

alto = \relative c' {
  \global
  c4 c e g2. a
  d,4 d d fis2. d
  c4 d e g2. f
  e4 d c d2.~d
  c4 c c e2. f
  e4 c g a2. a
  c4 d e b2. c
  a4 b b c2.~c
  \bar "|."
}

tenor = \relative c {
  \global
  e4 g c c2. a
  g4 a b d2. b
  e,4 f g c2. c
  c4 g a b2.~b
  c4 c c c2. c
  c4 g e e2. f
  g4 g g e2.e
  a4 g g e2.~e
  \bar "|."
}

bass= \relative c {
  \global
  \clef bass
  c4 c c e2. f
  g4 fis g d2. g
  c,4 c c e2. f
  c4 e a g2.~g
  e4 c e a2. f
  c4 c c a2. d
  c4 b c e2. a,
  f4 g g c2.~c
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

wordsOne = \lyricmode {
  This day God gives me strength of high heav- en,
  Sun and moon shin- ing, flame in my hearth.
  Flash- ing of light- ning, wind in its swift- ness,
  Deeps of the o- cean, firm- ness of earth.
}

wordsTwo = \lyricmode {
  This day God sends me strength to sus- tain me,
  Might to up- hold me, wis- dom to guide.
  Your eues are wach- ful, your ears are lis- tening,
  Your lips are speak- ing, friend at my side.
}

wordsThree = \lyricmode {
  God's way is my way, God's shield is round me,
  God's host def- end me, sav- ing from ill.
  An- gels of heav- en drive from me al- ways
  All that would harm me, stand by me still.
}

wordsFour = \lyricmode {
  Ris- ing, I thank you, might- y and strong One,
  King of cre- a- tion, giv- er of rest.
  Firm- ly con- fess- ing three- ness of per- sons,
  One- ness of God- head, tri- ni- ty blest.
}

\score {
  <<
    \new ChoirStaff <<
% Joint soprano/alto staff
      \new Staff \with { instrumentName = #"Soprano/Alto" shortInstrumentName = #"SA" } <<
        \new Voice \RehearsalTrack
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto"    { \voiceTwo \alto    }
        \new Lyrics \lyricsto "soprano" \wordsOne
        \new Lyrics \lyricsto "soprano" \wordsTwo
        \new Lyrics \lyricsto "soprano" \wordsThree
        \new Lyrics \lyricsto "soprano" \wordsFour
      >>
% Joint tenor/bass staff
      \new Staff \with { instrumentName = #"Tenor/Bass" shortInstrumentName = #"TB" } <<
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass"  { \voiceTwo \bass}
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
