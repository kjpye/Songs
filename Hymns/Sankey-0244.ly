\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I to the Hills will lift mine Eyes."
  subtitle    = "Sankey No. 244"
  subsubtitle = "Sankey 880 No. 436"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "Scottish Psalter."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup "Psalm 121"
  meter       = \markup\smallCaps "c.m."
  piece       = \markup\smallCaps "York."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
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
  g'4
  b4 d c e
  b4 d a a
  b4 d e cis
  d2. \bar "|" \break g,4
  b4 d c e
  b4 d a b
  c4 b a a
  g2.
}

alto = \relative {
  \autoBeamOff
  d'4
  g4 4 4 e
  g4 4 fis fis
  g4 d g e
  fis2. d4
  g4 4 4 e
  g4 4 fis g
  g4 4 4 fis
  g2.
}

tenor = \relative {
  \autoBeamOff
  b4 d4 b c c
  d4 4 4 4
  d4 a b a
  a2. b4
  d4 b c c % B
  d4 4 4 4
  c4 d e d8[c]
  b2.
}

bass = \relative {
  \autoBeamOff
  g4
  g4 4 e c
  g'4 b, d d
  g4 fis e a,
  d2. g4
  g4 4 e c
  g'4 b, d g
  e4 d c d
  g,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I to the hills will lift mine eyes,
  From whence doth come mine aid;
  My safe -- ty com -- eth from the Lord,
  Who heaven and earth hath made.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thy foot He'll not let slide, nor will
  He slum -- ber that thee keeps:
  Be -- hold, He that keeps Is -- ra -- el
  He slum -- bers not nor sleeps.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The Lord thee keeps, the Lord thy shade
  On thy right hand doth stay:
  The moon by night thee shall not smite,
  Nor yet the sun by day.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The Lord shall keep thy soul; He shall
  Pre -- serve thee from all ill:
  Hence -- forth thy go -- ing out and in
  God keep for ev -- er will.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "to " "the " "hills " "will " "lift " "mine " "eyes, "
  "\nFrom " "whence " "doth " "come " "mine " "aid; "
  "\nMy " safe "ty " com "eth " "from " "the " "Lord, "
  "\nWho " "heaven " "and " "earth " "hath " "made. "

  \set stanza = "2."
  "\nThy " "foot " "He'll " "not " "let " "slide, " "nor " "will "
  "\nHe " slum "ber " "that " "thee " "keeps: "
  "\nBe" "hold, " "He " "that " "keeps " Is ra "el "
  "\nHe " slum "bers " "not " "nor " "sleeps. "

  \set stanza = "3."
  "\nThe " "Lord " "thee " "keeps, " "the " "Lord " "thy " "shade "
  "\nOn " "thy " "right " "hand " "doth " "stay: "
  "\nThe " "moon " "by " "night " "thee " "shall " "not " "smite, "
  "\nNor " "yet " "the " "sun " "by " "day. "

  \set stanza = "4."
  "\nThe " "Lord " "shall " "keep " "thy " "soul; " "He " "shall "
  "\nPre" "serve " "thee " "from " "all " "ill: "
  "\nHence" "forth " "thy " go "ing " "out " "and " "in "
  "\nGod " "keep " "for " ev "er " "will. "
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
                                              \wordsFour  \chorus
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
    system-system-spacing.basic-distance = #22
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
                                              \wordsFour  \chorus
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack }
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
