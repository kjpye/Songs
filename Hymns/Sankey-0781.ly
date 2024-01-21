\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Here Below, on Life's Rough Billows."
  subtitle    = "Sankey No. 781"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "H. S. Thompson."
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
  \key bes \major
  \time 2/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2*5
  \textMark \markup { \box \bold "B" } s2*5
  \textMark \markup { \box \bold "C" } s2*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  bes'8 8 d8. c16 | bes8 g g f | c'8. bes16 a8 bes | c4 r | bes8 8 d8. c16 |
  bes8 g g f | c' d ees a, | bes4 r |
  \section \sectionLabel \markup\smallCaps Chorus.
  d4 c8 8 | bes8 8 a a |
  g8 8 f bes | c4 r | bes8 8 d8. c16 | bes8 g g f | c'8. d16 ees8 a, | bes4 r |
}

alto = \relative {
  \autoBeamOff
  d'8 f8 8. ees16 | d8 d ees d | g8. 16 f8 e | f4 r | d8 f f8. fis16 |
  g8 ees8 8 d | g g g f | 4 r \section | 4 8 8 | d d d d |
  bes8 ees d e | f4 r | 8 8 8. ees16 | d8 ees8 8 d | g8. 16 8 ees | d4 r |
}

tenor = \relative {
  \autoBeamOff
  f8 | d' bes8. a16 | bes8 8 8 8 | g8. 16 c8 bes | a4 r | f8 d' bes8. a16 |
  g8 bes8 8 8 | g b c ees | d4 r \section | bes4 a8 8 | g g fis8 8 |
  g8 bes8 8 8 | a4 r | bes8 d bes8. a16 | bes8 8 8 8 | g8. b16 c8 8 | bes4 r |
}

bass = \relative {
  \autoBeamOff
  bes,8 8 8. f'16 | g8 ees bes8 8 | ees8. 16 f8 g | f4 r | bes,8 8 8. d16 |
  ees8 8 bes8 8 | ees d c f | bes,4 r \section | 4 f'8 8 | g g d d |
  ees8 8 bes g' | f4 r | d8 bes8 8. f'16 | g8 ees bes8 8 | ees8. d16 c8 f | bes,4 r |
}

chorus = \lyricmode {
  Life's bil -- lows can -- not harm us,
  If our hopes be stayed
  On the bless -- ed lov -- ing Sa -- viour
  Who our ran -- som paid!
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  Here be -- low, on life's rough bil -- lows,
  'Neath our Sa -- viour's smile.
  Let us fight as Chris -- tian sol -- diers—
  'Tis but for a -- while.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Soon our fight -- ing shall be end -- ed,
  Soon shall war -- fare cease;
  Then, in the ce -- les -- tial ci -- ty,
  We shall reign in peace.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sweet the Name on which for -- giv -- en
  Sin -- ners love to dwell!
  Go ye to the poor and wretch -- ed,
  And the good news tell.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ma -- ny, on their bed or an -- guish,
  On this world de -- pend:
  Go, and point them to the Sa -- viour—
  He's the sin -- ner's friend!
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Oh, if ev -- 'ry guil -- ty sin -- ner
  Did the Sa -- viour know,
  Then we might ex -- claim with glad -- ness,
  “Heav'n's be -- gun be low!”
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Let us, while on life's rough bil -- lows,
  Trust in Him a -- lone;
  Then we shall with joy be -- hold Him
  On His glo -- rious throne.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Here " be "low, " "on " "life's " "rough " bil "lows, "
  "\n'Neath " "our " Sa "viour's " "smile. "
  "\nLet " "us " "fight " "as " Chris "tian " sol "diers— "
  "\n'Tis " "but " "for " a "while. "
  "\nLife's " bil "lows " can "not " "harm " "us, "
  "\nIf " "our " "hopes " "be " "stayed "
  "\nOn " "the " bless "ed " lov "ing " Sa "viour "
  "\nWho " "our " ran "som " "paid!\n"

  \set stanza = "2."
  "\nSoon " "our " fight "ing " "shall " "be " end "ed, "
  "\nSoon " "shall " war "fare " "cease; "
  "\nThen, " "in " "the " ce les "tial " ci "ty, "
  "\nWe " "shall " "reign " "in " "peace. "
  "\nLife's " bil "lows " can "not " "harm " "us, "
  "\nIf " "our " "hopes " "be " "stayed "
  "\nOn " "the " bless "ed " lov "ing " Sa "viour "
  "\nWho " "our " ran "som " "paid!\n"

  \set stanza = "3."
  "\nSweet " "the " "Name " "on " "which " for giv "en "
  "\nSin" "ners " "love " "to " "dwell! "
  "\nGo " "ye " "to " "the " "poor " "and " wretch "ed, "
  "\nAnd " "the " "good " "news " "tell. "
  "\nLife's " bil "lows " can "not " "harm " "us, "
  "\nIf " "our " "hopes " "be " "stayed "
  "\nOn " "the " bless "ed " lov "ing " Sa "viour "
  "\nWho " "our " ran "som " "paid!\n"

  \set stanza = "4."
  "\nMa" "ny, " "on " "their " "bed " "or " an "guish, "
  "\nOn " "this " "world " de "pend: "
  "\nGo, " "and " "point " "them " "to " "the " Sa "viour— "
  "\nHe's " "the " sin "ner's " "friend! "
  "\nLife's " bil "lows " can "not " "harm " "us, "
  "\nIf " "our " "hopes " "be " "stayed "
  "\nOn " "the " bless "ed " lov "ing " Sa "viour "
  "\nWho " "our " ran "som " "paid!\n"

  \set stanza = "5."
  "\nOh, " "if " ev "'ry " guil "ty " sin "ner "
  "\nDid " "the " Sa "viour " "know, "
  "\nThen " "we " "might " ex "claim " "with " glad "ness, "
  "\n“Heav'n's " be "gun " "be " "low!” "
  "\nLife's " bil "lows " can "not " "harm " "us, "
  "\nIf " "our " "hopes " "be " "stayed "
  "\nOn " "the " bless "ed " lov "ing " Sa "viour "
  "\nWho " "our " ran "som " "paid!\n"

  \set stanza = "6."
  "\nLet " "us, " "while " "on " "life's " "rough " bil "lows, "
  "\nTrust " "in " "Him " a "lone; "
  "\nThen " "we " "shall " "with " "joy " be "hold " "Him "
  "\nOn " "His " glo "rious " "throne. "
  "\nLife's " bil "lows " can "not " "harm " "us, "
  "\nIf " "our " "hopes " "be " "stayed "
  "\nOn " "the " bless "ed " lov "ing " Sa "viour "
  "\nWho " "our " ran "som " "paid! "
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
            \new Lyrics \lyricsto "aligner"   \wordsFour
            \new Lyrics \lyricsto "aligner"   \wordsFive
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
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
