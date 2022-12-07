\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Under His Wings."
  subtitle    = "Sankey No. 541"
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

  poet        = \markup\smallCaps "W. O. Cushing."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key des \major
  \time 6/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" }     s1.*2 s2.
  \textMark \markup { \box \bold "B" } s2. s1.*2
  \textMark \markup { \box \bold "C" }     s1.*3
  \textMark \markup { \box \bold "D" }     s1.*4
  \textMark \markup { \box \bold "E" }     s1.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 ges g aes2 8 8 | 4 bes f aes ges2 | ees4 f ges \bar "|" \break
  bes4 aes aes | aes ees e f2. | 4 ges g aes aes des |
  ees4 des bes bes aes2 | bes4 c des des aes f | aes ges ees des2. |
  aes'4^\markup\smallCaps Chorus. f aes des2.| c4 bes c des2. | 4 aes f bes(aes) f | f ees2~2 r4 |
  des4 f aes des2 c4 | ees des bes aes2. |bes4 c des aes(f) des |
  ees2. des2 r4 |
}

alto = \relative {
  \autoBeamOff
  des'4 ees e f2 8 8 | 4 4 des c4 2 | 4 des ees
  ges4 f f | f c c des2. | 4 ees e f f aes |
  bes4 4 ges ges f2 | ges4 4 4 f f des | f ees c des2. |
  f4 des f4 2. | ges4 4 4 f2. | 4 4 4 ges(f) des | 4 c2~2 r4 |
  des4 4 f4 2 aes4 | ges4 4 4 f2. |ges4 4 f f(des) aes | c2. des2 r4
}

tenor = \relative {
  \autoBeamOff
  aes4 4 bes des2 8 8 | 4 4 aes4 4 2 | 4 4 4
  aes4 4 4 | 4 4 4 2. | 4 4 bes des des des |
  des4 4 4 4 2 | 4 c bes aes des aes | 4 4 ges fes2. |
  des'4 4 4 aes2. | 4 ees'4 4 aes,2. | 4 des4 4 2 aes4 | 4 2~2 r4 |
  f4 aes des aes2 des4 | bes4 4 des4 2. | 4 aes aes des(aes) f | ges2. f2 r4 |
}

bass = \relative {
  \autoBeamOff
  des4 4 4 2 8 8 | 4 4 4 ees4 2 | aes,4 4 4
  aes4 4 4 | 4 4 4 des2. | 4 4 4 4 4 f |
  ges4 4 4 des4 2 | ges4 4 4 des des des | aes4 4 4 des2. |
  des4 4 4 2. | aes'4 4 aes, des2. | 4 4 4 2 f4 | aes4 2~2 r4 |
  des,4 4 4 2 f4 | ges4 4 ges, des'2. | ges4 ees des4 2 4 | aes2. des2 r4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Un -- der His wings, un -- der His wings,
  Who from His love can se -- ver? __
  Un -- der His wings my soul shall a -- bide,
  Safe -- ly a -- bide for ev -- er.
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Un -- der His wings I am safe -- ly a -- bi -- ding;
  Tho' the night deep -- ens and tem -- pests are wild;
  Still I can trust Him— I know He will keep me;
  He has re -- deem'd me, and I am His child.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Un -- der His wings, what a re -- fuge in sor -- row!
  How the heart yearn -- ing -- ly turns to its rest!
  Oft -- en when earth has no balm for my heal -- ing,
  There I find com -- fort, and there I am blest.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Un -- der His wingsm oh, what pre -- cious en -- joy -- ment!
  There will I hide till life's tri -- als are o'er;
  Shel -- ter'd, pro -- tec -- ted, no e -- vil can harm me;
  Rest -- ing in Je -- sus I'm safe ev -- er -- more.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Un" "der " "His " "wings " "I " "am " safe "ly " a bi "ding; "
  "\nTho' " "the " "night " deep "ens " "and " tem "pests " "are " "wild; "
  "\nStill " "I " "can " "trust " "Him— " "I " "know " "He " "will " "keep " "me; "
  "\nHe " "has " re "deem'd " "me, " "and " "I " "am " "His " "child. "
  "\nUn" "der " "His " "wings, " un "der " "His " "wings, "
  "\nWho " "from " "His " "love " "can " se "ver? " 
  "\nUn" "der " "His " "wings " "my " "soul " "shall " a "bide, "
  "\nSafe" "ly " a "bide " "for " ev "er.\n"

  \set stanza = "2."
  "\nUn" "der " "His " "wings, " "what " "a " re "fuge " "in " sor "row! "
  "\nHow " "the " "heart " yearn ing "ly " "turns " "to " "its " "rest! "
  "\nOft" "en " "when " "earth " "has " "no " "balm " "for " "my " heal "ing, "
  "\nThere " "I " "find " com "fort, " "and " "there " "I " "am " "blest. "
  "\nUn" "der " "His " "wings, " un "der " "His " "wings, "
  "\nWho " "from " "His " "love " "can " se "ver? " 
  "\nUn" "der " "His " "wings " "my " "soul " "shall " a "bide, "
  "\nSafe" "ly " a "bide " "for " ev "er.\n"

  \set stanza = "3."
  "\nUn" "der " "His " "wingsm " "oh, " "what " pre "cious " en joy "ment! "
  "\nThere " "will " "I " "hide " "till " "life's " tri "als " "are " "o'er; "
  "\nShel" "ter'd, " pro tec "ted, " "no " e "vil " "can " "harm " "me; "
  "\nRest" "ing " "in " Je "sus " "I'm " "safe " ev er "more. "
  "\nUn" "der " "His " "wings, " un "der " "His " "wings, "
  "\nWho " "from " "His " "love " "can " se "ver? " 
  "\nUn" "der " "His " "wings " "my " "soul " "shall " a "bide, "
  "\nSafe" "ly " a "bide " "for " ev "er. "
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
