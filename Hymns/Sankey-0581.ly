\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Nearer, my God, to Thee!"
  subtitle    = "Sankey No. 581"
  subsubtitle = "Sankey 880 No. 162"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. L. mason."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Sarah F. Adams."
  meter       = \markup\smallCaps "6.4.6.4.6.6.6.4."
  piece       = \markup\smallCaps "Bethany."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 6/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1.*5
  \textMark \markup { \box \bold "B" } s1.*5
  \textMark \markup { \box \bold "C" } s1.*6
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
  b'2. a2 g4 | g2 e4 2. | d2. g2 b4 | a2.~2 r4 | b2. a2 g4 |
  g2 e4 2. | d2(g4) fis2 a4 | g2.~2 r4 d'2. e2 d4 | d2 b4 d2. | \break
  d2. e2 d4 | d2 b4 a2. | b2. a2 g4 | g2 e4 2. | d2(g4) fis2 a4 | g2.~2 r4 |
}

alto = \relative {
  \autoBeamOff
  d'2. c2 b4 | e2 c4 2. | d2. 2 e4 | d2.~2 r4 | 2. c2 4 |
  e2 c4 2. | b2(d4) 2 4 | 2.~2 r4 | g2. 2 4 | 2 4 2. |
  g2. 2 4 | d2 4 2. | 2. c2 b4 | e2 c4 2. | b2(d4) 2 4 | 2.~2 r4 |
}

tenor = \relative {
  \autoBeamOff
  g2. fis2 g4 | c2 fis,4 2. | b2. g2 4 | fis2.~2 r4 | g2. fis2 g4 |
  c2 g4 2. | 2(b4) a2 c4 | d2.~2 r4 | 2. c2 b4 | 2 g4 b2. |
  b2. c2 b4 | a2 g4 fis2. | g2. fis2 g4 | c2 g4 2. | 2(b4) a2 c4 | b2.~2 r4 |
}

bass = \relative {
  \autoBeamOff
  g2. d2 e4 | c2 4 c2. | g2. b2 g4 | d'2.~2 r4 | g2. d2 e4 |
  c2 4 2. | d2. 2 4 | g,2.~2 r4 | g'2. 2 4 | 2 4 2. |
  g2. c,2 g'4 | fis2 g4 d2. | g2. d2 e4 | c2 4 2. | d2. 2 4 | g,2.~2 r4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Near -- er, my God, to Thee,
  Near -- er to Thee;
  E'en though it be a cross
  That rais -- eth me.
  Still all my song shall be—
  Near -- er my God to Thee!
  Near -- er my God to Thee!
  Near -- er to Thee!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Though, like the wan -- der -- er,
  The sun gone down,
  Dark -- ness be o -- ver me,
  My rest a stone,
  Yet in my dreams I'd be
  Near -- er my God to Thee!
  Near -- er my God to Thee!
  Near -- er to Thee!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  There let the way ap -- pear
  Steps un -- to heaven;
  All that thou send -- est me
  In mer -- cy given:
  An -- gels to beck -- on me
  Near -- er my God to Thee!
  Near -- er my God to Thee!
  Near -- er to Thee!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Then with my wak -- ing thoughts,
  Bright with Thy praise,
  Out of my sto -- ny griefs
  Beth -- el I'll raise:
  So by my woes to be
  Near -- er my God to Thee!
  Near -- er my God to Thee!
  Near -- er to Thee!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Or if on joy -- ful wing,
  Clea -- ving the sky,
  Sun, moon, and stars for -- got,
  Up -- ward I fly,
  Still all my song shall be—
  Near -- er my God to Thee!
  Near -- er my God to Thee!
  Near -- er to Thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Near" "er, " "my " "God, " "to " "Thee, "
  "\nNear" "er " "to " "Thee; "
  "\nE'en " "though " "it " "be " "a " "cross "
  "\nThat " rais "eth " "me. "
  "\nStill " "all " "my " "song " "shall " "be— "
  "\nNear" "er " "my " "God " "to " "Thee! "
  "\nNear" "er " "my " "God " "to " "Thee! "
  "\nNear" "er " "to " "Thee!\n"

  \set stanza = "2."
  "\nThough, " "like " "the " wan der "er, "
  "\nThe " "sun " "gone " "down, "
  "\nDark" "ness " "be " o "ver " "me, "
  "\nMy " "rest " "a " "stone, "
  "\nYet " "in " "my " "dreams " "I'd " "be "
  "\nNear" "er " "my " "God " "to " "Thee! "
  "\nNear" "er " "my " "God " "to " "Thee! "
  "\nNear" "er " "to " "Thee!\n"

  \set stanza = "3."
  "\nThere " "let " "the " "way " ap "pear "
  "\nSteps " un "to " "heaven; "
  "\nAll " "that " "thou " send "est " "me "
  "\nIn " mer "cy " "given: "
  "\nAn" "gels " "to " beck "on " "me "
  "\nNear" "er " "my " "God " "to " "Thee! "
  "\nNear" "er " "my " "God " "to " "Thee! "
  "\nNear" "er " "to " "Thee!\n"

  \set stanza = "4."
  "\nThen " "with " "my " wak "ing " "thoughts, "
  "\nBright " "with " "Thy " "praise, "
  "\nOut " "of " "my " sto "ny " "griefs "
  "\nBeth" "el " "I'll " "raise: "
  "\nSo " "by " "my " "woes " "to " "be "
  "\nNear" "er " "my " "God " "to " "Thee! "
  "\nNear" "er " "my " "God " "to " "Thee! "
  "\nNear" "er " "to " "Thee!\n"

  \set stanza = "5."
  "\nOr " "if " "on " joy "ful " "wing, "
  "\nClea" "ving " "the " "sky, "
  "\nSun, " "moon, " "and " "stars " for "got, "
  "\nUp" "ward " "I " "fly, "
  "\nStill " "all " "my " "song " "shall " "be— "
  "\nNear" "er " "my " "God " "to " "Thee! "
  "\nNear" "er " "my " "God " "to " "Thee! "
  "\nNear" "er " "to " "Thee! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
