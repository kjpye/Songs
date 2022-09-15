\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, Build upon the Rock!"
  subtitle    = "Sankey No. 451"
  subsubtitle = "Sankey 880 No. 582"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "G. F. Root."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*4
  \mark \markup { \box "B" }    s1*3 s2.
  \mark \markup { \box "C" } s4 s1*4
  \mark \markup { \box "D" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4
  f4 bes bes c
  d2. 4
  d4 ees d c
  c2 bes4 4
  a4 4 bes bes % B
  c4 bes a a
  bes4 4 d bes
  bes2 a4 \bar "||" \break f4^\markup\smallCaps Chorus.
  d'4 ees d c % C
  bes2. d4
  ees4 d c bes
  d2 c4 4
  d4 ees d c % D
  bes4 c bes a
  g4 a bes d
  c2 bes4
}

alto = \relative {
  \autoBeamOff
  d'4
  d4 4 4 ees
  f2. 4
  f4 g f ees
  ees2 d4 4
  c4 4 d d % B
  ees4 d c c
  d4 4 f d
  d2 c4 f
  f4 g f ees % C
  d2. f4
  ees4 f g g
  f2 4 4
  f4 g f ees % D
  d4 ees d c
  bes4 ees f f
  ees2 d4
}

tenor = \relative {
  \autoBeamOff
  bes4
  bes4 4 4 4
  bes2. 4
  bes4 4 4 a
  bes2 4 f
  f4 4 4 4 % B
  f4 4 4 4
  f4 4 4 4
  f2 4 4
  bes4 4 4 a % C
  bes2. 4
  g4 4 4 bes
  bes2 a4 4
  bes4 4 4 a % D
  g4 4 4 fis
  g4 f f bes
  a2 bes4
}

bass = \relative {
  \autoBeamOff
  bes,4
  bes4 4 4 4
  bes2. 4
  f'4 4 4 4
  bes,2 4 4
  f'4 4 4 4 % B
  f4 4 4 4
  f4 4 4 4
  f2 4 4
  bes,4 4 f' f % C
  bes,2. 4
  c4 d ees e
  f2 4 4
  bes4 4 4 f % D
  g4 4 4 d
  ees4 c d bes
  f'2 bes,4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, build up -- on the Rock—
  The on -- ly sure foun -- da -- tion;
  On Christ a -- lone the Cor -- ner -- stone,
  The Rock of our sal -- va -- tion!
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Where hast thou built thine house,
  Thy soul's e -- ter -- nal dwell -- ing?
  Up -- on the treach -- 'rous sands of sin
  'Mid floods and tem -- pests swell -- ing?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  What wilt thou do when storms
  Up -- on thy house are beat -- ing?
  When from be -- neath, the treach -- 'rous sands
  That held thee are re -- treat -- ing?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Wait not un -- til the floods
  With fi -- nal shock ap -- pal -- ling,
  Shall come— and thou canst nev -- er save
  Thy ru -- ined house from fall -- ing.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Where " "hast " "thou " "built " "thine " "house, "
  "\nThy " "soul's " e ter "nal " dwell "ing? "
  "\nUp" "on " "the " treach "'rous " "sands " "of " "sin "
  "\n'Mid " "floods " "and " tem "pests " swell "ing? "
  "\nOh, " "build " up "on " "the " "Rock— "
  "\nThe " on "ly " "sure " foun da "tion; "
  "\nOn " "Christ " a "lone " "the " Cor ner "stone, "
  "\nThe " "Rock " "of " "our " sal va "tion!\n"

  \set stanza = "2."
  "\nWhat " "wilt " "thou " "do " "when " "storms "
  "\nUp" "on " "thy " "house " "are " beat "ing? "
  "\nWhen " "from " be "neath, " "the " treach "'rous " "sands "
  "\nThat " "held " "thee " "are " re treat "ing? "
  "\nOh, " "build " up "on " "the " "Rock— "
  "\nThe " on "ly " "sure " foun da "tion; "
  "\nOn " "Christ " a "lone " "the " Cor ner "stone, "
  "\nThe " "Rock " "of " "our " sal va "tion!\n"

  \set stanza = "3."
  "\nWait " "not " un "til " "the " "floods "
  "\nWith " fi "nal " "shock " ap pal "ling, "
  "\nShall " "come— " "and " "thou " "canst " nev "er " "save "
  "\nThy " ru "ined " "house " "from " fall "ing. "
  "\nOh, " "build " up "on " "the " "Rock— "
  "\nThe " on "ly " "sure " foun da "tion; "
  "\nOn " "Christ " a "lone " "the " Cor ner "stone, "
  "\nThe " "Rock " "of " "our " sal va "tion! "
}

wordsMidiMen = \lyricmode {
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
            \addlyrics \wordsMidiMen
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
