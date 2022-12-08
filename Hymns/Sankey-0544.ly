\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Where my Saviour Leads."
  subtitle    = "Sankey No. 544"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{Arr. \smallCaps "Ira D. Sankey."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2 s2
  \textMark \markup { \box \bold "B" } s2 s1*2 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3
  \textMark \markup { \box \bold "D" }    s1*3
  \textMark \markup { \box \bold "E" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8 g | b4 4 c4. b8 | b a4.~4 d,8 fis | a4 4 \bar "|" \break
  b4. a8 | a8 g4.~4 d8 g | b4 4 4. d8 | d c4.~4 \bar "|" \break
  g8 a | b4 d, a'4. g8 | 2. \bar "||" b8^\markup\smallCaps Chorus.. c | d4 4 e4. d8 |
  d8 c4.~4 a8 b | c4 4 d4. c8 | 8 b4.~4 d,8 g |
  b4 4 4. d8 | d c4.~4 g8 a | b4 d, a'4. g8 | 2.
}

alto = \relative {
  \autoBeamOff
  d'8 8 | g4 4 4. 8 | 8 fis4.~4 d8 8 | fis4 4
  fis4. d8 | fis g4.~4 d8 8 | g4 4 4. f8 | e8 4.~4
  b8 cis | d4 4 fis4. g8 | 2. d8 8 | g4 4 4. 8 |
  fis8 4.~4 8 g | fis4 4 4. a8 | 8 g4.~4 d8 8 |
  g4 4 4. f8 | e8 4.~4 b8 cis | d4 4 fis4. g8 | 2.
}

tenor = \relative {
  \autoBeamOff
  b8 8 | d4 4 e4. d8 | 8 4.~4 fis,8 a | c4 4
  d4. c8 | 8 b4.~4 8 8 | d4 4 4. g,8 | 8 4.~4
  g8 8 | 4 b c4. b8 |2. g8 a | b4 4 c4. b8 |
  a8 4.~4 c8 b | a4 4 4. d8 | 8 4.~4 b8 8 |
  d4 4 4. g,8 | 8 4.~4 8 8 | 4 b c4. b8 | 2.
}

bass = \relative {
  \autoBeamOff
  g8 8 | 4 4 4. 8 | d8 4.~4 8 8 | 4 4
  d4. 8 | 8 g4.~4 8 8 | 4 4 4. b,8 | c8 4.~4
  e8 ees | d4 4 4. g,8 | 2. g'8 8 | 4 4 4. 8 |
  d8 4.~4 8 8 | 4 4 4. f8 | g8 4.~4 8 8 |
  g4 4 4. b,8 | c8 4.~4 e8 ees | d4 4 4. g,8 | 2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I'll go with Him all the way.
  Where my Sa -- viour leads I'll fol -- low,
  Where my Sa -- viour leads I'll fol -- low,
  Where my Sa -- viour leads I'll fol -- low,
  I will fol -- low all the way.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Where my Sa -- viour's hand is guid -- ing,
  And for all my wants pro -- vi -- ding—
  In His pre -- cious love con -- fi -- ding,
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Though my path be dark and drea -- ry,
  And my steps be faint and wea -- ry—
  With His lov -- ing voice to cheer me,
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Though the ills of earth may wound me,
  And the storms of life con -- found me—
  With His lov -- ing arms a -- round me,
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When the ties of earth shall sev -- er,
  And He calls me home for ev -- er—
  To the loved  be -- yond the riv -- er,
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Where " "my " Sa "viour's " "hand " "is " guid "ing, "
  "\nAnd " "for " "all " "my " "wants " pro vi "ding— "
  "\nIn " "His " pre "cious " "love " con fi "ding, "
  "\nI'll " "go " "with " "Him " "all " "the " "way. "
  "\nWhere " "my " Sa "viour " "leads " "I'll " fol "low, "
  "\nWhere " "my " Sa "viour " "leads " "I'll " fol "low, "
  "\nWhere " "my " Sa "viour " "leads " "I'll " fol "low, "
  "\nI " "will " fol "low " "all " "the " "way.\n"

  \set stanza = "2."
  "\nThough " "my " "path " "be " "dark " "and " drea "ry, "
  "\nAnd " "my " "steps " "be " "faint " "and " wea "ry— "
  "\nWith " "His " lov "ing " "voice " "to " "cheer " "me, "
  "\nI'll " "go " "with " "Him " "all " "the " "way. "
  "\nWhere " "my " Sa "viour " "leads " "I'll " fol "low, "
  "\nWhere " "my " Sa "viour " "leads " "I'll " fol "low, "
  "\nWhere " "my " Sa "viour " "leads " "I'll " fol "low, "
  "\nI " "will " fol "low " "all " "the " "way.\n"

  \set stanza = "3."
  "\nThough " "the " "ills " "of " "earth " "may " "wound " "me, "
  "\nAnd " "the " "storms " "of " "life " con "found " "me— "
  "\nWith " "His " lov "ing " "arms " a "round " "me, "
  "\nI'll " "go " "with " "Him " "all " "the " "way. "
  "\nWhere " "my " Sa "viour " "leads " "I'll " fol "low, "
  "\nWhere " "my " Sa "viour " "leads " "I'll " fol "low, "
  "\nWhere " "my " Sa "viour " "leads " "I'll " fol "low, "
  "\nI " "will " fol "low " "all " "the " "way.\n"

  \set stanza = "4."
  "\nWhen " "the " "ties " "of " "earth " "shall " sev "er, "
  "\nAnd " "He " "calls " "me " "home " "for " ev "er— "
  "\nTo " "the " "loved "  be "yond " "the " riv "er, "
  "\nI'll " "go " "with " "Him " "all " "the " "way. "
  "\nWhere " "my " Sa "viour " "leads " "I'll " fol "low, "
  "\nWhere " "my " Sa "viour " "leads " "I'll " fol "low, "
  "\nWhere " "my " Sa "viour " "leads " "I'll " fol "low, "
  "\nI " "will " fol "low " "all " "the " "way. "
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
