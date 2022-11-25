\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Follow On!"
  subtitle    = "Sankey No. 529"
  subsubtitle = "Sankey 880 No. 345"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. O. Cushing."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*2
  \textMark \markup { \box \bold "C" }    s1*3
  \textMark \markup { \box \bold "D" }    s1*4
  \textMark \markup { \box \bold "E" }    s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 aes8. bes16 c8 8 bes aes | aes8 8 g f ees2 | 8 g g g \bar "|" \break
  g8 bes bes g | aes4 des8 c bes2 | ees,8 8 aes bes c c bes aes |
  aes8 8 g f ees2 | f8 g aes bes c c ees d | c4 bes aes2 |
  c4^\markup\smallCaps Refrain. ees c8.[bes16] aes4 | 8 bes aes f8 4 ees | g8 8 4 aes8 8 4 | bes8 c des c bes2 |
  c4 ees c8.[bes16] aes4 | 8 bes aes f8 4 ees | f8 g aes bes c c ees des | c4 bes aes2 |
}

alto = \relative {
  \autoBeamOff
  c'4 8. des16 ees8 8 8 8 | des8 f ees des c2 | bes8 ees ees ees
  ees8 8 8 8 | 4 8 8 4(des) | c8 8 8 des ees ees ees ees |
  f8 8 ees des c2 | des8 ees ees ees ees ees ees f | ees4 4 2 |
  aes4 4 ees8.[des16] c4 | des8 8 8 8 4 c | ees8 8 4 8 8 4 | g8 aes bes aes g2 |
  aes4 4 ees8.[des16] c4 | des8 8 8 8 4 c | des8 ees8 8 8 8 8 8 f | ees4 4 2 |
}

tenor = \relative {
  \autoBeamOff
  aes4 8. 16 8 8 8 8 | f8 aes8 8 8 2 | g8 bes8 8 8
  bes8 g g bes | aes4 g8 aes g2 | aes8 8 8 8 8 8 8 8 |
  aes8 8 8 8 2 | 8 bes aes g aes8 8 8 8 | 4 des c2 |
  ees4 c aes aes | f8 8 8 aes8 4 4 | bes8 8 4 c8 8 4 | ees8 8 8 8 2 |
  ees4 c aes aes | f8 8 8 aes8 4 4 | 8 bes aes g aes8 8 8 8 | 4 des c2 |
}

bass = \relative {
  \autoBeamOff
  aes,4 8. 16 8 8 c c | des8 8 8 8 aes2 | ees'8 8 8 8
  ees8 8 8 des | c4 bes8 aes ees'2 | aes8 8 8 8 aes,8 8 c c |
  des8 8 8 8 aes2 | des8 8 c ees aes aes c, d | ees4 4 aes,2 |
  aes'4 4 aes, aes | des8 8 8 8 aes4 4 | ees'8 8 4 8 8 4 | 8 8 8 8 2 |
  aes4 4 aes, aes | des8 8 8 8 aes4 4 | des8 8 c ees aes aes c, des | ees4 4 aes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Fol -- low! fol -- low! I would fol -- low Je -- sus!
  An -- y -- where, ev -- 'ry -- where,
  I would fol -- low on!
  Fol -- low! fol -- low! I would fol -- low Je -- sus!
  Ev -- 'ry -- where He leads me I would fol -- low on!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Down in the val -- ley with my Sa -- viour I would go,
  Where the flowers are bloom -- ing and the sweet wa -- ters flow;
  Ev -- 'ry -- where He leads me I would fol -- low, fol -- low on,
  Walk -- ing in His foot -- steps till the crown be won.
  
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Down in the val -- ley with my Sa -- viour I would go,
  Where the storms are sweep -- ing amd the dark wa -- ters flow;
  With His hand to lead me I will ne -- ver, ne -- ver fear:
  Dan -- gers  can -- not fright me if my Lord is near.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Down in the val -- ley, or up -- on the moun -- tain steep,
  Close be -- side my Sa -- viour would my soul ev -- er keep;
  He will lead me safe -- ly, in the path that He has trod,
  Up to where they gath -- er on the hills of God.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Down " "in " "the " val "ley " "with " "my " Sa "viour " "I " "would " "go, "
  "\nWhere " "the " "flowers " "are " bloom "ing " "and " "the " "sweet " wa "ters " "flow; "
  "\nEv" 'ry "where " "He " "leads " "me " "I " "would " fol "low, " fol "low " "on, "
  "\nWalk" "ing " "in " "His " foot "steps " "till " "the " "crown " "be " "won. "
  "\nFol" "low! " fol "low! " "I " "would " fol "low " Je "sus! "
  "\nAn" y "where, " ev 'ry "where, "
  "\nI " "would " fol "low " "on! "
  "\nFol" "low! " fol "low! " "I " "would " fol "low " Je "sus! "
  "\nEv" 'ry "where " "He " "leads " "me " "I " "would " fol "low " "on!\n"

  \set stanza = "2."
  "\nDown " "in " "the " val "ley " "with " "my " Sa "viour " "I " "would " "go, "
  "\nWhere " "the " "storms " "are " sweep "ing " "amd " "the " "dark " wa "ters " "flow; "
  "\nWith " "His " "hand " "to " "lead " "me " "I " "will " ne "ver, " ne "ver " "fear: "
  "\nDan" "gers "  can "not " "fright " "me " "if " "my " "Lord " "is " "near. "
  "\nFol" "low! " fol "low! " "I " "would " fol "low " Je "sus! "
  "\nAn" y "where, " ev 'ry "where, "
  "\nI " "would " fol "low " "on! "
  "\nFol" "low! " fol "low! " "I " "would " fol "low " Je "sus! "
  "\nEv" 'ry "where " "He " "leads " "me " "I " "would " fol "low " "on!\n"

  \set stanza = "3."
  "\nDown " "in " "the " val "ley, " "or " up "on " "the " moun "tain " "steep, "
  "\nClose " be "side " "my " Sa "viour " "would " "my " "soul " ev "er " "keep; "
  "\nHe " "will " "lead " "me " safe "ly, " "in " "the " "path " "that " "He " "has " "trod, "
  "\nUp " "to " "where " "they " gath "er " "on " "the " "hills " "of " "God. "
  "\nFol" "low! " fol "low! " "I " "would " fol "low " Je "sus! "
  "\nAn" y "where, " ev 'ry "where, "
  "\nI " "would " fol "low " "on! "
  "\nFol" "low! " fol "low! " "I " "would " fol "low " Je "sus! "
  "\nEv" 'ry "where " "He " "leads " "me " "I " "would " fol "low " "on! "
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
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
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
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
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
