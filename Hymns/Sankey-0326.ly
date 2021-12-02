\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, Thou Desire!"
  subtitle    = "Sankey No. 326"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "T. Greatorex."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Anne Steele."
  meter       = \markup\smallCaps "C.M."
  piece       = \markup\smallCaps "Tottenham."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 2/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2*7
  \mark \markup { \box "B" } s2*7
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d''4 8 c
  b4 g
  e'4 4
  d4 4
  c4 a
  b4 c8[a]
  g4(fis)
  d4 e8 fis % B
  g4 4
  a4 b
  c4 e
  d4 c8[a]
  g4 fis
  g2
}

alto = \relative {
  \autoBeamOff
  g'4 a8 fis
  g4 d
  e8[fis] g[a]
  b4 gis
  a4 fis
  g4 e
  d2
  a4 b8 c % B
  d4 4
  a'8[fis] g4
  g4 e8[fis]
  g4 e
  d4 4
  d2
}

tenor = \relative {
  \autoBeamOff
  b4 a8 8
  b4 d
  c4 4
  b4 4
  c4 d
  d4 e8[c]
  b4(a)
  fis4 g8 a % B
  b4 g8[b]
  d4 4
  c4 4
  d4 e8[c]
  b4 a
  b2
}

bass = \relative {
  \autoBeamOff
  g4 d8 d
  g4 b,
  c8[d] e[fis]
  g4 e
  a4 d,
  g4 c,
  d2
  d4 8 c % B
  b8[a] b[g]
  fis'8[d] g[f]
  e4 c
  b4 c
  d4 4
  g,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, Thou De -- sire of all Thy saints!
  Our hum -- ble strains at -- tend;
  While with our prais -- es and com -- plaints,
  Low at Thy feet we bend.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  How should our songs, like those a -- bove,
  With warm de -- vo -- tion rise!
  How should our souls. on wings of love,
  Mount up -- ward to the skies!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come, Lord! Thy love a -- lone can raise
  In us the heavrn -- ly flame;
  Then shall our lips re -- sound Thy praise,
  Our hearts a -- dore Thy name.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Dear Sa -- viour, let Thy glo -- ry shine,
  And fill Thy dwell -- ings here;
  Till life, and love, and joy Di -- vine
  A heaven on earth ap -- pear.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "Thou " De "sire " "of " "all " "Thy " "saints! "
  "\nOur " hum "ble " "strains " at "tend; "
  "\nWhile " "with " "our " prais "es " "and " com "plaints, "
  "\nLow " "at " "Thy " "feet " "we " "bend. "

  \set stanza = "2."
  "\nHow " "should " "our " "songs, " "like " "those " a "bove, "
  "\nWith " "warm " de vo "tion " "rise! "
  "\nHow " "should " "our " "souls. " "on " "wings " "of " "love, "
  "\nMount " up "ward " "to " "the " "skies! "

  \set stanza = "3."
  "\nCome, " "Lord! " "Thy " "love " a "lone " "can " "raise "
  "\nIn " "us " "the " heavrn "ly " "flame; "
  "\nThen " "shall " "our " "lips " re "sound " "Thy " "praise, "
  "\nOur " "hearts " a "dore " "Thy " "name. "

  \set stanza = "4."
  "\nDear " Sa "viour, " "let " "Thy " glo "ry " "shine, "
  "\nAnd " "fill " "Thy " dwell "ings " "here; "
  "\nTill " "life, " "and " "love, " "and " "joy " Di "vine "
  "\nA " "heaven " "on " "earth " ap "pear. "
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
