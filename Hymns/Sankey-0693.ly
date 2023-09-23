\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Onward! Upward!"
  subtitle    = "Sankey No. 693"
  subsubtitle = "Sankey 880 No. 164"
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
  meter       = \markup\smallCaps "8.7.D."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2
  \textMark \markup { \box \bold "D" } s4 s2.*3 s2
  \textMark \markup { \box \bold "E" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c'8.\omit\mf f16 | a4 g a8. bes16 | c4 c a8. bes16 | c4. 8 bes8. c16 | a2 \bar "|" \break
  a8. 16 | bes4 4 c8. g16 | bes4 a4 8. 16 | g4. f8 e8. d16 | c2 \bar "|" \break
  c8. 16 | bes'4 g e8. c16 | a'4 4 8. 16 | 4. 8 b8. 16 | c2 \bar "|" \break
  a8. bes16 | c4 4 b8. c16 | a4 4 d8. 16 | c4. bes8 a8. g16 | a2 \bar "|" \break
  a8. bes16 | c4 4 b8. c16 | a4 4 d8. 16 | c4.^\cresc bes8 a8. g16 | f2\omit\f
}

alto = \relative {
  \autoBeamOff
  c'8. 16 | f4 e f8. 16 | f4 4 8. g16 | a4. d,8 e8. 16 | f2
  f8. 16 | 4 4 e8. 16 | g4 f4 8. 16 | e4. d8 c8. b16 | c2
  c8. 16 | 4 4 8. 16 | 4 4 f8. 16 | fis4. 8 g8. f16 | e2 |
  f8. g16 | a4 4 gis8. a16 | f4 4 8. 16 | 4. g8 f8. e16 | f2
  f8. 16 | 4 4 8. 16 | 4 4 8. 16 | 4.\omit\cresc g8 f8. e16 | f2
}

tenor = \relative {
  \autoBeamOff
  a8. 16 | c4 4 8. g16 | a4 4 c8. 16 | 4. a8 g8. c16 | 2
  c8. 16 | bes4 f g8. c16 | 4 4 8. 16 | 4. g8 8. f16 | e2
  c8. 16 | e4 e g8. e16 | f4 4 c'8. 16 | d4. 8 8. 16 | c2
  c8. 16 | 4 4 d8. c16 | 4 4 bes8. 16 | a4. g8 c8. 16 | 2
  f,8. g16 | a4 4 gis8. a16 | c4 4 bes8. 16 | c4. d8 c8. bes16 | a2
}

bass = \relative {
  \autoBeamOff
  f8. 16 | 4 c f8. 16 | 4 4 f8. 16 | 4. 8 c8. 16 | f2
  f8. 16 | d4 4 c8. 16 | f4 4 8. 16 | g4. 8 g,8. 16 | c2
  c8. 16 | 4 4 8. 16 | f4 4 8. 16 | d4. 8 g8. 16 | c,2
  f8. 16 | 4 4 8. 16 | 4 4 bes,8. 16 | c4. 8 8. 16 | f2
  f8. 16 | 4 4 8. 16 | 4 4 bes,8. 16 | a4. bes8 c8. 16 | f,2
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
  On -- ward! up -- ward! Chris -- tian sol -- dier,
  Turn not back nor sheath thy sword;
  Let its blade be sharp for con -- quest
  In the bat -- tle for the Lord,
  From the great white throne e -- ter -- nal
  God Him -- self is look -- ing down;
  He it is who now com -- mands thee,
  Take the cross and win the crown;
  He it is who now com -- mands thee,
  Take the cross and win the crown.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  On -- ward! up -- ward! do -- ing, dar -- ing,
  All for Him who died for thee;
  Face the foe and meet with bold -- ness
  Dan -- ger, what -- so -- e'er it be.
  from the bat -- tle -- ments of glo -- ry
  Ho -- ly ones are look -- ing down;
  Thou canst al -- most hear them shout -- ing:
  “On! let no one take thy crown;”
  Thou canst al -- most hear them shout -- ing:
  “On! let no one take thy crown;”
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  On -- ward! till thy course in fin -- ished,
  Like the ran -- somed ones be -- fore;
  Keep the faith through per -- se -- cu -- tion,
  Nev -- er give the bat -- tle o'er.
  On -- ward! up -- ward! till vic -- to -- rious
  Thou shalt lay thine ar -- mour down,
  And thy lov -- ing Sa -- viour bids thee
  At His hand re -- ceive thy crown;
  And thy lov -- ing Sa -- viour bids thee
  At His hand re -- ceive thy crown;
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "On" "ward! " up "ward! " Chris "tian " sol "dier, "
  "\nTurn " "not " "back " "nor " "sheath " "thy " "sword; "
  "\nLet " "its " "blade " "be " "sharp " "for " con "quest "
  "\nIn " "the " bat "tle " "for " "the " "Lord, "
  "\nFrom " "the " "great " "white " "throne " e ter "nal "
  "\nGod " Him "self " "is " look "ing " "down; "
  "\nHe " "it " "is " "who " "now " com "mands " "thee, "
  "\nTake " "the " "cross " "and " "win " "the " "crown; "
  "\nHe " "it " "is " "who " "now " com "mands " "thee, "
  "\nTake " "the " "cross " "and " "win " "the " "crown.\n"

  \set stanza = "2."
  "\nOn" "ward! " up "ward! " do "ing, " dar "ing, "
  "\nAll " "for " "Him " "who " "died " "for " "thee; "
  "\nFace " "the " "foe " "and " "meet " "with " bold "ness "
  "\nDan" "ger, " what so "e'er " "it " "be. "
  "\nfrom " "the " bat tle "ments " "of " glo "ry "
  "\nHo" "ly " "ones " "are " look "ing " "down; "
  "\nThou " "canst " al "most " "hear " "them " shout "ing: "
  "\n“On! " "let " "no " "one " "take " "thy " "crown;” "
  "\nThou " "canst " al "most " "hear " "them " shout "ing: "
  "\n“On! " "let " "no " "one " "take " "thy " "crown;”\n"

  \set stanza = "3."
  "\nOn" "ward! " "till " "thy " "course " "in " fin "ished, "
  "\nLike " "the " ran "somed " "ones " be "fore; "
  "\nKeep " "the " "faith " "through " per se cu "tion, "
  "\nNev" "er " "give " "the " bat "tle " "o'er. "
  "\nOn" "ward! " up "ward! " "till " vic to "rious "
  "\nThou " "shalt " "lay " "thine " ar "mour " "down, "
  "\nAnd " "thy " lov "ing " Sa "viour " "bids " "thee "
  "\nAt " "His " "hand " re "ceive " "thy " "crown; "
  "\nAnd " "thy " lov "ing " Sa "viour " "bids " "thee "
  "\nAt " "His " "hand " re "ceive " "thy " "crown; "
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
