\version "2.25.21"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "You’re a Heartbreaker"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Jack Sallee"
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
  \tempo "Moderately bright" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "58a" s1*3 s2
  \textMark \markup\box "58b" s2
  \repeat volta 2 {
    s1*4
    \textMark \markup\box "58c" s1*5
    \textMark \markup\box "58d" s1*5
    \textMark \markup\box "59a" s1*5
    \textMark \markup\box "59b" s1*5
    \textMark \markup\box "59c" s1*5
    \textMark \markup\box "59d" s1
    \alternative {
      { s1*2 }
      { s1*2 }
    }
  }
}

ChordTrack = \chordmode {
  s1*3 | s2
  bes2:7 |
  \repeat volta 2 {
    ees1 s2 ees aes1 s | ees s bes:7 s ees | s2 ees:7 aes1 s ees bes:7 |
    ees2 aes:7 ees1 bes:7 s ees2 bes4:7 a:dim | ees1 bes:7 s ees2 bes4:7 a:dim ees2 bes:7 | ees1 s2 ees:7 aes1 s ees | bes1:7
    \alternative {
      { ees2 aes:7 ees bes:7 | }
      { ees2 aes:7 ees1 | }
    }
  }
}

melodyA = \relative {
  R1*3 r2 \section
  bes'4 4
}

melodyB = \relative {
  bes'1 | g4 ees ees' ees |
  \tag #'dash {\slurDashed ees2(2) \slurSolid |}
  \tag #'v1   {            ees1               |}
  \tag #'v2   {            ees2 2             |}
  c4 aes2 c4 |
  bes2 g4 ees | c'(bes) g ees | d(f2.)~ | 2 bes4 4 | 1 |
  g4 ees ees' ees | 1 | c4 aes2 c8 8 | bes2 g4 ees |
  \tag #'dash {\slurDashed c'4(aes) \slurSolid f d |}
  \tag #'v1   {            c'4(aes)            f d |}
  \tag #'v2   {            c'4 aes             f d |}
  ees1~ | 2 r4 ees | f f f g | aes4 4 g f | g g aes a | % 59a
  bes1 | f4 4 4 g | aes4 4 g f | g g aes a | bes2 4 4 |
  bes1 | g4 ees ees'4 4 | 1 | c4 aes2 c8 8 | bes2 g4 ees |
  c'4(aes) f d |
}

melodyC = \relative {
  ees'1~ | 4 r bes'4 4 |
}

melodyD = \relative {
  ees'1~ | 2. r4 |
}

melody = {
  \global
  \melodyA
  \repeat volta 2 {
    \keepWithTag #'dash \melodyB
    \alternative { \melodyC \melodyD }
  }
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
  \keepWithTag #'v2 \melodyB \melodyD
  \bar "|."
}

wordsOne = \lyricmode {
  \set stanza = "1."
  You’re a heart -- break -- er,
  you’re a love fak -- er,
  A heart -- break -- er play -- ing with fire. __
  You’re a tear -- snatch -- er,
  you’re a quarr’l patch -- er,
  But you can’t break my heart __ an -- y -- more. __

  For I have just found some -- one else
  who’s sure to take your place,
  Some -- one I can al -- ways trust
  to fill this emp -- ty space.
  You’re a heart -- break -- er,
  you’re a love fak -- er,
  but you can’t break my heart __ an -- y -- more __

  \set stanza = "2." You’re a

  more __
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  "(You’re" a) smooth talk -- er,
  you’re a \nom real cool \yesm walk -- er,
  But now you have talked out of turn. __
  You’re a high step -- per,
  you’re an eye -- catch -- er,
  But you won’t catch my \nom glanc -- es \yesm an -- y -- more. __
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  You’re a heart -- break -- er,
  you’re a love fak -- er,
  A heart -- break -- er play -- ing with fire. __
  You’re a tear -- snatch -- er,
  you’re a quarr’l patch -- er,
  But you can’t break my heart __ an -- y -- more. __

  For I have just found some -- one else
  who’s sure to take your place,
  Some -- one I can al -- ways trust
  to fill this emp -- ty space.
  You’re a heart -- break -- er,
  you’re a love fak -- er,
  but you can’t break my heart __ an -- y -- more __

  \set stanza = "2."
  You’re a smooth talk -- er,
  you’re a real cool walk -- er,
  But now you have talked out of turn. __
  You’re a high step -- per,
  you’re an eye -- catch -- er,
  But you won’t catch my glanc -- es an -- y -- more. __

  For I have just found some -- one else
  who’s sure to take your place,
  Some -- one I can al -- ways trust
  to fill this emp -- ty space.
  You’re a heart -- break -- er,
  you’re a love fak -- er,
  but you can’t break my heart __ an -- y -- more __
}

midiWords = \lyricmode {
  \set stanza = "1."
  "You’re " "a " heart break "er, "
  "\nyou’re " "a " "love " fak "er, "
  "\nA " heart break "er " play "ing " "with " "fire. " 
  "\nYou’re " "a " tear snatch "er, "
  "\nyou’re " "a " "quarr’l " patch "er, "
  "\nBut " "you " "can’t " "break " "my " "heart "  an y "more.\n" 

  "\nFor " "I " "have " "just " "found " some "one " "else "
  "\nwho’s " "sure " "to " "take " "your " "place, "
  "\nSome" "one " "I " "can " al "ways " "trust "
  "\nto " "fill " "this " emp "ty " "space. "
  "\nYou’re " "a " heart break "er, "
  "\nyou’re " "a " "love " fak "er, "
  "\nbut " "you " "can’t " "break " "my " "heart "  an y "more\n" 

  \set stanza = "2."
  "\nYou’re " "a " "smooth " talk "er, "
  "\nyou’re " "a " \nom "real " "cool " \yesm walk "er, "
  "\nBut " "now " "you " "have " "talked " "out " "of " "turn. " 
  "\nYou’re " "a " "high " step "per, "
  "\nyou’re " "an " eye catch "er, "
  "\nBut " "you " "won’t " "catch " "my " glanc "es " an y "more.\n" 

  "\nFor " "I " "have " "just " "found " some "one " "else "
  "\nwho’s " "sure " "to " "take " "your " "place, "
  "\nSome" "one " "I " "can " al "ways " "trust "
  "\nto " "fill " "this " emp "ty " "space. "
  "\nYou’re " "a " heart break "er, "
  "\nyou’re " "a " "love " fak "er, "
  "\nbut " "you " "can’t " "break " "my " "heart "  an y "more " 
}

pianoRHone = \relative {
  \global \vo
  bes'2(g4 ees | \ov <d aes' c> <c d f> <aes d f> <aes d> \vo | ees'1~ | 2) \section
  bes'4 4 |
  \repeat volta 2 {
    bes1 |
    \ov <bes, ees g>4 <g bes ees> <ees' g des' ees> q |
    \vo ees'1 |
    \ov <ees, aes c>4 <c ees aes>2 <ees aes c>4 |
    \vo bes'2 g4 ees | % 58c
    c'4 bes g ees |
    d4 f2.~ |
    f2 bes4 4 |
    bes1 |
    \ov <bes, ees g>4 <g bes ees> <ees' g des' ees> q | % 58d
    \vo ees'1 |
    \ov <ees, aes c>4 <c ees aes>2 <ees aes c>4 |
    \vo bes'2 g4 ees |
    \ov <d aes' c>4 <c d aes'> <aes d f> <aes d> |
    \vo ees'1~ | % 59a
    ees2. 4 |
    \ov <aes, d f> q q <bes d g> |
    <c d aes'>4 q <bes d g> <aes d f> |
    <ees' g>4 q <f aes> <ees fis a> |
    <ees g bes>1 | % 59b
    <aes, d f>4 4 4 <bes d g> |
    <c d aes'>4 q <bes d g> <aes d f> |
    <ees' g>4 4 <f aes> <ees fis a> |
    <ees g bes>2 <d aes' bes>4 4 |
    \vo bes'1 | % 59c
    \ov <bes, ees g>4 <g bes ees> <ees' g des' ees> q |
    \vo ees'1 |
    \ov <ees, aes c>4 <c ees aes>2 <ees aes c>4 |
    \vo bes'2 g4 ees |
    \ov <d aes' c>4 <c d aes'> <aes d f> <aes d> | % 59d
    \alternative {
      { \vo ees'1~ | 2 bes'4 4 | }
      { \ov <g, bes ees>2 <ees' ges c>4 4 | <ees g bes ees>2 4-> r | }
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  r4 <bes ees g> r <g bes> | s1 | r4 <g bes> r <ges c> | <g bes>2 \section
  <d' aes'>4 4 |
  \repeat volta 2 {
    r4 <bes ees g> r q | s1 | r4 <ees aes c> r q | s1 |
    r4 <bes ees g> r <g bes> | r <ees' g> r <g, bes> | r <aes d> r q | r q < d aes'> q | r <bes ees g> r q |
    s1 | r4 <ees aes c> r q | s1 | r4 <bes ees f> r <g bes> | s1 |
    r4 <g bes> r <ges c> | <g bes>2. r4 | s1 | s | s | % 59a
    s1*5 |
    r4 <bes ees g> r q | s1 | r4 <ees aes c> r q | s 1 |r4 <bes ees g> r <g bes> |
    s1 |
    \alternative {
      { r4 <g bes> r <ges c> | <g bes>2 <d' aes'>4 4 | }
      { s1*2 }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\mf | s | s | s2
  s2\mf
  \repeat volta 2 {
    s1*14 |
    s1*16 |
    \alternative {
      { s1*2 | }
      { s1*2 | }
    }
  }
}

pianoLH = \relative {
  \global
  ees,4 r <bes bes'> r | f' r q r | ees r aes2 | ees'4 c \section
  bes4 4 |
  \repeat volta 2 {
    ees,4 r <bes bes'> r | ees r ees' ees | aes, r <ees ees'> r | aes r q aes |
    ees4 r <bes bes'> r | ees r <bes bes'> r | f' r q r | f r bes4 4 | ees, r q r |
    ees4 r ees' ees | aes, r <ees ees'> r | aes r q aes | ees r <bes bes'> r | f' r q r |
    ees4 r aes2 | ees'4 c bes g | f r <bes, bes'> r | f' r bes2 | ees4 4 d c | % 59a
    bes4 c bes g | f r <bes, bes'> r | f' r bes2 | ees4 4 d c | bes c bes bes |
    ees,4 r <bes bes'> r | ees r ees'4 4 | aes, r <ees ees'> r | aes r q aes | ees r <bes bes'> r |
    f'4 r q r |
    \alternative {
      { ees4 r aes2 | ees'4 c bes bes | }
      { ees,4 bes' aes2 | ees'4 bes <ees, ees'>4-> r | }
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
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
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
        \new FretBoards \ChordTrack
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \magnifyStaff #4/7
            \new Voice \pianoRHone
            \new Voice \pianoRHtwo
          >>
          \new Dynamics \teeny\dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
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
            \new Dynamics \dynamicsPiano
            \new Voice \melodySingle
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
