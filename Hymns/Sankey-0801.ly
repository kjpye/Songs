\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Pass it On!"
  subtitle    = "Sankey No. 801"
  subsubtitle = "C. C. No. 178"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Henry Burton, M. A."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 2/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2*5
  \textMark \markup { \box \bold "B" }    s2*5
  \textMark \markup { \box \bold "C" }    s2*5 s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

melody = \relative {
  \autoBeamOff
  f'8^\markup {\smallCaps Solo. \italic Moderato. } g | a a g a | bes4 f8. g16 | a4. r8 | r4 bes8 a | a g g fis |
  g4 a8. g16 | f4. r8 | r4 a8 bes | c c b c | d4 g,8 a |
  bes8 8 a bes | c4 f,8 g | aes8 8 g f | a4 f8. g16 | f4. r8 | r4\fermata
}

pianoRHone = \relative {
  f'8 g | a a g a | bes4 f8. g16 | a4 f'8. g16 | \chord a4 \auto bes,8 a | a g g fis |
  g4 a8. g16 | f4 \chord a'8. g16 | f4 \auto a,8 bes | c c b c | d4 g,8 a |
  \chord bes8 8 a g | c4 f,8 g | aes4 g8 f | <f a>4 f8. <e g>16 | f4 <d' f>8. <des g>16 | <c f>4\fermata
}

pianoRHtwo = \relative {
  f'4 | 2 | 2 | 4 bes8. 16 | <a c>4 f | e e |
  e2 | f4 <a c>8. <bes c>16 | <a c>4 f | 2 | 2 |
  <d f>8 <c e> q q | <c f>4 a8 <bes f'> | <b f'>4 <bes f'>8 <a b> | <a c>4 <bes d>8. <bes c>16 | <a c>4 <g' bes>8. 16 | <f a>4\fermata
}

pianoLHone = \relative {
  a8 bes | c c bes c | d4 8. des16 | c4 d8. des16 | c4 d8 c | c bes8 8 a |
  bes4 c8. bes16 | a4 f'8. c16 | c4 c | c d8 c | bes4 d |
  g,4 c,8 bes | a4 d | des2 | c | f,~ | 4\fermata
}

pianoLHtwo = \relative {
  f4 | 2 | 2 | 2 | 2 | c4 c |
  c2 | f | 4 8 g | a4 gis8 a | bes4 <bes, bes'>8 <a a'> |
  g4 c,8 bes | a4 d | bes2 | c | f,~ | 4\fermata
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Have you had a kind -- ness shown?
  Pass it on!
  'Twas not given for thee a -- lone:
  Pass it on!
  Let it tra -- vel down the years.
  Let it wipe an -- oth -- er's tears,
  Till in heav'n the deed ap -- pears:
  Pass it on!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Did you hear the lov -- ing word?
  Pass it on!
  Like the sing -- ing of a bird?
  Pass it on!
  Let its mu -- sic live and grow,
  Let it cheer an -- oth -- er's woe;
  You have reaped what oth -- ers sow—
  Pass it on!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  'Twas the sun -- shine of a smile—
  Pass it on!
  Stay -- ing but a lit -- tle while—
  Pass it on!
  A -- pril beams, the lit -- tle thing,
  Still it wakes the flow'rs of spring,
  Makes the si -- lent birds to sing—
  Pass it on!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Have " "you " "had " "a " kind "ness " "shown? "
  "\nPass " "it " "on! "
  "\n'Twas " "not " "given " "for " "thee " a "lone: "
  "\nPass " "it " "on! "
  "\nLet " "it " tra "vel " "down " "the " "years. "
  "\nLet " "it " "wipe " an oth "er's " "tears, "
  "\nTill " "in " "heav'n " "the " "deed " ap "pears: "
  "\nPass " "it " "on!\n"

  \set stanza = "2."
  "\nDid " "you " "hear " "the " lov "ing " "word? "
  "\nPass " "it " "on! "
  "\nLike " "the " sing "ing " "of " "a " "bird? "
  "\nPass " "it " "on! "
  "\nLet " "its " mu "sic " "live " "and " "grow, "
  "\nLet " "it " "cheer " an oth "er's " "woe; "
  "\nYou " "have " "reaped " "what " oth "ers " "sow— "
  "\nPass " "it " "on!\n"

  \set stanza = "3."
  "\n'Twas " "the " sun "shine " "of " "a " "smile— "
  "\nPass " "it " "on! "
  "\nStay" "ing " "but " "a " lit "tle " "while— "
  "\nPass " "it " "on! "
  "\nA" "pril " "beams, " "the " lit "tle " "thing, "
  "\nStill " "it " "wakes " "the " "flow'rs " "of " "spring, "
  "\nMakes " "the " si "lent " "birds " "to " "sing— "
  "\nPass " "it " "on! "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    <<
        \new ChoirStaff <<
                                % Melody staff
          \new Staff = melody
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \melody \bar "|." }
            \addlyrics \wordsMidi
          >>
        >>
        \new PianoStaff <<
          \new Staff = piano
          <<
            \new Voice { \global \repeat unfold \verses \pianoRHone }
            \new Voice { \global \repeat unfold \verses \pianoRHtwo }
            \new Voice { \global \repeat unfold \verses \pianoLHone }
            \new Voice { \global \repeat unfold \verses \pianoLHtwo }
          >>
        >>
      >>
    \midi {}
  }
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
    <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = melody
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new Voice { \melody \bar "|." }
            \addlyrics \wordsOne
            \addlyrics \wordsTwo
            \addlyrics \wordsThree 
          >>
        >>
        \new PianoStaff <<
          \new Staff = pianorh \with {printPartCombineTexts = ##f}
          <<
            \new Voice \partCombine #'(2 . 88) { \global \pianoRHone } { \global \pianoRHtwo }
          >>
          \new Staff = pianolh \with {printPartCombineTexts = ##f}
          <<
            \clef bass
            \new Voice \partCombine #'(2 . 88) { \global \pianoLHone } { \global \pianoLHtwo }
          >>
        >>
      >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
  <<
    \new ChoirStaff <<
                                % Melody staff
      \new Staff = melody
      <<
        \new Voice { \repeat unfold \verses \RehearsalTrack }
        \new Voice { \repeat unfold \verses \TempoTrack }
        \new Voice { \repeat unfold \verses {\melody \section \nl } }
        \addlyrics { \wordsOne
                     \wordsTwo
                     \wordsThree
                   }
      >>
    >>
    \new PianoStaff <<
      \new Staff = pianorh
      <<
        \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \pianoRHone }
        { \global \repeat unfold \verses \pianoRHtwo \bar "|." }
      >>
      \new Staff = pianolh
      <<
        \clef bass
        \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \pianoLHone }
        { \global \repeat unfold \verses \pianoLHtwo }
      >>
    >>
  >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
