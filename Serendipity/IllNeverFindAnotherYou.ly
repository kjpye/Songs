\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I'll Never Find Another You"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Tom Springfield"
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
  \key ees \major
  \time 4/4
}

TempoTrack = {
  \tempo Moderately 4=114
  \set Score.tempoHideNote = ##t
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "1a" } s1*3
  \mark \markup { \box "1b" } s1
  \repeat volta 2 {
    s1*2
  \mark \markup { \box "1c" } s1*4
  \mark \markup { \box "1d" } s1*4
  \mark \markup { \box "2a" } s1*4
    \alternative {
      { \mark \markup { \box "2b" } s1*2 }
      {s1}
    }
  }
  s1
  \mark \markup { \box "2c" } s1*4
  \mark \markup { \box "2d" } s1*4
  \mark \markup { \box "3a" } s1*4
  \mark \markup { \box "3b" } s1*4
  \mark \markup { \box "3c" } s1*4
  \mark \markup { \box "3d" } s1*4
}

ChordTrack = \chordmode {
  ees1
  bes1
  ees1
  bes1 % 1b
  \repeat volta 2 {
    ees1
    aes1
    f1:7 % 1c
    bes1:7
    ees1
    g1:m
    aes1 % 1d
    bes1
    c1:m
    aes1
    bes2 aes % 2a
    g2:m aes4 aes:dim
    ees2/bes
    aes/c
    aes2:6 bes
    \alternative {
      {
        ees2 aes % 2b
        ees1
      }
      {ees2 aes}
    }
  }
  ees2. bes4/d
  c1:m % 2c
  aes1
  ees2/bes bes
  aes2. bes4/d
  c1:m % 2d
  bes2 aes
  ees1
  bes1:7
  ees1 % 3a
  aes1
  f1:7
  bes1:7
  ees1 g:m aes bes % 3b
  c1:m | aes | bes2 aes | g2:m aes4 aes:dim % 3c
  ees2/bes aes/c | aes:6 bes:7 | ees aes | ees1 | % 3d
}

melody = \relative {
  \global
  R1*3
  r2 ees'4 f % 1b
  \repeat volta 2 {
    g2 2
    bes4 aes2 g4
    f4. c8 f ees4 d8~ % 1c
    d2 ees4 f
    g2 bes
    c4 bes2 4
    c4. bes8 aes c4 bes8~ % 1d
    bes2 c4 d
    ees4. 8 8 4 f8~
    f4 ees2 4
    d4 4 c8 4. % 2a
    bes2 ees,4 f
    g4. bes8 aes g4 f8~
    f4. ees8 d f4 ees8~
    \alternative {
      {
        ees1~ % 2b
        ees2 4 f
      }
      {
        ees1\repeatTie ~
      }
    }
  }
  ees4 r g bes
  ees2 ees % 2c
  d4 c2 4
  bes2 aes4. 8
  g2 4 bes
  ees2 4. 8 % 2d
  d4 4 c c
  bes1~
  bes2 4 aes
  g2 4. aes8 % 3a
  aes4 2 g4
  f4. c8 f ees4 d8~
  d2 ees4 f
  g4. bes8 4 ees % 3b
  c4 bes2 4
  c4. bes8 aes c4 bes8~
  bes2 c4 d
  ees4. 8 8 4 f8~ % 3c
  f4 ees2 4
  d4 4 c8 4.
  bes2 ees,4 f
  g4. bes8 aes g4 f8~ % 3d
  f4. ees8 d f4 ees8~
  ees1~
  ees2.\fermata r4
  \bar "|."
}

wordsOne = \lyricmode {
  There's a new world some -- where they call the prom -- ised land __
  and I'll be there some -- day if you will hold my hand. __
  I still need you there be -- side __ me
  no mat -- ter what I do,
  for I know I'll nev -- er find an -- oth -- er you. __

  There is _

  It's a long, long jour -- ney, so stay by my side;
  when I walk through the storm you'll be my guide. __
  If they gave me a for -- tune, my pleas -- ure would be small. __
  I could lose it all to -- mor -- row and nev -- er mind at all. __
  But if I should lose your love, __ dear,
  I don't know what I'd do,
  for I know I'll nev -- er find __ an -- oth -- er you. __
}

wordsTwo = \lyricmode {
  _ _
  al -- ways some -- one for each of us they say __
  and you'll be my some -- one for ev -- er and a day. __
  I could search the whole world o -- ver un -- til my life is through,
  but Ι know I'll ne -- ver find an -- oth -- er you. __
y}

wordsSingle = \lyricmode {
  There's a new world some -- where they call the prom -- ised land __
  and I'll be there some -- day if you will hold my hand. __
  I still need you there be -- side __ me
  no mat -- ter what I do,
  for I know I'll nev -- er find an -- oth -- er you. __

  There is al -- ways some -- one for each of us they say __
  and you'll be my some -- one for ev -- er and a day. __
  I could search the whole world o -- ver un -- til my life is through,
  but Ι know I'll ne -- ver find an -- oth -- er you. __

  It's a long, long jour -- ney, so stay by my side;
  when I walk through the storm you'll be my guide. __
  If they gave me a for -- tune, my pleas -- ure would be small. __
  I could lose it all to -- mor -- row and nev -- er mind at all. __
  But if I should lose your love, __ dear,
  I don't know what I'd do,
  for I know I'll nev -- er find __ an -- oth -- er you. __
}

wordsMidi = \lyricmode {
  "There's " "a " "new " "world " some "where " "they " "call " "the " prom "ised " "land " 
  "\nand " "I'll " "be " "there " some "day " "if " "you " "will " "hold " "my " "hand. " 
  "\nI " "still " "need " "you " "there " be "side "  "me "
  "\nno " mat "ter " "what " "I " "do, "
  "\nfor " "I " "know " "I'll " nev "er " "find " an oth "er " "you. " 

  "\nThere " "is " al "ways " some "one " "for " "each " "of " "us " "they " "say " 
  "\nand " "you'll " "be " "my " some "one " "for " ev "er " "and " "a " "day. " 
  "\nI " "could " "search " "the " "whole " "world " o "ver " un "til " "my " "life " "is " "through, "
  "\nbut " "Ι " "know " "I'll " ne "ver " "find " an oth "er " "you. " 

  "\nIt's " "a " "long, " "long " jour "ney, " "so " "stay " "by " "my " "side; "
  "\nwhen " "I " "walk " "through " "the " "storm " "you'll " "be " "my " "guide. " 
  "\nIf " "they " "gave " "me " "a " for "tune, " "my " pleas "ure " "would " "be " "small. " 
  "\nI " "could " "lose " "it " "all " to mor "row " "and " nev "er " "mind " "at " "all. " 
  "\nBut " "if " "I " "should " "lose " "your " "love, "  "dear, "
  "\nI " "don't " "know " "what " "I'd " "do, "
  "\nfor " "I " "know " "I'll " nev "er " "find "  an oth "er " "you. " 
}

pianoRHone = \relative {
  \global
  ees'4 g8 bes aes g f bes, ~
  bes2 ~ 8 8 d f
  ees4 g8 bes aes g f bes,~
  bes8 8 8 8 <c ees>4 <d f> % 1b
  \repeat volta 2 {
    <bes g>2 q
    <c ees bes>4 <c ees aes>2 <c ees g>4
    <a f'>4. c8 q <a ees>4 <aes d>8~ % 1c
    q2 ees'4 f
    <bes, ees g>2 <ees g bes>
    <d g c>4 <d g bes>2 q4
    <c c'>4. <c bes'>8 <c aes'> <c c'>4 <d bes'>8~ % 1d
    q2 c'4 d
    <g, c ees>4. 8 8 4 <aes c f>8~
    q4 <aes c ees>2 4
    <f bes d>4 4 <ees aes c>8 4. % 2a
    <d g bes>2 ees4 f
    g4. bes8 <aes, ees' aes>8 g'4 f8~
    f4. ees8 <aes, d> f'4 ees8~
    \alternative {
      {
        ees1~ % 2b
        ees2 4 f
      }
      {
        ees4\repeatTie g8 bes aes g f ees~
      }
    }
  }
  ees2 <bes ees g>4 <bes f' bes>
  <ees g ees'>2 2 % 2c
  <d bes' d>4 <ees aes c>2 4
  <ees g bes>2 <d f aes>4. aes'8
  <bes, ees g>2 4 <bes f' bes>
  <ees g ees'>2 4. 8 % 2d
  <f bes d>4 4 <ees aes c> q
  bes'1~
  bes2 4 aes
  g2 4. 8 % 3a
  bes4 <c, ees aes>2 <c ees g>4
  f4. c8 <a f'>8 ees'4 <aes, d>8~
  q2 ees'4 f
  <bes, ees g>4. bes'8 4 ees % 3b
  <d, g c>4 <d g bes>2 4
  <c c'>4. bes'8 <c, aes'> c'4 <d, bes'>8~
  q2 c'4 d
  <g, c ees>4. 8 8 4 <aes c f>8~ % 3c
  q4 <aes c ees>2 4
  <f bes d>4 4 <ees aes c>8 4.
  <d g bes>2 ees4 f
  g4. bes8 <aes, ees' aes>8 g'4 f8~ % 3d
  f4. ees8 <aes, d> f'4 ees8~
  ees4 g8 bes aes g f ees~
  ees2 \appoggiatura f'8 <g, bes ees>4\fermata r4
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  s1*4
  \repeat volta 2 {
    s1*11
    s2 a % 2a+
    <bes ees>2 s4. c8~
    c2 s4. g8~
    \alternative {
      {g8 bes bes bes <aes c>4 8 <g bes>~ | 8 8 4 s2}
      {g4\repeatTie s c4. g8~}
    }
  }
  g2 s
  s1*6
  \partCombineApart r4 <bes ees>4 r q % 2d++
  r4 <bes ees> r q
  r4 <bes ees> r q % 3a
  \partCombineAutomatic
  s1
  a2 s
  s1
  s2 g'2 % 3b
  s1*6
  s2 aes, % 3c+++
  <bes ees>2 s4. c8~
  c2 s4. g8~
  g2 c4. g8~
  g2 s
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf
}

pianoLHone = \relative {
  \global
  <ees g>4 r r2
  r4 bes8 8 4 r
  <ees g>4 r r2
  r8 bes8 8 8 2 % 1b
  \repeat volta 2 {
    ees,4. g8 bes bes ees,4
    aes4. c8 ees ees aes,4
    f4 c'2 4 % 1c
    bes4 bes, r2
    ees4. g8 bes4 ees,
    g4. d'8 g4 g,
    aes4 ees'2 4 % 1d
    bes4 bes, r2
    c'4 g'2 4
    aes,4 c ees aes
    bes,4 bes' aes, aes' % 2a
    g4 g, c b
    bes2 c
    aes2 bes4 bes,
    \alternative {
      {
        <ees bes'>2 <aes ees'>4 8 <ees bes'>8~ % 2b
        q4 4 r2
      }
      {
        q4 r <aes ees'>2
      }
    }
  }
  ees4 ees' ees d
  \partCombineApart r4 g r g % 2c
  aes,4 c ees aes
  bes4 bes, bes' bes,
  ees4 bes ees d
  r4 g r g % 2d
  bes,4 bes' aes, aes'
  g,2 ees'4 c
  f2 bes,
  ees4 r ees r % 3a
  aes,4 r aes r
  c4 r f, r
  bes4 bes, r2
  ees4 ees'2 4 % 3b
  g,4 d' g g,
  aes4 ees'2 4
  bes4 bes, r2
  c'4 g'2 4 % 3c
  aes,4 c ees aes
  bes,4 bes' aes, aes'
  g4 g, c b
  bes2 c % 3d
  aes2 bes4 bes,
  <ees bes'>2 <aes ees'>4. <ees bes'>8~
  q2 <ees' bes'>4\fermata r
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s1*4
  \repeat volta 2 {
    s1*14
    \alternative {
      {s1*2}
      {s1}
    }
  }
  s1
  c1 % 2c
  s1*3
  c1 % 2d
  s1*19
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
                                % Single melody staff
        \new Staff = melody \with {
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \melody
          \addlyrics \wordsOne
          \addlyrics \wordsTwo
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
   \unfoldRepeats
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single melody staff
        \new Staff = melody \with {
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \melody
          \addlyrics \wordsSingle
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

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
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single melody staff
        \new Staff = melody \with {
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \melody
          \addlyrics \wordsSingle
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \partCombine \pianoRHone \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \partCombine \pianoLHone \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single melody staff
        \new Staff = melody \with {
          midiInstrument = "choir aahs"
        }
        <<
          \new Voice \TempoTrack
          \new Voice \melody
          \addlyrics \wordsMidi
        >>
        \new Staff = pianorh \with {
          midiInstrument = "acoustic grand piano"
        }
        <<
          \new Voice \pianoRHone
          \new Voice \pianoRHtwo
          \new Dynamics \dynamicsPiano
          \new Voice \pianoLHone
          \new Voice \pianoLHtwo
        >>
      >>
    >>
    \midi {}
  }
}
