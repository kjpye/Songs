\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Hope On!"
  subtitle    = "Sankey No. 715"
  subsubtitle = "N. H. No. 70"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Burke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "R. Bruce."
  meter       = \markup\smallCaps "8.7. D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2.*3
  \textMark \markup { \box \bold "B" }    s2.*4
  \textMark \markup { \box \bold "C" }    s2.*4
  \textMark \markup { \box \bold "D" }    s2.*4 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8 | 4 e8 c'4 g8 | b4 a8 4 8 | 4 d,8 d[e] f |
  a4. g4 8 | 4 e8 c'4 b8 | d4 c8 a4 8 | g4 8 g[a] b |
  e4. c4 8 | d4 g,8 8[a] b | c[b] a g4 8 | a4 8 a[d] c |
  b4(a8) g4 8 | c4 8 g4 bes8 | 4 a8 4\fermata 8 | g8[c] e f4 b,8 | d4. c4
}

alto = \relative {
  \autoBeamOff
  e'8 | 4 c8 e4 8 |g4 f8 4 8 | 4 b,8 b[c] d |
  f4. e4 8 | 4 c8 e4 g8 | f4 8 4 8 | e4 8 f4 8 |
  f4. e4 8 | f4 8 4 8 | e[g] f e4 8 | f4 8 fis4 8 |
  g4(fis8) g4 f8 | e4 8 4 g8 | 4 f8 4\fermata 8 | e4 g8 4 f8 | 4. e4
}

tenor = \relative {
  \autoBeamOff
  c'8 | 4 g8 4 c8 | c4 8 4 8 | b4 g8 4 b8 |
  c4. 4 8 | 4 g8 4 c8 | a4 8 c4 8 | 4 8 b[c] d |
  b4. c4 8 | b4 8 b[c] d | c4 8 4 8 | 4 8 d4 8 |
  d4(c8) b4 8 | c4 g8 c4 8 | 4 8 4\fermata 8 | 4 8 b4 d8 | b4. c4
}

bass = \relative {
  \autoBeamOff
  c8 | 4 8 4 8 | f4 8 4 8 | g4 8 4 8 |
  c,4. 4 8 | 4 8 4 e8 | f4 8 4 8 | g4 8 4 8 |
  g4. c,4 8 | g'4 8 4 8 | c,4 8 4 8 | f4 8 d4 8 |
  g4. 4 8 | c,4 8 4 e8 | 4 f8 4\fermata 8 | g4 8 4 8 | g,4. c4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Hope on, hope on, O trou -- bled heart!
  If doubts and fears o'er -- take thee,
  Re -- mem -- ber this— the Lord hath said,
  He “nev -- er will for -- sake thee.”
  Then mur -- mur not, still hear thy lot,
  Nor yield to care or sor -- row;
  Be sure the clouds that frown to -- day
  Will break in smiles to -- mor -- row.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Hope on, hope on! tho dark and deep
  The sha -- dows gath -- er o'er thee;
  Be not dis -- mayed: thy Sa -- viour holds
  The Lamp of Life be -- fore thee.
  And if He will that thou to -- day
  Shouldst tread the vale of sor -- row,
  Be not a -- fraid; but trust and wait—
  The sun will shone to -- mor -- row.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Hope on, hope on! go brave -- ly forth
  Thro' tri -- al and temp -- ta -- tion;
  Di -- rect -- ed by the Word of truth,
  So full of con -- so -- la -- tion.
  There is a calm for ev -- 'ry storm;
  A joy for ev -- 'ry sor -- row;
  A night from which the soul shall wake
  To hail and end -- less mor -- row.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Hope " "on, " "hope " "on, " "O " trou "bled " "heart! "
  "\nIf " "doubts " "and " "fears " o'er "take " "thee, "
  "\nRe" mem "ber " "this— " "the " "Lord " "hath " "said, "
  "\nHe " “nev "er " "will " for "sake " "thee.” "
  "\nThen " mur "mur " "not, " "still " "hear " "thy " "lot, "
  "\nNor " "yield " "to " "care " "or " sor "row; "
  "\nBe " "sure " "the " "clouds " "that " "frown " to "day "
  "\nWill " "break " "in " "smiles " to mor "row.\n"

  \set stanza = "2."
  "\nHope " "on, " "hope " "on! " "tho " "dark " "and " "deep "
  "\nThe " sha "dows " gath "er " "o'er " "thee; "
  "\nBe " "not " dis "mayed: " "thy " Sa "viour " "holds "
  "\nThe " "Lamp " "of " "Life " be "fore " "thee. "
  "\nAnd " "if " "He " "will " "that " "thou " to "day "
  "\nShouldst " "tread " "the " "vale " "of " sor "row, "
  "\nBe " "not " a "fraid; " "but " "trust " "and " "wait— "
  "\nThe " "sun " "will " "shone " to mor "row.\n"

  \set stanza = "3."
  "\nHope " "on, " "hope " "on! " "go " brave "ly " "forth "
  "\nThro' " tri "al " "and " temp ta "tion; "
  "\nDi" rect "ed " "by " "the " "Word " "of " "truth, "
  "\nSo " "full " "of " con so la "tion. "
  "\nThere " "is " "a " "calm " "for " ev "'ry " "storm; "
  "\nA " "joy " "for " ev "'ry " sor "row; "
  "\nA " "night " "from " "which " "the " "soul " "shall " "wake "
  "\nTo " "hail " "and " end "less " mor "row. "
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
