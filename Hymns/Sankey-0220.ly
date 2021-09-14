\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Praise the Lord and Worship Him."
  subtitle    = "Sankey No. 220"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" }    s1*2 s2
  \mark \markup { \box "B" } s2 s1*2
  \mark \markup { \box "C" }    s1*3
  \mark \markup { \box "D" }    s1*3
  \mark \markup { \box "E" }    s1*2
  \mark \markup { \box "F" }    s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'8 8 a bes c bes g bes
  bes4 aes aes2
  aes8 8 g aes \bar "|" \break bes aes g f
  g4 bes4 2 % B
  bes8 8 a bes c bes g bes
  ees4 4 d2 % C
  c8 ees d c bes ees g, aes
  g4 f ees2
  ees'4^\markup\smallCaps Chorus. 4 d g, % D
  c8. 16 8 8 bes2
  ees4 4 d c
  bes8. 16 a8 c bes4(aes) % E
  g8 bes a bes c bes g bes
  ees4 4 d2 % F
  c8 ees d c bes ees g, aes
  g4 f ees2
}

alto = \relative {
  \autoBeamOff
  ees'8 8 8 8 8 8 8 8
  d4 4 2
  f8 8 e f d f ees d
  ees4 d ees2 % B
  ees8 8 8 8 8 8 8 8
  ees4 g g(f) % C
  ees8 8 8 8 8 g ees ees
  ees4 d ees2
  g4 4 4 f % D
  ees8. 16 8 8 2
  ees4 4 f g
  f8. 16 ees8 8 d4(f) % E
  ees8 8 8 8 8 8 8 8
  ees4 g g(f) % F
  ees8 8 8 8 8 g ees ees
  ees4 d ees2
}

tenor = \relative {
  \autoBeamOff
  g8 8 fis g aes g bes bes
  bes4 4 2
  bes8 8 8 8 8 8 8 8
  bes4 aes bes2 % B
  g8 8 fis g aes g bes g
  g4 c b2 % C
  aes8 c bes aes g bes bes c
  bes4 aes g2
  bes4 c b b % D
  c8. aes16 8 8 g2
  g4 4 bes ees
  d8. 16 c8 a bes2 % E
  bes8 g fis g aes g bes g
  g4 c b2 % F
  aes8 c bes aes g bes bes c
  bes4 aes g2
}

bass = \relative {
  \autoBeamOff
  ees8 8 8 8 8 8 8 g
  f4 4 2
  bes,8 8 8 8 8 8 8 8
  ees4 f g2 % B
  ees8 8 8 8 8 8 8 8
  c4 4 g'2 % C
  aes8 8 aes, c ees8 8 8 aes,
  bes4 4 ees2
  ees4 c g' g % D
  aes8. 16 aes,8 8 ees'2
  c4 4 d ees
  f8. 16 8 8 bes,4(d) % E
  ees8 8 8 8 8 8 8 8
  c4 4 g'2 % F
  aes8 8 aes, c ees8 8 8 aes,
  bes4 4 ees2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Praise Him! praise Him! join the loud ac -- claim;
  Praise Him! praise Him! bless His ho -- ly name;
  Ev -- er kind and mer -- ci -- ful in all His ways,
  He a -- lone is wor -- thy to re -- ceive our praise.
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Praise the Lord and wor -- ship Him, a song pre -- pare,
  While we en -- ter joy -- ful -- ly the house of prayer;
  Praise the Lord, and hon -- our Him who guards our way,
  Watch -- ing o'er us ten -- der -- ly by night and day.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Praise Him in His ma -- jes -- ty and strength ar -- rayed;
  Praise Him in the firm -- a -- ment His hands have made;
  In our lives ac -- know -- ledge Him the King of kings,
  Then in safe -- ty we may dwell be -- neath His wings.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Praise Him in His righ -- twous -- ness, the Ho -- ly One;
  Spread a -- broad the won -- drous work that He hath done;
  Thro' His per -- fect sac -- ri -- fice the world is blest,
  Who -- so -- ev -- er will may come to Him and rest.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Praise " "the " "Lord " "and " wor "ship " "Him, " "a " "song " pre "pare, "
  "\nWhile " "we " en "ter " joy ful "ly " "the " "house " "of " "prayer; "
  "\nPraise " "the " "Lord, " "and " hon "our " "Him " "who " "guards " "our " "way, "
  "\nWatch" "ing " "o'er " "us " ten der "ly " "by " "night " "and " "day. "
  "\nPraise " "Him! " "praise " "Him! " "join " "the " "loud " ac "claim; "
  "\nPraise " "Him! " "praise " "Him! " "bless " "His " ho "ly " "name; "
  "\nEv" "er " "kind " "and " mer ci "ful " "in " "all " "His " "ways, "
  "\nHe " a "lone " "is " wor "thy " "to " re "ceive " "our " "praise. "

  \set stanza = "2."
  "\nPraise " "Him " "in " "His " ma jes "ty " "and " "strength " ar "rayed; "
  "\nPraise " "Him " "in " "the " firm a "ment " "His " "hands " "have " "made; "
  "\nIn " "our " "lives " ac know "ledge " "Him " "the " "King " "of " "kings, "
  "\nThen " "in " safe "ty " "we " "may " "dwell " be "neath " "His " "wings. "
  "\nPraise " "Him! " "praise " "Him! " "join " "the " "loud " ac "claim; "
  "\nPraise " "Him! " "praise " "Him! " "bless " "His " ho "ly " "name; "
  "\nEv" "er " "kind " "and " mer ci "ful " "in " "all " "His " "ways, "
  "\nHe " a "lone " "is " wor "thy " "to " re "ceive " "our " "praise. "

  \set stanza = "3."
  "\nPraise " "Him " "in " "His " righ twous "ness, " "the " Ho "ly " "One; "
  "\nSpread " a "broad " "the " won "drous " "work " "that " "He " "hath " "done; "
  "\nThro' " "His " per "fect " sac ri "fice " "the " "world " "is " "blest, "
  "\nWho" so ev "er " "will " "may " "come " "to " "Him " "and " "rest. "
  "\nPraise " "Him! " "praise " "Him! " "join " "the " "loud " ac "claim; "
  "\nPraise " "Him! " "praise " "Him! " "bless " "His " ho "ly " "name; "
  "\nEv" "er " "kind " "and " mer ci "ful " "in " "all " "His " "ways, "
  "\nHe " a "lone " "is " wor "thy " "to " re "ceive " "our " "praise. "
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
          \new Staff  = soprano
          <<
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef bass
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
