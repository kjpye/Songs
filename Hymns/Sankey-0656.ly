\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Gentle, Sweet, and Tender Love!"
  subtitle    = "Sankey No. 656"
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

  poet        = \markup\smallCaps "Edith Gilling Cherry."
  meter       = \markup\smallCaps "C. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 6/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1.*4
  \textMark \markup { \box \bold "B" } s1.*4
  \textMark \markup { \box \bold "C" } s1.*4
  \textMark \markup { \box \bold "D" } s1.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Devotionally 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 a a bes2 a4 | d2 4 c2. | f,4 4 4 e2 f4 | g2.~2. |
  a4 4 4 bes2 a4 | d2 c4 bes2. | g4 a bes g2 4 | f2.~2.
  \section \sectionLabel \markup\smallCaps "Chorus." \break
  g4 4 4 a2 g4 | g2 f4 e2. | e4 g c4 2 b4 | c2.~2. |
  a4 bes c e2 d4 | c2 a4 f2. | f4 g gis a2 g4 | f2.~2. |
}

alto = \relative {
  \autoBeamOff
  f'4 4 4 2 4 | f2 4 2. | c4 d c c2 4 | e2.~2. |
  f4 4 4 2 4 | 2 fis4 g2. | e4 f f f2 e4 | f2.~2. | \section
  c4 b c c2 4 | b(c) d c2. | 4 e g f2 4 | e2.~2. |
  f4 4 4 e2 4 | f2 e4 d2. | f4 4 4 2 e4 | f2.~2. |
}

tenor = \relative {
  \autoBeamOff
  c'4 4 4 d2 c4 | bes2 4 a2. | c4 bes c bes2 a4 | c2.~2. |
  c4 4 4 bes2 c4 | d2 4 2. | c4 c d c2 bes4 | a2.~2. | \section
  g4 f e f2 g4 | 2 4 2. | 4 c c d2 4 | c2.~2. |
  c4 bes a bes2 4 | c2 4 a2. | bes4 4 b c2 bes4 | a2.~2. |
}

bass = \relative {
  \autoBeamOff
  f4 4 4 2 4 | bes2 4 f2. | a4 bes a g2 f4 | c2.~2. |
  f4 4 4 d2 c4 | bes2 a4 g2. | c4 f bes, c2 4 | f2.~2. | \section
  e4 d c f2 e4 | d2 g,4 c2. | 4 4 e d2 g4 | c,2.~2. |
  f4 4 4 g2 4 | a2 c,4 d2. | 4 4 4 c2 4 | f,2.~2. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Spi -- rit of Love, ex -- pand Thy wings,
  Brood o'er my heart to -- day;
  Fill me with heav'n -- ly ten -- der -- ness
  As now to Thee I pray.
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  O gen -- tle, sweet, and ten -- der Love!
  Great -- est and best Thou art!
  Thou com -- est on Thine an -- gel- wing
  Straight from our Fa -- ther's heart.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  God send -- eth Thee, His mes -- sen -- ger,
  From His bright home a -- bove;
  And sure -- ly all that is of Thee
  Are His, for "\"God" is "Love!\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  \markup\italic Faith lead -- eth us through earth -- ly life
  Down to the gates of death;
  There stays; for where "\"they" see His "face\""
  They have no need of faith.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  \markup\italic Hope com -- eth to the thresh -- old fair,
  But can -- not pass it o'er;
  For there our hopes are all ful -- filled,
  For ev -- er, ev -- er -- more.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  But \markup\italic Love goes through the pear -- ly gates
  In -- to the ci -- ty blest,
  And flies on pin -- ions swift and sure
  Straight to our Fa -- ther's breast.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " gen "tle, " "sweet, " "and " ten "der " "Love! "
  "\nGreat" "est " "and " "best " "Thou " "art! "
  "\nThou " com "est " "on " "Thine " an gel "wing "
  "\nStraight " "from " "our " Fa "ther's " "heart. "
  "\nSpi" "rit " "of " "Love, " ex "pand " "Thy " "wings, "
  "\nBrood " "o'er " "my " "heart " to "day; "
  "\nFill " "me " "with " heav'n "ly " ten der "ness "
  "\nAs " "now " "to " "Thee " "I " "pray.\n"

  \set stanza = "2."
  "\nGod " send "eth " "Thee, " "His " mes sen "ger, "
  "\nFrom " "His " "bright " "home " a "bove; "
  "\nAnd " sure "ly " "all " "that " "is " "of " "Thee "
  "\nAre " "His, " "for " "\"God " "is " "Love!\" "
  "\nSpi" "rit " "of " "Love, " ex "pand " "Thy " "wings, "
  "\nBrood " "o'er " "my " "heart " to "day; "
  "\nFill " "me " "with " heav'n "ly " ten der "ness "
  "\nAs " "now " "to " "Thee " "I " "pray.\n"

  \set stanza = "3."
  "\nFaith " lead "eth " "us " "through " earth "ly " "life "
  "\nDown " "to " "the " "gates " "of " "death; "
  "\nThere " "stays; " "for " "where " "\"they " "see " "His " "face\" "
  "\nThey " "have " "no " "need " "of " "faith. "
  "\nSpi" "rit " "of " "Love, " ex "pand " "Thy " "wings, "
  "\nBrood " "o'er " "my " "heart " to "day; "
  "\nFill " "me " "with " heav'n "ly " ten der "ness "
  "\nAs " "now " "to " "Thee " "I " "pray. "

  \set stanza = "4."
  \markup\italic Hope com -- eth to the thresh -- old fair,
  "\nBut " can "not " "pass " "it " "o'er; "
  "\nFor " "there " "our " "hopes " "are " "all " ful "filled, "
  "\nFor " ev "er, " ev er "more. "
  "\nSpi" "rit " "of " "Love, " ex "pand " "Thy " "wings, "
  "\nBrood " "o'er " "my " "heart " to "day; "
  "\nFill " "me " "with " heav'n "ly " ten der "ness "
  "\nAs " "now " "to " "Thee " "I " "pray. "

  \set stanza = "5."
  "\nBut " \markup\italic "Love " "goes " "through " "the " pear "ly " "gates "
  "\nIn" "to " "the " ci "ty " "blest, "
  "\nAnd " "flies " "on " pin "ions " "swift " "and " "sure "
  "\nStraight " "to " "our " Fa "ther's " "breast. "
  "\nSpi" "rit " "of " "Love, " ex "pand " "Thy " "wings, "
  "\nBrood " "o'er " "my " "heart " to "day; "
  "\nFill " "me " "with " heav'n "ly " ten der "ness "
  "\nAs " "now " "to " "Thee " "I " "pray. "
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
