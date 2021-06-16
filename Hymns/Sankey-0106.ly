\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Dear Refuge of my Weary Soul."
  subtitle    = "Sankey No. 106"
  subsubtitle = "Sankey 880 No. 656"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Foster."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Anne Steele."
  meter       = "C.M."
  piece       = \markup\smallCaps "Claremont."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 6/4
  \tempo 4=120
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s1.*3 s2. s2
  \mark \markup { \box "B" } s4 s1.*3 s2. s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  ees'4
  g2 bes4 ees2 4
  d2 4 c2 4
  bes2 g4 bes4(aes) f
  aes2.(g2) \bar "|" \break \partial 4 bes4
  ees2 4 d2 4 % B
  c2 4 bes2 g4
  bes2 g4 bes(aes) f
  ees2.~2
}

alto = \relative {
  ees'4
  ees2 4 2 f4
  f2 g4 ees2 d4
  ees2 4 f2 d4
  f2.(ees2) 4
  ees4(f) ges f2 4
  ees4(f) ees4 2 4
  d2 ees4 f2 d4
  ees4(bes c bes2)
}

tenor = \relative {
  g4
  bes4(ees) des c2 4
  bes2 b4 c2 aes4
  bes2 4 2 4
  bes4(c bes~2) g4
  c2 4 bes2 b4 % B
  aes2 4 bes2 4
  bes2 4 c2 aes4
  g2(aes4 g2)
}

bass= \relative {
  ees4
  ees2 g4 c2 aes4
  bes2 g4 aes2 f4
  g2 ees4 bes2 4
  ees2.~2 g4
  c2 a4 bes2 g4 % B
  aes2 4 g2 ees4
  f2 ees4 aes,2 bes4
  ees2.~2
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Dear Re -- fuge of my wea -- ry soul,
  On Thee, when sor -- rows rise, __
  On Thee, when waves of trou -- ble roll,
  My faint -- ing hope re -- lies. __
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  To Thee I tell each ri -- sing grief,
  For Thou a -- lone canst heal: __
  Thy word can bring a sweet re -- lief
  For ev -- 'ry pain I feel. __
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  But oh, when gloom -- y doubts pre -- vail,
  I fear to call Thee mine: __
  The springs of com -- fort seem to fail,
  And all my hopes de -- cline. __
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Yet, gra -- cious God, where shall I flee?
  Thou art my on -- ly trust; __
  And still my soul would cleave to Thee,
  Though pros -- trate in the dust. __
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  The mer -- cy -- seat is op -- en still,
  Here let my soul re -- treat; __
  With hum -- ble hope at -- tend Thy will,
  And wait be -- neath Thy feet. __
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Dear " Re "fuge " "of " "my " wea "ry " "soul, "
  "\nOn " "Thee, " "when " sor "rows " "rise, " 
  "\nOn " "Thee, " "when " "waves " "of " trou "ble " "roll, "
  "\nMy " faint "ing " "hope " re "lies. " 

  \set stanza = "2."
  "\nTo " "Thee " "I " "tell " "each " ri "sing " "grief, "
  "\nFor " "Thou " a "lone " "canst " "heal: " 
  "\nThy " "word " "can " "bring " "a " "sweet " re "lief "
  "\nFor " ev "'ry " "pain " "I " "feel. " 

  \set stanza = "3."
  "\nBut " "oh, " "when " gloom "y " "doubts " pre "vail, "
  "\nI " "fear " "to " "call " "Thee " "mine: " 
  "\nThe " "springs " "of " com "fort " "seem " "to " "fail, "
  "\nAnd " "all " "my " "hopes " de "cline. " 

  \set stanza = "4."
  "\nYet, " gra "cious " "God, " "where " "shall " "I " "flee? "
  "\nThou " "art " "my " on "ly " "trust; " 
  "\nAnd " "still " "my " "soul " "would " "cleave " "to " "Thee, "
  "\nThough " pros "trate " "in " "the " "dust. " 

  \set stanza = "5."
  "\nThe " mer cy "seat " "is " op "en " "still, "
  "\nHere " "let " "my " "soul " re "treat; " 
  "\nWith " hum "ble " "hope " at "tend " "Thy " "will, "
  "\nAnd " "wait " be "neath " "Thy " "feet. " 
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
%            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
               \RehearsalTrack
               \RehearsalTrack
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
