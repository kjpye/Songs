\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come unto Me, ye Weary."
  subtitle    = "Sankey No. 738"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "7.6."
%   piece       = \markup\smallCaps ""

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
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
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 a g e2 c'4 | 2. d2 r4 | a a a b2 a4 | g2.~2 r4 |
  g4 a g e2 c'4 | 2. b2 r4 | d4 d d e2 d4 | c2.~2 r4 |
  \section \sectionLabel \markup\smallCaps Chorus. \break
  g2 r4 c2 r4 | c b a b2 r4 | d d d c2 b4 | c2.(g2) r4 |
  g2 r4 c2 r4 | c b a b2 r4 | d d d e2 d4 | c2.~2 r4 |
}

alto = \relative {
  \autoBeamOff
  e'4 f e c2 e4 | 2. d2 r4 | f f f f2 4 | e2.~2 r4 |
  e4 f e c2 e4 | 2. d2 r4 | f f f g2 f4 | e2.~2 r4 |
  e2 r4 e2 r4 | f f f f2 r4 | f f f e2 f4 | e2.~2 r4 |
  e2 r4 e2 r4 | f f f f2 r4 | f f f g2 f4 | e2.~2 r4 |
}

tenor = \relative {
  \autoBeamOff
  c'4 4 4 g2 4 | g2. 2 r4 | c c c d2 b4 | c2.~2 r4 |
  c4 c c g2 4 | 2. 2 r4 | b4 4 4 2 4 | c2.~2 r4 | \section
  c2 r4 g2 r4 | 4 4 4 2 r4 | b b b c2 d4 | c2.~2 r4 |
  c2 r4 g2 r4 | 4 4 4 2 r4 | b4 4 4 2 4 | c2.~2 r4 |
}

bass = \relative {
  \autoBeamOff
  c4 4 4 2 4 | g'2. 2 r4 | g g g g,2 4 | c2.~2 r4 |
  c4 4 4 2 4 | g'2. 2 r4 | 4 4 4 2 4 | c,2.~2 r4 |
  c2 r4 c2 r4 | d4 4 4 2 r4 | g g g g2 4 | c,2.~2 r4 |
  c2 r4 c2 r4 | d4 4 4 2 r4 | g g g g2 4 | c,2.~2 r4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Come, come, come un -- to Me,
  Wea -- ry and sore dis -- tressed;
  Come, come, come un -- to Me,
  Come un -- to Me and rest.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Come un -- to me, ye wea -- ry,
  Sor -- row -- ing ones op -- pressed;
  I am your ten -- der Shep -- herd,
  Wait -- ing to give your rest.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come un -- to me, ye wea -- ry,
  List to the voice so clear,
  Sweet -- er than an -- gel mu -- sic
  Fall -- ing up -- on the ear.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come un -- to me, ye wea -- ry,
  List to that voice a -- gain,
  O -- ver the bar -- ren moun -- tain,
  O -- ver the lone -- ly plain.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come un -- to me, ye wea -- ry,
  Why will ye long -- er roam?
  Come to the arms of mer -- cy,
  Come to a Fath -- er's home!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come " un "to " "me, " "ye " wea "ry, "
  "\nSor" row "ing " "ones " op "pressed; "
  "\nI " "am " "your " ten "der " Shep "herd, "
  "\nWait" "ing " "to " "give " "your " "rest. "
  "\nCome, " "come, " "come " un "to " "Me, "
  "\nWea" "ry " "and " "sore " dis "tressed; "
  "\nCome, " "come, " "come " un "to " "Me, "
  "\nCome " un "to " "Me " "and " "rest.\n"

  \set stanza = "2."
  "\nCome " un "to " "me, " "ye " wea "ry, "
  "\nList " "to " "the " "voice " "so " "clear, "
  "\nSweet" "er " "than " an "gel " mu "sic "
  "\nFall" "ing " up "on " "the " "ear. "
  "\nCome, " "come, " "come " un "to " "Me, "
  "\nWea" "ry " "and " "sore " dis "tressed; "
  "\nCome, " "come, " "come " un "to " "Me, "
  "\nCome " un "to " "Me " "and " "rest.\n"

  \set stanza = "3."
  "\nCome " un "to " "me, " "ye " wea "ry, "
  "\nList " "to " "that " "voice " a "gain, "
  "\nO" "ver " "the " bar "ren " moun "tain, "
  "\nO" "ver " "the " lone "ly " "plain. "
  "\nCome, " "come, " "come " un "to " "Me, "
  "\nWea" "ry " "and " "sore " dis "tressed; "
  "\nCome, " "come, " "come " un "to " "Me, "
  "\nCome " un "to " "Me " "and " "rest.\n"

  \set stanza = "4."
  "\nCome " un "to " "me, " "ye " wea "ry, "
  "\nWhy " "will " "ye " long "er " "roam? "
  "\nCome " "to " "the " "arms " "of " mer "cy, "
  "\nCome " "to " "a " Fath "er's " "home! "
  "\nCome, " "come, " "come " un "to " "Me, "
  "\nWea" "ry " "and " "sore " dis "tressed; "
  "\nCome, " "come, " "come " un "to " "Me, "
  "\nCome " un "to " "Me " "and " "rest. "
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
