\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Our Refuge"
  subtitle    = "Sankey No. 105"
  subsubtitle = "N.H. No. 35"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Hubert P. Main."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs. C. Warren"
  meter       = "C.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
  \tempo 4=120
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s2.*7
  \mark \markup { \box "B" } s2.*7
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
}

soprano = \relative {
  a'4 a g
  g4(f) a
  c2 bes4
  a2.
  f4 e f
  a2 g4
  g2.
  c4 bes a % B
  a4(g) f
  bes2 a4
  g2 bes4
  a4(c) f,
  f4(a) g
  f2.
}

alto = \relative {
  \autoBeamOff
  f'4 f ees
  d2 c4
  f4(e) e
  f2.
  f4 c c
  f2 4
  e2.
  f4 f8[e] f4 % B
  f4(e) f
  f4(e) f
  e2 g4
  f2 4
  f4(c) c
  c2.
}

tenor = \relative {
  c'4 c bes
  bes2 f4
  a4(g) c
  c2.
  c4 bes a
  bes2 4
  c2.
  c4 c c % B
  c2 4
  c2 4
  c2 4
  c4(a) c
  a4(f) bes
  a2.
}

bass= \relative {
  f4 f f
  bes,2 f4
  c'2 4
  f2.
  a4 g f
  d2 g4
  c,2.
  a'4 g f % B
  c4(bes) a
  g2 f4
  c'2 e4
  f2 a,4
  c2 4
  f2.
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, Thou re -- fuge of the soul,
  To Thy dear arms I flee;
  From Sa -- tan's wiles, from self and sin,
  Oh, make and keep me free.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Tho' clouds may rise, tho' tem -- pests rage,
  Thou wilt my shel -- ter be,
  While with a stead -- fast heart and true,
  My trust is stayed on Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  No power on earth, or power be -- low,
  Can tear me from Thy side;
  If 'neath Thy shel -- t'ring wings of love,
  Dear Re -- fuge, I a -- bide.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Not death it -- self, that last dread foe,
  Can hold me with his chain;
  Thro' Christ, who con -- quer'd Death, I rise,
  And life e -- ter -- nal gain.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\nJe" "sus, " "Thou " re "fuge " "of " "the " "soul, "
  "\nTo " "Thy " "dear " "arms " "I " "flee; "
  "\nFrom " Sa "tan's " "wiles, " "from " "self " "and " "sin, "
  "\nOh, " "make " "and " "keep " "me " "free. "

  \set stanza = "2."
  "\nTho' " "clouds " "may " "rise, " "tho' " tem "pests " "rage, "
  "\nThou " "wilt " "my " shel "ter " "be, "
  "\nWhile " "with " "a " stead "fast " "heart " "and " "true, "
  "\nMy " "trust " "is " "stayed " "on " "Thee. "

  \set stanza = "3."
  "\nNo " "power " "on " "earth, " "or " "power " be "low, "
  "\nCan " "tear " "me " "from " "Thy " "side; "
  "\nIf " "'neath " "Thy " shel "t'ring " "wings " "of " "love, "
  "\nDear " Re "fuge, " "I " a "bide. "

  \set stanza = "4."
  "\nNot " "death " it "self, " "that " "last " "dread " "foe, "
  "\nCan " "hold " "me " "with " "his " "chain; "
  "\nThro' " "Christ, " "who " con "quer'd " "Death, " "I " "rise, "
  "\nAnd " "life " e ter "nal " "gain. "
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
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
            }
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
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
%            \new Voice {
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%              \TempoTrack
%            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff =alto 
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
      >>
    >>
    \midi {}
  }
}
