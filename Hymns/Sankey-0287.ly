\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Lord, Dismiss us."
  subtitle    = "Sankey No. 287"
  subsubtitle = "Sankey 880 No. 153"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. L. Viner."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Fawcett."
  meter       = \markup\smallCaps "8.7.8.7.4.7."
  piece       = \markup\smallCaps "Dismissal."

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
  \mark \markup { \box "C" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 gis8[fis] e4 cis
  fis4 a e cis
  cis'4 b8[a] fis4 b
  a4 gis a2
  cis4 8[d] e4 cis % B
  d4 b cis a
  cis4 8[d] e4 cis
  d4 cis b2
  a4 gis8[fis] e4 cis % C
  fis4 a e cis
  cis'4 b8[a] fis4 b
  a4 gis a2
}

alto = \relative {
  \autoBeamOff
  cis'4 e8[d] cis4 4
  d4 4 cis a
  a'4 fis8[e] d4 fis
  e4 4 2
  e4 4 4 4 % B
  gis4 4 a e
  e4 4 4 4
  gis4 a e2
  cis4 e8[d] cis4 4 % C
  d4 4 cis a
  a'4 fis8[e] d4 fis
  e4 4 2
}

tenor = \relative {
  \autoBeamOff
  e4 8[gis] a4 4
  a4 4 4 4
  e'4 d8[cis] b4 d
  cis4 b cis2
  a4 8[b] cis4 a % B
  b4 e e cis
  a4 8[b] cis4 a
  b4 a gis2
  e4 8[gis] a4 4 % C
  a4 4 4 4
  e'4 d8[cis] b4 d
  cis4 b cis2
}

bass = \relative {
  \autoBeamOff
  a,4 4 4 4
  d4 fis a a,
  a4 b8[cis] d4 b
  e4 4 a,2
  a'4 8[b] a4 4 % B
  e4 4 a a,
  a'4 8[b] a4 4
  e4 4 2
  a,4 4 4 4 % C
  d4 fis a a,
  a4 b8[cis] d4 b
  e4 4 a,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Lord, dis -- miss us with Thy bless -- ing,
  Fill our hearts with joy and peace;
  Let us each, Thy loev pos -- ses -- sing,
  Tri -- umph in re -- deem -- ing grace.
  Oh, re -- fresh us, Oh, re -- fresh us,
  Trav -- 'lling thro' this wil -- der -- ness.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thanks we give, and ad -- o -- ra -- tion,
  For Thy gos -- pel's joy -- ful sound;
  May the fruits of Thy sal -- va -- tion
  In our hearts and lives a -- bound.
  Ev -- er faith -- ful, Ev -- er faith -- ful
  To the truth may we be found.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  So, when -- e'er the sig -- nal's giv -- en
  Us from earth to call a -- way,
  Borne on an -- gel's wings to hea -- ven,
  Glad the sum -- mons to o -- bey,
  May we ev -- er,
  May we ev -- er
  Reign with Christ in end -- less day.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lord, " dis "miss " "us " "with " "Thy " bless "ing, "
  "\nFill " "our " "hearts " "with " "joy " "and " "peace; "
  "\nLet " "us " "each, " "Thy " "loev " pos ses "sing, "
  "\nTri" "umph " "in " re deem "ing " "grace. "
  "\nOh, " re "fresh " "us, " "Oh, " re "fresh " "us, "
  "\nTrav" "'lling " "thro' " "this " wil der "ness. "

  \set stanza = "2."
  "\nThanks " "we " "give, " "and " ad o ra "tion, "
  "\nFor " "Thy " gos "pel's " joy "ful " "sound; "
  "\nMay " "the " "fruits " "of " "Thy " sal va "tion "
  "\nIn " "our " "hearts " "and " "lives " a "bound. "
  "\nEv" "er " faith "ful, " Ev "er " faith "ful "
  "\nTo " "the " "truth " "may " "we " "be " "found. "

  \set stanza = "3."
  "\nSo, " when "e'er " "the " sig "nal's " giv "en "
  "\nUs " "from " "earth " "to " "call " a "way, "
  "\nBorne " "on " an "gel's " "wings " "to " hea "ven, "
  "\nGlad " "the " sum "mons " "to " o "bey, "
  "\nMay " "we " ev "er, "
  "\nMay " "we " ev "er "
  "\nReign " "with " "Christ " "in " end "less " "day. "
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
