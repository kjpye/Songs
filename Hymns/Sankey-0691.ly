\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Christ the Victor!"
  subtitle    = "Sankey No. 691"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{\smallCaps Daye's Psalter (1565)}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "S. W. Gandy."
  meter       = \markup\smallCaps "S.M."
  piece       = \markup\smallCaps "St. Michael's."

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
  e'4 | a cis b b | cis2. e4 | d cis b b | a2. \bar "|" \break
  a4 | gis4 fis e a | a b cis cis | b a a gis | a2.
}

alto = \relative {
  \autoBeamOff
  e'4 | fis a a gis | a2. gis4 | fis e e e | cis2.
  fis4 | e d b e | fis4 4 eis fis | fis e fis e | e2.
}

tenor = \relative {
  \autoBeamOff
  cis'4 | cis e fis e | e2. cis4 | a a a gis | a2.
  cis4 | cis a gis a | a fis gis a | d cis b b | cis2.
}

bass = \relative {
  \autoBeamOff
  a4 | fis cis d e | a,2. cis4 | d a e' e | a2.
  fis4 | cis d e cis | fis d cis fis | b, cis d e | a,2.
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
  What though th'ac -- cu -- ser roar
  Of ills that I have done;
  I know them well, and thou -- sands more:
  Je -- ho -- vah find -- eth none.
  
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  His be the Vic -- tor's name
  Who fought our fight a -- lone:
  Tri -- umph -- ant saints no hon -- our claim;
  Their con -- quest was His own.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  By weak -- ness and de -- feat
  He won the meed and crown;
  Trod all our foes be -- neath His feet,
  By be -- ing trod -- den down.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  He hell in hell laid low;
  Made sin, He sin o'er -- throw:
  Bowed to the grave, des -- troyed it so,
  And death, by dy -- ing, slew.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Bless, bless the Con -- queror slain—
  Slain by div -- ine dec -- ree—
  Who lived, who died, who lives a -- gain,
  For thee, His saint, for thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "What " "though " th'ac cu "ser " "roar "
  "\nOf " "ills " "that " "I " "have " "done; "
  "\nI " "know " "them " "well, " "and " thou "sands " "more: "
  "\nJe" ho "vah " find "eth " "none.\n"
  

  \set stanza = "2."
  "\nHis " "be " "the " Vic "tor's " "name "
  "\nWho " "fought " "our " "fight " a "lone: "
  "\nTri" umph "ant " "saints " "no " hon "our " "claim; "
  "\nTheir " con "quest " "was " "His " "own.\n"

  \set stanza = "3."
  "\nBy " weak "ness " "and " de "feat "
  "\nHe " "won " "the " "meed " "and " "crown; "
  "\nTrod " "all " "our " "foes " be "neath " "His " "feet, "
  "\nBy " be "ing " trod "den " "down.\n"

  \set stanza = "4."
  "\nHe " "hell " "in " "hell " "laid " "low; "
  "\nMade " "sin, " "He " "sin " o'er "throw: "
  "\nBowed " "to " "the " "grave, " des "troyed " "it " "so, "
  "\nAnd " "death, " "by " dy "ing, " "slew.\n"

  \set stanza = "5."
  "\nBless, " "bless " "the " Con "queror " "slain— "
  "\nSalin " "by " div "ine " dec "ree— "
  "\nWho " "lived, " "who " "died, " "who " "lives " a "gain, "
  "\nFor " "thee, " "His " "saint, " "for " "thee! "
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
