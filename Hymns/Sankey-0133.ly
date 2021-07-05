\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Thou Spotless Lamb of God."
  subtitle    = "Sankey No. 133"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "May Maurice."

% centered at bottom
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)
global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1*5
  \mark \markup { \box "B" } s1*5
  \mark \markup { \box "C" } s1*5 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  ees'4
  g4 4 4 aes
  bes2. c4
  bes4 g f ees
  f2. ees4
  g4 4 4 aes \break
  bes2. c4 % B
  bes4 g g f
  ees2. bes'4
  ees4 4 d c
  d2. c4 \break
  bes4 c bes g % C
  bes2. aes4
  g4 bes aes c
  bes4 ees ees aes,
  g2 f
  ees2.
}

alto = \relative {
  ees'4
  ees4 4 4 f
  g2. aes4
  g4 ees ees ees
  d2. ees4
  ees4 4 4 f
  g2. aes4 % B
  g4 ees d d
  ees2. g4
  g4 4 aes aes
  aes2. 4
  g4 aes g ees % C
  g2. ees4
  ees4 4 d aes'
  g4 4 aes f
  ees2 d
  ees2.
}

tenor = \relative {
  g4
  bes4 4 4 4
  ees2. 4
  ees4 bes aes g
  bes2. g4
  bes4 4 4 4
  ees2. 4 % B
  ees4 bes bes aes
  g2. bes4
  bes4 4 4 4
  f'2. d4
  ees4 4 4 bes % C
  ees2. c4
  bes4 4 4 4
  bes4 4 c c
  bes2(4) aes
  g2.
}

bass= \relative {
  ees4
  ees4 4 4 4
  ees2. 4
  ees4 4 4 4
  bes2. ees4
  ees4 4 4 4
  ees2. aes,4 % B
  bes4 4 4 4
  ees2. 4
  ees4 4 f f
  bes,2. 4
  ees4 4 4 4 % C
  ees2. 4
  ees4 g f d
  ees4 4 aes aes
  bes2 bes,
  ees2.
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Thou spot -- less Lamb of God,
  On Thee for help I lean;
  I know Thy pre -- cious blood
  Has power to make me clean.
  Oh, take my bur -- den'd heart,
  And wash a -- way its sin;
  Thy righ -- teous -- ness im -- part,
  And make me pure with -- in.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I have no hope be -- side,
  I urge no oth -- er plea,
  Save Thou hast lived and died,
  Hast lived and died for me.
  Thy pard -- ;ning voiec I hear,
  That tells me I am Thine;
  I can no long -- er fear
  Since Thou, O Christ, art mine!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  For ev -- er by Thy side
  My will -- ing soul woiuld stay;
  Be Thou my Guard and Guide
  Thro' life's un -- cer -- tain day.
  No oth -- er will I own,
  No oth -- er name I plead;
  Thou didst for sin a -- tine,
  And Thou art all I need.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thou " spot "less " "Lamb " "of " "God, "
  "\nOn " "Thee " "for " "help " "I " "lean; "
  "\nI " "know " "Thy " pre "cious " "blood "
  "\nHas " "power " "to " "make " "me " "clean. "
  "\nOh, " "take " "my " bur "den'd " "heart, "
  "\nAnd " "wash " a "way " "its " "sin; "
  "\nThy " righ teous "ness " im "part, "
  "\nAnd " "make " "me " "pure " with "in. "

  \set stanza = "2."
  "\nI " "have " "no " "hope " be "side, "
  "\nI " "urge " "no " oth "er " "plea, "
  "\nSave " "Thou " "hast " "lived " "and " "died, "
  "\nHast " "lived " "and " "died " "for " "me. "
  "\nThy " pard ";ning " "voiec " "I " "hear, "
  "\nThat " "tells " "me " "I " "am " "Thine; "
  "\nI " "can " "no " long "er " "fear "
  "\nSince " "Thou, " "O " "Christ, " "art " "mine! "

  \set stanza = "3."
  "\nFor " ev "er " "by " "Thy " "side "
  "\nMy " will "ing " "soul " "woiuld " "stay; "
  "\nBe " "Thou " "my " "Guard " "and " "Guide "
  "\nThro' " "life's " un cer "tain " "day. "
  "\nNo " oth "er " "will " "I " "own, "
  "\nNo " oth "er " "name " "I " "plead; "
  "\nThou " "didst " "for " "sin " a "tine, "
  "\nAnd " "Thou " "art " "all " "I " "need. "
}
  
nl = { \bar "||" \break }

\book {
  \bookOutputSuffix "repeat"
  \score {
    \context GrandStaff <<
      <<
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
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
    system-separator-markup = \slashSeparator
  }
  \score {
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
    \context GrandStaff <<
      <<
        \new ChoirStaff <<
                                  % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
