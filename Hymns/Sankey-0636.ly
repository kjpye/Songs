\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Help me, O Lord!"
  subtitle    = "Sankey No. 636"
  subsubtitle = "C. C. No. 63"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "11.10."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 2/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*5
  \textMark \markup { \box \bold "B" } s1*6
  \textMark \markup { \box \bold "C" } s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'2 g4 a | bes2. 4 | 4. 8 a4 g | 2 fis | g a4 4 |
  bes2 c | d4 d c bes | c1 | f,2 g4 a | bes2. 4 | 4. 8 c4 d |
  ees2 a, | bes2 a4 g | f2 bes | 4 c bes a | bes1 |
}

alto = \relative {
  \autoBeamOff
  d'2 ees4 4 | d2. 4 | ees4. 8 4 4 | d2 2 | bes d4 4 |
  d2 f | 4 4 4 ees | f1 | 2 4 ees | d2. f4 | d4. 8 g4 4 |
  g2 ees | d cis4 4 | d2 f | g4 g f ees | d1 |
}

tenor = \relative {
  \autoBeamOff
  bes2 4 f | 2. aes4 | g4. 8 c4 bes | 2 a | g fis4 4 |
  g2 a | bes4 4 c c | a1 | bes2 4 f | 2. bes4 | 4. 8 4 b |
  c2 2 | bes2 4 4 | 2 2 | ees4 4 d c | bes1 |
}

bass = \relative {
  \autoBeamOff
  bes,2 ees4 c | bes2. 4 | ees4. 8 c4 c | d2 2 | g d4 4 |
  g2 f | bes4 4 a g | f2(ees) | d2 4 c | bes2. d4 | g4. 8 ees4 d |
  c2 f | g e4 4 | f2 d | c4 c f f | bes,1 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Help me, O Lord, the God of my sal -- va -- tion!
  I have no hope, no ref -- uge but in Thee;
  Help me to  make this per -- fect con -- se -- cra -- tion,
  In life or death Thine ev -- er -- more to be.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Help me, O Lord, to keep my pledge un -- bro -- ken!
  Guard Thou my ways, my thoughts, my tongue, my heart;
  Help me to trust the wor which Thou hast spo -- ken,
  That from Thy paths my feet may ne'er de -- part.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Help me, O Lord, when sore temp -- ta -- tions press me!
  Oh, lift the clouds that hide Thee from my sight!
  Help me, O Lord, when an -- xious cares dis -- tress me,
  To look be -- yond. where all is calm and bright.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Help me, O Lord! My strength is on -- ly weak -- ness;
  Thine, Thine the power by which a -- lone I live;
  Help me each day to bear the cross with meek -- ness,
  Till Thou at last the pro -- mised crown shalt give.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Help " "me, " "O " "Lord, " "the " "God " "of " "my " sal va "tion! "
  "\nI " "have " "no " "hope, " "no " ref "uge " "but " "in " "Thee; "
  "\nHelp " "me " "to "  "make " "this " per "fect " con se cra "tion, "
  "\nIn " "life " "or " "death " "Thine " ev er "more " "to " "be.\n"

  \set stanza = "2."
  "\nHelp " "me, " "O " "Lord, " "to " "keep " "my " "pledge " un bro "ken! "
  "\nGuard " "Thou " "my " "ways, " "my " "thoughts, " "my " "tongue, " "my " "heart; "
  "\nHelp " "me " "to " "trust " "the " "wor " "which " "Thou " "hast " spo "ken, "
  "\nThat " "from " "Thy " "paths " "my " "feet " "may " "ne'er " de "part.\n"

  \set stanza = "3."
  "\nHelp " "me, " "O " "Lord, " "when " "sore " temp ta "tions " "press " "me! "
  "\nOh, " "lift " "the " "clouds " "that " "hide " "Thee " "from " "my " "sight! "
  "\nHelp " "me, " "O " "Lord, " "when " an "xious " "cares " dis "tress " "me, "
  "\nTo " "look " be "yond. " "where " "all " "is " "calm " "and " "bright.\n"

  \set stanza = "4."
  "\nHelp " "me, " "O " "Lord! " "My " "strength " "is " on "ly " weak "ness; "
  "\nThine, " "Thine " "the " "power " "by " "which " a "lone " "I " "live; "
  "\nHelp " "me " "each " "day " "to " "bear " "the " "cross " "with " meek "ness, "
  "\nTill " "Thou " "at " "last " "the " pro "mised " "crown " "shalt " "give. "
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
      #(layout-set-staff-size 19)
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
