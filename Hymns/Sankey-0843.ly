\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Shall I be among that Throng?"
  subtitle    = "Sankey No. 843"
  subsubtitle = "C.C. No. 11"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "M. S. Sullivan."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4. s2.*3 s4.
  \textMark \markup { \box \bold "B" } s4. s2.*3 s4.
  \textMark \markup { \box \bold "C" } s4. s2.*3 s4.
  \textMark \markup { \box \bold "D" } s4. s2.*3 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  g'8 fis g | a4. g8 e g | c4. r8 4 | b4. f8 a8. g16 | g4. \bar "|" \break
  g8 fis g | a4. g8 e g | c4. r8 e4 | d4. b8 c8. a16 | g4.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  g8 a-> b | e4. d8 8. c16 | 4. r8 4 | 4. a8 gis a | b4. \bar "|" \break
  b8 a g | c4. e8 d c | a4. r8 c4 | b4. a8 b8. g16 | c4.
}

alto = \relative {
  \autoBeamOff
  e'8 dis e | f4. e8 c e | 4. r8 4 | f4. b,8 f'8. 16 | e4.
  e8 dis e | f4. e8 c e | 4. r8 g4 | 4. 8 fis8. 16 | g4. \section
  f8 f-> f | g4. f8 e8. 16 | 4. r8 4 | f4. 8 d dis | e4.
  f8 8 8 | e4. g8 8 8 | f4. r8 4 | 4. 8 8. 16 | e4.
}

tenor = \relative {
  \autoBeamOff
  g8 a g | c4. 8 g c | g4. r8 4 | 4. 8 d'8. 16 | c4.
  c8 a g | c4. 8 g c | g4. r8 c4 | b4. d8 a8. c16 | b4. \section
  b8 c d | c4. b8 g8. 16 | 4. r8 bes4 | a4. c8 b a | gis4.
  g8 d' d | c4. 8 b c | 4. r8 4 | d4. c8 d8. b16 | c4.
}

bass = \relative {
  \autoBeamOff
  c8 8 8 | 4. 8 8 8 | 4. r8 4 | d4. 8 b8. 16 | c4.
  c8 8 8 | 4. 8 8 8 | 4. r8 4 | d4. 8 8. 16 | g4. \section
  g8 8 8 |  4. 8 c,8. 16 | 4. r8 4 | f4. 8 8 8 | e4.
  d8 c b | c4. 8 d e | f4. r8 a4 | g4. 8 8. 16 | c,4.
}

chorus = \lyricmode {
  I shall! for I have been re -- deemed
  With blood of worth un -- told—
  The blood of Christ, the Lamb of God,
  More pre -- cious far than gold!
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, shall I be a -- mong that throng,
  All clothed in robes of white,
  And help to swell that glo -- rious song
  Of rap -- ture and de -- light?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, shall I see my Sa -- viour's face,
  All ra -- diant as the sun,
  And dwell through all e -- ter -- ni -- ty
  With God's Be -- lov -- ed One?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Shall I in glo -- ry Christ be -- hold
  Ex -- alt -- ed Ling and Lord?
  What rap -- ture, yea, what bliss un -- told,
  That mo -- ment will af -- ford!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, shall I gaze up -- on the wounds,
  From whence hath flowed the blood
  That cleansed my guil -- ty, sin -- ful heart,
  And brought me nigh to God?
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Oh, shall I ev -- er, “with the Lord,”
  As I re -- trace the past,
  Praise Him for all His won -- drous grace
  To me from first to last?
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "shall " "I " "be " a "mong " "that " "throng, "
  "\nAll " "clothed " "in " "robes " "of " "white, "
  "\nAnd " "help " "to " "swell " "that " glo "rious " "song "
  "\nOf " rap "ture " "and " de "light? "
  "\nI " "shall! " "for " "I " "have " "been " re "deemed "
  "\nWith " "blood " "of " "worth " un "told— "
  "\nThe " "blood " "of " "Christ, " "the " "Lamb " "of " "God, "
  "\nMore " pre "cious " "far " "than " "gold!\n"

  \set stanza = "2."
  "\nOh, " "shall " "I " "see " "my " Sa "viour's " "face, "
  "\nAll " ra "diant " "as " "the " "sun, "
  "\nAnd " "dwell " "through " "all " e ter ni "ty "
  "\nWith " "God's " Be lov "ed " "One? "
  "\nI " "shall! " "for " "I " "have " "been " re "deemed "
  "\nWith " "blood " "of " "worth " un "told— "
  "\nThe " "blood " "of " "Christ, " "the " "Lamb " "of " "God, "
  "\nMore " pre "cious " "far " "than " "gold!\n"

  \set stanza = "3."
  "\nShall " "I " "in " glo "ry " "Christ " be "hold "
  "\nEx" alt "ed " "Ling " "and " "Lord? "
  "\nWhat " rap "ture, " "yea, " "what " "bliss " un "told, "
  "\nThat " mo "ment " "will " af "ford! "
  "\nI " "shall! " "for " "I " "have " "been " re "deemed "
  "\nWith " "blood " "of " "worth " un "told— "
  "\nThe " "blood " "of " "Christ, " "the " "Lamb " "of " "God, "
  "\nMore " pre "cious " "far " "than " "gold!\n"

  \set stanza = "4."
  "\nOh, " "shall " "I " "gaze " up "on " "the " "wounds, "
  "\nFrom " "whence " "hath " "flowed " "the " "blood "
  "\nThat " "cleansed " "my " guil "ty, " sin "ful " "heart, "
  "\nAnd " "brought " "me " "nigh " "to " "God? "
  "\nI " "shall! " "for " "I " "have " "been " re "deemed "
  "\nWith " "blood " "of " "worth " un "told— "
  "\nThe " "blood " "of " "Christ, " "the " "Lamb " "of " "God, "
  "\nMore " pre "cious " "far " "than " "gold!\n"

  \set stanza = "5."
  "\nOh, " "shall " "I " ev "er, " "“with " "the " "Lord,” "
  "\nAs " "I " re "trace " "the " "past, "
  "\nPraise " "Him " "for " "all " "His " won "drous " "grace "
  "\nTo " "me " "from " "first " "to " "last? "
  "\nI " "shall! " "for " "I " "have " "been " re "deemed "
  "\nWith " "blood " "of " "worth " un "told— "
  "\nThe " "blood " "of " "Christ, " "the " "Lamb " "of " "God, "
  "\nMore " pre "cious " "far " "than " "gold! "
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
                                              \wordsFive  \chorus
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
  \paper {
    output-suffix = single
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
