\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Close to Thee."
  subtitle    = "Sankey No. 574"
  subsubtitle = "Sankey 880 No. 172"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "S. J. Vail."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2
  \textMark \markup { \box \bold "D" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  d'8. g16 | b4. g8 fis8. a16 | g4 d g8. b16 | d4. b8 g8. b16 | a2 \bar "|" \break
  d,8. g16 | b4. 8 8. d16 | d4 c b8. a16 | g4. b8 8. a16 | g2
  \section \sectionLabel \markup\smallCaps Refrain. \break
  fis8. g16 | a2 c8. fis,16 | g2 b8. c16 | d2 8. b16 | a2 \bar "|" \break
  d,8. g16 | b4. 8 8. d16 | 4 c b8. a16 | g4. b8 8. a16 | g2
}

alto = \relative {
  \autoBeamOff
  d'8. 16 | g4. d8 8. 16 | d4 4 8. 16 | g4. 8 8. 16 | fis2
  d8. 16 | g4. 8 8. f16 | e4 4 8. 16 | d4. g8 f8. 16 | g2
  d8. 16 | fis2 8. d16 | 2 g8. a16 | b2 8. g16 | fis2
  d8. 16 | g4. 8 8. f16 | e4 4 8. 16 | d4. g8 fis8. 16 | g2
}

tenor = \relative {
  \autoBeamOff
  b8. 16 | d4. b8 a8. c16 | b4 4 8. 16 | 4. d8 8. 16 | 2
  b8. 16 | d4. 8 8. g,16 | 4 4 8. a16 | b4. d8 8. c16 | b2 \section
  a8. b16 | c2 a8. c16 | b2 d8. 16 | d2 8. 16 | 2
  b8. 16 | d4. 8 8. g,16 | 4 4 8. a16 | b4. d8 8. c16 | b2
}

bass = \relative {
  \autoBeamOff
  g8. 16 | 4. 8 d8. 16 | g4 4 8. 16 | 4. 8 b8. g16 | d2
  g8. 16 | 4. 8 8. 16 | c,4 4 8. 16 | d4. 8 8. 16 | g,2
  d'8. 16 | 2 8. 16 | g2 8. 16 | 2 8. 16 | d2
  g8. 16 | 4. 8 8. b,16 | c4 4 8. 16 | d4. 8 8. 16 | g,2
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
  Thou my ev -- er -- last -- ing Por -- tion,
  More than friend or life to me,
  All a -- long my pil -- grim jour -- ney,
  Sa -- viour, let me walk with Thee.
  Close to Thee, close to Thee,
  Close to Thee, close to Thee;
  All a -- long my pil -- grim jour -- ney,
  Sa -- viour, let me walk with Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Not for ease or world -- ly plea -- sure,
  Not for fame my prayer shall be;
  Glad -- ly will I toil and suf -- fer,
  On -- ly let me walk with Thee.
  Close to Thee, close to Thee,
  Close to Thee, close to Thee;
  Glad -- ly will I toil and suf -- fer,
  On -- ly let me walk with Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Lead me through the vale of sha -- dows,
  Bear me o'er life's fit -- ful sea;
  Then the gate of life e -- ter -- nal
  May I en -- ter, Lord, with Thee.
  Close to Thee, close to Thee,
  Close to Thee, close to Thee;
  Then the gate of life e -- ter -- nal
  May I en -- ter, Lord, with Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thou " "my " ev er last "ing " Por "tion, "
  "\nMore " "than " "friend " "or " "life " "to " "me, "
  "\nAll " a "long " "my " pil "grim " jour "ney, "
  "\nSa" "viour, " "let " "me " "walk " "with " "Thee. "
  "\nClose " "to " "Thee, " "close " "to " "Thee, "
  "\nClose " "to " "Thee, " "close " "to " "Thee; "
  "\nAll " a "long " "my " pil "grim " jour "ney, "
  "\nSa" "viour, " "let " "me " "walk " "with " "Thee.\n"

  \set stanza = "2."
  "\nNot " "for " "ease " "or " world "ly " plea "sure, "
  "\nNot " "for " "fame " "my " "prayer " "shall " "be; "
  "\nGlad" "ly " "will " "I " "toil " "and " suf "fer, "
  "\nOn" "ly " "let " "me " "walk " "with " "Thee. "
  "\nClose " "to " "Thee, " "close " "to " "Thee, "
  "\nClose " "to " "Thee, " "close " "to " "Thee; "
  "\nGlad" "ly " "will " "I " "toil " "and " suf "fer, "
  "\nOn" "ly " "let " "me " "walk " "with " "Thee.\n"

  \set stanza = "3."
  "\nLead " "me " "through " "the " "vale " "of " sha "dows, "
  "\nBear " "me " "o'er " "life's " fit "ful " "sea; "
  "\nThen " "the " "gate " "of " "life " e ter "nal "
  "\nMay " "I " en "ter, " "Lord, " "with " "Thee. "
  "\nClose " "to " "Thee, " "close " "to " "Thee, "
  "\nClose " "to " "Thee, " "close " "to " "Thee; "
  "\nThen " "the " "gate " "of " "life " e ter "nal "
  "\nMay " "I " en "ter, " "Lord, " "with " "Thee.\n"
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \dynamicsPrint
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
            \new Dynamics \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \repeat unfold \verses \dynamicsPrint
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
