\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Boy Like Me, a Girl Like You"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Sid Tepper & Roy C. Bennett"
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
  \key bes \major
  \time 2/2
  \partial 4
}

TempoTrack = {
  \global
  \tempo 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "84a" s4 s1*3 s2.
  \textMark \markup\box "84b" s4
  \repeat volta 2 {
    s1*3
    \textMark \markup\box "84c" s1*4
    \textMark \markup\box "84d" s1*4
    \textMark \markup\box "84e" s1*4
    \textMark \markup\box "85a" s1*3
    \textMark \markup\box "85b" s1*4
    \textMark \markup\box "85c" s1*4
    \textMark \markup\box "85d" s1*4
    \alternative { { \textMark \markup\box "85e" s1*2 } {s1*2} }
  }
}

ChordTrack = \chordmode {
  s4 s1*4
  \repeat volta 2 {
    bes2 bes:maj7 ees bes4 b:dim c2:m7 f:7 | % 84b
    c2:m7 f:7 bes bes:maj7 bes:6 bes aes1 |
    f2:7 f4:7sus4 f:7 bes1 bes:aug ees:6 |
    c2:m6 d4:7+5 d:7 g2:m ees ges1:7 f:7sus4 |
    f1:7 bes2 bes:maj7 bes:6 bes4 b:dim | % 85a
    c2:m7 f:7 c4:m7 f2.:7 bes2 bes:maj7 bes:6 bes |
    aes1 f2:7 f4:7sus4 f:7 bes1 bes:aug
    g1:m bes:aug bes4 f:m6 g2:7 c:m f:7sus4 |
    \alternative {
      {bes2 cis:dim ees:m6 f4:7 r |}
      {bes2 ees bes1 |}
    }
  }
}

melody = \relative {
  \global
  r4 | R1*3 | r2. \section \break d'8 ees |
  \repeat volta 2 {
    f4 bes f2~ | 2. d8 ees | f4 g c,2~ |
    c2 r4 d8 ees | f4 bes f2~ | 2 \tuplet 3/2 {f4 g bes} | c1~ | % 84c
    c4 r bes c | d4. 8 2~ | 4 8 8 c4. bes8 | c1~ |
    c4 r d c | bes8 8 8 8 4 4 | 4 ges des ees | f1~ |
    f2 r4 d8 ees | f4 bes f2~ | 2. d8 ees | % 85a
    f4 g c,2~ | 2 r4 d8 ees | f4 bes f2~ | 2 \tuplet 3/2 {4 g bes} |
    c1~ | 4 r bes c | d d d d | d4 2 bes8 c |
    d4 4 4 4 | 2. bes8 c | d4 4 2 | ees4 r8 d bes4 g |
    \alternative {
      {bes1 | r2 r4\fermata d,8 ees |}
      {bes'1~ | 1\fermata |}
    }
  }
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  When a
  \repeat volta 2 {
    boy like me __
    meets a girl like you, __
    Then I must be -- lieve __ wish -- es come true __
    I just look at you __ and I touch your hand, __
    And this or -- din -- ar -- y world
    be -- comes a won -- der -- land. __
    There are man -- y girls __ I have met be -- fore,
    But I passed them by __ be -- cause I knew __
    There would be this mag -- ic mo -- ment,
    one to last a life -- time through,
    Whan a boy like me meets a girl like
    \alternative {
      { you. When a }
      { you. __ }
    }
  }
}

wordsTwo = \lyricmode {
}

midiWords = \lyricmode {
  "When " "a "
  \repeat volta 2 {
    "boy " "like " "me " 
    "\nmeets " "a " "girl " "like " "you, " 
    "\nThen " "I " "must " be "lieve "  wish "es " "come " "true " 
    "\nI " "just " "look " "at " "you "  "and " "I " "touch " "your " "hand, " 
    "\nAnd " "this " or din ar "y " "world "
    "\nbe" "comes " "a " won der "land. " 
    "\nThere " "are " man "y " "girls "  "I " "have " "met " be "fore, "
    "\nBut " "I " "passed " "them " "by "  be "cause " "I " "knew " 
    "\nThere " "would " "be " "this " mag "ic " mo "ment, "
    "\none " "to " "last " "a " life "time " "through, "
    "\nWhan " "a " "boy " "like " "me " "meets " "a " "girl " "like "
    \alternative {
      { "you.\n " "\nWhen " "a " }
      { "you. "  }
    }
  }
}

pianoRHone = \relative {
  \global \vo
  bes'8\(c | d4 4 2 | ees4. d8 <ees, g bes>4 <ees g> | bes' f\) a\(g | ges aes f\fermata\) \section
  d8 ees |
  \repeat volta 2 {
    f4 bes f2~ | 2. d8 ees | f4 g c,2 |
    d'4\(d c\) d,8 ees | f4 bes f2~ | 2 \tuplet 3/2 {4 g bes} | c1~ |
    c2 <g bes>4 <a c> | d4. 8 2~ | 4 8 8 c4. bes8 | c1~ |
    c2 <bes d>4 <a c> | bes8 8 8 8 4 4 | 4 ges des ees | r4 <g bes ees>2\(4 |
    d'4 b c\) d,8 ees | f4 bes f2~ | 2. d8 ees | % 85a
    f4 g c,2 | d'4\(d c\) d,8 ees | f4 bes f2~ | 2 \tuplet 3/2 {4 g bes} |
    c1~ | 2 <g bes>4 <a c> | d4 4 4 4 | d d2 bes8 c |
    d4 4 4 4 | 2. bes8 c | d4 4 2 | ees4. d8 <ees, g bes>4 <ees g> |
    \alternative {
      {bes'4 f\(a g | ges aes\) f\fermata\breathe d8 ees |}
      {bes'2 <f a>4<ees g> | r4 <f' d' f>(<d bes' d>2)\fermata |}
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  r4 | <d' f> <d f c'> <d f b>2 | r4 <ees g> c2 | <bes d> <bes e> | <bes ees> <a c>4\fermata \section
  r4
  \repeat volta 2 {
    r4 <bes d> r q | r q r aes | r <bes ees> r <ees, a> |
    <ees' g>2 4 a, | r <bes d> r q | r q q2 | r4 c <c ees> <c ees aes> | % 84c
    <c ees a>2 ees | r4 <d f>2 4 | r <d fis>2 4 | r <ees g>2 4 |
    r4 q <d fis>2 | r4 <bes d> <bes ees> q | <bes e>2. bes4 | f'1 |
    <ees a>2. r4 | r <bes d> r q | r q r aes | % 85a
    r4 <bes ees> r <ees, a> | <ees' g>2 4 a, | r <bes d> r q | r q4 2 |
    r4 c <c ees> <c ees aes> | <c ees a>2 ees | r4 <d f>2 4 | r <d fis> <d fis bes> <d fis> |
    r4 <d g>2 4 | r <d fis> <d fis bes> <d fis> | <d f> <d f c'> <d f b>2 | r4 <ees g> c2 |
    \alternative {
      {<bes d>2 <bes e> | <bes ees> <a c>4 r |}
      {<bes d>2 bes\( | <bes d f>1\fermata\) |}
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mf | s1*2 | s2 s\> | s2-\markup rit. s4\mp
  s4\omit\mp-\markup{\dynamic mp \italic "a tempo"} |
  \repeat volta 2 {
    s1*7 | s1\< | s\mf | s1*6 |
    s1*7 | s1\< | s | s\f | s1*2 | s2 s\< | s1 | s\f |
    \alternative { {s4 s2.\> | s2.\!-\markup rit. s4-\markup "a tempo"|} {s2 s-\markup rall. | s1 |} }
  }
}

pianoLHone = \relative {
  \global \vo
  r4 | f4 aes g2 | \ov <c,, c'> f | bes cis | c2 <f, ees'>4\fermata \section r4
  \repeat volta 2 {
    \vo r2 a'^\markup{\halign #RIGHT R.H.} ( | g f) | \ov c f, |
    <c' bes'>2 <f a>4 f, | \vo r2 a'^\markup{\halign #RIGHT R.H.} | g f^\markup{\halign #LEFT L.H.} | \ov aes,2. ges4 |
    \vo r4 c(f2) | r4 f2 4 | r fis2 4 | r g2 4 |
    r4 g fis2 | r4 d ees4 4 | \ov <ges, e'>2. 4 | \vo r4 c'2 4 |
    \ov f,2(f,4) r | \vo r2 a'2^\markup{\halign #RIGHT R.H.} \( | g f^\markup{\halign #LEFT L.H.} \) | % 95a
    \ov c2 f, | \ov <c' bes'> <f a>4 f, \vo | r2 a'^\markup{\halign #RIGHT R.H.} \( | g2 f\)^\markup L.H. |
    \ov aes,2. ges4 | \vo r4 c(f2) | r4 f2 4 | r fis bes fis |
    r4 g2 4 | r4 fis bes fis | f aes g2 | \ov <c,, c'> f |
    \alternative {
      {bes2 cis | c <f, ees'>4\fermata r }
      {bes4 f ees2 | <bes bes'>1\fermata |}
    }
  }
}

pianoLHtwo = \relative {
  \global \vt
  r4 | bes,4 aes g g | s1*3 |
  \repeat volta 2 {
    bes2 f | bes f4 b | s1 |
    s1 | bes2 f | bes f | s1 |
    f1 | bes | bes | bes |
    a2 d | g,2. 4 | s1 | f1 |
    s1 | bes2 f | bes f4 b | % 85a
    s1*2 | bes2 f | bes f |
    s1 | f | bes2. 4 | 2. 4 |
    bes2. 4 | 2. 4 | 4 aes g g | s1 |
    \alternative {
      {s1*2}
      {s1*2}
    }
  }
}

#(set-global-staff-size 19)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
%        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \melody
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = single
%    top-margin = 0
%    left-margin = 7
%    right-margin = 1
%    paper-width = 190\mm
%    page-breaking = #ly:one-page-breaking
%    system-system-spacing.basic-distance = #15
%    system-separator-markup = \slashSeparator
  }
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
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \with {alignAboveContext = melody} \dynamicsMelody
            \new Voice \RehearsalTrack
            \new Voice \melody
            \addlyrics { \wordsOne \wordsTwo }
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Score
        \accidentalStyle Score.modern
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context { \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context { \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context { \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames = guitar \with {
          midiInstrument = "Acoustic Guitar (Nylon)"
        }
        \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Dynamics \TempoTrack
            \new Dynamics \dynamicsMelody
            \new Voice \melody
            \addlyrics \midiWords
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = piano \with {
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
