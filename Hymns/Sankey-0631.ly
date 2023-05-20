\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Let us Walk in the Light."
  subtitle    = "Sankey No. 631"
  subsubtitle = "C. C. No. 17"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{Arr. \smallCaps "Ira D. Sankey."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J Crosby."
  meter       = \markup\smallCaps "C. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes4 | ees g f aes | g c bes ees, | g g aes g | f2. \bar "|" \break
  bes,4 | ees g f aes | g c bes ees, | g f ees d | ees2.
  \break \section \sectionLabel \markup\smallCaps Chorus.
  g8. aes16 | bes2~4 c8. bes16 | aes2~4 f8. g16 | aes4 8. 16 bes4 aes | g2. \bar "|" \break
  g8. aes16 | bes2~4 c8. d16 | ees2~4\fermata c8. 16 | bes4 g8. ees16 g4 f | ees2.
}

alto = \relative {
  \autoBeamOff
  bes4 | bes ees d f | ees4 4 4 4 | 4 4 f ees | d2.
  bes4 | 4 ees d f | ees4 4 4 4 | c c bes bes | 2. \section
  ees8. f16 | g2~4 aes8. g16 | f2~4 d8. ees16 | f4 8. 16 d4 f | ees2.
  ees8. f16 | g2~4 aes8. f16 | g2(aes4\fermata) 8. 16 | g4 ees8. 16 4 d | ees2.
}

tenor = \relative {
  \autoBeamOff
  g4 | g bes4 4 4 | 4 aes g g | bes4 4 4 4 | 2.
  g4 | g bes4 4 4 | 4 aes g bes | bes aes g f | g2. \section
  r4 | r bes8. 16 ees4 r | r bes8. 16 d4 bes8. 16 | 4 8. 16 f4 bes | 2.
  r4 | r bes8. 16 ees4 r | r bes8. des16 c4 ees8. 16 |4 bes8. g16 bes4 aes | g2.
}

bass = \relative {
  \autoBeamOff
  ees4 | 4 4 bes bes | ees4 4 4 4 | 4 4 d ees | bes2.
  ees4 | 4 4 bes bes | ees4 4 4 g, | aes4 4 bes bes | ees2.
  r4 | r ees8. 16 4 r | r bes'8. 16 4 bes,8. 16 | 4 8. 16 4 4 | ees2.
  r4 | r ees8. 16 4 r | r ees8. 16 aes,4 8. 16 | bes4 8. c16 bes4 4 | ees2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Let us walk __ in the Light __
  Ev -- er walk in the Light of God;
  Let us walk __ in the Light __
  Ev -- er walk in the Light of God;
}

chorusMen = \lyricmode {
  \tiny
  \repeat unfold 28 _
  Let us walk in the Light!
  _ _ _ _ _ _ _ _
  Let us walk in the Light!
  _ _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  There is a Light, a bless -- ed Light,
  That comes from God a -- bove:
  And in the face of Christ the Lord
  Re -- flects the Fa -- ther's love.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  There is a light, a glo -- rious Light,
  That falls up -- on our way;
  And bright -- er shi -- neth as we go,
  Till lost in per -- fect day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  There is a light, a ho -- ly Light,
  By which we now be -- hold
  The jas -- per walls, the pear -- ly gates,
  And streets of shin -- ing gold.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  O bless -- ed, bless -- ed ho -- ly Light,
  To all so free -- ly given;
  Shine forth, shine forth, O Light of Life,
  And guide us safe to heaven.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "There " "is " "a " "Light, " "a " bless "ed " "Light, "
  "\nThat " "comes " "from " "God " a "bove: "
  "\nAnd " "in " "the " "face " "of " "Christ " "the " "Lord "
  "\nRe" "flects " "the " Fa "ther's " "love. "
  "\nLet " "us " "walk "  "in " "the " "Light " 
  "\nEv" "er " "walk " "in " "the " "Light " "of " "God; "
  "\nLet " "us " "walk "  "in " "the " "Light " 
  "\nEv" "er " "walk " "in " "the " "Light " "of " "God;\n"

  \set stanza = "2."
  "\nThere " "is " "a " "light, " "a " glo "rious " "Light, "
  "\nThat " "falls " up "on " "our " "way; "
  "\nAnd " bright "er " shi "neth " "as " "we " "go, "
  "\nTill " "lost " "in " per "fect " "day. "
  "\nLet " "us " "walk "  "in " "the " "Light " 
  "\nEv" "er " "walk " "in " "the " "Light " "of " "God; "
  "\nLet " "us " "walk "  "in " "the " "Light " 
  "\nEv" "er " "walk " "in " "the " "Light " "of " "God;\n"

  \set stanza = "3."
  "\nThere " "is " "a " "light, " "a " ho "ly " "Light, "
  "\nBy " "which " "we " "now " be "hold "
  "\nThe " jas "per " "walls, " "the " pear "ly " "gates, "
  "\nAnd " "streets " "of " shin "ing " "gold. "
  "\nLet " "us " "walk "  "in " "the " "Light " 
  "\nEv" "er " "walk " "in " "the " "Light " "of " "God; "
  "\nLet " "us " "walk "  "in " "the " "Light " 
  "\nEv" "er " "walk " "in " "the " "Light " "of " "God;\n"

  \set stanza = "4."
  "\nO " bless "ed, " bless "ed " ho "ly " "Light, "
  "\nTo " "all " "so " free "ly " "given; "
  "\nShine " "forth, " "shine " "forth, " "O " "Light " "of " "Life, "
  "\nAnd " "guide " "us " "safe " "to " "heaven. "
  "\nLet " "us " "walk "  "in " "the " "Light " 
  "\nEv" "er " "walk " "in " "the " "Light " "of " "God; "
  "\nLet " "us " "walk "  "in " "the " "Light " 
  "\nEv" "er " "walk " "in " "the " "Light " "of " "God; "
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsMidi
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
      #(layout-set-staff-size 20)
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
                                              \wordsFour  \chorus
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
      #(layout-set-staff-size 20)
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
      #(layout-set-staff-size 20)
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
