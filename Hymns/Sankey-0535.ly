\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "He will Safely Hide me."
  subtitle    = "Sankey No. 535"
%  subsubtitle = "Sankey 880 No. Y"
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
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key ees \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*2
  \textMark \markup { \box \bold "B" }    s1*2 s2
  \textMark \markup { \box \bold "C" } s2 s1*2 s2.
  \textMark \markup { \box \bold "D" } s4 s1*2
  \textMark \markup { \box \bold "E" }    s1*3
  \textMark \markup { \box \bold "F" }    s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'8 f | g g g aes g f ees g | bes2 g4 bes8 8 |
  c8 8 8 8 8 bes a g | f2. ees8 f | g8 8 8 aes \bar "|" \break
  g8 f ees g | bes2 c4 8 8 | bes8 8 ees, aes g4 f | ees2. \bar "|" \break
  g8^\markup\smallCaps Chorus. bes | ees2 bes4 8 8 | c2 ees4 d8 c |
  bes8 8 8 c bes g f ees | g2 f4 ees8 g | bes2 g4 bes8 8 |
  c2 ees4 d8 c | bes8 8 8 c bes g f ees | f2 ees4\fermata
}

alto = \relative {
  \autoBeamOff
  ees'8 8 | 8 8 8 8 8 8 8 8 | g2 ees4 8 8 |
  ees8 8 8 8 8 8 d ees | d2. ees8 8 | 8 8 8 8
  ees8 8 8 8 | 2 4 8 8 | 8 8 8 8 4 d | ees2.
  ees8 8 | g2 ees4 8 8 | 2 4 8 8 |
  ees8 8 g a g ees d ees | 2 d4 ees8 8 | g2 ees4 8 8 |
  ees2 4 8 8 | 8 8 8 8 8 8 d ees | d2 ees4\fermata
}

tenor = \relative {
  \autoBeamOff
  g8 aes | bes8 8 8 c bes aes g bes | ees2 bes4 g8 8 |
  aes8 8 8 8 8 bes8 8 8 | 2. g8 aes | bes8 8 8 c
  bes8 aes g bes | 2 aes4 8 8 | g8 8 8 c bes4 aes | g2.
  bes8 g | bes8 8 8 8 g g g g | aes8 8 8 8 c c bes aes |
  g8 8 bes ees ees bes aes g | bes2 4 g8 bes | ees8 8 8 8 bes8 8 g8 8 |
  aes8 8 8 8 c c bes aes | g8 8 8 aes g bes aes g | aes2 g4\fermata
}

bass = \relative {
  \autoBeamOff
  ees8 8 | 8 8 8 8 8 8 8 8 | ees2 4 8 8 |
  aes8 8 8 8 8 g f ees | bes2. ees8 8 | 8 8 8 8
  ees8 8 8 8 | g2 aes4 aes,8 8 | ees'8 8 c aes bes4 4 | ees2.
  ees8 8 | 8 8 8 8 8 8 8 8 | aes,8 8 8 8 8 8 8 c |
  ees8 8 8 8 8 8 8 8 | bes2 4 ees8 8 | 8 8 8 8 8 8 8 8 |
  aes,8 8 8 8 8 8 8 c | ees8 8 8 8 8 8 bes c | bes2 ees4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  He will hide me, safe -- ly hide me,
  Where no sor -- row nor temp -- ta -- tion can be -- tide me;
  He will hide me, safe -- ly hide me;
  In the sec -- ret of His pres -- ence
  He will hide me.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  He will hide me, He will hide me, safe -- ly hide me, safe -- ly hide me,
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ hide me, He will hide me,
  safe -- ly hide me, safe -- ly hide me;
  _ _ _ _ _ _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  In the sec -- ret of His pres -- ence He will hide me,
  From the bur -- den of a wea -- ry world of care;
  O -- ver shad -- owed by His mer -- cy, calm -- ly rest -- ing,
  My Re -- deem -- er will pro -- tect me there.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  In the sec -- ret of His pres -- ence He will hide me,
  And the bright -- ness of His glo -- ry He will show;
  While He cov -- ers me with loght as with a gar -- ment,
  Oh, the rap -- ture that my heart will know!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  In the sec -- ret of His pres -- ence He will hide me,
  In the se -- cret of His bless -- ed, bound -- less love;
  There com -- mun -- ning and a -- bi -- ding with my Sa -- viour,
  What a fore -- taste of the joys a -- bove!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "In " "the " sec "ret " "of " "His " pres "ence " "He " "will " "hide " "me, "
  "\nFrom " "the " bur "den " "of " "a " wea "ry " "world " "of " "care; "
  "\nO" "ver " shad "owed " "by " "His " mer "cy, " calm "ly " rest "ing, "
  "\nMy " Re deem "er " "will " pro "tect " "me " "there. "
  "\nHe " "will " "hide " "me, " safe "ly " "hide " "me, "
  "\nWhere " "no " sor "row " "nor " temp ta "tion " "can " be "tide " "me; "
  "\nHe " "will " "hide " "me, " safe "ly " "hide " "me; "
  "\nIn " "the " sec "ret " "of " "His " pres "ence "
  "\nHe " "will " "hide " "me.\n"

  \set stanza = "2."
  "\nIn " "the " sec "ret " "of " "His " pres "ence " "He " "will " "hide " "me, "
  "\nAnd " "the " bright "ness " "of " "His " glo "ry " "He " "will " "show; "
  "\nWhile " "He " cov "ers " "me " "with " "loght " "as " "with " "a " gar "ment, "
  "\nOh, " "the " rap "ture " "that " "my " "heart " "will " "know! "
  "\nHe " "will " "hide " "me, " safe "ly " "hide " "me, "
  "\nWhere " "no " sor "row " "nor " temp ta "tion " "can " be "tide " "me; "
  "\nHe " "will " "hide " "me, " safe "ly " "hide " "me; "
  "\nIn " "the " sec "ret " "of " "His " pres "ence "
  "\nHe " "will " "hide " "me.\n"

  \set stanza = "3."
  "\nIn " "the " sec "ret " "of " "His " pres "ence " "He " "will " "hide " "me, "
  "\nIn " "the " se "cret " "of " "His " bless "ed, " bound "less " "love; "
  "\nThere " com mun "ning " "and " a bi "ding " "with " "my " Sa "viour, "
  "\nWhat " "a " fore "taste " "of " "the " "joys " a "bove! "
  "\nHe " "will " "hide " "me, " safe "ly " "hide " "me, "
  "\nWhere " "no " sor "row " "nor " temp ta "tion " "can " be "tide " "me; "
  "\nHe " "will " "hide " "me, " safe "ly " "hide " "me; "
  "\nIn " "the " sec "ret " "of " "His " pres "ence "
  "\nHe " "will " "hide " "me. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "In " "the " sec "ret " "of " "His " pres "ence " "He " "will " "hide " "me, "
  "\nFrom " "the " bur "den " "of " "a " wea "ry " "world " "of " "care; "
  "\nO" "ver " shad "owed " "by " "His " mer "cy, " calm "ly " rest "ing, "
  "\nMy " Re deem "er " "will " pro "tect " "me " "there. "
  "\nHe " "will " "hide " "me, " "He " "will " "hide " "me, " safe "ly " "hide " "me, " safe "ly " "hide " "me, "
  "\nWhere " "no " sor "row " "nor " temp ta "tion " "can " be "tide " "me; "
  "\nHe " "will " "hide " "me, " "He " "will " "hide " "me, "
  "\nsafe" "ly " "hide " "me, " safe "ly " "hide " "me; "
  "\nIn " "the " sec "ret " "of " "His " pres "ence "
  "\nHe " "will " "hide " "me.\n"

  \set stanza = "2."
  "\nIn " "the " sec "ret " "of " "His " pres "ence " "He " "will " "hide " "me, "
  "\nAnd " "the " bright "ness " "of " "His " glo "ry " "He " "will " "show; "
  "\nWhile " "He " cov "ers " "me " "with " "loght " "as " "with " "a " gar "ment, "
  "\nOh, " "the " rap "ture " "that " "my " "heart " "will " "know! "
  "\nHe " "will " "hide " "me, " "He " "will " "hide " "me, " safe "ly " "hide " "me, " safe "ly " "hide " "me, "
  "\nWhere " "no " sor "row " "nor " temp ta "tion " "can " be "tide " "me; "
  "\nHe " "will " "hide " "me, " "He " "will " "hide " "me, "
  "\nsafe" "ly " "hide " "me, " safe "ly " "hide " "me; "
  "\nIn " "the " sec "ret " "of " "His " pres "ence "
  "\nHe " "will " "hide " "me.\n"

  \set stanza = "3."
  "\nIn " "the " sec "ret " "of " "His " pres "ence " "He " "will " "hide " "me, "
  "\nIn " "the " se "cret " "of " "His " bless "ed, " bound "less " "love; "
  "\nThere " com mun "ning " "and " a bi "ding " "with " "my " Sa "viour, "
  "\nWhat " "a " fore "taste " "of " "the " "joys " a "bove! "
  "\nHe " "will " "hide " "me, " "He " "will " "hide " "me, " safe "ly " "hide " "me, " safe "ly " "hide " "me, "
  "\nWhere " "no " sor "row " "nor " temp ta "tion " "can " be "tide " "me; "
  "\nHe " "will " "hide " "me, " "He " "will " "hide " "me, "
  "\nsafe" "ly " "hide " "me, " safe "ly " "hide " "me; "
  "\nIn " "the " sec "ret " "of " "His " pres "ence "
  "\nHe " "will " "hide " "me. "
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
