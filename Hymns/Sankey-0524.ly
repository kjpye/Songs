\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Guide me!"
  subtitle    = "Sankey No. 524"
  subsubtitle = "Sankey 880 No. 57"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Filitz."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. Williams."
  meter       = \markup\smallCaps "8.7.4."
  piece       = \markup\smallCaps "Mannheim."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key e \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box "A" } s1*3
  \textMark \markup { \box "B" } s1*3
  \textMark \markup { \box "C" } s1*3
  \textMark \markup { \box "D" } s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4 gis b b | cis b a gis | gis a b e, |
  gis4 fis e2 | b'4 4 cis b | dis cis cis b |
  b4 fis gis cis | b ais b2 |e,4 gis b b |
  cis4 b a gis | gis a b e, | gis fis e2 |
}

alto = \relative {
  \autoBeamOff
  b4 e fis e | e e dis e | e fis fis e |
  e4 dis e2 | 4 4 4 4 | 4 4 4 4 |
  fis4 dis e gis | fis e dis2 | b4 e fis e |
  e4 e dis e | e fis fis e | e dis e2 |
}

tenor = \relative {
  \autoBeamOff
  gis4 b b gis | a b b b | cis cis b gis |
  b4 a gis2 | 4 4 a gis | b a a gis |
  b4 4 4 e | dis cis b2 | gis4 b b gis |
  a4 b b b | cis cis b gis | b a gis2 |
}

bass = \relative {
  \autoBeamOff
  e4 4 dis fis | a gis fis e | cis fis dis e |
  b4 4 e2 | 4 4 4 4 | gis, a e' e |
  dis4 b e cis | fis fis b,2 | e4 4 dis e |
  a4 gis fis e | cis fis dis e | b4 4 e2 |
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
  Guide me, O Thou great Je -- ho -- vah,
  Pil -- grim through this bar -- ren land;
  I am weak, but Thou art migh -- ty;
  Hold me with Thy power -- ful hand;
  Bread of hea -- ven,
  Bread of hea -- ven,
  Feed me till I want no more.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O -- pen now the cry -- stal foun -- tain,
  Whence the heal -- ing wa -- ters flow;
  Let the fie -- ry, clou -- dy pil -- lar
  Lead me all my jour -- ney through:
  String de -- liv -- 'rer,
  String de -- liv -- 'rer,
  Be Thou still my strength and shield.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When I tread the verge of Jor -- dan,
  Bid my anx -- ious fears sub -- side;
  Bear me through the swell -- ing cur -- rent,
  Land me safe on Ca -- naan's side:
  Songs of prai -- ses,
  Songs of prai -- ses
  I will ev -- er give to Thee!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Guide " "me, " "O " "Thou " "great " Je ho "vah, "
  "\nPil" "grim " "through " "this " bar "ren " "land; "
  "\nI " "am " "weak, " "but " "Thou " "art " migh "ty; "
  "\nHold " "me " "with " "Thy " power "ful " "hand; "
  "\nBread " "of " hea "ven, "
  "\nBread " "of " hea "ven, "
  "\nFeed " "me " "till " "I " "want " "no " "more.\n"

  \set stanza = "2."
  "\nO" "pen " "now " "the " cry "stal " foun "tain, "
  "\nWhence " "the " heal "ing " wa "ters " "flow; "
  "\nLet " "the " fie "ry, " clou "dy " pil "lar "
  "\nLead " "me " "all " "my " jour "ney " "through: "
  "\nString " de liv "'rer, "
  "\nString " de liv "'rer, "
  "\nBe " "Thou " "still " "my " "strength " "and " "shield.\n"

  \set stanza = "3."
  "\nWhen " "I " "tread " "the " "verge " "of " Jor "dan, "
  "\nBid " "my " anx "ious " "fears " sub "side; "
  "\nBear " "me " "through " "the " swell "ing " cur "rent, "
  "\nLand " "me " "safe " "on " Ca "naan's " "side: "
  "\nSongs " "of " prai "ses, "
  "\nSongs " "of " prai "ses "
  "\nI " "will " ev "er " "give " "to " "Thee! "
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
