\version "2.20.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Isle of Innisfree"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Richard Farrelly"
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

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
}

TempoTrack = {
  \global
  \set Score.tempoHideNote = ##t
  \tempo 4=56
  s1-\markup \upright \bold {Moderato espressivo}
  s2 \tempo 4=50 s4-\markup \upright \bold rit. \tempo 4=56 s-\markup \upright \bold {a tempo}
  \repeat volta 2 {
    s1*23
  }
  \alternative {
    {
      s1*2
      s4 \tempo 4=50 s4.-\markup \upright \bold rit. \tempo 4=56 s4.-\markup \upright \bold {a tempo}
    }
    {
      s1*2
    }
  }
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "57a" } s1*2
  \repeat volta 2 {
    s1
    \mark \markup { \circle "57b" } s1*3
    \mark \markup { \circle "57c" } s1*3
    \mark \markup { \circle "58a" } s1*3
    \mark \markup { \circle "58b" } s1*3
    \mark \markup { \circle "58c" } s1*3
    \mark \markup { \circle "58d" } s1*3
    \mark \markup { \circle "59a" } s1*3
    \mark \markup { \circle "59b" } s1
  }
  \alternative {
    {
      s1*2
      \mark \markup { \circle "59c" } s1
    }
    {
      s1*2
    }
  }
}

ChordTrack = \chordmode {
  g1
  c4:maj7/g c:6/e ees:7.13- a8:m7 d:7.9-
  \repeat volta 2 {
    g2. s8 bes:dim
    d2.:9 a4:m7 % 57b
    d1:7
    g2.:6 a8:7/d d:7
    g2 g4:7 g:aug % 57c
    c4 c:maj7 c2:6
    d1:7
    g2. a8:m7 d:7.9- % 58a
    g2. s8 bes:dim
    d2.:9 a4:m7
    d1:7 % 58b
    g2.:6 a8:7/d d:7
    g2 g4:7 g:aug
    c4 c:maj7 c2:6 % 58c
    d1:7
    g1
    c1 % 58d
    g1
    a1:7
    a2:m7/d d4:7 a8:7/d d:7 % 59a
    g2 g4:7 g:aug
    c4 c:maj7 c2:6
    d1:7 % 59b
  }
  \alternative {
    {
      g1
      s1
      c4:maj7 c8:6/e ees:7.13- d4:7 a8:m7 d:7.9- % 59c
    }
    {
      g2 s8 c4.:m6
      g1
    }
  }
}

melody = \relative {
  \global
  R1
  r2 r8 d' g a
  \repeat volta 2 {
    b4. a8 d, b d g
    fis4 e~8 a a g % 57b
    fis4. e8 d dis e c
    b2 r8 d g a
    b4. b8 b b a g % 57c
    c4 e,~8 a a g
    fis4. d8 c d fis a
    g2~8 d g a % 58a
    b4. a8 d, b d g
    fis4 e4~8 a a g
    fis4. e8 d dis e c % 58b
    b2 r8 d g a
    b4. b8 b b a g
    c4 e,4~8 a a g % 58c
    fis4. d8 c d fis a
    g2~8 g g fis
    e4. fis8 g g fis e % 58d
    g4 d4~8 e fis g
    a4. a8 a e fis g
    a2~8 d, g a % 59a
    b4. b8 b b a g
    c4 e,4~8 a a g
    fis4. d8 c d fis a % 59b
  }
  \alternative {
    {
      g2~8 r r4
      R1
      r2 r8 d g a
    }
    {
      g1~
      g2 r\fermata
    }
  }
  \bar "|."
}

wordsOne = \lyricmode {
  \set stanza = "1."
  I've met some folks who say that I'm a dream -- er __
  and I've no doubt there's truth in what they say,
  but sure a bo -- dy's bound to be a dream -- er __
  when all the things he loves are far a -- way. __
  And pre -- cious things are dreams un -- to an ex -- ile __
  they take him o'er the land a -- cross the sea,
  es -- pe -- cially when it hap -- pens he's an ex -- ile __
  from that dear love -- ly Isle of In -- nis -- free. __
  And when the moon -- light peeps a -- cross the roof -- tops __
  of this great ci -- ty,
  won -- d'rous tho' it be __
  I scarc -- ely feel it's won -- der or it's laugh -- ter __
  I'm once a -- gain back home in In -- nis -- free. __
  \set stanza = "2."
  I wan -- der
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  I wan -- der o'er green hills through dream -- y val -- leys __
  and find a peace no oth -- er land could know.
  I hear the birds make mu -- sic fit for an -- gls __
  and watch the riv -- ers tlaugh -- iong as they flow. __
  And then in -- to a hum -- ble shack I wan -- der __
  my dear old home, and ten -- der -- ly be --hold,
  the folks I love a -- round the turf fire gath -- ered __
  on bend -- ed knees their ro -- sa -- ry is told. __
  But dreams don't last tho' dreams are not for -- got -- ten, __
  and soon I'm back to stern re -- al -- i -- ty, __
  but tho' they paved the foot -- ways here with gold dust, __
  I still would choose the Isle of In -- nis- _ _ _ _ "-free." __
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  I've met some folks who say that I'm a dream -- er __
  and I've no doubt there's truth in what they say,
  but sure a bo -- dy's bound to be a dream -- er __
  when all the things he loves are far a -- way. __
  And pre -- cious things are dreams un -- to an ex -- ile __
  they take him o'er the land a -- cross the sea,
  es -- pe -- cially when it hap -- pens he's an ex -- ile __
  from that dear love -- ly Isle of In -- nis -- free. __
  And when the moon -- light peeps a -- cross the roof -- tops __
  of this great ci -- ty,
  won -- d'rous tho' it be __
  I scarc -- ely feel it's won -- der or it's laugh -- ter __
  I'm once a -- gain back home in In -- nis -- free. __
  \set stanza = "2."
  I wan -- der o'er green hills through dream -- y val -- leys __
  and find a peace no oth -- er land could know.
  I hear the birds make mu -- sic fit for an -- gls __
  and watch the riv -- ers tlaugh -- iong as they flow. __
  And then in -- to a hum -- ble shack I wan -- der __
  my dear old home, and ten -- der -- ly be --hold,
  the folks I love a -- round the turf fire gath -- ered __
  on bend -- ed knees their ro -- sa -- ry is told. __
  But dreams don't last tho' dreams are not for -- got -- ten, __
  and soon I'm back to stern re -- al -- i -- ty, __
  but tho' they paved the foot -- ways here with gold dust, __
  I still would choose the Isle of In -- nis- free. __
}

midiWords = \lyricmode {
  \set stanza = "1."
  "I've " "met " "some " "folks " "who " "say " "that " "I'm " "a " dream "er " 
  "\nand " "I've " "no " "doubt " "there's " "truth " "in " "what " "they " "say, "
  "\nbut " "sure " "a " bo "dy's " "bound " "to " "be " "a " dream "er " 
  "\nwhen " "all " "the " "things " "he " "loves " "are " "far " a "way. " 
  "\nAnd " pre "cious " "things " "are " "dreams " un "to " "an " ex "ile " 
  "\nthey " "take " "him " "o'er " "the " "land " a "cross " "the " "sea, "
  "\nes" pe "cially " "when " "it " hap "pens " "he's " "an " ex "ile " 
  "\nfrom " "that " "dear " love "ly " "Isle " "of " In nis "free. " 
  "\nAnd " "when " "the " moon "light " "peeps " a "cross " "the " roof "tops " 
  "\nof " "this " "great " ci "ty, "
  "\nwon" "d'rous " "tho' " "it " "be " 
  "\nI " scarc "ely " "feel " "it's " won "der " "or " "it's " laugh "ter " 
  "\nI'm " "once " a "gain " "back " "home " "in " In nis "free. " 
  \set stanza = "2."
  "\nI " wan "der " "o'er " "green " "hills " "through " dream "y " val "leys " 
  "\nand " "find " "a " "peace " "no " oth "er " "land " "could " "know. "
  "\nI " "hear " "the " "birds " "make " mu "sic " "fit " "for " an "gls " 
  "\nand " "watch " "the " riv "ers " tlaugh "iong " "as " "they " "flow. " 
  "\nAnd " "then " in "to " "a " hum "ble " "shack " "I " wan "der " 
  "\nmy " "dear " "old " "home, " "and " ten der "ly " be"hold, "
  "\nthe " "folks " "I " "love " a "round " "the " "turf " "fire " gath "ered " 
  "\non " bend "ed " "knees " "their " ro sa "ry " "is " "told. " 
  "\nBut " "dreams " "don't " "last " "tho' " "dreams " "are " "not " for got "ten, " 
  "\nand " "soon " "I'm " "back " "to " "stern " re al i "ty, " 
  "\nbut " "tho' " "they " "paved " "the " foot "ways " "here " "with " "gold " "dust, " 
  "\nI " "still " "would " "choose " "the " "Isle " "of " In nis "free. " 
}

pianoRH = \relative {
  \global
  r8 <d' g d'> <g c g'> <a ees' a> <b d b'> <g b g'> <e g e'> <c e c'>
  s1
  \repeat volta 2 {
    <d g b>4. a'8 s2
    s1 % 57b
    s1
    <g, b>2~8 d' <e g> <fis a>
    <d g b>4. <b d b'>8 s2 % 57c
    s1
    <fis c' fis>4. d'8 s2
    s1 % 58a
    <d g b>4. a'8 s2
    s1
    s1 % 58b
    <g, b>2~8 d' <e g> <fis a>
    <d g b>4. <b d b'>8 s2
    s1 % 58c
    <fis c' fis>4. d'8 s2
    s1
    s1 % 58d
    s1
    s1
    s1 % 59a
    <d g b>4. <b d b'>8 s2
    s1
    <fis c' fis>4. d'8 s2 % 59b
  }
  \alternative {
    {
      s2 s8 r r4
      r8 <d g d'> <g c g'> <a ees' a> <b d b'> <g b g'> <e g e'> <c e c'>
      s1 % 59c
    }
    {
      <b d g>2 r8 <ees g c> <g c ees> <a c g'>
      <b d b'>2 <d g d'>\fermata
    }
  }
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  s1
  b'8 g a b d d, <a c g'> <c f a>
  \repeat volta 2 {
    s2 d8 b <g d'> <g cis g'>
    <fis c' fis>4 <fis c' e>4~8 a' a g % 57b
    fis4. e8 d dis <a c e> <fis c'>
    s1
    s2 b'8 b a g % 57c
    <c, e c'>4 <c e>4~8 a' a g
    s2 c,8 d <a c fis> <c ees a>
    g'2~8 d <a c g'> <c fis a> % 58a
    s2 d8 b <g d'> <g cis g'>
    <fis c' fis>4 <fis c' e>4~8 a' a g
    f4. e8 d cis <a cis e> <fis c'> % 58b
    s1
    s2 b'8 b a g
    <a, e c'>4 <c e>4~8 a' a g % 58c
    s2 c,8 d <a c fis> <c ees a>
    g'2~8 <b, g'> <c g'> <d fis>
    e4. fis8 <e g> q <d fis> <c e> % 58d
    <b g'>4 <b d>4~8 e fis g
    a4. a8 a e fis g
    <c, a'>2~8 d <e g> <fis a> % 59a
    s2 b8 b a g
    <c, e c'>4 <d fis>4~8 a' a g
    s2 c,8 d fis a % 59b
  }
  \alternative {
    {
      g2~8 s4.
      s1
      b8 g a b d d, <a c g'> <c fis a> % 59c
    }
    {
      s1
      s1
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s1
  <c' e>4 g'8 g fis s4.
  \repeat volta 2 {
    s2 <g, b>4 s
    s2. <c e>4 % 57b
    <a c>2 q4 s
    s1
    s2 <b d>4 <b dis> % 57c
    s2. <a e'>4
    s2 fis4 s
    <b d>4. <a c>8 <g b>8 s4. % 58a
    s2 <g b>4 s
    s2. <c e>4
    <a c>2 q4 s % 58b
    s1
    s2 <b d>4 <b dis>
    s2. <a e'>4 % 58c
    s2 fis4 s
    <b d>4. <a c>8 <g b> s4.
    r8 <g c>4. g2 % 58d
    s2. <a c>4
    cis2~4 cis
    e4. ees8 d s4. % 59a
    s2 <b d>4 <b dis>
    s2. <a e'>4
    s2 fis4 s % 59b
  }
  \alternative {
    {
      <b d>4. <a c>8 <g b>4 s
      s1
      <c e>4 g'8 g fis s4. % 59c
    }
    {
      s1
      s1
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mp
  s1
  \repeat volta 2 {
    s1*16
    s1\mf
    s1*6
  }
  \alternative {
    {
      s1*3
    }
    {
      s1*2
    }
  }
}

pianoLH = \relative {
  \global
  \oneVoice
  s1
  g4 <e c'>8 <ees des'> <d b'> r s4
  \repeat volta 2 {
    g,8 d' b'4 d, b8 bes
    a8 d4 a8 d, r <a' g'>4 % 57b
    d,8 a' d e fis f e ees
    s1
    s1 % 57c
    s2 s8 r c cis
    d8 a d,4 a' d,
    s1 % 58a
    g8 d' b'4 d, b8 bes
    a8 d4 a8 d, r <a' g'>4
    d,8 a' d e fis f e ees % 58b
    s2 s8 r s4
    s1
    s2 s8 r c cis % 58c
    d8 a d,4 a' d,
    s1
    c'4 g c,2 % 58d
    s1
    s1
    s2 s8 r8 s4 % 59a
    s1
    s2 s8 r c' cis
    d8 a d,4 a' d,
  }
  \alternative {
    {
      s2 s8 d' g a
      b4 e8 fis g e c a
      g4 <e c'>8 <ees des'> <d c'> r s4
    }
    {
      g,8 d' g a b a g ees
      s1
    }
  }
  \bar "|."
}

pianoLHone = \relative {
  \global
  \voiceOne
  r8 b e f g e c a
  s2. e8 ees
  \repeat volta 2 {
    s1
    s1 % 57b
    s1
    g,8 d' e ees d r cis' c
    g,8 d' g fis f2 % 57c
    c8 e b' bes a s4.
    s1
    g,8 d' fis e d d e ees % 58a
    s1
    s1
    s1 % 58b
    g,8 d' e ees d s8 cis'8 c
    g,8 d' g fis f2
    c8 e b' bes a s4. % 58c
    s1
    g,8 d' fis e d g, a b
    s1 % 58d
    g8 d' fis e d g fis e
    r8 g fis f e4 g
    r8 a, e' g fis s cis' c % 59a
    g,8 d' g fis f2
    c8 e b' bes a s4.
    s1 % 59b
  }
  \alternative {
    {
      r8 d, fis e d d g a
      s1
      s2. e8 ees % 59c
    }
    {
      s1
      r16 d g a b d \oneVoice \change Staff = pianorh g a b2\fermata
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  \voiceTwo
  <g, d'>1->
  s2. d4
  \repeat volta 2 {
    s1
    s1 % 57b
    s1
    g2~8 r d'4
    g,2. g4 % 57c
    c2~8 s4.
    s1
    g2~8 r r4 % 58a
    s1
    s1
    s1 % 58b
    g2~8 s4.
    g2. g4
    c2~8 s4. % 58c
    s1
    g2~8 s4.
    s1 % 58d
    g2~g8 r r4
    a2~a4 a
    d,2~8 s d'4 % 59a
    g,2. g4
    c2~8 s4.
    s1 % 59b
  }
  \alternative {
    {
      g2~8 s4.
      s1
      s2. d4 % 59d
    }
    {
      s1
      g1_\fermata
    }
  }
  \bar "|."
}

\book {
  #(define output-suffix "repeat")
  \score {
    \context GrandStaff
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with { \consists "Volta_engraver" }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsOne
            \new Lyrics \lyricsto "melody" \wordsTwo
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh
          <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
          <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Score
        \remove "Volta_engraver"
        }
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  #(define output-suffix "single")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh
          <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pienolh
          <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
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
  #(define output-suffix "midi")
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
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
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh
          <<
            \clef "bass"
            \new Voice \pianoLH
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \midi {}
  }
}
