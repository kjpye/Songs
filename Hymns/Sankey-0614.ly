\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I will follow Jesus."
  subtitle    = "Sankey No. 614"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Mountain."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
  meter       = \markup\smallCaps "6.5."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*5
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*5
  \textMark \markup { \box \bold "E" } s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Joyfully 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4 4 4 4 | f2 d | g4 g c c | b1 | a4 4 4 4 |
  g2 a | b4 g g fis | g1 | d4 e f d | g2 g |
  g4 a b g | c1 | e4 d c a | g2 c |
  c4 a d4. c8 | c1 \section \sectionLabel \markup\smallCaps Chorus. | d,4 e f d | g2 g | 4 a b g |
  c1 | e4 d c a | g2 c | 4 a d4. c8 | c1 |
}

alto = \relative {
  \autoBeamOff
  c'4 4 4 4 | b2 2 | c4 c e e | 2(d) | c4 c d d |
  g2 g | 4 d e d | 1 | b4 b b b | c2 e |
  f4 4 4 4 | e2(fis) | g4 g g d | e2 g |
  a4 f f4. e8 | 1 \section | b4 4 4 4 | c2 e | f4 4 4 4 |
  e2(fis) | g4 g g d | e2 g | a4 f f4. e8 | 1 |
}

tenor = \relative {
  \autoBeamOff
  g4 4 4 4 | g2 g | 4 4 a a | gis1 | a4 a b b |
  c2 cis | d4 b c a | b1 | g4 4 4 4 | 2 c |
  b4 c d b | c1 | 4 b c c | 2 e |
  f4 c b4. c8 | 1 | g4 4 4 4 | 2 c | b4 c d b |
  c1 | 4 b c c | 2 e | f4 c b4. c8 | 1 |
}

bass = \relative {
  \autoBeamOff
  c4 4 4 4 | d2 f | e4 e a, a | e'1 | f4 4 4 4 |
  e2 a, | d4 4 4 4 | g,1 | f'4 e d f | e2 c |
  g'4 4 4 4 | a1 | g4 f e fis | g2 2 |
  g4 4 4. c,8 | 1 | f4 e d f | e2 c | g'4 4 4 4 |
  a1 | g4 f e fis | g2 2 | 4 4 4. c,8 | 1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I will fol -- low Je -- sus,
  Fol -- low all the day;
  Walk -- ing in His foot -- steps
  Close -- ly all the way.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  When I came to Je -- sus,
  Then my heart was sad;
  But when He re -- ceived me,
  Then He made me glad.
  Free -- ly He for -- gave me,
  Met my spi -- rit's need:
  There He bade me fol -- low
  Whi -- ther He would lead.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oft in hours of tri -- al
  I have gone a -- stray,
  In -- to world -- ly by -- paths
  From the nar -- row way;
  But my Sa -- viour sought me,
  Brought me to His side;
  Then a -- gain I fol -- lowed
  Christ the cru -- ci -- fied.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  But I would not wan -- der,
  Gra -- cious Lord, from Thee;
  I would fol -- low whol -- ly,
  With true loy -- al -- ty;
  Ev -- 'ry sin for -- sak -- ing
  From my in -- most soul;
  Ev -- 'ry thought sur -- rend -- ered
  To Thy grand con -- trol.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Teach me by Thy Spi -- rit,
  And Thy Ho -- ly Word,
  How I best may suf -- fer,
  And o -- bey Thee, Lord;
  And how -- ev -- er pain -- ful
  To o -- bey may be,
  Love can make it glad -- some.
  Aye to fol -- low Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "When " "I " "came " "to " Je "sus, "
  "\nThen " "my " "heart " "was " "sad; "
  "\nBut " "when " "He " re "ceived " "me, "
  "\nThen " "He " "made " "me " "glad. "
  "\nFree" "ly " "He " for "gave " "me, "
  "\nMet " "my " spi "rit's " "need: "
  "\nThere " "He " "bade " "me " fol "low "
  "\nWhi" "ther " "He " "would " "lead. "
  "\nI " "will " fol "low " Je "sus, "
  "\nFol" "low " "all " "the " "day; "
  "\nWalk" "ing " "in " "His " foot "steps "
  "\nClose" "ly " "all " "the " "way.\n"

  \set stanza = "2."
  "\nOft " "in " "hours " "of " tri "al "
  "\nI " "have " "gone " a "stray, "
  "\nIn" "to " world "ly " by "paths "
  "\nFrom " "the " nar "row " "way; "
  "\nBut " "my " Sa "viour " "sought " "me, "
  "\nBrought " "me " "to " "His " "side; "
  "\nThen " a "gain " "I " fol "lowed "
  "\nChrist " "the " cru ci "fied. "
  "\nI " "will " fol "low " Je "sus, "
  "\nFol" "low " "all " "the " "day; "
  "\nWalk" "ing " "in " "His " foot "steps "
  "\nClose" "ly " "all " "the " "way.\n"

  \set stanza = "3."
  "\nBut " "I " "would " "not " wan "der, "
  "\nGra" "cious " "Lord, " "from " "Thee; "
  "\nI " "would " fol "low " whol "ly, "
  "\nWith " "true " loy al "ty; "
  "\nEv" "'ry " "sin " for sak "ing "
  "\nFrom " "my " in "most " "soul; "
  "\nEv" "'ry " "thought " sur rend "ered "
  "\nTo " "Thy " "grand " con "trol. "
  "\nI " "will " fol "low " Je "sus, "
  "\nFol" "low " "all " "the " "day; "
  "\nWalk" "ing " "in " "His " foot "steps "
  "\nClose" "ly " "all " "the " "way.\n"

  \set stanza = "4."
  "\nTeach " "me " "by " "Thy " Spi "rit, "
  "\nAnd " "Thy " Ho "ly " "Word, "
  "\nHow " "I " "best " "may " suf "fer, "
  "\nAnd " o "bey " "Thee, " "Lord; "
  "\nAnd " how ev "er " pain "ful "
  "\nTo " o "bey " "may " "be, "
  "\nLove " "can " "make " "it " glad "some. "
  "\nAye " "to " fol "low " "Thee. "
  "\nI " "will " fol "low " Je "sus, "
  "\nFol" "low " "all " "the " "day; "
  "\nWalk" "ing " "in " "His " foot "steps "
  "\nClose" "ly " "all " "the " "way. "
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
