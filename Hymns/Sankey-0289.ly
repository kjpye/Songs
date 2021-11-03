\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Shades of Evening."
  subtitle    = "Sankey No. 289"
  subsubtitle = "Sankey 880 No. 366"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "D. E. Jones"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. C. Cox."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 3/2
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2 s1.*3 s1
  \mark \markup { \box "B" } s2 s1.*3 s1
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4^\markup\italic Slowly. f
  f2 bes a4 bes
  c2 bes4(a) bes d
  c2. ees4 d c
  bes1 \bar "|" \break 4 f
  f2 d' c4 d % B
  ees2 a, bes4 4
  bes4 g f2 2
  f1
}

alto = \relative {
  \autoBeamOff
  d'4 4
  d2 f2 4 4
  f2 2 4 4
  f2. 4 4 ees
  d1 4 4
  d2 f g4 f
  ees2 2 d4 f
  g4 ees d2 c
  d1
}

tenor = \relative {
  \autoBeamOff
  bes4 4
  bes2 d c4 d
  ees2 d4(c) bes4 4
  a2. c4 bes a
  bes1 4 4
  bes2 2 g4 b % B
  c2 2 bes4 4
  g4 bes4 2 a
  bes1
}

bass = \relative {
  \autoBeamOff
  bes,4 4
  bes2 2 f'4 4
  f2 4(ees) d bes
  f'2. 4 4 4
  bes,1 4 4
  bes2 2 ees4 d % B
  c2 f g4 d
  ees4 4 f2 <f, f'>
  bes1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Si -- lent -- ly the shades of ev -- 'ning
  Ga -- ther round my lone-- ly door;
  Si -- lent -- ly they bring be -- fore me
  Fa -- ces, I shall see no more.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, not lost, but gone be -- fore us!
  Let them ne -- ver be for -- get:
  Sweet their mem -- 'ry to the lone -- ly;
  In our hearts they per -- ish not.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  How such ho -- ly mem -- 'ries clus -- ter,
  Like the stars when storms are past;
  Point -- ing up to that far hea -- ven,
  Where we hope to meet at last.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Si" lent "ly " "the " "shades " "of " ev "'ning "
  "\nGa" "ther " "round " "my " lone "ly " "door; "
  "\nSi" lent "ly " "they " "bring " be "fore " "me "
  "\nFa" "ces, " "I " "shall " "see " "no " "more. "

  \set stanza = "2."
  "\nOh, " "not " "lost, " "but " "gone " be "fore " "us! "
  "\nLet " "them " ne "ver " "be " for "get: "
  "\nSweet " "their " mem "'ry " "to " "the " lone "ly; "
  "\nIn " "our " "hearts " "they " per "ish " "not. "

  \set stanza = "3."
  "\nHow " "such " ho "ly " mem "'ries " clus "ter, "
  "\nLike " "the " "stars " "when " "storms " "are " "past; "
  "\nPoint" "ing " "up " "to " "that " "far " hea "ven, "
  "\nWhere " "we " "hope " "to " "meet " "at " "last. "
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
    system-system-spacing.basic-distance = #15
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
