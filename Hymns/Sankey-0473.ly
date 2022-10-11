\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Just as I Am."
  subtitle    = "Sankey No. 473"
  subsubtitle = "Sankey 880 No. 82"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. B. Bradbury,"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Charlotte Elliott."
  meter       = \markup\smallCaps "8.8.8.6."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key ees \major
  \time 6/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1.*3 s2. s2
  \mark \markup { \box "B" } s4 s1.*4 s2. s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8[f] | g2 4 bes4.(aes8) g4 | f4.(g8) aes4 g2 bes4 | 4(f) g aes2 c4 | c2 bes4 g2 \bar "|" \break aes8[f] |
  g2 4 bes4.(aes8) g4 | c2 4 ees4.(d8) c4 | bes2 4 4.(aes8) g4 | f2. bes | g~2
}

alto = \relative {
  \autoBeamOff
  ees'4 | 2 4 g4.(f8) ees4 | d4.(ees8) f4 ees2 g4 | f2 ees4 f2 aes4 | aes2 g4 ees2 4 |
  ees2 4 g4.(f8) ees4 | aes2 4 2 4 | g2 4 4.(f8) ees4 | d2. d | ees2.~2
}

tenor = \relative {
  \autoBeamOff
  g8[aes] | bes2 4 2 4 | 2 4 2 ees4 | d2 bes4 2 d4 | ees2 4 bes2 g8[aes] |
  bes2 4 2 ees4 | 2 4 c4.(d8) ees4 | 2 4 bes2 4 | 2. 2. | 2.~2
}

bass = \relative {
  \autoBeamOff
  ees4 | 2 4 2 4 | bes2 4 ees2 4 | bes'2 4 2 bes,4 | ees2 4 2 4 |
  ees2 4 4.(f8) g4 | aes2 4 2 4 | ees2 4 2 4 | bes'2. bes, | ees2.~2
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
  Just as I am, with -- out one plea,
  But that Thy blood was shed for me,
  And that Thou bidd'st me come to Thee,
  O Lamb of God, I come, I come!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Just as I am—  poor wretch -- ed, blind,
  Sight, rich -- es, heal -- ing of the mind,
  Yea, all I need, in Thee to find,
  O Lamb of God, I come, I come!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Just as I am— Thou wilt re -- ceive,
  ilt wel -- come, par -- don, cleanse, re -- lieve:
  Be -- cause Thy prom -- ise I be -- lieve,
  O Lamb of God, I come, I come!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Just as I am— Thy love un -- known
  Has bro -- ken ev -- 'ry bar -- rier down:
  Now to be Thine, yea, Thine a -- lone,
  O Lamb of God, I come, I come!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Just " "as " "I " "am, " with "out " "one " "plea, "
  "\nBut " "that " "Thy " "blood " "was " "shed " "for " "me, "
  "\nAnd " "that " "Thou " "bidd'st " "me " "come " "to " "Thee, "
  "\nO " "Lamb " "of " "God, " "I " "come, " "I " "come!\n"

  \set stanza = "2."
  "\nJust " "as " "I " "am— "  "poor " wretch "ed, " "blind, "
  "\nSight, " rich "es, " heal "ing " "of " "the " "mind, "
  "\nYea, " "all " "I " "need, " "in " "Thee " "to " "find, "
  "\nO " "Lamb " "of " "God, " "I " "come, " "I " "come!\n"

  \set stanza = "3."
  "\nJust " "as " "I " "am— " "Thou " "wilt " re "ceive, "
  "\nilt " wel "come, " par "don, " "cleanse, " re "lieve: "
  "\nBe" "cause " "Thy " prom "ise " "I " be "lieve, "
  "\nO " "Lamb " "of " "God, " "I " "come, " "I " "come!\n"

  \set stanza = "4."
  "\nJust " "as " "I " "am— " "Thy " "love " un "known "
  "\nHas " bro "ken " ev "'ry " bar "rier " "down: "
  "\nNow " "to " "be " "Thine, " "yea, " "Thine " a "lone, "
  "\nO " "Lamb " "of " "God, " "I " "come, " "I " "come!\n"
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
