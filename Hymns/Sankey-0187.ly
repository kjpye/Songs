\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Jesus, Thine All-Victorious Love."
  subtitle    = "Sankey No. 187"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. T. Hastings."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = \markup\smallCaps "c.m."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key a \major
  \time 6/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4  s1.*4 s2.
  \mark \markup { \box "B" } s2. s1.*4 s2. s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 2.=120
  s4
  s1.*7
  s2. s2 \tempo 2.=110 s4
  s1.
  s2. s2
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4
  a2 4 b2 4
  cis2 b4 a2 e4
  fis2 4 a2 fis4
  e2.~2 4
  a2 4 \bar "|" \break b2 4
  cis2 d4 e2 cis8[b] % B
  a2 4 b2 4
  a2.~2 4^\markup\italic rit.
  cis2 4 b2 4
  a2.~2
}

alto = \relative {
  \autoBeamOff
  e'4 cis2 e4 2 4
  e2 4 2 cis4
  d2 4 e2 d4
  cis2.~2 b4
  e2 cis4 e2 gis4
  a2 4 2 gis4 % B
  a2 g4 fis2 gis4
  a2.~2 fis4
  a2 4 fis2 d4
  cis2.~2
}

tenor = \relative {
  \autoBeamOff
  e4
  e2 a4 fis2 4
  a2 gis4 a2 4
  a2 4 2 4
  a2.~2 gis4
  a2 4 gis2 e'4
  e2 4 2 8[e] % B
  cis2 4 d2 4
  cis2.~2 4
  e2 cis4 d2 gis,4
  a2.~2
}

bass = \relative {
  \autoBeamOff
  e4 a,2 cis4 e2 4
  a2 d,4 cis2 a4
  d2 4 cis2 d4
  a2.~2 d4
  cis2 fis4
  e2 4
  a2 b4 cis2 e,4 % B
  fis2 e4 d2 e4
  a2.~2 4
  e2 fis4 d2 e4
  a,2.~2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, Thine all- --  vic -- to -- rious love
  Shed ion my soul a -- broad;
  Then shall my heart no long -- er rove,
  Root -- ed and fixed in God,
  Root -- ed and fixed in God.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh that in me the sac -- red fire
  Might now be -- gin to grow!
  Burn up the dross of base de -- sire,
  And make the moun -- tains flow,
  And make the moun -- tains flow.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Yhou, who at Pen -- te -- cost didst fall,
  Do Thou my sins con -- sume;
  Come, Ho -- ly Ghost, for Thee I call;
  Spi -- rit of Burn -- ing, come!
  Spi -- rit of Burn -- ing, come!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Re -- fin -- ing Fire, go through my heart,
  Ill -- u -- min -- ate my soul;
  Scat -- ter Thy life through ev -- ery part,
  And sanc -- ti -- fy the whole,
  And sanc -- ti -- fy the whole.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  My stead -- fast soul, from fall -- ing free,
  Shall then no long -- er move;
  While Christ is all the world to me,
  And all my heart is love,
  And all my heart is love.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " "Thine " all-  vic to "rious " "love "
  "\nShed " "ion " "my " "soul " a "broad; "
  "\nThen " "shall " "my " "heart " "no " long "er " "rove, "
  "\nRoot" "ed " "and " "fixed " "in " "God, "
  "\nRoot" "ed " "and " "fixed " "in " "God. "

  \set stanza = "2."
  "\nOh " "that " "in " "me " "the " sac "red " "fire "
  "\nMight " "now " be "gin " "to " "grow! "
  "\nBurn " "up " "the " "dross " "of " "base " de "sire, "
  "\nAnd " "make " "the " moun "tains " "flow, "
  "\nAnd " "make " "the " moun "tains " "flow. "

  \set stanza = "3."
  "\nYhou, " "who " "at " Pen te "cost " "didst " "fall, "
  "\nDo " "Thou " "my " "sins " con "sume; "
  "\nCome, " Ho "ly " "Ghost, " "for " "Thee " "I " "call; "
  "\nSpi" "rit " "of " Burn "ing, " "come! "
  "\nSpi" "rit " "of " Burn "ing, " "come! "

  \set stanza = "4."
  "\nRe" fin "ing " "Fire, " "go " "through " "my " "heart, "
  "\nIll" u min "ate " "my " "soul; "
  "\nScat" "ter " "Thy " "life " "through " ev "ery " "part, "
  "\nAnd " sanc ti "fy " "the " "whole, "
  "\nAnd " sanc ti "fy " "the " "whole. "

  \set stanza = "5."
  "\nMy " stead "fast " "soul, " "from " fall "ing " "free, "
  "\nShall " "then " "no " long "er " "move; "
  "\nWhile " "Christ " "is " "all " "the " "world " "to " "me, "
  "\nAnd " "all " "my " "heart " "is " "love, "
  "\nAnd " "all " "my " "heart " "is " "love. "
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
            \new Voice {
               \RehearsalTrack
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
              \TempoTrack
            }
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
            \new Voice {
               \RehearsalTrack
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
              \TempoTrack
            }
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
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
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
    \midi {}
  }
}
