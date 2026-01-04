\version "2.25.31"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Follow that Dream"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Ben Weisman"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Fred Wise"
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
  \partial 2.
}

TempoTrack = {
  \global
  \tempo "Moderatley Bright" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "100a" s2. s1*3 s4 \break
  \textMark \markup\box "100b" s2.
  \repeat volta 2 {
    s1*3
    \textMark \markup\box "100c" s1*4
    \textMark \markup\box "100d" s1*4
    \textMark \markup\box "101a" s1*4 s4 \break
    \textMark \markup\box "101b" s2. s1*2
    \textMark \markup\box "101c" s1*4
    \alternative {
      { \textMark \markup\box "101d" s1*2 }
      { s1*2}
    }
  }
}

ChordTrack = \chordmode {
  s2. s1*4
  \repeat volta 2 {
    ees1 aes ees2 aes | ees1 s c:m g:m | bes:7 ees:7 s aes |
    aes1 ees aes ees2 aes ees4 r2. aes1 s2 bes:7 | ees1 s c:m aes2 bes:7 |
    \alternative {
      {ees2 aes:7 ees4 r2. |}
      {ees2 aes:7 ees1 |}
    }
  }
}

melodyA = \relative {
  r2. | R1*3 | r4 \section \break
  bes'8 8 4 c |
}

melodyB = \relative {
  g'4(f8) ees8~2 | % 100b+
  \tag #'dash {r4 \slurDashed ees8(8) \slurSolid c4 ees |}
  \tag #'v1   {r4             ees8 8             c4 ees |}
  \tag #'v2   {r4             ees4               c4 ees |}
  ees1~ |
  \tag #'dash {ees4  \slurDashed bes'8(8) \slurSolid 4 c |} % 100c
  \tag #'v1   {ees,4             bes'8 8             4 c |}
  \tag #'v2   {ees,4             bes'4               4 c |}
  g(f8) ees~2 |
  \tag #'dash {r4 \slurDashed ees8 (8) \slurSolid g4 bes |}
  \tag #'v1   {r4             ees,8 8             g4 bes |}
  \tag #'v2   {r4             ees,4               g4 bes |}
  bes1~ |
  bes4 4 4 c | % 100d
  \tag #'dash {\slurDashed ees2(2~ | 4) \slurSolid c bes c |}
  \tag #'v1   {            ees1~   | 4             c bes c |}
  \tag #'v2   {            ees2 2~ | 4             c bes c |}
  bes(aes2.)~ |
  aes4 ees4 4 4 | g1 | r4 ees c ees | 1~ | 4 \section % 101a
  ees'2^\markup\bold Chorus 8 8 | c8 8 4 4. 8 | ees8 8 4 d c |
  c4(bes8 g~4 c | bes2) r8 ees8 8 8 | c c bes4 g f | g8(f) ees4 c bes |
}

melodyC = \relative {c'4(ees2.)~ | 4 bes'8 8 4 c |}
melodyD = \relative {c'4(ees2.)~ | 2. r4 |}

melody = {
  \global
  \melodyA
  \repeat volta 2 {
    \keepWithTag #'dash \melodyB
    \alternative {\melodyC \melodyD}
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


dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
}

wordsOne = \lyricmode {
  When your heart gets rest -- less, __ \nom time to \yesm move a -- long. __
  \nom When your \yesm heart gets wea -- ry, __ \nom time to \yesm sing a song. __
  But when a dream __ is call -- ing you, __
  There’s just one thing that you can do. __

  You’ve got -- ta fol -- low that dream
  wher -- ev -- er that dream may lead. __
  You’ve got -- ta fol -- low that dream
  to find __ the love you need. __

  \set stanza = "2."
  Got -- ta find me
}

wordsTwo = \lyricmode {
  "(Got" -- ta find "me)" some -- one __ whose __ heart is free, __
  Some -- one to look for __ my __ dream with me. __
  And when I \nom find her, \yesm _ __ I may find out __
  That’s what my dreams are all a -- bout. __

  I’ve got -- ta fol -- low that dream
  wher -- ev -- er that dream may lead. __
  I’ve got -- ta fol -- low that dream
  to find __ the love I
  \repeat unfold 5 ""
  need. __
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  When your heart gets rest -- less, __ time to move a -- long. __
  When your heart gets wea -- ry, __ time to sing a song. __
  But when a dream __ is call -- ing you, __
  There’s just one thing that you can do. __

  You’ve got -- ta fol -- low that dream
  wher -- ev -- er that dream may lead. __
  You’ve got -- ta fol -- low that dream
  to find __ the love you need. __

  \set stanza = "2."
  Got -- ta find me some -- one __ whose __ heart is free, __
  Some -- one to look for __ my __ dream with me. __
  And when I find her, __ I may find out __
  That’s what my dreams are all a -- bout. __

  I’ve got -- ta fol -- low that dream
  wher -- ev -- er that dream may lead. __
  I’ve got -- ta fol -- low that dream
  to find __ the love I need. __
}

midiWords = \lyricmode {
  \set stanza = "1."
  "When " "your " "heart " "gets " rest "less, "  "time " "to " "move " a "long. " 
  "\nWhen " "your " "heart " "gets " wea "ry, "  "time " "to " "sing " "a " "song. " 
  "\nBut " "when " "a " "dream "  "is " call "ing " "you, " 
  "\nThere’s " "just " "one " "thing " "that " "you " "can " "do. " 

  "\nYou’ve " got "ta " fol "low " "that " "dream "
  "\nwher" ev "er " "that " "dream " "may " "lead. " 
  "\nYou’ve " got "ta " fol "low " "that " "dream "
  "\nto " "find "  "the " "love " "you " "need.\n" 

  \set stanza = "2."
  "\nGot" "ta " "find " "me " some "one "  "whose "  "heart " "is " "free, " 
  "\nSome" "one " "to " "look " "for "  "my "  "dream " "with " "me. " 
  "\nAnd " "when " "I " "find " "her, "  "I " "may " "find " "out " 
  "\nThat’s " "what " "my " "dreams " "are " "all " a "bout. " 

  "\nI’ve " got "ta " fol "low " "that " "dream "
  "\nwher" ev "er " "that " "dream " "may " "lead. " 
  "\nI’ve " got "ta " fol "low " "that " "dream "
  "\nto " "find "  "the " "love " "I " "need. " 
}

pianoRHone = \relative {
  \global \vo
  bes'8\(8 4 c | g f8 ees~2\) | r4 ees8\(8 c4 ees | 2\) c'4\(c | bes\) \section
  bes8 8 4 c |
  \repeat volta 2 {
    g4 f8 ees~2 | r4 ees8 8 c4 ees | 1~ |
    ees4 bes'8 8 4 c | g f8 ees~2 | r4 ees8 8 g4 bes | 1~ |
    bes4 4 4 c | ees1~ | 4 c bes c | bes aes2.~ |
    aes4 ees4 4 4 | g1 | r4 ees c ees | 1~ | 4 \section % 101a
    ees'2 8 8 | c8 8 4 4. 8 | ees8 8 4 d c |
    c4 bes8 g~4 c | bes2~8 ees8 8 8 | c c bes4 g f | g8 f ees4 c bes |
    \alternative {
      {c4 ees2.~ | 4 bes'8 8 4 c |}
      {c,4 ees c'8\(8 4 | \ov <ees, g bes ees>2\) q4-> r |}
    }
  }
}

pianoRHtwo = \relative {
  \global \vt
  r4 r2 | r4 <g bes> r q | r <aes c> r q | <g bes>2 <ees' ges>4 4 | <d aes'>
  r4 r2 |
  \repeat volta 2 {
    r4 <g, bes> r q | r <aes c> r q | r <g bes> r <aes c> |
    <g bes>4 <ees' g> r q | r <g, bes> r q | r <g c> r <ees' g> | r <bes d g> r q |
    <bes d aes'>4 <d aes'> r q | r <ees g des'> r q | r <ees g> <des g> <ees g> | <c ees>4 2. |
    r4 <aes ces> r q | r <g bes ees> r q | r <aes c> r q | r <g bes> <aes c> q | <g bes> % 101a
    r4 r2 | r4 <ees' aes> r q | r <ees aes c> <f aes> <d aes'> |
    <ees g>4 8 <bes ees>~4 <ees g> | r q r <ees g bes> | r <ees g> r <g, c> | r <aes c> aes2 |
    \alternative {
      {r4 <g bes> <ges c> q | <g bes> r r2 |}
      {r4 <g bes> <ees' ges> q | s1 |}
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s2.\mf | s1*3 | s4 s2.\mf |
  \repeat volta 2 {
    \alternative { {} {} }
  }
}

pianoLHone = \relative {
  \global
  r4 r2 | ees,4 r c' bes | aes r aes r | ees bes' aes aes | bes4 \section
  r4 r2 |
  \repeat volta 2 {
    ees,4 r c' bes | aes4 r aes r | ees r8 bes' aes4 4 |
    ees4 r bes r | ees r g bes | c r c, c' | g r8 d'8 bes4 g |
    bes4 r bes, bes' | ees, r8 bes' c c bes4 | ees, r ees' ees, | aes r8 ees' f f ees4 |
    aes,4 r aes r | ees r8 bes' c4 bes | aes r aes r | ees r8 bes' aes4 4 | ees \section % 101a
    r4 r2 | aes4 r ees r | aes r bes bes, |
    ees4 r bes' bes, | ees r g bes | c c, ees g | aes r bes bes, |
    \alternative {
      {ees4 r aes aes | ees r r2 |}
      {ees4 r aes aes | ees' bes <ees, ees'>-> r |}
    }
  }
}

pianoLHtwo = \relative {
  \global \vt
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
