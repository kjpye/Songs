\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Christ the Fountain."
  subtitle    = "Sankey No. 572"
  subsubtitle = "C. C. No. 198"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "C. C. Case."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Newman Hall, D. D."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*3
  \textMark \markup { \box \bold "B" } s2.*3
  \textMark \markup { \box \bold "C" } s2.*3
  \textMark \markup { \box \bold "D" } s2.*4
  \textMark \markup { \box \bold "E" } s2.*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8. e16 f8 d'8. c16 bes8 | 8 d, g f4. | ees8. d16  ees8 a8. g16 f8 |
  f8 c ees d4. | f8. e16 f8 d'8. c16 bes8 | 8 d, g f4. |
  ees8. d16 ees8 a g f | f g a bes4. \section \sectionLabel \markup\smallCaps Chorus. d4.~8 bes g |
  f4.~f | a4.~8 bes c | f,4.~4. | d'4.~8 bes g |
  f4. bes4 8 | a8. bes16 c8 ees d c | bes4.~4. |
}

alto = \relative {
  \autoBeamOff
  d'8. cis16 | d8 f8. ees16 d8 | d bes ees d4. | c8. bes16 c8 f8. ees16 d8 |
  d8 a c bes4. | d8. cis16 d8 f8. ees16 d8 | d bes ees d4. |
  c8. bes16 c8 f ees d | ees8 8 8 d4. \section | f4.~8 d ees |
  d4.~4. | c4.~8 d ees | 8 8 d ees4. | f4.~8 d ees |
  d4. 4 8 | c8. d16 ees8 g f ees | d d ees d4. |
}

tenor = \relative {
  \autoBeamOff
  bes8. 16 8 8. 16 8 | 8 8 8 4. | f8. 16 8 8. 16 8 |
  f8 8 8 4. | bes8. 16 8 8. 16 8 | 8 8 8 4. |
  f8. 16 8 8 8 8 | a bes c bes4. \section | R2. |
  bes8 8 8 4. | R2. | a8 8 bes c4. | R2. |
  bes8 8 8 8 8 8 | c8. bes16 a8 8 8 f | 8 8 g f4. |
}

bass = \relative {
  \autoBeamOff
  bes,8. 16 8 8. 16 8 | 8 8 8 4. | f'8. 16 8 8. 16 8 |
  f8 8 8 bes,4. | 8. 16 8 8. 16 8 | 8 8 8 4. |
  f'8. 16 8 8 8 8 | 8 8 8 bes,4. \section | R2. |
  bes8 8 8 4. | R2. | f'8 8 8 4. | R2. |
  bes,8 8 8 8 8 8 | f'8. 16 8 8 8 8 | bes,4.~4. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Whi -- ter than snow, __ whi -- ter than snow; __
  Wash me, Re -- deem -- er,
  and I shall be
  whi -- ter than snow. __
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  Whi -- ter than snow, whi -- ter than snow;
  Wash me, Re -- deem -- er,
  _ _ _ _ _ _ _ whi -- ter than snow.
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Foun -- tain of pu -- ri -- ty o -- pened for sin.
  Here may the pen -- i -- tent wash and be clean;
  Je -- sus, Thou bless -- ed Re -- deem -- er from woe,
  Wash me, and I shall be whi -- ter than snow.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Tho' I have la -- boured a -- gain and a -- gain,
  All my self- clean -- sing is ut -- ter -- ly vain;
  Je -- sus Re -- deem -- er from sor -- row and woe,
  Wash me, and I shall be whi -- ter than snow.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Cleanse Thou the thoughts of my heart, I im -- plore;
  Help me Thy light to re -- flect more and more;
  Dai -- ly in lov -- ing o -- be -- dience to grow—
  Wash me, and I shall be whi -- ter than snow.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Whi -- ter than snow! no -- thing far -- ther I need;
  Christ is the Foun -- tain; this on -- ly I plead;
  Je -- sus, my Sa -- viour, to Thee will I go—
  Wash me, and I shall be whi -- ter than snow.
}
  
wordsSopMidi = \lyricmode {
  \set stanza = "1."
  "Foun" "tain " "of " pu ri "ty " o "pened " "for " "sin. "
  "\nHere " "may " "the " pen i "tent " "wash " "and " "be " "clean; "
  "\nJe" "sus, " "Thou " bless "ed " Re deem "er " "from " "woe, "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, "  whi "ter " "than " "snow; " 
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " "snow.\n" 

  \set stanza = "2."
  "\nTho' " "I " "have " la "boured " a "gain " "and " a "gain, "
  "\nAll " "my " self clean "sing " "is " ut ter "ly " "vain; "
  "\nJe" "sus " Re deem "er " "from " sor "row " "and " "woe, "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, "  whi "ter " "than " "snow; " 
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " "snow.\n" 

  \set stanza = "3."
  "\nCleanse " "Thou " "the " "thoughts " "of " "my " "heart, " "I " im "plore; "
  "\nHelp " "me " "Thy " "light " "to " re "flect " "more " "and " "more; "
  "\nDai" "ly " "in " lov "ing " o be "dience " "to " "grow— "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, "  whi "ter " "than " "snow; " 
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " "snow.\n" 

  \set stanza = "4."
  "\nWhi" "ter " "than " "snow! " no "thing " far "ther " "I " "need; "
  "\nChrist " "is " "the " Foun "tain; " "this " on "ly " "I " "plead; "
  "\nJe" "sus, " "my " Sa "viour, " "to " "Thee " "will " "I " "go— "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, "  whi "ter " "than " "snow; " 
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " "snow. " 
}

wordsAltoMidi = \lyricmode {
  \set stanza = "1."
  "Foun" "tain " "of " pu ri "ty " o "pened " "for " "sin. "
  "\nHere " "may " "the " pen i "tent " "wash " "and " "be " "clean; "
  "\nJe" "sus, " "Thou " bless "ed " Re deem "er " "from " "woe, "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, "  whi "ter " "than " whi "ter " "than " "snow; "
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " whi "ter " "than " "snow.\n"

  \set stanza = "2."
  "\nTho' " "I " "have " la "boured " a "gain " "and " a "gain, "
  "\nAll " "my " self clean "sing " "is " ut ter "ly " "vain; "
  "\nJe" "sus " Re deem "er " "from " sor "row " "and " "woe, "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, "  whi "ter " "than " whi "ter " "than " "snow; "
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " whi "ter " "than " "snow.\n"

  \set stanza = "3."
  "\nCleanse " "Thou " "the " "thoughts " "of " "my " "heart, " "I " im "plore; "
  "\nHelp " "me " "Thy " "light " "to " re "flect " "more " "and " "more; "
  "\nDai" "ly " "in " lov "ing " o be "dience " "to " "grow— "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, "  whi "ter " "than " whi "ter " "than " "snow; "
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " whi "ter " "than " "snow.\n"

  \set stanza = "4."
  "\nWhi" "ter " "than " "snow! " no "thing " far "ther " "I " "need; "
  "\nChrist " "is " "the " Foun "tain; " "this " on "ly " "I " "plead; "
  "\nJe" "sus, " "my " Sa "viour, " "to " "Thee " "will " "I " "go— "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, "  whi "ter " "than " whi "ter " "than " "snow; "
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " whi "ter " "than " "snow. "
}

wordsTenorMidi = \lyricmode {
  \set stanza = "1."
  "Foun" "tain " "of " pu ri "ty " o "pened " "for " "sin. "
  "\nHere " "may " "the " pen i "tent " "wash " "and " "be " "clean; "
  "\nJe" "sus, " "Thou " bless "ed " Re deem "er " "from " "woe, "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, " whi "ter " "than " "snow; " 
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " whi "ter " "than " "snow.\n"

  \set stanza = "2."
  "\nTho' " "I " "have " la "boured " a "gain " "and " a "gain, "
  "\nAll " "my " self clean "sing " "is " ut ter "ly " "vain; "
  "\nJe" "sus " Re deem "er " "from " sor "row " "and " "woe, "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, " whi "ter " "than " "snow; " 
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " whi "ter " "than " "snow.\n"

  \set stanza = "3."
  "\nCleanse " "Thou " "the " "thoughts " "of " "my " "heart, " "I " im "plore; "
  "\nHelp " "me " "Thy " "light " "to " re "flect " "more " "and " "more; "
  "\nDai" "ly " "in " lov "ing " o be "dience " "to " "grow— "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, " whi "ter " "than " "snow; " 
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " whi "ter " "than " "snow.\n"

  \set stanza = "4."
  "\nWhi" "ter " "than " "snow! " no "thing " far "ther " "I " "need; "
  "\nChrist " "is " "the " Foun "tain; " "this " on "ly " "I " "plead; "
  "\nJe" "sus, " "my " Sa "viour, " "to " "Thee " "will " "I " "go— "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, " whi "ter " "than " "snow; " 
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " whi "ter " "than " "snow. "
}

wordsBassMidi = \lyricmode {
  \set stanza = "1."
  "Foun" "tain " "of " pu ri "ty " o "pened " "for " "sin. "
  "\nHere " "may " "the " pen i "tent " "wash " "and " "be " "clean; "
  "\nJe" "sus, " "Thou " bless "ed " Re deem "er " "from " "woe, "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, "  whi "ter " "than " "snow; " 
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " "snow.\n "

  \set stanza = "2."
  "\nTho' " "I " "have " la "boured " a "gain " "and " a "gain, "
  "\nAll " "my " self clean "sing " "is " ut ter "ly " "vain; "
  "\nJe" "sus " Re deem "er " "from " sor "row " "and " "woe, "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, "  whi "ter " "than " "snow; " 
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " "snow.\n" 

  \set stanza = "3."
  "\nCleanse " "Thou " "the " "thoughts " "of " "my " "heart, " "I " im "plore; "
  "\nHelp " "me " "Thy " "light " "to " re "flect " "more " "and " "more; "
  "\nDai" "ly " "in " lov "ing " o be "dience " "to " "grow— "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, "  whi "ter " "than " "snow; " 
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " "snow.\n" 

  \set stanza = "4."
  "\nWhi" "ter " "than " "snow! " no "thing " far "ther " "I " "need; "
  "\nChrist " "is " "the " Foun "tain; " "this " on "ly " "I " "plead; "
  "\nJe" "sus, " "my " Sa "viour, " "to " "Thee " "will " "I " "go— "
  "\nWash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, "  whi "ter " "than " "snow; " 
  "\nWash " "me, " Re deem "er, "
  "\nand " "I " "shall " "be "
  "\nwhi" "ter " "than " "snow. " 
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsSopMidi
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

\book {
  \bookOutputSuffix "midi-alto"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsAltoMidi
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

\book {
  \bookOutputSuffix "midi-tenor"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsTenorMidi
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
  \bookOutputSuffix "midi-bass"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
            \addlyrics \wordsBassMidi
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
      #(layout-set-staff-size 18)
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
