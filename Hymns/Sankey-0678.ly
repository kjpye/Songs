\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Song for Water Bright."
  subtitle    = "Sankey No. 678"
  subsubtitle = "C. C. No. 116"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Geo. Cooper."
%  meter       = \markup\smallCaps "meter"
  piece       = \markup\smallCaps "Temperance Hymn."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
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
  d'4 | 4 b' a g | g4. fis8 4 4 | 4 c' e, fis | e2 d4 \bar "|" \break
  d4 | d g b d | d c g4. a8 | b4 d, e fis | a2 g4
  \section \sectionLabel \markup\smallCaps Chorus \break
  b4 | d b e d | d4. c8 4 a | c a d c | 4. b8 4 \bar "|" \break
  d,4 | d g b d | d g, e'\fermata e | d g, c b | 4. a8 g4\fermata
}

alto = \relative {
  \autoBeamOff
  d'4 | 4 4 4 4 | 4. 8 4 4 | 4 4 c c | b2 4
  b4 | 4 d d f | e e e4. 8 | d4 d c c | fis2 g4 \section
  g4 | g g g g | fis4. 8 4 4 | 4 4 4 a | 4. g8 4
  d4 | d d g f | f f e\fermata g | g g fis g | 4. d8 4\fermata
}

tenor = \relative {
  \autoBeamOff
  b4 | b d c b | b4. a8 4 4 | 4 4 4 fis | g2 4
  g4 | g b g g | 4 4 4. 8 | 4 b a a | c2 b4
  d4 | b d c b | a4. d8 4 4 | a4 c a d | 4. 8 4
  b4 | b b d b | g g g\fermata a | b d d d | 4. c8 b4\fermata
}

bass = \relative {
  \autoBeamOff
  g4 | g g g g | d4. 8 4 4 | d d d d | g,2 4
  g'4 | g g g b, | 4 4 4. 8 | d4 d d d | d2 g4 \section
  g4 | g g g g | d4. 8 4 4 | d d d d | fis4. g8 4
  g4 | g g g g | b,4 4 c\fermata cis | d b a g | d'4. 8 g,4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  A song, a song for wa -- ter fair,
  As pure and free as moun -- tain air!
  A song, a song for wa -- ter fair,
  As pure and free as moun -- tain air!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  A song, a song for wa -- ter bright,
  In love and beau -- ty flow -- ing!
  It sings its way in joy and might,
  The gift of heaven be stow -- ing,
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  There's balm in ev -- 'ry spark -- ling drop,
  In ev -- 'ry wave there's plea -- sure;
  In dia -- mond spray it leaps a -- way,
  A love -- ly boon and trea -- sure.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  It nerves the hand to deeds of might;
  It wakes the heart to glad -- ness;
  It breathes a psalm of pure de -- light,
  And charms us all from sad -- ness.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  From ev -- 'ry vale and glade and hill
  It speaks of na -- ture's kind -- ness!
  Oh, may we heed the les -- son still,
  Nor shun it in our blind -- ness!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A " "song, " "a " "song " "for " wa "ter " "bright, "
  "\nIn " "love " "and " beau "ty " flow "ing! "
  "\nIt " "sings " "its " "way " "in " "joy " "and " "might, "
  "\nThe " "gift " "of " "heaven " "be " stow "ing, "
  "\nA " "song, " "a " "song " "for " wa "ter " "fair, "
  "\nAs " "pure " "and " "free " "as " moun "tain " "air! "
  "\nA " "song, " "a " "song " "for " wa "ter " "fair, "
  "\nAs " "pure " "and " "free " "as " moun "tain " "air!\n"

  \set stanza = "2."
  "\nThere's " "balm " "in " ev "'ry " spark "ling " "drop, "
  "\nIn " ev "'ry " "wave " "there's " plea "sure; "
  "\nIn " dia "mond " "spray " "it " "leaps " a "way, "
  "\nA " love "ly " "boon " "and " trea "sure. "
  "\nA " "song, " "a " "song " "for " wa "ter " "fair, "
  "\nAs " "pure " "and " "free " "as " moun "tain " "air! "
  "\nA " "song, " "a " "song " "for " wa "ter " "fair, "
  "\nAs " "pure " "and " "free " "as " moun "tain " "air!\n"

  \set stanza = "3."
  "\nIt " "nerves " "the " "hand " "to " "deeds " "of " "might; "
  "\nIt " "wakes " "the " "heart " "to " glad "ness; "
  "\nIt " "breathes " "a " "psalm " "of " "pure " de "light, "
  "\nAnd " "charms " "us " "all " "from " sad "ness. "
  "\nA " "song, " "a " "song " "for " wa "ter " "fair, "
  "\nAs " "pure " "and " "free " "as " moun "tain " "air! "
  "\nA " "song, " "a " "song " "for " wa "ter " "fair, "
  "\nAs " "pure " "and " "free " "as " moun "tain " "air!\n"

  \set stanza = "4."
  "\nFrom " ev "'ry " "vale " "and " "glade " "and " "hill "
  "\nIt " "speaks " "of " na "ture's " kind "ness! "
  "\nOh, " "may " "we " "heed " "the " les "son " "still, "
  "\nNor " "shun " "it " "in " "our " blind "ness! "
  "\nA " "song, " "a " "song " "for " wa "ter " "fair, "
  "\nAs " "pure " "and " "free " "as " moun "tain " "air! "
  "\nA " "song, " "a " "song " "for " wa "ter " "fair, "
  "\nAs " "pure " "and " "free " "as " moun "tain " "air! "
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

#(set-global-staff-size 19)

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
