\version "2.25.19"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Love Me Tender"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Elvis Presley & Vera Matson"
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
  \key g \major
  \time 4/4
}

TempoTrack = {
  \global
  \tempo "Moderately Slow" 4=100
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup { \box "30a" } s1*3
  \textMark \markup { \box "30b" } s1
  \repeat volta 4 {
    s1*2
    \textMark \markup { \box "30c" } s1*3
    \textMark \markup { \box "30d" } s1*3
    \textMark \markup { \box "31a" } s1*3
    \textMark \markup { \box "31b" } s1*3
    \alternative {
      {
        \textMark \markup { \box "31c" } s1*2
      }
      { s1*2 }
    }
  }
}

ChordTrack = \chordmode {
  s1*3 | s1 |
  \repeat volta 4 {
    g1 | a:7 |
    d4:7sus4 d2.:7 | g1 | s | % 30c
    a1:7 | d4:7sus4 d2.:7 | g1 |
    g2 b:7 | e:m g:7 | c c:m | % 31a
    g1 | s4 d:m6 e:7.5 e:7 | a1:7 |
    \alternative {
      { d4:7sus4 d2.:7 | g2 a4:m7 d:7 | }
      { d4:7sus4 d2.:7 | g1 | }
    }
  }
}

melody = \relative {
  \global
  R1*4 |
  \repeat volta 4 {
    d'4 g fis g | a e a2 |
    g4 fis e fis | g1 | d4 g fis g |
    a4 e a2 | g4 fis e fis | g1 |
    \section \sectionLabel \markup\bold Chorus
    b4 b b b | 4 4 2 | b4 a g a |
    b1 | 4 4 c b | a e a2 |
    \alternative {
      { g4 fis e fis | g2. r4 | }
      { g4 fis b4. a8 | g1\fermata | }
    }
  }
  \bar "|."
}

wordsOne = \lyricmode {
  Love me ten -- der, love me sweet;
  Nev -- er  let me go.
  You have made my life com -- plete,
  And I love you so.
}

wordsTwo = \lyricmode {
  Love me ten -- der, love me long;
  Take me to your heart.
  For it’s there that I be -- long,
  And we’ll nev -- er part.
}

wordsThree = \lyricmode {
  Love me ten -- der, love me dear;
  Tell me you are mine.
  I’ll be yours through all the years,
  Till the end of time.
}

wordsFour = \lyricmode {
  When at last my dreams come true,
  Dar -- ling, this I know:
  Hap -- pi -- ness will fol -- low you
  Ev -- ’ry where you go.
}

chorus = \lyricmode {
  Love me ten -- der, love me true,
  All my dreams ful -- fil.
  For, my darl -- in’, I love you,
  And I al -- ways will.
}

aiaw = \lyricmode {
  And I al -- ways will.
}

midiWords = \lyricmode {
  "Love " "me " ten "der, " "love " "me " "sweet; "
  "\nNev" "er "  "let " "me " "go. "
  "\nYou " "have " "made " "my " "life " com "plete, "
  "\nAnd " "I " "love " "you " "so. "
  "\nLove " "me " ten "der, " "love " "me " "true, "
  "\nAll " "my " "dreams " ful "fil. "
  "\nFor, " "my " darl "in’, " "I " "love " "you, "
  "\nAnd " "I " al "ways " "will.\n"

  "\nLove " "me " ten "der, " "love " "me " "long; "
  "\nTake " "me " "to " "your " "heart. "
  "\nFor " "it’s " "there " "that " "I " be "long, "
  "\nAnd " "we’ll " nev "er " "part. "
  "\nLove " "me " ten "der, " "love " "me " "true, "
  "\nAll " "my " "dreams " ful "fil. "
  "\nFor, " "my " darl "in’, " "I " "love " "you, "
  "\nAnd " "I " al "ways " "will.\n"

  "\nLove " "me " ten "der, " "love " "me " "dear; "
  "\nTell " "me " "you " "are " "mine. "
  "\nI’ll " "be " "yours " "through " "all " "the " "years, "
  "\nTill " "the " "end " "of " "time. "
  "\nLove " "me " ten "der, " "love " "me " "true, "
  "\nAll " "my " "dreams " ful "fil. "
  "\nFor, " "my " darl "in’, " "I " "love " "you, "
  "\nAnd " "I " al "ways " "will.\n"

  "\nWhen " "at " "last " "my " "dreams " "come " "true, "
  "\nDar" "ling, " "this " "I " "know: "
  "\nHap" pi "ness " "will " fol "low " "you "
  "\nEv" "’ry " "where " "you " "go. "
  "\nLove " "me " ten "der, " "love " "me " "true, "
  "\nAll " "my " "dreams " ful "fil. "
  "\nFor, " "my " darl "in’, " "I " "love " "you, "
  "\nAnd " "I " al "ways " "will. "
}

pianoRHone = \relative {
  \global \vo
  b'4(b d b | a e a2) | <e g>4(<d fis> e q |
  \ov <b d g>2) <g c e>4(<fis c' d>) |
  \repeat volta 4 {
    \vo d'4 g fis g | a e a2 |
    <e g>4 <d fis> e q | \ov <b d g>2 <g' b fis'>4(<g b e>) | \vo d4 g fis g |
    a4 e a2 | <e g>4 <d fis> e q | \ov <b d g>2 b8(d g a) | \section
    <d, g b>4 q <dis a' b>8 4. | <b e g b>4 4 <b f' g b>2 | \vo b'4 a g a |
    \ov <d, g b>1 | \vo b'4 4 c b | a e a2 |
    \alternative {
      { <e g>4 <d fis> e q | \ov <b d g>2 <g c e>4(<fis c' d>) }
      { \vo <e' g>4 <d fis> b'4. a8 | \ov <b, d g>2 <g' b g'>\fermata | }
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  <d' g>4 <d a'> <d gis>2 | <cis g'> q | c c |
  s1 |
  \repeat volta 4 {
    r4 <b d> r <g d'> | <cis g'>2 q |
    c2 c | s1 | r4 <b d> r <g d'> |
    <cis g'>2 q | c c | s1 |
    s1 | s | <c e>2 <c ees> | % 31a
    s1 | <d g>4 <d a'> <d gis>2 | <cis g'> q |
    \alternative {
      { c2 c | s1 | }
      { c2 <d fis>4. <c fis>8 | s1 | }
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s1*2 |
  s2 s4\> s\! |
  \repeat volta 4 {
    s1\mp | s |
    s1*3 |
    s1*3 |
    s1\mf | s1*2 | % 31a
    s1*3 |
    \alternative { { s1 | s2 s4\> s\! | } { s1*2 | } }
  }
}

pianoLHone = \relative {
  \global
  <g, g'>4 <f f'> <e e'>2 | a2~8 fis' e a, | d2 d, |
  g4 d' d,2 |
  \repeat volta 4 {
    g2 b | a e'4 a, |
    d2 d, | g4 d' fis'(e) | g,,2 b |
    a2 e'4 a, | d2 d, | g4 d' b8(d g a) \section |
    g2 fis4 b, | e2 d4 g, | <c, c'>2 2 | % 31a
    \vo r4 d'(fis e8 d) \ov | <g, g'>4 <f f'> <e e'>2 | a2~8 fis' e a, |
    \alternative {
      { d2 d, | g4 d' d,2 | }
      { d'2 d,4 d' | g, d' \arpeggioParenthesis <g, d' b'>2\arpeggio\fermata | }
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global \vt
  s1*3 |
  s1 |
  \repeat volta 4 {
    s1*2 |
    s1*3 |
    s1*3 |
    s1*3 | % 31a
    g,1 | s1*2 |
    \alternative {
      { s1*2 | }
      { s1*2 | }
    }
  }
  \bar "|."
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
        \new FretBoards { \ChordTrack }
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" {\wordsOne \chorus \aiaw}
            \new Lyrics \lyricsto "melody" \wordsTwo
            \new Lyrics \lyricsto "melody" \wordsThree
            \new Lyrics \lyricsto "melody" \wordsFour
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
        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
          }
          <<
            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \wordsOne   \chorus
                                             \wordsTwo   \chorus
                                             \wordsThree \chorus
                                             \wordsFour  \chorus
                                           }
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
%      <<
%        \new ChordNames \ChordTrack
%        \new FretBoards \ChordTrack
%      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Staff \with {
          }
          <<
%            \new Voice \RehearsalTrack
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \wordsOne   \chorus
                                             \wordsTwo   \chorus
                                             \wordsThree \chorus
                                             \wordsFour  \chorus
                                           }
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

\book {
  \paper {
    output-suffix = midi
  }
  \score {
    \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Dynamics \TempoTrack
          \new Dynamics \dynamicsPiano
          \new Staff \with {
            midiInstrument = "choir aahs"
          }
          <<
            \new Voice = "melody" \melody
            \new Lyrics \lyricsto "melody" { \midiWords }
          >>
        >>
        \new PianoStaff
        <<
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
