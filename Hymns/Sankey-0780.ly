\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Pardon, Peace, and Power."
  subtitle    = "Sankey No. 780"
  subsubtitle = "C. C. No. 48"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El Nathan."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key bes \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s8  s2.*3 s4. s4
  \textMark \markup { \box \bold "B" } s8  s2.*3 s4.
  \textMark \markup { \box \bold "C" } s4. s1.*2
  \textMark \markup { \box \bold "D" }     s1.*2 s2. s4
  \textMark \markup { \box \bold "E" } s2  s1.*2 s2. s4.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \time 6/8 \partial 8
  f'8 | 4 e8 f4 g8 | f4 ees8 d4 f8 | bes4 aes8 bes4 c8 | d4.~4 \bar "|" \break
  f,8 | 4 e8 f4 g8 | f4 ees8 d4 f8 | g4 bes8 4 aes8 bes4.
  \section \sectionLabel \markup\smallCaps Chorus. \break \time 12/8 \partial 4.
  f4 bes8 | d2.~4 a8 bes4 d,8 | f2.~4 e8 f4 a8 |
  c2.~4 f,8 aes4 c8 | bes2.~4 f8 bes4 d8 | f2.~4 \bar "|" \break
  f,8 g4 bes8 | ees2.~4. 4. | d4 f,8 bes4 d8 c4 f,8 a4 c8 | bes2.~4.
}

alto = \relative {
  \autoBeamOff
  d'8 | 4 cis8 d4 e8 | d4 c8 bes4 d8 | 4 c8 d4 ees8 | f4.~4
  d8 | 4 cis8 d4 e8 | d4 c8 bes4 d8 | ees4 8 d4 c8 | d4. \section
  d4 8 | f2.~4 ees8 d4 bes8 | d2.~4 cis8 d4 f8 |
  ees2.~4 8 4 8 | d2.~4 8 4 f8 | aes2.~4
  d,8 ees4 g8 | 2.~4. 4. | f4 d8 4 f8 ees4 8 4 8 | d2.~4.
}

tenor = \relative {
  \autoBeamOff
  bes8 | 4 8 4 8 | 4 f8 4 8 | 4 8 4 a8 | bes4.~4
  bes8 | 4 8 4 8 | 4 f8 4 bes8 | 4 g8 f4 8 | 4. \section
  r4 r8 | bes4 8 4 8 4 r8 r4 r8 | bes4 8 4 8 4 r8 r4 r8 |
  r4 a8 4 8 4 r8 r4 r8 | r4 f8 4 8 4 r8 r4 r8 | r4 d'8 4 8 4
  r8 r4 r8 | r4 bes8 4 8 4. 4. | 4 8 4 8 a4 8 c4 f,8 | 2.~4.
}

bass = \relative {
  \autoBeamOff
  bes,8 | 4 8 4 8 | 4 8 4 8 | 4 ees8 d4 c8 | bes4.~4
  bes8 | 4 8 4 8 | 4 8 4 8 | ees4 8 f4 8 | bes,4. \section
  r4 r8 | bes4 8 4 8 4 r8 r4 r8 | 4 8 4 8 4 r8 r4 r8 |
  r4 f8 4 8 4 r8 r4 r8 | r4 bes,8 4 8 4 r8 r4 r8 | r4 bes'8 4 8 4
  r8 r4 r8 | r4 ees8 4 8 4. 4. | f4 8 4 8 4 8 4 8 | bes,2.~4.
}

chorus = \lyricmode {
  There is par -- don, peace, and power. __
  And pu -- ri -- ty. __ and Par -- a -- dise; __
  With all of these __ in Christ for me. __
  Let joy -- ful songs of praise to Him a -- rise!
}

chorusMen = \lyricmode {
  \repeat unfold 28 \skip 1
  par -- don, peace, and power,
  par -- don, peace, and power,
  And pu -- ri -- ty and Par -- a -- dise,
  With all of these in Christ for me,
  \repeat unfold 10 \skip 1
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Would we be joy -- ful in the Lord?
  Then count the rich -- es o'er,
  Re -- vealed to faith with -- in His Word,
  And note the bound -- less store.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  For ev -- 'ry sin, by grace Di -- vine,
  A \markup\italic par -- \markup\italic don free be -- stowed;
  And with the par -- don \markup\italic peace is mine,
  The peace in Je -- sus blood.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Of grace to break the power of sin,
  He gives a full sup -- ply;
  The Ho -- ly Ghost, the heart with -- in,
  From sin doth \markup\italic pu -- \markup\italic ri -- \markup\italic fy.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  The \markup\italic power to win a soul to God,
  The Spi -- rit too im -- parts;
  And He, the gift of Christ our Lord,
  Dwells now in all \markup\italic our hearts.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  These bless -- ings we by faith re -- ceive,
  By sim -- ple child- like trust;
  \markup\italic In \markup\italic Christ, 'tis God's de -- light to \markup\italic give;
  he prom -- ised, and He must.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Would " "we " "be " joy "ful " "in " "the " "Lord? "
  "\nThen " "count " "the " rich "es " "o'er, "
  "\nRe" "vealed " "to " "faith " with "in " "His " "Word, "
  "\nAnd " "note " "the " bound "less " "store. "
  "\nThere " "is " par "don, " "peace, " "and " "power. " 
  "\nAnd " pu ri "ty. "  "and " Par a "dise; " 
  "\nWith " "all " "of " "these "  "in " "Christ " "for " "me. " 
  "\nLet " joy "ful " "songs " "of " "praise " "to " "Him " a "rise!\n"

  \set stanza = "2."
  "\nFor " ev "'ry " "sin, " "by " "grace " Di "vine, "
  "\nA " par "don " "free " be "stowed; "
  "\nAnd " "with " "the " par "don " "peace " "is " "mine, "
  "\nThe " "peace " "in " Je "sus " "blood. "
  "\nThere " "is " par "don, " "peace, " "and " "power. " 
  "\nAnd " pu ri "ty. "  "and " Par a "dise; " 
  "\nWith " "all " "of " "these "  "in " "Christ " "for " "me. " 
  "\nLet " joy "ful " "songs " "of " "praise " "to " "Him " a "rise!\n"

  \set stanza = "3."
  "\nOf " "grace " "to " "break " "the " "power " "of " "sin, "
  "\nHe " "gives " "a " "full " sup "ply; "
  "\nThe " Ho "ly " "Ghost, " "the " "heart " with "in, "
  "\nFrom " "sin " "doth " pu ri "fy. "
  "\nThere " "is " par "don, " "peace, " "and " "power. " 
  "\nAnd " pu ri "ty. "  "and " Par a "dise; " 
  "\nWith " "all " "of " "these "  "in " "Christ " "for " "me. " 
  "\nLet " joy "ful " "songs " "of " "praise " "to " "Him " a "rise!\n"

  \set stanza = "4."
  "\nThe " "power " "to " "win " "a " "soul " "to " "God, "
  "\nThe " Spi "rit " "too " im "parts; "
  "\nAnd " "He, " "the " "gift " "of " "Christ " "our " "Lord, "
  "\nDwells " "now " "in " "all " "our " "hearts. "
  "\nThere " "is " par "don, " "peace, " "and " "power. " 
  "\nAnd " pu ri "ty. "  "and " Par a "dise; " 
  "\nWith " "all " "of " "these "  "in " "Christ " "for " "me. " 
  "\nLet " joy "ful " "songs " "of " "praise " "to " "Him " a "rise!\n"

  \set stanza = "5."
  "\nThese " bless "ings " "we " "by " "faith " re "ceive, "
  "\nBy " sim "ple " child "like " "trust; "
  "\nIn " "Christ, " "'tis " "God's " de "light " "to " "give; "
  "\nhe " prom "ised, " "and " "He " "must. "
  "\nThere " "is " par "don, " "peace, " "and " "power. " 
  "\nAnd " pu ri "ty. "  "and " Par a "dise; " 
  "\nWith " "all " "of " "these "  "in " "Christ " "for " "me. " 
  "\nLet " joy "ful " "songs " "of " "praise " "to " "Him " a "rise! "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Would " "we " "be " joy "ful " "in " "the " "Lord? "
  "\nThen " "count " "the " rich "es " "o'er, "
  "\nRe" "vealed " "to " "faith " with "in " "His " "Word, "
  "\nAnd " "note " "the " bound "less " "store. "
  "\npar" "don, " "peace, " "and " "power, "
  "\npar" "don, " "peace, " "and " "power, "
  "\nAnd " pu ri "ty " "and " Par a "dise, "
  "\nWith " "all " "of " "these " "in " "Christ " "for " "me, "
  "\nLet " joy "ful " "songs " "of " "praise " "to " "Him " a "rise!\n"

  \set stanza = "2."
  "\nFor " ev "'ry " "sin, " "by " "grace " Di "vine, "
  "\nA " par "don " "free " be "stowed; "
  "\nAnd " "with " "the " par "don " "peace " "is " "mine, "
  "\nThe " "peace " "in " Je "sus " "blood. "
  "\npar" "don, " "peace, " "and " "power, "
  "\npar" "don, " "peace, " "and " "power, "
  "\nAnd " pu ri "ty " "and " Par a "dise, "
  "\nWith " "all " "of " "these " "in " "Christ " "for " "me, "
  "\nLet " joy "ful " "songs " "of " "praise " "to " "Him " a "rise!\n"

  \set stanza = "3."
  "\nOf " "grace " "to " "break " "the " "power " "of " "sin, "
  "\nHe " "gives " "a " "full " sup "ply; "
  "\nThe " Ho "ly " "Ghost, " "the " "heart " with "in, "
  "\nFrom " "sin " "doth " pu ri "fy. "
  "\npar" "don, " "peace, " "and " "power, "
  "\npar" "don, " "peace, " "and " "power, "
  "\nAnd " pu ri "ty " "and " Par a "dise, "
  "\nWith " "all " "of " "these " "in " "Christ " "for " "me, "
  "\nLet " joy "ful " "songs " "of " "praise " "to " "Him " a "rise!\n"

  \set stanza = "4."
  "\nThe " "power " "to " "win " "a " "soul " "to " "God, "
  "\nThe " Spi "rit " "too " im "parts; "
  "\nAnd " "He, " "the " "gift " "of " "Christ " "our " "Lord, "
  "\nDwells " "now " "in " "all " "our " "hearts. "
  "\npar" "don, " "peace, " "and " "power, "
  "\npar" "don, " "peace, " "and " "power, "
  "\nAnd " pu ri "ty " "and " Par a "dise, "
  "\nWith " "all " "of " "these " "in " "Christ " "for " "me, "
  "\nLet " joy "ful " "songs " "of " "praise " "to " "Him " a "rise!\n"

  \set stanza = "5."
  "\nThese " bless "ings " "we " "by " "faith " re "ceive, "
  "\nBy " sim "ple " child "like " "trust; "
  "\nIn " "Christ, " "'tis " "God's " de "light " "to " "give; "
  "\nhe " prom "ised, " "and " "He " "must. "
  "\npar" "don, " "peace, " "and " "power, "
  "\npar" "don, " "peace, " "and " "power, "
  "\nAnd " pu ri "ty " "and " Par a "dise, "
  "\nWith " "all " "of " "these " "in " "Christ " "for " "me, "
  "\nLet " joy "ful " "songs " "of " "praise " "to " "Him " a "rise! "
}

\book {
  \bookOutputSuffix "midi-women"
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
