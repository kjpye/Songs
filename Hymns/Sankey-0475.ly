\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Hear Thy Welcome Voice."
  subtitle    = "Sankey No. 475"
  subsubtitle = "Sankey 880 No. 10"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "L. Hartsough."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps ""
  meter       = \markup\smallCaps "S.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*4
  \mark \markup { \box "B" }    s2.*3 s2
  \mark \markup { \box "C" } s4 s2.*4
  \mark \markup { \box "D" }    s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \partial 4
  ees'8[g] | bes4. g8 f ees | ees2 4 | f4. aes8 c bes | g2 bes4 |
  ees4. d8 c bes | c bes g4\fermata ees | f4. ees8 g f | ees2 \bar "||" \break r4^\markup\smallCaps Chorus. |
  ees'4. d8 c bes | c2. | bes4. g8 f ees | f2. |
  bes4. c8 g f | ees f g4\fermata ees | f4. ees8 g f | ees2
}

alto = \relative {
  \autoBeamOff \partial 4
  ees'4 | g4. ees8 d ees | ees2 4 | d4. f8 aes g | ees2 g 4 |
  g4. bes8 aes g | aes8 g ees4\fermata 4 | d4. bes8 ees d | ees2 r4 |
  g4. 8 aes g | aes2. | g4. ees8 d ees | d2. |
  ees4. 8 8 d | ees d ees4\fermata 4 | d4. bes8 ees d | ees2 
}

tenor = \relative {
  \autoBeamOff \partial 4
  g8[bes] | ees4. bes8 8 8 | g2 4 | aes4. c8 ees ees | bes2 4 |
  bes4. 8 ees ees | 8 8 bes4\fermata g | bes4. g8 bes aes | g2 r4 |
  bes4. 8 ees ees | 2. | 4. bes8 8 g | bes2. |
  g4. aes8 bes bes | g bes bes4\fermata g | bes4. g8 bes aes | g2
}

bass = \relative {
  \autoBeamOff \partial 4
  ees4 | 4. 8 8 8 | 2 4 | bes4. 8 ees ees | 2 4 |
  ees4. 8 8 8 | 8 8 4\fermata 4 | bes4. 8 8 8 | ees2 r4 |
  ees4. 8 8 8 | 2. | 4. 8 bes bes | 2. |
  ees4. 8 8 8 | 8 8 4\fermata 4 | bes4. 8 8 8 | ees2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I am com -- ing, Lord!
  Com -- ing now to Thee!
  Wash me, cleanse me, in the blood
  That flowed on Cal -- va -- ry.
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  I hear Thy wel -- come voice
  That calls me, Lord, to Thee,
  For cleans -- ing in Thy pre -- cious blood
  That flowed on Cal -- var -- ry.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Tho' com -- ing weak and vile,
  Thou dost my strength as -- sure:
  Thou dost my vile -- ness ful -- ly cleanse,
  Till spot -- less all and pure.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  'Tis Je -- sus calls me on
  To per -- fect faith and love,
  To per -- fect hope, and peace, and trust,
  For earth and heaven a -- bove.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  'Tis Je -- sus who con -- firms
  The bles -- sed work with -- in,
  By add -- ing grace to wel -- comed grace,
  Where reigned the power of sin.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  And He the wit -- ness gives
  To loy -- al hearts and free,
  That ev -- 'ry prom -- ise is ful -- filled,
  If faith but brings the plea.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  All hail, a -- ton -- ing blood!
  All hail, re -- deem -- ing grace!
  All hail, the Gift of Christ our Lord,
  Our Strength and  Right -- eous -- ness!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "hear " "Thy " wel "come " "voice "
  "\nThat " "calls " "me, " "Lord, " "to " "Thee, "
  "\nFor " cleans "ing " "in " "Thy " pre "cious " "blood "
  "\nThat " "flowed " "on " Cal var "ry. "
  "\nI " "am " com "ing, " "Lord! "
  "\nCom" "ing " "now " "to " "Thee! "
  "\nWash " "me, " "cleanse " "me, " "in " "the " "blood "
  "\nThat " "flowed " "on " Cal va "ry.\n"

  \set stanza = "2."
  "\nTho' " com "ing " "weak " "and " "vile, "
  "\nThou " "dost " "my " "strength " as "sure: "
  "\nThou " "dost " "my " vile "ness " ful "ly " "cleanse, "
  "\nTill " spot "less " "all " "and " "pure. "
  "\nI " "am " com "ing, " "Lord! "
  "\nCom" "ing " "now " "to " "Thee! "
  "\nWash " "me, " "cleanse " "me, " "in " "the " "blood "
  "\nThat " "flowed " "on " Cal va "ry.\n"

  \set stanza = "3."
  "\n'Tis " Je "sus " "calls " "me " "on "
  "\nTo " per "fect " "faith " "and " "love, "
  "\nTo " per "fect " "hope, " "and " "peace, " "and " "trust, "
  "\nFor " "earth " "and " "heaven " a "bove. "
  "\nI " "am " com "ing, " "Lord! "
  "\nCom" "ing " "now " "to " "Thee! "
  "\nWash " "me, " "cleanse " "me, " "in " "the " "blood "
  "\nThat " "flowed " "on " Cal va "ry.\n"

  \set stanza = "4."
  "\n'Tis " Je "sus " "who " con "firms "
  "\nThe " bles "sed " "work " with "in, "
  "\nBy " add "ing " "grace " "to " wel "comed " "grace, "
  "\nWhere " "reigned " "the " "power " "of " "sin. "
  "\nI " "am " com "ing, " "Lord! "
  "\nCom" "ing " "now " "to " "Thee! "
  "\nWash " "me, " "cleanse " "me, " "in " "the " "blood "
  "\nThat " "flowed " "on " Cal va "ry.\n"

  \set stanza = "5."
  "\nAnd " "He " "the " wit "ness " "gives "
  "\nTo " loy "al " "hearts " "and " "free, "
  "\nThat " ev "'ry " prom "ise " "is " ful "filled, "
  "\nIf " "faith " "but " "brings " "the " "plea. "
  "\nI " "am " com "ing, " "Lord! "
  "\nCom" "ing " "now " "to " "Thee! "
  "\nWash " "me, " "cleanse " "me, " "in " "the " "blood "
  "\nThat " "flowed " "on " Cal va "ry.\n"

  \set stanza = "6."
  "\nAll " "hail, " a ton "ing " "blood! "
  "\nAll " "hail, " re deem "ing " "grace! "
  "\nAll " "hail, " "the " "Gift " "of " "Christ " "our " "Lord, "
  "\nOur " "Strength " "and "  Right eous "ness! "
  "\nI " "am " com "ing, " "Lord! "
  "\nCom" "ing " "now " "to " "Thee! "
  "\nWash " "me, " "cleanse " "me, " "in " "the " "blood "
  "\nThat " "flowed " "on " Cal va "ry."
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsSix   \chorus
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
