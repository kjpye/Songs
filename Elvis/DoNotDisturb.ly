\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Do Not Disturb"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Bill Giant, Bernie Baum & Florence Kaye"
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
  \key f \major
  \time 2/2
  \partial 4.
}

TempoTrack = {
  \global
  \tempo "Moderately" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "90a" s4. s1*2
  \textMark \markup\box "90b" s1*2
  \repeat volta 3 {
    \textMark \markup\segno
    \textMark \markup\box "90c" s1*2
    \textMark \markup\box "90d" s1*3
    \textMark \markup\box "91a" s1*3
    \textMark \markup\box "91b" s1*3
    \textMark \markup\box "91c" s1*3
    \textMark \markup\box "91d" s1*3
  }
}

ChordTrack = \chordmode {
  s4. s1*2 | s1*2 |
  \repeat volta 3 {
    f2 bes c1:7 | f2 bes c1:7 f2 bes |
    c1:7 f2 bes c1:7 | c2 bes c bes c s4*2/3 bes2*2/3 | c2 bes a1:m s | d1:7 g:7 s |
  }
}

melody = \relative {
  \global
  r8 r4 R1*4 |
  \repeat volta 3 {
    r8 \slurDashed a'(a) \slurSolid f bes8 4 g8 | e1 |
    r8 a4 f8 \slurDashed bes4(8) \slurSolid g | e1 | r8 a4 f8 \tuplet 3/2 {bes4 4 g} |
    e1 | r8 a4 f8 \slurDashed bes8(4) \slurSolid g8 | e1 | % 91a
    r4 c' bes d | c1 | r4 c8 c \tuplet 3/2 {4 bes d} |
    c1 | r4 c4 a d | c4. a8 8 8 d4 |
    c2 r8 a bes c | b4 r r a8 b | d1 |
  }
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsChorus = \lyricmode {
  Do not dis -- turb,
  Hang a sign on the door,
  Do not dis -- turb,
  it’s time to make love
  and I can’t wait an -- y more.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  \nom Let’s take \yesm the phone off the hook,
  Turn the \nom amp ’way \yesm down low;
  Ba -- by, put down that book,
  Tell the maid to go.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  I’ll just pull down that blind,
  Now come o -- ver here;
  I got one thing in mind,
  Let’s get \nom com -- f’ta -- ble, \yesm dear.
  \wordsChorus
}

wordsThree = \lyricmode {
  \set stanza = "3."
  Ev -- ’ry -- thing’s right to -- night,
  Mm, it’s \nom great when \yesm we kiss;
  Now your arms hold me tight,
  Ba -- by, \nom let’s stay \yesm like this.
}

wordsSingle = \lyricmode {
  \wordsOne \wordsChorus
  \wordsTwo
  \wordsThree \wordsChorus
}

midiWords = \lyricmode {
}

pianoRHone = \relative {
  \global
  r8 r4 \section | <c' f a>8 16 16 8 f <d f bes>8 8 8 g | <e g c>4 r r2 |
  <c f a>8 16 16 8 f <d f bes>8 8 8 g | <e g c>4 r r2 \section \break |
  \repeat volta 3 {
    r8 <c a'>8 8 f <d bes>8 4 g8 | \vo e1 |
    \ov r8 <c a'>4 f8 <d bes'>4 8 g | \vo e1 \ov | r8 <c a'>4 f8 \tuplet 3/2 {<d bes'>4 4 g} |
    \vo e1 \ov | r8 <c a'>4 f8 <d bes'>4. r8 | \vo e1 | % 91a
    \ov r4 <e g c> <d f bes> <f bes d> | \vo c'1 \ov | <e, g>4 <e g c>8 8 \tuplet 3/2 {4 <d f bes> <f bes d>} |
    \vo c'1 \ov | <c, e>4 <e a c> <c e a> <e a d> | <e a c>4. <c e a>8 8 8 <e a d>4 |
    <d fis c'>2 r8 <c fis a>8 <d fis b> <e fis c'> | <d f b>4 r r a'8 b | <f b d>1 |
  }
}

pianoRHtwo = \relative {
  \global \vt
  s4. s1*4 |
  \repeat volta 3 {
    \repeat unfold 4 { s1 | r4 c'8 g bes g c g |}
    \repeat unfold 2 {s1 | <e' g>4 4 \tuplet 3/2 {4 4 4} |} % 91b
    s1*2 | % 91c+
    s1*3 |
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4.\mf | s1*4 |
  \repeat volta 3 {
     s1-\markup{\dynamic mp - \dynamic mf} | s1*4 |
     s1*11 | \after 2... -\markup{\halign #RIGHT \column {"D.S. last time" "fading out"}} s1 |
   }
}

dynamicsPianoSingle = {
  s4.\mf | s1*4 |
  s1\mp | s1*16 |
  s1\mf | s1*16
  s1\mf | s1*15 | \after 2... -\markup{\halign #RIGHT D.S. fading out} s1 \bar "|." |
}

pianoLH = \relative {
  \global
  ees8 d c \section | f,4 r8 a bes4 4 | c r r8 ees d c |
  f,4 r8 a bes4 4 | c c, d e \section |
  \repeat volta 3 {
    f4 r8 a bes4 4 | c r8 g bes8 8 c4 |
    f,4 r8 a bes4 4 | c r8 g bes8 8 c4 | f, r8 a bes4 4 |
    c4 r8 g bes8 8 c4 | f,4 r8 a bes4 4 | c r8 g bes8 8 c4 | % 91a
    c4 r8 c bes4 4 | c g8 c \tuplet 3/2 {bes4 4 4} | c g8 c \tuplet 3/2 {c4 bes4 4} |
    c4 g8 c \tuplet 3/2 {bes4 4 4} | a4 8 8 4 8 8 | 4 8 8 4 8 8 |
    d,4 8 8 4 8 8 | g4 r \ottava #-1 g,-> \ottava #0 r | g'-> f-> e-> d8-> c-> |
  }
}

#(set-global-staff-size 17)

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
            \addlyrics \wordsThree
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
            \new Voice \pianoLH
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

#(set-global-staff-size 19)

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
            \addlyrics \wordsSingle
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
            \new Voice \pianoLH
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
            \addlyrics \wordsSingle
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
            \new Voice \pianoLH
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
