\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Remember Me, O Mighty One!"
  subtitle    = "Sankey No. 555"
  subsubtitle = "Sankey 880 No. 427"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Johanna Kinkel."
  arranger    = \markup {"Arr." \smallCaps "Geo. F. Root."}
%  opus        = "opus"

  poet        = \markup "Anon."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }    s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } \partial 4 s4 s2.*9 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4^\markup\italic "With earnest expression" c8. ees16 aes4. 8 | 4 g r ees | ees aes des4. c8 | c4 bes r \bar "|" \break
  aes4 | ees4. f8 ges4 4 | 4 f r f | 4. g8 aes4 4 | 4 g r \bar "|" \break \time 3/4 \partial 4
  ees4^\markup\smallCaps Chorus. | ees2 aes4 | c2^\markup\italic rit. aes4 | 2 f4 | ees2 aes4 | des2 c4 | c(bes) aes | 2. | g | aes2.~ | 2
}

alto = \relative {
  \autoBeamOff
  c'4 aes8. c16 4. 8 | des4 4 r des | c4 4 f4. ees8 | 4 4 r
  c4 | 4. des8 ees4 4 | 4 des r d | d4. ees8 f4 4 | 4 ees r
  des4 | c2 4 | ees2 4 | f2 des4 | c2 aes'4 | g2 aes4 | f2 4 | ees2. | 2. | 2.~ |2 
}

tenor = \relative {
  \autoBeamOff
  ees4 8. 16 4. 8 | 4 4 r g | aes4 4 4. 8 | 4 g r
  aes4 | 4. 8 4 4 | 4 4 r bes | 4. 8 4 4 | 4 4 r
  g4 | aes2 4 | 2 4 | 2 4 | 2 ees'4 | 2 4 | 4(des) bes | c2. | des | c2.~ | 2
}

bass = \relative {
  \autoBeamOff
  aes,4 8. 16 4. 8 | bes4 4 r4 4 | aes f' des4. aes8 | ees'4 4 r
  aes,4 | 4. 8 4 c | des4 4 r bes | 4. 8 4 d | ees4 4 r
  ees4 | aes,2 4 | 2 c4 | des2 f4 | aes2 c4 | bes2 aes4 | des,2 4 | ees2. | 2. | aes,2.~ | 2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Re -- mem -- ber me, O Might -- y One!
  Re -- mem -- ber me, O Might -- y One!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  When storms a -- round are sweep -- ing,
  When lone my watch I'm keep -- ing,
  'Mid fires of e -- vil fall -- ing,
  'Mid temp -- ters voi -- ces call -- ing,
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  When walk -- ing on life's o -- cean,
  Con -- trol its rag -- ing mo -- tion;
  When from its dan -- gers shrink -- ing,
  When in its dread deeps sink -- ing,
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When weight of sin op -- press -- es,
  When dark des -- pair dis -- tress -- es,
  All through the life that's mor -- tal,
  And when I pass death's por -- tal,
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "When " "storms " a "round " "are " sweep "ing, "
  "\nWhen " "lone " "my " "watch " "I'm " keep "ing, "
  "\n'Mid " "fires " "of " e "vil " fall "ing, "
  "\n'Mid " temp "ters " voi "ces " call "ing, "
  "\nRe" mem "ber " "me, " "O " Might "y " "One! "
  "\nRe" mem "ber " "me, " "O " Might "y " "One!\n"

  \set stanza = "2."
  "\nWhen " walk "ing " "on " "life's " o "cean, "
  "\nCon" "trol " "its " rag "ing " mo "tion; "
  "\nWhen " "from " "its " dan "gers " shrink "ing, "
  "\nWhen " "in " "its " "dread " "deeps " sink "ing, "
  "\nRe" mem "ber " "me, " "O " Might "y " "One! "
  "\nRe" mem "ber " "me, " "O " Might "y " "One!\n"

  \set stanza = "3."
  "\nWhen " "weight " "of " "sin " op press "es, "
  "\nWhen " "dark " des "pair " dis tress "es, "
  "\nAll " "through " "the " "life " "that's " mor "tal, "
  "\nAnd " "when " "I " "pass " "death's " por "tal, "
  "\nRe" mem "ber " "me, " "O " Might "y " "One! "
  "\nRe" mem "ber " "me, " "O " Might "y " "One! "
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
