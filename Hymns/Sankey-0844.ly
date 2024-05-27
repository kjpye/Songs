\version "2.25.16"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Could not do without Thee."
  subtitle    = "Sankey No. 844"
  subsubtitle = "Sankey 880 No. 743"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Hermann."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances R. havergal."
  meter       = \markup\smallCaps "7.6."
  piece       = \markup\smallCaps "Munich."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key f \major
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

soprano = \relative {
  \autoBeamOff
  f'8.[g16] | a4 d c bes | a2 4 4 | c bes8[a] g4 4 | f2. \bar "|" \break
  f8.[g16] | a4 d c bes | a2 4 4 | c bes8[a] g4 4 | f2. \bar "|" \break
  g4 | g a bes4 4 | a2 4 d | f d a b | c2. \bar "|" \break
  c4 | c a bes c | d2 4 c | bes a g g | f2.
}

alto = \relative {
  \autoBeamOff
  f'4 | 4 4 e g | f2 4 4 | 4 4 4 e | f2.
  f4 | 4 4 e g | f2 4 4 | 4 4 4 e | f2.
  e4 | e fis g g | f2 4 4 | f a a g8[f] | e2.
  g4 d d d g8[a] | bes2 4 f | f f f e | f2.
}

tenor = \relative {
  \autoBeamOff
  a8.[bes16] | c4 bes8[a] g4 c | 2 4 4 | c d g,8[a] bes4 | a2.
  a8.[bes16] | c4 bes8[a] g4 c | 2 4 4 | c d g,8[a] bes4 | a2.
  c4 | c c d d | 2 4 a | a f'8[e] d4 d | c2.
  bes4 | a c f ees | d2 f4 4 | bes, d g, bes | a2.
}

bass = \relative {
  \autoBeamOff
  f4 | f bes, c e | f2 4 4 | a, bes c c | f2.
  f4 | f bes, c e | f2 4 4 | a, bes c c | f2.
  c'4 | bes a g g | d2 4 4 | 4 8[e] f4 g | c,2.
  e4 | f ees d c | bes2 4 a | d bes c c | f2.
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  I could not do with -- out Thee,
  O Sa -- viour of the lost,
  Whose pre -- cious blood re -- deemed me
  At such tre -- men -- dous cost:
  Thy righ -- teous -- ness, Thy par -- don,
  Thy Sa -- cri -- fice, must be
  My on -- ly hope and com -- fort,
  My glo -- ry and my plea.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  I could not do with -- out Thee,
  I can -- not stand a -- lone,
  I have no strength or good -- ness,
  No wis -- dom of my own:
  But Thou, be -- lov -- ed Sa -- viour,
  Art all in all to me;
  And weak -- ness will be pow -- er,
  If lean -- ing hard on Thee.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  I could not do with -- out Thee,
  For years are fleet -- ing fast,
  And soon in sol -- emn si -- lence,
  The riv -- er must be pass’d;
  But Thou wilt nev -- er leave me;
  And, though the waves run high,
  I know Thou wilt be near me,
  And whis -- per “It is I.”
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I " "could " "not " "do " with "out " "Thee, "
  "\nO " Sa "viour " "of " "the " "lost, "
  "\nWhose " pre "cious " "blood " re "deemed " "me "
  "\nAt " "such " tre men "dous " "cost: "
  "\nThy " righ teous "ness, " "Thy " par "don, "
  "\nThy " Sa cri "fice, " "must " "be "
  "\nMy " on "ly " "hope " "and " com "fort, "
  "\nMy " glo "ry " "and " "my " "plea.\n"

  \set stanza = "2."
  "\nI " "could " "not " "do " with "out " "Thee, "
  "\nI " can "not " "stand " a "lone, "
  "\nI " "have " "no " "strength " "or " good "ness, "
  "\nNo " wis "dom " "of " "my " "own: "
  "\nBut " "Thou, " be lov "ed " Sa "viour, "
  "\nArt " "all " "in " "all " "to " "me; "
  "\nAnd " weak "ness " "will " "be " pow "er, "
  "\nIf " lean "ing " "hard " "on " "Thee.\n"

  \set stanza = "3."
  "\nI " "could " "not " "do " with "out " "Thee, "
  "\nFor " "years " "are " fleet "ing " "fast, "
  "\nAnd " "soon " "in " sol "emn " si "lence, "
  "\nThe " riv "er " "must " "be " "pass’d; "
  "\nBut " "Thou " "wilt " nev "er " "leave " "me; "
  "\nAnd, " "though " "the " "waves " "run " "high, "
  "\nI " "know " "Thou " "wilt " "be " "near " "me, "
  "\nAnd " whis "per " "“It " "is " "I.” "
}

wordsMidiMen = \lyricmode {
}

\book {
  \paper {
    output-suffix = midi
  }
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
            \new Voice { \global \repeat unfold \verses { \tenor \nl } }
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
  \paper {
    output-suffix = repeat
  }
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
            \new Voice \partCombine #'(2 . 88) { \global \repeat unfold \verses { \tenor \nl } }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusMen }
        >>
}

\book {
  \paper {
    output-suffix = single
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

\book {
  \paper {
    output-suffix = singlepage
  }
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
