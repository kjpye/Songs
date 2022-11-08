\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Walk in the Light!"
  subtitle    = "Sankey No. 503"
%  subsubtitle = "C. C. No. 159"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{\smallCaps "Barber's" "Psalm Tunes (1686)."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Bernard Barton."
  meter       = \markup\smallCaps "C. M."
  piece       = \markup\smallCaps "St. Flavian."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 | f e f a | g g f f | bes a f g | a2. \bar "|" \break 4 |
  a4 bes c a | f g a a | g f f e | f2.
}

alto = \relative {
  \autoBeamOff
  c'4 | 4 4 4 f | f e f f | f f f e8[d] | e2. f4 |
  f4 4 e e | d e f f | e d d c | c2.
}

tenor = \relative {
  \autoBeamOff
  a4 | g g a d | d c a a | bes c d d | cis2. c4 |
  c4 bes g a | a c c c | c a g g | a2.
}

bass = \relative {
  \autoBeamOff
  f4 | c c f d | bes c f f | d f bes bes | a2. f4 |
  f4 d c c | d c f f | c d bes c | f2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Walk in the light, so shalt thou knopw
  That fel -- low -- ship of love
  His Spi -- rit on -- ly can be -- stow,
  Who reigns in light a -- bove.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Walk in the light, and thou shalt find
  Thy heart masde tru -- ly His
  Who dwells in cloud -- less light en -- shrined,
  In whom no dark -- ness is.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Walk in the light— and sin ab -- horred
  Shall no de -- file a -- gain;
  The blood of Je -- sus Christ the Lord
  Shall cleanse from ev -- ery stain.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Walk in the light, and e'en the tomb
  No fear -- ful shade shall wear;
  Glo -- ry shall chase a -- way its gloom,
  For Christ hath con -- quered there.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Walk in the light, and thou shalt own
  Thy dark -- ness passed a -- way,
  Be -- cause that light hath on thee shone,
  In which is per -- fect day.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Walk in the light— thy path shall be
  peace -- ful, ser -- ene, and bright;
  For God, by grace, shall dwell in thee
  And God him -- self is light.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Walk " "in " "the " "light, " "so " "shalt " "thou " "knopw "
  "\nThat " fel low "ship " "of " "love "
  "\nHis " Spi "rit " on "ly " "can " be "stow, "
  "\nWho " "reigns " "in " "light " a "bove.\n"

  \set stanza = "2."
  "\nWalk " "in " "the " "light, " "and " "thou " "shalt " "find "
  "\nThy " "heart " "masde " tru "ly " "His "
  "\nWho " "dwells " "in " cloud "less " "light " en "shrined, "
  "\nIn " "whom " "no " dark "ness " "is.\n"

  \set stanza = "3."
  "\nWalk " "in " "the " "light—" "and " "sin " ab "horred "
  "\nShall " "no " de "file " a "gain; "
  "\nThe " "blood " "of " Je "sus " "Christ " "the " "Lord "
  "\nShall " "cleanse " "from " ev "ery " "stain.\n"

  \set stanza = "4."
  "\nWalk " "in " "the " "light, " "and " "e'en " "the " "tomb "
  "\nNo " fear "ful " "shade " "shall " "wear; "
  "\nGlo" "ry " "shall " "chase " a "way " "its " "gloom, "
  "\nFor " "Christ " "hath " con "quered " "there.\n"

  \set stanza = "5."
  "\nWalk " "in " "the " "light, " "and " "thou " "shalt " "own "
  "\nThy " dark "ness " "passed " a "way, "
  "\nBe" "cause " "that " "light " "hath " "on " "thee " "shone, "
  "\nIn " "which " "is " per "fect " "day.\n"

  \set stanza = "6."
  "\nWalk " "in " "the " "light—" "thy " "path " "shall " "be "
  "\npeace" "ful, " ser "ene, " "and " "bright; "
  "\nFor " "God, " "by " "grace, " "shall " "dwell " "in " "thee "
  "\nAnd " "God " him "self " "is " "light."
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
