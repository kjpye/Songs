\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "In the Hollow of His Hand."
  subtitle    = "Sankey No. 545"
  subsubtitle = "Sankey 880 No. 470"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 6/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1.*3 s2. s2
  \textMark \markup { \box \bold "B" } s4 s1.*3 s2.
  \textMark \markup { \box \bold "C" } s2. s1.*3 s2.
  \textMark \markup { \box \bold "D" } s2. s1.*3 s2. s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8[ees] | f2 4 4(g) f | 4 bes2. r4 a | g2 bes4 4(a) c | bes2.~4 r \bar "|" \break
  bes8[c] | d2 4 4(ees) d | 4 c2 c bes4 | a4 c2 bes g4 | f2. \bar "|" \break
  f2^\markup\smallCaps Chorus. ees4 | d f2 g bes4 | f2. d2 ees4 | f4 bes2 a bes4 | c2. \bar "|" \break
  bes2 c4 | d2 ees4 d(c) bes | bes g2 a bes4 | f bes2 aes c4 | bes2.~2
}

alto = \relative {
  \autoBeamOff
  bes8[c] | d2 4 4(ees) d | 4 2. r4 f | ees2 g4 f2 ees4 | d2.~4 r
  d8[ees] | f2 4 4(g) f | 4 2 2 4 | 4 2 e2 4 | f2.
  d2 c4 | bes d2 ees2 4 | d2. bes2 c4 | d4 2 ees f4 | 2.
  f2 4 | 2 g4 f2 4 | g ees2 f g4 | d f2 ees2 4 | d2.~2
}

tenor = \relative {
  \autoBeamOff
  f4 | bes2 4 2 4 | 4 f2. r4 bes | 2 ees4 d(c) a | bes2.~4 r
  bes4 | 2 4 2 4 | 4 a2 c d4 | c a2 g bes4 | a2.
  bes2 f4 | f bes2 2 g4 | bes2. f2 4 | 4 2 2 bes4 | a2.
  bes2 a4 | bes2 4 4(a) bes | 4 2 2 4 | 4 d2 c a4 | bes2.~2
}

bass = \relative {
  \autoBeamOff
  bes,4 | 2 4 2 4 | 4 2. r4 d | ees2 4 f2 4 | bes,2.~4 r
  bes4 | 2 4 2 4 | f'4 2 a, bes4 | c4 2 2 4 | f2.
  bes,2 4 | 4 2 2 4 | 2. 2 4 | 4 2 c d4 | f2.
  d2 f4 | bes2 4 bes,(c) d | ees4 2 2 4 | f4 2 2 4 | bes,2.~2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  In the hol -- low of His hand!
  In the hol -- low of His hand!—
  Oh, how safe are all who trust Him,
  In the hol -- low of His hand!
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  O soul, tossed on the bil -- lows,
  A -- far from friend -- ly land,
  Look up to Him who holds thee
  In "\"the" hol -- low of His "hand.\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Though ra -- gin winds may drive thee
  A wreck up --on the strand,
  Still cling to Him who holds thee
  In "\"the" hol -- low of His "hand.\""
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When strength is spent in toil -- ing,
  And wea -- ri -- ly you stand,
  Then rest in Him who holds thee
  In "\"the" hol -- low of His "hand.\""
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When by the swe; -- ling Jor -- dan,
  Your feet in sink -- ing sand,
  Re -- mem -- ber still He holds thee
  In "\"the" hol -- low of His "hand.\""
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  And when at last we're gath -- ered
  With all the ran -- somed band,
  We'll praise our God who holds us
  In "\"the" hol -- low of His "hand.\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "soul, " "tossed " "on " "the " bil "lows, "
  "\nA" "far " "from " friend "ly " "land, "
  "\nLook " "up " "to " "Him " "who " "holds " "thee "
  "\nIn " "\"the " hol "low " "of " "His " "hand.\" "
  "\nIn " "the " hol "low " "of " "His " "hand! "
  "\nIn " "the " hol "low " "of " "His " "hand!— "
  "\nOh, " "how " "safe " "are " "all " "who " "trust " "Him, "
  "\nIn " "the " hol "low " "of " "His " "hand!\n"

  \set stanza = "2."
  "\nThough " ra "gin " "winds " "may " "drive " "thee "
  "\nA " "wreck " up"on " "the " "strand, "
  "\nStill " "cling " "to " "Him " "who " "holds " "thee "
  "\nIn " "\"the " hol "low " "of " "His " "hand.\" "
  "\nIn " "the " hol "low " "of " "His " "hand! "
  "\nIn " "the " hol "low " "of " "His " "hand!— "
  "\nOh, " "how " "safe " "are " "all " "who " "trust " "Him, "
  "\nIn " "the " hol "low " "of " "His " "hand!\n"

  \set stanza = "3."
  "\nWhen " "strength " "is " "spent " "in " toil "ing, "
  "\nAnd " wea ri "ly " "you " "stand, "
  "\nThen " "rest " "in " "Him " "who " "holds " "thee "
  "\nIn " "\"the " hol "low " "of " "His " "hand.\" "
  "\nIn " "the " hol "low " "of " "His " "hand! "
  "\nIn " "the " hol "low " "of " "His " "hand!— "
  "\nOh, " "how " "safe " "are " "all " "who " "trust " "Him, "
  "\nIn " "the " hol "low " "of " "His " "hand!\n"

  \set stanza = "4."
  "\nWhen " "by " "the " swe; "ling " Jor "dan, "
  "\nYour " "feet " "in " sink "ing " "sand, "
  "\nRe" mem "ber " "still " "He " "holds " "thee "
  "\nIn " "\"the " hol "low " "of " "His " "hand.\" "
  "\nIn " "the " hol "low " "of " "His " "hand! "
  "\nIn " "the " hol "low " "of " "His " "hand!— "
  "\nOh, " "how " "safe " "are " "all " "who " "trust " "Him, "
  "\nIn " "the " hol "low " "of " "His " "hand!\n"

  \set stanza = "5."
  "\nAnd " "when " "at " "last " "we're " gath "ered "
  "\nWith " "all " "the " ran "somed " "band, "
  "\nWe'll " "praise " "our " "God " "who " "holds " "us "
  "\nIn " "\"the " hol "low " "of " "His " "hand.\" "
  "\nIn " "the " hol "low " "of " "His " "hand! "
  "\nIn " "the " hol "low " "of " "His " "hand!— "
  "\nOh, " "how " "safe " "are " "all " "who " "trust " "Him, "
  "\nIn " "the " hol "low " "of " "His " "hand! "
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
