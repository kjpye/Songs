\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I would Commune with Thee."
  subtitle    = "Sankey No. 502"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{\smallCaps "Barber's" "Psalm Tunes (1686)."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "G. B. Bubier"
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

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I would com -- mune with Thee, my God,
  E'en to Thy seat I come;
  I leave my joys, I leave my sins,
  And seek in Thee my home.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I stand up -- on the mount of God,
  With sun -- light in my soul;
  I hear the storm in vales be -- neath,
  I hear the thun -- ders toll.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  But I am calm with Thee, my God,
  Be -- neath these glo -- rious skies;
  And to the height on which I stand.
  Nor storms nor clouds can rise.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, this is life! oh, this is joy,
  My God, to find Thee so!
  Thy face to see, Thy voice to hear,
  And all Thy love to know.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "would " com "mune " "with " "Thee, " "my " "God, "
  "\nE'en " "to " "Thy " "seat " "I " "come; "
  "\nI " "leave " "my " "joys, " "I " "leave " "my " "sins, "
  "\nAnd " "seek " "in " "Thee " "my " "home.\n"

  \set stanza = "2."
  "\nI " "stand " up "on " "the " "mount " "of " "God, "
  "\nWith " sun "light " "in " "my " "soul; "
  "\nI " "hear " "the " "storm " "in " "vales " be "neath, "
  "\nI " "hear " "the " thun "ders " "toll.\n"

  \set stanza = "3."
  "\nBut " "I " "am " "calm " "with " "Thee, " "my " "God, "
  "\nBe" "neath " "these " glo "rious " "skies; "
  "\nAnd " "to " "the " "height " "on " "which " "I " "stand. "
  "\nNor " "storms " "nor " "clouds " "can " "rise.\n"

  \set stanza = "4."
  "\nOh, " "this " "is " "life! " "oh, " "this " "is " "joy, "
  "\nMy " "God, " "to " "find " "Thee " "so! "
  "\nThy " "face " "to " "see, " "Thy " "voice " "to " "hear, "
  "\nAnd " "all " "Thy " "love " "to " "know. "
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
