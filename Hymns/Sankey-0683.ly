\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Awake, our Souls."
  subtitle    = "Sankey No. 683"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{From \smallCaps "Handel"}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts, D. D."
  meter       = \markup\smallCaps "L.M."
  piece       = \markup\smallCaps "Samson."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 | a4. bes8 c4 a | d e f f | c d c a | f g a
  c4 | d8[f] e[d] c4 a | bes8[d] c[bes] a4 f' | e4. d8 c4 f,8[g] | a4 g f
}

alto = \relative {
  \autoBeamOff
  f'4 | 4. e8 f4 4 | f g a a | f f f e | d c c
  d4 | f f f c | d8[f] e[g] f4 a | g4. e8 d4 f | f e f
}

tenor = \relative {
  \autoBeamOff
  a4 | c4. 8 4 4 | bes4 4 c c | c bes c c | c8[bes] bes4 a
  a4 | bes8[d] c[bes] a4 f | bes c c c | c4. 8 4 a | c bes a
}

bass = \relative {
  \autoBeamOff
  f4 | 4. g8 a4 f | bes4 g f f | a bes a c, | d e f
  f4 | 4 4 4 4 | 4 4 4 4 | c'4. bes8 a4 d, | c c f
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  A -- wake, our souls; a -- way, our fears;
  Let ev -- 'ry trem -- bling thought be gone;
  A -- wake, and run the heaven -- ly race,
  And put a cheer -- ful cour -- age on.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  True, 'tis a strait amd thorn -- y road,
  And mor -- tal spi -- rits tire and faint;
  But they for -- get the migh -- ty God
  That feeds the strength of ev -- 'ry saint:—
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thee, migh -- ty God, whose match -- less power
  Is ev -- er new and ev -- er yhoung.
  And firm en -- dures, while end -- less years
  Their ev -- er -- last -- ing cir -- cles run.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  From Thee, the o -- ver -- flow -- ing spring,
  Our souls shall drink a fresh sup -- ply;
  While such as trust their na -- tive strength
  Shall melt a -- way, and droop, and die.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Swift as an eag -- le cuts the air,
  We'll mount a -- loft to Thine a -- bode;
  On wings of love our souls shall fly,
  Nor tire a -- midst the heaven -- ly road.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "A" "wake, " "our " "souls; " a "way, " "our " "fears; "
  "\nLet " ev "'ry " trem "bling " "thought " "be " "gone; "
  "\nA" "wake, " "and " "run " "the " heaven "ly " "race, "
  "\nAnd " "put " "a " cheer "ful " cour "age " "on.\n"

  \set stanza = "2."
  "\nTrue, " "'tis " "a " "strait " "amd " thorn "y " "road, "
  "\nAnd " mor "tal " spi "rits " "tire " "and " "faint; "
  "\nBut " "they " for "get " "the " migh "ty " "God "
  "\nThat " "feeds " "the " "strength " "of " ev "'ry " "saint:—\n"

  \set stanza = "3."
  "\nThee, " migh "ty " "God, " "whose " match "less " "power "
  "\nIs " ev "er " "new " "and " ev "er " "yhoung. "
  "\nAnd " "firm " en "dures, " "while " end "less " "years "
  "\nTheir " ev er last "ing " cir "cles " "run.\n"

  \set stanza = "4."
  "\nFrom " "Thee, " "the " o ver flow "ing " "spring, "
  "\nOur " "souls " "shall " "drink " "a " "fresh " sup "ply; "
  "\nWhile " "such " "as " "trust " "their " na "tive " "strength "
  "\nShall " "melt " a "way, " "and " "droop, " "and " "die.\n"

  \set stanza = "5."
  "\nSwift " "as " "an " eag "le " "cuts " "the " "air, "
  "\nWe'll " "mount " a "loft " "to " "Thine " a "bode; "
  "\nOn " "wings " "of " "love " "our " "souls " "shall " "fly, "
  "\nNor " "tire " a "midst " "the " heaven "ly " "road. "
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

#(set-global-staff-size 20)

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
            \new Lyrics \lyricsto "aligner"   \wordsFive
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
                                              \wordsFour  \chorus
                                              \wordsFive  \chorus
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
