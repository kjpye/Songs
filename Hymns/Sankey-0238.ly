\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Song of Praise."
  subtitle    = "Sankey No. 238"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Rev. R. F. Gordon."
  meter       = \markup\smallCaps "7.7.7.5."
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
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'4 f g a
  bes4 4 2
  c4 4 4 d8[bes]
  a4 g f2
  bes4 f g a % B
  bes4 c d ees8 c
  bes2 a
  bes1
}

alto = \relative {
  \autoBeamOff
  d'4 4 ees ees
  d4 ees d2
  f4 e f f8[g]
  f4 e f2
  d4 4 ees ees % B
  d4 f f g8 8
  f2 ees
  d1
}

tenor = \relative {
  \autoBeamOff
  f4 bes bes f
  f4 g f2
  a4 bes c bes8[d]
  c4 bes a2
  bes4 4 4 c % B
  bes4 a bes bes8 ees
  d2 c
  bes1
}

bass = \relative {
  \autoBeamOff
  bes,4 4 ees c
  bes4 ees bes2
  f'4 g a bes8[d]
  c4 c, f2
  bes,4 4 ees c % B
  g'4 f bes ees,8 8
  f2 2
  bes,1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  God of love, and God of might,
  God of truth, and God of light,
  Heart and voice we would u -- nite,
  Giv -- ing praise to Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  With the sweets of morn -- ing's balm,
  With the hush of ev -- 'ning's calm,
  Fer -- vent hymn and ho -- ly psalm
  Rise con -- tin -- ual -- ly.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  We a -- dore Thee, God most high,
  We Thy mer -- cy mag -- ni -- fy;
  On Thy word our souls re -- ly,
  Trust -- ing peace -- ful -- ly.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  We have heard Thy words of cheer
  On our pil -- grim jour -- ney here;
  We have known The pre -- sence near,
  Shin -- ing con -- stant -- ly.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "God " "of " "love, " "and " "God " "of " "might, "
  "\nGod " "of " "truth, " "and " "God " "of " "light, "
  "\nHeart " "and " "voice " "we " "would " u "nite, "
  "\nGiv" "ing " "praise " "to " "Thee. "

  \set stanza = "2."
  "\nWith " "the " "sweets " "of " morn "ing's " "balm, "
  "\nWith " "the " "hush " "of " ev "'ning's " "calm, "
  "\nFer" "vent " "hymn " "and " ho "ly " "psalm "
  "\nRise " con tin ual "ly. "

  \set stanza = "3."
  "\nWe " a "dore " "Thee, " "God " "most " "high, "
  "\nWe " "Thy " mer "cy " mag ni "fy; "
  "\nOn " "Thy " "word " "our " "souls " re "ly, "
  "\nTrust" "ing " peace ful "ly. "

  \set stanza = "4."
  "\nWe " "have " "heard " "Thy " "words " "of " "cheer "
  "\nOn " "our " pil "grim " jour "ney " "here; "
  "\nWe " "have " "known " "The " pre "sence " "near, "
  "\nShin" "ing " con stant "ly. "
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
            \new Voice \TempoTrack
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
