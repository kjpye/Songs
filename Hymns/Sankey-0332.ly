\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Pray, always Pray."
  subtitle    = "Sankey No. 332"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "G. T. Caldbeck."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Rt. Rev. E. H. Bickersteth, D. D."
%  meter       = \markup\smallCaps "meter"
  piece       = \markup\smallCaps "Pax Tecum."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*6 s1.
  \mark \markup { \box "B" } s2 s1*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'1^\markup\italic\bold Moderato. 2 2
  g1. 2
  a2 2 2 g
  g1. \bar "|" \break 2
  c1 d $ B
  e2 d c a
  g1 2(f)
  e\breve
}

alto = \relative {
  \autoBeamOff
  e'1 f2 2
  e1. 2
  f2 2 2 2
  e1. 2
  f1 fis % B
  g2 2 2 f
  e1 d
  c\breve
}

tenor = \relative {
  \autoBeamOff
  c'1 b4(c) d2
  c1. 2
  c2 d d d
  c1. 2
  c1 1 % B
  c2 b c c
  c1 b
  g\breve
}

bass = \relative {
  \autoBeamOff
  c1 g'2 2
  c,1. 2
  f2 d4(c) b2 2
  c1. bes'2
  a1 aes % B
  g2 f e f
  g1 g,
  c\breve
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 7

wordsOne = \lyricmode {
  \set stanza = "1."
  Pray, al -- ways pray; the Ho -- ly Spi -- rit pleads
  With -- in thee all thy dai -- ly, hour -- ly needs.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Pray, al -- ways pray;
  be -- neath sin's hea -- viest load
  Prayer sees the blood from Je -- sus' side that flowed.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Pray, al -- ways pray; though wea -- ry, faint, and lone,
  Prayer nes -- tles by the Fa -- ther's shel -- t'ring throne.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Pray, al -- ways pray;
  a -- mid the world's tur -- moi;
  Prayer keeps the heart at rest, and nerves for toil.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Pray, al -- ways pray; if joys thy path -- way throng,
  Prayer strikes the harp, and sings the an -- gel's song.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Pray, al -- ways pray; if loved ones pass the vail
  Prayer drinks with them of springs that can -- not fail.
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  All earth -- ly things with earth shall fade a -- way;
  Prayer grasps e -- tern -- i -- ty: pray, al -- ways pray.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Pray, " al "ways " "pray; " "the " Ho "ly " Spi "rit " "pleads "
  "\nWith" "in " "thee " "all " "thy " dai "ly, " hour "ly " "needs. "

  \set stanza = "2."
  "\nPray, " al "ways " "pray; "
  "\nbe" "neath " "sin's " hea "viest " "load "
  "\nPrayer " "sees " "the " "blood " "from " Je "sus' " "side " "that " "flowed. "

  \set stanza = "3."
  "\nPray, " al "ways " "pray; " "though " wea "ry, " "faint, " "and " "lone, "
  "\nPrayer " nes "tles " "by " "the " Fa "ther's " shel "t'ring " "throne. "

  \set stanza = "4."
  "\nPray, " al "ways " "pray; " a "mid " "the " "world's " tur "moi; "
  "\nPrayer " "keeps " "the " "heart " "at " "rest, " "and " "nerves " "for " "toil. "

  \set stanza = "5."
  "\nPray, " al "ways " "pray; " "if " "joys " "thy " path "way " "throng, "
  "\nPrayer " "strikes " "the " "harp, " "and " "sings " "the " an "gel's " "song. "

  \set stanza = "6."
  "\nPray, " al "ways " "pray; " "if " "loved " "ones " "pass " "the " "vail "
  "\nPrayer " "drinks " "with " "them " "of " "springs " "that " can "not " "fail. "

  \set stanza = "7."
  "\nAll " earth "ly " "things " "with " "earth " "shall " "fade " a "way; "
  "\nPrayer " "grasps " e tern i "ty: " "pray, " al "ways " "pray. "
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
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
            \new Lyrics \lyricsto "aligner"   \wordsSeven
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
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                              \wordsSeven \chorus
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
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
                                              \wordsSeven \chorus
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
