\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Blest be the Tie that Binds."
  subtitle    = "Sankey No. 506"
  subsubtitle = "Sankey 880 No. 80"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{Arr. \smallCaps "H. G. Nageli."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Fawcett."
  meter       = \markup\smallCaps "S. M."
  piece       = \markup\smallCaps "Dennis."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*5 s2
  \mark \markup { \box "B" } s4 s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 | a(f) a | g(e) g | f2 4 | f(d) f | f(c) f | e2 \bar "|" \break g4 |
  g4(e) g | f(a) c | c(g) bes | a(c) d | c(a) bes | a(f) g | f2
}

alto = \relative {
  \autoBeamOff
  f'4 | f(c) f | e(c) c | 2 e4 | d(b) d | c(a) c | 2 4 |
  e4(c) c | c(f) f | e2 g4 | f2 4 | 2 4 | 4(c) c | 2
}

tenor = \relative {
  \autoBeamOff
  c'4 | c(a) c | c(g) bes | a2 4 | bes(g) bes | a(f) a | g2 c4 |
  c(g) bes | a(c) a | g(c) c | c(a) bes | a(c) d | c(a) bes | a2
}

bass = \relative {
  \autoBeamOff
  f4 | 2 4 | c2 4 | f2 4 | bes,2 4 | g'2 4 | c,2 4 |
  c2 4 | f2 4 | c2 4 | f2 4 | f2 bes,4 | c2 4 | <f, f'>2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Blest be the tie that binds
  Our hearts in Chris -- tian love;
  The fel -- low -- ship of kin -- dred minds
  Is like to that a -- bove.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Be -- fore our Fa -- ther's throne
  We pour our ar -- dent prayers;
  Our fears, our hopes, our aims are one,
  Our com -- forts and our cares.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  We share our mu -- tual woes,
  Our mu -- tual bur -- dens bear;
  And oft -- en for each oth -- er flows
  The sym -- path -- is -- ing tear.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When we a -- sun -- der part
  It gives us in -- ward pain;
  But we shall still be joined in heart,
  And hope to meet a -- gain.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Blest " "be " "the " "tie " "that " "binds "
  "\nOur " "hearts " "in " Chris "tian " "love; "
  "\nThe " fel low "ship " "of " kin "dred " "minds "
  "\nIs " "like " "to " "that " a "bove.\n"

  \set stanza = "2."
  "\nBe" "fore " "our " Fa "ther's " "throne "
  "\nWe " "pour " "our " ar "dent " "prayers; "
  "\nOur " "fears, " "our " "hopes, " "our " "aims " "are " "one, "
  "\nOur " com "forts " "and " "our " "cares.\n"

  \set stanza = "3."
  "\nWe " "share " "our " mu "tual " "woes, "
  "\nOur " mu "tual " bur "dens " "bear; "
  "\nAnd " oft "en " "for " "each " oth "er " "flows "
  "\nThe " sym path is "ing " "tear.\n"

  \set stanza = "4."
  "\nWhen " "we " a sun "der " "part "
  "\nIt " "gives " "us " in "ward " "pain; "
  "\nBut " "we " "shall " "still " "be " "joined " "in " "heart, "
  "\nAnd " "hope " "to " "meet " a "gain. "
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
