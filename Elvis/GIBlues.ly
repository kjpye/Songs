\version "2.25.19"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "G. I. Blues"
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
  \key c \major
  \time 4/4
}

TempoTrack = {
  \global
  \tempo "Moderately Bright" 4=120
  \set Score.tempoHideNote = ##t
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "16a" s1*3 s2..
  \textMark \markup\box "16b" s8
  \repeat volta 4 {
    s1*3
    \textMark \markup\box "16c" s1*3
    \textMark \markup\box "16d" s1*3
    \textMark \markup\box "17a" s1*2 s2 s8
    \textMark \markup\box "17b" s4. s1*3
    \textMark \markup\box "17c" s1*4
    \textMark \markup\box "17d" s1*3
    \alternative {
      { \textMark \markup\box "17e" s1*2 }
      { s1*2 }
    }
  }
}

ChordTrack = \chordmode {
  s1*4 |
  \repeat volta 4 {
    c1 | s1*2 |
    c1:7 | f | s |
    c1 | s | g:7 |
    f1:7 | c | s | % 17a
    c1 | s | s |
    c1:7 | f | s | c |
    s1 | g4:7 r2. | f4:7 r f2:7 |
    \alternative {
      { c2 f:7 | g1:7 | }
      { c2 f:7 | c1 | }
    }
  }
}

melodyA = \relative {
  \global
  R1*3 | r2... \section \break
  g16
}

melodyB = \relative {
  c'4 e8. g,16 c4 e8. g,16 | c4 e8. g,16 c8 e4 g,8 | c1 |
  r2 r4 r8. c16 | f4 a8. c,16 f4 a8. c,16 | f4 a8. c,16 f8 a4 c,8 |
  e1 |
  \tag #'dash {r2 r8. g16 a8. g16 |}
  \tag #'(v1 v2) {r2 r8. g16 a8. g16 |}
  \tag #'(v3 v4) {r2 r4      a8. g16 |}
  \tag #'dash {\slurDashed b8.(16) 8.(16) 4 8.(16) \slurSolid | }
  \tag #'v1   {            b8. 16  4      4 4                 | }
  \tag #'v2   {            b4      4      4 8. 16             | }
  \tag #'v3   {            b4      8. 16  4 4                 | }
  \tag #'v4   {            b4      8. 16  4 8. 16             | }
  \tag #'dash {\slurDashed a8.(16)  8.(16) c,8.(16) \slurSolid c4 |} % 17a
  \tag #'v1   {            a'4      4      c,8. 16             c4 |} % 17a
  \tag #'v2   {            a'4      4      c,4                  c4 |} % 17a
  \tag #'v3   {            a'4      8. 16  c,4                  c4 |} % 17a
  \tag #'v4   {            a'8. 16  4      c,4                  c4 |} % 17a
  c1 | r2 r8 % 17a
  \section \sectionLabel \markup\bold Chorus \break
  g'8 a8. g16 | c4 bes g e | c'8. 16 bes8. a16 g4 c, | e1 |
  r2 r4 g8. 16 | f4 a c d8. c16 | \tuplet 3/2 {ees4 4 d} c a | g1 |
  r2 r8. g16 a8. g16 | d'4 b g a8.(g16) | c8. c,16 d8. c16 ees4 4 |
}

melodyC = \relative { c'1 | r2 r4 r8. g16 | }
melodyD = \relative { c'1~ | 2. r4 | }

melody = {
  \global
  \melodyA
  \repeat volta 4 {
    \keepWithTag #'dash \melodyB
    \alternative { \melodyC \melodyD }
  }
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \keepWithTag #'v1 \melodyB \melodyC
  \keepWithTag #'v2 \melodyB \melodyC
  \keepWithTag #'v3 \melodyB \melodyC
  \keepWithTag #'v4 \melodyB \melodyD
  \bar "|."
}


chorus = \lyricmode {
  I’ve got those hup, two, three, four, oc -- cu -- pa -- tion G. I. Blues.
  From my G. I. hair to the heels of my G. I. shoes.
  And if I don’t go state -- side __ soon,
  I’m gon -- na blow my fuse.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  They give us a room with a view of the beau -- ti -- ful Rhine.
  They give us a room with a view of the beau -- ti -- ful Rhine.
  Gim -- me a \nom mud -- dy \yesm old creek in Tex -- as \nom an -- y \yesm old time.
  \chorus
  \set stanza = "2." We

  fuse. __
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  "(We)" get has -- sen -- fef -- fer and black pump -- er nick -- el for chow.
  We get has -- sen -- fef -- fer and black pump -- er nick -- el for chow.
  I’d blow my next __ month’s __ pay \nom for a \yesm slice of Tex -- as cow.
  \repeat unfold 41 \skip 1
  \set stanza = "4." We’d
}

wordsThree = \lyricmode {
  \set stanza = "3."
  "(We’d)" like to be he -- roes, but all that we do here is march.
  We’d like to be he -- roes, but all that we do here is march.
  \skip 1 And they don't __ \nom give the \yesm Pur -- ple Heart \nom for a \yesm fall -- en arch.
  \repeat unfold 41 \skip 1
  \set stanza = "4." The
}

wordsFour = \lyricmode {
  \set stanza = "4."
  "(The)" Frau -- leins are pret -- ty as flow’rs, but we can’t make a pass.
  The Frau -- leins are pret -- ty as flow’rs, but we can’t make a pass.
  \skip 1 ’Cause they’re all -- \nom wear -- in’ signs say -- in’ “Keep -- en \yesm Sie off __ the grass!”
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  They give us a room with a view of the beau -- ti -- ful Rhine.
  They give us a room with a view of the beau -- ti -- ful Rhine.
  Gim -- me a mud -- dy old creek in Tex -- as an -- y old time.
  \chorus

  \set stanza = "2."
  We get has -- sen -- fef -- fer and black pump -- er nick -- el for chow.
  We get has -- sen -- fef -- fer and black pump -- er nick -- el for chow.
  I’d blow my next __ month’s __ pay for a slice of Tex -- as cow.
  \chorus

  \set stanza = "3."
  We’d like to be he -- roes, but all that we do here is march.
  We’d like to be he -- roes, but all that we do here is march.
  And they don't  give the Pur -- ple Heart for a fall -- en arch.
  \chorus

  \set stanza = "4."
  The Frau -- leins are pret -- ty as flow’rs, but we can’t make a pass.
  The Frau -- leins are pret -- ty as flow’rs, but we can’t make a pass.
  ’Cause they’re all -- wear -- in’ signs say -- in’ “Keep -- en Sie off __ the grass!”
  \chorus
}

midiWords = \lyricmode {
  \set stanza = "1."
  "They " "give " "us " "a " "room " "with " "a " "view " "of " "the " beau ti "ful " "Rhine. "
  "\nThey " "give " "us " "a " "room " "with " "a " "view " "of " "the " beau ti "ful " "Rhine. "
  "\nGim" "me " "a " mud "dy " "old " "creek " "in " Tex "as " an "y " "old " "time. "
  "\nI’ve " "got " "those " "hup, " "two, " "three, " "four, " oc cu pa "tion " "G. " "I. " "Blues. "
  "\nFrom " "my " "G. " "I. " "hair " "to " "the " "heels " "of " "my " "G. " "I. " "shoes. "
  "\nAnd " "if " "I " "don’t " "go " state "side "  "soon, "
  "\nI’m " gon "na " "blow " "my " "fuse.\n"

  \set stanza = "2."
  "\nWe " "get " has sen fef "fer " "and " "black " pump "er " nick "el " "for " "chow. "
  "\nWe " "get " has sen fef "fer " "and " "black " pump "er " nick "el " "for " "chow. "
  "\nI’d " "blow " "my " "next "  "month’s "  "pay " "for " "a " "slice " "of " Tex "as " "cow. "
  "\nI’ve " "got " "those " "hup, " "two, " "three, " "four, " oc cu pa "tion " "G. " "I. " "Blues. "
  "\nFrom " "my " "G. " "I. " "hair " "to " "the " "heels " "of " "my " "G. " "I. " "shoes. "
  "\nAnd " "if " "I " "don’t " "go " state "side "  "soon, "
  "\nI’m " gon "na " "blow " "my " "fuse.\n"

  \set stanza = "3."
  "\nWe’d " "like " "to " "be " he "roes, " "but " "all " "that " "we " "do " "here " "is " "march. "
  "\nWe’d " "like " "to " "be " he "roes, " "but " "all " "that " "we " "do " "here " "is " "march. "
  "\nAnd " "they " "don't "  "give " "the " Pur "ple " "Heart " "for " "a " fall "en " "arch. "
  "\nI’ve " "got " "those " "hup, " "two, " "three, " "four, " oc cu pa "tion " "G. " "I. " "Blues. "
  "\nFrom " "my " "G. " "I. " "hair " "to " "the " "heels " "of " "my " "G. " "I. " "shoes. "
  "\nAnd " "if " "I " "don’t " "go " state "side "  "soon, "
  "\nI’m " gon "na " "blow " "my " "fuse.\n"

  \set stanza = "4."
  "\nThe " Frau "leins " "are " pret "ty " "as " "flow’rs, " "but " "we " "can’t " "make " "a " "pass. "
  "\nThe " Frau "leins " "are " pret "ty " "as " "flow’rs, " "but " "we " "can’t " "make " "a " "pass. "
  "\n’Cause " "they’re " all wear "in’ " "signs " say "in’ " “Keep "en " "Sie " "off "  "the " "grass!” "
  "\nI’ve " "got " "those " "hup, " "two, " "three, " "four, " oc cu pa "tion " "G. " "I. " "Blues. "
  "\nFrom " "my " "G. " "I. " "hair " "to " "the " "heels " "of " "my " "G. " "I. " "shoes. "
  "\nAnd " "if " "I " "don’t " "go " state "side "  "soon, "
  "\nI’m " gon "na " "blow " "my " "fuse. "
}

pianoRHone = \relative {
  \global \vo
  d''4(b g a8. g16 |
  e'8. c,16 d8. c16 ees4 4 |
  \ov <e, g c>2) <c' ees a>4(q |
  <b f' g>4. q8 4) r8. \section
  g16 |
  \repeat volta 4 { \vo
  c4 e8. g,16 c4 e8. g,16 | c4 e8. g,16 c8 e4 g,8 | c1 |
  <e g c>2. r8. c16 | f4 a8. c,16 f4 a8. c,16 | f4 a8. c,16 f8 a4 c,8 |
  e1 | \ov <e g c>2~8. <c e g>16 <c e a>8. <c e g>16 | <d f b>8. 16 4 4 4 |
  <c ees a>4 4 <ees, a c>8. 16 4 \vo | c'1 | \ov <c e g c>4. 8~8 \section % 17a
  \vo g'8 a8. g16 | c4 bes g e | c'8. 16 bes8. a16 g4 c, | e1~ |
  e2. g8. 16 | f4 a c d8. c16 | \ov \tuplet 3/2 {<g a ees'>4 q <f a d>} <ees a c> <c ees a> | \vo g'1~ |
  g2~8. 16 a8. g16 | d'4 b g a8.(g16) | c8. c,16 d8. c16 ees4 4 \ov |
    \alternative {
      { <e, g c>2 <c' ees a>4(q | <b f' g>4. q8~4) r8. g16 | }
      { <e g c>2 <c' ees a>4(q | <c e g c>2) <c' e g c>4-> r | }
    }
  }
  \bar "|."
}

pianoRHtwo = \relative {
  \global \vt
  <d' f b>4 r r2 | <c ees a>8. r16 s4 <a c>4 4 | s1 | s2...
  s16
  \repeat volta 4 {
    e2 e | e e | <e g>1 |
    s1 | a2 a | a a |
    <g c>1 | s1 | s |
    s1 | <e g>1 | s2 s8 % 17a
    r8 r4 | r <c' e> r <g c> | r <c e> r <e, g> | r <e g c> r q |
    r4 q r <bes' e> | r <c f> r <f a> | s1 | r4 <g, c e> r q |
    r4 q r <c e> | <d f b> r r2 | <c ees a>8. r16 r4 <a c> q |
    \alternative {
      { s1*2 | }
      { s1*2 | }
    }
  }
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s1\f | s | s | s2...
  s16\f |
  \repeat volta 4 {
    s1*11 | s2 s8
    s4.\f | s1*10 |
    \alternative {
      { s1*2 | }
      { s1*2 | }
    }
  }
}

pianoLHone = \relative {
  \global
  g,4 r r2 | f8. r16 r4 f f | c g' f f | g8. e'16 d8 g,~4 r8. \section
  r16 |
  \repeat volta 4 {
    \vo r4 g4(a g) | r g(a g) | \ov c, e g a8. g16 |
    bes8. 16 a4 g8. c,16 d8. e16 | \vo r4 c'(d c) | r c(d c) |
    \ov c,4 e g a8. g16 | c4 bes8. a16 g4 c, | g' r r g |
    f4 r r f | c e g a8. g16 | c8. a16 g8 c,~c \section % 17a
    r8 r4 | c e g a8. g16 | c,4 e g a8. g16 | c,4 e g a8. g16 |
    c4 bes8. a16 g4 <c, c'> | f c' a c | f, a c f, | c e g a8. g16 |
    c4 bes8. a16 g4 <c, c'> | g' r r2 | f8. r16 r4 f f |
    \alternative {
      { c4 g' f f | g8. e'16 d8 g,~4 r | }
      { c,4 g' f f | c' a8. g16 <c, c'>4-> r | }
    }
  }
  \bar "|."
}

pianoLHtwo = \relative {
  \global \vt
  s1*3 | s2...
  s16
  \repeat volta 4 {
    c,1 | c | s |
    s1 f | f |
    s1*3 |
    s1 | s | s2 s8 \section % 17a
    s4. | s1*3 |
    s1*4 |
    s1*3 |
    \alternative {
      { s1*2 | }
      { s1*2 | }
    }
  }
  \bar "|."
}

#(set-global-staff-size 18.5)

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
            \addlyrics \wordsThree
            \addlyrics \wordsFour
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
          \new Dynamics \teeny \dynamicsPiano
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
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
