\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Open Wide the Door!"
  subtitle    = "Sankey No. 358"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Burke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup {\smallCaps "W. Kitching," arr.}
  meter       = \markup\smallCaps "7.7.7.5."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key des \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }     s1*4
  \mark \markup { \box "B" }     s1*4
  \mark \markup { \box "C" }     s1*2 s2 s8
  \mark \markup { \box "D" } s4. s1*2
  \mark \markup { \box "E" }     s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  aes'4. bes8 aes4 des
  des4. c8 2
  ges4. f8 ges4 bes
  bes4. aes8 2
  aes4. bes8 aes4 f' % B
  ees4. des8 bes4(des)
  c2~8 aes bes8. c16
  des2. r4
  des2^\markup\smallCaps Chorus. ~8 aes f8. des16 % C
  aes'2. r4
  ees'2~8 \bar "|" \break c8 es8. c16
  des2. r4 % D
  aes4. bes8 aes4 f'
  ees4. des8 bes4(des) % E
  c2~8 aes bes8. c16 des2. r4
}

alto = \relative {
  \autoBeamOff
  f'4. ges8 f4 4
  f4. ees8 2
  ees4. des8 ees4 ges
  ges4. f8 2
  f4. ges8 f4 aes % B
  ges4. 8 2
  ges2~8 8 8. 16
  f2. r4
  f2~8 8 des8. \once\partCombineApart r16 % C
  c8 ges'8 8. 16 4 r
  ges2~8 8 8. \once\partCombineApart r16
  f8 8 8. 16 4 r % D
  f4. ges8 f4 aes
  ges4. 8 2 % E
  ges2~8 8 8. \partCombineApart r16
  f8 8 ges8. 16 f4 \partCombineAutomatic r
}

tenor = \relative {
  \autoBeamOff
  des'4. 8 4 aes
  aes4. 8 2
  aes4. 8 4 c
  des4. 8 2
  des4. 8 4 aes % B
  bes4. 8 des4(bes)
  ees4 4 8 c des8. ees16
  des2. r4
  aes4 4 8 8 8. r16 % C
  c8 8 8. 16 4 r
  c4 4 8 ees c8. r16
  aes8 8 8. 16 4 r % D
  des4. 8 4 aes
  bes4. 8 des4(bes) % E
  ees4 4 8 c8 8. \once\partCombineApart r16
  aes8 8 bes8. 16 aes4 r
}

bass = \relative {
  \autoBeamOff
  des4. 8 4 4
  aes'4. 8 2
  aes,4. 8 4 4
  des4. 8 2
  des4. 8 4 4 % B
  ges4. 8 2
  aes4 4 8 8 8. 16
  des2. r4
  des,4 4 8 8 8. r16 % C
  aes'8 8 8. 16 4 r
  aes4 4 8 8 8. r16
  des,8 8 8. 16 4 r % D
  des4. 8 4 4
  ges4. 8 2 % E
  aes4 4 8 8 8. 16
  des,2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  O -- pen wide the door!
  O -- pen wide the door!
  O -- pen wide the door!
  He can save, and on -- ly He;
  O -- pen wide the door!
}

chorusAlt = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _
  O -- pen, o -- pen wide the door!
  O -- pen, o -- pen wide, o -- pen wide the door!
  O -- pen, o -- pen wide, o -- pen wide the door!
  _ _ _ _ _ _ _
  O -- pen, o -- pen \set associatedVoice = alignerB wide \set associatedVoice = alignerT the
  o -- pen wide the door!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus knocks: He calls to thee,
  "\"Wea" -- ry one, oh, come to "Me!\""
  He can save, and on -- ly He:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Je -- sus knocks: He comes to save—
  "'T was" for thee His life He gave;
  He hath tri -- umphed o'er the grave:
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Je -- sus knocks, is knock -- ing still:
  Yield to Him at once Thy will;
  He with joy they heart can fill:
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Je -- sus knocks: the mo -- ments fly;
  While sal -- va -- tion yet is nigh,
  Ere the Sa -- viour pass -- eth by,
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "knocks: " "He " "calls " "to " "thee, "
  "\n\"Wea" "ry " "one, " "oh, " "come " "to " "Me!\" "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen " "wide " "the " "door! "
  "\nO" "pen " "wide " "the " "door! "
  "\nO" "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He; "
  "\nO" "pen " "wide " "the " "door! "

  \set stanza = "2."
  "\nJe" "sus " "knocks: " "He " "comes " "to " "save— "
  "\n'T was " "for " "thee " "His " "life " "He " "gave; "
  "\nHe " "hath " tri "umphed " "o'er " "the " "grave: "
  "\nO" "pen " "wide " "the " "door! "
  "\nO" "pen " "wide " "the " "door! "
  "\nO" "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He; "
  "\nO" "pen " "wide " "the " "door! "

  \set stanza = "3."
  "\nJe" "sus " "knocks, " "is " knock "ing " "still: "
  "\nYield " "to " "Him " "at " "once " "Thy " "will; "
  "\nHe " "with " "joy " "they " "heart " "can " "fill: "
  "\nO" "pen " "wide " "the " "door! "
  "\nO" "pen " "wide " "the " "door! "
  "\nO" "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He; "
  "\nO" "pen " "wide " "the " "door! "

  \set stanza = "4."
  "\nJe" "sus " "knocks: " "the " mo "ments " "fly; "
  "\nWhile " sal va "tion " "yet " "is " "nigh, "
  "\nEre " "the " Sa "viour " pass "eth " "by, "
  "\nO" "pen " "wide " "the " "door! "
  "\nO" "pen " "wide " "the " "door! "
  "\nO" "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He; "
  "\nO" "pen " "wide " "the " "door! "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "knocks: " "He " "calls " "to " "thee, "
  "\n\"Wea" "ry " "one, " "oh, " "come " "to " "Me!\" "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen " "wide " "the " "door! "
  "\nO" "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nO" "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen " "wide "
  "\no" "pen " "wide " "the " "door! "

  \set stanza = "2."
  "\nJe" "sus " "knocks: " "He " "comes " "to " "save— "
  "\n'T was " "for " "thee " "His " "life " "He " "gave; "
  "\nHe " "hath " tri "umphed " "o'er " "the " "grave: "
  "\nO" "pen " "wide " "the " "door! "
  "\nO" "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nO" "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen " "wide "
  "\no" "pen " "wide " "the " "door! "

  \set stanza = "3."
  "\nJe" "sus " "knocks, " "is " knock "ing " "still: "
  "\nYield " "to " "Him " "at " "once " "Thy " "will; "
  "\nHe " "with " "joy " "they " "heart " "can " "fill: "
  "\nO" "pen " "wide " "the " "door! "
  "\nO" "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nO" "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen " "wide "
  "\no" "pen " "wide " "the " "door! "

  \set stanza = "4."
  "\nJe" "sus " "knocks: " "the " mo "ments " "fly; "
  "\nWhile " sal va "tion " "yet " "is " "nigh, "
  "\nEre " "the " Sa "viour " pass "eth " "by, "
  "\nO" "pen " "wide " "the " "door! "
  "\nO" "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nO" "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen " "wide "
  "\no" "pen " "wide " "the " "door! "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "knocks: " "He " "calls " "to " "thee, "
  "\n\"Wea" "ry " "one, " "oh, " "come " "to " "Me!\" "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen, " o "pen " "wide "
  "\no" "pen " "wide " "the " "door! "

  \set stanza = "2."
  "\nJe" "sus " "knocks: " "He " "comes " "to " "save— "
  "\n'T was " "for " "thee " "His " "life " "He " "gave; "
  "\nHe " "hath " tri "umphed " "o'er " "the " "grave: "
  "\nO" "pen, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen, " o "pen " "wide "
  "\no" "pen " "wide " "the " "door! "

  \set stanza = "3."
  "\nJe" "sus " "knocks, " "is " knock "ing " "still: "
  "\nYield " "to " "Him " "at " "once " "Thy " "will; "
  "\nHe " "with " "joy " "they " "heart " "can " "fill: "
  "\nO" "pen, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen, " o "pen " "wide "
  "\no" "pen " "wide " "the " "door! "

  \set stanza = "4."
  "\nJe" "sus " "knocks: " "the " mo "ments " "fly; "
  "\nWhile " sal va "tion " "yet " "is " "nigh, "
  "\nEre " "the " Sa "viour " pass "eth " "by, "
  "\nO" "pen, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen, " o "pen " "wide "
  "\no" "pen " "wide " "the " "door! "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "knocks: " "He " "calls " "to " "thee, "
  "\n\"Wea" "ry " "one, " "oh, " "come " "to " "Me!\" "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen, " o "pen " "wide " "the " "door! "

  \set stanza = "2."
  "\nJe" "sus " "knocks: " "He " "comes " "to " "save— "
  "\n'T was " "for " "thee " "His " "life " "He " "gave; "
  "\nHe " "hath " tri "umphed " "o'er " "the " "grave: "
  "\nO" "pen, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen, " o "pen " "wide " "the " "door! "

  \set stanza = "3."
  "\nJe" "sus " "knocks, " "is " knock "ing " "still: "
  "\nYield " "to " "Him " "at " "once " "Thy " "will; "
  "\nHe " "with " "joy " "they " "heart " "can " "fill: "
  "\nO" "pen, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen, " o "pen " "wide " "the " "door! "

  \set stanza = "4."
  "\nJe" "sus " "knocks: " "the " mo "ments " "fly; "
  "\nWhile " sal va "tion " "yet " "is " "nigh, "
  "\nEre " "the " Sa "viour " pass "eth " "by, "
  "\nO" "pen, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nO" "pen, " o "pen " "wide, " o "pen " "wide " "the " "door! "
  "\nHe " "can " "save, " "and " on "ly " "He: "
  "\nO" "pen, " o "pen " "wide " "the " "door! "
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
  \bookOutputSuffix "midi-tenor"
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
            \addlyrics \wordsMidiTenor
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
  \bookOutputSuffix "midi-bass"
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
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
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
            \new Voice  \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT \tenor
            \new NullVoice = alignerB \bass
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusAlt
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
            \new NullVoice = alignerT {\repeat unfold \verses \tenor}
            \new NullVoice = alignerB {\repeat unfold \verses \bass}
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusAlt}
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
            \new NullVoice = alignerT {\repeat unfold \verses \tenor}
            \new NullVoice = alignerB {\repeat unfold \verses \bass}
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusAlt}
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
