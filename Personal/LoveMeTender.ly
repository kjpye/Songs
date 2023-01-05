\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

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

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
}

TempoTrack = {
  \tempo "Moderately Slow" 4=95
  \set Score.tempoHideNote = ##t
  s1
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \mark \markup { \box "30a" } s1*3
  \mark \markup { \box "30b" } s1
  \repeat volta 4 {
    s1*2
  \mark \markup { \box "30c" } s1*3
  \mark \markup { \box "30d" } s1*3
  \mark \markup { \box "31a" } s1*3
  \mark \markup { \box "31b" } s1*3
    \alternative {
      { \mark \markup { \box "31c" } s1*2 }
      { s1*2 }
    }
  }
}

ChordTrack = \chordmode {
  s1*4
  \repeat volta 4 {
    g1 | a:7 |
    d4:7sus4  d2.:7 | g1 | s |
    a1:7 | d4:7sus4 d2.:7 | g1 |
    g2 b:7 | e:m g:7 | c c:m |
    g1 | s4 d:m6 e:7+5 e:7 | a1:7 |
    \alternative {
      {d4:7sus4 d2.:7 | g2 a4:m7 d:7}
      {d4:7sus4 d2.:7 | g1 |}
    }
  }
}

melody = \relative {
  \global
  R1*4
  \repeat volta 4 {
    d'4 g fis g | a e a2 |
    g4 fis e fis | g1 | d4 g fis g |
    a4 e a2 | g4 fis e fis | g1 |
    \section \sectionLabel CHORUS
    b4 b b8 b4. | b4 b b2 | b4 a g a |
    b1 | 4 4 c b | a e a2 |
    \alternative {
      {g4 fis e fis | g2. r4}
      {g4 fis b4. a8 | g1\fermata}
    }
  }
  \bar "|."
}

chorus = \lyricmode {
  Love me ten -- der, love me true,
  All my dreams ful -- fill.
  For, my dar -- lin', I love you,
  And I al -- ways will.
}

chorusOne = \lyricmode {
  Love me ten -- der, love me true,
  All my dreams ful -- fill.
  For, my dar -- lin', I love you,
  And I al -- ways will.
  And I al -- ways will.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Love me ten -- der, love me sweet;
  Nev -- er let me go.
  You have made my life com -- plete,
  And I love you so.
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  Love me ten -- der, love me long;
  Take me to your heart.
  For it's there that I be -- long,
  And we'll nev -- er part.
}

wordsThree = \lyricmode {
  \set stanza = "3."
  Love me ten -- der, love me dear;
  Tell me you are mine.
  I'll be yours through all the years,
  Till the end of time.
}

wordsFour = \lyricmode {
  \set stanza = "4."
  When at last my dreams come true,
  Dar -- ling, this I know:
  Hap -- pi -- ness will fol -- low you
  Ev -- 'ry -- where you go.
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "Love " "me " ten "der, " "love " "me " "sweet; "
  "\nNev" "er " "let " "me " "go. "
  "\nYou " "have " "made " "my " "life " com "plete, "
  "\nAnd " "I " "love " "you " "so. "
  "\nLove " "me " ten "der, " "love " "me " "true, "
  "\nAll " "my " "dreams " ful "fill. "
  "\nFor, " "my " dar "lin', " "I " "love " "you, "
  "\nAnd " "I " al "ways " "will.\n"

  \set stanza = "2."
  "\nLove " "me " ten "der, " "love " "me " "long; "
  "\nTake " "me " "to " "your " "heart. "
  "\nFor " "it's " "there " "that " "I " be "long, "
  "\nAnd " "we'll " nev "er " "part. "
  "\nLove " "me " ten "der, " "love " "me " "true, "
  "\nAll " "my " "dreams " ful "fill. "
  "\nFor, " "my " dar "lin', " "I " "love " "you, "
  "\nAnd " "I " al "ways " "will.\n"

  \set stanza = "3."
  "\nLove " "me " ten "der, " "love " "me " "dear; "
  "\nTell " "me " "you " "are " "mine. "
  "\nI'll " "be " "yours " "through " "all " "the " "years, "
  "\nTill " "the " "end " "of " "time. "
  "\nLove " "me " ten "der, " "love " "me " "true, "
  "\nAll " "my " "dreams " ful "fill. "
  "\nFor, " "my " dar "lin', " "I " "love " "you, "
  "\nAnd " "I " al "ways " "will.\n"

  \set stanza = "4."
  "\nWhen " "at " "last " "my " "dreams " "come " "true, "
  "\nDar" "ling, " "this " "I " "know: "
  "\nHap" pi "ness " "will " fol "low " "you "
  "\nEv" 'ry "where " "you " "go. "
  "\nLove " "me " ten "der, " "love " "me " "true, "
  "\nAll " "my " "dreams " ful "fill. "
  "\nFor, " "my " dar "lin', " "I " "love " "you, "
  "\nAnd " "I " al "ways " "will. "
}

pianoRHone = \relative {
  \global
  b'4( b c b | a e a2) | <e g>4(<d fis> e q |
  <b d g>2) <g c e>4(<fis c' d>) |
  \repeat volta 4 {
    d'4 g fis g | a e a2 |
    <e g>4 <d fis> e q | <b d g>2 <g' b fis'>4(<g b e>) | d g fis g |
    a4 e a2 | <e g>4 <d fis> e q | <b d g>2 b8(d g a) |
    <d, g b>4 4 <dis a' b>8 4. | <b e g b>4 4 <b f' g b>2 | b'4 a g a |
    <d, g b>1 | b'4 b c b | a e a2 |
    \alternative {
      {<e g>4 <d fis> e q | <b d g>2 <g c e>4(<fis c' d>) |}
      {<e' g>4 <d fis> b'4. a8 | <b, d g>2 <g' b g'>2\fermata | }
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global
  <d' g>4 <d a'> <d gis>2 | <cis g'> q | c c |
  s1 |
  \repeat volta 4 {
    r4 <b d> r <g d'> | <cis g'>2 q |
    c2 c | s1 | r4 <b d> r <g d'> |
    <cis g'>2 q | c2 2 | s1 |
    s1 | s | <c e>2 <c ees> | % 31a
    s1 | <d g>4 <d a'> <d gis>2 | <cis g'>2 2 |
    \alternative {
      {c2 2 | s1}
      {c2 <d fis>4. <c fis>8 | s1}
    }
  }
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s | s |
  s2 s4\> s\! |
  \repeat volta 4 {
    \alternative {
      {}
      {}
    }
  }
}

pianoLHone = \relative {
  \global
  <g, g'>4 <f f'> <e e'>2 | a2~8 fis' e a, | d2 d, |
  g4 d' d,2 |
  \repeat volta 4 {
    g2 b | a e'4 a, |
    d2 d, | g4 d' fis'(e) | g,,2 b |
    a2 e'4 a, | d2 d, | g4 d' b8(d g a) |
    g2 fis4 b, | e2 d4 g, | <c, c'>2 2 | % 31a
    \voiceOne r4 d'(fis e8 d) | \oneVoice <g, g'>4 <f f'> <e e'>2 | a2~8 fis' e a, |
    \alternative {
      {d2 d, | g4 d' d,2 |}
      {d'2 d,4 d' | g, d' \arpeggioParenthesis <g, d' b'>2\fermata\arpeggio}
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global
  s1*4
  \repeat volta 4 {
    s1*11
    \voiceTwo g,1
    s1*2
    \alternative {{s1*2}{s1*2}}
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single melody staff
        \new Staff = melody \with {midiInstrument = #"choir aahs" }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \melody
          \addlyrics {\wordsOne \chorusOne}
          \addlyrics \wordsTwo
          \addlyrics \wordsThree
          \addlyrics \wordsFour
        >>
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single melody staff
        \new Staff = melody \with {midiInstrument = #"choir aahs" }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \melody
          \addlyrics {\wordsOne \chorus \wordsTwo \chorus \wordsThree \chorus \wordsFour \chorus }
        >>
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChordNames { \ChordTrack }
        \new FretBoards { \ChordTrack }
      >>
      <<
                                % Single melody staff
        \new Staff = melody \with {midiInstrument = #"choir aahs" }
        <<
          \new Voice \TempoTrack
          \new Voice \RehearsalTrack
          \new Voice \melody
          \addlyrics {\wordsOne \chorus \wordsTwo \chorus \wordsThree \chorus \wordsFour \chorus }
        >>
      >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            midiInstrument = "acoustic grand piano"
          }
          <<
            \clef "bass"
            \new Voice \pianoLHone
            \new Voice \pianoLHtwo
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
      >>
      <<
                                % Single melody staff
        \new Staff = melody \with {midiInstrument = #"choir aahs" }
        <<
          \new Voice \TempoTrack
          \new Voice \melody
          \addlyrics \wordsMidi
        >>
      >>
        \new PianoStaff = piano <<
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
    \midi {}
  }
}
