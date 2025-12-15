\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Beginner’s Luck"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Sid Tepper and Roy C. Bennett"
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
  \key ees \major
  \time 2/2
}

TempoTrack = {
  \global
  \tempo "moderately, with feeling" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "74a" s1*4
  \repeat volta 2 {
    \textMark \markup\box "74b" s1*4
    \textMark \markup\box "74c" s1*4
    \textMark \markup\box "74d" s1*4
    \textMark \markup\box "74e" s1*4
    \textMark \markup\box "75a" s1*4
    \textMark \markup\box "75b" s1*4
    \textMark \markup\box "75c" s1*4
    \textMark \markup\box "75d" s1*2
    \alternative {
      {s1*2}
      {
        \textMark \markup\box "75e" s1*4
      }
    }
  }
}

ChordTrack = \chordmode {
  s1*4 |
  \repeat volta 2 {
    ees1:maj7 f:m7 ees:maj7 f2:m7 bes:7 | ees1:maj7 aes2:maj7 aes:6 bes1:7 ees | g:m fis:dim f2:m7 bes:7 ees c:7 | c:m7 f:7 c:m7 f:7 bes1:7 s2 bes:aug |
    ees1:maj7 f:m7 ees:maj7 f:m7 | ees:maj7 aes2:maj7 aes:6 bes1:7 ees | g:m dis:dim f2:m7 bes:7 bes:m6 c:7 | f:7 f:7.5 f2.:m7 bes4:7 |
    \alternative {
      {ees2 fis:dim f:m7 b4:9 bes:9}
      {ees1 aes2 aes:m ees1 s |}
    }
  }
}

melody = \relative {
  \global
  R1*4 \section
  \repeat volta 2 {
    r4 ees'4 4 4 | ees f f4. bes,8 | aes'4 g f ees | f1 |
    r4 g g g | g aes4 4. 8 | c4 c bes a | bes1 |
    r4 d d d | d ees c4. 8 | 4 d bes c | g2. c,4 |
    f4 4 4 4 | f g ees f | d1~ | 2. r4 |
    r4 ees4 4 4 | ees f4 4. bes,8 | aes'4 g f ees | f1 | % 75a
    r4 g g g | g aes4 4. 8 | c4 c bes a | bes1 |
    r4 d d d | d ees c2 | 4 d bes c | g2. c,4 |
    f4 f f f | f g ees f |
    \alternative {
      {ees1 | R |}
      {ees1~ | 1~ | 1~ | 2.\fermata r4 |}
    }
  }
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

words = \lyricmode {
  \repeat volta 2 {
    First time I fell in love,
    I fell in love with you,
    First time I dared to dream,
    my on -- ly dream came true.
    Must be be -- gin -- ner’s luck
    to wish up -- on a star,
    Then o -- pen up my eyes and there you are. __
    I wave no ma -- hic wand,
    I own no luck -- y charm;
    How then can I ex -- plain an an -- gel in my arms.
    Must be be -- gin -- ner’s luck,
    what belse can it be,
    When some -- one won -- der -- ful as you loves
    \alternative {
      { me. }
      { me. __}
    }
  }
}

midiWords = \lyricmode {
  \repeat volta 2 {
    "First " "time " "I " "fell " "in " "love, "
    "\nI " "fell " "in " "love " "with " "you, "
    "\nFirst " "time " "I " "dared " "to " "dream, "
    "\nmy " on "ly " "dream " "came " "true. "
    "\nMust " "be " be gin "ner’s " "luck "
    "\nto " "wish " up "on " "a " "star, "
    "\nThen " o "pen " "up " "my " "eyes " "and " "there " "you " "are. " 
    "\nI " "wave " "no " ma "hic " "wand, "
    "\nI " "own " "no " luck "y " "charm; "
    "\nHow " "then " "can " "I " ex "plain " "an " an "gel " "in " "my " "arms. "
    "\nMust " "be " be gin "ner’s " "luck, "
    "\nwhat " "belse " "can " "it " "be, "
    "\nWhen " some "one " won der "ful " "as " "you " "loves "
    \alternative {
      { "me.\n " }
      { "me. " }
    }
  }
}

pianoRHone = \relative {
  \global \vo
  r4 ees''\(4 4 | f ees ees2\) | r4 d4\(d d | ees d d2\) \section \break |
  \repeat volta 2 {
    r4 ees,4\( 4 4 | ees f f4. bes,8 | <f' aes>4 <ees g> <d f> <c ees> | <aes f'>1\) |
    r4 g'\( g g | g aes4 4. 8 | <a c>4 q <g bes> <fis a> | <ees g bes>1\) |
    r4 d'\( d d | d ees c4. 8 | 4 d <g, bes> <fis c'> | g2.\) c,4\( |
    f4 4 4 4 | f g ees f | d1~ | 1\) |
    r4 ees4\( 4 4 | ees f4 4. bes,8 | <f' aes>4 <ees g> <d f> <c ees> | <aes f'>1\) | % 75a
    r4 g'\( g g | g aes4 4. 8 | <aes c>4 q <g bes> <fis a> | <ees g bes>1\) |
    r4 d'\( d d | d ees c2 | 4 d <g, bes> <fis c'> | g2.\) c,4\( |
    f4 f f f | f g ees f |
    \alternative {
      {ees4\) g8(bes d4 ees | c) c,8(ees fis4 g) |}
      {ees4\repeatTie 8(d ees4 f) | g(f g aes) | \ov <bes, ees g bes>1 | \vo <bes' ees g bes>2.\fermata r4 |}
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  <ees' bes'>1 | <ees a> | <ees aes> | <d g>2 <d fis> |
  \repeat volta 2 {
    <g, bes>1 | <aes c> | bes | c2(d) |
    <g, d'>1 | <c ees> | d | s |
    <d g bes>1 | <ees a> | <ees aes>2 d | <<{\vf g,2 des'4 c} \new Voice {\vt <d f>4 <c ees> bes2}>> \vt |
    <bes ees>2 <a ees'> | <g bes ees> <a ees'> | r4 <aes c>(<g bes> <fis a> | <f aes>2 <fis a>) |
    <g bes>1 | <aes c> | bes | c2(d) | % 75a
    <g, d'>1 | <c ees> | d | s |
    <d g bes>1 | <ees a> | <ees aes>2 d | r4 <bes f'> <bes e>2 |
    <a d>2 <a cis> | <aes c>2 4 <aes d> |
    \alternative {
      {<g bes>4 r <ees' a>2 | <ees aes>4 r <a, cis dis> <aes b d> |}
      {<g bes>1 | <c ees>2 <ces ees> | s1*2 |}
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s1*3 |
  \repeat volta 2 {
    s1-\markup{\dynamic mp - \dynamic mf} | s1*15 |
    s1*14 |
    \alternative { {s4 s2.\< | s4\! s2\> s4\! |} {s1*2 | s4 s2.-\markup\bold\italic rall. | s1 |} }
  }
}

dynamicsPianoSingle = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s1*3 |
  s1\mp | s1*15 |
  s1*14 |
  s4 s2.\< | s4\! s2\> s4\! |
  s1\mf | s1*15 |
  s1*14 |
  s1*2 | s4 s2.-\markup\bold\italic rall. | s1 |
}

pianoLHone = \relative {
  \global
  g1 | <ges c> | <f c'> | <bes, aes'> \section |
  \repeat volta 2 {
    <ees, ees'>1 | <f c'> | \vo bes4(c d ees | ees c d2) |
    \ov <ees, bes'>1 | \vo g'2(f) | \ov <bes, f'> bes,4(bes') | ees,4(bes' ees bes'8 aes |
    \vo g1) | fis | \ov f2 <bes, aes'> | <ees, bes'> \arpeggioParenthesis <c e'>\arpeggio |
    c'2 f, | c' f, | bes1~ | \vo bes |
    \ov <ees, d'>1 | <f c'> \vo | bes4(c d ees | ees c bes2) | % 75a
    \ov <ees, bes'>1 \vo | g'2(f) \ov | <bes, f'> bes,4(bes') | ees,(bes' ees bes'8 aes |
    \vo g1) | fis | \ov f2 <bes, aes'> | des(c4) c, |
    <f ees'>1 | q2 f4 bes |
    \alternative {
      {<ees, ees'>4 r fis'2( | f4) r b, bes |}
      {ees4 8 d c4 bes | aes2 <aes f'> | \vo ees8_(bes' ees f g bes \rh ees f | g2.\fermata) r4 |}
    }
  }
}

pianoLHtwo = \relative {
  \global \vt
  s1*4 |
  \repeat volta 2 {
    s1*2 | ees,1 | f2 bes4(bes,) |
    s1 | aes' | s1*2 |
    r2 g | r fis | s1*2 |
    s1*3 | r4 bes,2 4 |
    s1*2 | ees1 | f2 bes4(bes,) | % 75a
    s1 | aes' | s1*2 |
    r2 g | r fis | s1*2 |
    s1*2 |
    \alternative {
      {s1*2 |}
      {s1*4 |}
    }
  }
}

#(set-global-staff-size 20)

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
            \addlyrics \words
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
            \addlyrics \words
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
          \new Dynamics \dynamicsPianoSingle
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
    output-suffix = singlepage
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
            \addlyrics \words
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
          \new Dynamics \dynamicsPianoSingle
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
            \new Dynamics \dynamicsPianoSingle
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
