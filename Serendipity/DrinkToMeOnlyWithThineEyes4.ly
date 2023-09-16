\version "2.24.2"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Drink to Me Only with Thine Eyes"
  subtitle    = "SATB"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Old English Air"
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
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*5
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=80
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \voiceOne
  g'8 8 8 aes4 8 | bes8[aes] g f[g] aes | bes[ees,] aes g4 f8 | ees4.~4 r8 | g8 8 8 aes4 8 |
  bes8[aes] g f[g] aes | bes[ees,] aes g4 f8 | ees4.~4 bes'8 | bes[g] bes ees4 bes8 | bes[g] bes8 4 8 |
  c4 bes8 8[as] g | 4.(f4) r8 | g8 8 8 aes4 8 | bes8[aes] g f[g] aes | bes[ees,] aes g4 f8 | ees4.~4 r8 |
}

alto = \relative {
  \autoBeamOff \voiceTwo
  ees'8 8 8 d4 8 | ees[d] ees f[ees] d | ees4 8 4 d8 | ees4.~4 r8 | 8 8 8 d4 8 |
  ees8[d] ees f[ees] d | ees4 8 4 d8 | ees4.~4 \bar "|" \break 8 | 4 g8 4 8 | 8[ees] 8 g[f] ees |
  ees4 8 d4 ees8 | 4.(d4) r8 | ees8 8 8 d4 8 | ees[d] ees8 4 8 | 4 8 4 d8 | ees4.~4 r8 |
}

tenor = \relative {
  \autoBeamOff \voiceOne 
  bes8 8 8 4 8 | 4 8 4 8 | 4 c8 bes4 aes8 | g4.~4 r8 | bes8 8 8 4 8 |
  bes4 8 4 8 | 4 c8 bes4 aes8 | g4.~4 8 | g[bes] g bes4 8 | 4 8 d4 bes8 |
  aes4 bes8 4 8 | 4.~4 r8 | 8 8 8 4 8 | 4 8 c[bes] aes | g4 c8 bes4 aes8 | g4.~4 r8 |
}

bass = \relative {
  \autoBeamOff \voiceTwo
  ees8 8 8 f4 8 | g[f] ees d[ees] f | g4 aes8 bes4 bes,8 | ees4.~4 r8 | 8 8 8 f4 8 |
  g8[f] ees d[ees] f | g4 aes8 bes4 bes,8 | ees4.~4 8 | 4 8 4 8 | 4 g8 bes[aes] g |
  aes4 g8 f4 ees8 | bes4.~4 r8 | ees8 8 8 f4 8 | g[f] ees aes[g] f | bes,4 8 4 8 | ees4.~4 r8 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

verses = 2

wordsOne = \lyricmode {
  \set stanza = "1."
  Drink to me on -- ly with thine eyes,
  And I will pledge with mine,
  Or leave a kiss with -- in the cup,
  And I'll not ask for wine;
  The thirst that from the soul doth rise
  Doth ask a drink di -- vine.
  That might I of Jove's nec -- tar sip
  I would not change for thine.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I sent thee late a ro -- sy wreath,
  Not si much hon -- 'ring thee
  As giv -- ing it a hope that there
  It could not with -- er'd be,
  But thou there -- on didst on -- ly breathe
  And sent'st is back to me:
  Since when it grows, and smells, I swear,
  Not of it -- self but thee.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Drink " "to " "me " on "ly " "with " "thine " "eyes, "
  "\nAnd " "I " "will " "pledge " "with " "mine, "
  "\nOr " "leave " "a " "kiss " with "in " "the " "cup, "
  "\nAnd " "I'll " "not " "ask " "for " "wine; "
  "\nThe " "thirst " "that " "from " "the " "soul " "doth " "rise "
  "\nDoth " "ask " "a " "drink " di "vine. "
  "\nThat " "might " "I " "of " "Jove's " nec "tar " "sip "
  "\nI " "would " "not " "change " "for " "thine.\n"

  \set stanza = "2."
  "\nI " "sent " "thee " "late " "a " ro "sy " "wreath, "
  "\nNot " "si " "much " hon "'ring " "thee "
  "\nAs " giv "ing " "it " "a " "hope " "that " "there "
  "\nIt " "could " "not " with "er'd " "be, "
  "\nBut " "thou " there "on " "didst " on "ly " "breathe "
  "\nAnd " "sent'st " "is " "back " "to " "me: "
  "\nSince " "when " "it " "grows, " "and " "smells, " "I " "swear, "
  "\nNot " "of " it "self " "but " "thee. "
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
          \new Staff = women
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice { \global \soprano \bar "|." }
            \new Voice { \global \alto }
            \new Lyrics \lyricsto "aligner" \wordsOne
            \new Lyrics \lyricsto "aligner" \wordsTwo
          >>
                                  % Joint tenor/bass staff
          \new Staff = men
          <<
            \clef "bass"
            \new Voice { \global \tenor }
            \new Voice { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \pointAndClickOff
      \context { \Staff
                 \RemoveAllEmptyStaves
                 \consists Merge_rests_engraver
      }
    }
  }
}

singlescore = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" {\wordsOne \wordsTwo}
          >>
                                  % Joint tenor/bass staff
          \new Staff = men
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \tenor }

            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
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
