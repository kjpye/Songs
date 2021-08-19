\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Holy Spirit, Come."
  subtitle    = "Sankey No. 190"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "German Chorale."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Rev. J. Hart."
  meter       = \markup\smallCaps "s.m."
  piece       = \markup\smallCaps "Franconia."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4
  f4 g aes bes
  g2. bes4
  c4 ees aes, g
  f2. \bar "|" \break bes4
  ees4 d c bes % B
  c4 c bes bes
  ees,4 g f f
  ees2.
}

alto = \relative {
  \autoBeamOff
  bes4
  d4 ees ees d
  ees2. 4
  ees4 4 d ees
  d2. 4
  ees4 f f d % B
  g4 f d ees
  ees4 4 4 d
  ees2.
}

tenor = \relative {
  \autoBeamOff
  g4
  bes4 4 aes f
  g2. 4
  aes4 bes aes bes
  bes2. 4
  bes4 4 a bes % B
  bes4 a bes g
  g4 bes c bes
  g2.
}

bass = \relative {
  \autoBeamOff
  ees4
  bes4 ees c bes
  ees2. 4
  aes4 g f ees
  bes2. bes'4
  g4 bes f g % B
  ees4 f bes, ees
  c4 g aes bes
  ees2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, Ho -- ly Spi -- rit, come;
  Let Thy bright beams a -- rise,
  Dis -- pel the dark -- ness from our minds,
  And o -- pen all our eyes.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Re -- vive our droop -- ing faith,
  Our doubts and fears re -- move,
  And kin -- dle in our breasts the flame
  Of nev -- er- -- dy -- ing love.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Con -- vince us of our sin,
  Then lead to Je -- sus' blood,
  And to our won -- d'ring view re -- veal
  The sec -- ret love of God.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  'Tis Thine to cleanse the heart,
  To sanc -- ti -- fy the soul,
  To pour fresh life in ev -- ery part,
  And new- -- cre -- ate the whole.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Dwell there -- fore in our hearts,
  Our minds from bond -- age free;
  Then we shall know, and praise, and love
  The Fa -- ther, Son, and Thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " Ho "ly " Spi "rit, " "come; "
  "\nLet " "Thy " "bright " "beams " a "rise, "
  "\nDis" "pel " "the " dark "ness " "from " "our " "minds, "
  "\nAnd " o "pen " "all " "our " "eyes. "

  \set stanza = "2."
  "\nRe" "vive " "our " droop "ing " "faith, "
  "\nOur " "doubts " "and " "fears " re "move, "
  "\nAnd " kin "dle " "in " "our " "breasts " "the " "flame "
  "\nOf " nev er- dy "ing " "love. "

  \set stanza = "3."
  "\nCon" "vince " "us " "of " "our " "sin, "
  "\nThen " "lead " "to " Je "sus' " "blood, "
  "\nAnd " "to " "our " won "d'ring " "view " re "veal "
  "\nThe " sec "ret " "love " "of " "God. "

  \set stanza = "4."
  "\n'Tis " "Thine " "to " "cleanse " "the " "heart, "
  "\nTo " sanc ti "fy " "the " "soul, "
  "\nTo " "pour " "fresh " "life " "in " ev "ery " "part, "
  "\nAnd " new- cre "ate " "the " "whole. "

  \set stanza = "5."
  "\nDwell " there "fore " "in " "our " "hearts, "
  "\nOur " "minds " "from " bond "age " "free; "
  "\nThen " "we " "shall " "know, " "and " "praise, " "and " "love "
  "\nThe " Fa "ther, " "Son, " "and " "Thee! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
