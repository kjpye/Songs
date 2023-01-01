\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Prayer."
  subtitle    = "Sankey No. 582"
  subsubtitle = "Sankey 880 No. 94"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "P. P. Bliss,"
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 12/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1.*2
  \textMark \markup { \box \bold "B" } s1.*2
  \textMark \markup { \box \bold "C" } s1.*2
  \textMark \markup { \box \bold "D" } s1.*2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

dynamicsPrint = {
}

dynamicsOmit = {
}

soprano = \relative {
  \autoBeamOff
  g'4. 8 c bes a4. bes | ees,4. 8 d ees g4.(f) |
  g4. 8 c bes | a4. bes | 4. a8 g a bes2. |
  aes4. 8 8 8 4. g | c4. 8 8 8 2. |
  ees4. 8 8 8 4. c | bes^\markup\italic rit. 8 aes f ees2. |
}

alto = \relative {
  \autoBeamOff
  ees'4. 8 8 8 4. 4. | bes4. 8 8 ees8 4.(d) |
  ees4. 8 8 8 4. 4. | 4. 8 8 8 d2. |
  d4. 8 ees f f4. ees | 4. 8 8 8 2. |
  ees4. 8 8 8 4. 4. | 4. d8 8 8 ees2. |
}

tenor = \relative {
  \autoBeamOff
  bes4. 8 aes g fis4. g | g4. bes8 aes g bes4.~4. |
  bes4. 8 aes g fis4. g | g f8 8 c' bes2. |
  bes4. 8 8 8 4. 4. | aes4. 8 8 8 g2. |
  g4. 8 aes bes c4. aes | g f8 8 aes g2. |
}

bass = \relative {
  \autoBeamOff
  ees4. 8 8 8 4. 4. | ees g8 f ees | bes4.~4. |
  ees4. 8 8 8 4. 4. | c4. f8 8 8 bes,2. |
  bes4. 8 c d ees4. 4. | aes,4. 8 bes c ees2. |
  ees4. 8 f g aes4. aes, | bes4. 8 8 8 ees2. |
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
  More ho -- li -- ness give me, more stri -- vings with -- in;
  More pa -- tience in suf -- f'ring, more sor -- row for sin;
  More faith in my Sa -- viour, more sense of His care;
  More joy in His ser -- vice, more pur -- pose in prayer.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  More gra -- ti -- tude give me, more trust in the Lord;
  More zeal for His glo -- ry, more hope in His Word;
  More tears for His sor -- rows, more pain at His grief;
  More meek -- ness in tri -- al, more praise for re -- lief.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  More pu -- ri -- ty give me, more strength to o'er -- come;
  More free -- dom from earth -- stains, more long -- ings for home;
  More fit for the king -- dom, more used would I be;
  More bless -- ed and ho -- ly, more, Sa -- viour, \markup\italic like \markup\italic Thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "More " ho li "ness " "give " "me, " "more " stri "vings " with "in; "
  "\nMore " pa "tience " "in " suf "f'ring, " "more " sor "row " "for " "sin; "
  "\nMore " "faith " "in " "my " Sa "viour, " "more " "sense " "of " "His " "care; "
  "\nMore " "joy " "in " "His " ser "vice, " "more " pur "pose " "in " "prayer.\n"

  \set stanza = "2."
  "\nMore " gra ti "tude " "give " "me, " "more " "trust " "in " "the " "Lord; "
  "\nMore " "zeal " "for " "His " glo "ry, " "more " "hope " "in " "His " "Word; "
  "\nMore " "tears " "for " "His " sor "rows, " "more " "pain " "at " "His " "grief; "
  "\nMore " meek "ness " "in " tri "al, " "more " "praise " "for " re "lief.\n"

  \set stanza = "3."
  "\nMore " pu ri "ty " "give " "me, " "more " "strength " "to " o'er "come; "
  "\nMore " free "dom " "from " earth "stains, " "more " long "ings " "for " "home; "
  "\nMore " "fit " "for " "the " king "dom, " "more " "used " "would " "I " "be; "
  "\nMore " bless "ed " "and " ho "ly, " "more, " Sa "viour, " "like " "Thee. "
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
            \new Voice { \global \repeat unfold \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \dynamicsPrint
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
            \new Dynamics \dynamicsOmit
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
            \new Dynamics \with {alignAboveContext = women} \repeat unfold \verses \dynamicsPrint
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
            \new Dynamics \repeat unfold \verses \dynamicsOmit
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
