\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I will Pass over You."
  subtitle    = "Sankey No. 144"
  subsubtitle = "N.H. No. 87"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El Nathan"
  meter       = \markup\smallCaps "C.M."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key d \major
  \time 3/4
  \partial 4.
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4.*8
  \mark \markup { \box "B" } s4.*8
  \mark \markup { \box "C" } s4.*8
  \mark \markup { \box "D" } s4.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'8 8 8
  a4. fis8 g e
  fis2 d4
  d'4. 8 cis b
  a4. \bar "|" \break 8 8 8
  a4. fis8 g a % B
  b2 cis4
  d4. fis,8 b a
  d4. \bar "|" \break fis,8^\markup\smallCaps Chorus. a d
  cis4. g8 cis b % C
  a2 4
  a4. 8 8 8
  a4. \bar "|" \break fis8 a d
  c4. g8 c8. b16 % D
  a4. r8 d4
  d4-> r8 d cis e
  d4.
}

alto = \relative {
  \autoBeamOff
  fis'8 8 8
  fis4. d8 e cis
  d2 4
  fis4. 8 e d
  cis4. 8 e g
  fis4. d8 8 8 % B
  d2 g4
  fis4. d8 cis cis
  d4. \once\partCombineApart r8 \once\partCombineApart r fis
  g8 8 8 \once\partCombineApart r \once\partCombineApart r g % C
  fis8 8 4 4
  e4. fis8 g g
  fis4. \once\partCombineApart r8 \once\partCombineApart r fis
  g8 8 8 \once\partCombineApart r \once\partCombineApart r8. 16 % D
  g8. 16 8 r a4
  g4-> r8 8 8 8
  dis4.
}

tenor = \relative {
  \autoBeamOff
  d'8 8 8
  d4. a8 8 8
  a2 fis4
  b4. 8 gis gis
  a4. 8 cis e
  d4. a8 8 8 % B
  g2 a4
  a4. 8 g g
  fis4. r8 r a
  a8 8 8 r r cis % C
  d8 8 4 4
  c4. d8 e e
  d4. r8 r a
  a8 8 8 r r8. e'16 % D
  e8. d16 8 r c4
  b4 r8 b a a
  a4.
}

bass = \relative {
  \autoBeamOff
  d8 8 8
  d4. 8 a a
  d2 4
  b4. 8 e e
  a,4. 8 8 8
  d4. 8 e fis % B
  g2 e4
  d4. 8 a a
  d4. r8 r d
  e8 8 8 r r a, % C
  d8 8 4 fis
  g4. fis8 e a,
  d4. r8 r d
  e8 8 8 r r8. a,16 % D
  d8. 16 8 r fis4
  g4 r8 e a a,
  d4.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorusSop = \lyricmode {
  It is his word, God's pre -- cious word,
  It stands for ev -- er true:
  "\"When" I the Lord shall see the blood,
  I will pass o -- ver "you\""
}

chorus = \lyricmode {
  _ _ _ _ _ _ _ -
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  It is His word, God's pre -- cious word,
  _ _ _ _ _ _
  "\"When" I the Lord shall see the blood,
  _ _ _ _ _ _
}

wordsOne = \lyricmode {
  \set stanza = "1."
  When God of old the way of life
  Would teach to all His own,
  He placed them safe be -- yond the reach
  Of death, by blood a -- lone.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  By Christ, the sin -- less Lamb of God,
  The pre -- cious blood was shed,
  When He ful -- filled God's ho -- ly word,
  And suf -- fered in our stead.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  O soul, for thee sal -- va -- tion thus
  By God is free -- ly given;
  The blood of Christ a -- tones for sin,
  And makes us meet for heav'n.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The wrath of God that was our due,
  Up -- on the Lamb was laid;
  And by the shed -- ding of His blood
  The debt for us was paid.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  How calm the Judg -- ment hour shall pass
  To all who do o -- bey
  The Word of God, and trust the blood,
  And make that Word their stay!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "When " "God " "of " "old " "the " "way " "of " "life "
  "\nWould " "teach " "to " "all " "His " "own, "
  "\nHe " "placed " "them " "safe " be "yond " "the " "reach "
  "\nOf " "death, " "by " "blood " a "lone. "
  "\nIt " "is " "his " "word, " "God's " pre "cious " "word, "
  "\nIt " "stands " "for " ev "er " "true: "
  "\n\"When " "I " "the " "Lord " "shall " "see " "the " "blood, "
  "\nI " "will " "pass " o "ver " "you\" "

  \set stanza = "2."
  "\nBy " "Christ, " "the " sin "less " "Lamb " "of " "God, "
  "\nThe " pre "cious " "blood " "was " "shed, "
  "\nWhen " "He " ful "filled " "God's " ho "ly " "word, "
  "\nAnd " suf "fered " "in " "our " "stead. "
  "\nIt " "is " "his " "word, " "God's " pre "cious " "word, "
  "\nIt " "stands " "for " ev "er " "true: "
  "\n\"When " "I " "the " "Lord " "shall " "see " "the " "blood, "
  "\nI " "will " "pass " o "ver " "you\" "

  \set stanza = "3."
  "\nO " "soul, " "for " "thee " sal va "tion " "thus "
  "\nBy " "God " "is " free "ly " "given; "
  "\nThe " "blood " "of " "Christ " a "tones " "for " "sin, "
  "\nAnd " "makes " "us " "meet " "for " "heav'n. "
  "\nIt " "is " "his " "word, " "God's " pre "cious " "word, "
  "\nIt " "stands " "for " ev "er " "true: "
  "\n\"When " "I " "the " "Lord " "shall " "see " "the " "blood, "
  "\nI " "will " "pass " o "ver " "you\" "

  \set stanza = "4."
  "\nThe " "wrath " "of " "God " "that " "was " "our " "due, "
  "\nUp" "on " "the " "Lamb " "was " "laid; "
  "\nAnd " "by " "the " shed "ding " "of " "His " "blood "
  "\nThe " "debt " "for " "us " "was " "paid. "
  "\nIt " "is " "his " "word, " "God's " pre "cious " "word, "
  "\nIt " "stands " "for " ev "er " "true: "
  "\n\"When " "I " "the " "Lord " "shall " "see " "the " "blood, "
  "\nI " "will " "pass " o "ver " "you\" "

  \set stanza = "5."
  "\nHow " "calm " "the " Judg "ment " "hour " "shall " "pass "
  "\nTo " "all " "who " "do " o "bey "
  "\nThe " "Word " "of " "God, " "and " "trust " "the " "blood, "
  "\nAnd " "make " "that " "Word " "their " "stay! "
  "\nIt " "is " "his " "word, "  "God's " pre "cious " "word, "
  "\nIt " "stands " "for " ev "er " "true: "
  "\n\"When " "I " "the " "Lord " "shall " "see " "the " "blood, "
  "\nI " "will " "pass " o "ver " "you\" "
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
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorusSop }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new NullVoice \alto
            \addlyrics \chorus
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorusSop
                                              \wordsTwo   \chorusSop
                                              \wordsThree \chorusSop
                                              \wordsFour  \chorusSop
                                              \wordsFive  \chorusSop
                                            }
            \new NullVoice { \alto \alto \alto \alto \alto }
            \addlyrics { \chorus \chorus \chorus \chorus \chorus }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
    system-system-spacing.basic-distance = #22
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
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorusSop
                                              \wordsTwo   \chorusSop
                                              \wordsThree \chorusSop
                                              \wordsFour  \chorusSop
                                              \wordsFive  \chorusSop
                                            }
            \new NullVoice { \alto \alto \alto \alto \alto }
            \addlyrics { \chorus \chorus \chorus \chorus \chorus }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor \tenor \tenor }
                                            { \global \bass \bass \bass \bass \bass }
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
            \addlyrics \wordsMidi
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
  
\book {
  \bookOutputSuffix "midi-sop"
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
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \soprano \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                  % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto \nl \alto \nl \alto }
          >>
                                  % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor \tenor \tenor }
          >>
                                  % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
