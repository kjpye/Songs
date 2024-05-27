\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "We Walk by Faith."
  subtitle    = "Sankey No. 842"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 4/4
  \partial 16*5
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s16*5 s1 s2 s8.
  \textMark \markup { \box \bold "B" } s16*5 s1 s2 s8.
  \textMark \markup { \box \bold "C" } s16*5 s1 s2 s8.
  \textMark \markup { \box \bold "D" } s16*5 s1 s2.
  \textMark \markup { \box \bold "E" } s4 s2.*3 s2
  \textMark \markup { \box \bold "F" } s4 s2.*2 s1 s2 s8.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  f'16 g8. f16 | bes2~8.  a16 g8. bes16 | f2~8. \bar "|" \break
  ees16 d8. f16 | bes2~8. d16 c8. bes16 | c2~8. \bar "|" \break
  f,16 d8. f16 | bes2~8. d16 c8. g16 | ees'2~8. \bar "|" \break
  g,16 c8. bes16 | a2~8. ees'16 g,8. a16 | bes2~4
  \section \sectionLabel \markup\smallCaps Chorus. \time 3/4 \break \partial 4
  d4 | bes8. a16 g4 d' | bes8. a16 g4 4 | bes8 8 a^\markup\italic espress. g bes c | d2 \bar "|" \break
  \appoggiatura d8 f4 | d8. c16 bes4 f' | d8. c16 bes4 f \section \time 4/4 g8 8 f bes d4 c | bes2~8.
}

alto = \relative {
  \autoBeamOff \apart
  r16 r4 | r8. d'16 8. 16 8. r16 r4 | r8. d16 8. 16 8.
  r16 r4 | r8. d16 8. 16 8. r16 r4 | r8. ees16 8. 16 8.
  r16 r4 | r8. d16 8. 16 8. r16 r4 | r8. g16 8. 16 8.
  r16 r4 | r8. f16 8. 16 8. r16 r4 | r8. 16 8. 16 4 \section \chord
  f4 | g8. d16 4 fis | g8. d16 4 4 | g8 8 ees8 8 g g | fis2
  f4 | 8. 16 4 a | f8. 16 4 d \section ees8 8 d d f4 ees | d2~8.
}

tenor = \relative {
  \autoBeamOff
  r16 r4 | r8. f16 8. 16 8. r16 r4 | r8. bes16 8. 16 8.
  r16 r4 | r8. f16 8. 16 8. r16 r4 | r8. a16 8. 16 8.
  r16 r4 | r8. f16 8. 16 8. r16 r4 | r8. bes16 8. 16 8.
  r16 r4 | r8. c16 8. 16 8. r16 r4 | r8. f,16 8. 16 4 \section
  bes4 | d8. c16 bes4 a8[d] | 8. c16 bes4 4 | 8 8 c bes g g | a2
  d4 | bes8. ees16 d4 c | bes8. ees16 d4 bes \section 8 8 8 8 4 a | bes2~8.
}

bass = \relative {
  \autoBeamOff
  r16 r4 | r8. bes,16 8. 16 8. r16 r4 | r8. bes16 8. 16 8.
  r16 r4 | r8. bes16 8. 16 8. r16 r4 | r8. f'16 8. 16 8.
  r16 r4 | r8. bes,16 8. 16 8. r16 r4 | r8. ees16 8. 16 8.
  r16 r4 | r8. f16 8. 16 8. r16 r4 | r8. bes,16 8. 16 4 \section
  bes'4 | g8. 16 4 d | g8. 16 4 4 | ees8 8 8 8 8 8 | d2
  bes'4 | 8. 16 4 f | bes8. 16 4 bes, \section ees8 8 f8 8 4 4 | bes,2~8.
}

chorus = \lyricmode {
  We walk by faith, but not a -- lone.
  Our shep -- herd’s ten -- der voice we hear,
  And feel His hand with -- in our own,
  And know that He is al -- ways near.
}

chorusMen = \lyricmode {
  We walk by faith, and oh, how "sweet, etc."
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  We walk by faith, __ and oh, how sweet __
  The flowers that grow __ be -- neath our feet, __
  And fra -- grance breathe __ a -- long the way __
  That leads the soul __ to end -- less day. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  We walk by faith, __ He wills it so, __
  And marks the path __ that we should go; __
  And when at times __ our sky is dim, __
  He gen -- tly draws __ us close to Him. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  We walk by faith, __ di -- vine -- ly blest; __
  On Him we lean, __ in Him we rest: __
  The more we trust __ our Shep -- herd's care, __
  The more His love __ ’tis ours to share. __
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And thus by faith, __ till life shall end, __
  We’ll walk with Him, __ our dear -- est friend, __
  Till safe we tread __ the fields of light, __
  Where faith is lost __ in per -- fect sight. __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "We " "walk " "by " "faith, "  "and " "oh, " "how " "sweet " 
  "\nThe " "flowers " "that " "grow "  be "neath " "our " "feet, " 
  "\nAnd " fra "grance " "breathe "  a "long " "the " "way " 
  "\nThat " "leads " "the " "soul "  "to " end "less " "day. " 
  "\nWe " "walk " "by " "faith, " "but " "not " a "lone. "
  "\nOur " shep "herd’s " ten "der " "voice " "we " "hear, "
  "\nAnd " "feel " "His " "hand " with "in " "our " "own, "
  "\nAnd " "know " "that " "He " "is " al "ways " "near.\n"

  \set stanza = "2."
  "\nWe " "walk " "by " "faith, "  "He " "wills " "it " "so, " 
  "\nAnd " "marks " "the " "path "  "that " "we " "should " "go; " 
  "\nAnd " "when " "at " "times "  "our " "sky " "is " "dim, " 
  "\nHe " gen "tly " "draws "  "us " "close " "to " "Him. " 
  "\nWe " "walk " "by " "faith, " "but " "not " a "lone. "
  "\nOur " shep "herd’s " ten "der " "voice " "we " "hear, "
  "\nAnd " "feel " "His " "hand " with "in " "our " "own, "
  "\nAnd " "know " "that " "He " "is " al "ways " "near.\n"

  \set stanza = "3."
  "\nWe " "walk " "by " "faith, "  di vine "ly " "blest; " 
  "\nOn " "Him " "we " "lean, "  "in " "Him " "we " "rest: " 
  "\nThe " "more " "we " "trust "  "our " Shep "herd's " "care, " 
  "\nThe " "more " "His " "love "  "’tis " "ours " "to " "share. " 
  "\nWe " "walk " "by " "faith, " "but " "not " a "lone. "
  "\nOur " shep "herd’s " ten "der " "voice " "we " "hear, "
  "\nAnd " "feel " "His " "hand " with "in " "our " "own, "
  "\nAnd " "know " "that " "He " "is " al "ways " "near.\n"

  \set stanza = "4."
  "\nAnd " "thus " "by " "faith, "  "till " "life " "shall " "end, " 
  "\nWe’ll " "walk " "with " "Him, "  "our " dear "est " "friend, " 
  "\nTill " "safe " "we " "tread "  "the " "fields " "of " "light, " 
  "\nWhere " "faith " "is " "lost "  "in " per "fect " "sight. " 
  "\nWe " "walk " "by " "faith, " "but " "not " a "lone. "
  "\nOur " shep "herd’s " ten "der " "voice " "we " "hear, "
  "\nAnd " "feel " "His " "hand " with "in " "our " "own, "
  "\nAnd " "know " "that " "He " "is " al "ways " "near. "
}

\book {
  \paper {
    output-suffix = midi
  }
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidi
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
  \paper {
    output-suffix = midi-sop
  }
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
  \paper {
    output-suffix = repeat
  }
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
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
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

\book {
  \paper {
    output-suffix = singlepage
  }
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
