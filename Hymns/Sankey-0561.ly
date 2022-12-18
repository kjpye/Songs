\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Giev to the Winds thy Fears."
  subtitle    = "Sankey No. 561"
  subsubtitle = "Sankey 880 No. 670"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup{"Arr. by" \smallCaps "Dr. L. Mason."}
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{\smallCaps "P. Gerhardt" "(tr." \smallCaps "J. Wesley" ")"}
  meter       = \markup\smallCaps "S.M."
  piece       = \markup\smallCaps "Olmutz."

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
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 | g8 f bes4 c | bes2 4 | a8 bes g4 4 | f2 \bar "|" \break
  f4 | g8 f bes4 a | bes8 c bes4 4 | a8 bes g4 f | 2
}

alto = \relative {
  \autoBeamOff
  d'4 | ees8 d d4 ees | d2 4 | f8 8 4 e | f2
  d4 | ees8 d d4 ees | d8 f d4 f | 8 8 ees4 c | d2
}

tenor = \relative {
  \autoBeamOff
  bes4 | 8 8 4 a | bes2 4 | c8 d c4 4 | a2
  bes4 | 8 8 4 c | bes8 a bes4 d | c8 bes8 4 a | bes2
}

bass = \relative {
  \autoBeamOff
  bes,4 | 8 8 g'4 f | bes,2 g'4 | f8 bes, c4 4 | f2
  bes,4 | 8 8 4 f' | g8 f bes4 bes, | f'8 d ees4 f | bes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 8

wordsOne = \lyricmode {
  \set stanza = "1."
  Give to the winds thy fears;
  Hope, and be un -- dis -- mayed:
  God hears thy sighs and counts thy tears;
  God shall lift up thy head.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Thro' waves, and clouds, and storms,
  He gen -- tly clears thy way;
  Wait thou His time; so shall the night
  Soon end in joy -- ous day.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  He ev -- 'ry -- where hath sway,
  And all things serve His might;
  His ev -- 'ry act pure bles -- sing is,
  His path un -- sul -- lied light.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  When He makes bare His arm,
  What shall His work with -- stand?
  When He His peo -- ple's cause de -- fends,
  Who, who shall stay His hand?
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Leave to His sov -- 'reign sway
  To choose and to com -- mand;
  With won -- der filled thou then shalt own
  How wise, how strong His hand.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Thou com -- pre -- hend'st Him not;
  Yet earth and hea -- ven tell,
  God sits as Sov -- 'reign on His throne—
  He rul -- eth all things well.
}
  
wordsSeven = \lyricmode {
  \set stanza = "7."
  Thou seest our weak -- ness, Lord,
  Our hearts are known to Thee:
  Oh, lift Thou up the sink -- ing hand,
  Con -- firm the fee -- ble knee!
}
  
wordsEight = \lyricmode {
  \set stanza = "8."
  Let us, in life and death,
  Thy stead -- fast truth de -- clare;
  And pub -- lish, with our la -- test breath,
  Thy love and guar -- dian care.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Give " "to " "the " "winds " "thy " "fears; "
  "\nHope, " "and " "be " un dis "mayed: "
  "\nGod " "hears " "thy " "sighs " "and " "counts " "thy " "tears; "
  "\nGod " "shall " "lift " "up " "thy " "head.\n"

  \set stanza = "2."
  "\nThro' " "waves, " "and " "clouds, " "and " "storms, "
  "\nHe " gen "tly " "clears " "thy " "way; "
  "\nWait " "thou " "His " "time; " "so " "shall " "the " "night "
  "\nSoon " "end " "in " joy "ous " "day.\n"

  \set stanza = "3."
  "\nHe " ev 'ry "where " "hath " "sway, "
  "\nAnd " "all " "things " "serve " "His " "might; "
  "\nHis " ev "'ry " "act " "pure " bles "sing " "is, "
  "\nHis " "path " un sul "lied " "light.\n"

  \set stanza = "4."
  "\nWhen " "He " "makes " "bare " "His " "arm, "
  "\nWhat " "shall " "His " "work " with "stand? "
  "\nWhen " "He " "His " peo "ple's " "cause " de "fends, "
  "\nWho, " "who " "shall " "stay " "His " "hand?\n"

  \set stanza = "5."
  "\nLeave " "to " "His " sov "'reign " "sway "
  "\nTo " "choose " "and " "to " com "mand; "
  "\nWith " won "der " "filled " "thou " "then " "shalt " "own "
  "\nHow " "wise, " "how " "strong " "His " "hand.\n"

  \set stanza = "6."
  "\nThou " com pre "hend'st " "Him " "not; "
  "\nYet " "earth " "and " hea "ven " "tell, "
  "\nGod " "sits " "as " Sov "'reign " "on " "His " "throne— "
  "\nHe " rul "eth " "all " "things " "well.\n"

  \set stanza = "7."
  "\nThou " "seest " "our " weak "ness, " "Lord, "
  "\nOur " "hearts " "are " "known " "to " "Thee: "
  "\nOh, " "lift " "Thou " "up " "the " sink "ing " "hand, "
  "\nCon" "firm " "the " fee "ble " "knee!\n"

  \set stanza = "8."
  "\nLet " "us, " "in " "life " "and " "death, "
  "\nThy " stead "fast " "truth " de "clare; "
  "\nAnd " pub "lish, " "with " "our " la "test " "breath, "
  "\nThy " "love " "and " guar "dian " "care. "
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
    \layout { }
%    \midi {}
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
            \new Lyrics \lyricsto "aligner"   \wordsSeven
            \new Lyrics \lyricsto "aligner"   \wordsEight
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
                                              \wordsSix   \chorus
                                              \wordsSeven \chorus
                                              \wordsEight \chorus
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
