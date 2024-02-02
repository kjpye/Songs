\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Fear Not!"
  subtitle    = "Sankey No. 811"
  subsubtitle = "Sankey 880 No. 472"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. G. Taylor, D.D."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key a \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4 | a r8 e a4 b | cis2. 4 | d4. cis8 b4 a | b2. \bar "|" \break
  e,4 | a4. e8 a4 b | cis2(d4) b | a4. 8 cis4 b | a2.
  \section \sectionLabel \markup\smallCaps Refrain. \break
  a4 | fis4. a8 d4 4 | cis2. d4 | e4. cis8 b4 a | b2. \bar "|" \break
  e,4 | a4. e8 a4 b | cis2(d4) dis | e4. a,8 cis4 b | a2.
}

alto = \relative {
  \autoBeamOff
  e'4 | cis4 r8 cis e4 e | 2. 4 | fis4. e8 4 dis | e2.
  e4 | cis4. 8 e4 gis | a2. fis4 | e4. 8 4 d | cis2. \section
  cis4 | d4. fis8 4 4 | e2. 4 | a4. e8 4 dis | e2.
  e4 | 4. cis8 e4 gis | a2. 4 | 4. 8 4 gis | a2.
}

tenor = \relative {
  \autoBeamOff
  e4 | e4 r8 a8 4 gis4 | a2. 4 | 4. 8 b4 4 | gis2.
  e4 | 4. a8 4 e' | 2(d4) d | cis4. 8 a4 fis | a2. \section
  a4 | 4. 8 4 4 | 2. b4 | cis4. a8 b4 4 | gis2.
  e4 | 4. a8 4 e' | 2(d4) c | cis4. 8 e4 d | cis2.
}

bass = \relative {
  \autoBeamOff
  e4 | a,4 r8 a8 cis4 e | a2. 4 | 4. 8 gis4 fis | e2.
  e4 | a,4. 8 cis4 e | a(g fis) d | e4. 8 4 4 | a,2. \section
  a4 | d4. 8 4 4 | a2. a'4 | 4. 8 gis4 fis | e2.
  e4 | a,4. 8 cis4 e | a(g fis) f | e4. 8 4 4 | a,2.
}

chorus = \lyricmode {
  Fear not! 'tis God's own voice
  That speaks to thee this word;
  Lift up your head: re -- joice
  In Je -- sus Christ thy Lord!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Fear not! God is thy shield,
  And He thy great re -- ward;
  His might has won the field;
  Thy strength is in the Lord!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Fear not! for God has heard
  The cry of thy dis -- tress;
  The wa -- ter of His word
  Thy faint -- ing soul shall bless.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Fear not! be no dis -- mayed!
  He ev -- er -- more will be
  With thee, to give His aid,
  And He will strength -- en thee.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Fear not! ye lit -- tle flock;
  Your Sa -- viour soon will come,
  The glo -- ry to un -- lock
  And bring you to His home!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Fear " "not! " "God " "is " "thy " "shield, "
  "\nAnd " "He " "thy " "great " re "ward; "
  "\nHis " "might " "has " "won " "the " "field; "
  "\nThy " "strength " "is " "in " "the " "Lord! "
  "\nFear " "not! " "'tis " "God's " "own " "voice "
  "\nThat " "speaks " "to " "thee " "this " "word; "
  "\nLift " "up " "your " "head: " re "joice "
  "\nIn " Je "sus " "Christ " "thy " "Lord!\n"

  \set stanza = "2."
  "\nFear " "not! " "for " "God " "has " "heard "
  "\nThe " "cry " "of " "thy " dis "tress; "
  "\nThe " wa "ter " "of " "His " "word "
  "\nThy " faint "ing " "soul " "shall " "bless. "
  "\nFear " "not! " "'tis " "God's " "own " "voice "
  "\nThat " "speaks " "to " "thee " "this " "word; "
  "\nLift " "up " "your " "head: " re "joice "
  "\nIn " Je "sus " "Christ " "thy " "Lord!\n"

  \set stanza = "3."
  "\nFear " "not! " "be " "no " dis "mayed! "
  "\nHe " ev er "more " "will " "be "
  "\nWith " "thee, " "to " "give " "His " "aid, "
  "\nAnd " "He " "will " strength "en " "thee. "
  "\nFear " "not! " "'tis " "God's " "own " "voice "
  "\nThat " "speaks " "to " "thee " "this " "word; "
  "\nLift " "up " "your " "head: " re "joice "
  "\nIn " Je "sus " "Christ " "thy " "Lord!\n"

  \set stanza = "4."
  "\nFear " "not! " "ye " lit "tle " "flock; "
  "\nYour " Sa "viour " "soon " "will " "come, "
  "\nThe " glo "ry " "to " un "lock "
  "\nAnd " "bring " "you " "to " "His " "home! "
  "\nFear " "not! " "'tis " "God's " "own " "voice "
  "\nThat " "speaks " "to " "thee " "this " "word; "
  "\nLift " "up " "your " "head: " re "joice "
  "\nIn " Je "sus " "Christ " "thy " "Lord! "
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
