\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus is Passing By!"
  subtitle    = "Sankey No. 375"
  subsubtitle = "N. H. No. 117"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "F. E. Hewitt."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key des \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8 s2.*3 s4. s4
  \mark \markup { \box "B" } s8 s2.*4
  \mark \markup { \box "C" }    s2.*4
  \mark \markup { \box "D" }    s2.*3
  \mark \markup { \box "E" }    s2.*4 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  aes'8\omit\mf
  f4 8 ees4 des8
  f4 ges8 aes4.
  des8. ees16 des8 aes4 f8
  ees4.(aes4) \bar "|" \break ges8
  f4 ees8 des4 f8 % B
  aes4 bes8 des4 8
  c8.[des16] c8 4 bes8
  aes4.~4 r8 \break
  des4.^\markup\smallCaps Chorus. ~4 f,8 % C
  ees4.~4 r8
  ges4.^\p ~4 aes8
  f4.~4 r8 \break
  aes8. 16 8 4 des8 % D
  des4 c8 4.
  aes8. 16 8 4 ees'8 \break
  ees4 des8 4. % E
  des4.~8[f,] bes
  aes4.~4 r8
  ges4.^\p ~8[c,] ees
  des4.^\markup\italic rit. ~4
}

alto = \relative {
  \autoBeamOff
  f'8\omit\mf
  des4 8 4 8
  des4 ees8 f4.
  f8. ges16 f8 4 des8
  c4.~4 8
  des4 8 4 8 % B
  f4 ges8 f4 8
  ees4 8 4 des8
  c4.(ges'4) r8
  f4.~4 des8 % C
  c4.~4 r8
  ees4.^\p ~4 c8
  des4.~4 r8
  f8. 16 8 4 8 % D
  f4 ees8 4.
  ges8. 16 8 4 8
  f4 8 4. % E
  f4.~8[des] ges
  f4.~4 r8
  c4\omit\p 8 4 \once\partCombineApart r8
  aes4 bes8 aes4
}

tenor = \relative {
  \autoBeamOff
  aes8\omit\mf
  aes4 8 ges4 f8
  aes4  des8 4.
  aes8. 16 8 des4 aes8
  aes4.(ees4) aes8
  aes4 ges8 f4 aes8 % B
  des4 8 aes4 8
  aes8.[bes16] aes8 4 g8
  aes4.(c4) r8
  aes4 8 4 r8 % C
  aes4 8 4 r8
  c4^\p 8 4 r8
  aes4 8 4 r8
  des8. 16 8 4 aes8 % D
  aes4 8 4.
  c8. 16 8 4 8
  des4 aes8 4. % E
  aes4 8 4 r8
  des4 8 4 r8
  aes4^\p ees8 4 r8
  f4 ges8 f4
}

bass = \relative {
  \autoBeamOff
  des8\omit\mf
  des4 8 4 8
  des4 8 4.
  des8. 16 8 4 8
  aes4.~4 8
  des4 8 4 8 % B
  des4 8 4 8
  ees4 8 4 8
  aes,4.~4 r8
  des4 8 4 r8 % C
  aes4 8 4 r8
  aes'4 8 4 r8
  des,4 8 4 r8
  des8. 16 8 4 8 % D
  aes'4 8 4.
  aes8. 16 8 4 8
  des,4 8 4. % E
  des4 8 4 r8
  des4 8 4 r8
  aes'4^\p aes,8 4 r8
  des4 8 4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Pass -- ing by! __ pass -- ing by! __
  Has -- ten to meet Him on the way,
  Je -- sus is pass -- ing by to -- day!
  pass -- ing by! __ pass -- ing by! __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  Pass -- ing by! pass -- ing by!
  pass -- ing by! pass -- ing by!
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  Pass -- ing by! pass -- ing by!
  pass -- ing by! pass -- ing by!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, wea -- ry one, and find sweet rest:
  Je -- sus is pass -- ing by!
  Come where the long -- ing heart is blest,
  And on His word re -- ly.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come, bur -- den'd one, bring all your care:
  Je -- sus is pass -- ing by!
  The love that lis -- tens to your prayer
  Will "\"no" good "thing\"" de -- ny.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come, hun -- gry one, and tell your need:
  Je -- sus is pass -- ing by!
  The Bread of Life your soul will feed,
  And ful -- ly sat -- is -- fy.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Come, con -- trite one, and seek His grace:
  Je -- sus is pass -- ing by!
  See in His re -- con -- cil -- ed face,
  The sun -- shine of the sky.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Come, " wea "ry " "one, " "and " "find " "sweet " "rest: "
  "\nJe" "sus " "is " pass "ing " "by! "
  "\nCome " "where " "the " long "ing " "heart " "is " "blest, "
  "\nAnd " "on " "His " "word " re "ly. "
  "\nPass" "ing " "by! "  pass "ing " "by! " 
  "\nHas" "ten " "to " "meet " "Him " "on " "the " "way, "
  "\nJe" "sus " "is " pass "ing " "by " to "day! "
  "\npass" "ing " "by! "  pass "ing " "by! " 

  \set stanza = "2."
  "\nCome, " bur "den'd " "one, " "bring " "all " "your " "care: "
  "\nJe" "sus " "is " pass "ing " "by! "
  "\nThe " "love " "that " lis "tens " "to " "your " "prayer "
  "\nWill " "\"no " "good " "thing\" " de "ny. "
  "\nPass" "ing " "by! "  pass "ing " "by! " 
  "\nHas" "ten " "to " "meet " "Him " "on " "the " "way, "
  "\nJe" "sus " "is " pass "ing " "by " to "day! "
  "\npass" "ing " "by! "  pass "ing " "by! " 

  \set stanza = "3."
  "\nCome, " hun "gry " "one, " "and " "tell " "your " "need: "
  "\nJe" "sus " "is " pass "ing " "by! "
  "\nThe " "Bread " "of " "Life " "your " "soul " "will " "feed, "
  "\nAnd " ful "ly " sat is "fy. "
  "\nPass" "ing " "by! "  pass "ing " "by! " 
  "\nHas" "ten " "to " "meet " "Him " "on " "the " "way, "
  "\nJe" "sus " "is " pass "ing " "by " to "day! "
  "\npass" "ing " "by! "  pass "ing " "by! " 

  \set stanza = "4."
  "\nCome, " con "trite " "one, " "and " "seek " "His " "grace: "
  "\nJe" "sus " "is " pass "ing " "by! "
  "\nSee " "in " "His " re con cil "ed " "face, "
  "\nThe " sun "shine " "of " "the " "sky. "
  "\nPass" "ing " "by! "  pass "ing " "by! " 
  "\nHas" "ten " "to " "meet " "Him " "on " "the " "way, "
  "\nJe" "sus " "is " pass "ing " "by " to "day! "
  "\npass" "ing " "by! "  pass "ing " "by! " 
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Come, " wea "ry " "one, " "and " "find " "sweet " "rest: "
  "\nJe" "sus " "is " pass "ing " "by! "
  "\nCome " "where " "the " long "ing " "heart " "is " "blest, "
  "\nAnd " "on " "His " "word " re "ly. "
  "\nPass" "ing " "by! "  pass "ing " "by! " 
  "\nHas" "ten " "to " "meet " "Him " "on " "the " "way, "
  "\nJe" "sus " "is " pass "ing " "by " to "day! "
  "\npass" "ing " "by! "  pass "ing " "by! " pass "ing " "by! "

  \set stanza = "2."
  "\nCome, " bur "den'd " "one, " "bring " "all " "your " "care: "
  "\nJe" "sus " "is " pass "ing " "by! "
  "\nThe " "love " "that " lis "tens " "to " "your " "prayer "
  "\nWill " "\"no " "good " "thing\" " de "ny. "
  "\nPass" "ing " "by! "  pass "ing " "by! " 
  "\nHas" "ten " "to " "meet " "Him " "on " "the " "way, "
  "\nJe" "sus " "is " pass "ing " "by " to "day! "
  "\npass" "ing " "by! "  pass "ing " "by! " pass "ing " "by! "

  \set stanza = "3."
  "\nCome, " hun "gry " "one, " "and " "tell " "your " "need: "
  "\nJe" "sus " "is " pass "ing " "by! "
  "\nThe " "Bread " "of " "Life " "your " "soul " "will " "feed, "
  "\nAnd " ful "ly " sat is "fy. "
  "\nPass" "ing " "by! "  pass "ing " "by! " 
  "\nHas" "ten " "to " "meet " "Him " "on " "the " "way, "
  "\nJe" "sus " "is " pass "ing " "by " to "day! "
  "\npass" "ing " "by! "  pass "ing " "by! " pass "ing " "by! "

  \set stanza = "4."
  "\nCome, " con "trite " "one, " "and " "seek " "His " "grace: "
  "\nJe" "sus " "is " pass "ing " "by! "
  "\nSee " "in " "His " re con cil "ed " "face, "
  "\nThe " sun "shine " "of " "the " "sky. "
  "\nPass" "ing " "by! "  pass "ing " "by! " 
  "\nHas" "ten " "to " "meet " "Him " "on " "the " "way, "
  "\nJe" "sus " "is " pass "ing " "by " to "day! "
  "\npass" "ing " "by! "  pass "ing " "by! " pass "ing " "by! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Come, " wea "ry " "one, " "and " "find " "sweet " "rest: "
  "\nJe" "sus " "is " pass "ing " "by! "
  "\nCome " "where " "the " long "ing " "heart " "is " "blest, "
  "\nAnd " "on " "His " "word " re "ly. "
  "\nPass" "ing " "by! "  pass "ing " "by! "  pass "ing " "by! "  pass "ing " "by! " 
  "\nHas" "ten " "to " "meet " "Him " "on " "the " "way, "
  "\nJe" "sus " "is " pass "ing " "by " to "day! "
  "\npass" "ing " "by! "  pass "ing " "by! " 
  "\npass" "ing " "by! "  pass "ing " "by! " 

  \set stanza = "2."
  "\nCome, " bur "den'd " "one, " "bring " "all " "your " "care: "
  "\nJe" "sus " "is " pass "ing " "by! "
  "\nThe " "love " "that " lis "tens " "to " "your " "prayer "
  "\nWill " "\"no " "good " "thing\" " de "ny. "
  "\nPass" "ing " "by! "  pass "ing " "by! "  pass "ing " "by! "  pass "ing " "by! " 
  "\nHas" "ten " "to " "meet " "Him " "on " "the " "way, "
  "\nJe" "sus " "is " pass "ing " "by " to "day! "
  "\npass" "ing " "by! "  pass "ing " "by! " 
  "\npass" "ing " "by! "  pass "ing " "by! " 

  \set stanza = "3."
  "\nCome, " hun "gry " "one, " "and " "tell " "your " "need: "
  "\nJe" "sus " "is " pass "ing " "by! "
  "\nThe " "Bread " "of " "Life " "your " "soul " "will " "feed, "
  "\nAnd " ful "ly " sat is "fy. "
  "\nPass" "ing " "by! "  pass "ing " "by! "  pass "ing " "by! "  pass "ing " "by! " 
  "\nHas" "ten " "to " "meet " "Him " "on " "the " "way, "
  "\nJe" "sus " "is " pass "ing " "by " to "day! "
  "\npass" "ing " "by! "  pass "ing " "by! " 
  "\npass" "ing " "by! "  pass "ing " "by! " 

  \set stanza = "4."
  "\nCome, " con "trite " "one, " "and " "seek " "His " "grace: "
  "\nJe" "sus " "is " pass "ing " "by! "
  "\nSee " "in " "His " re con cil "ed " "face, "
  "\nThe " sun "shine " "of " "the " "sky. "
  "\nPass" "ing " "by! "  pass "ing " "by! "  pass "ing " "by! "  pass "ing " "by! " 
  "\nHas" "ten " "to " "meet " "Him " "on " "the " "way, "
  "\nJe" "sus " "is " pass "ing " "by " to "day! "
  "\npass" "ing " "by! "  pass "ing " "by! " 
  "\npass" "ing " "by! "  pass "ing " "by! " 
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidiAlto
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

\book {
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
          >>
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
          >>
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
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
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
            \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
          >>
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
