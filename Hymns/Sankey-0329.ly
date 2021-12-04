\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Promised Presence."
  subtitle    = "Sankey No. 329"
  subsubtitle = "Sankey 880 No. 384"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "B. Milgrove."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = \markup\smallCaps "7s."
  piece       = \markup\smallCaps "hart's."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key a \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4 4 a a
  b4 4 cis2
  a4 4 d cis8[b]
  a4 cis b2
  e4 4 cis cis % B
  d4 4 b2
  cis4 d e d
  cis4 b a2
}

alto = \relative {
  \autoBeamOff
  cis'4 b cis e
  fis4 e4 2
  fis4 e d e8[d]
  cis4 e4 2
  e4 4 fis4 4 % B
  fis4 4 e2
  a4 4 e fis
  e4 8[d] cis2
}

tenor = \relative {
  \autoBeamOff
  a4 b a a
  a4 gis a2
  a4 4 gis a8[gis]
  a4 4 gis2
  a4 4 4 ais % B
  b4 4 gis2
  e'4 d cis a
  a4 gis a2
}

bass = \relative {
  \autoBeamOff
  \once\partCombineApart a4 gis fis cis
  d4 e \once\partCombineApart a2
  d,4 cis b a8[b]
  cis4 a e'2
  cis4 4 fis4 4 % B
  b,4 4 e2
  a4 fis cis d
  e4 4 a2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus, we Thy prom -- ise claim,
  We are ga -- thered in Thy name;
  In the midst do Thou ap -- pear;
  Man -- i -- fest Thy pres -- ence here.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sanc -- ti -- fy us, Lord, and bless;
  Breathe Thy  Spi -- rit, give Thy peace;
  Come and dwell with -- in each heart;
  Light, and life, and joy im -- part.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Make us all in Thee com -- plete,
  Make us all for glo -- ry meet—
  Meet t'ap -- pear be -- fore Thy sight;
  Part -- ners with the saints in light!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus, " "we " "Thy " prom "ise " "claim, "
  "\nWe " "are " ga "thered " "in " "Thy " "name; "
  "\nIn " "the " "midst " "do " "Thou " ap "pear; "
  "\nMan" i "fest " "Thy " pres "ence " "here. "

  \set stanza = "2."
  "\nSanc" ti "fy " "us, " "Lord, " "and " "bless; "
  "\nBreathe " "Thy "  Spi "rit, " "give " "Thy " "peace; "
  "\nCome " "and " "dwell " with "in " "each " "heart; "
  "\nLight, " "and " "life, " "and " "joy " im "part. "

  \set stanza = "3."
  "\nMake " "us " "all " "in " "Thee " com "plete, "
  "\nMake " "us " "all " "for " glo "ry " "meet— "
  "\nMeet " t'ap "pear " be "fore " "Thy " "sight; "
  "\nPart" "ners " "with " "the " "saints " "in " "light! "
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
    page-breaking = #ly:one-page-breaking
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
