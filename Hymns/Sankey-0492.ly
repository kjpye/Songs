\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus Christ is Passing by."
  subtitle    = "Sankey No. 492"
  subsubtitle = "Sankey 880 No. 262"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Denham Smith."
  meter       = \markup\smallCaps "7s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*3
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4^\markup\italic Tenderly. f8 bes4 a8 | g4 a8 f4. | a4 f8 bes4 a8 |
  g8[a] bes a4. | f4 e8 4 g8 | f4 a8 g4. | a8[bes] c d,4 g8 |
  f4 g8 a4. | c4^\markup\italic rit. 8 a4 bes8 | a4. g | f4.~4. |
}

alto = \relative {
  \autoBeamOff
  f'4 8 e4 f8 | e4 8 f4. | 4 8 e4 f8 |
  f4 e8 4. | d4 cis8 4 e8 | d4 f8 e4. | ees8[d] c bes4 d8 |
  c4 e8 f4. | ees4 8 4 d8 | f4. e | f~f |
}

tenor = \relative {
  \autoBeamOff
  c'4 8 4 8 | bes4 8 a4. | c4 a8 bes4 c8 |
  d4 8 cis4. | a4 8 4 8 | 4 b8 c4. | 8[bes] a bes4 8 |
  a4 c8 4. | a4 8 c4 8 | c4. bes | a4.~4. |
}

bass = \relative {
  \autoBeamOff
  f4 a8 g4 f8 | c4 8 f4. | 4 8 g4 a8 |
  bes8[a] g a4. | d,4 a8 4 cis8 | d4 g,8 c4. | f4 8 bes,4 8 |
  c4 8 f4. | 4 8 fis4 g8 | c,4. 4. f~f |
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
  Je -- sus Christ is pass -- ing by;
  Sin -- ner, lift to Him thine eye;
  As the pre -- cious mo -- ments flee,
  Cry, "\"Be" mer -- ci -- ful to "me!\""
  Cry, "\"Be" mer -- ci -- ful to "me!\""
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Je -- sus Christ is pass -- ing by;
  Will He al -- ways be so nigh?
  Now is the ac -- cept -- ed day,
  Seek for heal -- ing while you may,
  Seek for heal -- ing while you may.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Lo! He stands and calls to thee,
  "\"What" wilt thou then have of "Me?\""
  Rise, and tell Him all thy need;
  Rise,— He call -- eth thee in -- deed;
  Rise,— He call -- eth thee in -- deed;
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"Lord," I would Thy mer -- cy see;
  Lord, re -- veal Thy love to me;
  Let it pen -- e -- trate my soul,
  All my heart and life con -- trol,
  All my heart and life con -- "trol.\""
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Oh, how sweet! the touch of power
  Comes— it is sal -- va -- tion's hour;
  Je -- sus gives from guilt re -- lease,
  "\"Faith" hath saved thee, go in peace,
  Faith hath saved thee, go in "peace!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "Christ " "is " pass "ing " "by; "
  "\nSin" "ner, " "lift " "to " "Him " "thine " "eye; "
  "\nAs " "the " pre "cious " mo "ments " "flee, "
  "\nCry, " "\"Be " mer ci "ful " "to " "me!\" "
  "\nCry, " "\"Be " mer ci "ful " "to " "me!\"\n"

  \set stanza = "2."
  "\nJe" "sus " "Christ " "is " pass "ing " "by; "
  "\nWill " "He " al "ways " "be " "so " "nigh? "
  "\nNow " "is " "the " ac cept "ed " "day, "
  "\nSeek " "for " heal "ing " "while " "you " "may, "
  "\nSeek " "for " heal "ing " "while " "you " "may.\n"

  \set stanza = "3."
  "\nLo! " "He " "stands " "and " "calls " "to " "thee, "
  "\n\"What " "wilt " "thou " "then " "have " "of " "Me?\" "
  "\nRise, " "and " "tell " "Him " "all " "thy " "need; "
  "\nRise,— " "He " call "eth " "thee " in "deed; "
  "\nRise,— " "He " call "eth " "thee " in "deed;\n"

  \set stanza = "4."
  "\n\"Lord, " "I " "would " "Thy " mer "cy " "see; "
  "\nLord, " re "veal " "Thy " "love " "to " "me; "
  "\nLet " "it " pen e "trate " "my " "soul, "
  "\nAll " "my " "heart " "and " "life " con "trol, "
  "\nAll " "my " "heart " "and " "life " con "trol.\"\n"

  \set stanza = "5."
  "\nOh, " "how " "sweet! " "the " "touch " "of " "power "
  "\nComes— " "it " "is " sal va "tion's " "hour; "
  "\nJe" "sus " "gives " "from " "guilt " re "lease, "
  "\n\"Faith " "hath " "saved " "thee, " "go " "in " "peace, "
  "\nFaith " "hath " "saved " "thee, " "go " "in " "peace!\" "
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
