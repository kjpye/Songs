\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Thy Will, not Mine."
  subtitle    = "Sankey No. 595"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Elizabeth Frazer."
  meter       = \markup\smallCaps "6.4.6.4.6.6.6.4."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 2/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*5
  \textMark \markup { \box \bold "B" } s1*5
  \textMark \markup { \box \bold "C" } s1*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  a'2 bes4 a | 4. g8 2 | bes2 c4 bes | a2. r4 | c2 d4 c |
  c4. bes8 2 | a2 4 g | f2. r4 | e2 f4 g | bes4. a8 2 |
  g2 a4 bes | d4. c8 2 | 2 bes4 a | 4. g8 2 | bes2 a4 g | f2. r4 |
}

alto = \relative {
  \autoBeamOff
  f'2 4 4 | f4. e8 2 | 2 4 g | f2. r4 | f2 4 4 |
  d4. 8 2 | f2 4 c | 2. r4 | 2 4 e | f4. 8 2 |
  e2 f4 g | bes4. a8 2 | 2 g4 f | 4. 8 2 | e2 4 4 | f2. r4 |
}

tenor = \relative {
  \autoBeamOff
  c'2 d4 c |  4. 8 2 | g2 4 c | 2. r4 | a2 bes4 a |
  bes4. g8 2 | c2 4 bes | a2. r4 | g2 a4 bes | d4. c8 2 |
  c2 4 4 | bes4. c8 2 | 2 4 4 | d4. 8 2 | g,4(d') c bes | a2. r4 |
}

bass = \relative {
  \autoBeamOff
  f2 4 4 | c4. 8 2 | 2 4 e | f2. r4 | 2 4 4 |
  g4. 8 2 | c,2 4 4 | f2. r4 | c2 4 4 | f4. 8 2 |
  c2 4 4 | f4. 8 2 | 2 e4 f | bes,4. 8 2 | c2 4 4 | f2. r4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Thy will, O Lord, not mine,
  Teach me to say;
  Not my will, Lord, but Thine,
  I would o -- bey;
  Then shall I know the joy,
  And Thy name glo -- ri -- fy,
  When I, on earth, shall try
  To fol -- low Thee.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  My weak -- ness, Lord, I own,
  From day to day;
  I list -- en for Thy voice
  To lead the way;
  Oh, wilt Thou send the light
  To make my path -- way bright,
  And show me what is right,
  The on -- ly way!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I can -- not see just where
  The Spi -- rit leads,
  But know that Christ is there,
  Who in -- ter -- cedes;
  Oh, help me now to rest
  On Je -- sus' lov -- iong breast,
  Till He shall man -- i -- fest
  His love in me!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thy " "will, " "O " "Lord, " "not " "mine, "
  "\nTeach " "me " "to " "say; "
  "\nNot " "my " "will, " "Lord, " "but " "Thine, "
  "\nI " "would " o "bey; "
  "\nThen " "shall " "I " "know " "the " "joy, "
  "\nAnd " "Thy " "name " glo ri "fy, "
  "\nWhen " "I, " "on " "earth, " "shall " "try "
  "\nTo " fol "low " "Thee.\n"

  \set stanza = "2."
  "\nMy " weak "ness, " "Lord, " "I " "own, "
  "\nFrom " "day " "to " "day; "
  "\nI " list "en " "for " "Thy " "voice "
  "\nTo " "lead " "the " "way; "
  "\nOh, " "wilt " "Thou " "send " "the " "light "
  "\nTo " "make " "my " path "way " "bright, "
  "\nAnd " "show " "me " "what " "is " "right, "
  "\nThe " on "ly " "way!\n"

  \set stanza = "3."
  "\nI " can "not " "see " "just " "where "
  "\nThe " Spi "rit " "leads, "
  "\nBut " "know " "that " "Christ " "is " "there, "
  "\nWho " in ter "cedes; "
  "\nOh, " "help " "me " "now " "to " "rest "
  "\nOn " Je "sus' " lov "iong " "breast, "
  "\nTill " "He " "shall " man i "fest "
  "\nHis " "love " "in " "me! "
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \dynamicsPrint
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \dynamicsOmit
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
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

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Dynamics \with {alignAboveContext = women} \repeat unfold \verses \dynamicsPrint
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
