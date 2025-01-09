\version "2.25.21"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Feel that I’ve Known You Forever"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Doc Pomus & Alan Jeffreys"
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
  \time 3/4
}

TempoTrack = {
  \global
  \tempo "Moderately Slow" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "52a" s2.*4
  \repeat volta 2 {
    \textMark \markup\box "52b" s2.*5
    \textMark \markup\box "52c" s2.*5
    \textMark \markup\box "52d" s2.*5
    \textMark \markup\box "53a" s2.*5
    \textMark \markup\box "53b" s2.*5
    \textMark \markup\box "53c" s2.*5
    \textMark \markup\box "53d" s2.*2
    \alternative {
      { s2.*3
        \textMark \markup\box "53e" s2.
      }
      { s2.*4 }
    }
  }
}

ChordTrack = \chordmode {
  s2.*4 |
  \repeat volta 2 {
    ees2. aes ees aes ees | c:m7 f:m7 bes:7 ees aes | ees aes ees c:m7 bes:m7 |
    ees2.:7 aes aes:m ees s | c:m f:7 bes:7sus4 bes:7 ees | aes ees aes:m ees c:m7 | f:m7 bes:7 |
    \alternative {
      { ees2. a:dim bes:7sus4 bes:7 |}
      { ees2. aes ees s | }
    }
  }
}

melody = \relative {
  \global
  R2.*4 | \section
  \repeat volta 2 {
    c'4 bes2 | f'4 ees2 | c4 bes2 | f'4 ees4. g8 | bes2 8 8 |
    bes4 g4. ees8 | c'4 bes2~ | 2. | c,4 bes2 | f'4 ees2 |
    c4 bes2 | f'4 ees4. g8 | bes2 8 8 | 4 g4. ees8 | c'4 bes2~ |
    bes2. | 4 aes ees | bes'2 aes8 ees | aes4 g4. ees8 | g2. | % 53a
    g2 f8 ees | g2 f8 ees | c'4 aes f | d2 bes4 | c bes2 |
    f'4 ees2 | c4 bes2 | bes'4 aes4. g8 | bes2 8 8 | 4 g4. ees8 |
    c'4 bes c | d c4. d8 |
    \alternative {
      { f4 ees2~ | 2. | R2. | R | }
      { f4 ees2~ | 2.~ | 2.~ | 2.\fermata | }
    }
  }
  \bar "|."
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  \repeat volta 2 {
    Your lips, your eyes, your soft sweet sighs,
    I feel that I’ve known you for -- ev -- er. __
    Your style, your touch, you’re just too much.
    I feel that I’ve known you for -- ev -- er. __
    I know that this nev -- er hap -- pened to me.
    Dont have to see an -- y more than I see
    Of your face so rare, be -- yond com -- pare.
    I feel that I’ve known you for -- ev -- er and ev -- er and
    \alternative {
      { ev -- er. __ }
      { ev -- er. __ }
    }
  }
}

midiWords = \lyricmode {
  \repeat volta 2 {
    "\nYour " "lips, " "your " "eyes, " "your " "soft " "sweet " "sighs, "
    "\nI " "feel " "that " "I’ve " "known " "you " for ev "er. " 
    "\nYour " "style, " "your " "touch, " "you’re " "just " "too " "much. "
    "\nI " "feel " "that " "I’ve " "known " "you " for ev "er. " 
    "\nI " "know " "that " "this " nev "er " hap "pened " "to " "me. "
    "\nDont " "have " "to " "see " an "y " "more " "than " "I " "see "
    "\nOf " "your " "face " "so " "rare, " be "yond " com "pare. "
    "\nI " "feel " "that " "I’ve " "known " "you " for ev "er " "and " ev "er " "and "
    \alternative {
      { "\nev" "er. "  }
      { "\nev" "er. "  }
    }
  }
}

pianoRHone = \relative {
  \global \vo
  f''4(ees2 | d4 c2) | r4 c(aes | <aes, f'>2.) | \section
  \repeat volta 2 {
    c4 bes2 | f'4 ees2 | c4 bes2 | f'4 ees4. g8 | bes2 8 8 |
    bes4 g4. ees8 | c'4 bes2~ | 2. | c,4 bes2 | f'4 ees2 |
    c4 bes2 | f'4 ees4. g8 | bes2 8 8 | 4 <ees, g>4. ees8 | c'4 bes2 |
    g4(f ees) | bes'4 aes ees | bes'2 <ees, aes>8 ees | aes4 <ees g>4. ees8 | \ov <bes ees g>2. | % 53a
    \vo <ees g>2 <d f>8 <c ees> | <ees g>2 <d f>8 <c ees> | c'4 aes f | d2 bes4 | c bes2 |
    f'4 ees2 | c4 bes2 | bes'4 aes4. g8 | bes2 8 8 | 4 <ees, g>4. ees8 |
    c'4 bes c | d c4. d8 |
    \alternative {
      { f4 ees2 | d4(c2) | r4 c(aes | <aes, f'>2.) | }
      { f''4 ees2 | f,4(ees2) | r4 r bes'( | <g' bes>2.\fermata) | }
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  <g' bes>2 <ees g>4 | <ees ges>2 4 | <ees f>2. | d4(c bes) | \section
  \repeat volta 2 {
    r4 <ees, g>2 | r4 <aes c>2 | r4 <ees g>2 | r4 <aes c>2 | r4 <bes ees g>2 |
    r4 bes2 | <ees aes>2 <c ees aes>4 | d4(ees f) | r4 <ees, g>2 | r4 <aes c>2 |
    r4 <ees g>2 | r4 <aes c>2 | r4 <bes ees g>2 | r4 bes2 | <des f aes>2 4 |
    <bes des>2. | r4 <c ees> <aes c> | r4 <aes ees'> aes | r4 bes2 | s2. | % 53a
    r4 g g | r a a | <ees' aes> <c ees> <aes ees'> | aes2. | r4 <ees g>2 |
    r4 <aes c>2 | r4 <ees g>2 | r4 <ces' ees>2 | r4 <bes ees g>2 | r4 bes2 |
    <ees aes>2 4 | <f aes>2 s4 |
    \alternative {
      { <g bes>2 <ees g>4 | <ees ges>2 4 | <ees f>2. | d4(c bes) | }
      { <g' bes>2. | <aes, c> | c4 bes2~ | 2.\fermata | }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf | s | s4 s2-\markup\italic rit. | s2\> s4\! |
  \repeat volta 2 {
    s2.\omit\mp-\markup{\dynamic mp \italic "a tempo"} | s2.*4 |
    s2.*5 |
    s2.*5 |
    s2.*5 | % 53a
    s2.*5 |
    s2.*4 | s2 s4\< |
    s2. | s2.
    \alternative {
      { s2.\mf | s | s4-\markup\italic rit. s2\> | s2\! s4 | }
      { s2.\mf | s | s-\markup\italic rall. | s2. | }
    }
  }
}

pianoLH = \relative {
  \global
  <bes, bes'>2 4 | <bes a'>2 4 | <bes aes'>2. | bes,4(c d \section |
  \repeat volta 2 {
    ees2) bes'4 | aes2 ees'4 | ees,2 bes'4 | aes2 ees'4 | ees,2 d4 |
    c2 c'4 | f,2 c'4 | <<{\vo aes'2.} \new Voice {\vt bes,4(c d)}>> \ov ees,2 bes'4 | aes2 ees'4 |
    ees,2 bes'4 | aes2 ees'4 | ees,2 d4 | c2 c'4 | bes2 4 |
    ees,4(f g | aes2.) ces2 4 | bes2 bes,4 | ees4 g bes | % 53a
    c2 c,4 | f2 4 | bes2. | bes,4(c d | ees2) bes'4 |
    aes2 ees'4 | ees,2 bes'4 | aes2 ees'4 | ees,2 d4 | c2 c'4 |
    f,2 4 | bes2 bes,4 |
    \alternative {
      { ees2 <bes' bes'>4 | <bes a'>2 4 | <bes aes'>2. | bes,4(c d) | }
      { <<
        {\vo r r bes' | r r ees | g2.~ | 2.\fermata | }
        \new Voice {\vt ees,2. | aes | ees | ees,\fermata | }
        >>
      }
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
            \addlyrics \wordsOne
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
        \new FretBoards \ChordTrack
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
            \addlyrics \wordsOne
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
