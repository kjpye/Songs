\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hear the Call!"
  subtitle    = "Sankey No. 688"
  subsubtitle = "Sankey 880 No. 196"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. F. Sherwin."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*4
  \textMark \markup { \box \bold "B" } s1*4
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "March movement." 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 e f bes | c4 bes8.[c16] d4 bes | g ees' f, d' | d c8[g] c2 |
  f,4 e f bes | c bes8.[c16] d4 b | g e' d bes8.[c16] | d4 c bes2
  \section \sectionLabel \markup\smallCaps Chorus.
  d4 4 4. a8 | bes4 g8[a] bes a g4 | c c c g8[bes] | a4 g f2 |
  f4 e f bes | c f4 8.[d16] bes4 | 4 4 8. a16 bes8 d | c4 a bes2 |
}

alto = \relative {
  \autoBeamOff
  d'4 cis d f | f f f d | ees ees d f | e e f(ees) |
  d4 cis d f | f f f e | ees g f f8.[g16] | f4 ees d2 \section
  fis4 4 4. 8 | g4 d g8 d d4 | e e e g | f e f(ees) |
  d4 cis d f | f a bes f | e e f8. 16 8 8 | ees4 4 d2 |
}

tenor = \relative {
  \autoBeamOff
  bes4 g f f | a4 g8.[a16] bes4 4 | 4 4 4 4 | g4 8[bes] a2 |
  bes4 g f f | a g8.[a16] bes4 4 | 4 4 4 4 | 4 a bes2 \section |
  a4 4 4. d8 | 4 bes8[c] d c bes4 | g g g c | c bes a2 |
  bes4 g f f | a c d d | des des d8. c16 d8 bes | a4 c bes2 |
}

bass = \relative {
  \autoBeamOff
  bes,4 4 4 d | f f bes bes, | ees g bes bes, | c c f2 |
  bes,4 4 4 d | f f bes bes | ees, ees bes d8. ees16 | f4 f bes2 |
  d,4 4 4. 8 | g4 4 8 8 4 | c,4 4 4 e | f c f2 |
  bes,4 4 4 d | f f bes bes | ges ges f8. 16 8 8 | 4 f, bes2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Hear the call! Oh, gird your ar -- mour on,
  Grasp the Spi -- rit's migh -- ty Sword;
  Take the hel -- met of Sal -- va -- tion,
  Press -- ing on to bat -- tle for the Lord!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Lo! the day of God is break -- ing;
  See the gleam -- ing from a -- far!
  Sons of earth from slum -- ber wa -- king
  Hail the bright and Morn -- ing Star.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Trust in Him who is your Cap -- tain!
  Let no heart in ter -- ror quail;
  Je -- sus leads the gath -- 'ring le -- gions,
  In His name we shall pre -- vail.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On -- ward march -- ing, firm and stea -- dy,
  Faint not, fear not Sa -- tan's frown;
  For the Lord is with you al -- way.
  Till you wear the vic -- tor's crown.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Con -- q'ring hosts with ban -- ners wav -- ing.
  Sweep -- ing on o'er hill and plain,
  Ne'er shall halt till swells the an -- them,
  “Christ o'er all the world doth reign!”
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lo! " "the " "day " "of " "God " "is " break "ing; "
  "\nSee " "the " gleam "ing " "from " a "far! "
  "\nSons " "of " "earth " "from " slum "ber " wa "king "
  "\nHail " "the " "bright " "and " Morn "ing " "Star. "
  "\nHear " "the " "call! " "Oh, " "gird " "your " ar "mour " "on, "
  "\nGrasp " "the " Spi "rit's " migh "ty " "Sword; "
  "\nTake " "the " hel "met " "of " Sal va "tion, "
  "\nPress" "ing " "on " "to " bat "tle " "for " "the " "Lord!\n"

  \set stanza = "2."
  "\nTrust " "in " "Him " "who " "is " "your " Cap "tain! "
  "\nLet " "no " "heart " "in " ter "ror " "quail; "
  "\nJe" "sus " "leads " "the " gath "'ring " le "gions, "
  "\nIn " "His " "name " "we " "shall " pre "vail. "
  "\nHear " "the " "call! " "Oh, " "gird " "your " ar "mour " "on, "
  "\nGrasp " "the " Spi "rit's " migh "ty " "Sword; "
  "\nTake " "the " hel "met " "of " Sal va "tion, "
  "\nPress" "ing " "on " "to " bat "tle " "for " "the " "Lord!\n"

  \set stanza = "3."
  "\nOn" "ward " march "ing, " "firm " "and " stea "dy, "
  "\nFaint " "not, " "fear " "not " Sa "tan's " "frown; "
  "\nFor " "the " "Lord " "is " "with " "you " al "way. "
  "\nTill " "you " "wear " "the " vic "tor's " "crown. "
  "\nHear " "the " "call! " "Oh, " "gird " "your " ar "mour " "on, "
  "\nGrasp " "the " Spi "rit's " migh "ty " "Sword; "
  "\nTake " "the " hel "met " "of " Sal va "tion, "
  "\nPress" "ing " "on " "to " bat "tle " "for " "the " "Lord!\n"

  \set stanza = "4."
  "\nCon" "q'ring " "hosts " "with " ban "ners " wav "ing. "
  "\nSweep" "ing " "on " "o'er " "hill " "and " "plain, "
  "\nNe'er " "shall " "halt " "till " "swells " "the " an "them, "
  "\n“Christ " "o'er " "all " "the " "world " "doth " "reign!” "
  "\nHear " "the " "call! " "Oh, " "gird " "your " ar "mour " "on, "
  "\nGrasp " "the " Spi "rit's " migh "ty " "Sword; "
  "\nTake " "the " hel "met " "of " Sal va "tion, "
  "\nPress" "ing " "on " "to " bat "tle " "for " "the " "Lord! "
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
