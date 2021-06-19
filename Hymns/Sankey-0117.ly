\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Not All the Blood."
  subtitle    = "Sankey No. 117"
  subsubtitle = "Sankey 880 No. 158"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. L. mason."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts. D.D."
  meter       = "S.M."
  piece       = "Boylston,"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
% \mark \markup { \circle "1a" }
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

soprano = \relative {
  \autoBeamOff
  g'4
  e8 f g4 a
  g2 c4
  c8 b a4 4
  g2 \bar "|" \break \partial 4 g4
  e8 f g4 4 % B
  a8 b c4 b
  c8 a g4 4
  g2
}

alto = \relative {
  \autoBeamOff
  e'4
  c8 d e4 f
  e2 4
  d8 8 e4 d
  d2 e4
  c8 b c4 e % B
  f8 8 e4 g
  g8 f d8[e] f4
  e2
}

tenor = \relative {
  \autoBeamOff
  g4
  g8 c c4 4
  c2 g4
  fis8 g g4 fis8[c']
  b2 c4
  g8 8 4 c % B
  c8 g g4 g
  g8 c b[c] d4
  c2
}

bass= \relative {
  \autoBeamOff
  c4
  c8 8 4 f
  c2 4
  d8 g c,4 d
  g,2 c4
  c8 d e4 c
  f8 d c4 g'
  e8 f g4 g,
  c2
}

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Not all the blood of beasts
  On Jew -- ish al -- tars slain,
  Could give the guil -- ty con -- science peace,
  Or wash a -- way the stain.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  But Christ, the heav'n -- ly Lamb,
  Takes all our sins a -- way;
  QA sac -- ri -- fice of no -- bler name
  And rich -- er blood than they.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  My faith would lay her hand
  On that deear head of Thine,
  While like a pen -- i -- tent I stand,
  And there con -- fess my sin.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  My soul looks back to see
  The bur -- den Thou didst bear,
  When hang -- ing on th'a -- curs -- ed tree,
  And knows her guilt was there.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Not " "all " "the " "blood " "of " "beasts "
  "\nOn " Jew "ish " al "tars " "slain, "
  "\nCould " "give " "the " guil "ty " con "science " "peace, "
  "\nOr " "wash " a "way " "the " "stain. "

  \set stanza = "2."
  "\nBut " "Christ, " "the " heav'n "ly " "Lamb, "
  "\nTakes " "all " "our " "sins " a "way; "
  "\nQA " sac ri "fice " "of " no "bler " "name "
  "\nAnd " rich "er " "blood " "than " "they. "

  \set stanza = "3."
  "\nMy " "faith " "would " "lay " "her " "hand "
  "\nOn " "that " "deear " "head " "of " "Thine, "
  "\nWhile " "like " "a " pen i "tent " "I " "stand, "
  "\nAnd " "there " con "fess " "my " "sin. "

  \set stanza = "4."
  "\nMy " "soul " "looks " "back " "to " "see "
  "\nThe " bur "den " "Thou " "didst " "bear, "
  "\nWhen " hang "ing " "on " th'a curs "ed " "tree, "
  "\nAnd " "knows " "her " "guilt " "was " "there. "
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
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
