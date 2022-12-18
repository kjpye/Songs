\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "The Lord's my Shepherd."
  subtitle    = "Sankey No. 562"
  subsubtitle = "Sankey 880 No. 78"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Sir George Smart."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup "23rd Psalm."
  meter       = \markup\smallCaps "C.M."
  piece       = \markup\smallCaps "Wiltshire."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*6 s2
  \textMark \markup { \box \bold "B" } s4 s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 | 2 bes4 | 4(a) bes | ees(d) c | c(d) f, | 2 4 | f(d') bes | 4(a) \bar "|" \break
  c4 | bes2 a4 | bes2 c4 | d(ees) d | d(c) d8[bes] | g2 c4 | a4.(g8) a4 | bes2
}

alto = \relative {
  \autoBeamOff
  d'4 | 2 f4 | f(ees) d | g(f) f | ees(d) d | c(d) ees | d2 f8[g] | f2
  ees4 | d(f) ees | d f2 | 2 4 | bes(a) f | f(ees) g | f4.(g8) f[ees] | d2
}

tenor = \relative {
  \autoBeamOff
  bes4 | 2 d4 | d(c) bes | 2 a4 | a(bes) f | 2 4 | bes(f) bes | d(c)
  a4 | bes2 c4 | bes2 a4 | bes(c) d8[ees] | f2 bes,4 | 4(c8[d]) ees4 | c4.(bes8) c4 | bes2
}

bass = \relative {
  \autoBeamOff
  bes,4 | 2 4 | f'2 g4 | ees(f) f | bes,2 4 | a(bes) c | bes2 d8[ees] | f2
  f4 | bes(d,) f | bes,(d) f | bes(a) bes | f2 d4 | ees2 c4 | f2 4 | bes,2
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
  The Lord's my Shep -- herd, I'll not want;
  He makes me down to lie
  In pas -- tures green; He lead -- eth me
  The qui -- et wa -- ters by.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  My soul He doth re -- store a -- gain;
  And me to walk doth make
  With -- in the paths of righ -- teous -- ness,
  Ev'n for His own name's sake.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Yea, though I walk in death's dark vale,
  Yet will I fear none ill;
  For Thou art with me; and Thy rod
  And staff me com -- fort still.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  My ta -- ble Thou hast fur -- nish -- ed
  In pre -- sence of my foes;
  My head Thou dost with oil a -- noint,
  And my cup o -- ver -- flows.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Good -- ness and mer -- cy all my life
  Shall sure -- ly fol -- low me;
  And in God's house for ev -- er -- more
  My dwell -- ing place shall be.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "The " "Lord's " "my " Shep "herd, " "I'll " "not " "want; "
  "\nHe " "makes " "me " "down " "to " "lie "
  "\nIn " pas "tures " "green; " "He " lead "eth " "me "
  "\nThe " qui "et " wa "ters " "by.\n"

  \set stanza = "2."
  "\nMy " "soul " "He " "doth " re "store " a "gain; "
  "\nAnd " "me " "to " "walk " "doth " "make "
  "\nWith" "in " "the " "paths " "of " righ teous "ness, "
  "\nEv'n " "for " "His " "own " "name's " "sake.\n"

  \set stanza = "3."
  "\nYea, " "though " "I " "walk " "in " "death's " "dark " "vale, "
  "\nYet " "will " "I " "fear " "none " "ill; "
  "\nFor " "Thou " "art " "with " "me; " "and " "Thy " "rod "
  "\nAnd " "staff " "me " com "fort " "still.\n"

  \set stanza = "4."
  "\nMy " ta "ble " "Thou " "hast " fur nish "ed "
  "\nIn " pre "sence " "of " "my " "foes; "
  "\nMy " "head " "Thou " "dost " "with " "oil " a "noint, "
  "\nAnd " "my " "cup " o ver "flows.\n"

  \set stanza = "5."
  "\nGood" "ness " "and " mer "cy " "all " "my " "life "
  "\nShall " sure "ly " fol "low " "me; "
  "\nAnd " "in " "God's " "house " "for " ev er "more "
  "\nMy " dwell "ing " "place " "shall " "be. "
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
