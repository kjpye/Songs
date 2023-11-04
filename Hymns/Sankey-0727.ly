\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Comfort Ye One Another."
  subtitle    = "Sankey No. 727"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
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

global = {
  \key aes \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }     s2.*4
  \textMark \markup { \box \bold "B" }     s2.*4
  \textMark \markup { \box \bold "C" }     s2.*4
  \textMark \markup { \box \bold "D" }     s2.*4
  \textMark \markup { \box \bold "E" }     s2.*3
  \textMark \markup { \box \bold "F" }     s2.*3 s4.
  \textMark \markup { \box \bold "G" } s4. s2.*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8 c' c c[bes] f | aes4. g | des'8 8 8 c4 bes8 | ees4.~4. |
  ees8 8 8 f4 ees8 | 4. des | 8 8 8 ees4 des8 | 4. c |
  bes8 c des c4 bes8 | aes4.~4. |
  \section \sectionLabel \markup\smallCaps Chorus
  c4.~8[bes] aes | g4 f8 des'4. |
  g,4 8 8 f ees | f4. ees | aes4 g8 4. | bes4 aes8 4. |
  c4 bes8 8 c d | ees4.~4.\fermata | c4.~8[bes] aes |
  g4 f8 des'4. | g,4 8 8. f16 ees8 | f4. ees | c'4 8 \bar "|" \break
  ees8. aes,16 bes8 | aes4. des | c4.~8[bes] c | aes4.~4. |
}

alto = \relative {
  \autoBeamOff
  c'8 ees8 8 4 8 | 4. 4. | g8 8 8 4 8 | aes4.~4. |
  aes8 8 8 4 8 | a4(f8) 4. | g8 8 8 4 8 | 4(ees8) 4. |
  f8 8 8 aes4 ees8 | 4.~4. \section | 4.~4 8 | 4 8 4. |
  des4 8 8 8 8 | c4. c | ees4 8 4. | 4 8 4. |
  aes4 g8 aes8 8 8 | g4 aes8 c[bes g\fermata] | ees4.~4 8 |
  ees4 8 4. | des4 8 8. 16 8 | c4. c | ees4 8
  ges8. 16 8 | f4. f | ees4(aes8 f4) ees8 | 8[c] des c4. |
}

tenor = \relative {
  \autoBeamOff
  aes8 8 8 c4 8 | des4. 4. | bes8 8 8 ees4 8 | 4.~4. |
  ees8 8 8 des4 ees8 | c4. bes | ees8 8 8 4 8 | bes4. aes4. |
  aes8 a bes c[ees] des | c4.~4. \section | aes4 8 8[des] c | des4 8 bes4. |
  bes4 8 4. | aes4 8 4 8 | c4 8 4. | des4 c8 4. |
  ees4 8 d ees bes | 4 c8 ees[des bes\fermata] | aes4 8 8[des] c |
  des4 8 bes4. | 4 8 4. | aes4 8 4 8 | 4 8
  aes4. | des4 8 aes4 8 | 4(c8 ees)[des] ees | c[aes] f ees4. |
}

bass = \relative {
  \autoBeamOff
  aes,8 8 8 4 8 | bes4. 4. | ees8 8 8 4 des8 | c4.~4. |
  c'8 8 8 des4 c8 | f,4. bes | 8 8 8 c4 bes8 | ees,4. aes |
  des,8 c bes ees4 8 | aes,4.~4. \section | 4 c8 ees4 aes8 | bes4 aes8 g4. |
  es4 8 4. | aes,4 8 4 8 | ees'4 8 4. | aes4 8 4. |
  bes4 8 8 8 8 | ees,4.~4.\fermata | aes4 8 ees4 aes8 |
  bes4 aes8 g4. | ees4 8 4. | aes,4 8 4 8 | 4 8
  c4. | des4 8 4 8 | ees4.~4 8 | aes,4.~4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  “Where -- fore com -- fort ye, com -- fort ye one an -- oth -- er,
  Com -- fort ye, com -- fort ye, com -- fort ye with these words; __
  Where -- fore com -- fort ye, com -- fort ye one an -- oth -- er,
  Com -- fort ye one an -- oth -- er with these words:” __
}

chorusMen = \lyricmode {
  \repeat unfold 33 _
  “Where -- fore, where -- fore, _ _ _ _ _ _ one an -- oth -- er,
  _ _ _ _ _ _ _ _ _ _ _ _ these words;
  Where -- fore, where -- fore, _ _ _ _ _ _ one an -- oth -- er,
  _ _ _ one an -- oth -- er _ _ _ these words;”
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  “Let not your heart be trou -- bled;”
  Rest in the Lord your King;
  Not with -- out hope your weep -- ing;
  Those who in Christ are sleep -- ing
  He in the clouds will bring.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  “Let not your heart be trou -- bled;”
  If ye on Christ be -- lieve,
  Joy for each night of sor -- row,
  Life, and a bright to -- mor -- row,
  Ye shall from Him re -- ceive.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Watch, for the Lord is com -- ing;
  Watch, for the time draws near,
  He by His saints at -- ten -- ded,
  He that to heav'n as -- cend -- ed,
  Soon will a -- gain ap -- pear.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "“Let " "not " "your " "heart " "be " trou "bled;” "
  "\nRest " "in " "the " "Lord " "your " "King; "
  "\nNot " with "out " "hope " "your " weep "ing; "
  "\nThose " "who " "in " "Christ " "are " sleep "ing "
  "\nHe " "in " "the " "clouds " "will " "bring. "
  "\n“Where" "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye, " com "fort " "ye, " com "fort " "ye " "with " "these " "words; " 
  "\nWhere" "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye " "one " an oth "er " "with " "these " "words.”\n" 

  \set stanza = "2."
  "\n“Let " "not " "your " "heart " "be " trou "bled;” "
  "\nIf " "ye " "on " "Christ " be "lieve, "
  "\nJoy " "for " "each " "night " "of " sor "row, "
  "\nLife, " "and " "a " "bright " to mor "row, "
  "\nYe " "shall " "from " "Him " re "ceive. "
  "\n“Where" "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye, " com "fort " "ye, " com "fort " "ye " "with " "these " "words; " 
  "\nWhere" "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye " "one " an oth "er " "with " "these " "words.”\n" 

  \set stanza = "3."
  "\nWatch, " "for " "the " "Lord " "is " com "ing; "
  "\nWatch, " "for " "the " "time " "draws " "near, "
  "\nHe " "by " "His " "saints " at ten "ded, "
  "\nHe " "that " "to " "heav'n " as cend "ed, "
  "\nSoon " "will " a "gain " ap "pear. "
  "\n“Where" "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye, " com "fort " "ye, " com "fort " "ye " "with " "these " "words; " 
  "\nWhere" "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye " "one " an oth "er " "with " "these " "words.”\n" 
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "“Let " "not " "your " "heart " "be " trou "bled;” "
  "\nRest " "in " "the " "Lord " "your " "King; "
  "\nNot " with "out " "hope " "your " weep "ing; "
  "\nThose " "who " "in " "Christ " "are " sleep "ing "
  "\nHe " "in " "the " "clouds " "will " "bring. "
  "\n“Where" "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye, " com "fort " "ye, " com "fort " "ye " "with " "these " "words, " "these " "words; " 
  "\nWhere" "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye " "one " an oth "er " "with " "these " "words, " "these " "words.”\n"

  \set stanza = "2."
  "\n“Let " "not " "your " "heart " "be " trou "bled;” "
  "\nIf " "ye " "on " "Christ " be "lieve, "
  "\nJoy " "for " "each " "night " "of " sor "row, "
  "\nLife, " "and " "a " "bright " to mor "row, "
  "\nYe " "shall " "from " "Him " re "ceive. "
  "\n“Where" "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye, " com "fort " "ye, " com "fort " "ye " "with " "these " "words, " "these " "words; " 
  "\nWhere" "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye " "one " an oth "er " "with " "these " "words, " "these " "words.”\n"

  \set stanza = "3."
  "\nWatch, " "for " "the " "Lord " "is " com "ing; "
  "\nWatch, " "for " "the " "time " "draws " "near, "
  "\nHe " "by " "His " "saints " at ten "ded, "
  "\nHe " "that " "to " "heav'n " as cend "ed, "
  "\nSoon " "will " a "gain " ap "pear. "
  "\n“Where" "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye, " com "fort " "ye, " com "fort " "ye " "with " "these " "words, " "these " "words; " 
  "\nWhere" "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye " "one " an oth "er " "with " "these " "words, " "these " "words.”\n"
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "“Let " "not " "your " "heart " "be " trou "bled;” "
  "\nRest " "in " "the " "Lord " "your " "King; "
  "\nNot " with "out " "hope " "your " weep "ing; "
  "\nThose " "who " "in " "Christ " "are " sleep "ing "
  "\nHe " "in " "the " "clouds " "will " "bring. "
  "\n“Where" "fore, " where "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye, " com "fort " "ye, " com "fort " "ye " "with " "these " "words, " "these " "words; " 
  "\nWhere" "fore, " where "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye " "one " an oth "er " "with " "these " "words, " "these " "words.”\n"

  \set stanza = "2."
  "\n“Let " "not " "your " "heart " "be " trou "bled;” "
  "\nIf " "ye " "on " "Christ " be "lieve, "
  "\nJoy " "for " "each " "night " "of " sor "row, "
  "\nLife, " "and " "a " "bright " to mor "row, "
  "\nYe " "shall " "from " "Him " re "ceive. "
  "\n“Where" "fore, " where "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye, " com "fort " "ye, " com "fort " "ye " "with " "these " "words, " "these " "words; " 
  "\nWhere" "fore, " where "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye " "one " an oth "er " "with " "these " "words, " "these " "words.”\n"

  \set stanza = "3."
  "\nWatch, " "for " "the " "Lord " "is " com "ing; "
  "\nWatch, " "for " "the " "time " "draws " "near, "
  "\nHe " "by " "His " "saints " at ten "ded, "
  "\nHe " "that " "to " "heav'n " as cend "ed, "
  "\nSoon " "will " a "gain " ap "pear. "
  "\n“Where" "fore, " where "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye, " com "fort " "ye, " com "fort " "ye " "with " "these " "words, " "these " "words; " 
  "\nWhere" "fore, " where "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye " "one " an oth "er " "with " "these " "words, " "these " "words.” "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "“Let " "not " "your " "heart " "be " trou "bled;” "
  "\nRest " "in " "the " "Lord " "your " "King; "
  "\nNot " with "out " "hope " "your " weep "ing; "
  "\nThose " "who " "in " "Christ " "are " sleep "ing "
  "\nHe " "in " "the " "clouds " "will " "bring. "
  "\n“Where" "fore, " "where " "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye, " com "fort " "ye, " com "fort " "ye " "with " "these " "words; " 
  "\nWhere" "fore, " "where " "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye " "one " an oth "er " "with " "these " "words:”\n" 

  \set stanza = "2."
  "\n“Let " "not " "your " "heart " "be " trou "bled;” "
  "\nIf " "ye " "on " "Christ " be "lieve, "
  "\nJoy " "for " "each " "night " "of " sor "row, "
  "\nLife, " "and " "a " "bright " to mor "row, "
  "\nYe " "shall " "from " "Him " re "ceive. "
  "\n“Where" "fore, " "where " "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye, " com "fort " "ye, " com "fort " "ye " "with " "these " "words; " 
  "\nWhere" "fore, " "where " "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye " "one " an oth "er " "with " "these " "words:”\n" 

  \set stanza = "3."
  "\nWatch, " "for " "the " "Lord " "is " com "ing; "
  "\nWatch, " "for " "the " "time " "draws " "near, "
  "\nHe " "by " "His " "saints " at ten "ded, "
  "\nHe " "that " "to " "heav'n " as cend "ed, "
  "\nSoon " "will " a "gain " ap "pear. "
  "\n“Where" "fore, " "where " "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye, " com "fort " "ye, " com "fort " "ye " "with " "these " "words; " 
  "\nWhere" "fore, " "where " "fore " com "fort " "ye, " com "fort " "ye " "one " an oth "er, "
  "\nCom" "fort " "ye " "one " an oth "er " "with " "these " "words:” " 
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
  \bookOutputSuffix "midi-alto"
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
            \addlyrics \wordsMidiAlto
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }

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
  \bookOutputSuffix "midi-tenor"
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
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiTenor
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
  \bookOutputSuffix "midi-bass"
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
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat unfold \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
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
