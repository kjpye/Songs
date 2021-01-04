\version "2.20.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "March of the Men of Harlech"
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
  \tempo 4=150
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
  \repeat volta 2 {
    f4 f d' d
    c4 bes a c
    bes4 d g d
    c4 bes a g
    f4 f d' d
    c4 bes a g
    a16-> c8.(c4) c4 e,
    f2. r4
  }
  g4.. f16 e4.. f16
  g4 g r2
  c4.. bes16 a4.. bes16
  c4 c r4 r8. c16
  c4.. bes16 a4.. bes16
  c4.. bes16 a4.. bes16
  c8.(d16) c8.(bes16) a8.(g16)  a8.(bes16)
  c4 c r2
  d4 e f f,
  bes4 c d d,
  g4 d' g d
  c4 bes a g
  f4 f d' d
  c bes a g
  a16 c8.(c4) c-> c
  f2.-> r4
  \bar "|."
}

dynamicsTenor = {
  s1
  s1
  \repeat volta 2 {
    s1
    s1
    s1
    s1
    s1
    s1
    s1
    s1
  }
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  s1
  \repeat volta 2 {
    s1^\mf^\markup{DESCANT}
    s1
    s1
    s1
    s1
    s1 \>
    s1 \!
    s1
  }
  s1^\mf
  s1
  s1
  s1
  s1^\cresc
  s1
  s1
  s1
  s1^\f
  s1
  s1
  s1
  s1
  s1^\cresc
  s1^\ff ^\markup{rall.}
  s1
}

bass= \relative c {
  \global
  \clef bass
  R1
  R1
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
  s1^\markup \upright \bold {In march time}
  s1
  \repeat volta 2 {
    s1^\mf
    s1
    s1
    s1
    s1
    s1 \<
    s1 \!
    s1
  }
  s1^\mf
  s1
  s1
  s1
  s1^\cresc
  s1
  s1
  s1
  s1^\f
  s1
  s1
  s1
  s1
  s1 \<
  s1^\ff \!
  s1
  \repeat volta 2 {
    s1^\f^\markup \roman MELODY
    s1
    s1
    s1
    s1
    s1 \<s1 \!
    s1
  }
  s1^\mf s1
  s1
  s1
  s1^\cresc
  s1
  s1
  s1
  s1^\f
  s1
  s1
  s1
  s1
  s1^\cresc
  s1^\ff^\markup \roman rall.
  s1
}

dynamicsPiano = {
  s1^\f
  s1
  \repeat volta 2 {
    s1^\mf
    s1*4
    s1\<
    s1\!
    s1
  }
  s1^\mf
  s1*3
  s1^\markup \italic cresc.
  s1*3
  s1^\f
  s1*4
  s1\<
  s1^\ff\!
  s1
  \repeat volta 2 {
    s1*4
    s1
    s1\<
    s1\!
    s1
  }
  s1^\mf
  s1*3
  s1^\markup \italic cresc.
  s1*3
  s1^\f
  s1*4
  s1^\markup \italic cresc.
  s1^\ff
  s1
}

pianoRH = \relative c' {
  \global
  s1
  <a c f>2. r4
  \repeat volta 2 {
    s1
    <f c' f>4 <bes e g> <c f a> <c f>
    <bes d bes'>4 <c fis a> <d g> <d f> % 5
    <c e>4 <b d> <c e> <g c>
    s1
    <c f>4 <c e g> <c f a> <d f d'>
    s1
    <a c f>2. r4 % 10
  }
  <e' g>4.. <d f>16 <c e>4.. <d f>16
  <e g>4 q r2
  <a c>4.. <g bes>16 <f a>4.. <g bes>16
  <a c>4 q r4 r8. q16
  <a c>4.. <g bes>16 <f a>4.. <g bes>16 % 15
  <a c>4.. <g bes>16 <f a>4.. <g bes>16
  <a c>8. <bes d>16 <a c>8. <g bes>16 <f a>8. <e g>16 <f a>8. <g bes>16
  <a c>4 q r2
  <f bes d>4 <e bes' d> <e a c> <c f c'>
  <bes f' bes>4 <c g' bes> <c g' a> <c f a> % 20
  <d g> s4 <d g> <d f>
  <c e>4 <b d> <c e> <g c>
  s1
  <c f>4 <bes e g> <c f a> <d f d'>
  s1 % 25
  <a c f>2.-> r4
  \repeat volta 2 {
    <a c f>4 s4 s2
    <c f c'>4 <c e g bes> <c f a> < f c'>
    <g bes>4 <a d> <g g'> <f d'>
    <e g c>4 <f bes> <e a> <c e g> % 30
    f4 f8. e16s2
    <c f c'>4 <e g bes> <f a> <f d'>
    <f a c>4 r <e g c> r
    <a c f>2. r4
  }
  <e g>4.. <d f>16 <c e>4.. <d f>16 % 35
  <e g>4 q r2
  <a c>4.. <g bes>16 <f a>4.. <g bes>16
  <a c>4 q r2
  <a c>4.. <g bes>16 <f a>4.. <g bes>16
  <a c>4.. <g bes>16 <f a>4.. <g bes>16 % 40
  <a c>8. <bes d>16 <a c>8. <g bes>16 <f a>8. <e g>16 <f a>8. <g bes>16
  s2 c4 <c, f c'>
  <d f d'>4 <g e'> <f c' f> <c f>
  <bes d bes'>4 <e c'> <d a' d> <a d>
  <d g> s4 <g d' g> <f g d'> % 45
  <e g c>4 <f bes> <e a> <e g>
  f4 s4 s2
  <c f c'>4 <e g bes> <f a> <f g d'>
  <f a c>4^\markup{rall.} r <e g c> r
  <f a c f>2.-> r4 % 50
  \bar "|."
}

pianoRHone = \relative c'' {
  \global
  \clef treble
  \voiceOne
  c16 a8.~a4 g4.. a16
  s1
  \repeat volta 2 {
    f4.. e16 d4.. e16
    s1
    s1 % 5
    s1
    f4.. e16 d4.. e16
    s1
    c'16 a8.~a4 g4.. a16
    s1 % 10
  }
  s1
  s1
  s1
  s1
  s1 % 15
  s1
  s1
  s1
  s1
  s1 % 20
  s4 bes8. a16 s2
  s1
  f4.. e16 d4.. e16
  s1
  c'16 a8.~a4 g4.. a16 % 25
  s1
  \repeat volta 2 {
    s4 f8. e16 d'4 d
    s1
    s1
    s1 % 30
    s2 d4 d
    s1
    s1
    s1
  }
  s1 % 35
  s1
  s1
  s1
  s1
  s1 % 40
  s1
  c4 c s2
  s1
  s1
  s4 d4 s2 % 45
  s1
  s4 f,4 d'4 d
  s1
  s1
  s1 % 50
  \bar "|."
}

pianoRHtwo = \relative c' {
  \global
  \clef treble
  \voiceTwo
  <c f>2 <bes e>
  s1
  \repeat volta 2 {
    <a c>2 <f bes>
    s1
    s1 % 5
    s1
    c'2 bes
    s1
    <c f>2 <bes e>
    s1 % 10
  }
  s1
  s1
  s1
  s1
  s1 % 15
  s1
  s1
  s1
  s1
  s1 % 20
  s4 d s2
  s1
  c2 bes
  s1
  <c f>2 <bes e> % 25
  s1
  \repeat volta 2 {
    s4 c d4~d8. e16
    s1
    s1
    s1 % 30
    s4 f8. e16 d4~d8. e16
    s1
    s1
    s1
  }
  s1 % 35
  s1
  s1
  s1
  s1
  s1 % 40
  s1
  a8. g16 a8. bes16 s2
  s1
  s1
  s4 fis8. a16 s2 % 45
  s1
  s2 d4~d8. e16
  s1
  s1
  s1 % 50
  \bar "|."
}

pianoLH = \relative c {
  \global
  \clef bass
  \oneVoice
  <c c'>2 c
  <f, f'>4 <c c'> <f, f'> r
  \repeat volta 2 {
    <f' f'>2 bes
    a4 <g g'> <f f'> <a f'>
    <g g'>4 a <bes g'> <b g'>
    <c g'>4 <g g'> <c g'> <bes e>
    <a f'>2 <bes f>
    <a f'>4 c f <bes, bes'>
    <c a'>2-> c
    <f, f'>4 <c c'> <f, f'> r
  }
  c''4 g' c g
  c,4 g' c g
  f4 c' f c
  f,4 c' f c
  f,4 c' f c
  f,4 c' f c
  f, 4 c'2 c,4
  f4 <c c'> <a a'> <f f'>
  <bes bes'>4 <g g'> <a a'> q
  <d, d'>4 <e e'> <f f'> <a a'>
  <bes bes'>4 <g g'>8. <a a'>16 <bes bes'>4 <b g'>
  <c g'>4 <g g'> <c g> <bes e>
  <a f'>2 <bes f'>
  <a f'>4 <g g'> <f f'> <bes bes'>
  <c a'>2 <c, c'>
  <f f'>4-> <c c'>-> <f, f'>-> r
  \repeat volta 2 {
    <f' f'>4 <a f'> s2
    a4 c f a
    <g d>4 <g c> <g bes> <g b>
    c4 d c <c, bes>
    s1
    a4 c d <bes bes'>
    <c c'>4 r <c bes'> r
    f4 c f, r
  }
  c'4 g' c g
  c,4 g' c g
  f4 c' f c
  f,4 c' f c
  f,4 c' f c
  f,4 c' f c
  f,4 c'2 c,4
  f8. e16 f8. g16 a4 a,
  <bes bes'>4 <bes' d> <a c> <a, f'>
  <g g'>4 <g' bes> <f a> <f, f'>
  <bes bes'>4 <c c'> <bes bes'> <b g'>
  s1
  s1
  a4 c d <bes bes'>
  <c c'>4-> r  <c bes'>-> r
  <f, f'>4-> <c c'>-> <f, f'>4-> r
  \bar "|."
}

pianoLHone = \relative c {
  \global
  \clef bass
  \voiceOne
  s1*2
  \repeat volta 2 { s1*8 }
  s1*16
  \repeat volta 2 {
    s2 f4~f8. g16
    s1*3
  }
  a2 bes4 f8. g16
  s1*3
  s1*11
  g4 d' c bes
  a2 bes4 f8. g16
  s1*3
  \bar "|."
}

pianoLHtwo = \relative c {
  \global
  \clef bass
  \voiceTwo
  s1*2
  \repeat volta 2 { s1*8 }
  s1*16
  \repeat volta 2 {
    s2 bes4 bes
    s1*3
  }
  d4~d8. c16 bes4 bes
  s1*3
  s1*11
  c2. c4
  d4~d8. c16 bes4 bes
  s1*3
  \bar "|."
}

wordsOneA = \lyricmode {
  Men of Har- lech! in the hol- low,
  Do ye hear, like rush- ing bil- low,
  Wave on wave that surg- ing fol- low,
  Bat- tle's dis- tant sound?
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
  Hon- our's self now proud- ly heads us!
  Cam- bria, God, and Right!
}

wordsEmpty = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

wordsTwoA = \lyricmode {
  Rock- y steeps and pass- es nar- row
  Flash with spear and flight of ar- row,
  Who would think of death or sor- row!
  Glo- ry crowns us now!
}

wordsTwoB = \lyricmode {
  Hurl the reel- ing horse- men o- ver!
  Let the earth dead foe en- cov- er!
  Fate of friend, of wife, of lov- er,
  Trem- bles on a blow!
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

wordsTenorMidi = \lyricmode {
  "Rock" "y " "steeps " "and " pass "es " nar "row "
  "\nFlash " "with " "spear " "and " "flight " "of " ar "row, "
  "\nWho " "would " "think " "of " "death " "or " sor "row! "
  "\nGlo" "ry " "crowns " "us " "now! "

  "\nHurl " "the " reel "ing " horse "men " o "ver! "
  "\nLet " "the " "earth " "dead " "foe " en cov "er! "
  "\nFate " "of " "friend, " "of " "wife, " "of " lov "er, "
  "\nTrem" "bles " "on " "a " "blow! "

  "\nStrands " "of " "life " "are " riv "en; "
  "\nBlow " "for " "blow " "is " giv "en, "
  "\nIn " dead "ly " "lock, " "or " bat "tle " "shock, "
  "\nAnd " mer "cy " "shrieks " "to " heav "en! "
  "\nMen " "of " Har "lech, " "young " "and " hoar "y, "
  "\nWould " "you " "win " "a " "name " "in " stor "y! "
  "\nStrike " "for " "home, " "for " "life, " "for " glo "ry! "
  "\nCam" "bria, " "God, " "and " "Right! "
}

wordsBassMidi = \lyricmode {
  "Men " "of " Har "lech! " "in " "the " hol "low, "
  "\nDo " "ye " "hear, " "like " rush "ing " bil "low, "
  "\nWave " "on " "wave " "that " surg "ing " fol "low, "
  "\nBat" "tle's " dis "tant " "sound? "

  "\n'Tis " "the " "tramp " "of " Sax "on " foe "men, "
  "\nSax" "on " spear "men, " Sax "on " bow "men "
  "\nBe " "they " "knights, " "or " "hinds, " "or " yeo "men, "
  "\nThey " "shall " "bite " "the " "ground! "

  "\nLoose " "the " "folds " a sun "der, "
  "\nFlag " "we " con "quer " un "der! "
  "\nThe " pla "cid " "sky, " "now " "bright " "on " "high, "
  "\nShall " "launch " "its " "bolt " "in " thun "der! "
  "\nOn" "ward! " "'tis " "our " coun "try " "needs " "us! "
  "\nHe " "is " bra "vest, " "he " "who " "leads " "us! "
  "\nHon" "our's " "self " "now " proud "ly " "heads " "us! "
  "\nCam" "bria, " "God, " "and " "Right! "

  "\nRock" "y " "steeps " "and " pass "es " nar "row "
  "\nFlash " "with " "spear " "and " "flight " "of " ar "row, "
  "\nWho " "would " "think " "of " "death " "or " sor "row! "
  "\nGlo" "ry " "crowns " "us " "now! "

  "\nHurl " "the " reel "ing " horse "men " o "ver! "
  "\nLet " "the " "earth " "dead " "foe " en cov "er! "
  "\nFate " "of " "friend, " "of " "wife, " "of " lov "er, "
  "\nTrem" "bles " "on " "a " "blow! "

  "\nStrands " "of " "life " "are " riv "en; "
  "\nBlow " "for " "blow " "is " giv "en, "
  "\nIn " dead "ly " "lock, " "or " bat "tle " "shock, "
  "\nAnd " mer "cy " "shrieks " "to " heav "en! "
  "\nMen " "of " Har "lech, " "young " "and " hoar "y, "
  "\nWould " "you " "win " "a " "name " "in " stor "y! "
  "\nStrike " "for " "home, " "for " "life, " "for " glo "ry! "
  "\nCam" "bria, " "God, " "and " "Right! "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
%  \unfoldRepeats
%  \articulate
    <<
      \new ChoirStaff <<
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
          \new Lyrics \lyricsto "bass" { \wordsOneB \wordsEmpty \wordsTwoB            }
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
    \midi {}
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
  \unfoldRepeats
%  \articulate
    <<
      \new ChoirStaff <<
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" } <<
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" { \wordsTwoA \wordsTwoB \wordsTwoC }
        >>
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" } <<
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" { \wordsOneA \wordsOneB \wordsOneC  \wordsTwoA \wordsTwoB \wordsTwoC }
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
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-bass"
  \score {
  \unfoldRepeats
%  \articulate
    <<
      \new ChoirStaff <<
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" } <<
          \new Voice = "tenor" \tenor
%          \new Lyrics \lyricsto "tenor" \wordsTenorMidi
        >>
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" } <<
          \new Voice = "bass" \bass
          \new Lyrics \lyricsto "bass" \wordsBassMidi
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
    \midi {}
  }
}

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
  \unfoldRepeats
%  \articulate
    <<
      \new ChoirStaff <<
        \new Dynamics \dynamicsTenor
        \new Staff \with { instrumentName = #"Tenor" } <<
          \new Voice = "tenor" \tenor
          \new Lyrics \lyricsto "tenor" \wordsTenorMidi
        >>
        \new Dynamics \dynamicsBass
        \new Staff \with { instrumentName = #"Bass" } <<
          \new Voice = "bass" \bass
%          \new Lyrics \lyricsto "bass" \wordsBassMidi
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
    \midi {}
  }
}
