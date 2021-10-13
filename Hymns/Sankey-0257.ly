\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Story that never grows Old."
  subtitle    = "Sankey No. 257"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "James M. Gray, D. D."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% Uncomment to fit repeat on single page
% #(set-global-staff-size 19)

global = {
  \key f \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8  s2.*2
  \mark \markup { \box "B" }     s2.*2
  \mark \markup { \box "C" }     s2.*2 s4.
  \mark \markup { \box "D" } s4. s2.*2
  \mark \markup { \box "E" }     s2.*2 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''8
  c8. b16 c8 d16 c8. a8
  g16 f8. d8 c4 8 \break
  f8. 16 8 a g f % B
  c'8 8. bes16 c4 8 \break
  c8. b16 c8 d c a % C
  g16 f8. d8 c4 8
  f8 8 g \bar "|" \break a16 c8. f,8
  a8 f8. g16 f4 \bar "||" a8^\markup\smallCaps Chorus. % D
  c16 8. 8 a4 c8 \break
  d16 8. 8 c4\fermata a8 % E
  bes8. c16 d8 c f, bes
  a16 8. g8 f4\fermata
}

alto = \relative {
  \autoBeamOff
  f'8
  f8. 16 8 16 8. 8
  d16 8. bes8 a4 c8
  c8. 16 8 f e f % B
  c8 8. f16 e4 f8
  f8. 16 8 8 8 8 % C
  d16 8. bes8 a4 c8
  c8 f e f16 8. 8
  f8 c8. e16 f4 8 % D
  a16 8. 8 f4 8
  f16 8. 8 e4\fermata 8 % E
  f8. 16 8 8 8 g
  f16 8. e8 f4\fermata
}

tenor = \relative {
  \autoBeamOff
  a8
  a8. gis16 a8 b16 a8. c8
  bes16 8. f8 4 a8
  a8. 16 8 c bes a % B
  g8 8. 16 4 a8
  a8. g16 a8 bes a c % C
  bes16 8. f8 4 a8
  a8 c c8 16 a8. 8
  c8 a8. bes16 a4 c8 % D
  f16 8. 8 c4 a8
  bes16 8. 8 a4\fermata c8 % E
  bes8. a16 bes8 a c8 d
  c16 8. bes8 a4\fermata
}

bass = \relative {
  \autoBeamOff
  f8
  f8. 16 8 16 8. 8
  bes,16 8. 8 f'4 8
  f8. 16 8 8 8 8 % B
  e8 8. d16 c4 f8
  f8. 16 8 8 8 8 % C
  bes,16 8. 8 f'4 8
  f8 a, c f16 8. d8
  c8 8. 16 f4 8 % D
  f16 8. 8 4 8
  bes,16 8. d8 f4\fermata ees8 % E
  d8. c16 bes8 f' bes, bes
  c16 8. 8 f4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  It nev -- er grows old,
  It nev -- er grows old;
  The sto -- ry of Je -- sus will nev -- er grow old.
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, tell me the sto -- ry that nev -- er grows old,
  The sto -- ry of One whom the pro -- phets fore -- told;
  The Horn of sal -- va -- tion, the Scep -- tre, the Star,
  The Light in the dark -- ness they saw from a -- far.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, tell me the sto -- ry that nev -- er grows old,
  The sto -- ry the an -- gel at Beth -- le -- hem told;
  The Babe of the man -- ger, of low -- li -- est birth,
  The high -- est arch -- an -- gwel ex -- cel -- ling in worth.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, tell me the sto -- ry that nev -- er grows old,
  The sto -- ry the Gos -- pels re -- peat man -- i -- fold;
  The love and com -- pas -- sion in Je -- sus we trace;
  The pow -- er and pa -- tience, the glo -- ry and grace.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, tell me the sto -- ry that nev -- er grows old,
  The sto -- ry the a -- ges to come will un -- fold;
  The kind -- ness of God in re -- deem -- ing the lost;
  The death of our Sa -- viour in pay -- ing the cost.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "tell " "me " "the " sto "ry " "that " nev "er " "grows " "old, "
  "\nThe " sto "ry " "of " "One " "whom " "the " pro "phets " fore "told; "
  "\nThe " "Horn " "of " sal va "tion, " "the " Scep "tre, " "the " "Star, "
  "\nThe " "Light " "in " "the " dark "ness " "they " "saw " "from " a "far. "
  "\nIt " nev "er " "grows " "old, "
  "\nIt " nev "er " "grows " "old; "
  "\nThe " sto "ry " "of " Je "sus " "will " nev "er " "grow " "old. "

  \set stanza = "2."
  "\nOh, " "tell " "me " "the " sto "ry " "that " nev "er " "grows " "old, "
  "\nThe " sto "ry " "the " an "gel " "at " Beth le "hem " "told; "
  "\nThe " "Babe " "of " "the " man "ger, " "of " low li "est " "birth, "
  "\nThe " high "est " arch an "gwel " ex cel "ling " "in " "worth. "
  "\nIt " nev "er " "grows " "old, "
  "\nIt " nev "er " "grows " "old; "
  "\nThe " sto "ry " "of " Je "sus " "will " nev "er " "grow " "old. "

  \set stanza = "3."
  "\nOh, " "tell " "me " "the " sto "ry " "that " nev "er " "grows " "old, "
  "\nThe " sto "ry " "the " Gos "pels " re "peat " man i "fold; "
  "\nThe " "love " "and " com pas "sion " "in " Je "sus " "we " "trace; "
  "\nThe " pow "er " "and " pa "tience, " "the " glo "ry " "and " "grace. "
  "\nIt " nev "er " "grows " "old, "
  "\nIt " nev "er " "grows " "old; "
  "\nThe " sto "ry " "of " Je "sus " "will " nev "er " "grow " "old. "

  \set stanza = "4."
  "\nOh, " "tell " "me " "the " sto "ry " "that " nev "er " "grows " "old, "
  "\nThe " sto "ry " "the " a "ges " "to " "come " "will " un "fold; "
  "\nThe " kind "ness " "of " "God " "in " re deem "ing " "the " "lost; "
  "\nThe " "death " "of " "our " Sa "viour " "in " pay "ing " "the " "cost. "
  "\nIt " nev "er " "grows " "old, "
  "\nIt " nev "er " "grows " "old; "
  "\nThe " sto "ry " "of " Je "sus " "will " nev "er " "grow " "old. "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
          >>
        >>
    \midi {}
  }
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
