\version "2.25.0"

\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Christmas Carol"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Tom Lehrer"
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

global = {
  \override BreathingSign.text = \markup { \musicglyph "scripts.caesura.straight" }
  \key f \major
  \time 4/4
}

TempoTrack = {
  \global
  \set Score.tempoHideNote = ##t
  \tempo 4=220
  s1-\markup \upright \bold Merrily
  s1*3
  \repeat volta 2 {
    s1*15
  }
  \alternative {
    {
      s1*8
      s2 \tempo 4=70 s4. \tempo 4=220 s8 % 2c+++
    }
    {
      s1
      \tempo 4=150
      s1-\markup \upright \bold Slower
    }
  }
  s1*3
  \tempo 4=180
  s1-\markup \upright \bold Faster % 3a
  s1
  s1
  s1
  \tempo 4=150
  s1-\markup \upright \bold Slower
  s1*2 % 3b
  s2. \tempo 4=50 s4 \tempo 4=220
  s1-\markup \upright \bold "Tempo I"
  s1*4
  s2 \tempo 4=70 s4 \tempo 4=220 s4 % 3d
  s1*4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \circle "1a" } s1*4
  \repeat volta 2 {
    \mark \markup { \circle "1b" } s1*4
    \mark \markup { \circle "1c" } s1*4
    \mark \markup { \circle "1d" } s1*4
    \mark \markup { \circle "2a" } s1*3
  }
  \alternative {
    {
      s1
      \mark \markup { \circle "2b" } s1*4
      \mark \markup { \circle "2c" } s1*4
    }
    {
      \mark \markup { \circle "2d" } s1*2 
    }
  }
  s1*3
  \mark \markup { \circle "3a" } s1*5
  \mark \markup { \circle "3b" } s1*4
  \mark \markup { \circle "3c" } s1*4
  \mark \markup { \circle "3d" } s1*5
}

ChordTrack = \chordmode {
  s1*4
  \repeat volta 2 {
    f1 % 1b
    s2 d:7
    g1:7
    c1:7
    f2 f:7 % 1c
    bes2 ees:m
    f1
    g2:7 c:7
    f1 % 1d
    s2 d:7
    g1:7
    c1:7
    f2 f:7 % 2a
    bes2 bes:m
    f2 g:m7
  }
  \alternative {
    {
      c2:7 f
      s2 f:7 % 2b
      bes1
      s2 bes:m
      f1
      d2:m des % 2c %%% FIX
      f2 g:7
      c2 g:7
      c1:7
    }
    {
      c2:7 f % 2d
      s2. c4
    }
  }
  f2. c4
  f4 a:m bes g:m
  f4 c f2
  d2:m a:7 % 3a
  d4:m a:m bes f
  bes4 a d:m g:m
  a1
  f1
  g4:m7 c:7 f2 % 3b
  f4 c:7 f2
  s4 c:7 f c:7
  f1
  s2 d:7 % 3c
  g1:7
  c1:7
  f2 c:7
  d2:7 g4:m d:7 % 3d
  g1:m
  c1:7
  f2 c:7
  f
}

melodyA = \relative {
  a'4 c, f g % 1b
  a4 c bes a
  g4 d e f
  g4 e d des
  c4 f g a % 1c
  bes4 f c' bes
  a4 gis a f
  \tag #'dash {g4 a \slurDashed g(g) \slurSolid}
  \tag #'v1   {g4 a             g2             }
  \tag #'v2   {g4 a             g g            }
  a4 c, f g % 1d
  a4 c bes a
  g4 d e f
  g4 e d des
  c4 f g a % 2a
  bes4 f c' bes
  a4 f bes g
}

melodyB = \relative {
  f'4 e f4. f8
  c'4 c c4. d8 % 2b
  c4 bes bes4. f8
  bes4 bes bes4. c8
  bes4 a a a
  a4 a a a % 2c
  a4 g g4. f8
  e8 dis e4 f8 e f4
  g4 a bes4.\fermata gis8
}

melodyC = \relative {
  f'4 e f2 \section % 2d
  c4 f f4. e8
}

melodyD = \relative {
  f'4 a a(g)
  c4 c c4. bes8
  a4 g a4. \caesura d,8
  d4 a' a g % 3a
  f4 e d c
  d4 e f g
  a1 \caesura
  a4 a a c
  c4. bes8 a2 % 3b
  a4 g a c
  a4. g8 f4 \caesura g4\fermata
  a4 c, f g
  a4 c bes a % 3c
  g4 d e f
  g4 e d d
  f4 e8 f g4 f8 g
  a4 fis8(d) bes'4\fermata c % 3d
  d4 bes8 bes d,4 bes'
  a4 r g r
  f2 r
  R1
  \bar "|."
}


melody = \relative {
  \global
  R1*4
  \repeat volta 2 {
    \keepWithTag #'dash \melodyA
  }
  \alternative {
    { \melodyB }
    { \melodyC }
  }
  \melodyD
  \bar "|."
}

melodySingle = \relative {
  \global
  R1*4
  \keepWithTag #'v1 \melodyA \melodyB
  \keepWithTag #'v2 \melodyA \melodyC
  \melodyD
  \bar "|."
}

wordsOne = \lyricmode {
  Christ -- mas time is here, by gol -- ly,
  Dis -- ap -- pro -- val would be fol -- ly,
  Deck the halls with hunks of hol -- ly,
  Fill the cup and don't say when.
  Kill the tur -- keys, duck and chick -- ens,
  Mix the punch, drag out the Dick -- ens,
  E -- ven though the pros -- pect sick -- ens,
  Broth -- er, here we go a -- gain.
  On Christ -- mas Day you can't get sore,
  Your fel -- low man you must a -- dore,
  There's time to rob him all the more
  The oth -- er three hun -- dred and six -- ty four.
  Re-
}

wordsTwo = \lyricmode {
  la -- tions spar -- ing no ex -- pense,
  "'ll" Send some use -- less old u -- ten -- sil,
  Or a match -- ing pen and pen -- cil.
  \set ignoreMelismata = ##t
  "('Just" the thing I need! How "nice!')"
  \unset ignoreMelismata
  It does -- n't mat -- ter how sin -- cere it is,
  nor how heart -- felt the spir -- it,
  Sen -- ti -- ment will not en -- dear it,
  What's im -- por -- tant
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  is the price.
  Hark the \markup \italic {Her} -- \markup \italic ald \markup \italic Trib -- \markup \italic une sings,
  Ad -- ver -- tis -- ing won -- drous things.
  God rest you mer -- ry mer -- chants,
  may you make the Yule -- tide pay.
  An -- gels we have heard on high
  Tell us to go out and buy!
  So let the rau -- cous sleigh -- bells jin -- gle,
  Hail our dear old friend Kriss Krin -- gle,
  Driv -- ing his rein -- deer a -- cross the sky.
  Don't stand un -- der -- neath when they fly by.
}

wordsSingle = \lyricmode {
  Christ -- mas time is here, by gol -- ly,
  Dis -- ap -- pro -- val would be fol -- ly,
  Deck the halls with hunks of hol -- ly,
  Fill the cup and don't say when.
  Kill the tur -- keys, duck and chick -- ens,
  Mix the punch, drag out the Dick -- ens,
  E -- ven though the pros -- pect sick -- ens,
  Broth -- er, here we go a -- gain.
  On Christ -- mas Day you can't get sore,
  Your fel -- low man you must a -- dore,
  There's time to rob him all the more
  The oth -- er three hun -- dred and six -- ty four.
  Re -- la -- tions spar -- ing no ex -- pense,
  "'ll" Send some use -- less old u -- ten -- sil,
  Or a match -- ing pen and pen -- cil.
  \set ignoreMelismata = ##t
  "('Just" the thing I need! How "nice!')"
  \unset ignoreMelismata
  It does -- n't mat -- ter how sin -- cere it is,
  nor how heart -- felt the spir -- it,
  Sen -- ti -- ment will not en -- dear it,
  What's im -- por -- tant is the price.
  Hark the \markup \italic {Her} -- \markup \italic ald \markup \italic Trib -- \markup \italic une sings,
  Ad -- ver -- tis -- ing won -- drous things.
  God rest you mer -- ry mer -- chants,
  may you make the Yule -- tide pay.
  An -- gels we have heard on high
  Tell us to go out and buy!
  So let the rau -- cous sleigh -- bells jin -- gle,
  Hail our dear old friend Kriss Krin -- gle,
  Driv -- ing his rein -- deer a -- cross the sky.
  Don't stand un -- der -- neath when they fly by.

}

midiWords = \lyricmode {
  "\nChrist" "mas " "time " "is " "here, " "by " gol "ly, "
  "\nDis" ap pro "val " "would " "be " fol "ly, "
  "\nDeck " "the " "halls " "with " "hunks " "of " hol "ly, "
  "\nFill " "the " "cup " "and " "don't " "say " "when. "
  "\nKill " "the " tur "keys, " "duck " "and " chick "ens, "
  "\nMix " "the " "punch, " "drag " "out " "the " Dick "ens, "
  "\nE" "ven " "though " "the " pros "pect " sick "ens, "
  "\nBroth" "er, " "here " "we " "go " a "gain. "
  "\nOn " Christ "mas " "Day " "you " "can't " "get " "sore, "
  "\nYour " fel "low " "man " "you " "must " a "dore, "
  "\nThere's " "time " "to " "rob " "him " "all " "the " "more "
  "\nThe " oth "er " "three " hun "dred " "and " six "ty " "four. "
  "\nRe" la "tions " spar "ing " "no " ex "pense, "
  "\n'll " "Send " "some " use "less " "old " u ten "sil, "
  "\nOr " "a " match "ing " "pen " "and " pen "cil. "
  \set ignoreMelismata = ##t
  "\n('Just " "the " "thing " "I " "need! " "How " "nice!') "
  \unset ignoreMelismata
  "\nIt " does "n't " mat "ter " "how " sin "cere " "it " "is, "
  "\nnor " "how " heart "felt " "the " spir "it, "
  "\nSen" ti "ment " "will " "not " en "dear " "it, "
  "\nWhat's " im por "tant " "is " "the " "price. "
  "\nHark " "the " Her "ald " Trib "une " "sings, "
  "\nAd" ver tis "ing " won "drous " "things. "
  "\nGod " "rest " "you " mer "ry " mer "chants, "
  "\nmay " "you " "make " "the " Yule "tide " "pay. "
  "\nAn" "gels " "we " "have " "heard " "on " "high "
  "\nTell " "us " "to " "go " "out " "and " "buy! "
  "\nSo " "let " "the " rau "cous " sleigh "bells " jin "gle, "
  "\nHail " "our " "dear " "old " "friend " "Kriss " Krin "gle, "
  "\nDriv" "ing " "his " rein "deer " a "cross " "the " "sky. "
  "\nDon't " "stand " un der "neath " "when " "they " "fly " "by. "
}

pianoRH = \relative {
  \global
  <f'' a c>4-. q8-. q-. <e a c>4-. q8-. q-.
  <d bes' c>8-. q-. q-. q-. <e bes' c>4-. q-.
  <f a c>4-. q8-. q-. <e a c>4-. q8-. q-.
  <d bes' c>8-. q-. q-. q-. <e bes' c>2
  \repeat volta 2 {
    s1*15
  }
  \alternative {
    {
      s1*7
      <c, e>8 <b dis> <c e>4 <d f>8 <cis e> <d f>4 % 2c++
      <e g>4 <f a> <g bes>4.\fermata gis8
    }
    {
      s1 % 2d
      c,4 <c f> q4. <c e>8
    }
  }
  <c f>4 <c f a> s2
  s1
  q4 <c e g> <c f a>4. \caesura d8
  d4 <f a> <e a> <cis g'> % 3a
  <d f>4 <c e> <bes d> <a d>
  <bes d>4 <cis e> <d f> <d g>
  <cis a'>1 \caesura
  <f a>4 q q <f c'>
  s2 <f a> % 3b
  <f a>4 <e g> <f a> <f c'>
  s1*8
  <bes, e a>4-> r <bes e g>-> r % 3d++
  <a c f>2-> <bes' c>8-. q-. q-. q-.
  <a c f>4-. r r2
}

pianoRHoneA = \relative {
  a'4 c, f g % 1b
  a4 c bes a
  g4 d e f
  g4 e d des
  c4 f g a % 1c
  bes4 f c' bes
  a4 gis a f
  \tag #'dash {g4 a \slurDashed g(g) \slurSolid}
  \tag #'v1   {g4 a             g2             }
  \tag #'v2   {g4 a             g g            }
  a4 c, f g % 1d
  a4 c bes a
  g4 d e f
  g4 e d des
  c4 f g a % 2a
  bes4 f c' bes
  a4 f bes g
}

pianoRHoneB = \relative {
  f'4 e f4. f8
  c'4 c c4. d8 % 2b
  c4 bes bes4. f8
  bes4 bes bes4. c8
  bes4 a a a
  a4 a a a % 2c
  a4 g g4. f8
  s1
  s1
}

pianoRHoneC = \relative {
  f'4 e f2 \section % 2d
  s1
}

pianoRHoneD = \relative {
  s2 <f' a>4 <e g>
  c'4 c c4. bes8
  s1*6
  c4. bes8 s2 % 3b
  s1
  a4. g8 f4 \caesura g4\fermata
  a4 c, f g
  a4 c bes a % 3c
  g4 d e f
  g4 e d d
  f4 e8 f g4 f8 g
  a4 fis8(d) bes'4\fermata c % 3d
  d4 bes8 bes d,4 bes'
  s1
  s1
  s1
  \bar "|."
}

pianoRHone = \relative {
  \global
  \voiceOne
  s1*4
  \repeat volta 2 {
    \keepWithTag #'dash \pianoRHoneA
  }
  \alternative {
    \pianoRHoneB
    \pianoRHoneC
  }
  \pianoRHoneD
  \bar "|."
}

pianoRHoneSingle = \relative {
  \global
  \voiceOne
  s1*4
  \keepWithTag #'v1 \pianoRHoneA \pianoRHoneB
  \keepWithTag #'v2 \pianoRHoneA \pianoRHoneC
  \pianoRHoneD
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  \voiceTwo
  s1*4
  \repeat volta 2 {
    r4 a r <a c> % 1b
    r4 <f' a> r <c fis>
    r4 b r <b d>
    r4 <bes c> r <g bes>
    r4 <a c> e' <c f> % 1c
    r4 c r <des f>
    r4 <c f> r <a c>
    <b f'>2 <bes e>
    r4 a r <a c> % 1d
    r4 <f' a> r <c fis>
    r4 b r <b d>
    r4 <bes c> r <g bes>
    s4 <a c> r <c f> % 2a
    r4 d r <des f>
    c2 <d f>
  }
  \alternative {
    {
      <bes c>2 <a c>4. r8
      r4 <f' a> r q % 2b
      f4 d d2
      r4 <d f> r <des f>
      des4 c c r
      r4 <d f> r <des f> % 2c
      r4 <c f> <b f'>4. r8
      s1*2
    }
    {
      <bes c>2 <a c> \section % 2d
      s1
    }
  }
  s2 c
  <c f>4 <c e> <d f>2 s1
  s1*5 % 3a
  f4 e s2 % 3b
  s1
  f4 e c r
  r4 a r <a c>
  r4 <f' a> r <c fis> % 3c
  r4 b r <b d>
  r4 <bes c> r q
  a2 bes
  c2 d4 <fis a> % 3d
  r4 <d g>8 q r4 q
  s1*3
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
  s1*3
  \repeat volta 2 {
    s1\mf % 1b
    s1*14
  }
  \alternative {{s1*9}{s1*2}}
  s1*19
  s2 s\< % 3d+++
  s1\!
}

pianoLH = \relative {
  \global
  \oneVoice
  f'4 <a c> e q
  d4 <bes' c> e, q
  f4 <a c> e q
  d4 <bes' c> e, c \clef bass
  \repeat volta 2 {
    f,4 r c r % 1b
    f4 ees d r
    g4 r d r
    e4 c d e
    f2 ees % 1c
    d2 des
    f4 e c r
    g'4 d e c
    f4 e c r % 1d
    f4 ees d r
    g4 r d r
    e4 c d e
    f2 ees % 2a
    d2 des
    f2 g,
  }
  \alternative {
    {
      c2 f,4. r8
      f'2 ees % 2b
      d2 f4 bes,
      d2 des
      c2 f4 cis
      d2 des % 2c
      c2 d4 g,
      c2 <g' b>
      <c, bes'>2~4.\fermata r8
    }
    {
      c2 f, % 2d
      <f' a>4 q << {\voiceOne a4. g8} \\ {\voiceTwo f4 c} >> \oneVoice
    }
  }
  <a f'>4 f c'2
  a4 a bes g
  c4 c f,4. d'8
  f8 e d4 <cis e> <a a'> % 3a
  <d a'>4 <a a'> <bes f'> <a f'>
  <bes f'>4 <a a'> <d a'> <bes g'>
  <a e'>1 \caesura
  <f' c'>4 q q <a c>
  <g d'>4 c <f, c'>2 % 3b
  <f c'>4 <c c'> <f c'> <a c>
  <c, c'>4 <c bes'> <f a> \caesura r4\fermata
  f4 r c r
  f4 ees d r % 3c
  g4 r d r
  e4 r c r
  f4 c e c
  fis4 d g\fermata d % 3d
  g,4 r bes d
  c4-> r c-> r
  f2-> c
  f,4-. r \ottava #-1 f,-. \ottava #0 r
  \bar "|."
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with { \consists "Volta_engraver" }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \keepWithTag #'dash \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \pianoRH
            \new Voice \keepWithTag #'dash \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "treble"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChordNames \unfoldRepeats \ChordTrack
%        \new FretBoards \unfoldRepeats \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \unfoldRepeats \TempoTrack
          \new Staff
          <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice                \pianoRHoneSingle
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff
          <<
            \clef "treble"
            \new Voice \unfoldRepeats \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    <<
      <<
        \new ChordNames \unfoldRepeats \ChordTrack
%        \new FretBoards \unfoldRepeats \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \unfoldRepeats \TempoTrack
          \new Staff
          <<
            \new Voice \unfoldRepeats \RehearsalTrack
            \new Voice = "melody" \melodySingle
            \new Lyrics \lyricsto "melody" \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff
          <<
            \new Voice \unfoldRepeats \pianoRH
            \new Voice                \pianoRHoneSingle
            \new Voice \unfoldRepeats \pianoRHtwo
          >>
          \new Dynamics \unfoldRepeats \dynamicsPiano
          \new Staff
          <<
            \clef "treble"
            \new Voice \unfoldRepeats \pianoLH
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
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
          \new Staff
          <<
            \new Voice \pianoRH
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff
          <<
            \clef "treble"
            \new Voice \pianoLH
          >>
        >>
      >>
    >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}
