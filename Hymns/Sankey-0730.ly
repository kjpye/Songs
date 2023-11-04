\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Calm Me, my God!"
  subtitle    = "Sankey No. 730"
  subsubtitle = "Sankey 880 No. 658"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Clarke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "H. Bonar, D.D."
  meter       = \markup\smallCaps "C.M."
  piece       = \markup\smallCaps "St. Magnus."

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
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4 | a b gis e | a b cis b | cis a cis dis | e2. \bar "|" \break
  b4 | cis b a gis | fis b gis e | e' d cis b | a2.
}

alto = \relative {
  \autoBeamOff
  cis'4 | fis4 4 e e | e d cis e | e e a a | gis2.
  gis4 | a gis fis eis | fis fis e e | e fis e e8[d] | cis2.
}

tenor = \relative {
  \autoBeamOff
  a4 | cis d b gis | a fis8[gis] a4 gis | a cis e a, | b2.
  e4 | e d cis b | a d b gis | a a a gis | a2.
}

bass = \relative {
  \autoBeamOff
  a4 | fis d e e8[d] | cis4 b a e' | a cis a fis | e2.
  e4 | a e fis cis | d b e e8[d] | cis4 d e e | a,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Calm me, my God, and keep me calm;
  Let Thine out -- stretch -- éd wing
  Be like the shade of E -- lim's palm,
  Be -- side her des -- ert spring.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Yes, keep me calm, tho' loud and rude
  The sounds my ear that greet—
  Calm in the clo -- set's sol -- i -- tude,
  Calm in the bust -- ling street;
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Calm in the hour of buoy -- and health,
  Calm in my hour of pain,
  Calm in my pov -- er -- ty or wealth,
  Calm in my loss or gain;
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Calm in the suff -- er -- ance of wrong,
  Like Him, who bore my shame'
  Calm 'mid the threat -- 'ning, taunt -- ing throng,
  Who hate Thy ho -- ly name.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Calm me, my God, and keep me calm,
  Soft rest -- ing on Thy breast;
  Soothe me with ho -- ly hymn and psalm,
  And bid my spi -- rit rest.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Calm " "me, " "my " "God, " "and " "keep " "me " "calm; "
  "\nLet " "Thine " out stretch "éd " "wing "
  "\nBe " "like " "the " "shade " "of " E "lim's " "palm, "
  "\nBe" "side " "her " des "ert " "spring.\n"

  \set stanza = "2."
  "\nYes, " "keep " "me " "calm, " "tho' " "loud " "and " "rude "
  "\nThe " "sounds " "my " "ear " "that " "greet— "
  "\nCalm " "in " "the " clo "set's " sol i "tude, "
  "\nCalm " "in " "the " bust "ling " "street;\n"

  \set stanza = "3."
  "\nCalm " "in " "the " "hour " "of " buoy "and " "health, "
  "\nCalm " "in " "my " "hour " "of " "pain, "
  "\nCalm " "in " "my " pov er "ty " "or " "wealth, "
  "\nCalm " "in " "my " "loss " "or " "gain;\n"

  \set stanza = "4."
  "\nCalm " "in " "the " suff er "ance " "of " "wrong, "
  "\nLike " "Him, " "who " "bore " "my " "shame' "
  "\nCalm " "'mid " "the " threat "'ning, " taunt "ing " "throng, "
  "\nWho " "hate " "Thy " ho "ly " "name.\n"

  \set stanza = "5."
  "\nCalm " "me, " "my " "God, " "and " "keep " "me " "calm, "
  "\nSoft " rest "ing " "on " "Thy " "breast; "
  "\nSoothe " "me " "with " ho "ly " "hymn " "and " "psalm, "
  "\nAnd " "bid " "my " spi "rit " "rest. "
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

#(set-global-staff-size 19)

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
