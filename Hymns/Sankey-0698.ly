\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Yield not to Temptation."
  subtitle    = "Sankey No. 698"
  subsubtitle = "Sankey 880 No. 135"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. R. Palmer."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
  meter       = \markup\smallCaps "11s."
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
  \textMark \markup { \box \bold "A" } s2.*5
  \textMark \markup { \box \bold "B" } s2.*5
  \textMark \markup { \box \bold "C" } s2.*6
  \textMark \markup { \box \bold "D" } s2.*4
  \textMark \markup { \box \bold "E" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d''4. 8 ees d | c4. c | bes4. 8 c bes | a4.~a | g4. 8 a bes |
  f4. bes | c4. 8 bes c | d4.~4. | 4. 8 ees d | c4. c | \break
  bes4. 8 c bes | a4.~a | g4. 8 a bes | f4. bes | d c8 bes c | bes4.~4. |
  \section \sectionLabel \markup\smallCaps Chorus. \break
  f4 8 8 g f | 4. bes | c4 8 8 bes c | d4. bes |
  bes4 8 8 a g | f4. bes | d4 8 c bes c | bes4.~4. |
}

alto = \relative {
  \autoBeamOff
  bes'4. 8 c bes | a4. a | g4. 8 a g | fis4.~4. | ees4. 8 f g |
  d4. d | a'4. 8 g a | bes4.~4. | 4. 8 c bes | a4. a |
  g4. 8 a g | fis4.~4. | ees4. 8 f g | d4. d | f ees8 d ees | d4.~4. \section |
  d4 8 8 ees d | d4. d | f4 8 8 8 8 | 4. d |
  g4 8 8 f ees | d4. d | f4 8 ees d ees | d4.~d |
}

tenor = \relative {
  \autoBeamOff \partCombineChords
  bes4.~4. | f4.~4. | g~g | d~d | ees~ees |
  bes4.~bes | f'~f | f~f | bes~bes | f~f |
  g4.~g | d~d | ees~ees | bes~bes | f'~f | f~f \section |
  \partCombineAutomatic bes4 8 8 8 8 | 4. f | a4 8 8 g a | bes4. 4. |
  bes4 8 8 8 8 | 4. f | 4 8 8 g a | bes4.~4. |
}

bass = \relative {
  \autoBeamOff
  s4. bes, | s f | s g | s d | s ees |
  s4. bes'' | s f, | bes~bes | s bes | s f |
  s4. g | s d | s ees | s bes'' | s f, | bes~bes \section |
  bes4 8 8 8 8 | 4. 4. | f'4 8 8 8 8 | bes4. bes, |
  ees4 8 8 8 8 | bes4. bes | f'4 8 8 8 8 | bes,4.~4. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Ask the Sa -- viour to help you,
  Com -- fort, streng -- then, and keep you;
  He is will -- ing to aid you,
  He will car -- ry you through.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Yield not to temp -- ta -- tion,
  For yield -- ing is sin;
  Each vic -- t'ry will help you
  Some o -- ther to win;
  Fight man -- ful -- ly on -- ward,
  Dark pass -- ions sub -- due;
  Look ev -- er to Je -- sus,
  He'll car -- ry you through.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Shun e -- vil com -- pan -- ions,
  Bad lan -- guage dis -- dain;
  God's name hold in rev -- 'rence,
  Nor take it in vain;
  Be thought -- ful and earn -- est.
  Kind- heart -- ed and true;
  Look ev -- er to Je -- sus,
  He'll car -- ry you through.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  To him that o'er -- com -- eth
  God giv -- eth a crown;
  Thro' faith we shall con -- quer,
  Though oft -- en cast down;
  He who is our Sa -- viour
  Our strength will re -- new;
  Look ev -- er to Je -- sus.
  He'll car -- ry you through.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Yield " "not " "to " temp ta "tion, "
  "\nFor " yield "ing " "is " "sin; "
  "\nEach " vic "t'ry " "will " "help " "you "
  "\nSome " o "ther " "to " "win; "
  "\nFight " man ful "ly " on "ward, "
  "\nDark " pass "ions " sub "due; "
  "\nLook " ev "er " "to " Je "sus, "
  "\nHe'll " car "ry " "you " "through. "
  "\nAsk " "the " Sa "viour " "to " "help " "you, "
  "\nCom" "fort, " streng "then, " "and " "keep " "you; "
  "\nHe " "is " will "ing " "to " "aid " "you, "
  "\nHe " "will " car "ry " "you " "through.\n"

  \set stanza = "2."
  "\nShun " e "vil " com pan "ions, "
  "\nBad " lan "guage " dis "dain; "
  "\nGod's " "name " "hold " "in " rev "'rence, "
  "\nNor " "take " "it " "in " "vain; "
  "\nBe " thought "ful " "and " earn "est. "
  "\nKind" heart "ed " "and " "true; "
  "\nLook " ev "er " "to " Je "sus, "
  "\nHe'll " car "ry " "you " "through. "
  "\nAsk " "the " Sa "viour " "to " "help " "you, "
  "\nCom" "fort, " streng "then, " "and " "keep " "you; "
  "\nHe " "is " will "ing " "to " "aid " "you, "
  "\nHe " "will " car "ry " "you " "through.\n"

  \set stanza = "3."
  "\nTo " "him " "that " o'er com "eth "
  "\nGod " giv "eth " "a " "crown; "
  "\nThro' " "faith " "we " "shall " con "quer, "
  "\nThough " oft "en " "cast " "down; "
  "\nHe " "who " "is " "our " Sa "viour "
  "\nOur " "strength " "will " re "new; "
  "\nLook " ev "er " "to " Je "sus. "
  "\nHe'll " car "ry " "you " "through. "
  "\nAsk " "the " Sa "viour " "to " "help " "you, "
  "\nCom" "fort, " streng "then, " "and " "keep " "you; "
  "\nHe " "is " will "ing " "to " "aid " "you, "
  "\nHe " "will " car "ry " "you " "through. "
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
    \midi {}
  }
}

#(set-global-staff-size 20)

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
