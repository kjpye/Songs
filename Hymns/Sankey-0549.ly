\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Kept by the Power of God."
  subtitle    = "Sankey No. 549"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. E. Hewitt."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*4
  \textMark \markup { \box \bold "B" } s2.*4
  \textMark \markup { \box \bold "C" } s2.*4
  \textMark \markup { \box \bold "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 des8 c4 aes8 | bes8[aes] f ees4. | c8 ees aes c4 aes8 | bes4.~4 r8 |
  c4 des8 c4 aes8 | bes8[aes] f ees4. | c8 ees aes c4 bes8 | aes4.~4 r8 |
  bes4^\markup\smallCaps Chorus. c8 des4 g,8 | bes8[aes] f ees4. | c'4 des8 ees4 aes,8 | 8[g] aes bes4. |
  c4 bes8 aes4 g8 | bes8[aes] f ees4. | c8 ees aes c4 bes8 | aes4.~4 r8 |
}

alto = \relative {
  \autoBeamOff
  ees'4 f8 ees4 8 | des4 8 c4. | 8 ees aes ees4 c8 | ees4.~4 r8 |
  ees4 f8 ees4 8 | d4 8 c4. | 8 e aes8 4 g8 | ees4.~4 r8 |
  ees4 8 4 d8 | c4 des8 c4. | ees4 8 4 8 | d4 8 des4. |
  ees4 des8 c4 ees8 | des4 8 c4. | 8 ees aes8 4 g8 | ees4.~4 r8 |
}

tenor = \relative {
  \autoBeamOff
  aes4 8 4 8 | f4 aes8 4. | c,8 ees aes8 4 8 | f4.~4 r8 |
  aes4 8 4 8 | f4 aes8 4. | c,8 ees aes8 4 des8 | c4.~4 r8 |
  g4 aes8 bes4 ees,8 | 4 aes8 4. | 4 bes8 c4 8 | bes4 aes8 g4. |
  aes4 8 4 8 | f4 aes8 4. | c,8 ees aes aes4 des8 | c4.~4 r8 |
}

bass = \relative {
  \autoBeamOff
  aes,4 8 4 c8 | des4 8 aes4. | c8 ees aes8 4 8 | ees4.~4 r8 |
  aes,4 8 4 c8 | des4 8 aes4. | c8 ees aes ees4 8 | aes,4.~4 r8 |
  ees'4 8 4 8 | aes,4 8 4. | aes'4 8 4 8 | f4 8 ees4. |
  aes,4 8 4 c8 | des4 8 aes4. | c8 ees aes ees4 8 | aes,4.~4 r8 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Sweet -- ly kept "\"in" per -- fect "peace.\""
  When from fears He gives re -- lease;
  Kept "\"thro'" "faith,\"" till time shall cease,
  Kept by the power of God.
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Sa -- viour, hold me close to Thee,
  Kept by the power of God;
  On -- ly this my trust shall be,
  Kept by the power of God.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Kept from ev -- 'ry e -- vil thing,
  Kept by the power of God;
  Un -- der -- neath His shel -- t'ring wing,
  Kept by the power of God,
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Kept till, earth -- ly pe -- rils past,
  Kept by the power of God;
  We shall o -- ver -- come at last,
  Kept by the power of God,
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Kept to sing His praise a -- bove,
  Kept by the power of God;
  Won -- drous mer -- cy. won -- drous love,
  Kept by the power of God,
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sa" "viour, " "hold " "me " "close " "to " "Thee, "
  "\nKept " "by " "the " "power " "of " "God; "
  "\nOn" "ly " "this " "my " "trust " "shall " "be, "
  "\nKept " "by " "the " "power " "of " "God. "
  "\nSweet" "ly " "kept " "\"in " per "fect " "peace.\" "
  "\nWhen " "from " "fears " "He " "gives " re "lease; "
  "\nKept " "\"thro' " "faith,\" " "till " "time " "shall " "cease, "
  "\nKept " "by " "the " "power " "of " "God.\n"

  \set stanza = "2."
  "\nKept " "from " ev "'ry " e "vil " "thing, "
  "\nKept " "by " "the " "power " "of " "God; "
  "\nUn" der "neath " "His " shel "t'ring " "wing, "
  "\nKept " "by " "the " "power " "of " "God, "
  "\nSweet" "ly " "kept " "\"in " per "fect " "peace.\" "
  "\nWhen " "from " "fears " "He " "gives " re "lease; "
  "\nKept " "\"thro' " "faith,\" " "till " "time " "shall " "cease, "
  "\nKept " "by " "the " "power " "of " "God.\n"

  \set stanza = "3."
  "\nKept " "till, " earth "ly " pe "rils " "past, "
  "\nKept " "by " "the " "power " "of " "God; "
  "\nWe " "shall " o ver "come " "at " "last, "
  "\nKept " "by " "the " "power " "of " "God, "
  "\nSweet" "ly " "kept " "\"in " per "fect " "peace.\" "
  "\nWhen " "from " "fears " "He " "gives " re "lease; "
  "\nKept " "\"thro' " "faith,\" " "till " "time " "shall " "cease, "
  "\nKept " "by " "the " "power " "of " "God.\n"

  \set stanza = "4."
  "\nKept " "to " "sing " "His " "praise " a "bove, "
  "\nKept " "by " "the " "power " "of " "God; "
  "\nWon" "drous " mer "cy. " won "drous " "love, "
  "\nKept " "by " "the " "power " "of " "God, "
  "\nSweet" "ly " "kept " "\"in " per "fect " "peace.\" "
  "\nWhen " "from " "fears " "He " "gives " re "lease; "
  "\nKept " "\"thro' " "faith,\" " "till " "time " "shall " "cease, "
  "\nKept " "by " "the " "power " "of " "God. "
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
