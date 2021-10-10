\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Sound His Praise!"
  subtitle    = "Sankey No. 249"
  subsubtitle = "Sankey 880 No. 405"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Isaac Smith."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts, D.D."
  meter       = \markup\smallCaps "s.m."
  piece       = \markup\smallCaps "Falcon Street."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 2/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s1*5 s2.
  \mark \markup { \box "B" } s4 s1*7
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''2 g4 4
  e2 g
  c2. e4
  d2 g,
  c4(a) g(fis)
  g2. \bar "|" \break g4
  c2 e % B
  c2. g4
  a4(g) a8(b c4)
  b2. g4
  a4(b c) f
  e2 d
  c1
}

alto = \relative {
  \autoBeamOff
  e'2 d4 4
  c2 d
  e2. g4
  g2 2
  e2 d
  d2. e4
  e2 g % B
  e2. g4
  f4(g) f(g)
  g2. 4
  f2(g4) a
  g2 f
  e1
}

tenor = \relative {
  \autoBeamOff
  g2 b4 4
  c2 b
  c2. 4
  d2 b
  a4(c) b(a)
  b2. c4
  g2 c % B
  g2. c4
  c2 c8(d e4)
  d2. c4
  c4(d c) c
  c2 b
  c1
}

bass = \relative {
  \autoBeamOff
  c2 g'4 4
  c2 g
  c,2. 4
  b2 e
  c2 d
  g,2. c4
  c2 2
  c2. e4
  f4(e) d(c)
  g'2. e4
  f2(e4) d
  g2 g,
  c1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, sound His praise a -- broad,
  And hymns of glo -- ry sing!
  Je -- ho -- vah is the sov -- 'reign God,
  The u -- ni -- ver -- sal King!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  He formed the deeps un -- known;
  He gave the seas their bound:
  The wa -- t'ry wprlds are all His own,
  And all the sol -- id ground.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come, wor -- ship at His throne;
  Come bow be -- fore the Lord:
  We are His work, and not our own—
  He formed us by His word.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  To -- day at -- tend His voice,
  Nor dare pro -- voke His rod;
  Come, like the pe -- ople of His choice,
  And own your gra -- cious God.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "sound " "His " "praise " a "broad, "
  "\nAnd " "hymns " "of " glo "ry " "sing! "
  "\nJe" ho "vah " "is " "the " sov "'reign " "God, "
  "\nThe " u ni ver "sal " "King! "

  \set stanza = "2."
  "\nHe " "formed " "the " "deeps " un "known; "
  "\nHe " "gave " "the " "seas " "their " "bound: "
  "\nThe " wa "t'ry " "wprlds " "are " "all " "His " "own, "
  "\nAnd " "all " "the " sol "id " "ground. "

  \set stanza = "3."
  "\nCome, " wor "ship " "at " "His " "throne; "
  "\nCome " "bow " be "fore " "the " "Lord: "
  "\nWe " "are " "His " "work, " "and " "not " "our " "own— "
  "\nHe " "formed " "us " "by " "His " "word. "

  \set stanza = "4."
  "\nTo" "day " at "tend " "His " "voice, "
  "\nNor " "dare " pro "voke " "His " "rod; "
  "\nCome, " "like " "the " pe "ople " "of " "His " "choice, "
  "\nAnd " "own " "your " gra "cious " "God. "
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

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack }
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
