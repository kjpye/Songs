\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Take Time to be Holy."
  subtitle    = "Sankey No. 608"
  subsubtitle = "N. H. No. 30"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. D. Longstaff."
  meter       = \markup\smallCaps "6.5.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*4
  \textMark \markup { \box \bold "B" } s2.*4
  \textMark \markup { \box \bold "C" } s2.*4
  \textMark \markup { \box \bold "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4. 8 g a | bes4. a | f g8 f e | f4.~4. | \break
  a4. 8 g f | bes4. a | g4. 8 8 8 | 4.~g | \break
  bes4. 8 a g | a4. c | bes4. 8 a g | a4.~4. | \break
  c4. 8 bes a | d4. bes | a g8 f e | f4.~f |
}

alto = \relative {
  \autoBeamOff
  f'4. 8 8 8 | 4. 4. | 4. c8 c c | 4.~4. |
  f4. 8 8 8 | 4. 4. | e d8 e f | e4.~e |
  g4. 8 f e | f4. f | e4. 8 f e | f4.~f |
  f4. 8 e f | 4. 4. | 4. c8 c c | 4.~c |
}

tenor = \relative {
  \autoBeamOff
  c'4. 8 bes c | d4. c | a bes8 a g | a4.~a |
  c4. 8 bes c | d4. c | c b8 c d | c4.~c |
  c4. 8 8 8 | 4. a | g4. 8 c c | 4.~c |
  a4. c8 8 8 | bes4. d | c bes8 a g | a4.~a |
}

bass = \relative {
  \autoBeamOff
  f4. 8 8 8 | 4. 4. | c4. 8 8 8 | f4.~f |
  f4. 8 8 8 | 4. 4. | g4. 8 8 8 | c,4.~c |
  c4. 8 8 8 | f4. 4. | c4. 8 8 8 | f4.~4. |
  f4. a8 g f | bes4. bes, | c4. 8 8 8 | f4.~f |
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
  Take time to be ho -- ly,
  Speak oft with thy Lord;
  A -- bide in Him al -- ways.
  And feed on His Word.
  Make friends of God's chil -- dren'
  Help those who are weak;
  For -- get -- ting in no -- thing
  His bles -- sing to seek.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Take time to be ho -- ly,
  The world rush -- es on;
  Spend much time in se -- cret
  With Je -- sus a -- lone—
  By look -- ing to Je -- sus,
  Like Him thou shalt be;
  Thy friends in thy con -- duct,
  His like -- ness shall see.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Take time to be ho -- ly,
  Ket Him be thy Guide;
  And run not be -- fore Him,
  What -- ev -- er be -- tide;
  In joy or in sor -- row
  Still fol -- low thy Lord,
  And, look -- ing to Je -- sus,
  Still trust in His Word.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Take time to be ho -- ly,
  Be calm in thy soul;
  Each thought and each tem -- per
  Be -- neath His con -- trol:
  Thus led by His Spi -- rit
  To foun -- tains of love,
  Thou soon shalt be fit -- ted
  For ser -- vice a -- bove.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."

  "Take " "time " "to " "be " ho "ly, "
  "\nSpeak " "oft " "with " "thy " "Lord; "
  "\nA" "bide " "in " "Him " al "ways. "
  "\nAnd " "feed " "on " "His " "Word. "
  "\nMake " "friends " "of " "God's " chil "dren' "
  "\nHelp " "those " "who " "are " "weak; "
  "\nFor" get "ting " "in " no "thing "
  "\nHis " bles "sing " "to " "seek.\n"

  \set stanza = "2."
  "\nTake " "time " "to " "be " ho "ly, "
  "\nThe " "world " rush "es " "on; "
  "\nSpend " "much " "time " "in " se "cret "
  "\nWith " Je "sus " a "lone— "
  "\nBy " look "ing " "to " Je "sus, "
  "\nLike " "Him " "thou " "shalt " "be; "
  "\nThy " "friends " "in " "thy " con "duct, "
  "\nHis " like "ness " "shall " "see.\n"

  \set stanza = "3."
  "\nTake " "time " "to " "be " ho "ly, "
  "\nKet " "Him " "be " "thy " "Guide; "
  "\nAnd " "run " "not " be "fore " "Him, "
  "\nWhat" ev "er " be "tide; "
  "\nIn " "joy " "or " "in " sor "row "
  "\nStill " fol "low " "thy " "Lord, "
  "\nAnd, " look "ing " "to " Je "sus, "
  "\nStill " "trust " "in " "His " "Word.\n"

  \set stanza = "4."
  "\nTake " "time " "to " "be " ho "ly, "
  "\nBe " "calm " "in " "thy " "soul; "
  "\nEach " "thought " "and " "each " tem "per "
  "\nBe" "neath " "His " con "trol: "
  "\nThus " "led " "by " "His " Spi "rit "
  "\nTo " foun "tains " "of " "love, "
  "\nThou " "soon " "shalt " "be " fit "ted "
  "\nFor " ser "vice " a "bove. "
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
