\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus! of Thee."
  subtitle    = "Sankey No. 278"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Isaac Smith."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mary Bowly Peters."
  meter       = \markup\smallCaps "C.M."
  piece       = \markup\smallCaps "Abridge."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*6 s2
  \mark \markup { \box "B" } s4 s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4
  bes'2 ees4
  ees4(d) c
  bes4(aes) g
  g4(f) g
  c2 bes4
  bes2 a4
  bes2 \bar "|" \break 4
  g4(aes) c % B
  bes2 4
  c4(d) ees
  ees4(d) bes
  ees4(g,) bes4
  aes4(g) f
  ees2
}

alto = \relative {
  \autoBeamOff
  ees'4
  ees2 4
  g4(f) f
  g4(f) ees
  ees4(d) ees
  ees2 f4
  g2 f4
  f2 d4
  ees2 d4 % B
  ees2 4
  ees4(aes) g
  g4(f) d
  ees2 4
  ees2 d4
  ees2
}

tenor = \relative {
  \autoBeamOff
  g4
  g2 aes4
  bes2 d4
  ees4(bes) 4
  bes2 4
  ees2 d4
  c2 4
  d2 bes4
  bes4(aes) aes % B
  bes2 g4
  aes2 bes4
  bes2 4
  bes2 4
  c4(bes) aes
  g2
}

bass = \relative {
  \autoBeamOff
  ees4
  ees2 g4
  bes2 aes4
  g4(d) ees
  bes2 ees4
  c2 d4
  ees2 f4
  bes,2 4
  ees4(f) aes % B
  g2 ees4
  bes4(f) aes
  bes2 aes'4
  g4(ees) g
  aes4(bes) bes,
  ees2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus! of Thee we ne'er would tire;
  The new and liv -- ing food
  Can sat -- is -- fy our hearts' de -- sire,
  And life is in Thy blood.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  If such the hap -- py mid -- night song
  Our pris -- on'e spi -- rits raise,
  What are the joys that cause ere long
  E -- ter -- nal bursts of praise?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  To look with -- in and see no stain,
  A -- broad no curse to trace;
  To shed no tears, to feel no pain,
  But see Thee face to face.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  To find each hope of glo -- ry gained,
  Ful -- filled each pre -- cious word;
  And ful -- ly all to have at -- tained
  The im -- age of our Lord.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus! " "of " "Thee " "we " "ne'er " "would " "tire; "
  "\nThe " "new " "and " liv "ing " "food "
  "\nCan " sat is "fy " "our " "hearts' " de "sire, "
  "\nAnd " "life " "is " "in " "Thy " "blood. "

  \set stanza = "2."
  "\nIf " "such " "the " hap "py " mid "night " "song "
  "\nOur " pris "on'e " spi "rits " "raise, "
  "\nWhat " "are " "the " "joys " "that " "cause " "ere " "long "
  "\nE" ter "nal " "bursts " "of " "praise? "

  \set stanza = "3."
  "\nTo " "look " with "in " "and " "see " "no " "stain, "
  "\nA" "broad " "no " "curse " "to " "trace; "
  "\nTo " "shed " "no " "tears, " "to " "feel " "no " "pain, "
  "\nBut " "see " "Thee " "face " "to " "face. "

  \set stanza = "4."
  "\nTo " "find " "each " "hope " "of " glo "ry " "gained, "
  "\nFul" "filled " "each " pre "cious " "word; "
  "\nAnd " ful "ly " "all " "to " "have " at "tained "
  "\nThe " im "age " "of " "our " "Lord. "
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
