\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "For the Tempted, Lord, we Pray."
  subtitle    = "Sankey No. 315"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. M. H. Gates."
  meter       = \markup\smallCaps "six 7s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*8
  \mark \markup { \box "B" } s2.*8
  \mark \markup { \box "C" } s2.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'2 g4
  c2 b4
  b2 a4
  g2.
  c2 b4
  e2 d4
  d2 cis4
  d2.
  g,2 b4 % B
  d2 b4
  b2 a4
  g2.
  g4(c) e
  d2 b4
  b2 a4
  g2.
  d'2 a4 % C
  d2 e4
  d2 4
  b2.
  c4(d) e
  d4(b) g
  b2 a4
  g2.
}

alto = \relative {
  \autoBeamOff
  \once\partCombineApart d'2 4
  g2 4
  g2 fis4
  \once\partCombineApart g2.
  g2 4
  g2 4
  g2 4
  fis2.
  \once\partCombineApart g2 4 % B
  g2 d4
  d2 fis4
  \once\partCombineApart g2.
  e2 g4
  g2 d4
  d4(e) fis
  g2.
  fis2 4 % C
  fis2 4
  g2 4
  g2.
  g2 4
  g2 4
  g4(d) fis
  \once\partCombineApart g2.
}

tenor = \relative {
  \autoBeamOff
  b2 4
  e2 d4
  d2 c4
  b2.
  c2 d4
  c2 d4
  e2 4
  d2(c4)
  b2 d4 % B
  b2 g4
  g2 c4
  b2.
  c2 4
  b2 g4
  d'2 c4
  b2.
  a2 d4 % C
  a2 c4
  b2 4
  d2.
  c4(b) c
  b4(d) d
  d2 c4
  b2.
}

bass = \relative {
  \autoBeamOff
  g2 4
  g2 4
  d2 4
  g2.
  e2 g4
  \once\partCombineApart c2 b4
  a2 4
  d,2.
  g2 4 % B
  g2 g,4
  d'2 4
  e2.
  c2 4
  g'2 4
  d2 4
  g2.
  d2 4 % C
  d2 4
  g2 4
  g2.
  e4(d) c
  g'2 b,4
  d2 4 g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  For the tempt -- ed, Lord, we pray;
  For the souls that go a -- stray;
  Weak and wea -- ry, tem -- pest -- tost,
  Stars all hid, and com -- pass lost;
  Sai -- lors on the dan -- g'rous seas—
  God of love, we pray for these.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  For the tempt -- ed, Lord, we pray;
  Thou didst make then, Thine are they;
  When al -- lur -- ing forms are nigh,
  When a thou -- sand voi -- ces cry,
  Loud and clear a -- bove them all
  Let them hear Thy ten -- der call.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  For the tempt -- ed, Lord, we pray;
  For the souls that go a -- stray,
  Beat -- en back by storm and sleet,
  Scorned by all they chance to meet;
  On them let Thy mer -- cy shine,
  Still re -- mem -- ber they are Thine.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  For the tempt -- ed, Lord, we pray;
  Dust and ash -- es— such are they!
  Hear them while they make their moan;
  Thou canst save, and Thou a -- lone:
  See, their feet are on the sands;
  Christ of Cal -- v'ry, hold their hands.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "For " "the " tempt "ed, " "Lord, " "we " "pray; "
  "\nFor " "the " "souls " "that " "go " a "stray; "
  "\nWeak " "and " wea "ry, " tem pest "tost, "
  "\nStars " "all " "hid, " "and " com "pass " "lost; "
  "\nSai" "lors " "on " "the " dan "g'rous " "seas— "
  "\nGod " "of " "love, " "we " "pray " "for " "these. "

  \set stanza = "2."
  "\nFor " "the " tempt "ed, " "Lord, " "we " "pray; "
  "\nThou " "didst " "make " "then, " "Thine " "are " "they; "
  "\nWhen " al lur "ing " "forms " "are " "nigh, "
  "\nWhen " "a " thou "sand " voi "ces " "cry, "
  "\nLoud " "and " "clear " a "bove " "them " "all "
  "\nLet " "them " "hear " "Thy " ten "der " "call. "

  \set stanza = "3."
  "\nFor " "the " tempt "ed, " "Lord, " "we " "pray; "
  "\nFor " "the " "souls " "that " "go " a "stray, "
  "\nBeat" "en " "back " "by " "storm " "and " "sleet, "
  "\nScorned " "by " "all " "they " "chance " "to " "meet; "
  "\nOn " "them " "let " "Thy " mer "cy " "shine, "
  "\nStill " re mem "ber " "they " "are " "Thine. "

  \set stanza = "4."
  "\nFor " "the " tempt "ed, " "Lord, " "we " "pray; "
  "\nDust " "and " ash "es— " "such " "are " "they! "
  "\nHear " "them " "while " "they " "make " "their " "moan; "
  "\nThou " "canst " "save, " "and " "Thou " a "lone: "
  "\nSee, " "their " "feet " "are " "on " "the " "sands; "
  "\nChrist " "of " Cal "v'ry, " "hold " "their " "hands. "
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
