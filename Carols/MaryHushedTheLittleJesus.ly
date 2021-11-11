\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Mary Hushed the Little Jesus"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. C. Burchett"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Nancy Cornell"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key des \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*5
  \mark \markup { \box "B" } s2.*5
  \mark \markup { \box "C" } s2.*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=100
  s2.*14
%  \tempo 4=90
  s2.
  s2 \tempo 4=30 s4
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'2 ges4
  aes2 bes4
  aes2 ges4
  f2 ees4
  des2 4 \break
  ges2 4 % B
  bes4(aes) ges
  aes2.
  des2 4
  f,2 4 \break
  bes4(aes) bes % C
  aes2 f4
  f4(ees) des
  f2 bes4
  aes4(f) ees
  des2.\fermata
}

alto = \relative {
  \autoBeamOff
  des'2 c4
  des4(ees) f
  ees4(des) des
  c2 4
  des4(c) bes
  des2 4 % B
  ees4(f) bes,
  des2(4)
  des2 4
  c2 4
  des2 4 % C
  des2 4
  des4(c) bes
  des2 f4
  f8([ees] des4) c
  bes2(aes4\fermata)
}

tenor = \relative {
  \autoBeamOff
  aes2 4
  aes2 des4
  c4(bes) bes
  aes2 ges4
  f2 4
  ges4(aes) bes % B
  c4(des) ees
  aes,2.
  f4(ges) f
  aes4(f) aes
  bes2 ges4 % C
  aes2 4
  g2 4
  aes2 des4
  c4(bes8[aes]) ges4
  ges2(f4\fermata)
}

bass = \relative {
  \autoBeamOff
  des2 ees4
  f2 ges4
  ges4(f) ees
  aes,2 4
  bes2 4
  ees2 4 % B
  ges4(f) ees
  f2.
  bes,2 4
  aes2 4
  ges2 ges'4 % C
  f2 4
  ees2 4
  aes,2 4
  aes2 4
  des2.\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Ma -- ry hushed the lit -- tle Je -- sus,
  Cra -- dled sweet -- ly on her breast;
  Soft -- ly, gent -- ly, 'till His spi -- rit
  Sank at last to peace -- ful rest.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Mo -- thers since have rocked their ba -- bies,
  Croon -- ing low, sweet mel -- o -- dies;
  In -- fants fair, and warm, and love -- ly,
  Lured to sleep by lull -- a -- bies.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  None who grew to no -- bler man -- hood,
  None who so showed God's own face,
  Je -- sus, lit -- tle hu -- man ba -- by,
  Je -- sus, Sa -- viour of our race.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Ma" "ry " "hushed " "the " lit "tle " Je "sus, "
  "\nCra" "dled " sweet "ly " "on " "her " "breast; "
  "\nSoft" "ly, " gent "ly, " "'till " "His " spi "rit "
  "\nSank " "at " "last " "to " peace "ful " "rest. "

  \set stanza = "2."
  "\nMo" "thers " "since " "have " "rocked " "their " ba "bies, "
  "\nCroon" "ing " "low, " "sweet " mel o "dies; "
  "\nIn" "fants " "fair, " "and " "warm, " "and " love "ly, "
  "\nLured " "to " "sleep " "by " lull a "bies. "

  \set stanza = "3."
  "\nNone " "who " "grew " "to " no "bler " man "hood, "
  "\nNone " "who " "so " "showed " "God's " "own " "face, "
  "\nJe" "sus, " lit "tle " hu "man " ba "by, "
  "\nJe" "sus, " Sa "viour " "of " "our " "race. "
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
%            \new Voice \RehearsalTrack
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
%            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
