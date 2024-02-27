\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "We're Marching to Zion."
  subtitle    = "Sankey No. 823"
  subsubtitle = "Sankey 880 No. 224"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts, D.D."
  meter       = \markup\smallCaps "S.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8 s2.*4
  \textMark \markup { \box \bold "B" }    s2.*4
  \textMark \markup { \box \bold "C" }    s2.*3 s4. s4
  \textMark \markup { \box \bold "D" } s8 s2.*4
  \textMark \markup { \box \bold "E" }    s2.*3 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo Spirited 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8 | b4. g | d8[e] fis g4 a8 | b4 g8 d'[c] b | a4.~4 8 |
  b4 8 c4 b8 | a4 g8 e4 g8 | a4 8 b4 a8 | g4 e8 d4 8 | \break
  g4. a | b4 d8 c4 a8 | g4 8 a4 fis8 | g4.~4
  \section \sectionLabel \markup\smallCaps Chorus. \break
  b8 | d4. b4 8 | 4. g4 r8 | b8. a16 g8 d'8. c16 b8 | a4. d4 c8 |
  b4 8 8 c d | e4. 8[d] c | b8. 16 8 a16 8. 8 | g4.~4
}

alto = \relative {
  \autoBeamOff
  d'8 | g4. d | 8[e] d8 4 fis8 | g4 d8 b'[a] g | fis4.~4 d8 |
  d4 8 e4 d 8 | cis4 8 4 8 | c4 8 d4 c8 | b4 c8 b4 d8 |
  d4. fis | g4 b8 a4 e8 | d4 8 4 8 | 4.~4 \section
  g8 | b4. g4 8 | 4. d4 r8 | g8. fis16 g8 8. 16 8 | fis4. 4 a8 |
  g4 8 8 8 8 | 4. 4 a8 | g8. 16 8 fis16 8. 8 | g4.~4
}

tenor = \relative {
  \autoBeamOff
  b8 | d4. b | c4 8 b4 d8 | 4 b8 d4 8 | 4.~4 fis,8 |
  g4 8 4 8 | 4 8 4 8 | fis4 8 4 8 | g4 8 4 b8 |
  b4 8 d4 8 | 4 8 e4 c8 | b4. c | b4.~4 \section
  d8 | 4 8 4 8 | 4. b4 r8 | d8. c16 b8 d8. 16 8 | 4. a4 d8 |
  d4 8 8 c b | c4 8 8 d e | d8. 16 8 c16 8. 8 | b4.~4
}

bass = \relative {
  \autoBeamOff
  g8 | 4. g, | d'4 8 g4 d8 | g4 8 4 8 | d4.~4 8 |
  g4 8 c,4 g8 | a4 8 4 8 | d4 8 4 8 | g,4 8 4 g'8 |
  g4 8 d4 8 | g4 8 c,4 8 | d4. d | g,4.~4 \section
  g'8 | 4 8 4 8 | 4. 4 r8 | 8. 16 8 b8. a16 g8 | d4. 4 fis8 |
  g4 8 8 8 8 | c,4 8 8 b c | d8. 16 8 16 8. 8 | g,4.~4
}

chorus = \lyricmode {
  We're march -- ing to Zi -- on,
  Beau -- ti -- ful, beau -- ti -- ful Zi -- on!
  We're march -- ing up -- ward to Zi -- on,
  The beau -- ti -- ful ci -- ty of God!
}

chorusMen = \lyricmode {
  \repeat unfold 40 \skip 1
  We're march -- ing on to Zi -- on,
  \repeat unfold 14 \skip 1
  Zi -- on, Zi -- on,
  _ _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, ye that love the Lord,
  And let your joys be known!
  Join in a song with sweet ac -- cord,
  Join in a sing with sweet ac -- cord,
  And thus sur -- round the throne,
  And thus sur -- round the throne.
}

wordsOneMen = \lyricmode {
  \tiny
  \repeat unfold 29 \skip 1
  \set stanza = "1."
  thus sur -- round the throne,
  And thus sur -- round the throne.
  \repeat unfold 33 \skip 1
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Let those re -- fuse to sing
  Who nev -- er knew our God;
  But chil -- dren of the heav'n -- ly King,
  But chil -- dren of the heav'n -- ly King
  Must speak their joys a -- broad,
  Must speak their joys a -- broad,
}
  
wordsTwoMen = \lyricmode {
  \tiny
  \repeat unfold 29 \skip 1
  \set stanza = "2."
  speak their joys a -- broad,
  Must speak their joys a -- broad,
  \repeat unfold 33 \skip 1
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The hill of Zi -- on yields
  A thou -- sand sac -- red swets,
  Be -- fore we reach the heav'n -- ly fields,
  Be -- fore we reach the heav'n -- ly fields,
  Or walk the gold -- en streets,
  Or walk the gold -- en streets,
}
  
wordsThreeMen = \lyricmode {
  \tiny
  \repeat unfold 29 \skip 1
  \set stanza = "3."
  walk the gold -- en streets,
  Or walk the gold -- en streets,
  \repeat unfold 33 \skip 1
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Then let our songs a -- bound,
  And ev -- 'ry tear be dry;
  We're march -- ing through Im -- man -- uels's ground,
  We're march -- ing through Im -- man -- uels's ground,
  To fair -- er worlds on high,
  To fair -- er worlds on high.
}
  
wordsFourMen = \lyricmode {
  \tiny
  \repeat unfold 29 \skip 1
  \set stanza = "4."
  fair -- er worlds on high,
  To fair -- er worlds on high.
  \repeat unfold 33 \skip 1
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "ye " "that " "love " "the " "Lord, "
  "\nAnd " "let " "your " "joys " "be " "known! "
  "\nJoin " "in " "a " "song " "with " "sweet " ac "cord, "
  "\nJoin " "in " "a " "sing " "with " "sweet " ac "cord, "
  "\nAnd " "thus " sur "round " "the " "throne, "
  "\nAnd " "thus " sur "round " "the " "throne. "
  "\nWe're " march "ing " "to " Zi "on, "
  "\nBeau" ti "ful, " beau ti "ful " Zi "on! "
  "\nWe're " march "ing " up "ward " "to " Zi "on, "
  "\nThe " beau ti "ful " ci "ty " "of " "God!\n"

  \set stanza = "2."
  "\nLet " "those " re "fuse " "to " "sing "
  "\nWho " nev "er " "knew " "our " "God; "
  "\nBut " chil "dren " "of " "the " heav'n "ly " "King, "
  "\nBut " chil "dren " "of " "the " heav'n "ly " "King "
  "\nMust " "speak " "their " "joys " a "broad, "
  "\nMust " "speak " "their " "joys " a "broad, "
  "\nWe're " march "ing " "to " Zi "on, "
  "\nBeau" ti "ful, " beau ti "ful " Zi "on! "
  "\nWe're " march "ing " up "ward " "to " Zi "on, "
  "\nThe " beau ti "ful " ci "ty " "of " "God!\n"

  \set stanza = "3."
  "\nThe " "hill " "of " Zi "on " "yields "
  "\nA " thou "sand " sac "red " "swets, "
  "\nBe" "fore " "we " "reach " "the " heav'n "ly " "fields, "
  "\nBe" "fore " "we " "reach " "the " heav'n "ly " "fields, "
  "\nOr " "walk " "the " gold "en " "streets, "
  "\nOr " "walk " "the " gold "en " "streets, "
  "\nWe're " march "ing " "to " Zi "on, "
  "\nBeau" ti "ful, " beau ti "ful " Zi "on! "
  "\nWe're " march "ing " up "ward " "to " Zi "on, "
  "\nThe " beau ti "ful " ci "ty " "of " "God!\n"

  \set stanza = "4."
  "\nThen " "let " "our " "songs " a "bound, "
  "\nAnd " ev "'ry " "tear " "be " "dry; "
  "\nWe're " march "ing " "through " Im man "uels's " "ground, "
  "\nWe're " march "ing " "through " Im man "uels's " "ground, "
  "\nTo " fair "er " "worlds " "on " "high, "
  "\nTo " fair "er " "worlds " "on " "high. "
  "\nWe're " march "ing " "to " Zi "on, "
  "\nBeau" ti "ful, " beau ti "ful " Zi "on! "
  "\nWe're " march "ing " up "ward " "to " Zi "on, "
  "\nThe " beau ti "ful " ci "ty " "of " "God! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Come, " "ye " "that " "love " "the " "Lord, "
  "\nAnd " "let " "your " "joys " "be " "known! "
  "\nJoin " "in " "a " "song " "with " "sweet " ac "cord, "
  "\nJoin " "in " "a " "sing " "with " "sweet " ac "cord, "
  "\nAnd " "thus " sur "round " "the " "throne, "
  "\nAnd " "thus " sur "round " "the " "throne. "
  "\nWe're " march "ing " "on " "to " Zi "on, "
  "\nBeau" ti "ful, " beau ti "ful " Zi "on! "
  "\nWe're " march "ing " up "ward " "to " Zi "on, " Zi "on, "
  "\nThe " beau ti "ful " ci "ty " "of " "God!\n"

  \set stanza = "2."
  "\nLet " "those " re "fuse " "to " "sing "
  "\nWho " nev "er " "knew " "our " "God; "
  "\nBut " chil "dren " "of " "the " heav'n "ly " "King, "
  "\nBut " chil "dren " "of " "the " heav'n "ly " "King "
  "\nMust " "speak " "their " "joys " a "broad, "
  "\nMust " "speak " "their " "joys " a "broad, "
  "\nWe're " march "ing " "on " "to " Zi "on, "
  "\nBeau" ti "ful, " beau ti "ful " Zi "on! "
  "\nWe're " march "ing " up "ward " "to " Zi "on, " Zi "on, "
  "\nThe " beau ti "ful " ci "ty " "of " "God!\n"

  \set stanza = "3."
  "\nThe " "hill " "of " Zi "on " "yields "
  "\nA " thou "sand " sac "red " "swets, "
  "\nBe" "fore " "we " "reach " "the " heav'n "ly " "fields, "
  "\nBe" "fore " "we " "reach " "the " heav'n "ly " "fields, "
  "\nOr " "walk " "the " gold "en " "streets, "
  "\nOr " "walk " "the " gold "en " "streets, "
  "\nWe're " march "ing " "on " "to " Zi "on, "
  "\nBeau" ti "ful, " beau ti "ful " Zi "on! "
  "\nWe're " march "ing " up "ward " "to " Zi "on, " Zi "on, "
  "\nThe " beau ti "ful " ci "ty " "of " "God!\n"

  \set stanza = "4."
  "\nThen " "let " "our " "songs " a "bound, "
  "\nAnd " ev "'ry " "tear " "be " "dry; "
  "\nWe're " march "ing " "through " Im man "uels's " "ground, "
  "\nWe're " march "ing " "through " Im man "uels's " "ground, "
  "\nTo " fair "er " "worlds " "on " "high, "
  "\nTo " fair "er " "worlds " "on " "high. "
  "\nWe're " march "ing " "on " "to " Zi "on, "
  "\nBeau" ti "ful, " beau ti "ful " Zi "on! "
  "\nWe're " march "ing " up "ward " "to " Zi "on, " Zi "on, "
  "\nThe " beau ti "ful " ci "ty " "of " "God! "
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
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

#(set-global-staff-size 18)

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
            \addlyrics \wordsOneMen
            \addlyrics \wordsTwoMen
            \addlyrics \wordsThreeMen
            \addlyrics \wordsFourMen
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
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerT {
            \wordsOneMen
            \wordsTwoMen
            \wordsThreeMen
            \wordsFourMen
          }
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
