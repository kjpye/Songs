\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Holy Spirit."
  subtitle    = "Sankey No. 460"
  subsubtitle = "Sankey 880 No. 124"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
  meter       = \markup\smallCaps "11s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key des \major
  \time 12/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8  s1. s1 s4.
  \mark \markup { \box "B" } s8  s1. s1 s4.
  \mark \markup { \box "C" } s8  s1.*2
  \mark \markup { \box "D" }     s1. s1 s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \partial 8 \autoBeamOff 
  aes'8 | aes4. 8[g] aes bes4. aes4 f8 | aes4. ges8[f] ees f4.~4 \bar "|" \break aes8
  aes4. 8[g] aes bes4. aes4 des8 | c4. bes4 aes8 4.~4 \bar "|" \break 8 |
  ees'4. 8[des] c des4. aes4 des8 | ees4. 8[des] c des4.~4. \break |
  des4. 8 c bes aes4. des | c4. 8 bes c des4.~4
}

alto = \relative {
  \autoBeamOff
  f'8 | f4. 8[e] f ges4. f4 des8 | f4. ees8[des] c des4.~4 f8 |
  f4. f8[ees] f g4. f4 8 | ees4.des4 c8 4.~4 ges'8 |
  ges4. 8[f] ees f4. 4 8 | ges4. 8[f] ees f4.~4. |
  bes4. 8 aes ges f4. f | ges4. 8 8 8 f4.~4
}

tenor = \relative {
  \autoBeamOff
  des'8 | des4. 4 8 4. 4 aes8 | aes4. 4 8 4.~4 des8 |
  des4. 4 8 4. 4 aes8 | aes4. g4 aes8 4.~4 8 |
  c4. 8[des] ees des4. 4 aes8 | c4. 8[des] ees des4.~4. |
  des4. 8 8 8 4. aes | ees'4. 8 des ees des4.~4
}

bass = \relative {
  \autoBeamOff
  des8 | 4. 4 8 4. 4 8 | aes4. 4 8 des4.~4 8 |
  des4. 4 8 4. 4 8 | ees4. 4 8 aes,4.~4 aes'8 |
  aes4. 4 8 des,4. 4 8 | aes'4. 4 8 des,4.~4. |
  ges4. 8 8 8 des4. 4. | aes4. 8 8 8 des4.~4
}

extraA = \relative {
  \voiceThree \partial 8
  s8 s1.*5
  s4.*3 s8 \tiny ges'8[aes]
  s1. s4.*3 s4
}

extraB = \relative {
  \voiceThree \partial 8
  s8 s1.*5
  s4.*3 s8 \tiny ees8[f]
  s1 s4.*3 s4
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
  The Spi -- rit, O sin -- ner, in mer -- cy doth move
  Thy heart so long har -- dened, of sin to re -- prove;
  \markup\italic Re -- \markup\italic sist not the Spi -- rit,
  nor long -- er de -- lay; __
  God's gra -- cious en -- trea -- ties may end with to -- day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O child of the king -- domm from sin's ser -- vice cease:
  Be filled with the Spi -- rit, with com -- fort and peace.
  Oh, \markup\italic grieve not the Spi -- rit— thy Teach -- er is He— __
  That Je -- sus thy Sa -- viour may glo -- ri -- fied be.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  De -- filed is the tem -- ple, its beau -- ty laid low,
  On God's ho -- ly al -- tar the em -- bers faint glow.
  By love yet re -- kin -- dled, a flame may ber fanned;
  Oh, \markup\italic quench not the Spi -- rit, \markup\italic the \markup\italic Lord \markup\italic is \markup\italic at \markup\italic hand!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " Spi "rit, " "O " sin "ner, " "in " mer "cy " "doth " "move "
  "\nThy " "heart " "so " "long " har "dened, " "of " "sin " "to " re "prove; "
  "\nRe" "sist " "not " "the " Spi "rit, "
  "\nnor " long "er " de "lay; " 
  "\nGod's " gra "cious " en trea "ties " "may " "end " "with " to "day.\n"

  \set stanza = "2."
  "\nO " "child " "of " "the " king "domm " "from " "sin's " ser "vice " "cease: "
  "\nBe " "filled " "with " "the " Spi "rit, " "with " com "fort " "and " "peace. "
  "\nOh, " "grieve " "not " "the " Spi "rit— " "thy " Teach "er " "is " "He— " 
  "\nThat " Je "sus " "thy " Sa "viour " "may " glo ri "fied " "be.\n"

  \set stanza = "3."
  "\nDe" "filed " "is " "the " tem "ple, " "its " beau "ty " "laid " "low, "
  "\nOn " "God's " ho "ly " al "tar " "the " em "bers " "faint " "glow. "
  "\nBy " "love " "yet " re kin "dled, " "a " "flame " "may " "ber " "fanned; "
  "\nOh, " "quench " "not " "the " Spi "rit, " "the " "Lord " "is " "at " "hand! "
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
            \new Voice \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Voice \extraA
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new Voice \extraB
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
            \new Voice \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Voice { \repeat unfold \verses \extraA }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new Voice { \repeat unfold \verses \extraB}
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
