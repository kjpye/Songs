\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "What shall I do to be Saved?"
  subtitle    = "Sankey No. 496"
  subsubtitle = "Sankey 880 No. 211"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. B. Bradbury."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. W. Holman."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

# #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*4
  \mark \markup { \box "B" }    s2.*5
  \mark \markup { \box "C" }    s2.*5
  \mark \markup { \box "D" }    s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \tag #'dash    {c''4 | c bes a | g4. a8 g4 | f2 \slurDashed a8(bes) \slurSolid | c4 d c \break}
  \tag #'(v3 v4) {c4   | c bes a | g4. a8 g4 | f2             a8(bes)            | c4 d c \break}
  \tag #'(v1 v2) {c4   | c bes a | g4. a8 g4 | f2             a8 bes             | c4 d c \break}
  c4 bes a | g2 8 8 | 4 4 a | bes2 a8 g | a4 4 bes \break |
  c2 d8 8 | c4 bes a | g a4. g8 | f2. | g4^\p g a \break |
  bes2. | a4^\< a bes\! | c2. | d2.^\f | c4 bes a | g4.^\> a8 g4\! f2\omit\mf
}

alto = \relative {
  \autoBeamOff
  \tag #'dash    {a'4 | a g f | e4. 8 4 | f2 \slurDashed 8(g) \slurSolid | a4 bes a}
  \tag #'(v3 v4) {a4  | a g f | e4. 8 4 | f2             8(g)            | a4 bes a}
  \tag #'(v1 v2) {a4  | a g f | e4. 8 4 | f2             8 g             | a4 bes a}
  a4 g f | e2 8 8 | e4 e f | g2 f8 e | f4 4 g |
  a2 bes8 8 | a4 g f | e4 4. 8 | f2. | e4^\p e f |
  g2. | f4^\< 4 g\! | a2. | bes^\f | a4 g f | e4.^\> 8 4\! | f2\omit\mf
}

tenor = \relative {
  \autoBeamOff
  \tag #'dash    {c'4 | 4 4 4 | bes4. 8 4 | a2 \slurDashed c8(8) \slurSolid | 4 bes c}
  \tag #'(v3 v4) {c4  | 4 4 4 | bes4. 8 4 | a2             c4               | 4 bes c}
  \tag #'(v1 v2) {c4  | 4 4 4 | bes4. 8 4 | a2             c8 8             | 4 bes c}
  f,4 g a8[bes] | c2 8 8 | 4 bes a | g2 c8 8 | 4 4 bes |
  a2 f8 8 | 4 g a | bes c4. bes8 | a2. | c4 4 4 |
  c2. | 4\omit\< f e\! | ees2. | d2.\omit\f | c4 bes a | bes4.\omit\> c8 bes4\! | a2\omit\mf
}

bass = \relative {
  \autoBeamOff
  \tag #'dash    {f4 | 4 4 4 | c4. 8 4 | f2 \slurDashed 8(8) \slurSolid | 4 4 4}
  \tag #'(v3 v4) {f4 | 4 4 4 | c4. 8 4 | f2             4               | 4 4 4}
  \tag #'(v1 v2) {f4 | 4 4 4 | c4. 8 4 | f2             8 8             | 4 4 4}
  d4 e f | c2 8 8 | 4 4 4 | 2 8 8 | f4 4 4 |
  f2 bes,8 8 | c4 4 4 | 4 4. 8 | f2. | c4 4 4 |
  c4(d e) f\omit\< 4 4\! | 2. | bes^\f |  a4 g f | c4.\omit\> 8 4\! f2\omit\mf
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  \set stanza = "1.-3."
  What shall I do? what shall I do?
  Oh, what shall I do to be saved?
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, what shall I do to be saved
  \nom From the \yesm sor -- rows that bur -- den my soul?
  Like the waves in the storm
  When the winds are at war,
  Chill -- ing floods of dis -- tress o'er me roll.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, what shall I do to be saved,
  \nom When the \yesm plea -- sures of youth are all fed:
  And the friends I have loved
  From the earth are re -- moved,
  And I weep o'er the graves of the dead?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, what shall I do to be saved,
  When sick -- ness my strength shall sub -- due;
  Or the world in a day,
  Like a cloud, rolls a -- way,
  And e -- ter -- ni -- ty o -- pens to view?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O Lord, look in mer -- cy on me,
  Come, come, and speak peace to my soul!
  Un -- to whome shall I fleem
  Bless -- ed Lord, but to Thee?
  Thou canst make my poor bro -- ken heart whole!
  \set stanza = "4."
  That will I do! that will I do!
  To Je -- sus I'll go and be saved.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "what " "shall " "I " "do " "to " "be " "saved "
  \nom From the \yesm sor -- rows that bur -- den my soul?
  "\nLike " "the " "waves " "in " "the " "storm "
  "\nWhen " "the " "winds " "are " "at " "war, "
  "\nChill" "ing " "floods " "of " dis "tress " "o'er " "me " "roll. "
  "\nWhat " "shall " "I " "do? " "what " "shall " "I " "do? "
  "\nOh, " "what " "shall " "I " "do " "to " "be " "saved?\n"

  \set stanza = "2."
  "\nOh, " "what " "shall " "I " "do " "to " "be " "saved, "
  \nom When the \yesm plea -- sures of youth are all fed:
  "\nAnd " "the " "friends " "I " "have " "loved "
  "\nFrom " "the " "earth " "are " re "moved, "
  "\nAnd " "I " "weep " "o'er " "the " "graves " "of " "the " "dead? "
  "\nWhat " "shall " "I " "do? " "what " "shall " "I " "do? "
  "\nOh, " "what " "shall " "I " "do " "to " "be " "saved?\n"

  \set stanza = "3."
  "\nOh, " "what " "shall " "I " "do " "to " "be " "saved, "
  "\nWhen " sick "ness " "my " "strength " "shall " sub "due; "
  "\nOr " "the " "world " "in " "a " "day, "
  "\nLike " "a " "cloud, " "rolls " a "way, "
  "\nAnd " e ter ni "ty " o "pens " "to " "view? "
  "\nWhat " "shall " "I " "do? " "what " "shall " "I " "do? "
  "\nOh, " "what " "shall " "I " "do " "to " "be " "saved?\n"

  \set stanza = "4."
  "\nO " "Lord, " "look " "in " mer "cy " "on " "me, "
  "\nCome, " "come, " "and " "speak " "peace " "to " "my " "soul! "
  "\nUn" "to " "whome " "shall " "I " "fleem "
  "\nBless" "ed " "Lord, " "but " "to " "Thee? "
  "\nThou " "canst " "make " "my " "poor " bro "ken " "heart " "whole! "
  \set stanza = "4."
  "\nThat " "will " "I " "do! " "that " "will " "I " "do! "
  "\nTo " Je "sus " "I'll " "go " "and " "be " "saved. "
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
            \new Voice { \global
                         \keepWithTag #'v1 \soprano
                         \keepWithTag #'v2 \soprano
                         \keepWithTag #'v3 \soprano
                         \keepWithTag #'v4 \soprano
                         \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global
                         \keepWithTag #'v1 \alto \nl
                         \keepWithTag #'v2 \alto \nl
                         \keepWithTag #'v3 \alto \nl
                         \keepWithTag #'v4 \alto \nl
                         \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global
                         \keepWithTag #'v1 \tenor
                         \keepWithTag #'v2 \tenor
                         \keepWithTag #'v3 \tenor
                         \keepWithTag #'v4 \tenor
                       }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global
                         \keepWithTag #'v1 \bass
                         \keepWithTag #'v2 \bass
                         \keepWithTag #'v3 \bass
                         \keepWithTag #'v4 \bass
                       }
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
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
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
            \new NullVoice = "aligner" {
              \keepWithTag #'v1 \soprano
              \keepWithTag #'v2 \soprano
              \keepWithTag #'v3 \soprano
              \keepWithTag #'v4 \soprano
            }
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \soprano
                                                 \keepWithTag #'v2 \soprano
                                                 \keepWithTag #'v3 \soprano
                                                 \keepWithTag #'v4 \soprano
                                                 \bar "|." }
            { \global
              \keepWithTag #'v1 \alto \nl
              \keepWithTag #'v2 \alto \nl
              \keepWithTag #'v3 \alto \nl
              \keepWithTag #'v4 \alto \nl
              \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour 
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global
                                                 \keepWithTag #'v1 \tenor
                                                 \keepWithTag #'v2 \tenor
                                                 \keepWithTag #'v3 \tenor
                                                 \keepWithTag #'v4 \tenor
                                               }
            { \global
              \keepWithTag #'v1 \bass
              \keepWithTag #'v2 \bass
              \keepWithTag #'v3 \bass
              \keepWithTag #'v4 \bass
            }
            \new NullVoice = alignerT {
              \keepWithTag #'v1 \tenor
              \keepWithTag #'v2 \tenor
              \keepWithTag #'v3 \tenor
              \keepWithTag #'v4 \tenor
            }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
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
