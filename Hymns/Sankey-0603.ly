\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I am Thine Own, O Christ!"
  subtitle    = "Sankey No. 603"
  subsubtitle = "C. C. No. 219"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "A. A. Wright"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. H. Bradley."
%  meter       = \markup\smallCaps "meter"
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
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo \markup\italic "Slowly and tenderly." 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'4^\p | a'4. g8 f g | f2 a4 | c4. a8 d g, | g2 \bar "|" \break
  c,4 | a'4. g8 f g | f2 a4 | c2 g8[a] | f2
}

alto = \relative {
  \autoBeamOff
  c'4\omit\p | 4. d8 c c | 2 f4 | 4. 8 8 8 | e2
  c4 | 4. d8 c e | f2 4 | 2 e4 | f2
}

tenor = \relative {
  \autoBeamOff
  a4\omit\p | c4. bes8 a bes | a2 c4 | a4. c8 bes d | c2
  g4 | f4. bes8 a bes | a2 4 | 2 bes8[c] | a2
}

bass = \relative {
  \autoBeamOff
  f4\omit\p | 4. bes,8 c c | f2 4 | 4. 8 bes, b | c2
  e4 | f4. bes,8 c c | d2 4 | c2 4 | f2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  I am Thine own, O Christ,
  Hence -- forth en -- tire -- ly Thine;
  And life from this glad hour,
  New life, is mine.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  No earth -- ly joy can lure
  My qui -- et soul from Thee;
  This deep de -- light, so pure,
  is heaven to me.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  My joy -- ful song of praise
  In sweet con -- tent I sing:
  To Thee the note I raise,
  My King! my King!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I can -- not tell the art
  By which such bliss is given:
  I know Thou hast my heart,
  And I have heaven.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  O peace— O ho -- ly rest,
  O balm -- y breath of love!
  O heart, di -- vi -- nest, best—
  Thy depth I prove!
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  I ask this gift of Thee—
  A life all li -- ly- fair,
  And frag -- rant as the place
  Where ser -- aphs are.
}
  
wordsMidi = \lyricmode {
  "I " "am " "Thine " "own, " "O " "Christ, "
  "\nHence" "forth " en tire "ly " "Thine; "
  "\nAnd " "life " "from " "this " "glad " "hour, "
  "\nNew " "life, " "is " "mine.\n"

  \set stanza = "2."
  "\nNo " earth "ly " "joy " "can " "lure "
  "\nMy " qui "et " "soul " "from " "Thee; "
  "\nThis " "deep " de "light, " "so " "pure, "
  "\nis " "heaven " "to " "me.\n"

  \set stanza = "3."
  "\nMy " joy "ful " "song " "of " "praise "
  "\nIn " "sweet " con "tent " "I " "sing: "
  "\nTo " "Thee " "the " "note " "I " "raise, "
  "\nMy " "King! " "my " "King!\n"

  \set stanza = "4."
  "\nI " can "not " "tell " "the " "art "
  "\nBy " "which " "such " "bliss " "is " "given: "
  "\nI " "know " "Thou " "hast " "my " "heart, "
  "\nAnd " "I " "have " "heaven.\n"

  \set stanza = "5."
  "\nO " "peace— " "O " ho "ly " "rest, "
  "\nO " balm "y " "breath " "of " "love! "
  "\nO " "heart, " di vi "nest, " "best— "
  "\nThy " "depth " "I " "prove!\n"

  \set stanza = "6."
  "\nI " "ask " "this " "gift " "of " "Thee— "
  "\nA " "life " "all " li ly "fair, "
  "\nAnd " frag "rant " "as " "the " "place "
  "\nWhere " ser "aphs " "are. "
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsSix   \chorus
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
