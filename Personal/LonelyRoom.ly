\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lonely Room"
  subtitle    = \markup{from \italic Oklahoma!}
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Richard Rodgers"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Oscar Hammerstein II"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 4/4
  \tempo 4=104
}

TempoTrack = {
  \global
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "188a" } s1*4
  \textMark \markup { \box "188b" } s1*3
  \textMark \markup { \box "188c" } s1*3
  \textMark \markup { \box "188d" } s1*2
  \textMark \markup { \box "189a" } s1*2
  \textMark \markup { \box "189b" } s1*2
  \textMark \markup { \box "189c" } s1*2
  \textMark \markup { \box "189d" } s1*2
  \textMark \markup { \box "190a" } s1*2
  \textMark \markup { \box "190b" } s1*2
  \textMark \markup { \box "190c" } s1*2
  \textMark \markup { \box "190d" } s1*2
  \textMark \markup { \box "191a" } s1*2
  \textMark \markup { \box "191b" } s1*4
  \textMark \markup { \box "191c" } s1*3
  \textMark \markup { \box "191d" } s1*3
  \textMark \markup { \box "192a" } s1*3
  \textMark \markup { \box "192b" } s1*3
  \textMark \markup { \box "192c" } s1*3
  \textMark \markup { \box "192d" } s1*4
}

melody = \relative {
  \global
  R1 | r2 r4. fis'8 | e2 d4. fis8 | e2 d4. e16 fis |
  g4 8 8 8 fis d e | g2. 8 8 | fis4 8 8 4 g8 e |
  fis8 8 8 8 4 g8 e | fis4 8 8 8(g) e4 | fis2.\fermata \caesura 4 \section
  fis4 8 8 4 d8 e | fis4 2 8 8 |
  g4 8. 16 4 d8 e | g2. 8. 16 | % 189a
  g8 8 8 8 4 e8. g16 | d8 8 8 8 4 8 e8 |
  fis4 8 8 g g e e | d2. fis4 |
  fis4 4 4 d8 e | fis4 2 4 |
  g4 8 8 4 d8 e | g2. 8 8 | % 190a
  g8 8 8 8 4 e8 g | a4 2 g4 |
  b4 8 8 4 8 8 | 2. 8 8 |
  b4 d,8. a'16 g4. 16 a | b4 d,8. a'16 g4 8 8 |
  fis4 4 4 8 8 | 2. 8 8 | % 191a
  fis4. g16 a b2 | fis8 8 g a b2 | d,4 e8 fis g4 a8 b | cis2~4 r \section |
  r2 r4 r8 fis, | e2 d4. g8 | e2 d4. e16 fis |
  g4 8 8 8 fis d e | g2. 8 8 | fis4 8 8 4 g8 e |
  fis8 8 8 8 4 g8 e | fis4 8 8 8(g) e4 | fis2.\fermata \caesura 4 \section | % 192a
  d4 8 8 4 8 8 | 4 4 4. 8 | g4 8 8 4 ees8 f |
  g1 | fis4~ \tuplet 3/2 {8 g a} b2 | fis8 8 g a b2 |
  d,4 e8 fis g4 a8 b | cis2 2 | 1~ | 4 r r2 |
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  The floor creaks,
  The door squeaks,
  There's a field -- mouse a -- nib -- blin' on a broom
  And I set by my -- self, like a cob -- web on a shelf,
  By my -- self in a lone -- ly room.
  But when there's a moon in my win -- der
  And it slants down a -- beam 'crost my bed,
  When the shad -- der of a tree
  starts a  -- dan -- cin' on the wall
  And the dream starts a -- dan -- cin' in my head.
  And all the things that I wish for
  Turn out like I want them to be
  And I'm bet -- ter 'n that smart Al -- eck cow -- hand
  Who thinks he is bet -- ter than me!
  And the girl that I want ain't a -- fraid of my arms,
  And her own soft arms keep me warm,
  And her long yel -- ler hair falls a -- crost my face,
  Just like the rain in a storm! __

  The floor creaks,
  The door squeaks,
  And the mouse starts a -- nib -- blin' on the broom.
  And the sun flicks my eyes,
  It was all a pack o' lies!
  I'm a -- wake in a lone -- ly room
  I ain't gon -- na dream 'bout her arms no more!
  I ain't gon -- na leave her a -- lone!
  Go -- in' out -- side,
  Git my -- self a bride,
  Git me a wom -- ern to call my own. __
}

midiWords = \lyricmode {
  "The " "floor " "creaks, "
  "\nThe " "door " "squeaks, "
  "\nThere's " "a " field "mouse " a nib "blin' " "on " "a " "broom "
  "\nAnd " "I " "set " "by " my "self, " "like " "a " cob "web " "on " "a " "shelf, "
  "\nBy " my "self " "in " "a " lone "ly " "room. "
  "\nBut " "when " "there's " "a " "moon " "in " "my " win "der "
  "\nAnd " "it " "slants " "down " a "beam " "'crost " "my " "bed, "
  "\nWhen " "the " shad "der " "of " "a " "tree "
  "\nstarts " a dan "cin' " "on " "the " "wall "
  "\nAnd " "the " "dream " "starts " a dan "cin' " "in " "my " "head. "
  "\nAnd " "all " "the " "things " "that " "I " "wish " "for "
  "\nTurn " "out " "like " "I " "want " "them " "to " "be "
  "\nAnd " "I'm " bet "ter " "'n " "that " "smart " Al "eck " cow "hand "
  "\nWho " "thinks " "he " "is " bet "ter " "than " "me! "
  "\nAnd " "the " "girl " "that " "I " "want " "ain't " a "fraid " "of " "my " "arms, "
  "\nAnd " "her " "own " "soft " "arms " "keep " "me " "warm, "
  "\nAnd " "her " "long " yel "ler " "hair " "falls " a "crost " "my " "face, "
  "\nJust " "like " "the " "rain " "in " "a " "storm! " 

  "\nThe " "floor " "creaks, "
  "\nThe " "door " "squeaks, "
  "\nAnd " "the " "mouse " "starts " a nib "blin' " "on " "the " "broom. "
  "\nAnd " "the " "sun " "flicks " "my " "eyes, "
  "\nIt " "was " "all " "a " "pack " "o' " "lies! "
  "\nI'm " a "wake " "in " "a " lone "ly " "room "
  "\nI " "ain't " gon "na " "dream " "'bout " "her " "arms " "no " "more! "
  "\nI " "ain't " gon "na " "leave " "her " a "lone! "
  "\nGo" "in' " out "side, "
  "\nGit " my "self " "a " "bride, "
  "\nGit " "me " "a " wom "ern " "to " "call " "my " "own. " 
}

pianoRHone = \relative {
  \override Glissando.style = #'zigzag
  \global \clef bass
  <fis g>4 4 4 4 | 4 4 4 4 | 4 4 4 4 | 4 4 4 4 |
  4 4 4 4 | 4 4 4 4 | 4 4 4 4 |
  4 4 4 4 | 4 4 4 4 | <cis fis>2.\fermata \caesura r4 \clef treble \section |
  \repeat unfold 8 {cis''16(fis, d cis)} |
  \repeat unfold 8 {d'16(a g d)} | % 189a
  \repeat unfold 4 {e'16 a, g e} | a'16(d, b a) g'(d b g) d'(a g d) b'(e, d cis)
  b'16(fis e b) b'(fis e b) ais'(g e ais,) ais'(g e ais,) |
  ais'16(fis d ais) ais'(fis d ais) b'(fis d b) b'(fis d b) |
  \repeat unfold 8 {cis'16(fis, d cis) } \section |
  \repeat unfold 8 {d'16(a g d)} | % 190a
  \repeat unfold 8 {e'16(a, g e)} |
  e'16(b a e) e'(b a e) dis'(b a dis,) dis'(b a dis,) | % 190c
  dis'16(b gis dis) dis'(b gis dis) cis'(gis e cis) cis'(gis e cis) |
  d'16(a g d) d'(a g d) e'(a, g e) e'(a, g e) | % 190d
  d'16(a g d) d'(a g d) e'(a, g e) e'(a, g e) |
  b'16(fis e b) b'(fis e b) ais'(fis e ais,) ais'(fis e ais,) | % 191a
  ais'16(fis d ais) ais'(fis d ais) b'(fis d b) b'(fis d b) |
  \repeat unfold 2 {<fis b fis'>4 fis\glissando b'' <fis, b fis'>} | % 191b
  \change Staff = pianolh \voiceOne <d, fis b d>4 <e g cis e>8 <fis a d fis> \change Staff = pianorh \oneVoice <g b e g>4 <a cis fis a>8 <b d g b> |
  <c eis gis c>2~4-> r \clef bass \section |
  <fis, g>4 4 4 4 | 4 4 4 4 | 4 4 4 4 | % 191c
  4 4 4 4 | 4 4 4 4 | 4 4 4 4 |
  4 4 4 4 | 4 4 4 4 | <cis fis>2. \caesura r4 \clef treble \section % 192a
  <g''' b>1~ | 1 | \voiceOne r4 bes,,8 bes' ees, ees' f, f' |
  bes,8 bes' c, c' ees, ees' f, f' \oneVoice | \repeat unfold 2 {<fis,,, b fis'>4 fis\glissando b'' <fis, b fis'>} |
  \change Staff = pianolh \voiceOne <d, fis b d>4 <e g cis e>8 <fis a d fis> \oneVoice \change Staff = pianorh  <g b e g>4 <a cis fis a>8 <b d g b> | % 192d
  <cis eis gis cis>2 <a e' g cis> \showStaffSwitch \change Staff = pianolh |
  \voiceOne b,2^\markup\italic R.H. \hideStaffSwitch \change Staff = pianorh \oneVoice <cis'' fis cis'>2\fermata ~ | 4 r r2 |
  \bar "|."
}

pianoRHtwo = \relative {
  \global \voiceTwo
  s1*43
  <b' d>1~ | 1 | <g, bes ees g>1~ | 1 | % 192b++
  s1*6
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\p | s | s\pp | s |
  s1*6
  s1\pp | s | % 188d
  s1*18 |
  s4\mf s2\< s4\! | s4 s2\< s4\! | s1\cresc | s2\< s\sff | % 191b
  s1\pp | s | s |
  s1*6
  s1\mf | s | s | % 192b
  s1 | s2.\< s4\! | s4 s2\< s4\! |
  s4 s2.\cresc | s1-\markup\italic rit | s1\sff\< | s1\! |
}

pianoLHone = \relative {
  \global
  R1 | R \clef treble | <b d e g>1^\markup\italic "cross hands" | q |
  q1 | q \clef bass | <dis,, b' dis>2. <e b' e>4 |
  <dis b' dis>2. <e b' e>4 | <d b' d>2 <cis b' cis> | <fis ais>2.\fermata \caesura r4 \section
  b4 fis b fis | b fis b fis |
  b4 fis b fis | b fis b fis | % 189a
  c'4 g c g | g d g d |
  cis'4 fis, cis' fis, | b fis b fis |
  b4 fis b fis | b fis b fis \section |
  b4 fis b fis | b fis b fis | % 190a
  c'4 g c g | g d g d |
  g4 b, g' b, | e4 b e b |
  <f'' b>2(<e c'>) | <f b>(<e c'>) |
  cis4 fis, cis' fis, | b fis b fis | % 191a
  <d d'>4 r <g, g'> <g'' d'> | <d, d'> r <g, g'> <g'' d'> |
  \voiceTwo r8 <cis,, cis'>8 <b b'> <a a'> \oneVoice \ottava #-1 g fis e d \ottava #0 |
  cis'2~4-> r \section |
  R1 \clef treble | <b'' d e g>1 ^\markup\italic "cross hands" | 1 |
  q1 | 1 \clef bass | <dis,, b' dis>2. <e b' e>4 |
  <dis b' dis>2. <e b' e>4 | <d b' d>2 <c b' c> | <f ais>2. \caesura r4 | % 192a
  b,8 b' b, b' b, b' b, b' | b, b' b, b' b, b' b, b' | b, b' b, b' b, b' b, b' |
  b,8 b' b, b' b, b' b, b' | <d, d'>4 r <g, g'> <g'' d'> | <d, d'> r <g, g'> <g'' d'> |
  \voiceTwo r8 <c,, c'>8 <b b'> <a a'> \oneVoice \ottava #-1 g f d d \ottava #0 | % 192d
  <c' c'>2 <fis, fis'> | \voiceTwo b \oneVoice <b'' fis'>\fermata ~ | 4-> r r2 |
}

pianoLHtwo = \relative {
  \global \voiceTwo
  s1*53
}

\book {
  #(define output-suffix "single")
%  \paper {
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
%  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      #(layout-set-staff-size 18)
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsMelody
          \new Staff
          <<
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
