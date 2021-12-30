\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Why not To-night?"
  subtitle    = "Sankey No. 335"
  subsubtitle = "Sankey 880 No. 312"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs E. Reid."
  meter       = \markup\smallCaps "L.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key ees \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4. s2.*3 s4.
  \mark \markup { \box "B" } s4. s2.*3 s4.
  \mark \markup { \box "C" } s4. s2.*3 s4.
  \mark \markup { \box "D" } s4. s2.*3 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'8 g aes
  bes4. g8 8. f16
  g4. 8 aes g
  aes8 c bes4 g
  f4. \bar "|" \break f8 8 8
  bes4. aes8 g8. f16 % B
  g4. 8 aes c
  bes4. g8 8. f16
  ees4. \bar "||" \break bes'8^\markup\smallCaps Chorus. g8. aes16
  bes4. 8 c8. bes16 % C
  ees4. 8 8 8
  d4. c8 g8. a16
  bes4. \bar "|" \break bes8 g8. aes16
  bes4. 8 c8. bes16 % D
  ees4. 8 8 c
  bes4. g8^\markup\italic rit. 8. f16
  ees4.\fermata
}

alto = \relative {
  \autoBeamOff
  ees'8 8 8
  ees4. 8 8. d16
  ees4. 8 8 8
  ees8 8 4 4
  d4. 8 8 8
  d4. f8 ees8. d16 % B
  ees4. 8 8 8
  ees4. 8 8. d16
  ees4. g8 ees8. f16
  g4. ees8 8. 16 % C
  g4. 8 8 8
  f4. 8 ees8. 16
  d4. ees8 8. 16
  ees4. 8 8. 16 % D
  g4. ees8 aes aes
  g4. ees8 8. d16
  ees4.\fermata
}

tenor = \relative {
  \autoBeamOff
  g8 ees f
  g4. bes8 8. aes16
  g4. 8 c bes
  aes8 8 g4 bes
  bes4. 8 8 8
  f4. bes8 8. 16 % B
  bes4. 8 aes aes
  g4. bes8 8. aes16
  g4. ees8 8. 16
  ees4. g8 aes8. g16 % C
  bes4. 8 8 8
  bes4. a8 c8. f,16
  f4. g8 ees8. f16
  g4. 8 aes8. g16 % D
  bes4. 8 c ees
  ees4. bes8 8. aes16
  g4.\fermata
}

bass = \relative {
  \autoBeamOff
  ees8 8 8
  ees4. 8 bes8. 16
  ees4. 8 8 8
  c8 aes ees'4 4 bes4. 8 8 8
  bes4. 8 8. 16 % B
  ees4. des8 c aes
  bes4. 8 8. 16
  ees4. 8 8. 16
  ees4. 8 8. 16 % C
  ees4. 8 8 8
  f4. 8 8. 16
  bes,4. ees8 8. 16
  ees4. 8 8. 16 % D
  ees4. g8 aes aes
  bes4. 8 bes,8. 16
  ees4.\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Why not to -- night? Why not to -- night?
  Thou wouldst be saved— Why not to -- night?
  Why not to -- night? Why not to -- night?
  Thou wouldst be saved— Why not to -- night?
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, do not let the Word de -- part,
  Nor close thine eyes a -- gainst the light;
  Poor sin -- ner, hard -- en not thy heart;
  Thou wouldst be saved— Why not to -- night?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  To -- mor -- row's sun may nev -- er rise,
  To bless thy long de -- lu -- ded sight;
  This is the time! oh then, be wise!
  Thou wouldst be saved— Why not to -- night?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The world has no -- thing left to give—
  It has no new, no pure de -- light;
  Oh, try the life which Christ -- ians live!
  Thou wouldst be saved— Why not to -- night?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Our bles -- sed Lord re -- fu -- ses none
  Who would to Him their sould u -- nite;
  Then be the work of grace be -- gun!
  Thou wouldst be saved— \markup\italic Why \markup\italic not \markup\italic to -- \markup\italic night?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."

  "Oh, " "do " "not " "let " "the " "Word " de "part, "
  "\nNor " "close " "thine " "eyes " a "gainst " "the " "light; "
  "\nPoor " sin "ner, " hard "en " "not " "thy " "heart; "
  "\nThou " "wouldst " "be " "saved— " "Why " "not " to "night? "
  "\nWhy " "not " to "night? " "Why " "not " to "night? "
  "\nThou " "wouldst " "be " "saved— " "Why " "not " to "night? "
  "\nWhy " "not " to "night? " "Why " "not " to "night? "
  "\nThou " "wouldst " "be " "saved— " "Why " "not " to "night?\n"

  \set stanza = "2."
  "\nTo" mor "row's " "sun " "may " nev "er " "rise, "
  "\nTo " "bless " "thy " "long " de lu "ded " "sight; "
  "\nThis " "is " "the " "time! " "oh " "then, " "be " "wise! "
  "\nThou " "wouldst " "be " "saved— " "Why " "not " to "night? "
  "\nWhy " "not " to "night? " "Why " "not " to "night? "
  "\nThou " "wouldst " "be " "saved— " "Why " "not " to "night? "
  "\nWhy " "not " to "night? " "Why " "not " to "night? "
  "\nThou " "wouldst " "be " "saved— " "Why " "not " to "night?\n"

  \set stanza = "3."
  "\nThe " "world " "has " no "thing " "left " "to " "give— "
  "\nIt " "has " "no " "new, " "no " "pure " de "light; "
  "\nOh, " "try " "the " "life " "which " Christ "ians " "live! "
  "\nThou " "wouldst " "be " "saved— " "Why " "not " to "night? "
  "\nWhy " "not " to "night? " "Why " "not " to "night? "
  "\nThou " "wouldst " "be " "saved— " "Why " "not " to "night? "
  "\nWhy " "not " to "night? " "Why " "not " to "night? "
  "\nThou " "wouldst " "be " "saved— " "Why " "not " to "night?\n"

  \set stanza = "4."
  "\nOur " bles "sed " "Lord " re fu "ses " "none "
  "\nWho " "would " "to " "Him " "their " "sould " u "nite; "
  "\nThen " "be " "the " "work " "of " "grace " be "gun! "
  "\nThou " "wouldst " "be " "saved— " "Why " "not " to "night? "
  "\nWhy " "not " to "night? " "Why " "not " to "night? "
  "\nThou " "wouldst " "be " "saved— " "Why " "not " to "night? "
  "\nWhy " "not " to "night? " "Why " "not " to "night? "
  "\nThou " "wouldst " "be " "saved— " "Why " "not " to "night? "
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
    page-breaking = #ly:one-page-breaking
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
