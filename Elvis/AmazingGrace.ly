\version "2.25.23"

\include "kjp.ly"
\include "predefined-guitar-fretboards.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Amazing Grace"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Elvis Presley"
  arranger    = "(at least that’s what the original I’m copying says)"
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
  \time 3/4
  \partial 4
}

TempoTrack = {
  \global
  \tempo Slowly 4=80
  \set Score.tempoHideNote = ##t
}

TempoTrackSingle = {
  \global
  \tempo Slowly 4=80
  \set Score.tempoHideNote = ##t
  s4 s2.*65 \tempo 4=70 s2.*3
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "50a" s4
  \textMark \markup\musicglyph "scripts.segno"
  \repeat volta 2 {
    s2.*5
    \textMark \markup\box "50b"    s2.*5
    \textMark \markup\box "50c"    s2.*3
    \textMark \markup{\halign #RIGHT \italic "To Coda" \musicglyph "scripts.coda"}
    s2.
    \alternative {
      { s2.*2 |}
      {
        \textMark \markup\box "50d"    s2.*2
      }
    }
  }
  s2.*3
  \textMark \markup\box "51a"    s2.*5
  \textMark \markup\box "51b"    s2.*5
  \textMark \markup\box "51c"    s2.*2
  \textMark \markup{\halign #RIGHT \italic "D.S. al Coda"} s2. \break
  \textMark \markup{\musicglyph "scripts.coda" \italic Coda} s2.*2
  \textMark \markup\box "51d"    s2.*4
}

RehearsalTrackSingle = {
%  \set Score.currentBarNumber = #5
  \textMark \markup\box "50a" s4
  s2.*5
  \textMark \markup\box "50b"    s2.*5
  \textMark \markup\box "50c"    s2.*3
  s2.
  s2.*2
  s2.*5
  \textMark \markup\box "50b"    s2.*5
  \textMark \markup\box "50c"    s2.*3
  s2.
  \textMark \markup\box "50d"    s2.*2
  s2.*3
  \textMark \markup\box "51a"    s2.*5
  \textMark \markup\box "51b"    s2.*5
  \textMark \markup\box "51c"    s2.*2
  s2.
  s2.*5
  \textMark \markup\box "50b"    s2.*5
  \textMark \markup\box "50c"    s2.*3
  s2.
  s2.*2
  \textMark \markup\box "51d"    s2.*4
}

ChordTrack = \chordmode {
  s4 g2. s2 g4:7 c2. g s | e:m d:7 s g g:7 | c g e:m d2 d4:7 | g2 c4 g2 d4 | g2 c4 g2 d4:7 g2. s2 g4:7 c2. |
  g2. s e:m d:7 s | g g:7 c g e:m | d2 d4:7 g2 c4 g2 d4:7 g2 c4 g2 d4:7 | e2.:m d2 d4:7 c2. g |
}

ChordTrackSingle = \chordmode {
  s4 g2. s2 g4:7 c2. g s | e:m d:7 s g g:7 | c g e:m d2 d4:7 g2 c4 g2 d4:7
  g2. s2 g4:7 c2. g s | e:m d:7 s g g:7 | c g e:m d2 d4:7 | g2 c4 g2 d4:7 g2. s2 g4:7 c2. |
  g2. s e:m d:7 s | g g:7 c g e:m | d2 d4:7 g2 c4 g2 d4:7 g2 c4
  g2. s2 g4:7 c2. g s | e:m d:7 s g g:7 | c g e:m d2 d4:7
  g2 d4:7 | e2.:m d2 d4:7 c2. g |
}

melodyA = \relative {
  d'8.(e16) |
}

melodyB = \relative {
  g'2 b8.(d,16) | b'2 8.(a16) | g2 8.(e16) | d2 8.(e16) | g2 \tuplet 3/2 {b8(a g)} |
  b2 e8.(b16) | d2.~ | 2 b8.(d16) | 4.(b8) \tuplet 3/2 {d8(b a)} | g8(b4.) 8.(a16) |
  g2 b8.(g16) | d2 8.(e16) | g2 b4 | 2 a4 |
}

melodyC = \relative {g'2(\tuplet 3/2 {a8 b a} | g2) d8.(e16)}
melodyD = \relative {g'2.~ | 4 r d8.(e16) |}
melodyE = \relative {
  g'2 \tuplet 3/2 {b8(a g)} | b2 a4 | g2 e4 |
  d2 8.(e16) | g2 b8.(g16) | b2 a8.(b16) | d2.~ | 2 b8.(d16) | % 51a
  d2 b4 | g2 b8.(a16) g2 e4 | d2 8.(e16) | g2 b4 |
  b2 a4 | g2(\tuplet 3/2 {a8 g e} | g2) d8.(e16) |
}

melodyF = \relative {
  g'2(\tuplet 3/2 {a8 b a} | g2) d8.(e16) |
  g2 b8.(d16) | b2 a4 | g2.~ | 2\fermata r4 |
}

melody = {
  \global
  \melodyA
  \repeat volta 2 {
    \melodyB
    \alternative { \melodyC \melodyD }
  }
  \melodyE \section
  \melodyF
  \bar "|."
}

melodySingle = {
  \global
  \melodyA
  \melodyB \melodyC
  \melodyB \melodyD
  \melodyE
  \melodyB \melodyF
  \bar "|."
}

wordsOne = \lyricmode {
  \set stanza = "1. 4."
  A -- maz -- ing __ grace, how __ sweet the __ sound
  that __ saved a __ wretch like __ me! __
  I __ once __ was __ lost __ but __ now I’m __ found,
  was __ blind, but now I see. __
  \set stanza = "2."
  When __
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  "(When)" we’ve been __ there ten __ thou -- sand __ years,
  bright shin -- ing __ as the sun. __
  We’ve __ no __ less __ days __ to __ sing God’s __ praise,
  than __ when we’d first be -- "" "" gun. __
  \set stanza = "3."
  Through __ man -- y __ dan -- gers, toils and snares
  I __ have al -- read -- y __ come; __
  ’Tis __ grace that brought me __ safe thus far,
  And __ grace will lead me home. __
  \set stanza = "4."
  A --
  see. __
  Was __ blind, but __ now I see. __
}

wordsSingle = \lyricmode {
  \set stanza = "1."
  A -- maz -- ing __ grace, how __ sweet the __ sound
  that __ saved a __ wretch like __ me! __
  I __ once __ was __ lost __ but __ now I’m __ found,
  was __ blind, but now I see. __
  \set stanza = "2."
  When __ we’ve been __ there ten __ thou -- sand __ years,
  bright shin -- ing __ as the sun. __
  We’ve __ no __ less __ days __ to __ sing God’s __ praise,
  than __ when we’d first be -- gun. __
  \set stanza = "3."
  Through __ man -- y __ dan -- gers, toils and snares
  I __ have al -- read -- y __ come; __
  ’Tis __ grace that brought me __ safe thus far,
  And __ grace will lead me home. __
  \set stanza = "4."
  A -- maz -- ing __ grace, how __ sweet the __ sound
  that __ saved a __ wretch like __ me! __
  I __ once __ was __ lost __ but __ now I’m __ found,
  was __ blind, but now I see. __
  Was __ blind, but __ now I see. __
}

midiWords = \lyricmode {
  \set stanza = "1."
  "A" maz "ing "  "grace, " "how "  "sweet " "the "  "sound "
  "\nthat "  "saved " "a "  "wretch " "like "  "me! " 
  "\nI "  "once "  "was "  "lost "  "but "  "now " "I’m "  "found, "
  "\nwas "  "blind, " "but " "now " "I " "see.\n" 
  \set stanza = "2."
  "\nWhen "  "we’ve " "been "  "there " "ten "  thou "sand "  "years, "
  "\nbright " shin "ing "  "as " "the " "sun. " 
  "\nWe’ve "  "no "  "less "  "days "  "to "  "sing " "God’s "  "praise, "
  "\nthan "  "when " "we’d " "first " be "gun.\n" 
  \set stanza = "3."
  "\nThrough "  man "y "  dan "gers, " "toils " "and " "snares "
  "\nI "  "have " al read "y "  "come; " 
  "\n’Tis "  "grace " "that " "brought " "me "  "safe " "thus " "far, "
  "\nAnd "  "grace " "will " "lead " "me " "home.\n" 
  \set stanza = "4."
  "\nA" maz "ing "  "grace, " "how "  "sweet " "the "  "sound "
  "\nthat "  "saved " "a "  "wretch " "like "  "me! " 
  "\nI "  "once "  "was "  "lost "  "but "  "now " "I’m "  "found, "
  "\nwas "  "blind, " "but " "now " "I " "see. " 
  "\nWas "  "blind, " "but "  "now " "I " "see. " 
}

pianoRHoneA = \relative {
  d'8.(e16) |
}

pianoRHoneB = \relative {
  \vo <b g'>2 <g' b>8.(d16) | q2 b'8.(a16) | g2 <e g>8.(e16) | g8.(e16 d4) 8.(e16) | <b g'>2 \tuplet 3/2 {<g' b>8(a g)} |
  \ov <e g b>2 \vo e'8.(b16) | d2.~ | 2 b8.(d16) | 4.(b8) \tuplet 3/2 {d8(b a)} | g8(b4.) 8.(a16) |
  \ov <c, e g>2 \vo b'8.(g16) | \ov <g, b d>2 \vo d'8.(e16) | \ov <b e g>2 <e g b>4 | <d fis b>2 <c fis a>4 |
}

pianoRHoneC = \relative {<b d g>2(\tuplet 3/2 {<c e a>8 <d g b> <c e a>} | \vo g'2) d8.(e16)}
pianoRHoneD = \relative {\vo g'2.~ | 4 r d8.(e16) |}
pianoRHoneE = \relative {
  \vo g'2 \tuplet 3/2 {b8(a g)} | b2 a4 | g2 e4 |
  d2 8.(e16) | g2 b8.(g16) | b2 a8.(b16) | d2.~ | 2 b8.(d16) | % 51a
  d2 b4 | g2 b8.(a16) g2 e4 | d2 8.(e16) | g2 b4 |
  b2 a4 | g2(\tuplet 3/2 {<c, e a>8 g' e} | <b d g>2) d8.(e16)
}
pianoRHoneF = \relative {
  <b d g>2(\tuplet 3/2 {<c e a>8 <d g b> <c e a>} | <b d g>2) d8.(e16) |
  <b e g>2 \vo b'8.(d16) | \ov <d, fis b>2 <c fis a>4 | \vo g'2.~ | 2\fermata r4 |
}

pianoRHone = {
  \global
  \pianoRHoneA
  \repeat volta 2 {
    \pianoRHoneB
    \alternative { \pianoRHoneC \pianoRHoneD }
  }
  \pianoRHoneE \section
  \pianoRHoneF
  \bar "|."
}

pianoRHoneSingle = {
  \global
  \pianoRHoneA
  \pianoRHoneB \pianoRHoneC
  \pianoRHoneB \pianoRHoneD
  \pianoRHoneE
  \pianoRHoneB \pianoRHoneF
  \bar "|."
}

pianoRHtwoA = \relative {
  s4
}
pianoRHtwoB = \relative {
  \vt
  d'8. e16 d4 r | d8. e16 d4 <b f'> | <c e>8. <d f>16 <c e>4 c4 | b2 4 | d8. e16 d4 4 |
  s2 <e g>4 | <fis a> <d fis>8. <e g>16 <d fis>8. <e g>16 | <d fis>8. <e g>16 <d fis>4 4 | <d g>2 4 | <b f'>2 4 |
  s2 <c e>4 | s2 <g b>4 | s2. | s |
}
pianoRHtwoC = \relative { \vt s2. | <b d>8. <c e>16 <b d>4 r | }
pianoRHtwoD = \relative { \vt <b d>2 <c e>4 | <b d>2 r4 | }
pianoRHtwoE = \relative {
  \vt
  <b d>2 4 | r <d g> <b f'> | r <c e> <g c> |
  r4 <g b> q | r <b d> q | r <b e g> <b e> | r <fis' a> q | r q <d fis> | % 51a
  r4 <d g> q | r <b f'> q | r <c e> <g c> | r <g b> q | r <b e> <b e g> |
  r4 <d fis> <c fis> | r <b d> s | s2. }
pianoRHtwoF = \relative {
  \vt s2. | s |
  s2 <e' g>4 | s2. | <c e>2. | <b d>2\fermata r4 |
}

pianoRHtwo = {
  \global
  \pianoRHtwoA
  \repeat volta 2 {
    \pianoRHtwoB
    \alternative { \pianoRHtwoC \pianoRHtwoD }
  }
  \pianoRHtwoE \section
  \pianoRHtwoF
  \bar "|."
}

pianoRHtwoSingle = {
  \global
  \pianoRHtwoA
  \pianoRHtwoB \pianoRHtwoC
  \pianoRHtwoB \pianoRHtwoD
  \pianoRHtwoE
  \pianoRHtwoB \pianoRHtwoF
  \bar "|."
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4\mf
  \repeat volta 2 {
    s2.*14 |
    \alternative {
      { s2.*2 | }
      { s2.*2 | }
    }
  }
  s2.*19 |
  s2.-\markup\italic rall. | s2.*2 |
}

dynamicsPianoSingle = {
  \override DynamicTextSpanner.style = #'none
  s4\mf
  s2.*65 |
  s2.-\markup\italic rall. | s2.*2 |
}

pianoLHA = \relative {
  r4
}
pianoLHB = \relative {
  g,2~8. 16 | 2~8. b16 | c2~8. e16 | g2~8. 16 | 2~8. fis16 |
  e2~8. 16 | d2~8. a16 | d4~8. e16 \tuplet 3/2 {d8 b a} | g2~8. 16 | 2 \tuplet 3/2 {8 a b} |
  c2~8. 16 | g2 \tuplet 3/2 {r8 d' dis} | e2 \tuplet 3/2 {b8 c cis} | d2~8. 16 |
}
pianoLHC = \relative { g,4~8. b16 c8. e,16 | g4~8. e'16 \tuplet 3/2 {d8 b a} | }
pianoLHD = \relative { g,4~8. b16 c8. e16 | g4. e8 \tuplet 3/2 {d b a} | }
pianoLHE = \relative {
  g,4~8. 16 8. 16 | 4~8. 16 \tuplet 3/2 {8 a b} | c4~8. c,16 \tuplet 3/2 {c8 d e} |
  g2 8. d16 | g4~8. d16 g8. f16 | e2 \tuplet 3/2 {b'8 c cis} | d2~\tuplet 3/2 {8 a a} | d4~8. e16 \tuplet 3/2 {d8 b a} | % 51a
  g4~8. 16 \tuplet 3/2 {8 8 d} | g4~8. 16 \tuplet 3/2 {8 a b} | c2 \tuplet 3/2 {c,8 e fis} | g4~8. d16 \tuplet 3/2 {g8 d' dis} | e2 \tuplet 3/2 {b8 c cis} |
  d4~8. a16 d8. 16 | g,4~8. b16 c4 | g4~8. e'16 \tuplet 3/2 {d8 b a} |
}
pianoLHF = \relative {
  g,4~8. b16 c8. e16 | g4~8. e16 d8. e16 |
  e4~8. 16 \tuplet 3/2 {b8 c cis} | d2 4 | c2~\tuplet 3/2 {8 b a} | g2\fermata r4 |
}

pianoLH = {
  \global
  \pianoLHA
  \repeat volta 2 {
    \pianoLHB
    \alternative { \pianoLHC \pianoLHD }
  }
  \pianoLHE \section
  \pianoLHF
  \bar "|."
}

pianoLHSingle = {
  \global
  \pianoLHA
  \pianoLHB \pianoLHC
  \pianoLHB \pianoLHD
  \pianoLHE
  \pianoLHB \pianoLHF
  \bar "|."
}

#(set-global-staff-size 18)

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

#(set-global-staff-size 18)

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \unfoldRepeats
    <<
      <<
        \new ChordNames \ChordTrackSingle
%        \new FretBoards \ChordTrackSingle
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrackSingle
            \new Voice \RehearsalTrackSingle
            \new Voice \melodySingle
            \addlyrics \wordsSingle
          >>
        >>
        \new PianoStaff
        <<
          \new Staff = pianorh \with {
          }
          <<
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \dynamicsPianoSingle
          \new Staff = pianolh \with {
          }
          <<
            \clef "bass"
            \new Voice \pianoLHSingle
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
        \new ChordNames \ChordTrackSingle
%        \new FretBoards \ChordTrackSingle
      >>
      <<
        \new ChoirStaff
        <<
          \new Staff = melody \with {
          }
          <<
            \new Dynamics \TempoTrackSingle
            \new Voice \RehearsalTrackSingle
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
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
          >>
          \new Dynamics \teeny \dynamicsPianoSingle
          \new Staff = pianolh \with {
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice \pianoLHSingle
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
            \new Dynamics \TempoTrackSingle
            \new Dynamics \dynamicsPianoSingle
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
            \new Voice \pianoRHoneSingle
            \new Voice \pianoRHtwoSingle
            \new Dynamics \dynamicsPianoSingle
            \new Voice \pianoLHSingle
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
