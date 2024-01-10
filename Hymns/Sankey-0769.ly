\version "2.25.11"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Sowing to the Spirit."
  subtitle    = "Sankey No. 769"
  subsubtitle = "C. C. No. 172"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Jno. R. Sweney."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
  meter       = \markup\smallCaps "6.5.d."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*3
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*2 s2.
  \textMark \markup { \box \bold "D" } s4 s1*2
  \textMark \markup { \box \bold "E" }    s1*5
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8 c'8 8 8 4 des | c8 bes8 8 a bes2 | ees,8 des'8 8 8 4 ees |
  des8 c c b c2 | ees,8 c' b c aes4 ees | f8 des' c des f,2 |
  ees8 8 aes bes c4 aes | bes8 8 aes g aes2
  \section \sectionLabel \markup\smallCaps Chorus.
  c2~8 bes \bar "|" \break
  aes8 f | ees2 aes | g4. aes8 bes[a] bes[b] |
  c2. r4 | 4. 8 aes4 c | bes2 f | ees8[aes] g[aes] c4 bes | aes2. r4 |
}

alto = \relative {
  \autoBeamOff
  c'8 ees8 8 8 4 f | ees8 des8 8 c des2 | 8 ees8 8 8 4 4 |
  ees8 8 8 d ees2 | c8 ees d ees c4 4 | des8 f f f des2 |
  c8 8 8 ees8 4 4 | f8 8 ees8 8 2 \section | ees2~8 des
  c8 des | c2 2 | bes4. c8 des c des[d] |
  ees2. r4 | 4. 8 4 aes | f2 des | c8[ees] 4 4 des | c2. r4 |
}

tenor = \relative {
  \autoBeamOff
  aes8 8 8 8 4 4 | 8 g g fis g2 | 8 8 8 bes8 4 c |
  bes8 aes8 8 8 2 | 8 8 8 8 ees4 aes | 8 8 8 8 2 |
  aes8 8 8 g aes4 4 | des8 8 c bes c2 \section | aes8 8 8 8 4
  aes4 | 8 8 8 8 4 4 | ees8 8 8 8 g4 r |
  aes8 8 8 8 4 r | 4. 8 c4 ees | des2 aes | 8[c] bes[c] aes4 g | aes2. r4 |
}

bass = \relative {
  \autoBeamOff
  aes,8 8 8 8 4 4 | ees'8 8 8 8 2 | 8 8 8 8 4 4 |
  aes8 8 8 8 2 | aes,8 8 8 8 4 4 | des8 8 8 8 2 |
  aes8 8 8 ees' aes4 c, | des8 8 ees8 8 aes,2 \section | aes8 8 8 8 4
  aes4 | 8 8 8 8 4 4 | ees'8 8 8 8 4 r |
  aes,8 8 c ees aes,4 r | aes'4. 8 4 4 | des,2 2 | ees4 4 4 4 | aes,2. r4 |
}

chorus = \lyricmode {
  Sow -- ing till in beau -- ty
  Fades the set -- ting sun: __
  Wea -- ry not, nor fal -- ter,
  Till the work is done.
}

chorusMen = \lyricmode {
  \small
  \repeat unfold 44 \skip 1
  Sow -- ing, till in beau -- ty,
  Sow -- ing, till in beau -- ty
  Fades the set -- ting sun,
  fades the set -- ting sun;
  \repeat unfold 11 \skip 1
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Sow -- ing to the Spi -- rit,
  Sow -- ing day by day,
  Drop -- ping seeds of kind -- ness
  All a -- long the way;
  Sow -- ing to the Spi -- rit,
  Trust -- ing in the Lord,
  Sweet will be our la -- bour,
  Bless -- ed our re -- ward.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Sow -- ing to the Spi -- rit,
  Pray -- ing as we go;
  From the seed we scat -- ter
  Soon the blade will grow;
  Sow -- ing and be -- liev -- ing,
  God will send the rain;
  We shall see be -- fore us
  Fields of gold -- en grain.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Sow -- ing to the Spi -- rit,
  Tho' our faith be small;
  Sow -- ing in our weak -- ness,
  Tho' the tears may fall;
  Sow -- ing late and ear -- ly,
  Till our work is o'er.
  Then will come the reap -- ing,
  Joy for ev -- er -- more.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Sow" "ing " "to " "the " Spi "rit, "
  "\nSow" "ing " "day " "by " "day, "
  "\nDrop" "ping " "seeds " "of " kind "ness "
  "\nAll " a "long " "the " "way; "
  "\nSow" "ing " "to " "the " Spi "rit, "
  "\nTrust" "ing " "in " "the " "Lord, "
  "\nSweet " "will " "be " "our " la "bour, "
  "\nBless" "ed " "our " re "ward. "
  "\nSow" "ing " "till " "in " beau "ty "
  "\nFades " "the " set "ting " "sun: " 
  "\nWea" "ry " "not, " "nor " fal "ter, "
  "\nTill " "the " "work " "is " "done.\n"

  \set stanza = "2."
  "\nSow" "ing " "to " "the " Spi "rit, "
  "\nPray" "ing " "as " "we " "go; "
  "\nFrom " "the " "seed " "we " scat "ter "
  "\nSoon " "the " "blade " "will " "grow; "
  "\nSow" "ing " "and " be liev "ing, "
  "\nGod " "will " "send " "the " "rain; "
  "\nWe " "shall " "see " be "fore " "us "
  "\nFields " "of " gold "en " "grain. "
  "\nSow" "ing " "till " "in " beau "ty "
  "\nFades " "the " set "ting " "sun: " 
  "\nWea" "ry " "not, " "nor " fal "ter, "
  "\nTill " "the " "work " "is " "done.\n"

  \set stanza = "3."
  "\nSow" "ing " "to " "the " Spi "rit, "
  "\nTho' " "our " "faith " "be " "small; "
  "\nSow" "ing " "in " "our " weak "ness, "
  "\nTho' " "the " "tears " "may " "fall; "
  "\nSow" "ing " "late " "and " ear "ly, "
  "\nTill " "our " "work " "is " "o'er. "
  "\nThen " "will " "come " "the " reap "ing, "
  "\nJoy " "for " ev er "more. "
  "\nSow" "ing " "till " "in " beau "ty "
  "\nFades " "the " set "ting " "sun: " 
  "\nWea" "ry " "not, " "nor " fal "ter, "
  "\nTill " "the " "work " "is " "done. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Sow" "ing " "to " "the " Spi "rit, "
  "\nSow" "ing " "day " "by " "day, "
  "\nDrop" "ping " "seeds " "of " kind "ness "
  "\nAll " a "long " "the " "way; "
  "\nSow" "ing " "to " "the " Spi "rit, "
  "\nTrust" "ing " "in " "the " "Lord, "
  "\nSweet " "will " "be " "our " la "bour, "
  "\nBless" "ed " "our " re "ward. "
  "\nSow" "ing " "till " "in " beau "ty, "
  "\nSow" "ing " "till " "in " beau "ty "
  "\nFades " "the " set "ting " "sun, "
  "\nfades " "the " set "ting " "sun: "
  "\nWea" "ry " "not, " "nor " fal "ter, "
  "\nTill " "the " "work " "is " "done.\n"

  \set stanza = "2."
  "\nSow" "ing " "to " "the " Spi "rit, "
  "\nPray" "ing " "as " "we " "go; "
  "\nFrom " "the " "seed " "we " scat "ter "
  "\nSoon " "the " "blade " "will " "grow; "
  "\nSow" "ing " "and " be liev "ing, "
  "\nGod " "will " "send " "the " "rain; "
  "\nWe " "shall " "see " be "fore " "us "
  "\nFields " "of " gold "en " "grain. "
  "\nSow" "ing " "till " "in " beau "ty, "
  "\nSow" "ing " "till " "in " beau "ty "
  "\nFades " "the " set "ting " "sun, "
  "\nfades " "the " set "ting " "sun: "
  "\nWea" "ry " "not, " "nor " fal "ter, "
  "\nTill " "the " "work " "is " "done.\n"

  \set stanza = "3."
  "\nSow" "ing " "to " "the " Spi "rit, "
  "\nTho' " "our " "faith " "be " "small; "
  "\nSow" "ing " "in " "our " weak "ness, "
  "\nTho' " "the " "tears " "may " "fall; "
  "\nSow" "ing " "late " "and " ear "ly, "
  "\nTill " "our " "work " "is " "o'er. "
  "\nThen " "will " "come " "the " reap "ing, "
  "\nJoy " "for " ev er "more. "
  "\nSow" "ing " "till " "in " beau "ty, "
  "\nSow" "ing " "till " "in " beau "ty "
  "\nFades " "the " set "ting " "sun, "
  "\nfades " "the " set "ting " "sun: "
  "\nWea" "ry " "not, " "nor " fal "ter, "
  "\nTill " "the " "work " "is " "done. "
}

\book {
  \bookOutputSuffix "midi-women"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
            \addlyrics \wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
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
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack     }
            \new Voice { \global \repeat-verses \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat-verses \verses { \alto \nl } \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \repeat-verses \verses \tenor }
            \addlyrics \wordsMidiMen
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat-verses \verses \bass }
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 19)

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
            \new Voice { \repeat-verses \verses \RehearsalTrack }
            \new Voice { \repeat-verses \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat-verses \verses \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \soprano \bar "|." }
                                    { \global \repeat-verses \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \repeat-verses \verses \tenor }
                                    { \global \repeat-verses \verses \bass }
            \new NullVoice = alignerT { \repeat-verses \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat-verses \verses \chorusMen }
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
