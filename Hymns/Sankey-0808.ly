\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "There is Joy in the Service."
  subtitle    = "Sankey No. 808"
  subsubtitle = "C. C. No. 18"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Lyman G. Cuyler."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2. s4. s4
  \textMark \markup { \box \bold "B" } s8 s2. s4. s4
  \textMark \markup { \box \bold "C" } s8 s2. s4. s4
  \textMark \markup { \box \bold "D" } s8 s2. s4. s8
  \textMark \markup { \box \bold "E" } s4 s2. s4. s4
  \textMark \markup { \box \bold "F" } s8 s2. s4. s4
  \textMark \markup { \box \bold "G" } s8 s2. s4. s4
  \textMark \markup { \box \bold "H" } s8 s2. s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'16 f | a8. 16 8 8 bes a | 8 g8. 16 4 \bar "|" \break
  c,16 e | g8. 16 8 8 a g | g f d c4 \bar "|" \break
  c16 f | a8. 16 8 8 c c | c bes bes f4 \bar "|" \break
  f16 g | a8. 16 bes8 a16 8. g8 | f4.~8
  \section \sectionLabel \markup\smallCaps Chorus. \break
  a8 bes | c8. 16 8 16 d8. a8 | c b8 8 4 \bar "|" \break
  g16 a | bes8. 16 8 8 g c | bes a8 8 4 \bar "|" \break
  a16 bes | c8. 16 8 a bes c | e8. d16 8 4 \bar "|" \break
  f,16 g | a8. bes16 a8 g16 d8. e8 | f4.~4
}

alto = \relative {
  \autoBeamOff
  c'16 16 | f8. 16 8 8 8 8 | 8 e8. 16 4
  c16 c | e8. 16 8 8 8 c | c c b c4
  c16 c | f8. 16 8 8 8 ees | d8 8 8 4
  f16 f | 8. 16 8 e16 8. 8 | f4.~8 \section
  c8 c | f8. 16 8 fis16 8. 8 | a g8 8 4
  e16 f | g8. 16 8 8 e g | g f8 8 4
  f16 f | 8. 16 8 8 e f | 8. 16 8 4
  f16 e | f8. 16 8 d16 8. c8 | 4.~4
}

tenor = \relative {
  \autoBeamOff
  a16 16 | c8. 16 8 8 d c | 8 8. 16 4
  e,16 g | bes8. 16 8 8 c bes | a a gis a4
  a16 a | c8. 16 8 8 a a | bes8 8 8 4
  d16 des | c8. 16 d8 c16 8. bes8 | a4.~8 \section
  f8 g | a8. 16 8 16 8. d8 | d8 8 8 4
  c16 c | 8. 16 8 8 8 8 | 8 8 8 4
  c16 c | 8. 16 8 8 8 8 | 8. bes16 8 4
  c16 c | 8. d16 c8 bes16 g8. bes8 | a4.~4
}

bass = \relative {
  \autoBeamOff
  f16 16 | 8. 16 8 8 8 8 | c8 8. 16 4
  c16 c | 8. 16 8 8 8 8 | f8 8 8 4
  f16 f | 8. 16 8 8 8 8 | bes,8 8 8 4
  bes16 16 | c8. 16 8 16 8. 8 | f4.~8 \section
  f8 8 | 8. 16 8 d16 8. 8 | g8 8 8 4
  c,16 c | 8. 16 8 8 8 e | f8 8 8 4
  f16 g | a8. 16 8 f g a | bes8. 16 8 bes,4
  a16 c | f8. 16 8 bes,16 8. c8 | f4.~4
}

chorus = \lyricmode {
  There is joy in the ser -- vice of Je -- sus our Lord,
  There is ful -- ness of joy and e -- ter -- nal re -- ward;
  There is joy that a -- bi -- deth, Our souls know it well,
  There is joy that we nev -- er can tell. __
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  There is joy in the ser -- vice of Je -- sus our Lord,
  There is joy in re -- pos -- ing our faith in His word;
  There is joy in con -- fi -- ding our all to His care,
  There is joy in sweet an -- swers to prayer.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  There is joy when we slum -- ber and joy when we wake,
  There is joy when we suf -- fer er -- proach for His sake;
  Though our path -- way through life may be toil -- some and long,
  We will bright -- en the jour -- ney with song.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  There is joy when He calls us His work -- ers to be,
  There is joy in af -- flic -- tion— His hand we can see;
  There is joy in temp -- ta -- tion, for then we can hide
  In His arms, who was temp -- ted and tried.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "is " "joy " "in " "the " ser "vice " "of " Je "sus " "our " "Lord, "
  "\nThere " "is " "joy " "in " re pos "ing " "our " "faith " "in " "His " "word; "
  "\nThere " "is " "joy " "in " con fi "ding " "our " "all " "to " "His " "care, "
  "\nThere " "is " "joy " "in " "sweet " an "swers " "to " "prayer. "
  "\nThere " "is " "joy " "in " "the " ser "vice " "of " Je "sus " "our " "Lord, "
  "\nThere " "is " ful "ness " "of " "joy " "and " e ter "nal " re "ward; "
  "\nThere " "is " "joy " "that " a bi "deth, " "Our " "souls " "know " "it " "well, "
  "\nThere " "is " "joy " "that " "we " nev "er " "can " "tell.\n" 

  \set stanza = "2."
  "\nThere " "is " "joy " "when " "we " slum "ber " "and " "joy " "when " "we " "wake, "
  "\nThere " "is " "joy " "when " "we " suf "fer " re "proach " "for " "His " "sake; "
  "\nThough " "our " path "way " "through " "life " "may " "be " toil "some " "and " "long, "
  "\nWe " "will " bright "en " "the " jour "ney " "with " "song. "
  "\nThere " "is " "joy " "in " "the " ser "vice " "of " Je "sus " "our " "Lord, "
  "\nThere " "is " ful "ness " "of " "joy " "and " e ter "nal " re "ward; "
  "\nThere " "is " "joy " "that " a bi "deth, " "Our " "souls " "know " "it " "well, "
  "\nThere " "is " "joy " "that " "we " nev "er " "can " "tell.\n" 

  \set stanza = "3."
  "\nThere " "is " "joy " "when " "He " "calls " "us " "His " work "ers " "to " "be, "
  "\nThere " "is " "joy " "in " af flic "tion— " "His " "hand " "we " "can " "see; "
  "\nThere " "is " "joy " "in " temp ta "tion, " "for " "then " "we " "can " "hide "
  "\nIn " "His " "arms, " "who " "was " temp "ted " "and " "tried. "
  "\nThere " "is " "joy " "in " "the " ser "vice " "of " Je "sus " "our " "Lord, "
  "\nThere " "is " ful "ness " "of " "joy " "and " e ter "nal " re "ward; "
  "\nThere " "is " "joy " "that " a bi "deth, " "Our " "souls " "know " "it " "well, "
  "\nThere " "is " "joy " "that " "we " nev "er " "can " "tell. " 
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
