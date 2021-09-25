\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Saviour, Precious Saviour!"
  subtitle    = "Sankey No. 226"
  subsubtitle = "N. H. No. 81"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Burke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances R. Havergal."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3 s2.
  \mark \markup { \box "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4
  g4. 8 aes4 c
  bes2 g4 f
  ees4 4 f g
  f2. \bar "|" \break f4
  g4. 8 aes4 c % B
  bes2 4 ees
  d4 c bes a
  bes2(c4) \bar "|" \break d4^\markup\smallCaps Chorus.
  ees4. bes8 g4 ees % C
  c'2 4 4
  c4. 8 d4 ees
  d2(c4) \bar "|" \break bes4
  ees4. bes8 g4 ees % D
  c'2 aes4 f
  ees4 g f4. ees8
  ees2.
}

alto = \relative {
  \autoBeamOff
  ees'4
  ees4. 8 4 4
  ees2 4 d
  ees4 4 4 4
  d2. 4
  ees4. 8 4 4 % B
  ees2 4 g
  f4 ees d ees
  d2(aes'4) 4
  g4. 8 ees4 4 % C
  ees2 4 e
  f4. 8 4 4
  f2(ees4) 4
  ees4. g8 ees4 4 % D
  ees2 4 c
  bes4 ees d4. ees8
  ees2.
}

tenor = \relative {
  \autoBeamOff
  g4
  bes4. 8 c4 aes
  g2 bes4 4
  bes4 4 a4 4
  bes2. 4
  bes4. 8 c4 aes % B
  g2 4 4
  bes4 g f c'
  bes2. 4
  bes4. ees8 bes4 g % C
  aes2 4 bes
  a4. 8 bes4 c
  bes2. 4
  bes4. ees8 bes4 g % D
  aes2 c4 aes
  g4 bes aes4. g8
  g2.
}

bass = \relative {
  \autoBeamOff
  ees4
  ees4. 8 4 4
  ees2 4 f
  g4 4 f4 4
  bes,2. 4
  ees4. 8 4 4 % B
  ees2 4 c
  d4 ees f f
  bes,2. 4
  ees4. 8 4 4 % C
  aes2 4 g
  f4. 8 4 4
  bes2. aes4
  g4. ees8 4 4 % D
  aes,2 4 4
  bes4 4 4. 8
  ees2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  We wor -- ship Thee! we bless Thee!
  To Thee a -- lone we sing!
  We praise Thee and con -- fess Thee,
  Our Sa -- viour, Lord, and King.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  O Sa -- viour, pre -- cious Sa -- viour,
  Whom, yet un -- seen, we love;
  O Name of might and fa -- vour,
  All oth -- er names a -- bove:
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  O bring -- er of sal -- va -- tion,
  Who won -- drous -- ly hast wrought,
  Thy -- self the rev -- e -- la -- tion
  Of love be -- yond our thought:
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  In Thee all ful -- ness dwell -- eth,
  All grace and pow'r di -- vine;
  The glo -- ry that ex -- cel -- leth,
  O Son of God, is Thine!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, grant the con -- sum -- ma -- tion
  Of this our song, a -- bove,
  In end -- less a -- dor -- a -- tion,
  And ev -- er -- last -- ing love.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " Sa "viour, " pre "cious " Sa "viour, "
  "\nWhom, " "yet " un "seen, " "we " "love; "
  "\nO " "Name " "of " "might " "and " fa "vour, "
  "\nAll " oth "er " "names " a "bove: "
  "\nWe " wor "ship " "Thee! " "we " "bless " "Thee! "
  "\nTo " "Thee " a "lone " "we " "sing! "
  "\nWe " "praise " "Thee " "and " con "fess " "Thee, "
  "\nOur " Sa "viour, " "Lord, " "and " "King. "

  \set stanza = "2."
  "\nO " bring "er " "of " sal va "tion, "
  "\nWho " won drous "ly " "hast " "wrought, "
  "\nThy" "self " "the " rev e la "tion "
  "\nOf " "love " be "yond " "our " "thought: "
  "\nWe " wor "ship " "Thee! " "we " "bless " "Thee! "
  "\nTo " "Thee " a "lone " "we " "sing! "
  "\nWe " "praise " "Thee " "and " con "fess " "Thee, "
  "\nOur " Sa "viour, " "Lord, " "and " "King. "

  \set stanza = "3."
  "\nIn " "Thee " "all " ful "ness " dwell "eth, "
  "\nAll " "grace " "and " "pow'r " di "vine; "
  "\nThe " glo "ry " "that " ex cel "leth, "
  "\nO " "Son " "of " "God, " "is " "Thine! "
  "\nWe " wor "ship " "Thee! " "we " "bless " "Thee! "
  "\nTo " "Thee " a "lone " "we " "sing! "
  "\nWe " "praise " "Thee " "and " con "fess " "Thee, "
  "\nOur " Sa "viour, " "Lord, " "and " "King. "

  \set stanza = "4."
  "\nOh, " "grant " "the " con sum ma "tion "
  "\nOf " "this " "our " "song, " a "bove, "
  "\nIn " end "less " a dor a "tion, "
  "\nAnd " ev er last "ing " "love. "
  "\nWe " wor "ship " "Thee! " "we " "bless " "Thee! "
  "\nTo " "Thee " a "lone " "we " "sing! "
  "\nWe " "praise " "Thee " "and " con "fess " "Thee, "
  "\nOur " Sa "viour, " "Lord, " "and " "King. "
}

\book {
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass }
          >>
        >>
    \layout {
      indent = 1.5\cm
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}

\book {
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
