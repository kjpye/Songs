\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He Leadeth me!"
  subtitle    = "Sankey No. 542"
  subsubtitle = "Sankey 880 No. 95"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. B. Bradbury."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. H. Gilmore."
  meter       = \markup\smallCaps "L. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 17)

global = {
  \key d \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4\omit\mf | fis4.^\> e8\! d4 a' | b4 g g b | a4. fis8 4 e8[d] | fis4 4 e \bar "|" \break
  a4 | fis4. e8 d4 a' | b g d'\fermata cis8[b] | a4 fis4 8[e] d[e] | fis4.^\> e8\! d4 \bar "||" \break
  a'4^\f^\markup\smallCaps Refrain. | 4 d cis e | d c8[b] a4 b | a fis4 8[e] d[e] | fis4 4 e\fermata \bar "|" \break
  a4 | 4 d cis e | d cis8[b] a4\fermata b | a fis4 8[e] d[e] | fis4.^\> e8\! d4\fermata
}

alto = \relative {
  \autoBeamOff
  fis'4\omit\mf | d4.^\> a8\! 4 d | 4 4 4 g | fis4. d8 4 cis8[d] | 4 4 cis
  cis4 | d4. a8 4 d | d g g\fermata g | fis d d8[cis] b[cis] | d4.^\> cis8\! d4
  fis4 | 4 4 e a | a4 8[g] fis4 g | fis d d8[cis] b[cis] | d4 4 cis\fermata
  cis4 | d d e a | a a8[g] f4\fermata g | fis d d8[cis] b[cis] | d4.^\> cis8\! d4\fermata
}

tenor = \relative {
  \autoBeamOff
  a4\omit\mf | 4.\omit\> g8\! fis4 4 | g b b d | 4. a8 4 g8[fis] | a4 4 4
  a4 | 4. g8 fis4 4 | g b b\fermata d | d a b fis | a4. g8 fis4
  a4\omit\f | d a a cis | d d d d | d a b fis | a a a\fermata
  g4 | fis a a cis | d d d\fermata d | d a b fis | a4.\omit\> g8\! fis4\fermata
}

bass = \relative {
  \autoBeamOff
  d4\omit\mf | 4.\omit\> 8\! 4 4 | g4 4 4 4 | d4. 8 4 4 | a4 4 4
  a4 | d4. 8 4 4 | g4 4 4\fermata 4 | d4 4 b b | a4. 8 d4
  d4\omit\f | d fis a g | fis g d d | d d b b | a4 4 4\fermata
  a4 | d fis a g | fis g d\fermata d | d d b b | a4.\omit\< 8\! d4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  He lead -- eth me! He lead -- eth me!
  By His own hand He lead -- eth me!
  His faith -- ful follow -- er I would be,
  For by His hand He lead -- eth me!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  He lead -- eth me! Oh, bles -- sed thought,
  Oh words with heav'n -- ly com -- fort fraught!
  What -- e'er I do, wher -- e'er I be,
  Still "'t is" God's hand that lead -- eth me.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Dome -- times 'mid scenes of deep -- est gloom,
  Some -- times where e -- den's bow -- ers bloom,
  By wa -- ters calm, o'er trou -- bled sea---
  Still "'t is" God's hand that lead -- eth me.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Lord, I would clasp Thy hand in mine,
  Nor ev -- er mur -- mur nore re -- pinem
  Con -- tent, what -- ev -- er lot I see,
  Since "'t is" my God that lead -- eth me,
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And when my task on earth is done,
  When, by Thy grace, the vic -- tory's won,
  E'en death's cold wave I will not flee
  Since Thou thro' Jor -- dan lead -- est me.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "He " lead "eth " "me! " "Oh, " bles "sed " "thought, "
  "\nOh " "words " "with " heav'n "ly " com "fort " "fraught! "
  "\nWhat" "e'er " "I " "do, " wher "e'er " "I " "be, "
  "\nStill " "'t is " "God's " "hand " "that " lead "eth " "me. "
  "\nHe " lead "eth " "me! " "He " lead "eth " "me! "
  "\nBy " "His " "own " "hand " "He " lead "eth " "me! "
  "\nHis " faith "ful " follow "er " "I " "would " "be, "
  "\nFor " "by " "His " "hand " "He " lead "eth " "me!\n"

  \set stanza = "2."
  "\nDome" "times " "'mid " "scenes " "of " deep "est " "gloom, "
  "\nSome" "times " "where " e "den's " bow "ers " "bloom, "
  "\nBy " wa "ters " "calm, " "o'er " trou "bled " sea-
  "\nStill " "'t is " "God's " "hand " "that " lead "eth " "me. "
  "\nHe " lead "eth " "me! " "He " lead "eth " "me! "
  "\nBy " "His " "own " "hand " "He " lead "eth " "me! "
  "\nHis " faith "ful " follow "er " "I " "would " "be, "
  "\nFor " "by " "His " "hand " "He " lead "eth " "me!\n"

  \set stanza = "3."
  "\nLord, " "I " "would " "clasp " "Thy " "hand " "in " "mine, "
  "\nNor " ev "er " mur "mur " "nore " re "pinem "
  "\nCon" "tent, " what ev "er " "lot " "I " "see, "
  "\nSince " "'t is " "my " "God " "that " lead "eth " "me, "
  "\nHe " lead "eth " "me! " "He " lead "eth " "me! "
  "\nBy " "His " "own " "hand " "He " lead "eth " "me! "
  "\nHis " faith "ful " follow "er " "I " "would " "be, "
  "\nFor " "by " "His " "hand " "He " lead "eth " "me!\n"

  \set stanza = "4."
  "\nAnd " "when " "my " "task " "on " "earth " "is " "done, "
  "\nWhen, " "by " "Thy " "grace, " "the " vic "tory's " "won, "
  "\nE'en " "death's " "cold " "wave " "I " "will " "not " "flee "
  "\nSince " "Thou " "thro' " Jor "dan " lead "est " "me. "
  "\nHe " lead "eth " "me! " "He " lead "eth " "me! "
  "\nBy " "His " "own " "hand " "He " lead "eth " "me! "
  "\nHis " faith "ful " follow "er " "I " "would " "be, "
  "\nFor " "by " "His " "hand " "He " lead "eth " "me! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
                                              \wordsFour  \chorus
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
