\version "2.25.0"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sow in the Morn thy Seed."
  subtitle    = "Sankey No. 759"
  subsubtitle = "Sankey 880 No. 667"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Gauntlett."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "James Montgomery."
  meter       = \markup\smallCaps "S.M."
  piece       = \markup\smallCaps "St. George."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4 | f a g f | e2. e'4 | d c c b | c2. \bar "|" \break
  g4 | a fis g b | d4. 8 c4 a | g e d e8[f] | e2.
}

alto = \relative {
  \autoBeamOff
  c'4 | c c c b | c2. g'4 | g e g g | e2.
  e4 | e d d g | 4. 8 4 c, | c c c b | c2.
}

tenor = \relative {
  \autoBeamOff
  g4 | a f g g | g2. c4 | b c d d | c2.
  b4 | c a b d | b4. 8 c4 c | g g g g | 2.
}

bass = \relative {
  \autoBeamOff
  c4 | f f e d | c2. c'4 | g a g g | c,2. |
  e4 | c d g g | f4. 8 e4 f | e c g g | c2.
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Sow in the morn thy seed,
  At eve hold not thine hand;
  To doubt and fear give thou no heed,
  Broad -- cast it o'er the land.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thou know'st not which may thrive,
  The late or ear -- ly sown;
  Grace keeps the cho -- sen germ a -- live,
  When and wher -- ev -- er strown.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  And du -- ly shall ap -- pear,
  In ver -- dure, beau -- ty, strength,
  The ten -- der blade, the stalk, the ear,
  And the full corn at length.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Thou canst not toil in vain;
  Cold, heat, and moist, and dry,
  Shall fos -- ter and ma -- ture the grain
  For gar -- ners in the sky.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Hence, when the glo -- rious end,
  The day of God, is come,
  The an -- gel -- rea -- pers shall des -- cend.
  And heaven cry, har -- vest- home!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sow " "in " "the " "morn " "thy " "seed, "
  "\nAt " "eve " "hold " "not " "thine " "hand; "
  "\nTo " "doubt " "and " "fear " "give " "thou " "no " "heed, "
  "\nBroad" "cast " "it " "o'er " "the " "land.\n"

  \set stanza = "2."
  "\nThou " "know'st " "not " "which " "may " "thrive, "
  "\nThe " "late " "or " ear "ly " "sown; "
  "\nGrace " "keeps " "the " cho "sen " "germ " a "live, "
  "\nWhen " "and " wher ev "er " "strown.\n"

  \set stanza = "3."
  "\nAnd " du "ly " "shall " ap "pear, "
  "\nIn " ver "dure, " beau "ty, " "strength, "
  "\nThe " ten "der " "blade, " "the " "stalk, " "the " "ear, "
  "\nAnd " "the " "full " "corn " "at " "length.\n"

  \set stanza = "4."
  "\nThou " "canst " "not " "toil " "in " "vain; "
  "\nCold, " "heat, " "and " "moist, " "and " "dry, "
  "\nShall " fos "ter " "and " ma "ture " "the " "grain "
  "\nFor " gar "ners " "in " "the " "sky.\n"

  \set stanza = "5."
  "\nHence, " "when " "the " glo "rious " "end, "
  "\nThe " "day " "of " "God, " "is " "come, "
  "\nThe " an gel rea "pers " "shall " des "cend. "
  "\nAnd " "heaven " "cry, " har vest- "home!"
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
