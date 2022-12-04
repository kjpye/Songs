\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Saviour Died for me."
  subtitle    = "Sankey No. 536"
  subsubtitle = "C. C. No. 82"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{Arr. \smallCaps "S. Thalberg."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "T. Raffles."
  meter       = \markup\smallCaps "D.C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key e \major
  \time 3/4
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2.*3 s2 s8
  \textMark \markup { \box \bold "B" } s8 s2.*3 s2 s8
  \textMark \markup { \box \bold "C" } s8 s2.*3 s2 s8
  \textMark \markup { \box \bold "D" } s8 s2.*3 s2 s8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'8 | 4. 8 cis8. ais16 | b8. 16 4 r8 gis | 4. 8 b8. dis,16 | e2 r8 \bar "|" \break
  b'8 | 4. 8 cis8. ais16 | b8. 16 4 4 | dis4. b8 cis8. fis,16 | b2 r8 \bar "|" \break
  b8 | e4. cis8 b8. cis16 | b8. e16 4 r8 b | bis4. 8 cis8. dis16 | cis2 r8 \bar "|" \break
  cis8 | b4. cis8 b8. cis16 | b8. e16 4 4 | 4. gis,8 cis8. b16 | e,2 r8
}

alto = \relative {
  \autoBeamOff
  gis'8 | 4. 8 fisis8. 16 | gis8. 16 4 r8 e | 4. 8 dis8. b16 | 2 r8
  gis'8 | 4. 8 fisis8. 16 | gis8. 16 4 4 | fis4. 8 e8. 16 | dis2 r8
  fis8 | 4. 8 8. 16 |e8. 16 4 r8 e | fis4. 8 8. 16 | gis2 r8
  gis8 | fis4. 8 8. 16 | e8. 16 4 fisis | gis4. e8 dis8. 16 | e2 r8
}

tenor = \relative {
  \autoBeamOff
  b8 | 4. 8 ais8. cis16 | b8. 16 4 r8 8 | 4. 8 a8. 16 | gis2 r8
  b8 | 4. 8 ais8. cis16 | b8. 16 4 d | dis4. 8 ais8. cis16 | b2 r8
  dis8 | 4. 8 8. 16 | e8. b16 4 r8 b | dis4. 8 8. 16 | e2 r8
  e8 | dis4. 8 8. 16 | e8. b16 4 ais | b4. 8 a8. 16 | gis2 r8
}

bass = \relative {
  \autoBeamOff
  e8 | 4. 8 8. 16 | 8. 16 4 r8 8 | b4. 8 8. 16 | e2 r8
  e8 | 4. 8 8. 16 | 8. 16 4 eis | fis4. 8 8. 16 | b,2 r8
  b'8 | a4. 8 8. 16 | gis8. 16 4 r8 8 | 4. 8 8. 16 | c,2 r8
  c8 | a'4. 8 8. 16 | gis8. 16 4 c, | b4. 8 8. 16 | e2 r8
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Thou art my hi -- ding place, O Lord!
  In Thee I put my trust;
  En -- cour -- aged by Thy ho -- ly Word,
  A fee -- ble child of dust;
  I have no ar -- gu -- ment be -- side,
  I urge no o -- ther plea;
  And 'tis e -- nough my Sa -- viour died,
  My Sa -- viour died for me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When storms of fierce temp -- ta -- tion beat,
  And fu -- rious foes as -- sail,
  My re -- fuge is the mer -- cy seat,
  My hope with -- in the vail:
  From strife of tongues and bit -- ter words
  My spi -- rit flies to Thee;
  Joy is my heart the thought af -- fords—
  My Sa -- viour died for me!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  And when Thine aw -- ful voice com -- mands
  This bo -- dy to de -- cay,
  And life in its last ling -- 'ring sands
  Is eb -- bing fast a -- way—
  Then though it be in ac -- cents weak,
  My voice shall call on Thee,
  And ask for strength in death to speak,
  "\"My" Sa -- viour died for "me!\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Thou " "art " "my " hi "ding " "place, " "O " "Lord! "
  "\nIn " "Thee " "I " "put " "my " "trust; "
  "\nEn" cour "aged " "by " "Thy " ho "ly " "Word, "
  "\nA " fee "ble " "child " "of " "dust; "
  "\nI " "have " "no " ar gu "ment " be "side, "
  "\nI " "urge " "no " o "ther " "plea; "
  "\nAnd " "'tis " e "nough " "my " Sa "viour " "died, "
  "\nMy " Sa "viour " "died " "for " "me!\n"

  \set stanza = "2."
  "\nWhen " "storms " "of " "fierce " temp ta "tion " "beat, "
  "\nAnd " fu "rious " "foes " as "sail, "
  "\nMy " re "fuge " "is " "the " mer "cy " "seat, "
  "\nMy " "hope " with "in " "the " "vail: "
  "\nFrom " "strife " "of " "tongues " "and " bit "ter " "words "
  "\nMy " spi "rit " "flies " "to " "Thee; "
  "\nJoy " "is " "my " "heart " "the " "thought " af "fords— "
  "\nMy " Sa "viour " "died " "for " "me!\n"

  \set stanza = "3."
  "\nAnd " "when " "Thine " aw "ful " "voice " com "mands "
  "\nThis " bo "dy " "to " de "cay, "
  "\nAnd " "life " "in " "its " "last " ling "'ring " "sands "
  "\nIs " eb "bing " "fast " a "way— "
  "\nThen " "though " "it " "be " "in " ac "cents " "weak, "
  "\nMy " "voice " "shall " "call " "on " "Thee, "
  "\nAnd " "ask " "for " "strength " "in " "death " "to " "speak, "
  "\n\"My " Sa "viour " "died " "for " "me!\"\n"
}

wordsMidiMen = \lyricmode {
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
            \addlyrics \wordsMidiMen
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice \partCombine #'(2 . 88) { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusMen
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \soprano \bar "|." }
                                    { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \bookOutputSuffix "single"
  \score {
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
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
    \singlescore
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
