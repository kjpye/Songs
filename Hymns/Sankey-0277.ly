\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "\"Till He Come.\""
  subtitle    = "Sankey No. 277"
  subsubtitle = "Sankey 880 No. 694"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "D. Bortnianski."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Rt. Rev. E. H. Bickersteth, D.D."
  meter       = \markup "Six 7s."
  piece       = \markup\smallCaps "Wells."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*8
  \mark \markup { \box "B" } s2.*8
  \mark \markup { \box "C" } s2.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4(fis) g
  a2 d4
  e4(d) cis
  d2.
  b4(d) b
  a2 fis4
  a4(g) fis
  e2. \break
  a4(fis) g % B
  a2 d4
  e4(d) cis
  d2.
  b4(d) b
  a2 fis4
  b4(fis) gis
  a2.
  e'2 cis4 % C
  d2 a4
  fis'4(e) d
  d2(cis4)
  d4(cis)b
  a2 fis4
  g2 e4
  d2.
}

alto = \relative {
  \autoBeamOff
  fis'4(d)e
  fis2 4
  g4(fis) e
  fis2.
  g4(b) g
  fis2 d4
  e2 d4
  cis2.
  fis4(d) e % B
  fis2 4
  g4(fis) e
  fis2.
  g4(b) g
  fis2 d4
  fis2 e4
  e2.
  g2 e4 % C
  fis2 4
  a4(g) fis
  fis2(e4) fis4(a) g
  fis2 d4
  d2 cis4
  d2.
}

tenor = \relative {
  \autoBeamOff
  a2 4
  a2 4
  cis4(d) e
  d2.
  d2 4
  d2 a4
  a2 4
  a2.
  a2 b8[cis] % B
  d2 a4
  cis4(d) e
  d2.
  d2 4
  d2 a4
  d2 b4
  cis2.
  cis2 e4 % C
  d2 4
  d4(cis) d
  a2.
  a2 b8[cis]
  d2 a4
  b2 a8[g]
  fis2.
}

bass = \relative {
  \autoBeamOff
  d2 4
  d2 4
  a2 4
  d2.
  g2 4
  d2 4
  cis2 d4
  a2.
  d2 4 % B
  d2 4
  a2 4
  d2.
  g2 4
  d2 4
  b2 e4
  a,2.
  a2 4 % C
  d2 4
  d4(e) fis8[g]
  a2.
  d,2 4
  d2 4
  g,2 a4
  d2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Till" He "Come!\""
  Oh, Let the words
  Lin -- ger on the tremb -- ling chords;
  Let the "\"lit" -- tle "while\"" be -- tween
  In their gold -- en light be seen:
  Let us think how heaven and home
  Lie be -- yond that \markup\italic "\"Till" \markup\italic He \markup\italic "come!\""
}

wordsTwo = \lyricmode {
  \set stanza = "2."
  When the wea -- ry ones we love
  En -- ter on their rest a -- bove—
  Seems the earth so poor and vast?—
  All our life- -- joy o -- ver -- cast?
  Hush! be ev -- 'ry mur -- mur dumb:
  It is on -- ly \markup\italic "\"Till" \markup\italic He \markup\italic "come!\""
}

wordsThree = \lyricmode {
  \set stanza = "3."
  Clouds and con -- flicts round us press;
  Would we have one sor -- row less?
  All the sharp -- ness of the cross,
  All that tells the world is loss—
  Death, and dark -- ness, and the tomb—
  On -- ly whis -- per, \markup\italic "\"Till" \markup\italic He \markup\italic "come!\""
}

wordsFour = \lyricmode {
  \set stanza = "4."
  See the feast of love is spread,
  Drink the wine and break the bread—
  Sweet mem -- or -- ials— till the Lord
  Calls us round His heaven -- ly board;
  Some from earth, from glo -- ry some,
  Sev -- ered on -- ly \markup\italic "\"Till" \markup\italic He \markup\italic "come!\""
}

wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"Till " "He " "Come!\" "
  "\nOh, " "Let " "the " "words "
  "\nLin" "ger " "on " "the " tremb "ling " "chords; "
  "\nLet " "the " "\"lit" "tle " "while\" " be "tween "
  "\nIn " "their " gold "en " "light " "be " "seen: "
  "\nLet " "us " "think " "how " "heaven " "and " "home "
  "\nLie " be "yond " "that " "\"Till " "He " "come!\" "

  \set stanza = "2."
  "\nWhen " "the " wea "ry " "ones " "we " "love "
  "\nEn" "ter " "on " "their " "rest " a "bove— "
  "\nSeems " "the " "earth " "so " "poor " "and " "vast?— "
  "\nAll " "our " life- "joy " o ver "cast? "
  "\nHush! " "be " ev "'ry " mur "mur " "dumb: "
  "\nIt " "is " on "ly " "\"Till " "He " "come?\" "

  \set stanza = "3."
  "\nClouds " "and " con "flicts " "round " "us " "press; "
  "\nWould " "we " "have " "one " sor "row " "less? "
  "\nAll " "the " sharp "ness " "of " "the " "cross, "
  "\nAll " "that " "tells " "the " "world " "is " "loss— "
  "\nDeath, " "and " dark "ness, " "and " "the " "tomb— "
  "\nOn" "ly " whis "per, " "\"Till " "He " "come!\" "

  \set stanza = "4."
  "\nSee " "the " "feast " "of " "love " "is " "spread, "
  "\nDrink " "the " "wine " "and " "break " "the " "bread— "
  "\nSweet " mem or "ials— " "till " "the " "Lord "
  "\nCalls " "us " "round " "His " heaven "ly " "board; "
  "\nSome " "from " "earth, " "from " glo "ry " "some, "
  "\nSev" "ered " on "ly " "\"Till " "He " "come!\" "
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
