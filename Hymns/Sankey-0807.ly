\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Wake, Brethren, Wake!"
  subtitle    = "Sankey No. 807"
  subsubtitle = "N. H. No. 37"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = "Anon."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*3
  \textMark \markup { \box \bold "B" }    s1*2 s2
  \textMark \markup { \box \bold "C" } s2 s1*2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 e8 f g a g4 | e'4 d8. 16 c4 r | g e8 f g a g4 |
  e'4 d8. 16 c4 r | c b8 a a g g4 | b8 b a b \bar "|" \break
  c8 d e4 | c b8 a a g8 4 | e' d8. 16 c2 |
}

alto = \relative {
  \autoBeamOff
  e'4 c8 d e f e4 | g4 f8. 16 e4 r | e c8 d e f e4 |
  g4 f8. 16 e4 r | a g8 f f e8 4 | f8 8 8 8
  e8 f g4 | a4 g8 f f e8 4 | g4 f8. 16 e2 |
}

tenor = \relative {
  \autoBeamOff
  c'4 g8 g c c c4 | c b8. 16 c4 r | c g8 8 c8 8 4 |
  c4 b8. 16 c4 r | c4 8 8 8 8 4 | d8 d c d
  c8 8 4 | c4 8 8 8 8 4 | 4 b8. g16 2 |
}

bass = \relative {
  \autoBeamOff
  c4 8 8 8 8 4 | c g8. 16 c4 r | c4 8 8 8 8 4 |
  c4 g8. 16 c4 r | f4 8 8 c8 8 4 | g'8 8 8 8
  c,8 8 4 | g4 8 8 c8 8 4 | g4 8. 16 c2 |
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Hark! 'tis the watch -- man's cry.
  “Wake, breth -- ren, wake!”
  Je -- sus Him -- self is nigh,
  Wake, bre -- thren, wake!
  Sleep is for sons of night,
  Ye are chil -- dren of the light,
  Yours is the glo -- ry bright:
  Wake, bre -- thren, wake!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Call to each wak -- 'ning band,
  “Watch, breth -- ren, watch!”
  Clear is our Lord's com -- mand,
  “Watch, bre -- thren watch!”
  Be ye as men that wait,
  Rea -- dy at their Mas -- ter's gate,
  E'en though He tar -- ry late,
  Watch, bre -- thren, watch!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Heed we the Mas -- ter's call,
  “Work, breth -- ren, work!”
  There's room e -- nough for all:
  Work, bre -- thren, work!
  This vine -- yard of the Lord
  Con -- stant la -- bour doth af -- ford;
  Yours is a sure re -- ward:
  Work, bre -- thren, work!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Hear we the Shep -- herd's voice,
  “Pray, breth -- ren, pray!”
  Would ye His heart re -- joice?—
  Pray, bre -- thren, pray!
  Sin calls for cease -- less care,
  Weak -- ness needs the Stron One near;
  Long as ye tar -- ry here,
  Pray, bre -- thren, pray!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hark! " "'tis " "the " watch "man's " "cry. "
  "\n“Wake, " breth "ren, " "wake!” "
  "\nJe" "sus " Him "self " "is " "nigh, "
  "\nWake, " bre "thren, " "wake! "
  "\nSleep " "is " "for " "sons " "of " "night, "
  "\nYe " "are " chil "dren " "of " "the " "light, "
  "\nYours " "is " "the " glo "ry " "bright: "
  "\nWake, " bre "thren, " "wake!\n"

  \set stanza = "2."
  "\nCall " "to " "each " wak "'ning " "band, "
  "\n“Watch, " breth "ren, " "watch!” "
  "\nClear " "is " "our " "Lord's " com "mand, "
  "\n“Watch, " bre "thren " "watch!” "
  "\nBe " "ye " "as " "men " "that " "wait, "
  "\nRea" "dy " "at " "their " Mas "ter's " "gate, "
  "\nE'en " "though " "He " tar "ry " "late, "
  "\nWatch, " bre "thren, " "watch!\n"

  \set stanza = "3."
  "\nHeed " "we " "the " Mas "ter's " "call, "
  "\n“Work, " breth "ren, " "work!” "
  "\nThere's " "room " e "nough " "for " "all: "
  "\nWork, " bre "thren, " "work! "
  "\nThis " vine "yard " "of " "the " "Lord "
  "\nCon" "stant " la "bour " "doth " af "ford; "
  "\nYours " "is " "a " "sure " re "ward: "
  "\nWork, " bre "thren, " "work!\n"

  \set stanza = "4."
  "\nHear " "we " "the " Shep "herd's " "voice, "
  "\n“Pray, " breth "ren, " "pray!” "
  "\nWould " "ye " "His " "heart " re "joice?— "
  "\nPray, " bre "thren, " "pray! "
  "\nSin " "calls " "for " cease "less " "care, "
  "\nWeak" "ness " "needs " "the " "Stron " "One " "near; "
  "\nLong " "as " "ye " tar "ry " "here, "
  "\nPray, " bre "thren, " "pray! "
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
