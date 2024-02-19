\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Not Now, my Child."
  subtitle    = "Sankey No. 818"
  subsubtitle = "Sankey 880 No. 107"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. Pennefather"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s1*2
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*2 s2..
}

TempoTrack = {
%  \set Score.tempoHideNote = ##t
  \tempo "Slow and with expression" 4=90
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8 | 4. 8 4. 8 | 8 e f a a g4 8 |
  g4. fis8  g4. a8 | bes8 c d c a4 r8 a | 4. 8 4. 8 |
  a8 g a bes d c4 8 | 4. bes8 a g f bes | a4\fermata g\fermata f\fermata r8
}

alto = \relative {
  \autoBeamOff
  c'8 | 4. 8 4. 8 | 8 8 8 f f e4 8 |
  e4. dis8 e4. f8 | g a bes a f4 r8 f | 4. 8 4. 8 |
  f8 e f8 8 8 4 8 | 4. c8 8 8 8 bes | f'4\fermata e\fermata c\fermata r8
}

tenor = \relative {
  \autoBeamOff
  a8 | 4. 8 4. 8 | a g a c c c4 8 |
  c4. 8 4. 8 | 8 8 8 8 4 r8 c | 4. 8 4. 8 |
  c8 8 8 d bes a4 8 | 4. e8 f g a f | c'4\fermata bes\fermata a\fermata r8
}

bass = \relative {
  \autoBeamOff
  f8 | 4. 8 4. 8 | f c a f c'8 4 8 |
  c4. 8 4. 8 | 8 8 8 8 f4 r8 f | 4. 8 4. 8 |
  f8 c f f f f4 f,8 | 4. 8 a bes c d | c4\fermata c\fermata f\fermata r8
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Not now, my child!— a lit -- tle more rough toss -- ing,
  A lit -- tle long -- er on the bil -- low's foam;
  A few more journey -- ings in the des -- ert dark -- ness,
  And then the sun -- shine of the Fa -- ther's Home!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Not now; for I have wan -- d'rers in the dis -- tance,
  And thou must call them in with pa -- tient love:
  Not now; for I have sheep up -- on the moun -- tains,
  And thou must fol -- low them where -- e'er they rove.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Not now; for I have loved ones sad and wea -- ry;
  Wilt thou not cheer them with a kind -- ly smile?
  Sick ones, who need thee in their lone -- ly sor -- row;
  Wilt thou not tend them yet a lit -- tle while?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Not now; for wound -- ed hearts are sore -- ly bleed -- ing,
  And thou must teach those wi -- dowed heart to sing;
  Not now; for or -- phan's tears are quick -- ly fall -- ing—
  They must be gath -- 'red 'neath some shel -- t'ring wing.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Go with the name of Je -- sus to the dy -- ing,
  And speak that name in all its liv -- ing power;
  Why should thy faint -- ing heart grow chill and wea -- ry?
  Canst thou not watch with me one lit -- tle hour?
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  One lit -- tle hour! and then the glo -- rious crown -- ing,
  The gol -- den harp- strings, and the vic -- tor's palm;
  One lit -- tle hour! and then the hal -- le -- lu -- jah!
  E -- ter -- ni -- ty's long, deep thanks -- giv -- ing psalm!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Not " "now, " "my " "child!— " "a " lit "tle " "more " "rough " toss "ing, "
  "\nA " lit "tle " long "er " "on " "the " bil "low's " "foam; "
  "\nA " "few " "more " journey "ings " "in " "the " des "ert " dark "ness, "
  "\nAnd " "then " "the " sun "shine " "of " "the " Fa "ther's " "Home!\n"

  \set stanza = "2."
  "\nNot " "now; " "for " "I " "have " wan "d'rers " "in " "the " dis "tance, "
  "\nAnd " "thou " "must " "call " "them " "in " "with " pa "tient " "love: "
  "\nNot " "now; " "for " "I " "have " "sheep " up "on " "the " moun "tains, "
  "\nAnd " "thou " "must " fol "low " "them " where "e'er " "they " "rove.\n"

  \set stanza = "3."
  "\nNot " "now; " "for " "I " "have " "loved " "ones " "sad " "and " wea "ry; "
  "\nWilt " "thou " "not " "cheer " "them " "with " "a " kind "ly " "smile? "
  "\nSick " "ones, " "who " "need " "thee " "in " "their " lone "ly " sor "row; "
  "\nWilt " "thou " "not " "tend " "them " "yet " "a " lit "tle " "while?\n"

  \set stanza = "4."
  "\nNot " "now; " "for " wound "ed " "hearts " "are " sore "ly " bleed "ing, "
  "\nAnd " "thou " "must " "teach " "those " wi "dowed " "heart " "to " "sing; "
  "\nNot " "now; " "for " or "phan's " "tears " "are " quick "ly " fall "ing— "
  "\nThey " "must " "be " gath "'red " "'neath " "some " shel "t'ring " "wing.\n"

  \set stanza = "5."
  "\nGo " "with " "the " "name " "of " Je "sus " "to " "the " dy "ing, "
  "\nAnd " "speak " "that " "name " "in " "all " "its " liv "ing " "power; "
  "\nWhy " "should " "thy " faint "ing " "heart " "grow " "chill " "and " wea "ry? "
  "\nCanst " "thou " "not " "watch " "with " "me " "one " lit "tle " "hour?\n"

  \set stanza = "6."
  "\nOne " lit "tle " "hour! " "and " "then " "the " glo "rious " crown "ing, "
  "\nThe " gol "den " harp "strings, " "and " "the " vic "tor's " "palm; "
  "\nOne " lit "tle " "hour! " "and " "then " "the " hal le lu "jah! "
  "\nE" ter ni "ty's " "long, " "deep " thanks giv "ing " "psalm! "
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsSix   \chorus
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
