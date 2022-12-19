\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Put your Trust in God."
  subtitle    = "Sankey No. 563"
%  subsubtitle = "Sankey 880 No. "
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "L. H. Barnes."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
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
  ees'4 | aes4 8. 16 4 g8. aes16 | bes2. c8. des16 | ees4 c bes8. aes16 c8. bes16 | aes2. \bar "|" \break
  ees4 | aes4 8. 16 4 g8. aes16 | bes2. c8[des] | ees4 des c bes | aes2. \bar "||" \break
  c8^\markup\smallCaps Chorus. [des] | ees4. c8 des4 c | c bes2 8[c] | des4. 8 ees8. des16 c8. bes16 | c2. \bar "|" \break
  c8. bes16 | aes4 f ees c8. ees16 | aes4 bes c c8. des16 | ees4. des8 c4 bes | aes2.
}

alto = \relative {
  \autoBeamOff
  c'4 | 4 8. 16 ees4 8. 16 | 2. 8. 16 | 4 4 des8. c16 ees8. des16 | c2.
  c4 | 4 8. 16 ees4 8. 16 | 2. 4 | 4 f ees des | c2.
  ees4 | 4. 8 4 4 | 4 2 4 | 4. 8 8. 16 8. 16 | 2.
  ees8. des16 c4 des c4 8. ees16 | aes4 bes c ees,8. 16 | aes4. f8 ees4 des | c2.
}

tenor = \relative {
  \autoBeamOff
  aes4 | ees4 8. 16 aes4 des8. c16 |g2. aes8. bes16 | c4 aes g8. ees16 8. 16 | 2.
  aes4 | ees4 8. 16 aes4 des8. c16 | g2. aes8[bes] | c4 aes aes g | aes2.
  aes8[bes] | c4. aes8 bes4 aes | aes g2 8[aes] | bes4. 8 c8. bes16 aes8. g16 | aes2.
  aes8. ees16 | 4 aes aes c,8. ees16 | aes4 bes c aes8. bes16 | c4. aes8 4 g | ees2.
}

bass = \relative {
  \autoBeamOff
  aes,4 | 4 8. 16 c4 bes8. aes16 | ees'2. aes8. 16 | 4 4 ees8. 16 8. 16 | aes,2.
  aes4 | 4 8. 16 c4 bes8. aes16 | ees'2. aes4 | 4 des, ees ees | aes,2.
  aes'4 | 4. 8 g4 aes | ees4 2 4 | 4. 8 8. 16 8. 16 | aes2.
  aes,8. 16 | 4 4 4 c8. ees16 | aes4 bes c aes8. 16 | 4. des,8 ees4 4 | aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Trust God, as He has told you,
  And look to Him from day to day;
  Put your trust in God,
  Put your trust in God,
  As the Guar -- dian of your way.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Trust God as a child of His love,
  Trust in Him to guide you with His eye;
  Trust God for the bless -- ings of life,
  For these He will sup -- ply.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Trust God when the temp -- ter is near,
  Trust in Him for grace to turn a -- side;
  Trust God 'mid the bil -- lows of life,
  A re -- fuge to pro -- vide.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Trust God at the com -- ing of grief,
  Trust in Him to soothe its bit -- ter pain;
  Trust God 'mid the bur -- dens of life,
  To strength -- en and sus -- tain.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Trust God as you jour -- ney a -- long,
  Trust in Him for grace to win the prize;
  Trust God till you an -- swer the call
  To meet him in the skies,
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Trust " "God " "as " "a " "child " "of " "His " "love, "
  "\nTrust " "in " "Him " "to " "guide " "you " "with " "His " "eye; "
  "\nTrust " "God " "for " "the " bless "ings " "of " "life, "
  "\nFor " "these " "He " "will " sup "ply. "
  "\nTrust " "God, " "as " "He " "has " "told " "you, "
  "\nAnd " "look " "to " "Him " "from " "day " "to " "day; "
  "\nPut " "your " "trust " "in " "God, "
  "\nPut " "your " "trust " "in " "God, "
  "\nAs " "the " Guar "dian " "of " "your " "way.\n"

  \set stanza = "2."
  "\nTrust " "God " "when " "the " temp "ter " "is " "near, "
  "\nTrust " "in " "Him " "for " "grace " "to " "turn " a "side; "
  "\nTrust " "God " "'mid " "the " bil "lows " "of " "life, "
  "\nA " re "fuge " "to " pro "vide. "
  "\nTrust " "God, " "as " "He " "has " "told " "you, "
  "\nAnd " "look " "to " "Him " "from " "day " "to " "day; "
  "\nPut " "your " "trust " "in " "God, "
  "\nPut " "your " "trust " "in " "God, "
  "\nAs " "the " Guar "dian " "of " "your " "way.\n"

  \set stanza = "3."
  "\nTrust " "God " "at " "the " com "ing " "of " "grief, "
  "\nTrust " "in " "Him " "to " "soothe " "its " bit "ter " "pain; "
  "\nTrust " "God " "'mid " "the " bur "dens " "of " "life, "
  "\nTo " strength "en " "and " sus "tain. "
  "\nTrust " "God, " "as " "He " "has " "told " "you, "
  "\nAnd " "look " "to " "Him " "from " "day " "to " "day; "
  "\nPut " "your " "trust " "in " "God, "
  "\nPut " "your " "trust " "in " "God, "
  "\nAs " "the " Guar "dian " "of " "your " "way.\n"

  \set stanza = "4."
  "\nTrust " "God " "as " "you " jour "ney " a "long, "
  "\nTrust " "in " "Him " "for " "grace " "to " "win " "the " "prize; "
  "\nTrust " "God " "till " "you " an "swer " "the " "call "
  "\nTo " "meet " "him " "in " "the " "skies, "
  "\nTrust " "God, " "as " "He " "has " "told " "you, "
  "\nAnd " "look " "to " "Him " "from " "day " "to " "day; "
  "\nPut " "your " "trust " "in " "God, "
  "\nPut " "your " "trust " "in " "God, "
  "\nAs " "the " Guar "dian " "of " "your " "way. "
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
