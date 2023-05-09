\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Christian, Walk Carefully!"
  subtitle    = "Sankey No. 617"
  subsubtitle = "Sankey 880 No. 591"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*5
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*6
  \textMark \markup { \box \bold "D" } s2.*4
  \textMark \markup { \box \bold "E" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 g b | 4. a8 g4 | a4 g fis | g2. | d4 g b |
  d4. c8 b4 | b a g | a2. | c4 b a | b4. a8 g4 |
  a4 g fis | g2. | e4 fis g | d4. g8 b4 | a g fis | g2. |
  \section \sectionLabel \markup\smallCaps Refrain.
  d'4 b c | d4. c8 b4 | c a b | c4. b8 a4 |
  d4 b c | d4. c8 b4 | a g fis | g2. |
}

alto = \relative {
  \autoBeamOff
  b4 4 d | 4. 8 4 | e4 d d | d2. | 4 4 g |
  g4. fis8 g4 | d d cis | d2. | 4 4 4 | 4. c8 b4 |
  d4 d c | b2. | c4 d e | d4. 8 4 | e d c | b2. \section |
  b'4 g a | b4. a8 g4 | a fis g | a4. g8 fis4 |
  b4 g a | b4. a8 g4 | e d c | b2. |
}

tenor = \relative {
  \autoBeamOff
  g4 4 4 | 4. fis8 g4 | c4 b a | b2. | 4 4 d |
  d4. 8 4 | 4 a a | fis2. | a4 g fis | g4. 8 4 |
  c4 b a | g2. | 4 4 4 | 4. b8 d4 | c b a | g2. \section |
  d'4 d d | 4. 8 4 | 4 4 4 | 4. 8 4 |
  d4 4 4 | 4. 8 4 | c b a | g2. |
}

bass = \relative {
  \autoBeamOff
  g,4 4 4 | 4. a8 b4 | c d d | g2. | 4 4 4 |
  b4. a8 g4 | 4 fis e | d2. | 4 4 4 | g,4. 8 4 |
  d'4 4 4 | e2. | c4 4 4 | b4. g8 4 | c d d | g,2. \section |
  g'4 4 4 | 4. 8 4 | d d d | 4. 8 4 |
  g4 4 4 | 4. 8 4 | c, d d | g,2. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Chris -- tian, walk \markup\italic care -- \markup\italic ful -- \markup\italic ly: dan -- ger is near!
  On in thy jour -- ney with trem -- bling and fear;
  Snares from with -- out, and temp -- ta -- tions with -- in,
  Seek to en -- tice thee once more in -- to sin.
  Chris -- tian, walk \markup\italic care -- \markup\italic ful -- \markup\italic ly,
  Chris -- tian, walk \markup\italic care -- \markup\italic ful -- \markup\italic ly,
  Chris -- tian, walk \markup\italic care -- \markup\italic ful -- \markup\italic ly,
  dan -- ger is near!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Chris -- tian walk \markup\italic cheer -- \markup\italic ful -- \markup\italic ly thro' the fierce storm,
  Dark tho' the sky with its threats of a -- larm;
  Soon will the clouds and the tem -- pest be o'er,
  Then with thy Sa -- viour thou rest ev -- er -- more.
  Chris -- tian walk \markup\italic cheer -- \markup\italic ful -- \markup\italic ly,
  Chris -- tian walk \markup\italic cheer -- \markup\italic ful -- \markup\italic ly,
  Chris -- tian walk \markup\italic cheer -- \markup\italic ful -- \markup\italic ly
  thro' the fierce storm,
  
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Chris -- tian walk \markup\italic prayer -- \markup\italic ful -- \markup\italic ly; oft wilt thou fall,
  If thou for -- get on thy Sa -- viour to call;
  Safe thou shalt walk thro' each tri -- al and care,
  If thou art clad in the ar -- mour of prayer.
  Chris -- tian walk \markup\italic prayer -- \markup\italic ful -- \markup\italic ly,
  Chris -- tian walk \markup\italic prayer -- \markup\italic ful -- \markup\italic ly,
  Chris -- tian walk \markup\italic prayer -- \markup\italic ful -- \markup\italic ly—
  fear lest thou fall.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Chris -- tian walk \markup\italic hope -- \markup\italic ful -- \markup\italic ly; sor -- row and pain
  Cease when the ha -- ven of rest thou shalt gain;
  Then from the lips of the Judge they re -- ward:
  "\"En" -- ter thou in -- to the joy of thy "Lord.\""
  Chris -- tian walk \markup\italic hope -- \markup\italic ful -- \markup\italic ly,
  Chris -- tian walk \markup\italic hope -- \markup\italic ful -- \markup\italic ly,
  Chris -- tian walk \markup\italic hope -- \markup\italic ful -- \markup\italic ly,
  rest thou shalt gain.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Chris" "tian, " "walk " care ful "ly: " dan "ger " "is " "near! "
  "\nOn " "in " "thy " jour "ney " "with " trem "bling " "and " "fear; "
  "\nSnares " "from " with "out, " "and " temp ta "tions " with "in, "
  "\nSeek " "to " en "tice " "thee " "once " "more " in "to " "sin. "
  "\nChris" "tian, " "walk " care ful "ly, "
  "\nChris" "tian, " "walk " care ful "ly, "
  "\nChris" "tian, " "walk " care ful "ly, "
  "\ndan" "ger " "is " "near!\n"

  \set stanza = "2."
  "\nChris" "tian " "walk " cheer ful "ly " "thro' " "the " "fierce " "storm, "
  "\nDark " "tho' " "the " "sky " "with " "its " "threats " "of " a "larm; "
  "\nSoon " "will " "the " "clouds " "and " "the " tem "pest " "be " "o'er, "
  "\nThen " "with " "thy " Sa "viour " "thou " "rest " ev er "more. "
  "\nChris" "tian " "walk " cheer ful "ly, "
  "\nChris" "tian " "walk " cheer ful "ly, "
  "\nChris" "tian " "walk " cheer ful "ly "
  "\nthro' " "the " "fierce " "storm,\n"
  

  \set stanza = "3."
  "\nChris" "tian " "walk " prayer ful "ly; " "oft " "wilt " "thou " "fall, "
  "\nIf " "thou " for "get " "on " "thy " Sa "viour " "to " "call; "
  "\nSafe " "thou " "shalt " "walk " "thro' " "each " tri "al " "and " "care, "
  "\nIf " "thou " "art " "clad " "in " "the " ar "mour " "of " "prayer. "
  "\nChris" "tian " "walk " prayer ful "ly, "
  "\nChris" "tian " "walk " prayer ful "ly, "
  "\nChris" "tian " "walk " prayer ful "ly— "
  "\nfear " "lest " "thou " "fall.\n"

  \set stanza = "4."
  "\nChris" "tian " "walk " hope ful "ly; " sor "row " "and " "pain "
  "\nCease " "when " "the " ha "ven " "of " "rest " "thou " "shalt " "gain; "
  "\nThen " "from " "the " "lips " "of " "the " "Judge " "they " re "ward: "
  "\n\"En" "ter " "thou " in "to " "the " "joy " "of " "thy " "Lord.\" "
  "\nChris" "tian " "walk " hope ful "ly, "
  "\nChris" "tian " "walk " hope ful "ly, "
  "\nChris" "tian " "walk " hope ful "ly, "
  "\nrest " "thou " "shalt " "gain. "
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
