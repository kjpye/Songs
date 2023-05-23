\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My All is on the Altar"
  subtitle    = "Sankey No. 637"
  subsubtitle = "Sankey 880 No. 744"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{"Attributed to" \smallCaps "J. Hermann."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. James."
  meter       = \markup\smallCaps "7.6.7.6. D."
  piece       = \markup\smallCaps "Munich."

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
  \textMark \markup { \box \bold "A" } s4 s1*5
  \textMark \markup { \box \bold "B" }    s1*5
  \textMark \markup { \box \bold "C" }    s1*5 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8[f] |  g4 c bes aes |
  g2 4 4 | bes aes8[g] f4 f | ees2. 8[f] | g4 c bes aes |
  g2 4 4 | bes aes8[g] f4 f | ees2. f4 | f g aes aes | g2 4 c |
  ees4 c g a | bes2. 4 | bes g aes bes | c2 4 bes | aes g f f | ees2.
}

alto = \relative {
  \autoBeamOff
  ees'4 | 4 4 d f | ees2 4 4 | 4 4 4 d | ees2. bes8[d] | ees4 g f f8[ees] |
  d2 4 ees | d c8[ees] 4 d | ees2. d4 | 4 e f f | ees2 4 g8[f] |
  ees4 g g f8[ees] | d2. f4 | ees ees ees f8[g] | aes2 4 ees | 4 4 4 d | ees2.
}

tenor = \relative {
  \autoBeamOff
  g8[aes] | bes4 aes8[g] f4 bes | 2 4 4 | 4 c f,8[g] aes4 | g2. 8[aes] | bes4 ees d c |
  b2 4 c | bes c f,8[g] aes4 | g2. bes4 | 4 4 c c | 2 4 g |
  g4 ees'8[d] c4 c | bes2. aes4 | g bes ees des | c2 ees4 4 | aes, c f, aes | g2.
}

bass = \relative {
  \autoBeamOff
  ees4 | ees aes, bes d | ees2 4 4 | g, aes bes bes | ees2. g8[f] | ees4 c d8[ees] f4 |
  g2 4 c, | g aes bes bes | ees2. bes'4 | aes g f f | c2 4 ees8[d] |
  c4 8[d] ees4 f | bes,2. d4 | ees des c bes | aes2 4 g | c aes bes bes | ees2.
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
  My Spi -- rit, soul, and bo -- dy,
  Je -- sus, I give to Thee.
  A con -- se -- cra -- ted off -- 'ring,
  Thine ev -- er -- more to be.
  My all is on the al -- tar;
  Lord, I am all Thine own;
  Oh, may my faith ne'er fal -- ter!
  Lord, keep me Thine a -- lone.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O Je -- sus, migh -- ty Sa -- viour!
  I trust in Thy great name.
  I look for Thy sal -- va -- tion,
  Thy prom -- ise now I claim.
  Now, Lord, I yield my mem -- bers,
  From sin's do -- min -- ion free,
  For war -- fare and for tri -- umph,
  As wea -- pons un -- to Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Oh, bliss -- ful self- sur -- ren -- der,
  To live, my Lord, by Thee!
  Now, Son of God, my Sa -- viour,
  Live out Thy life in me.
  I'm Thine, O bless -- ed Je -- sus,
  Washed in Thy pre -- cious blood,
  Sealed by Thy Ho -- ly Spi -- rit,
  A sa -- cri -- fice to God.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "My " Spi "rit, " "soul, " "and " bo "dy, "
  "\nJe" "sus, " "I " "give " "to " "Thee. "
  "\nA " con se cra "ted " off "'ring, "
  "\nThine " ev er "more " "to " "be. "
  "\nMy " "all " "is " "on " "the " al "tar; "
  "\nLord, " "I " "am " "all " "Thine " "own; "
  "\nOh, " "may " "my " "faith " "ne'er " fal "ter! "
  "\nLord, " "keep " "me " "Thine " a "lone.\n"

  \set stanza = "2."
  "\nO " Je "sus, " migh "ty " Sa "viour! "
  "\nI " "trust " "in " "Thy " "great " "name. "
  "\nI " "look " "for " "Thy " sal va "tion, "
  "\nThy " prom "ise " "now " "I " "claim. "
  "\nNow, " "Lord, " "I " "yield " "my " mem "bers, "
  "\nFrom " "sin's " do min "ion " "free, "
  "\nFor " war "fare " "and " "for " tri "umph, "
  "\nAs " wea "pons " un "to " "Thee.\n"

  \set stanza = "3."
  "\nOh, " bliss "ful " self sur ren "der, "
  "\nTo " "live, " "my " "Lord, " "by " "Thee! "
  "\nNow, " "Son " "of " "God, " "my " Sa "viour, "
  "\nLive " "out " "Thy " "life " "in " "me. "
  "\nI'm " "Thine, " "O " bless "ed " Je "sus, "
  "\nWashed " "in " "Thy " pre "cious " "blood, "
  "\nSealed " "by " "Thy " Ho "ly " Spi "rit, "
  "\nA " sa cri "fice " "to " "God. "
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
