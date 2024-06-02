\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Know Whom I have Believed."
  subtitle    = "Sankey No. 857"
  subsubtitle = "Sankey 880 No. 452"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El Nathan."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
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
  \tempo Moderato 4=100
  s4 s1*3 s2. |
  s4 s1*3 s2. |
  \tempo Spirited 4=100
  s4 s1*3 s2. |
  s4 s1*3 s2. |
}

soprano = \relative {
  ees'4 | g4. 8 aes[g] f[ees] | c'4 bes bes g | bes4. 8 c[bes] aes[g] | f2. \bar "|" \break
  aes4 | g4. 8 aes[g] f[ees] | c'4 bes bes g | bes4. 8 c[bes] aes[f] | ees2.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  ees8 8 | ees'4 4.-> 8 d c | c4 bes4. 8 c bes | 4 aes4. 8 bes aes | 4 g2 \bar "|" \break
  ees4 | ees'4 4. 8 d c | 4 bes2 8 8 | d4. c8 d4 bes | ees2.
  
}

alto = \relative {
  ees'4 | 4. 8 4 bes | ees4 4 4 4 | g4. 8 aes[g] f[ees] d2.
  f4 | ees4. 8 4 bes | ees4 4 4 4 | d4. 8 4 4 | ees2. \section
  ees8 8 c'4 4. 8 bes aes | 4 g4. 8 aes g | 4 f4. 8 g f | 4 ees2
  ees4 | c'4 4. 8 bes aes | 4 f2 8 8 | f4. aes8 4 4 | g2.
}

tenor = \relative {
  g4 | bes4. 8 c[bes] aes[g] | aes4 g g bes | ees4. 8 4 bes | 2.
  bes4 | 4. 8 c[bes] aes[g] | aes4 g g bes | 4. f8 4 8[aes] | g2. \section
  ees8 8 | ees'4 4. 8 8 8 | 4 4. 8 8 8 | d4 4. 8 8 8 | ees4 bes2
  ees,4 | ees'4 4. 8 8 8 | 4 2 bes8 8 | 4. 8 4 4 | 2.
}

bass = \relative {
  ees4 | 4. 8 4 4 | 4 4 4 4 | 4. 8 4 d8[ees] | bes2.
  d4 | ees4. 8 4 4 | 4 4 4 4 | bes4. 8 4 4 | ees2. \section
  ees8 8 | aes,4 aes'4. 8 8 8 | ees4 4. 8 8 8 | f4 4. 8 bes,8 8 | ees4 2
  ees4 | aes,4 aes'4. 8 8 8 | ees4 2 8 8 | bes4. 8 8[c] d4 | ees2.
}

chorus = \lyricmode {
  But “I know whom I have be -- liev -- ed,
  And am per -- sua -- ded that He is a -- ble
  To keep that which I‘ve com -- mit -- ted
  un -- to Him a -- gainst that day.”
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  I know not why God‘s won -- drous grace
  To me hath been made known
  Nor why— un -- wor -- thy as I am—
  He claimed me for His own.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I know not how this sa -- ving faith
  To me He did im -- part;
  Or how be -- liev -- ing in His Word
  Wrought peace with -- in my heart.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I know not how the Spi -- rit moves,
  Con -- vinc -- ing men of sin;
  Re -- veal -- ing Je -- sus through the Word,
  Cre -- a -- ting faith in Him.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I know not what of good or ill
  May be re -- served for me—
  Of wea -- ry ways or gol -- den days,
  Be -- fore His face I see.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  I know not when my Lord may come,
  I know not how, or where;
  If I shall pass the vale of death.
  Or “meet Him in the air.”
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "know " "not " "why " "God‘s " won "drous " "grace "
  "\nTo " "me " "hath " "been " "made " "known "
  "\nNor " "why—" un wor "thy " "as " "I " "am—"
  "\nHe " "claimed " "me " "for " "His " "own. "
  "\nBut " "“I " "know " "whom " "I " "have " be liev "ed, "
  "\nAnd " "am " per sua "ded " "that " "He " "is " a "ble "
  "\nTo " "keep " "that " "which " "I‘ve " com mit "ted "
  "\nun" "to " "Him " a "gainst " "that " "day.”\n"

  \set stanza = "2."
  "\nI " "know " "not " "how " "this " sa "ving " "faith "
  "\nTo " "me " "He " "did " im "part; "
  "\nOr " "how " be liev "ing " "in " "His " "Word "
  "\nWrought " "peace " with "in " "my " "heart. "
  "\nBut " "“I " "know " "whom " "I " "have " be liev "ed, "
  "\nAnd " "am " per sua "ded " "that " "He " "is " a "ble "
  "\nTo " "keep " "that " "which " "I‘ve " com mit "ted "
  "\nun" "to " "Him " a "gainst " "that " "day.”\n"

  \set stanza = "3."
  "\nI " "know " "not " "how " "the " Spi "rit " "moves, "
  "\nCon" vinc "ing " "men " "of " "sin; "
  "\nRe" veal "ing " Je "sus " "through " "the " "Word, "
  "\nCre" a "ting " "faith " "in " "Him. "
  "\nBut " "“I " "know " "whom " "I " "have " be liev "ed, "
  "\nAnd " "am " per sua "ded " "that " "He " "is " a "ble "
  "\nTo " "keep " "that " "which " "I‘ve " com mit "ted "
  "\nun" "to " "Him " a "gainst " "that " "day.”\n"

  \set stanza = "4."
  "\nI " "know " "not " "what " "of " "good " "or " "ill "
  "\nMay " "be " re "served " "for " "me—"
  "\nOf " wea "ry " "ways " "or " gol "den " "days, "
  "\nBe" "fore " "His " "face " "I " "see. "
  "\nBut " "“I " "know " "whom " "I " "have " be liev "ed, "
  "\nAnd " "am " per sua "ded " "that " "He " "is " a "ble "
  "\nTo " "keep " "that " "which " "I‘ve " com mit "ted "
  "\nun" "to " "Him " a "gainst " "that " "day.”\n"

  \set stanza = "5."
  "\nI " "know " "not " "when " "my " "Lord " "may " "come, "
  "\nI " "know " "not " "how, " "or " "where; "
  "\nIf " "I " "shall " "pass " "the " "vale " "of " "death. "
  "\nOr " "“meet " "Him " "in " "the " "air.” "
  "\nBut " "“I " "know " "whom " "I " "have " be liev "ed, "
  "\nAnd " "am " per sua "ded " "that " "He " "is " a "ble "
  "\nTo " "keep " "that " "which " "I‘ve " com mit "ted "
  "\nun" "to " "Him " a "gainst " "that " "day.” "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi { \context { \Staff autoBeaming = ##f } }
  }
}

#(set-global-staff-size 20)

\book {
  \paper {
    output-suffix = repeat
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
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
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
            \new NullVoice = alignerT { \keepWithTag #'dash \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses { \tenor \nl } }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
  }
  \score {
    \singlescore
    \layout {
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}

\book {
  \paper {
    output-suffix = singlepage
  }
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
      \context { \Staff
                 \RemoveAllEmptyStaves
                 autoBeaming = ##f
      }
    }
  }
}
