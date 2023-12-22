\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Bring them in!"
  subtitle    = "Sankey No. 752"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. A. Ogden."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Alexcenah Thomas."
  meter       = \markup\smallCaps "L.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
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
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 8. f16 ees4 c' | 4 bes4 4. r8 | ees,4 8. f16 ees4 bes' | 4 aes4 4. r8 |
  ees4 8. f16 ees4 c' | c bes des4. r8 | 4 c8. bes16 aes4 ees | c'4. bes8 aes4. r8
  \section \sectionLabel \markup\smallCaps "Chorus." |
  c4 ees, c'2 | des4 f, des'2 | c4 4 8[bes] aes8. c16| bes4 4 4 r |
  c4 ees, c'2 | des4 f, des'2 | c4 4 8 bes aes8. c16 | bes2 aes4. r8 |
}

alto = \relative {
  \autoBeamOff
  c'4 8 . des16 c4 ees | 4 4 4. r8 | des4 8. 16 4 4 | 4 c4 4. r8 |
  c4 8. des16 c4 ees | f4 4 4. r8 | 4 8. 16 ees4 4 | 4. des8 c4. r8 \section |
  es4 c ees2 | f4 des f2 | ees4 4 4 8. 16 | 4 d ees r |
  ees4 c ees2 | f4 des f2 | ees4 4 8 8 8. 16 | des2 c4. r8 |
}

tenor = \relative {
  \autoBeamOff
  aes4 8. 16 4 4 | 4 g4 4. r8 | 4 8. 16 4 ees | 4 aes4 4. r8 |
  aes4 8. 16 4 4 | f f bes4. r8 | 4 a8. bes16 c4 4 | aes4. g8 aes4. r8 |
  aes4 4 2 | 4 4 2 | 4 4 8[g] aes8. 16 | g4 f g r |
  aes4 4 2 | 4 4 2 | 4 4 8 g aes8. 16 | g2 aes4. r8 |
}

bass = \relative {
  \autoBeamOff
  aes,4 8. 16 4 4 | ees'4 4 4. r8 | 4 8. 16 4 4 | aes,4 4 4. r8 |
  aes4 8. 16 4 4 | des4 4 bes4. r8 | bes4 c8. des16 ees4 4 | 4. 8 aes,4. r8 |
  aes4 4 2 | des4 4 2 | aes4 4 8[bes] c8. 16 | ees4 bes ees r |
  aes,4 4 2 | des4 4 2 | aes4 4 8 bes c8. aes16 | ees'2 aes,4. r8 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Bring them in, bring them in!
  Bring them in from the fields of sin;
  Bring them in, bring them in!
  Bring the wand -- 'ring ones to Je -- sus.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Hark! 'tis the Shep -- herd's voice I hear,
  Out in the des -- ert dark and drear,
  Call -- ing the sheep who've gone a -- stray,
  Far from the Shep -- herd's fold a -- way.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Who'll go and help this Shep -- herd kind,
  Help Him the wand -- 'ring ones to find?
  Who'll bring the lost ones to the fold.
  Where they'll be shel -- tered from the cold?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Out in the des -- ert hear their cry,
  Out on the moun -- tain wild and high;
  Hark! 'tis the Mas -- ter speaks to thee:
  “Go, find My sheep, wher -- e'er they be.”
}
  
wordsMidi = \lyricmode {
  "Hark! " "'tis " "the " Shep "herd's " "voice " "I " "hear, "
  "\nOut " "in " "the " des "ert " "dark " "and " "drear, "
  "\nCall" "ing " "the " "sheep " "who've " "gone " a "stray, "
  "\nFar " "from " "the " Shep "herd's " "fold " a "way. "
  "\nBring " "them " "in, " "bring " "them " "in! "
  "\nBring " "them " "in " "from " "the " "fields " "of " "sin; "
  "\nBring " "them " "in, " "bring " "them " "in! "
  "\nBring " "the " wand "'ring " "ones " "to " Je "sus.\n"

  \set stanza = "2."
  "\nWho'll " "go " "and " "help " "this " Shep "herd " "kind, "
  "\nHelp " "Him " "the " wand "'ring " "ones " "to " "find? "
  "\nWho'll " "bring " "the " "lost " "ones " "to " "the " "fold. "
  "\nWhere " "they'll " "be " shel "tered " "from " "the " "cold? "
  "\nBring " "them " "in, " "bring " "them " "in! "
  "\nBring " "them " "in " "from " "the " "fields " "of " "sin; "
  "\nBring " "them " "in, " "bring " "them " "in! "
  "\nBring " "the " wand "'ring " "ones " "to " Je "sus.\n"

  \set stanza = "3."
  "\nOut " "in " "the " des "ert " "hear " "their " "cry, "
  "\nOut " "on " "the " moun "tain " "wild " "and " "high; "
  "\nHark! " "'tis " "the " Mas "ter " "speaks " "to " "thee: "
  "\n“Go, " "find " "My " "sheep, " wher "e'er " "they " "be.” "
  "\nBring " "them " "in, " "bring " "them " "in! "
  "\nBring " "them " "in " "from " "the " "fields " "of " "sin; "
  "\nBring " "them " "in, " "bring " "them " "in! "
  "\nBring " "the " wand "'ring " "ones " "to " Je "sus. "
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
