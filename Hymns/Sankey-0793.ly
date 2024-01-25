\version "2.25.12"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Young Men, Arise?"
  subtitle    = "Sankey No. 793"
  subsubtitle = "C. C. No. 155"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "R. Lowry."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. H. Edwards."
  meter       = \markup "Eight 6s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*3 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  a'4 | d4. a8 fis4 b | a2. g4 | fis e8[d] e4 a | fis2. \bar "|" \break
  a4 | d4. 8 cis4 b | a2. d4 | e4. a,8 cis4 b | a2. \bar "|" \break
  a4 | e'4. dis8 e4 a, | a(d2) 4 | 4. cis8 d4 b | a2. \bar "|" \break
  a4 | b4. 8 cis4 4 | d d b e | d2 cis | d2.
}

alto = \relative {
  \autoBeamOff
  fis'4 | 4. 8 d4 g | fis2. e4 | d d cis4 4 | d2.
  fis4 | 4. 8 g4 g | fis2. 4 | g4. fis8 e4 d | cis2.
  cis4 | g'4. fis8 g4 4 | fis2. 4 | g4. 8 4 4 | fis2.
  fis4 | g4. 8 4 4 | fis4 4 g g | fis2 e4(g) | fis2.
}

tenor = \relative {
  \autoBeamOff
  a4 | 4. 8 4 d | 2. a4 | 4 gis a a | 2.
  d4 a4. 8 b4 cis | d2. a4 | 4. 8 4 gis | a2.
  a4 | 4. 8 4 cis | d(a2) c4 | b4. ais8 b4 d | 2.
  d4 | 4. 8 a4 a | a d d b | a2 2 | 2.
}

bass = \relative {
  \autoBeamOff
  d4 | 4. 8 4 4 | 2. cis4 | d b a a | d2.
  d4 | 4. 8 4 4 | 2. 4 | cis4. d8 e4 4 | a,2.
  a4 | 4. 8 4 4 | d2. 4 | g4. 8 4 4 | d2.
  d4 | g4. 8 e4 4 | d4 b' g g | a2 a, | d2.
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  “A -- rise, young men, a -- rise!”
  Thy Sa -- viour's lov -- ing voice
  Now bids thee lift thine eyes.
  And in His life re -- joice;
  He raised the sleep -- ing dead,
  And made it grand to live;
  For thee His blood was shed,
  All help His arm will give.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  A -- rise! for death is nigh,
  Life's day is all too brief;
  Like light its mo -- ments fly,
  Its glad -- ness and its grief;
  A -- rise, and take thy part
  In God's tre -- men -- dous fight;
  To arms! stir up thy heart—
  Go forth in heaven's great might!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  A -- rise from dreams of fame,
  From sen -- sual slum -- ber rise;
  Keep spot -- less Christ's dear name,
  Thy wealth seek in the skies;
  The no -- blest works a -- wait
  Thine aid with high re -- ward,
  And crowned at glo -- ry's gate,
  Thou'lt meet thy ris -- en Lord.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "“A" "rise, " "young " "men, " a "rise!” "
  "\nThy " Sa "viour's " lov "ing " "voice "
  "\nNow " "bids " "thee " "lift " "thine " "eyes. "
  "\nAnd " "in " "His " "life " re "joice; "
  "\nHe " "raised " "the " sleep "ing " "dead, "
  "\nAnd " "made " "it " "grand " "to " "live; "
  "\nFor " "thee " "His " "blood " "was " "shed, "
  "\nAll " "help " "His " "arm " "will " "give.\n"

  \set stanza = "2."
  "\nA" "rise! " "for " "death " "is " "nigh, "
  "\nLife's " "day " "is " "all " "too " "brief; "
  "\nLike " "light " "its " mo "ments " "fly, "
  "\nIts " glad "ness " "and " "its " "grief; "
  "\nA" "rise, " "and " "take " "thy " "part "
  "\nIn " "God's " tre men "dous " "fight; "
  "\nTo " "arms! " "stir " "up " "thy " "heart— "
  "\nGo " "forth " "in " "heaven's " "great " "might!\n"

  \set stanza = "3."
  "\nA" "rise " "from " "dreams " "of " "fame, "
  "\nFrom " sen "sual " slum "ber " "rise; "
  "\nKeep " spot "less " "Christ's " "dear " "name, "
  "\nThy " "wealth " "seek " "in " "the " "skies; "
  "\nThe " no "blest " "works " a "wait "
  "\nThine " "aid " "with " "high " re "ward, "
  "\nAnd " "crowned " "at " glo "ry's " "gate, "
  "\nThou'lt " "meet " "thy " ris "en " "Lord. "
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
