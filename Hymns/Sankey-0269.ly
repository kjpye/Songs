\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "There is a Stream."
  subtitle    = "Sankey No. 269"
  subsubtitle = "Sankey 880 No. 550"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. L. Mason."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts, D.D."
  meter       = \markup\smallCaps "L.M."
  piece       = \markup\smallCaps "Ward."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key bes \major
  \time 2/2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*8
  \mark \markup { \box "B" } s1*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'2 4 bes
  a2 bes
  f2 g
  f2. 4
  f2 2
  f4(bes2) c4
  d2 c4(bes) c1\break
  f,2 4 bes % B
  a2 bes
  f2 g
  f2. 4
  f2 2
  f4(bes2) c4
  d2 c
  bes1
}

alto = \relative {
  \autoBeamOff
  d'2 4 f
  ees2 d
  f2 ees
  d2. 4
  c2 2
  f2. 4
  f2 4(e)
  f1
  d2 4 f % B
  ees2 d
  f2 ees
  d2. 4
  c2 2
  f2. g4
  f2 ees
  d1
}

tenor = \relative {
  \autoBeamOff
  bes2 4 d
  c2 bes
  bes2 2
  bes2. 4
  a2 2
  bes2. a4
  bes2 c
  a1
  bes2 4 d % B
  c2 bes
  bes2 2
  bes2. 4
  a2 2
  bes2. a4
  bes2 a
  bes1
}

bass = \relative {
  \autoBeamOff
  bes,2 4 4
  f'2 g
  d2 ees
  bes2. 4
  f'2 4(ees)
  d2. f4
  bes2 a4(g)
  << f1 \new Voice {\voiceTwo \teeny f4 ees d c} >>
  bes2 4 4 % B
  f'2 g
  d2 ees
  bes2. 4
  f'2 4(ees)
  d2. ees4
  f2 2
  bes,1
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  There is a stream, whose gen -- tle flow
  Sup -- plies the ci -- ty of our God;
  Life, love, and joy, still glid -- ing through,
  And wat -- 'ring our Di -- vine a -- bode.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  That sac -- red stream, Thy ho -- ly word,
  Sup -- ports our faith, our fear con -- trols;
  Sweet peace Thy prom -- is -- es af -- ford,
  And give new strength to faint -- ing souls.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Loud my the trou -- bled o -- cean roar:
  In sa -- cred peace our souls a -- bide;
  While ev -- 'ry na -- tion, ev -- 'ry shore,
  Trem -- bles, and dreads the swell -- ing tide.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "is " "a " "stream, " "whose " gen "tle " "flow "
  "\nSup" "plies " "the " ci "ty " "of " "our " "God; "
  "\nLife, " "love, " "and " "joy, " "still " glid "ing " "through, "
  "\nAnd " wat "'ring " "our " Di "vine " a "bode. "

  \set stanza = "2."
  "\nThat " sac "red " "stream, " "Thy " ho "ly " "word, "
  "\nSup" "ports " "our " "faith, " "our " "fear " con "trols; "
  "\nSweet " "peace " "Thy " prom is "es " af "ford, "
  "\nAnd " "give " "new " "strength " "to " faint "ing " "souls. "

  \set stanza = "3."
  "\nLoud " "my " "the " trou "bled " o "cean " "roar: "
  "\nIn " sa "cred " "peace " "our " "souls " a "bide; "
  "\nWhile " ev "'ry " na "tion, " ev "'ry " "shore, "
  "\nTrem" "bles, " "and " "dreads " "the " swell "ing " "tide. "
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
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
