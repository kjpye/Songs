\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Tallis Canon"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "T. Tallis"
%  arranger    = "arranger"
%  opus        = "opus"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/2
  \partial 2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2=80
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
    g'2 |
    g2 fis g g |
    a2 a b \bar "||" g |
    c2 c b b |
    a2 a g \bar "||" d' |
    c2 a b b |
    a2 a g \bar "||" d |
    e2 fis g b |
    a2 a g
}

alto = \relative {
  \autoBeamOff
    d'2 |
    d2 d b d |
    e2 d d g |
    g2 fis g d |
    e2 d d g |
    e2 fis g g |
    e2 d d d |
    c2 c b d |
    c2 a b
}

tenor = \relative {
  \autoBeamOff
    b2 |
    a2 a g g |
    g2 fis g g |
    a2 a b g |
    c2 c b b |
    a2 a g d' |
    c2 a b b |
    a2 a g d |
    e2 fis g
}

bass = \relative {
  \autoBeamOff
    g2 |
    d2 d e b |
    c2 d g, b |
    a2 a g g' |
    g2 fis g b, |
    c2 d g, g' |
    a2 fis g g, |
    c2 a e' b |
    c2 d g,
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 2

wordsOne = \lyricmode {
  \set stanza = "1."
  Glor- y to Thee, my God, this day,
  For all the mer- cies on my way;
  Glor- y to Thee for strength re- newed,
  For e- very thought by Thee im- bued.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sup- ply my need, be Thou my store,
  My treas- ure and my bound- less lore;
  Teach me to use Thy gifts, Thy grace,
  And ev- er see Thy hol- y Face.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Glor" "y " "to " "Thee, " "my " "God, " "this " "day, "
  "\nFor " "all " "the " mer "cies " "on " "my " "way; "
  "\nGlor" "y " "to " "Thee " "for " "strength " re "newed, "
  "\nFor " e "very " "thought " "by " "Thee " im "bued.\n"

  \set stanza = "2."
  "\nSup" "ply " "my " "need, " "be " "Thou " "my " "store, "
  "\nMy " treas "ure " "and " "my " bound "less " "lore; "
  "\nTeach " "me " "to " "use " "Thy " "gifts, " "Thy " "grace, "
  "\nAnd " ev "er " "see " "Thy " hol "y " "Face. "
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
            \new Voice \TempoTrack
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
            \addlyrics \wordsMidiMen
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      #(layout-set-staff-size 20)
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
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
