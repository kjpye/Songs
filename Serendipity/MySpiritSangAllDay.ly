\version "2.25.0"

\include "predefined-guitar-fretboards.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My spirit sang all day"
%  subtitle    = "subtitle"
%  subsubtitle = "subsubtitle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Gerald Finzi (1901—56)"
%  arranger    = ""
  opus        = "Op. 17 no. 1"

  poet        = "Robert Bridges (1844—1930)"
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
  \partial 8
}

TempoTrack = {
  \tempo Vivace 4=144
  s8
  \set Score.tempoHideNote = ##t
  s1 | s1 s4 | s1 | s |
  s1 | s | s | s1 s4 | s1 |
  s1 | s2 | s1 | s | s |
  s2 | s1 s4 | s1 | s | s | s |
  s1 | s2 | s1 s4 | s1 | s | % 111a
  s1 | s | s | s | s1 s4 | s1 |
  s2 | \tempo "rit." 4=130 s1 | s | s2. \tempo "a tempo" 4=144 s4 | s1 | s2 |
  s1 s4 | s1 | s | s2 \tempo allargando 4=130 s | s1 | s | s |
}

RehearsalTrack = {
%  \set Score.currentBarNumber = #5
%  \mark \markup { \box "1a" } s2.*4
  \textMark \markup { \box "110a" } s8 s4*17 |
  \textMark \markup { \box "110b" }    s4*21 |
  \textMark \markup { \box "110c" }    s4*18 |
  \textMark \markup { \box "110d" }    s4*23 |
  \textMark \markup { \box "111a" }    s4*19 |
  \textMark \markup { \box "111b" }    s4*25 |
  \textMark \markup { \box "111c" }    s4*20 |
  \textMark \markup { \box "111d" }    s4*29 |
}

dynamicsWomen = {
  \override DynamicTextSpanner.style = #'none
  s8\f | s4*17 |
  s4\mf s2.\< | s1\f\> | s1\pp | s2.\p s2\< | s2 s\mf |
  s1 | s2 | s1 | s\> | s\pp |
  s2 | s1 s4 | s1 | s | s | s2. s4\pp |
  s2. s4\< | s\> s\! | s1\< s4 | s1\mf | s4\> s2\! s4\mp | % 111a
  s1 | s\> | s\p | s | s1 s4 | s1 |
  s2 | s1 | s | s2\> s4\! s8 s\f | s1 | s2 |
  s1 s4 | s2\< s\! | s4 s2.\< | s2 s\ff | s1 | s1\< | s\! |
}

rq = {\oneVoice r4 \voiceOne}
re = {\oneVoice r8 \voiceOne}

soprano = \relative {
  \global \voiceOne
  d'8 | g a b c d2 \time 5/4 | g2 fis4 e2 \time 4/4 e8 d4 e8 b2~ | 4 c d2 |
  e,4 g2 a4 | b1~ | 2~8 r r4 \time 5/4 | e2 dis4 cis2~ \time 4/4 cis4 4 2-- |
  cis4 b8 gis8 2~ \time 2/4 | 2 \time 4/4 | dis4 e2 fis4 | gis1~ | 1~ \time 2/4 |
  gis8 r r4 \time 5/4 | R1*5/4 \time 4/4 | R1 | R | R | r2 r4 gis |
  gis8 a b2 d4 \time 2/4 | cis4-- r \time 5/4 | fis,2 e4 e'2 \time 4/4 | e4 b8 g fis4 e | b'4~8 \oneVoice r r4 \voiceOne d4~ | % 111a
  d2 fis,4 g | cis1-- | b2 a4 b | d,4. e8 a2 \time 5/4 | d,2 d'4 a2 \time 4/4 | c4 \re g8 4 a8 8 \time 2/4
  b2 \time 4/4 b d4 b | a1~ | 2~8 \re d,4 | g8 a b2 c4 \time 2/4 d2 \time 5/4 |
  e2 d4 g,2~ \time 4/4 | 4 4 b4.-- e,8 | 4 b' e2--~ | 2 g~ | 4 a,2 e'4 | d1~ | 4 \oneVoice r r r |
  \bar "|."
}

alto = \relative {
  \global \voiceTwo
  d'8 | g a b c d2 \time 5/4 | b2 4 g2 \time 4/4 | g8 fis4 g8 e2~ | 4 4 fis2 |
  e4 d2 c4 | e2~8 r r b_\mp | e f gis a b r r4 | gis2 4 e2~ | 4 4 dis2-- |
  dis2~4 cis8 gis | 2 | dis'4 2 cis4 | dis1~ | 1~ |
  8 s4. | cis2_\mf a4 gis2 | gis'2_\mp fis4 gis | a b gis2 | cis4 e,2 fis4 | gis2. 4 |
  cis,8 8 2 4 | 4-- r | 2 b4 e2 | g4 fis8 e d4 c | b~8 s4. fis'4~ | % 111a
  fis2 d4 e | e1-- | d2 e4 d | b4. cis8 d2 | d g4 fis2 | e4 s8 8 4 g8 8 |
  f2 | e1~ | 2 g4 c, | d2~8 s d4 | g8 a b2 a4 | b2 |
  b2 a4 g2~ | 4 4 fis4.-- e8 | 4 fis a2--~ | 2 b~ | 4 g2 a4 | b1~ | 4 s s s |
  \bar "|."
}

dynamicsMen = {
  \override DynamicTextSpanner.style = #'none
}

tenor = \relative {
  \global \voiceOne 
  d8 | g a b c d2 \time 5/4 | g2 d4 e2 \time 4/4 | c2~8 b4 a8 | g4 g b2 |
  g4 e2 4 | gis1~ | 2~8 \re \rq | cis2 b4 cis2~ | 4 4 a2-- |
  gis2~4 e8 g | b2 | ais4 gis2 ais4 | bis2~8 r8 r dis, | gis4 r8 ais bis4 r8 cis |
  dis2 | f2-- cis4 bis2 | cis2 ais4 bis | cis dis b2 | cis4 a2 cis4 | bis2. gis4 |
  eis8 fis gis2 b4 | a-- \rq | a2 gis4 a2 | g4 2 4 | fis g d'~8 \re | % 111a
  b2 cis4 b | ais1-- | b2 fis4 4 | g4. a8 2 | g d'4 cis2 | c4 \re 8 4 8 8 |
  d2 | g,1~ | 2 c4 e, | f2~8 \re d4 | g8 a b2 g'4 | fis2 |
  g2 fis4 e2~ | 4 d b4.-- 8 | c4 d c2--~ | 2 d~ | 4 e2 4 | g1~ | 4 \rq \rq \rq |
  \bar "|."
}

bass = \relative {
  \global \voiceTwo
  d8 | g a b c d2 \time 5/4 | e2 b4 c2 \time 4/4 | a2~8 g4 8 | e4 4 d2 |
  c4 b2 a4 | e'1~ | 2~8 s4. | cis2 gis'4 a2~ | 4 4 fis2 |
  gis2 fis4 e | dis2 | cis4 b2 ais4 | gis1~ | 1~ |
  gis8 r r4 | a2 fis4 gis2 | e'2 dis4 gis | fis4 b, e2 | a4 fis2 e4 | dis2. gis4 |
  cis,8 8 2 4 | 4-- r | d2 b4 cis2 | b4 2 c4 | d e fis~8 s | % 111a
  g2 a4 g | fis1-- | b,2 cis4 d | e4. a8 fis2 | b, b'4 a2 | g4 s8 8 4 e8 e |
  g2 | c, a4 c | d1~ | 2~8 s d4 | g8 a b2 e4 | d2 |
  c2 4 b2~ | 4 4 a4.-- g8 | 4 fis e2--~ | 2 d~ | 4 c2 c'4 | g1~ | 4 s2. |
  \bar "|."
}

words = \lyricmode {
  My spi -- rit sang all day O my joy.
  _ _ _ _ _ _ _ _ _ _
  O my joy __
  And spake,
  _ _ _ _
  Hide not thy joy. __
  My jeal -- ous ears grew whist;
  O my joy
  _ _ _ _ _ _ _ _ _ _
  She al -- so came and heard;
  O my joy,
  What, said she, is this word?
  _ _ _ _
  And I re -- plied,
  O see, O my joy, __
  'Tis thee, I cried, 'tis thee: __
  Thou __ art my joy. __
}

wordsSop = \lyricmode {
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  On -- ly My joy! __
  "" _ _ _ _
  Tell me thy thought, __
  "" _ _ _
  \repeat unfold 34 _
  What is thy joy? __
  \repeat unfold 19 ""
}

wordsSopSingle = \lyricmode {
  My spi -- rit sang all day O my joy.
  No -- thing my tongue __ could say,
  On -- ly My joy! __
  O my joy __
  And spake,
  Tell me thy thought, __
  Hide not thy joy. __
  My jeal -- ous ears grew whist;
  O my joy
  Mu -- sic from hea -- ven is't, __
  Sent __ for our joy?
  She al -- so came and heard;
  O my joy,
  What, said she, is this word?
  What is thy joy? __
  And I re -- plied,
  O see, O my joy, __
  'Tis thee, I cried, 'tis thee: __
  Thou __ art my joy. __
}

wordsSopMidi = \lyricmode {
  "My " spi "rit " "sang " "all " "day " "O " "my " "joy. "
  "\nNo" "thing " "my " "tongue "  "could " "say, "
  "\nOn" "ly " "My " "joy! " 
  "\nO " "my " "joy " 
  "\nAnd " "spake, "
  "\nTell " "me " "thy " "thought, " 
  "\nHide " "not " "thy " "joy. " 
  "\nMy " jeal "ous " "ears " "grew " "whist; "
  "\nO " "my " "joy "
  "\nMu" "sic " "from " hea "ven " "is't, " 
  "\nSent "  "for " "our " "joy? "
  "\nShe " al "so " "came " "and " "heard; "
  "\nO " "my " "joy, "
  "\nWhat, " "said " "she, " "is " "this " "word? "
  "\nWhat " "is " "thy " "joy? " 
  "\nAnd " "I " re "plied, "
  "\nO " "see, " "O " "my " "joy, " 
  "\n'Tis " "thee, " "I " "cried, " "'tis " "thee: " 
  "\nThou "  "art " "my " "joy. " 
}

wordsAlto = \lyricmode {
  _ _ _ _ _ _ _ _ _
  No -- thing my tongue __ could say
  On -- ly My joy! __
  My heart an e -- cho caught
  _ _ _ _ _
  Tell __ me thy thought,
  _ _ _ _
  O my joy
  What beau -- ty hast thou found?
  Shew us thy joy.
  _ _ _ _ _ _ _ _ _
  Mu -- sic from hea -- ven is't, __
  Sent __ for our joy?
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  What __ is thy joy? __
}

wordsAltoSingle = \lyricmode {
  My spi -- rit sang all day O my joy.
  No -- thing my tongue __ could say,
  On -- ly My joy! __
  My heart an e -- cho caught
  O my joy __
  And spake,
  Tell me thy thought,
  Hide not thy joy. __
  O my joy
  What beau -- ty hast thou found?
  Shew us thy joy.
  My jeal -- ous ears grew whist;
  O my joy
  Mu -- sic from hea -- ven is't, __
  Sent for our joy?
  She al -- so came and heard;
  O my joy,
  What, said she, is this word?
  What __ is thy joy? __
  And I re -- plied,
  O see, O my joy, __
  'Tis thee, I cried, 'tis thee: __
  Thou __ art my joy. __
}

wordsAltoMidi = \lyricmode {
  "My " spi "rit " "sang " "all " "day " "O " "my " "joy. "
  "\nNo" "thing " "my " "tongue "  "could " "say, "
  "\nOn" "ly " "My " "joy! " 
  "\nMy " "heart " "an " e "cho " "caught "
  "\nO " "my " "joy " 
  "\nAnd " "spake, "
  "\nTell " "me " "thy " "thought, "
  "\nHide " "not " "thy " "joy. " 
  "\nO " "my " "joy "
  "\nWhat " beau "ty " "hast " "thou " "found? "
  "\nShew " "us " "thy " "joy. "
  "\nMy " jeal "ous " "ears " "grew " "whist; "
  "\nO " "my " "joy "
  "\nMu" "sic " "from " hea "ven " "is't, " 
  "\nSent " "for " "our " "joy? "
  "\nShe " al "so " "came " "and " "heard; "
  "\nO " "my " "joy, "
  "\nWhat, " "said " "she, " "is " "this " "word? "
  "\nWhat "  "is " "thy " "joy? " 
  "\nAnd " "I " re "plied, "
  "\nO " "see, " "O " "my " "joy, " 
  "\n'Tis " "thee, " "I " "cried, " "'tis " "thee: " 
  "\nThou "  "art " "my " "joy. " 
}

wordsTenor = \lyricmode {
  _ _ _ _ _ _ _ _ _
  No -- thing my tongue __ could say
  On -- ly My joy! __
  "" _ _ _ _ _ _ _ _
  Hide not thy joy. __
  My eyes gan peer a -- round,
  \repeat unfold 22 _
  Mu -- sic from hea -- ven is't, __
  Sent for our joy?
  \repeat unfold 38 |
}

wordsTenorSingle = \lyricmode {
  My spi -- rit sang all day O my joy.
  No -- thing my tongue could say,
  On -- ly my joy! __
  O my joy __
  And spake,
  Tell me thy thought
  Hide not thy joy. __
  My eyes gan peer a -- round,
  O my joy
  What beau -- ty hast thou found?
  Shew us thy joy,
  My jeal -- ous ears grew whist;
  O my joy
  Mu -- sic from hea - ven is't, __
  Sent for our joy?
  She al -- so came and heard;
  O my joy,
  What, said she, is this word?
  What is thy joy? __
  And I re -- plied,
  O see, O my joy, __
  'Tis thee, I cried, 'tis thee: __
  Thou __ art my joy. __
}

wordsTenorMidi = \lyricmode {
  "My " spi "rit " "sang " "all " "day " "O " "my " "joy. "
  "\nNo" "thing " "my " "tongue " "could " "say, "
  "\nOn" "ly " "my " "joy! " 
  "\nO " "my " "joy " 
  "\nAnd " "spake, "
  "\nTell " "me " "thy " "thought "
  "\nHide " "not " "thy " "joy. " 
  "\nMy " "eyes " "gan " "peer " a "round, "
  "\nO " "my " "joy "
  "\nWhat " beau "ty " "hast " "thou " "found? "
  "\nShew " "us " "thy " "joy, "
  "\nMy " jeal "ous " "ears " "grew " "whist; "
  "\nO " "my " "joy "
  "\nMu" "sic " "from " "hea "  "ven " "is't, " 
  "\nSent " "for " "our " "joy? "
  "\nShe " al "so " "came " "and " "heard; "
  "\nO " "my " "joy, "
  "\nWhat, " "said " "she, " "is " "this " "word? "
  "\nWhat " "is " "thy " "joy? " 
  "\nAnd " "I " re "plied, "
  "\nO " "see, " "O " "my " "joy, " 
  "\n'Tis " "thee, " "I " "cried, " "'tis " "thee: " 
  "\nThou "  "art " "my " "joy. " 
}

wordsBass = \lyricmode {
  \repeat unfold 24 _ Hide not thy joy. __
  Tell me thy thought,
  \repeat unfold 47 ""
  What is thy joy?
  \repeat unfold 19 ""
}

wordsBassSingle = \lyricmode {
  My spi -- rit sang all day O my joy.
  No -- thing my tongue could say,
  On -- ly My joy! __
  O my joy __
  And spake,
  Tell me thy thought,
  Hide not thy joy. __
  O my joy
  What beau -- ty hast thou found?
  Shew us thy joy,
  My jeal -- ous ears grew whist;
  O my joy
  Mu -- sic from hea -- ven is't, __
  Sent for our joy?
  She al -- so came and heard;
  O my joy,
  What, said she, is this word?
  What is thy joy? __
  And I re -- plied,
  O see, O my joy, __
  'Tis thee, I cried, 'tis thee: __
  Thou __ art my joy. __
}

wordsBassMidi = \lyricmode {
  "My " spi "rit " "sang " "all " "day " "O " "my " "joy. "
  "\nNo" "thing " "my " "tongue " "could " "say, "
  "\nOn" "ly " "My " "joy! " 
  "\nO " "my " "joy " 
  "\nAnd " "spake, "
  "\nTell " "me " "thy " "thought, "
  "\nHide " "not " "thy " "joy. " 
  "\nO " "my " "joy "
  "\nWhat " beau "ty " "hast " "thou " "found? "
  "\nShew " "us " "thy " "joy, "
  "\nMy " jeal "ous " "ears " "grew " "whist; "
  "\nO " "my " "joy "
  "\nMu" "sic " "from " hea "ven " "is't, " 
  "\nSent " "for " "our " "joy? "
  "\nShe " al "so " "came " "and " "heard; "
  "\nO " "my " "joy, "
  "\nWhat, " "said " "she, " "is " "this " "word? "
  "\nWhat " "is " "thy " "joy? " 
  "\nAnd " "I " re "plied, "
  "\nO " "see, " "O " "my " "joy, " 
  "\n'Tis " "thee, " "I " "cried, " "'tis " "thee: " 
  "\nThou "  "art " "my " "joy. " 
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "singlepage"
  \paper {
    top-margin = 0
    left-margin = 7
    right-margin = 1
    paper-width = 190\mm
    page-breaking = #ly:one-page-breaking
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
%   \unfoldRepeats
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext =women} \dynamicsWomen
            \new Voice = soprano \soprano
            \new Voice = alto \alto
            \new NullVoice \soprano
            \addlyrics \words
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \wordsSop
          \new Lyrics \with {alignBelowContext = women} \lyricsto alto \wordsAlto
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Voice = tenor \tenor
            \new Voice = bass \bass
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto tenor \wordsTenor
          \new Lyrics \with {alignBelowContext = men} \lyricsto bass \wordsBass
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "single-sep"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = soprano \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAboveContext = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAbove = tenor} \dynamicsMen
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAbove = bass} \dynamicsMen
            \new Voice = bass \bass
            \addlyrics \wordsBassSingle
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "single"
  \score {
    <<
      <<
        \new ChoirStaff <<
                                % Joint soprano/alto staff
          \new Staff = women \with {
            instrumentName = #"Soprano/Alto"
            shortInstrumentName = #"SA"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAboveContext = women} \dynamicsWomen
            \new Voice = soprano \soprano
            \new Voice = alto \alto
            \new NullVoice \soprano
            \addlyrics \words
          >>
          \new Lyrics \with {alignAboveContext = women} \lyricsto soprano \wordsSop
          \new Lyrics \with {alignBelowContext = women} \lyricsto alto \wordsAlto
                                % Joint tenor/bass staff
          \new Staff = men \with {
            instrumentName = #"Tenor/Bass"
            shortInstrumentName = #"TB"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice = tenor \tenor
            \new Voice = bass \bass
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto tenor \wordsTenor
          \new Lyrics \with {alignBelowContext = men} \lyricsto bass \wordsBass
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-sep"
  \paper {
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAbove = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = soprano \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAbove = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics \wordsAltoSingle
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorSingle
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = men} \dynamicsMen
            \new Voice = bass \bass
            \addlyrics \wordsBassSingle
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-sep-sop"
  \paper {
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAbove = soprano} \dynamicsWomen
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Voice = soprano \soprano
            \addlyrics \wordsSopSingle
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAbove = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = tenor \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice = bass \bass
            \addlyrics {\tiny \wordsBassSingle}
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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
  \bookOutputSuffix "singlepage-sep-bass"
  \paper {
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
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAbove = soprano} \dynamicsWomen
            \new Voice = soprano \soprano
            \addlyrics {\tiny \wordsSopSingle}
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \new Dynamics \with {alignAbove = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics {\tiny \wordsAltoSingle}
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            \accidentalStyle Score.modern
          }
          <<
            \magnifyStaff #4/7
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = tenor \tenor
            \addlyrics {\tiny \wordsTenorSingle}
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice = bass \bass
            \addlyrics \wordsBassSingle
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
        \Staff \RemoveAllEmptyStaves
        barNumberVisibility = #first-bar-number-invisible-save-broken-bars
        \override BarNumber.break-visibility = ##(#f #t #t)
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

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAbove = soprano} \dynamicsWomen
            \new Voice = soprano \soprano
            \addlyrics \wordsSopMidi
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAbove = alto} \dynamicsWomen
            \new Voice = alto \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice = bass \bass
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

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAbove = soprano} \dynamicsWomen
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAbove = alto} \dynamicsWomen
            \new Voice = alto \alto
            \addlyrics \wordsAltoMidi
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice = bass \bass
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

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAbove = soprano} \dynamicsWomen
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAbove = alto} \dynamicsWomen
            \new Voice = alto \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = tenor \tenor
            \addlyrics \wordsTenorMidi
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice = bass \bass
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

\book {
  \bookOutputSuffix "midi-bass"
  \score {
%   \articulate
    <<
      <<
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano \with {
            instrumentName = #"Soprano"
            shortInstrumentName = #"S"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Voice \TempoTrack
            \new Voice \RehearsalTrack
            \new Dynamics \with {alignAbove = soprano} \dynamicsWomen
            \new Voice = soprano \soprano
          >>
                                % Alto staff
          \new Staff = alto \with {
            instrumentName = #"Alto"
            shortInstrumentName = #"A"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \new Dynamics \with {alignAbove = alto} \dynamicsWomen
            \new Voice = alto \alto
          >>
                                % Tenor staff
          \new Staff = tenor \with {
            instrumentName = #"Tenor"
            shortInstrumentName = #"T"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "treble_8"
            \new Dynamics \with {alignAboveContext = tenor} \dynamicsMen
            \new Voice = tenor \tenor
          >>
                                % Bass staff
          \new Staff = bass \with {
            instrumentName = #"Bass"
            shortInstrumentName = #"B"
            midiInstrument = "choir aahs"
            \accidentalStyle Score.modern
          }
          <<
            \clef "bass"
            \new Dynamics \with {alignAboveContext = bass} \dynamicsMen
            \new Voice = bass \bass
            \addlyrics \wordsBassMidi
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
