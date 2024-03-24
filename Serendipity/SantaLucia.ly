\version "2.25.14"

\include "../kjp.ly"
\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Santa Lucia"
  subtitle    = "(Two-part S.S.)"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Folk Song of Naples"
  arranger    = "arr. Percy Fletcher"
%  opus        = "opus"

  poet        = "Florence Hoare"
%  meter       = "meter"
%  piece       = "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 3/8
}

TempoTrack = {
  \tempo "With a good swing, very brightly" 8=144
%  \set Score.tempoHideNote = ##t
  s4
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "2a" } s4.*6
  \textMark \markup { \box "2b" } s4.*6
  \textMark \markup { \box "2c" } s4.*6
  \textMark \markup { \box "3a" } s4.*6
  \textMark \markup { \box "3b" } s4.*6
  \textMark \markup { \box "3c" } s4.*6
}

dynamicsMelody = {
  \override DynamicTextSpanner.style = #'none
  s4.*4 | s4.\mf | s4. |
  s4.*6 |
  s4.*6 |
  s4.*2 | s4.\f | s4.*3 | % 3a
  s4.\p | s4.*3 | s4.\f | s4. |
  s4.*2 | s4.\mp | s4. | s8\< s4\f | s4. |
}

partI = \relative {
  R4.*4 | a'8 8. d16 | d cis16 4 |
  g8 8. b16 | b(a) 4 | fis8 b8. a16 | a gis g4 | 8 fis e | b'-> a4 |
  a8 8. d16 | d cis16 4 | g8 8. b16 | b a a4 | fis8 b8. a16 | a(gis) g4 |
  g8 fis e | b'8-> a4 | fis'8 e d | cis16 b e4 | 8 d b | gis16(a) d4 | % 3a
  fis16(d) d(a) a(fis) | g e' e4 | 8 b8. cis16 | e8 d4 | fis8 e d | cis16 b e4 |
  e8 d b | gis16 a d4 | fis16(d) d(a) a(fis) | g(e') 4 | 8 fis8.\fermata e16 | d8 4 |
}

wordsOne = \lyricmode {
  \set stanza = "1."
  \repeat unfold 2 {
    Moon -- light, so sweet and pale,
    From hea -- ven fall -- ing,
    Wave -- lets that mur -- mur low,
    To us are call -- ing;
    White is the sum -- mer night,
    Wave -- lets are sil -- ver bright,
    San -- ta Lu -- ci -- a,
    San -- ta Lu -- ci -- a.
  }
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  \repeat unfold 2 {
    Soft winds, that come and go,
    Cool -- ness are bring -- ing,
    Bear -- ing on gen -- tle wings
    Ech -- oes of sing -- ing;
    Waits the light boat for thee,
    Float o'er the waves with me,
    San -- ta Lu -- ci -- a,
    San -- ta Lu -- ci -- a.
  }
}

wordsThree = \lyricmode {
  \set stanza = "3."
  \repeat unfold 2 {
    O joy to lie at rest,
    Drift -- ing and dream -- ing,
    On o -- cean's peace -- ful breast,
    Neath moon -- light gleam -- ing;
    Bride of the sum -- mer sea—
    Na -- ples, thy child to be,
    San -- ta Lu -- ci -- a,
    San -- ta Lu -- ci -- a.
  }
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  \repeat unfold 2 {
    "Moon" "light, " "so " "sweet " "and " "pale, "
    "\nFrom " hea "ven " fall "ing, "
    "\nWave" "lets " "that " mur "mur " "low, "
    "\nTo " "us " "are " call "ing; "
    "\nWhite " "is " "the " sum "mer " "night, "
    "\nWave" "lets " "are " sil "ver " "bright, "
    "\nSan" "ta " Lu ci "a, "
    "\nSan" "ta " Lu ci "a. "
  }

  \set stanza = "2."
  \repeat unfold 2 {
    "\nSoft " "winds, " "that " "come " "and " "go, "
    "\nCool" "ness " "are " bring "ing, "
    "\nBear" "ing " "on " gen "tle " "wings "
    "\nEch" "oes " "of " sing "ing; "
    "\nWaits " "the " "light " "boat " "for " "thee, "
    "\nFloat " "o'er " "the " "waves " "with " "me, "
    "\nSan" "ta " Lu ci "a, "
    "\nSan" "ta " Lu ci "a. "
  }

  \set stanza = "3."
  \repeat unfold 2 {
    "\nO " "joy " "to " "lie " "at " "rest, "
    "\nDrift" "ing " "and " dream "ing, "
    "\nOn " o "cean's " peace "ful " "breast, "
    "\nNeath " moon "light " gleam "ing; "
    "\nBride " "of " "the " sum "mer " "sea— "
    "\nNa" "ples, " "thy " "child " "to " "be, "
    "\nSan" "ta " Lu ci "a, "
    "\nSan" "ta " Lu ci "a. "
  }
}

partII = \relative {
  R4.*4 | fis'8 8. 16 | fis e e4 |
  e8 8. g16 | g(fis) 4 | d8 g8. fis16 | 16 eis e4 | 8 d cis | g'-> fis4 |
  fis8 8. 16 | 16 e e4 | 8 8. g16 | 16 fis16 4 | d8 g8. fis16 | 16(eis) e4 |
  e8 d cis | g'-> fis4 | d'8 cis b | a16 g g4 | cis8 b g | eis16(fis) 4 | % 3a
  a16(fis) 8 16(d) | e g g4 | 8 8. 16 | 8 fis4 | d'8 cis b | a16 g g4 |
  cis8 b g | eis16 fis16 4 | a16(fis) 8 16(d) | e(g) 4 | 8 a8.\fermata g16 | fis8 4 |
}

pianoRHone = \relative {
  <d'' fis>8 <g b>8.-> <fis a>16 |
  q16(<eis gis>) <e g>4 |
  \vo e'16(cis) cis(a) cis(e) |
  \ov <fis, d'>8 <fis a d>4-> |
  r8 <a,, d fis>8 8 |
  r8 <a cis g'>8 8 |
  r8 <a cis g'>8 8 | % 2b
  r8 <a d fis>8 8 |
  <d fis>8 <g b>8. <fis a>16 |
  <fis a>16 <eis gis> <e g>4 |
  q8 <d fis> <c e> |
  <g' b>8-> <fis a>4 |
  r8 <a, d fis>8 8 | % 2c
  r8 <a c g'>8 8 |
  r8 q q |
  r8 <a d fis> q |
  <d' fis>8 <g b>8. <fis a>16 |
  q16(<eis gis>) <e g>4 |
  <e g>8 <d fis> <c e> | % 3a
  <g' b>8-> <fis a>4 |
  r8 <a,, d fis> q |
  r8 <b e g> q |
  r8 q q |
  r8 <a d fis> q |
  r8 <a d fis>8 8 | % 3b
  r8 <a cis g'> q |
  r8 q q |
  r8 <a d fis> q |
  <d' fis>8 <cis e> <b d> |
  <a cis>16 <g b> <g e'>4 |
  <cis e>8 <b d> <g b> | % 3c
  <eis gis>16 <fis a> <fis d'>4 |
  r8 <a, d fis> q |
  r8 <a cis g'> q |
  <g' e'>8 <a fis'>8.\fermata <g e'>16 |
  <fis d'>8 <d' fis d'>4 |
}

pianoRHtwo = \relative {
  s4.*2 | g''8 8 8 | s4.*3 |
  s4.*30 |
}

dynamicsPiano = {
  \override DynamicTextSpanner.style = #'none
  s4.\ff | s4.*3 | s4.\mp | s |
  s4.*6 |
  s4.*6 |
  s4.*2 | s4.\f | s4.*3 | % 3a
  s4.\p | s4.*3 | s4.\f | s |
  s4.*2 | s4.\p | s | s8\< s4\f | s8 s4\sf |
}

pianoLH = \relative {
  d,8 d' d | a a' a | a, a' a | d, <d, d'>4-> | 8 r r | <a a'> r r |
  q8 r r | <d d'> r r | d d' d | a a' a | a, a' a | d, a' a |
  <d,, d'>8 r r | <a a'> r r | q r r | <d d'> r r | d d' d | a a' a |
  a,8 a' a | d, a' a | d, r r | g, r r | g r r | a r r | % 3a
  a8 r r | a r r | a r r | d r r | d, d' d | g, g' g |
  g,8 g' g | a, a' a | a, r r | a r r | a <a a'>4\fermata | <d a'>8 <d, d'>4 |
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint staff
          \new Staff = vocal \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = vocal} \dynamicsMelody
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice {\global \vo \partI \bar "|."}
            \new Voice {\global \vt \partII}
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine {\global \pianoRHone} {\global \pianoRHtwo}
          >>
          \new Dynamics \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice {\global \pianoLH}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
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
    <<
      <<
        \new ChoirStaff <<
                                % Joint staff
          \new Staff = vocal \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = vocal} {\repeat unfold 3 \dynamicsMelody}
            \new Voice \TempoTrack
            \new Voice \repeat unfold 3 \RehearsalTrack
            \new Voice {\global \repeat unfold 3 {\vo \partI}}
            \new Voice {\global \vt \partII \nl \partII \nl \partII \bar "|." }
            \addlyrics {\wordsOne \wordsTwo \wordsThree}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine {\global \repeat unfold 3 \pianoRHone}
            {\global \pianoRHtwo \nl \pianoRHtwo \nl \pianoRHtwo}
          >>
          \new Dynamics \repeat unfold 3 \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice {\global \pianoLH \nl \pianoLH \nl \pianoLH}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
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
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint staff
          \new Staff = vocal \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = vocal} {\repeat unfold 3 \dynamicsMelody}
            \new Voice \TempoTrack
            \new Voice \repeat unfold 3 \RehearsalTrack
            \new Voice {\global \repeat unfold 3 {\vo \partI}}
            \new Voice {\global \vt \partII \nl \partII \nl \partII \bar "|." }
            \addlyrics {\wordsOne \wordsTwo \wordsThree}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine {\global \repeat unfold 3 \pianoRHone}
            {\global \pianoRHtwo \nl \pianoRHtwo \nl \pianoRHtwo}
          >>
          \new Dynamics \repeat unfold 3 \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice {\global \pianoLH \nl \pianoLH \nl \pianoLH}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = singlepage-sep
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Part I staff
          \new Staff = "part 1" \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = vocal} {\repeat unfold 3 \dynamicsMelody}
            \new Voice \TempoTrack
            \new Voice \repeat unfold 3 \RehearsalTrack
            \new Voice {\global \partI \nl \partI \nl \partI}
            \addlyrics {\wordsOne \wordsTwo \wordsThree}
          >>
                                % Part II staff
          \new Staff = "part 2" \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = vocal} {\repeat unfold 3 \dynamicsMelody}
            \new Voice {\global \partII \nl \partII \nl \partII \bar "|." }
            \addlyrics {\wordsOne \wordsTwo \wordsThree}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice \partCombine {\global \repeat unfold 3 \pianoRHone}
            {\global \pianoRHtwo \nl \pianoRHtwo \nl \pianoRHtwo}
          >>
          \new Dynamics \repeat unfold 3 \dynamicsPiano
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \clef "bass"
            \new Voice {\global \pianoLH \nl \pianoLH \nl \pianoLH}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-part1"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Part I staff
          \new Staff = "part 1" \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = vocal} {\repeat unfold 3 \dynamicsMelody}
            \new Voice \TempoTrack
            \new Voice \repeat unfold 3 \RehearsalTrack
            \new Voice {\global \partI \nl \partI \nl \partI}
            \addlyrics {\wordsOne \wordsTwo \wordsThree}
          >>
                                % Part II staff
          \new Staff = "part 2" \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = vocal} {\teeny \repeat unfold 3 \dynamicsMelody}
            \new Voice {\global \partII \nl \partII \nl \partII \bar "|." }
            \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine {\global \repeat unfold 3 \pianoRHone}
            {\global \pianoRHtwo \nl \pianoRHtwo \nl \pianoRHtwo}
          >>
          \new Dynamics {\teeny \repeat unfold 3 \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice {\global \pianoLH \nl \pianoLH \nl \pianoLH}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = "singlepage-part2"
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Part I staff
          \new Staff = "part 1" \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAboveContext = vocal} {\teeny \repeat unfold 3 \dynamicsMelody}
            \new Voice \TempoTrack
            \new Voice \repeat unfold 3 \RehearsalTrack
            \new Voice {\global \partI \nl \partI \nl \partI}
            \addlyrics {\tiny \wordsOne \wordsTwo \wordsThree}
          >>
                                % Part II staff
          \new Staff = "part 2" \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = vocal} {\repeat unfold 3 \dynamicsMelody}
            \new Voice {\global \partII \nl \partII \nl \partII \bar "|." }
            \addlyrics {\wordsOne \wordsTwo \wordsThree}
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = pianorh \with {
            printPartCombineTexts = ##f
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \new Voice \partCombine {\global \repeat unfold 3 \pianoRHone}
            {\global \pianoRHtwo \nl \pianoRHtwo \nl \pianoRHtwo}
          >>
          \new Dynamics {\teeny \repeat unfold 3 \dynamicsPiano}
          \new Staff = pianolh \with {
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Voice {\global \pianoLH \nl \pianoLH \nl \pianoLH}
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Score
        \remove Metronome_mark_engraver
%        \remove Staff_collecting_engraver
      }
      \context {
        \Staff
        \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
        \consists Merge_rests_engraver
      }
      \context {
        \ChoirStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \PianoStaff
        \consists Metronome_mark_engraver
        \consists Staff_collecting_engraver
      }
      \context {
        \Voice
%        \consists Ambitus_engraver
      }
    }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = midi
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Part I staff
          \new Staff = "part 1" \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = vocal} {\repeat unfold 3 \dynamicsMelody}
            \new Voice \TempoTrack
            \new Voice \repeat unfold 3 \RehearsalTrack
            \new Voice {\global \partI \nl \partI \nl \partI}
            \addlyrics \wordsMidi
          >>
                                % Part II staff
          \new Staff = "part 2" \with {
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Dynamics \with {alignAboveContext = vocal} {\repeat unfold 3 \dynamicsMelody}
            \new Voice {\global \partII \nl \partII \nl \partII \bar "|." }
          >>
        >>
        \new PianoStaff = piano <<
          \new Staff = piano \with {
            printPartCombineTexts = ##f
            midiInstrument = "acoustic grand piano"
            \accidentalStyle Score.modern-cautionary
          }
          <<
            \new Voice {\global \repeat unfold 3 \pianoRHone}
            \new Voice {\global \pianoRHtwo \nl \pianoRHtwo \nl \pianoRHtwo}
            \new Dynamics \repeat unfold 3 \dynamicsPiano
            \new Voice {\global \pianoLH \nl \pianoLH \nl \pianoLH}
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
