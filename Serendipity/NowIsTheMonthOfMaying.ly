\version "2.19.82"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Now is the Month of Maying"
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
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

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
  \mark \markup { \circle "1a" } s4
  \repeat volta 2 {
    s1*5
    \mark \markup { \circle "1b" } s1*2
  }
  \alternative {{s1}{s1}}
  \repeat volta 2 {
    s1*2
    \mark \markup { \circle "2a" } s1*3
    \mark \markup { \circle "2b" } s1*2
  }
  \alternative {{s1}{s1}}
}

soprano = \relative {
  \global
  g'4
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

alto = \relative {
  \global
  d'4
  \repeat volta 2 {
    e4 g g fis
    g2 g4 g
    g4. fis8 g4 g
    fis2 fis4 f8 f
    e4. fis8 g4 g
    fis4 d8 e f4 f8 f
    g4 g g fis
  }
  \alternative {
    { g2 r4 d }
    { g2 r4 b }
  }
  \repeat volta 2 {
    f4 a a4. g8
    fis2 r4 f
    e4 e e e
    e2 a8 g fis4
    d4 g2 d8 e
    fis8 g a4 r e8 fis
    g4 g g fis
  }
  \alternative {
    { g2 r4 d}
    { g1\fermata }
  }
}

tenorOne = \relative {
  \global
  \clef "treble_8"
  b4
  \repeat volta 2 {
    c4 c c c
    d2 d4 d
    d4. d8 d4 g,
    d'2 d4 d8 d
    a4 c d e
    a,2. d8 d
    d4 e d4. a8
  }
  \alternative {
    { b2 r4 b}
    { b2 r4 g}
  }
  \repeat volta 2 {
    a4 f' e e
    d2 r4 f,
    g4 a b b
    cis4 c8 b a4 a
    g4. a8 b4 b
    a4 a8 g fis4 e
    d4 g d'4. c8
  }
  \alternative {
    { b2 r4 g}
    { b1\fermata }
  }
  \bar "|."
}

tenorTwo = \relative {
  \global
  \clef "treble_8"
  g4
  \repeat volta 2 {
    g4 g c, c
    g'2 g4 g
    g4. d'8 b4 e
    a,2 a4 a8 a
    e4 a d, g
    d'2. a8 a
    b4 e, a d
  }
  \alternative {
    { d2 r4 g,}
    { d'2 r4 d}
  }
  \repeat volta 2 {
    d4 d e a,
    a2 r4 a
    e4 a a gis
    a2 r
    d8 c b4 g d'~
    d4 d,8 d fis g a4
    g2 r4 d'
  }
  \alternative {
    { d2 r4 d }
    { d1\fermata }
  }
  \bar "|."
}

bass= \relative {
  \global
  \clef bass
  g,4
  \repeat volta 2 {
    c4 c a a
    g2 g4 g
    g'4. d8 g4 e
    d2 d4 d8 d
    c4 a b e
    d2. d8 d
    g4 c, d d
  }
  \alternative {
    { g,2 r4 g}
    { g2 r4 g'}
  }
  \repeat volta 2 {
    f4 d a' a
    d,2 r4 d
    c4 a e' e
    a,4 a'8 g fis4 d
    g4 g g,8 a b c
    d2. a4
    b4 e d d
  }
  \alternative {
    { g,2 r4 g' }
    { g,1\fermata }
  }
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
	  fa la la la Say, la
}

wordsSopSingle = \lyricmode {
	  Now is the month of may- ing when mer- ry lads are play- ing:
	  Fa la la la la la la la la,
	  fa la la la la la la.
	  Now is the month of may- ing when mer- ry lads are play- ing:
	  Fa la la la la la la la la,
	  fa la la la la la la.
	  Each with his bon- ny lass up- on the green- y grass
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la
	  Each with his bon- ny lass up- on the green- y grass
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la

       	  The spring clad all in glad- ness
	  Doth laugh at Win- ter's sad- ness
	  Fa la la la la la la la la,
	  fa la la la la la la.
	  The spring clad all in glad- ness
	  Doth laugh at Win- ter's sad- ness
	  Fa la la la la la la la la,
	  fa la la la la la la.
	  And to the bag- pipe's sound
	  The nymphs tread out their ground.
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la
	  And to the bag- pipe's sound
	  The nymphs tread out their ground.
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la

       	  Fie then! why sit we mus- ing,
	  Love's sweet de- light re- fus- ing?
	  Fa la la la la la la la la,
	  fa la la la la la la.
	  Fie then! why sit we mus- ing,
	  Love's sweet de- light re- fus- ing?
	  Fa la la la la la la la la,
	  fa la la la la la la.
	  Say, dain- ty nymphs, and speak
	  Shall we play bar- ley break?
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la
	  Say, dain- ty nymphs, and speak
	  Shall we play bar- ley break?
	  Fa la la la la
	  fa la la la la la la la
	  fa la la la
}

wordsSopMidi = \lyricmode {
	  "Now " "is " "the " "month " "of " may "ing " "when " mer "ry " "lads " "are " play "ing: "
	  "\nFa " "la " "la " "la " "la " "la " "la " "la " "la, "
	  "\nfa " "la " "la " "la " "la " "la " "la. "
	  "\nNow " "is " "the " "month " "of " may "ing " "when " mer "ry " "lads " "are " play "ing: "
	  "\nFa " "la " "la " "la " "la " "la " "la " "la " "la, "
	  "\nfa " "la " "la " "la " "la " "la " "la. "
	  "\nEach " "with " "his " bon "ny " "lass " up "on " "the " green "y " "grass "
	  "\nFa " "la " "la " "la " "la "
	  "\nfa " "la " "la " "la " "la " "la " "la " "la "
	  "\nfa " "la " "la " "la "
	  "\nEach " "with " "his " bon "ny " "lass " up "on " "the " green "y " "grass "
	  "\nFa " "la " "la " "la " "la "
	  "\nfa " "la " "la " "la " "la " "la " "la " "la "
	  "\nfa " "la " "la " "la "

       	  "\nThe " "spring " "clad " "all " "in " glad "ness "
	  "\nDoth " "laugh " "at " Win "ter's " sad "ness "
	  "\nFa " "la " "la " "la " "la " "la " "la " "la " "la, "
	  "\nfa " "la " "la " "la " "la " "la " "la. "
	  "\nThe " "spring " "clad " "all " "in " glad "ness "
	  "\nDoth " "laugh " "at " Win "ter's " sad "ness "
	  "\nFa " "la " "la " "la " "la " "la " "la " "la " "la, "
	  "\nfa " "la " "la " "la " "la " "la " "la. "
	  "\nAnd " "to " "the " bag "pipe's " "sound "
	  "\nThe " "nymphs " "tread " "out " "their " "ground. "
	  "\nFa " "la " "la " "la " "la "
	  "\nfa " "la " "la " "la " "la " "la " "la " "la "
	  "\nfa " "la " "la " "la "
	  "\nAnd " "to " "the " bag "pipe's " "sound "
	  "\nThe " "nymphs " "tread " "out " "their " "ground. "
	  "\nFa " "la " "la " "la " "la "
	  "\nfa " "la " "la " "la " "la " "la " "la " "la "
	  "\nfa " "la " "la " "la "

       	  "\nFie " "then! " "why " "sit " "we " mus "ing, "
	  "\nLove's " "sweet " de "light " re fus "ing? "
	  "\nFa " "la " "la " "la " "la " "la " "la " "la " "la, "
	  "\nfa " "la " "la " "la " "la " "la " "la. "
	  "\nFie " "then! " "why " "sit " "we " mus "ing, "
	  "\nLove's " "sweet " de "light " re fus "ing? "
	  "\nFa " "la " "la " "la " "la " "la " "la " "la " "la, "
	  "\nfa " "la " "la " "la " "la " "la " "la. "
	  "\nSay, " dain "ty " "nymphs, " "and " "speak "
	  "\nShall " "we " "play " bar "ley " "break? "
	  "\nFa " "la " "la " "la " "la "
	  "\nfa " "la " "la " "la " "la " "la " "la " "la "
	  "\nfa " "la " "la " "la "
	  "\nSay, " dain "ty " "nymphs, " "and " "speak "
	  "\nShall " "we " "play " bar "ley " "break? "
	  "\nFa " "la " "la " "la " "la "
	  "\nfa " "la " "la " "la " "la " "la " "la " "la "
	  "\nfa " "la " "la " "la "
}

wordsAltoA = \lyricmode {
  Now is the month of may- ing when mer- ry lads are play- ing:
  Fa la la la la la la,
  fa la la
  fa la la la la la la. Now
  la.
  
  Each with his bon- ny lass up- on the green- y grass
  Fa la la la la
  fa la la la la
  fa la la la la la la
  Each
  la
}

wordsAltoB = \lyricmode {
  The spring clad all in glad- ness
  Doth laugh at Win- ter's sad- ness
  Fa la la la la la la,
  fa la la
  fa la la la la la la. The
  la.
  
  And to the bag- pipe's sound
  The nymphs tread out their ground.
  Fa la la la la
  fa la la la la
  fa la la la la la la
  And
  la
}

wordsAltoC = \lyricmode {
  Fie then! why sit we mus- ing,
  Love's sweet de- light re- fus- ing?
  Fa la la la la la la,
  fa la la
  fa la la la la la la. Fie
  la.
  
  Say, dain- ty nymphs, and speak
  Shall we play bar- ley break?
  Fa la la la la
  fa la la la la
  fa la la la la la la
  Say,
  la
}

wordsAltoSingle = \lyricmode {
  Now is the month of may- ing when mer- ry lads are play- ing:
  Fa la la la la la la,
  fa la la
  fa la la la la la la.
  Now is the month of may- ing when mer- ry lads are play- ing:
  Fa la la la la la la,
  fa la la
  fa la la la la la la.
  
  Each with his bon- ny lass up- on the green- y grass
  Fa la la la la
  fa la la la la
  fa la la la la la la
  Each with his bon- ny lass up- on the green- y grass
  Fa la la la la
  fa la la la la
  fa la la la la la la

  \set stanza = "2."
  The spring clad all in glad- ness
  Doth laugh at Win- ter's sad- ness
  Fa la la la la la la,
  fa la la
  fa la la la la la la.
  The spring clad all in glad- ness
  Doth laugh at Win- ter's sad- ness
  Fa la la la la la la,
  fa la la
  fa la la la la la la.
  
  And to the bag- pipe's sound
  The nymphs tread out their ground.
  Fa la la la la
  fa la la la la
  fa la la la la la la
  And to the bag- pipe's sound
  The nymphs tread out their ground.
  Fa la la la la
  fa la la la la
  fa la la la la la la

  \set stanza = "3."
  Fie then! why sit we mus- ing,
  Love's sweet de- light re- fus- ing?
  Fa la la la la la la,
  fa la la
  fa la la la la la la.
  Fie then! why sit we mus- ing,
  Love's sweet de- light re- fus- ing?
  Fa la la la la la la,
  fa la la
  fa la la la la la la.
  
  Say, dain- ty nymphs, and speak
  Shall we play bar- ley break?
  Fa la la la la
  fa la la la la
  fa la la la la la la
  Say, dain- ty nymphs, and speak
  Shall we play bar- ley break?
  Fa la la la la
  fa la la la la
  fa la la la la la la
}

wordsAltoMidi = \lyricmode {
  "Now " "is " "the " "month " "of " may "ing " "when " mer "ry " "lads " "are " play "ing: "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  "\nNow " "is " "the " "month " "of " may "ing " "when " mer "ry " "lads " "are " play "ing: "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  
  "\nEach " "with " "his " bon "ny " "lass " up "on " "the " green "y " "grass "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la " "la "
  "\nEach " "with " "his " bon "ny " "lass " up "on " "the " green "y " "grass "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la " "la "

  \set stanza = "2."
  "\nThe " "spring " "clad " "all " "in " glad "ness "
  "\nDoth " "laugh " "at " Win "ter's " sad "ness "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  "\nThe " "spring " "clad " "all " "in " glad "ness "
  "\nDoth " "laugh " "at " Win "ter's " sad "ness "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  
  "\nAnd " "to " "the " bag "pipe's " "sound "
  "\nThe " "nymphs " "tread " "out " "their " "ground. "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la " "la "
  "\nAnd " "to " "the " bag "pipe's " "sound "
  "\nThe " "nymphs " "tread " "out " "their " "ground. "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la " "la "

  \set stanza = "3."
  "\nFie " "then! " "why " "sit " "we " mus "ing, "
  "\nLove's " "sweet " de "light " re fus "ing? "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  "\nFie " "then! " "why " "sit " "we " mus "ing, "
  "\nLove's " "sweet " de "light " re fus "ing? "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  
  "\nSay, " dain "ty " "nymphs, " "and " "speak "
  "\nShall " "we " "play " bar "ley " "break? "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la " "la "
  "\nSay, " dain "ty " "nymphs, " "and " "speak "
  "\nShall " "we " "play " bar "ley " "break? "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la " "la "
}

wordsTenorOneA = \lyricmode {
  Now is the month of may- ing when mer- ry lads are play- ing:
  Fa la la la la la la,
  fa la la la la la la.
  Now
  la.
  Each with his bon- ny lass up- on the green- y grass
  Fa la la la la
  fa la la la
  fa la la la la
  fa la la la

  Each
  la
}

wordsTenorOneB = \lyricmode {
  The spring clad all in glad- ness
  Doth laugh at Win- ter's sad- ness
  Fa la la la la la la,
  fa la la la la la la.
  The
  la.
  And to the bag- pipe's sound
  The nymphs tread out their ground.
  Fa la la la la
  fa la la la
  fa la la la la
  fa la la la

  And
  la
}

wordsTenorOneC = \lyricmode {
  Fie then! why sit we mus- ing,
  Love's sweet de- light re- fus- ing?
  Fa la la la la la la,
  fa la la la la la la.
  Fie
  la.
  Say, dain- ty nymphs, and speak
  Shall we play bar- ley break?
  Fa la la la la
  fa la la la
  fa la la la la
  fa la la la

  Say,
  la
}

wordsTenorOneSingle = \lyricmode {
  \set stanza = "1."
  Now is the month of may- ing when mer- ry lads are play- ing:
  Fa la la la la la la,
  fa la la la la la la.
  Now is the month of may- ing when mer- ry lads are play- ing:
  Fa la la la la la la,
  fa la la la la la la.
  Each with his bon- ny lass up- on the green- y grass
  Fa la la la la
  fa la la la
  fa la la la la
  fa la la la
  Each with his bon- ny lass up- on the green- y grass
  Fa la la la la
  fa la la la
  fa la la la la
  fa la la la

  \set stanza = "2."
  The spring clad all in glad- ness
  Doth laugh at Win- ter's sad- ness
  Fa la la la la la la,
  fa la la la la la la.
  The spring clad all in glad- ness
  Doth laugh at Win- ter's sad- ness
  Fa la la la la la la,
  fa la la la la la la.

  And to the bag- pipe's sound
  The nymphs tread out their ground.
  Fa la la la la
  fa la la la
  fa la la la la
  fa la la la
  And to the bag- pipe's sound
  The nymphs tread out their ground.
  Fa la la la la
  fa la la la
  fa la la la la
  fa la la la

  \set stanza = "3."
  Fie then! why sit we mus- ing,
  Love's sweet de- light re- fus- ing?
  Fa la la la la la la,
  fa la la la la la la.
  Fie then! why sit we mus- ing,
  Love's sweet de- light re- fus- ing?
  Fa la la la la la la,
  fa la la la la la la.

  Say, dain- ty nymphs, and speak
  Shall we play bar- ley break?
  Fa la la la la
  fa la la la
  fa la la la la
  fa la la la
  Say, dain- ty nymphs, and speak
  Shall we play bar- ley break?
  Fa la la la la
  fa la la la
  fa la la la la
  fa la la la
}

wordsTenorOneMidi = \lyricmode {
  \set stanza = "1."
  "Now " "is " "the " "month " "of " may "ing " "when " mer "ry " "lads " "are " play "ing: "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  "\nNow " "is " "the " "month " "of " may "ing " "when " mer "ry " "lads " "are " play "ing: "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  "\nEach " "with " "his " bon "ny " "lass " up "on " "the " green "y " "grass "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la "
  "\nfa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la "
  "\nEach " "with " "his " bon "ny " "lass " up "on " "the " green "y " "grass "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la "
  "\nfa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la "

  \set stanza = "2."
  "\nThe " "spring " "clad " "all " "in " glad "ness "
  "\nDoth " "laugh " "at " Win "ter's " sad "ness "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  "\nThe " "spring " "clad " "all " "in " glad "ness "
  "\nDoth " "laugh " "at " Win "ter's " sad "ness "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "

  "\nAnd " "to " "the " bag "pipe's " "sound "
  "\nThe " "nymphs " "tread " "out " "their " "ground. "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la "
  "\nfa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la "
  "\nAnd " "to " "the " bag "pipe's " "sound "
  "\nThe " "nymphs " "tread " "out " "their " "ground. "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la "
  "\nfa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la "

  \set stanza = "3."
  "\nFie " "then! " "why " "sit " "we " mus "ing, "
  "\nLove's " "sweet " de "light " re fus "ing? "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  "\nFie " "then! " "why " "sit " "we " mus "ing, "
  "\nLove's " "sweet " de "light " re fus "ing? "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "

  "\nSay, " dain "ty " "nymphs, " "and " "speak "
  "\nShall " "we " "play " bar "ley " "break? "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la "
  "\nfa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la "
  "\nSay, " dain "ty " "nymphs, " "and " "speak "
  "\nShall " "we " "play " bar "ley " "break? "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la "
  "\nfa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la "
}

wordsTenorTwoA = \lyricmode {
  Now is the month of may- ing when mer- ry lads are play- ing:
  Fa la la la la la la,
  fa la la la la la la.
  Now
  la.
  Each with his bon- ny lass up- on the green- y grass
  Fa la la la la
  fa la la la la la
  fa la
  Each
  la
}

wordsTenorTwoB = \lyricmode {
  The spring clad all in glad- ness
  Doth laugh at Win- ter's sad- ness
  Fa la la la la la la,
  fa la la la la la la.
  The
  la.
  And to the bag- pipe's sound
  The nymphs tread out their ground.
  Fa la la la la
  fa la la la la la
  fa la
  And
  la
}

wordsTenorTwoC = \lyricmode {
  Fie then! why sit we mus- ing,
  Love's sweet de- light re- fus- ing?
  Fa la la la la la la,
  fa la la la la la la.
  Fie
  la.
  Say, dain- ty nymphs, and speak
  Shall we play bar- ley break?
  Fa la la la la
  fa la la la la la
  fa la
  Say,
  la
}

wordsTenorTwoSingle = \lyricmode {
  Now is the month of may- ing when mer- ry lads are play- ing:
  Fa la la la la la la,
  fa la la la la la la.
  Now is the month of may- ing when mer- ry lads are play- ing:
  Fa la la la la la la,
  fa la la la la la la.

  Each with his bon- ny lass up- on the green- y grass
  Fa la la la la
  fa la la la la la
  fa la
  Each with his bon- ny lass up- on the green- y grass
  Fa la la la la
  fa la la la la la
  fa la

  \set stanza = "2."
  The spring clad all in glad- ness
  Doth laugh at Win- ter's sad- ness
  Fa la la la la la la,
  fa la la la la la la.
  The spring clad all in glad- ness
  Doth laugh at Win- ter's sad- ness
  Fa la la la la la la,
  fa la la la la la la.

  And to the bag- pipe's sound
  The nymphs tread out their ground.
  Fa la la la la
  fa la la la la la
  fa la
  And to the bag- pipe's sound
  The nymphs tread out their ground.
  Fa la la la la
  fa la la la la la
  fa la

  \set stanza = "3."
  Fie then! why sit we mus- ing,
  Love's sweet de- light re- fus- ing?
  Fa la la la la la la,
  fa la la la la la la.
  Fie then! why sit we mus- ing,
  Love's sweet de- light re- fus- ing?
  Fa la la la la la la,
  fa la la la la la la.

  Say, dain- ty nymphs, and speak
  Shall we play bar- ley break?
  Fa la la la la
  fa la la la la la
  fa la
  Say, dain- ty nymphs, and speak
  Shall we play bar- ley break?
  Fa la la la la
  fa la la la la la
  fa la
}

wordsTenorTwoMidi = \lyricmode {
  "Now " "is " "the " "month " "of " may "ing " "when " mer "ry " "lads " "are " play "ing: "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  "\nNow " "is " "the " "month " "of " may "ing " "when " mer "ry " "lads " "are " play "ing: "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "

  "\nEach " "with " "his " bon "ny " "lass " up "on " "the " green "y " "grass "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nfa " "la "
  "\nEach " "with " "his " bon "ny " "lass " up "on " "the " green "y " "grass "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nfa " "la "

  \set stanza = "2."
  "\nThe " "spring " "clad " "all " "in " glad "ness "
  "\nDoth " "laugh " "at " Win "ter's " sad "ness "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  "\nThe " "spring " "clad " "all " "in " glad "ness "
  "\nDoth " "laugh " "at " Win "ter's " sad "ness "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "

  "\nAnd " "to " "the " bag "pipe's " "sound "
  "\nThe " "nymphs " "tread " "out " "their " "ground. "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nfa " "la "
  "\nAnd " "to " "the " bag "pipe's " "sound "
  "\nThe " "nymphs " "tread " "out " "their " "ground. "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nfa " "la "

  \set stanza = "3."
  "\nFie " "then! " "why " "sit " "we " mus "ing, "
  "\nLove's " "sweet " de "light " re fus "ing? "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  "\nFie " "then! " "why " "sit " "we " mus "ing, "
  "\nLove's " "sweet " de "light " re fus "ing? "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "

  "\nSay, " dain "ty " "nymphs, " "and " "speak "
  "\nShall " "we " "play " bar "ley " "break? "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nfa " "la "
  "\nSay, " dain "ty " "nymphs, " "and " "speak "
  "\nShall " "we " "play " bar "ley " "break? "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nfa " "la "
}

wordsBassA = \lyricmode {
  Now is the month of may- ing when mer- ry lads are play- ing:
  Fa la la la la la la,
  fa la la la la la la.
  Now
  la.
  Each with his bon- ny lass up- on the green- y grass
  Fa la la la la
  fa la la la la la
  fa la la la la la
  Each
  la
}

wordsBassB = \lyricmode {
  The spring clad all in glad- ness
  Doth laugh at Win- ter's sad- ness
  Fa la la la la la la,
  fa la la la la la la.
  The
  la.
  And to the bag- pipe's sound
  The nymphs tread out their ground.
  Fa la la la la
  fa la la la la la
  fa la la la la la
  And
  la
}

wordsBassC = \lyricmode {
  Fie then! why sit we mus- ing,
  Love's sweet de- light re- fus- ing?
  Fa la la la la la la,
  fa la la la la la la.
  Fie
  la.
  Say, dain- ty nymphs, and speak
  Shall we play bar- ley break?
  Fa la la la la
  fa la la la la la
  fa la la la la la
  Say,
  la
}

wordsBassSingle = \lyricmode {
  \set stanza = "1."
  Now is the month of may- ing when mer- ry lads are play- ing:
  Fa la la la la la la,
  fa la la la la la la.
  Now is the month of may- ing when mer- ry lads are play- ing:
  Fa la la la la la la,
  fa la la la la la la.

  Each with his bon- ny lass up- on the green- y grass
  Fa la la la la
  fa la la la la la
  fa la la la la la
  Each with his bon- ny lass up- on the green- y grass
  Fa la la la la
  fa la la la la la
  fa la la la la la

  \set stanza = "2."
  The spring clad all in glad- ness
  Doth laugh at Win- ter's sad- ness
  Fa la la la la la la,
  fa la la la la la la.
  The spring clad all in glad- ness
  Doth laugh at Win- ter's sad- ness
  Fa la la la la la la,
  fa la la la la la la.

  And to the bag- pipe's sound
  The nymphs tread out their ground.
  Fa la la la la
  fa la la la la la
  fa la la la la la
  And to the bag- pipe's sound
  The nymphs tread out their ground.
  Fa la la la la
  fa la la la la la
  fa la la la la la

  \set stanza = "3."
  Fie then! why sit we mus- ing,
  Love's sweet de- light re- fus- ing?
  Fa la la la la la la,
  fa la la la la la la.
  Fie then! why sit we mus- ing,
  Love's sweet de- light re- fus- ing?
  Fa la la la la la la,
  fa la la la la la la.

  Say, dain- ty nymphs, and speak
  Shall we play bar- ley break?
  Fa la la la la
  fa la la la la la
  fa la la la la la
  Say, dain- ty nymphs, and speak
  Shall we play bar- ley break?
  Fa la la la la
  fa la la la la la
  fa la la la la la
}

wordsBassMidi = \lyricmode {
  \set stanza = "1."
  "Now " "is " "the " "month " "of " may "ing " "when " mer "ry " "lads " "are " play "ing: "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  "\nNow " "is " "the " "month " "of " may "ing " "when " mer "ry " "lads " "are " play "ing: "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "

  "\nEach " "with " "his " bon "ny " "lass " up "on " "the " green "y " "grass "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nEach " "with " "his " bon "ny " "lass " up "on " "the " green "y " "grass "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "

  \set stanza = "2."
  "\nThe " "spring " "clad " "all " "in " glad "ness "
  "\nDoth " "laugh " "at " Win "ter's " sad "ness "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  "\nThe " "spring " "clad " "all " "in " glad "ness "
  "\nDoth " "laugh " "at " Win "ter's " sad "ness "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "

  "\nAnd " "to " "the " bag "pipe's " "sound "
  "\nThe " "nymphs " "tread " "out " "their " "ground. "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nAnd " "to " "the " bag "pipe's " "sound "
  "\nThe " "nymphs " "tread " "out " "their " "ground. "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "

  \set stanza = "3."
  "\nFie " "then! " "why " "sit " "we " mus "ing, "
  "\nLove's " "sweet " de "light " re fus "ing? "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "
  "\nFie " "then! " "why " "sit " "we " mus "ing, "
  "\nLove's " "sweet " de "light " re fus "ing? "
  "\nFa " "la " "la " "la " "la " "la " "la, "
  "\nfa " "la " "la " "la " "la " "la " "la. "

  "\nSay, " dain "ty " "nymphs, " "and " "speak "
  "\nShall " "we " "play " bar "ley " "break? "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nSay, " dain "ty " "nymphs, " "and " "speak "
  "\nShall " "we " "play " bar "ley " "break? "
  "\nFa " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
  "\nfa " "la " "la " "la " "la " "la "
}

\book {
  \bookOutputSuffix "repeat"
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
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "soprano"
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
%          \new Lyrics \lyricsto "alto" \wordsAltoA
%          \new Lyrics \lyricsto "alto" \wordsAltoB
%          \new Lyrics \lyricsto "alto" \wordsAltoC
        >>
                                % Single tenor one staff
        \new Staff \with { instrumentName = #"Tenor One" shortInstrumentName = #"T1" } <<
          \new Voice = "tenorone" \tenorOne
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneA
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneB
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneC
        >>
                                % Single tenor two staff
        \new Staff \with { instrumentName = #"Tenor Two" shortInstrumentName = #"T2" } <<
          \new Voice = "tenortwo" \tenorTwo
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoA
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoB
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoC
        >>
                                % Single bass staff
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \bass
%          \new Lyrics \lyricsto "bass" \wordsBassA
%          \new Lyrics \lyricsto "bass" \wordsBassB
%          \new Lyrics \lyricsto "bass" \wordsBassC
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
%          \new Lyrics \lyricsto "soprano" \wordsSopA
%          \new Lyrics \lyricsto "soprano" \wordsSopB
%          \new Lyrics \lyricsto "soprano" \wordsSopC
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
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneA
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneB
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneC
        >>
                                % Single tenor two staff
        \new Staff \with { instrumentName = #"Tenor Two" shortInstrumentName = #"T2" } <<
          \new Voice = "tenortwo" \tenorTwo
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoA
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoB
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoC
        >>
                                % Single bass staff
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \bass
%          \new Lyrics \lyricsto "bass" \wordsBassA
%          \new Lyrics \lyricsto "bass" \wordsBassB
%          \new Lyrics \lyricsto "bass" \wordsBassC
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "tenor1"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
%          \new Lyrics \lyricsto "soprano" \wordsSopA
%          \new Lyrics \lyricsto "soprano" \wordsSopB
%          \new Lyrics \lyricsto "soprano" \wordsSopC
        >>
                                % Single alto staff
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
%          \new Lyrics \lyricsto "alto" \wordsAltoA
%          \new Lyrics \lyricsto "alto" \wordsAltoB
%          \new Lyrics \lyricsto "alto" \wordsAltoC
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
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoA
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoB
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoC
        >>
                                % Single bass staff
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" \bass
%          \new Lyrics \lyricsto "bass" \wordsBassA
%          \new Lyrics \lyricsto "bass" \wordsBassB
%          \new Lyrics \lyricsto "bass" \wordsBassC
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "tenor2"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
%          \new Lyrics \lyricsto "soprano" \wordsSopA
%          \new Lyrics \lyricsto "soprano" \wordsSopB
%          \new Lyrics \lyricsto "soprano" \wordsSopC
        >>
                                % Single alto staff
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
%          \new Lyrics \lyricsto "alto" \wordsAltoA
%          \new Lyrics \lyricsto "alto" \wordsAltoB
%          \new Lyrics \lyricsto "alto" \wordsAltoC
        >>
                                % Single tenor one staff
        \new Staff \with { instrumentName = #"Tenor One" shortInstrumentName = #"T1" } <<
          \new Voice = "tenorone" \tenorOne
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneA
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneB
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneC
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
%          \new Lyrics \lyricsto "bass" \wordsBassA
%          \new Lyrics \lyricsto "bass" \wordsBassB
%          \new Lyrics \lyricsto "bass" \wordsBassC
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice \RehearsalTrack
          \new Voice = "soprano" \soprano
%          \new Lyrics \lyricsto "soprano" \wordsSopA
%          \new Lyrics \lyricsto "soprano" \wordsSopB
%          \new Lyrics \lyricsto "soprano" \wordsSopC
        >>
                                % Single alto staff
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" \alto
%          \new Lyrics \lyricsto "alto" \wordsAltoA
%          \new Lyrics \lyricsto "alto" \wordsAltoB
%          \new Lyrics \lyricsto "alto" \wordsAltoC
        >>
                                % Single tenor one staff
        \new Staff \with { instrumentName = #"Tenor One" shortInstrumentName = #"T1" } <<
          \new Voice = "tenorone" \tenorOne
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneA
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneB
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneC
        >>
                                % Single tenor two staff
        \new Staff \with { instrumentName = #"Tenor Two" shortInstrumentName = #"T2" } <<
          \new Voice = "tenortwo" \tenorTwo
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoA
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoB
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoC
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
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice { \RehearsalTrack \RehearsalTrack \RehearsalTrack }
          \new Voice = "soprano" { \soprano \soprano \soprano }
          \new Lyrics \lyricsto "soprano" \wordsSopSingle
        >>
                                % Single alto staff
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" { \alto \alto \alto }
          \new Lyrics \lyricsto "alto" \wordsAltoSingle
        >>
                                % Single tenor one staff
        \new Staff \with { instrumentName = #"Tenor One" shortInstrumentName = #"T1" } <<
          \new Voice = "tenorone" { \tenorOne \tenorOne \tenorOne }
          \new Lyrics \lyricsto "tenorone" \wordsTenorOneSingle
        >>
                                % Single tenor two staff
        \new Staff \with { instrumentName = #"Tenor Two" shortInstrumentName = #"T2" } <<
          \new Voice = "tenortwo" { \tenorTwo \tenorTwo \tenorTwo }
          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoSingle
        >>
                                % Single bass staff
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" { \bass \bass \bass }
          \new Lyrics \lyricsto "bass" \wordsBassSingle
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice { \RehearsalTrack \RehearsalTrack \RehearsalTrack }
          \new Voice = "soprano" { \soprano \soprano \soprano }
          \new Lyrics \lyricsto "soprano" \wordsSopMidi
        >>
                                % Single alto staff
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" { \alto \alto \alto }
%          \new Lyrics \lyricsto "alto" \wordsAltoMidi
        >>
                                % Single tenor one staff
        \new Staff \with { instrumentName = #"Tenor One" shortInstrumentName = #"T1" } <<
          \new Voice = "tenorone" { \tenorOne \tenorOne \tenorOne }
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneMidi
        >>
                                % Single tenor two staff
        \new Staff \with { instrumentName = #"Tenor Two" shortInstrumentName = #"T2" } <<
          \new Voice = "tenortwo" { \tenorTwo \tenorTwo \tenorTwo }
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoMidi
        >>
                                % Single bass staff
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" { \bass \bass \bass }
%          \new Lyrics \lyricsto "bass" \wordsBassMidi
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-alto"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice { \RehearsalTrack \RehearsalTrack \RehearsalTrack }
          \new Voice = "soprano" { \soprano \soprano \soprano }
%          \new Lyrics \lyricsto "soprano" \wordsSopMidi
        >>
                                % Single alto staff
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" { \alto \alto \alto }
          \new Lyrics \lyricsto "alto" \wordsAltoMidi
        >>
                                % Single tenor one staff
        \new Staff \with { instrumentName = #"Tenor One" shortInstrumentName = #"T1" } <<
          \new Voice = "tenorone" { \tenorOne \tenorOne \tenorOne }
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneMidi
        >>
                                % Single tenor two staff
        \new Staff \with { instrumentName = #"Tenor Two" shortInstrumentName = #"T2" } <<
          \new Voice = "tenortwo" { \tenorTwo \tenorTwo \tenorTwo }
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoMidi
        >>
                                % Single bass staff
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" { \bass \bass \bass }
%          \new Lyrics \lyricsto "bass" \wordsBassMidi
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor1"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice { \RehearsalTrack \RehearsalTrack \RehearsalTrack }
          \new Voice = "soprano" { \soprano \soprano \soprano }
%          \new Lyrics \lyricsto "soprano" \wordsSopMidi
        >>
                                % Single alto staff
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" { \alto \alto \alto }
%          \new Lyrics \lyricsto "alto" \wordsAltoMidi
        >>
                                % Single tenor one staff
        \new Staff \with { instrumentName = #"Tenor One" shortInstrumentName = #"T1" } <<
          \new Voice = "tenorone" { \tenorOne \tenorOne \tenorOne }
          \new Lyrics \lyricsto "tenorone" \wordsTenorOneMidi
        >>
                                % Single tenor two staff
        \new Staff \with { instrumentName = #"Tenor Two" shortInstrumentName = #"T2" } <<
          \new Voice = "tenortwo" { \tenorTwo \tenorTwo \tenorTwo }
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoMidi
        >>
                                % Single bass staff
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" { \bass \bass \bass }
%          \new Lyrics \lyricsto "bass" \wordsBassMidi
        >>
      >>
    >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor2"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice { \RehearsalTrack \RehearsalTrack \RehearsalTrack }
          \new Voice = "soprano" { \soprano \soprano \soprano }
%          \new Lyrics \lyricsto "soprano" \wordsSopMidi
        >>
                                % Single alto staff
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" { \alto \alto \alto }
%          \new Lyrics \lyricsto "alto" \wordsAltoMidi
        >>
                                % Single tenor one staff
        \new Staff \with { instrumentName = #"Tenor One" shortInstrumentName = #"T1" } <<
          \new Voice = "tenorone" { \tenorOne \tenorOne \tenorOne }
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneMidi
        >>
                                % Single tenor two staff
        \new Staff \with { instrumentName = #"Tenor Two" shortInstrumentName = #"T2" } <<
          \new Voice = "tenortwo" { \tenorTwo \tenorTwo \tenorTwo }
          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoMidi
        >>
                                % Single bass staff
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" { \bass \bass \bass }
%          \new Lyrics \lyricsto "bass" \wordsBassMidi
        >>
      >>
    >>
    \midi {}
  }
}
\book {
  \bookOutputSuffix "midi-bass"
  \score {
    \unfoldRepeats
    <<
      \new ChoirStaff <<
                                % Single soprano staff
        \new Staff \with { instrumentName = #"Soprano" shortInstrumentName = #"S" } <<
          \new Voice { \RehearsalTrack \RehearsalTrack \RehearsalTrack }
          \new Voice = "soprano" { \soprano \soprano \soprano }
%          \new Lyrics \lyricsto "soprano" \wordsSopMidi
        >>
                                % Single alto staff
        \new Staff \with { instrumentName = #"Alto" shortInstrumentName = #"A" } <<
          \new Voice = "alto" { \alto \alto \alto }
%          \new Lyrics \lyricsto "alto" \wordsAltoMidi
        >>
                                % Single tenor one staff
        \new Staff \with { instrumentName = #"Tenor One" shortInstrumentName = #"T1" } <<
          \new Voice = "tenorone" { \tenorOne \tenorOne \tenorOne }
%          \new Lyrics \lyricsto "tenorone" \wordsTenorOneMidi
        >>
                                % Single tenor two staff
        \new Staff \with { instrumentName = #"Tenor Two" shortInstrumentName = #"T2" } <<
          \new Voice = "tenortwo" { \tenorTwo \tenorTwo \tenorTwo }
%          \new Lyrics \lyricsto "tenortwo" \wordsTenorTwoMidi
        >>
                                % Single bass staff
        \new Staff \with { instrumentName = #"Bass" shortInstrumentName = #"B" } <<
          \new Voice = "bass" { \bass \bass \bass }
          \new Lyrics \lyricsto "bass" \wordsBassMidi
        >>
      >>
    >>
    \midi {}
  }
}
