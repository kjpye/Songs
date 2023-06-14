\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Times are in Thy Hand."
  subtitle    = "Sankey No. 661"
  subsubtitle = "Sankey 880 No. 673"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "German Melody."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. F. Lloyd."
  meter       = \markup\smallCaps "S. M."
  piece       = \markup\smallCaps "Swabia."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
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
  bes'4 | g aes f f | ees2. f4 | g bes bes a | bes2. \bar "|" \break
  bes4 | c bes c d | ees ees ees bes | aes g f f | ees2.
}

alto = \relative {
  \autoBeamOff
  ees'4 | 4 4 4 d | ees2. d4 | ees f g f | 2.
  g4 | aes g aes aes | g aes g ees | ees ees ees d | ees2.
}

tenor = \relative {
  \autoBeamOff
  g4 | bes c bes aes | g2. bes4 | 4 4 ees c | d2.
  ees4 | 4 4 4 f | ees c bes bes | c bes4 4 4 | g2.
}

bass = \relative {
  \autoBeamOff
  ees4 | 4 aes, bes bes | ees2. bes4 | ees d c f | bes,2.
  ees4 | 4 4 aes f | c' aes ees g | aes ees bes bes | ees2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"My" times are in Thy "hand:\""
  My God, I wish them there;
  My life, my friends, my soul— I leave
  En -- tire -- ly to Thy care.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"My" times are in Thy "hand:\""
  What -- ev -- er they may be;
  Pleas -- ing or pain -- ful, dark or bright,
  As best may seem to Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"My" times are in Thy "hand:\""
  Why should I doubt or fear?
  My Fa -- ther's hand will nev -- er cause
  His child a need -- less tear.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"My" times are in Thy "hand:\""
  Je -- sus the cru -- ci -- fied!
  The hand my cru -- el sins had pierced
  Is now my guard and guide.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"My " "times " "are " "in " "Thy " "hand:\" "
  "\nMy " "God, " "I " "wish " "them " "there; "
  "\nMy " "life, " "my " "friends, " "my " "soul— " "I " "leave "
  "\nEn" tire "ly " "to " "Thy " "care.\n"

  \set stanza = "2."
  "\n\"My " "times " "are " "in " "Thy " "hand:\" "
  "\nWhat" ev "er " "they " "may " "be; "
  "\nPleas" "ing " "or " pain "ful, " "dark " "or " "bright, "
  "\nAs " "best " "may " "seem " "to " "Thee.\n"

  \set stanza = "3."
  "\n\"My " "times " "are " "in " "Thy " "hand:\" "
  "\nWhy " "should " "I " "doubt " "or " "fear? "
  "\nMy " Fa "ther's " "hand " "will " nev "er " "cause "
  "\nHis " "child " "a " need "less " "tear.\n"

  \set stanza = "4."
  "\n\"My " "times " "are " "in " "Thy " "hand:\" "
  "\nJe" "sus " "the " cru ci "fied! "
  "\nThe " "hand " "my " cru "el " "sins " "had " "pierced "
  "\nIs " "now " "my " "guard " "and " "guide. "
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
