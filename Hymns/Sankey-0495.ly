\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Blessed Lord, I Come!"
  subtitle    = "Sankey No. 495"
  subsubtitle = "C. C. No. 186"
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
  meter       = \markup\smallCaps "8.8.8.6."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/2
  \partial 2
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2 s1.*3 s1
  \mark \markup { \box "B" } s2 s1.*3 s1
  \mark \markup { \box "C" } s2 s1.*3 s1
  \mark \markup { \box "D" } s2 s1.*3 s1
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'2 | 4 g b2 g | d4 e d2 g | fis4 g a2 2 | g4 a b2 \bar "|" \break d,2 |
  d4 g b2 g | a4 b c2 e, | d4 g b2 a | g1 \bar "||" \break b2^\markup\smallCaps Chorus. |
  d4 4 2 b | c4 b a2 2 | 4 b c2 e | d4 a b2 \bar "|" \break d,2 |
  d4 g b2 g | a4 b c2 e | d4 b4 2 a | g1\fermata
}

alto = \relative {
  \autoBeamOff
  d'2 | 4 4 g2 2 | d4 e d2 g | fis4 g a2 2 | g4 a b2 d, |
  d4 d g2 2 | 4 f e2 c | d4 b d2 fis | g1 d2 |
  g4 d g2 2 | a4 g fis2 2 | 4 g fis2 2 | g4 fis g2 d |
  d4 4 g2 2 | 4 f e2 g | 4 4 2 d | d1\fermata
}

tenor = \relative {
  \autoBeamOff
  b2 | 4 4 d2 b | g4 4 2 d' | c4 b d2 c | b4 d4 2 b |
  b4 4 d2 b | c4 d c2 g | 4 4 2 c | b1 g2 |
  b4 c d2 2 | 4 4 2 2 | c4 b a2 c | b4 d4 2 b |
  b4 4 d2 b | c4 d c2 ais | b4 d4 2 c | b1\fermata
}

bass = \relative {
  \autoBeamOff
  g2 | 4 4 2 2 | 4 4 2 b | a4 g d2 2 | 4 4 g2 2 |
  g4 4 2 2 | 4 4 c,2 2 | b4 e d2 2 | g1 2 |
  g4 a b2 g | fis4 g d2 2 | 4 4 2 2 | 4 4 g2 2 |
  g4 4 2 2 | 4 4 c,2 cis | d4 4 2 2 | g,1\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I come— and this my on -- ly plea,
  That Thou didst give Thy -- self for me;
  And cast -- ing all my care on Thee,
  O bless -- ed Lord, I come!
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O Je -- sus Sa -- viour, hear my call,
  While at Thy feet I hum -- bly fall:
  To Thee, my Hope, my Life, my All,
  O bless -- ed Lord, I come!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I have no mer -- it of my own,
  Thou on -- ly canst for sin a -- tone;
  And look -- ing up to Thee a -- lone,
  O bless -- ed Lord, I come!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thy pre -- cious name sal -- va -- tion brings,
  To Thee my wea -- ry spi -- rit clings;
  And now, to rest be -- neath Thy wings,
  O bless -- ed Lord, I come!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh, take this wan -- dering heart of mine,
  And seal it, Lord, for ev -- er Thine;
  That I may know Thy love Di -- vine,
  O bless -- ed Lord, I come!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " Je "sus " Sa "viour, " "hear " "my " "call, "
  "\nWhile " "at " "Thy " "feet " "I " hum "bly " "fall: "
  "\nTo " "Thee, " "my " "Hope, " "my " "Life, " "my " "All, "
  "\nO " bless "ed " "Lord, " "I " "come! "
  "\nI " "come— " "and " "this " "my " on "ly " "plea, "
  "\nThat " "Thou " "didst " "give " Thy "self " "for " "me; "
  "\nAnd " cast "ing " "all " "my " "care " "on " "Thee, "
  "\nO " bless "ed " "Lord, " "I " "come!\n"

  \set stanza = "2."
  "\nI " "have " "no " mer "it " "of " "my " "own, "
  "\nThou " on "ly " "canst " "for " "sin " a "tone; "
  "\nAnd " look "ing " "up " "to " "Thee " a "lone, "
  "\nO " bless "ed " "Lord, " "I " "come! "
  "\nI " "come— " "and " "this " "my " on "ly " "plea, "
  "\nThat " "Thou " "didst " "give " Thy "self " "for " "me; "
  "\nAnd " cast "ing " "all " "my " "care " "on " "Thee, "
  "\nO " bless "ed " "Lord, " "I " "come!\n"

  \set stanza = "3."
  "\nThy " pre "cious " "name " sal va "tion " "brings, "
  "\nTo " "Thee " "my " wea "ry " spi "rit " "clings; "
  "\nAnd " "now, " "to " "rest " be "neath " "Thy " "wings, "
  "\nO " bless "ed " "Lord, " "I " "come! "
  "\nI " "come— " "and " "this " "my " on "ly " "plea, "
  "\nThat " "Thou " "didst " "give " Thy "self " "for " "me; "
  "\nAnd " cast "ing " "all " "my " "care " "on " "Thee, "
  "\nO " bless "ed " "Lord, " "I " "come!\n"

  \set stanza = "4."
  "\nOh, " "take " "this " wan "dering " "heart " "of " "mine, "
  "\nAnd " "seal " "it, " "Lord, " "for " ev "er " "Thine; "
  "\nThat " "I " "may " "know " "Thy " "love " Di "vine, "
  "\nO " bless "ed " "Lord, " "I " "come! "
  "\nI " "come— " "and " "this " "my " on "ly " "plea, "
  "\nThat " "Thou " "didst " "give " Thy "self " "for " "me; "
  "\nAnd " cast "ing " "all " "my " "care " "on " "Thee, "
  "\nO " bless "ed " "Lord, " "I " "come! "
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
      indent = 1.5\cm
      \pointAndClickOff
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
