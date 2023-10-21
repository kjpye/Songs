\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Child of God, Wait Patiently!"
  subtitle    = "Sankey No. 712"
  subsubtitle = "Sankey 880 No. 453?"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Alice Monteith."
  meter       = \markup\smallCaps "D.C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
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
  c''4 | 4. bes8 a4 g | f4. c8 4 bes' | a4 g d e | f2. \bar "|" \break
  c'4 | 4. bes8 a4 g | f4. g16[a] c,4 bes' | a g d e | f2. \bar "|" \break
  a4 | 4. g8 4 c | 4. b8 4 e | e d a b | c2. \bar "|" \break
  c4 | 4. bes8 a4 g | f4. g16[a] c,4 bes' | a g d e | f2.
}

alto = \relative {
  \autoBeamOff
  f'4 | 4. 8 4 e | f4. a,8 4 c4 | 4 d bes c | 2.
  f4 | 4. 8 4 e | f c c c | c d bes c | 2.
  f4 | 4. e8 4 g | f4. 8 4 4 | 4 4 4 4 | e2.
  e4 | f4. 8 4 c | c c c c | c d bes c | 2.
}

tenor = \relative {
  \autoBeamOff
  a4 | 4. d8 c4 bes | a4. f8 4 g | f4 g g bes | a2.
  a4 | 4. d8 c4 c | c a g e | f g g bes | a2.
  c4 | 4. 8 4 4 | d4. 8 4 b | b b c d | c2.
  bes4 | a4. d8 c4 c | c a g e | d f f bes | a2.
}

bass = \relative {
  \autoBeamOff
  f4 | 4. 8 4 4 | 4. 8 4 e | f bes, c c | f2.
  f4 | 4. 8 4 bes | a f e c | f bes, c c | f2.
  f4 | c4. 8 4 e | g4. 8 4 4 | 4 4 4 4 | c,2.
  c4 | f4. 8 4 bes | a f e c | f bes, c c | f,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  O child of God, wait pa -- tient -- ly,
  When dark thy path may be:
  And let thy faith lean trust -- ing -- ly
  On Him who cares for thee;
  And though the clouds hang drear -- i -- ly
  Up -- on the brow of night,
  Yet in the morn -- ing joy will come,
  And fill thy soul with light.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O child of God, He lov -- eth thee,
  And thou art all His own;
  With gen -- tle hand He lead -- eth thee—
  Thou dost not walk a -- lone;
  And though thou watch -- est wear -- i -- ly
  The long and storm -- y night,
  Yet in the morn -- ing joy will come,
  And fill thy soul with light.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O child of God, how peace -- ful -- ly
  He calms thy fears to rest;
  And draws thee up -- ward, ten -- der -- ly,
  Where dwell the pure and blest!
  And he who bend -- eth si -- lent -- ly
  A -- bove the gloom of night,
  Will take thee home, where end -- less joy
  Shall fill thy soul with light.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "child " "of " "God, " "wait " pa tient "ly, "
  "\nWhen " "dark " "thy " "path " "may " "be: "
  "\nAnd " "let " "thy " "faith " "lean " trust ing "ly "
  "\nOn " "Him " "who " "cares " "for " "thee; "
  "\nAnd " "though " "the " "clouds " "hang " drear i "ly "
  "\nUp" "on " "the " "brow " "of " "night, "
  "\nYet " "in " "the " morn "ing " "joy " "will " "come, "
  "\nAnd " "fill " "thy " "soul " "with " "light.\n"

  \set stanza = "2."
  "\nO " "child " "of " "God, " "He " lov "eth " "thee, "
  "\nAnd " "thou " "art " "all " "His " "own; "
  "\nWith " gen "tle " "hand " "He " lead "eth " "thee— "
  "\nThou " "dost " "not " "walk " a "lone; "
  "\nAnd " "though " "thou " watch "est " wear i "ly "
  "\nThe " "long " "and " storm "y " "night, "
  "\nYet " "in " "the " morn "ing " "joy " "will " "come, "
  "\nAnd " "fill " "thy " "soul " "with " "light.\n"

  \set stanza = "3."
  "\nO " "child " "of " "God, " "how " peace ful "ly "
  "\nHe " "calms " "thy " "fears " "to " "rest; "
  "\nAnd " "draws " "thee " up "ward, " ten der "ly, "
  "\nWhere " "dwell " "the " "pure " "and " "blest! "
  "\nAnd " "he " "who " bend "eth " si lent "ly "
  "\nA" "bove " "the " "gloom " "of " "night, "
  "\nWill " "take " "thee " "home, " "where " end "less " "joy "
  "\nShall " "fill " "thy " "soul " "with " "light. "
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
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidi
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

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \alto
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
            \new NullVoice = "aligner" { \repeat unfold \verses \alto }
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
