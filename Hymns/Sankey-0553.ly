\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "O Love Divine!"
  subtitle    = "Sankey No. 553"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup "Old Melody."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Wesley."
  meter       = \markup\smallCaps "8.8.6. D."
  piece       = \markup\smallCaps "Hull."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 15)

global = {
  \key d \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*5 s2.
  \textMark \markup { \box \bold "B" } s4 s1*5 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 | fis4 4 4 e | a4 4 4 4 | d a b a | a fis e d | fis b a cis | d2 r4 \bar "|" \break
  a4 | d d d fis | e d e fis | d a b a | a fis e d | fis b a cis | d2 r4
}

alto = \relative {
  \autoBeamOff
  a4 | d d cis cis | d g fis e | fis a g e | d d cis d | fis b a g | fis2 r4
  fis4 | fis g a a | a a a a | a a g e | d d cis d | fis b a g | fis2 r4
}

tenor = \relative {
  \autoBeamOff
  fis4 | 4 4 a a | a b8[cis] d4 e | d4 4 4 cis | a a a d, | fis b a e' | d2 r4
  d4 | a a d d | cis d a a | d d d cis | a a a d, | fis b a e' | d2 r4
}

bass = \relative {
  \autoBeamOff
  d4 | d e fis d | fis e d cis | b fis' g g | fis d a' d, | fis b a a | d,2 r4
  d4 | d e fis d | a' fis cis d | fis fis g g | fis d a' d, | fis b a a | d,2 r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O love Di -- vine, how sweet Thou art!
  When shall I find my wil -- ling heart
  All ta -- ken up by Thee?
  I thirst, I faint, I die to prove
  The great -- ness of re -- deem -- ing love,
  The love of Christ to me!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Strong -- er His love than death or hell;
  Its rich -- es are un -- search -- a -- ble:
  The first- born sons of light
  De -- sire in vain its depths to see;
  They can -- not reach the mys -- ter -- y,
  The length, and breadth, and height.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  God on -- ly knows the love of God;
  Oh that it now were shed a -- braod
  In this poor sto -- ny heart!
  For love I sigh, for love I pine:
  This on -- ly por -- tion, Lord, is mine,
  Be mine this bet -- ter part.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Oh that I could for ev -- er sit
  With Ma -- ry at the Mas -- ter's feet;
  Be this my hap -- py choice:
  my on -- ly care, de -- light, and bliss,
  My joy, my heaven on earth, be this,
  To hear the Bride -- groom's voice.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "O " "love " Di "vine, " "how " "sweet " "Thou " "art! "
  "\nWhen " "shall " "I " "find " "my " wil "ling " "heart "
  "\nAll " ta "ken " "up " "by " "Thee? "
  "\nI " "thirst, " "I " "faint, " "I " "die " "to " "prove "
  "\nThe " great "ness " "of " re deem "ing " "love, "
  "\nThe " "love " "of " "Christ " "to " "me!\n"

  \set stanza = "2."
  "\nStrong" "er " "His " "love " "than " "death " "or " "hell; "
  "\nIts " rich "es " "are " un search a "ble: "
  "\nThe " first "born " "sons " "of " "light "
  "\nDe" "sire " "in " "vain " "its " "depths " "to " "see; "
  "\nThey " can "not " "reach " "the " mys ter "y, "
  "\nThe " "length, " "and " "breadth, " "and " "height.\n"

  \set stanza = "3."
  "\nGod " on "ly " "knows " "the " "love " "of " "God; "
  "\nOh " "that " "it " "now " "were " "shed " a "braod "
  "\nIn " "this " "poor " sto "ny " "heart! "
  "\nFor " "love " "I " "sigh, " "for " "love " "I " "pine: "
  "\nThis " on "ly " por "tion, " "Lord, " "is " "mine, "
  "\nBe " "mine " "this " bet "ter " "part.\n"

  \set stanza = "4."
  "\nOh " "that " "I " "could " "for " ev "er " "sit "
  "\nWith " Ma "ry " "at " "the " Mas "ter's " "feet; "
  "\nBe " "this " "my " hap "py " "choice: "
  "\nmy " on "ly " "care, " de "light, " "and " "bliss, "
  "\nMy " "joy, " "my " "heaven " "on " "earth, " "be " "this, "
  "\nTo " "hear " "the " Bride "groom's " "voice. "
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
