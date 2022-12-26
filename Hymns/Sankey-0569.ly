\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Whiter than Snow."
  subtitle    = "Sankey No. 569"
  subsubtitle = "Sankey 880 No. 35"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "W. G. Fischer."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Nicholson."
  meter       = \markup\smallCaps "11s"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*5
  \textMark \markup { \box \bold "B" }    s2.*6
  \textMark \markup { \box \bold "C" }    s2.*6
  \textMark \markup { \box \bold "D" }    s2.*6 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 | 4 aes bes | c4. bes8 aes4 | bes4 c bes | aes2 ees4 | 4 aes bes |
  c4. bes8 aes4 | bes4 c bes | aes2 c4 | ees4 c aes | f8[aes] 4 4 | d4 4 4 |
  c2 ees,4 | 4 aes c | 4. bes8 aes4 | bes4. aes8 g4 | aes2. | \section \sectionLabel \markup\smallCaps Chorus. bes4 4 4 |
  bes2 aes4 | c4 aes f | ees2 4 | f aes des | c4. bes8 aes4 | bes4. aes8 g4 | aes2
}

alto = \relative {
  \autoBeamOff
  c'4 | 4 ees ees | 4. 8 c4 | des ees des | c2 4 | c ees ees |
  ees4. 8 c4 | des ees des | c2 ees4 | 4 4 4 | des8[f] 4 4 | 4 4 4 |
  ees2 c4 | c ees ees | 4. des8 c4 | ees4. 8 des4 | c2. | des4 4 4 |
  des2 c4 | c c des | c2 4 | des4 f f | ees4. des8 c4 | ees4. 8 des4 | c2
}

tenor = \relative {
  \autoBeamOff
  aes4 | 4 4 g | aes4. 8 4 | g4 4 4 | aes2 4 | 4 4 g |
  aes4. 8 4 | g4 4 4 | aes2 4 | c4 aes aes | 4 4 4 | 4 4 4 |
  aes2 4 | 4 4 4 | 4. g8 aes4 | g4. f8 g4 | aes2. | g4 4 4 |
  g2 aes4 | 4 4 4 | 2 4 | 4 4 4 | 4. g8 aes4 | g4. aes8 bes4 | aes2
}

bass = \relative {
  \autoBeamOff
  aes,4 | 4 c ees | aes4. 8 4 | ees4 4 4 | aes,2 4 | aes c ees |
  aes4. 8 4 | ees4 4 4 | aes,2 aes'4 | 4 4 c, | des4 4 4 | 4 4 4 |
  aes2 4 | 4 c aes | ees'4. 8 4 | 4. 8 4 | aes,2. | ees'4 4 4 |
  ees2 f4 | 4 4 des | aes2 4 | des4 4 4 | ees4. 8 4 | 4. 8 4 | aes,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Whi -- ter than snow, yes, whi -- ter than snow,
  Now wash me, and I shall be whi -- ter than snow.
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Lord Je -- sus, I long to be per -- fect -- ly whole,
  I want Thee for ev -- er to live in my soul;
  Break -- down ev -- 'ry i -- dol, cast out ev -- 'ry foe—
  Now wash me, and I shall be whi -- ter than snow.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Lord Je -- sus, let no -- thing un -- ho -- ly re -- main,
  Ap -- ply Thine own blood and ex -- tract ev -- 'ry stain;
  To get this blest clean -- sing I all things fore -- go—
  Now wash me, and I shall be whi -- ter than snow.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Lord Je -- sus, look down from Thy throne in the skies,
  And help me to make a com -- plete sac -- ri -- fice;
  I give up my -- self and what -- ev -- er I know—
  Now wash me, and I shall be whi -- ter than snow.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Lord Je -- sus, for this I most hum -- bly en -- treat;
  I wait, bless -- èd Lord, ath Thy cru -- ci -- fied feet;
  By faith, for my clean -- sing, I see Thy blood flow—
  Now wash me, and I shall be whi -- ter than snow.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Lord Je -- sus, Thou see -- est I pa -- tient -- ly wait;
  Come now, and with -- in me a new heart cre -- ate;
  To those who have sought Thee, Thou nev -- er saidst No—
  Now wash me, and I shall be whi -- ter than snow.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Lord " Je "sus, " "I " "long " "to " "be " per fect "ly " "whole, "
  "\nI " "want " "Thee " "for " ev "er " "to " "live " "in " "my " "soul; "
  "\nBreak" "down " ev "'ry " i "dol, " "cast " "out " ev "'ry " "foe— "
  "\nNow " "wash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, " "yes, " whi "ter " "than " "snow, "
  "\nNow " "wash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow.\n"

  \set stanza = "2."
  "\nLord " Je "sus, " "let " no "thing " un ho "ly " re "main, "
  "\nAp" "ply " "Thine " "own " "blood " "and " ex "tract " ev "'ry " "stain; "
  "\nTo " "get " "this " "blest " clean "sing " "I " "all " "things " fore "go— "
  "\nNow " "wash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, " "yes, " whi "ter " "than " "snow, "
  "\nNow " "wash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow.\n"

  \set stanza = "3."
  "\nLord " Je "sus, " "look " "down " "from " "Thy " "throne " "in " "the " "skies, "
  "\nAnd " "help " "me " "to " "make " "a " com "plete " sac ri "fice; "
  "\nI " "give " "up " my "self " "and " what ev "er " "I " "know— "
  "\nNow " "wash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, " "yes, " whi "ter " "than " "snow, "
  "\nNow " "wash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow.\n"

  \set stanza = "4."
  "\nLord " Je "sus, " "for " "this " "I " "most " hum "bly " en "treat; "
  "\nI " "wait, " bless "èd " "Lord, " "ath " "Thy " cru ci "fied " "feet; "
  "\nBy " "faith, " "for " "my " clean "sing, " "I " "see " "Thy " "blood " "flow— "
  "\nNow " "wash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, " "yes, " whi "ter " "than " "snow, "
  "\nNow " "wash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow.\n"

  \set stanza = "5."
  "\nLord " Je "sus, " "Thou " see "est " "I " pa tient "ly " "wait; "
  "\nCome " "now, " "and " with "in " "me " "a " "new " "heart " cre "ate; "
  "\nTo " "those " "who " "have " "sought " "Thee, " "Thou " nev "er " "saidst " "No— "
  "\nNow " "wash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
  "\nWhi" "ter " "than " "snow, " "yes, " whi "ter " "than " "snow, "
  "\nNow " "wash " "me, " "and " "I " "shall " "be " whi "ter " "than " "snow. "
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
      #(layout-set-staff-size 20)
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
