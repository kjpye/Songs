\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Remember Me."
  subtitle    = "Sankey No. 630"
  subsubtitle = "Sankey 880 No. 86"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Asa Hull."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts, D. D."
  meter       = \markup\smallCaps "C. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2 \break
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \break \section \sectionLabel \markup\smallCaps Chorus.
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2 \break
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    a'4 | 8 g8 4 bes | 8 a8 4 c | 4. a8 f a | g2 \bar "|"
    a4 | bes8 c d4. 8 | 8 c8 4 4 | 4. 8 bes g | f2
  }
}

alto = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    f'4 | 8 e8 4 g | 8 f8 4 a | 4. f8 8 8 | e2
    f4 | 8 8 4. 8 | 8 8 4 4 | e4. 8 8 8 | f2
  }
}

tenor = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    c'4 | 8 8 4 4 | 8 8 4 f | 4. c8 8 8 | 2
    c4 | bes8 a bes4. 8 | 8 a8 4 4 | g4. 8 8 bes | a2 \section
  }
}

bass = \relative {
  \autoBeamOff
  \repeat unfold 2 {
    f4 | c8 8 4 4 | f8 8 4 4 | 4. 8 a f | c2
    f4 | d8 c bes4. 8 | f'8 8 4 4 | c4. 8 8 8 | f2
  }
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Help me, dear Sa -- viour, Thee to own
  And ev -- er faith -- ful be;
  And when Thou sit -- test on Thy throne,
  O Lord, re -- mem -- ber me.
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- las! and did my Sa -- viour bleed?
  And did my Sov -- 'reign die?
  Would He de -- vote that sa -- cred head
  For such a worm as I?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Was it for crimes that I had done
  He groaned up -- on the tree?
  A -- maz -- ing pi -- ty! grace un -- known!
  And love be -- yond de -- gree.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Well might the sun in dark -- ness hide,
  And shut his glo -- ries in,
  When Christ, the migh -- ty Ma -- ker died,
  For man, the crea -- ture's sin.
}

wordsFour = \lyricmode {
  \set stanza = "4."
  Thus might I hide my blush -- ing face
  Whilst His dear cross ap -- pears,
  Dis -- solve my heart in thank -- ful -- ness,
  And melt mine eyes to tears.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  But drops of grief can ne'er re -- pay
  The debt of love I owe;
  Here, Lord, I giev my -- self a -- way;
  'Tis all that I can do.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A" "las! " "and " "did " "my " Sa "viour " "bleed? "
  "\nAnd " "did " "my " Sov "'reign " "die? "
  "\nWould " "He " de "vote " "that " sa "cred " "head "
  "\nFor " "such " "a " "worm " "as " "I? "
  "\nHelp " "me, " "dear " Sa "viour, " "Thee " "to " "own "
  "\nAnd " ev "er " faith "ful " "be; "
  "\nAnd " "when " "Thou " sit "test " "on " "Thy " "throne, "
  "\nO " "Lord, " re mem "ber " "me.\n"

  \set stanza = "2."
  "\nWas " "it " "for " "crimes " "that " "I " "had " "done "
  "\nHe " "groaned " up "on " "the " "tree? "
  "\nA" maz "ing " pi "ty! " "grace " un "known! "
  "\nAnd " "love " be "yond " de "gree. "
  "\nHelp " "me, " "dear " Sa "viour, " "Thee " "to " "own "
  "\nAnd " ev "er " faith "ful " "be; "
  "\nAnd " "when " "Thou " sit "test " "on " "Thy " "throne, "
  "\nO " "Lord, " re mem "ber " "me.\n"

  \set stanza = "3."
  "\nWell " "might " "the " "sun " "in " dark "ness " "hide, "
  "\nAnd " "shut " "his " glo "ries " "in, "
  "\nWhen " "Christ, " "the " migh "ty " Ma "ker " "died, "
  "\nFor " "man, " "the " crea "ture's " "sin. "
  "\nHelp " "me, " "dear " Sa "viour, " "Thee " "to " "own "
  "\nAnd " ev "er " faith "ful " "be; "
  "\nAnd " "when " "Thou " sit "test " "on " "Thy " "throne, "
  "\nO " "Lord, " re mem "ber " "me.\n"

  \set stanza = "4."
  "\nThus " "might " "I " "hide " "my " blush "ing " "face "
  "\nWhilst " "His " "dear " "cross " ap "pears, "
  "\nDis" "solve " "my " "heart " "in " thank ful "ness, "
  "\nAnd " "melt " "mine " "eyes " "to " "tears. "
  "\nHelp " "me, " "dear " Sa "viour, " "Thee " "to " "own "
  "\nAnd " ev "er " faith "ful " "be; "
  "\nAnd " "when " "Thou " sit "test " "on " "Thy " "throne, "
  "\nO " "Lord, " re mem "ber " "me.\n"

  \set stanza = "5."
  "\nBut " "drops " "of " "grief " "can " "ne'er " re "pay "
  "\nThe " "debt " "of " "love " "I " "owe; "
  "\nHere, " "Lord, " "I " "giev " my "self " a "way; "
  "\n'Tis " "all " "that " "I " "can " "do. "
  "\nHelp " "me, " "dear " Sa "viour, " "Thee " "to " "own "
  "\nAnd " ev "er " faith "ful " "be; "
  "\nAnd " "when " "Thou " sit "test " "on " "Thy " "throne, "
  "\nO " "Lord, " re mem "ber " "me. "
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
