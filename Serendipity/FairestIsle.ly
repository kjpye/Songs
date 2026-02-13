\version "2.25.33"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Fairest Isle"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = "Henry Purcell (1658—1695)"
  arranger    = "Arr. Arthur S Loam"
%  opus        = "opus"

  poet        = "J Dryden (1631—1700)"
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2.*7
  \textMark \markup { \box \bold "B" } s2.*9
  \textMark \markup { \box \bold "C" } s2.*8
  \textMark \markup { \box \bold "D" } s2.*8
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  b'4 d2 | g,2 d'4 | e8(d e fis) e4 | d2 b4 | b8(c d4) a | b8(a g4) fis | d8(e g4) a |
  fis2. | b4 d2 | g,2 d'4 | e8(d e fis) e4 | d2 b4 | b8(d d4) a | b8(a g4) fis | d8(fis g4) a | fis2. \break |
  a4 fis2 | b2 g4 | c4 a2 | b2 4 | b8(c d e) d4 | gis,2 4 | a8(b c b) a4 | 2. |
  d4 b2 | g2 b4 | c8(b a b) a(g) | a4(d,) d |
  \tag #'dash {\slurDashed g8\=1(\=2(fis\=2) e4\=1) c' \slurSolid |}
  \tag #'v1   {            g8   (    fis     e4   ) c'            |}
  \tag #'v2   {            g8       (fis   ) e4     c'            |}
  c8(b a4) d | d8(c b4) a8(g) | g2. |
}

alto = \relative {
  d'4 fis2 | g2 4 | 4 e4.(fis8) | g(fis g a) g4 | d4.(e8) f4 | d4(e) a, | a(e'8 d) cis4 |
  d2. | 4 fis2 | g2 4 | 4 e4.(fis8) | g(fis g a) g4 | d4.(e8) fis4 | d(e) a, | a(e'8 d) cis4 | d2. |
  d2 4 | 2 4 | 4 fis2 | g2 4 | d2 4 | e(d8 e) f4 | e(c8 d) e(d) | c2. |
  d2 4 | g2 fis4 | e2 4 | a,2 d4 |
  \tag #'dash {\slurDashed d4(e8 d) \slurSolid c(e) |}
  \tag #'v1   {            d4(e8 d)            c(e) |}
  \tag #'v2   {            d4 e8(d)            c(e) |}
  d2 4 | d(g) fis | g2. |
}

tenor = \relative {
  \voiceOne
  b2 4 | b(e) d | c g4.(a8) | b(a b c) d4 | d(a) d8(c) | b4.(cis8) d4 | d(cis8 b) a4 |
  a2. | b2 4 | b(e) d | c g4.(a8) | b8(a b c) d4 | d(a) d8(c) | b4.(cis8) d4 | d(cis8 b) a4 | a2. |
  g4 a2 | g4(a) b | c(d) c | b8(c d e) d4 | d(gis,) a | b2 d4 | c(a8 b) c(b) | a2. |
  a4 g2 | b8(a b c) d4 | g,(a) e | fis8(a fis g) fis4 |
  \tag #'dash {\slurDashed g4(g) \slurSolid a8(g) |}
  \tag #'v1   {            g4(g)            a8(g) |}
  \tag #'v2   {            g4 g             a8(g) |}
  fis2 g4 | 8(a b c) d4 | b2. |
}

bass = \relative {
  \voiceTwo
  g4 d2 | e b4 | c2 4 | g'2 4 | fis2 d4 | g8(fis e4) d | a'2 a,4 |
  d2. | g4 d2 | e2 b4 | c2 4 | g'2 4 | fis2 d4 | g8(fis e4) d | b'2 a,4 | d2. |
  d4 2 | b2 e4 | a,4 d2 | g,2 g'4 | f2 4 | e2 d4 | e2 4 | a,4(a' g) |
  fis4 g2 | e2 d4 | c2 cis4 | d2 8(c) |
  \tag #'dash {\slurDashed b4(c)            a |}
  \tag #'v1   {            b4(c)            a |}
  \tag #'v2   {            b4 c             a |}
  d2 b4 | c(d) d | g,2. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

verses = 2

wordsOneA = \lyricmode {
  \set stanza = "1."
  Fair -- est Isle, all isles ex -- cell -- ing,
  Cra -- dled 'mid __ the west -- ern seas,
  Where sweet peace hath made __ her dwel -- ling,
  Where __ she sport -- eth at __ her ease!
  Bless -- ed Isle, where glad -- ness reign -- eth,
  Where the wand -- d'rer find -- eth rest,
  Where the churl a -- lone __ com -- plain -- eth,
  Where the brave __ and true __ are blest!
}
  
wordsTwoA = \lyricmode {
  \set stanza = "2."
  May thy flag for e -- ver glo -- rious,
  In the cause of truth un -- furled,
  O -- ver wrong and hate vic -- tor -- ious,
  Shine a bea -- con o'er the world!
  May thy sons be al -- ways dar -- ing,
  May thy daught -- ers all be fair,
  For their coun -- try's hon -- our car -- ing,
  Then to harm thee none shall dare.
}
  
wordsMidiA = \lyricmode {
  \set stanza = "1."
  "Fair" "est " "Isle, " "all " "isles " ex cell "ing, "
  "\nCra" "dled " "'mid "  "the " west "ern " "seas, "
  "\nWhere " "sweet " "peace " "hath " "made "  "her " dwel "ling, "
  "\nWhere "  "she " sport "eth " "at "  "her " "ease! "
  "\nBless" "ed " "Isle, " "where " glad "ness " reign "eth, "
  "\nWhere " "the " wand "d'rer " find "eth " "rest, "
  "\nWhere " "the " "churl " a "lone "  com plain "eth, "
  "\nWhere " "the " "brave "  "and " "true "  "are " "blest!\n"

  \set stanza = "2."
  "\nMay " "thy " "flag " "for " e "ver " glo "rious, "
  "\nIn " "the " "cause " "of " "truth " un "furled, "
  "\nO" "ver " "wrong " "and " "hate " vic tor "ious, "
  "\nShine " "a " bea "con " "o'er " "the " "world! "
  "\nMay " "thy " "sons " "be " al "ways " dar "ing, "
  "\nMay " "thy " daught "ers " "all " "be " "fair, "
  "\nFor " "their " coun "try's " hon "our " car "ing, "
  "\nThen " "to " "harm " "thee " "none " "shall " "dare. "
}
  
wordsOneB = \lyricmode {
  \set stanza = "1."
  Fair -- est Isle, all isles ex -- cell -- ing,
  Seat of pleas -- ures and of loves,
  Ven -- us here will choose her dwell -- ing,
  And for -- sake her Cyp -- rian groves.
  Cu -- pid from his fav' -- rite nat -- ion
  Care and en -- vy will re -- move.
  Jeal -- ous -- y that pois -- ons pass -- ion,
  And des -- pair that dies for love.
}
  
wordsTwoB = \lyricmode {
  \set stanza = "2."
  Gen -- tle mur -- murs, sweet com -- plain -- ing,
  Sighs that blow the fire of love,
  Soft re -- puls -- es, kind dis -- dain -- ing,
  Shall be all the pains you prove.
  Ev' -- ry swain shall pay his du -- ty,
  Grate -- ful ev' -- ry nymph shall prove,
  And as they ex -- cel in beau -- ty
  \nom So _ those \yesm shall be re -- nowned for love.
}
  
wordsSingleB = \lyricmode {
  \set stanza = "1."
  Fair -- est Isle, all isles ex -- cell -- ing,
  Seat of pleas -- ures and of loves,
  Ven -- us here will choose her dwell -- ing,
  And for -- sake her Cyp -- rian groves.
  Cu -- pid from his fav' -- rite nat -- ion
  Care and en -- vy will re -- move.
  Jeal -- ous -- y that pois -- ons pass -- ion,
  And des -- pair that dies for love.

  \set stanza = "2."
  Gen -- tle mur -- murs, sweet com -- plain -- ing,
  Sighs that blow the fire of love,
  Soft re -- puls -- es, kind dis -- dain -- ing,
  Shall be all the pains you prove.
  Ev' -- ry swain shall pay his du -- ty,
  Grate -- ful ev' -- ry nymph shall prove,
  And as they ex -- cel in beau -- ty
  So those shall be re -- nowned for love.
}
  
wordsMidiB = \lyricmode {
  \set stanza = "1."
  "Fair" "est " "Isle, " "all " "isles " ex cell "ing, "
  "\nSeat " "of " pleas "ures " "and " "of " "loves, "
  "\nVen" "us " "here " "will " "choose " "her " dwell "ing, "
  "\nAnd " for "sake " "her " Cyp "rian " "groves. "
  "\nCu" "pid " "from " "his " fav' "rite " nat "ion "
  "\nCare " "and " en "vy " "will " re "move. "
  "\nJeal" ous "y " "that " pois "ons " pass "ion, "
  "\nAnd " des "pair " "that " "dies " "for " "love.\n"

  \set stanza = "2."
  "\nGen" "tle " mur "murs, " "sweet " com plain "ing, "
  "\nSighs " "that " "blow " "the " "fire " "of " "love, "
  "\nSoft " re puls "es, " "kind " dis dain "ing, "
  "\nShall " "be " "all " "the " "pains " "you " "prove. "
  "\nEv'" "ry " "swain " "shall " "pay " "his " du "ty, "
  "\nGrate" "ful " ev' "ry " "nymph " "shall " "prove, "
  "\nAnd " "as " "they " ex "cel " "in " beau "ty "
  "\nSo " "those " "shall " "be " re "nowned " "for " "love. "
}

\book {
  \bookOutputSuffix "midiA"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \keepWithTag #'v1 \soprano \keepWithTag #'v2 \soprano \bar "|." }
            \addlyrics \wordsMidiB
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \keepWithTag #'v1 \alto \nl \keepWithTag #'v2 \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \keepWithTag #'v1 \tenor \keepWithTag #'v2 \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \keepWithTag #'v1 \bass \keepWithTag #'v2 \bass }
          >>
        >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \bookOutputSuffix "repeatA"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'v1 \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'v1 \soprano \bar "|." } { \global \keepWithTag #'v1 \alto }
            \new Lyrics \lyricsto "aligner" \wordsOneA
            \new Lyrics \lyricsto "aligner" \wordsTwoA
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'v1 \tenor } { \global \keepWithTag #'v1 \bass }
          >>
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

singlescoreA = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \keepWithTag #'v1 \soprano \keepWithTag #'v1 \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'v1 \soprano \keepWithTag #'v1 \soprano \bar "|." }
                                    { \global \keepWithTag #'v1 \alto \nl \keepWithTag #'v1 \alto \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOneA \wordsTwoA }
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'v1 \tenor \keepWithTag #'v1 \tenor }
                                    { \global \keepWithTag #'v1 \bass \keepWithTag #'v1 \bass }
          >>
        >>
}

\book {
  \bookOutputSuffix "singleA"
  \score {
    \singlescoreA
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
  \bookOutputSuffix "singlepageA"
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
    \singlescoreA
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
  \bookOutputSuffix "midiB"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \keepWithTag #'v1 \soprano \keepWithTag #'v2 \soprano \bar "|." }
            \addlyrics \wordsMidiB
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \keepWithTag #'v1 \alto \nl \keepWithTag #'v2 \alto \bar "|." }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \keepWithTag #'v1 \tenor \keepWithTag #'v2 \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \keepWithTag #'v1 \bass \keepWithTag #'v2 \bass }
          >>
        >>
    \midi {
      \context {
        \Staff
        \consists "Dynamic_performer"
      }
      \context {
        \Voice
        \remove "Dynamic_performer"
      }
    }
  }
}

\book {
  \bookOutputSuffix "repeatB"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \keepWithTag #'dash \soprano
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \soprano \bar "|." } { \global \keepWithTag #'dash \alto }
            \new Lyrics \lyricsto "aligner" \wordsOneB
            \new Lyrics \lyricsto "aligner" \wordsTwoB
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'dash \tenor } { \global \keepWithTag #'dash \bass }
          >>
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

singlescoreB = {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \keepWithTag #'v1 \soprano \keepWithTag #'v2 \soprano }
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'v1 \soprano \keepWithTag #'v2 \soprano \bar "|." }
                                    { \global \keepWithTag #'v1 \alto \nl \keepWithTag #'v2 \alto \bar "|." }
            \new Lyrics \lyricsto "aligner" \wordsSingleB
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \keepWithTag #'v1 \tenor \keepWithTag #'v2 \tenor }
                                    { \global \keepWithTag #'v1 \bass \keepWithTag #'v2 \bass }
          >>
        >>
}

\book {
  \bookOutputSuffix "singleB"
  \score {
    \singlescoreB
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
  \bookOutputSuffix "singlepageB"
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
    \singlescoreB
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
  \bookOutputSuffix "singlepage-sop"
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
    \new ChoirStaff <<
                                %  Soprano staff
      \new Staff = soprano
      <<
        \new Voice { \repeat unfold \verses \RehearsalTrack }
        \new Voice { \repeat unfold \verses \TempoTrack }
        \new Voice { \global \keepWithTag #'v1 \soprano \keepWithTag #'v2 \soprano \bar "|." }
        \addlyrics \wordsSingleB
      >>
                                % Alto staff
      \new Staff = alto
      <<
        \magnifyStaff #4/7
        \new Voice { \global \keepWithTag #'v1 \alto \nl \keepWithTag #'v2 \alto \bar "|." }
        \addlyrics { \tiny \wordsSingleB }
      >>
                                % Tenor staff
      \new Staff = tenor
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice { \global \keepWithTag #'v1 \tenor \keepWithTag #'v2 \tenor }
        \addlyrics { \tiny { \wordsSingleB } }
      >>
%    >>
                                % Bass staff
      \new Staff = bass
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Voice { \global \keepWithTag #'v1 \bass \keepWithTag #'v2 \bass }
        \addlyrics { \tiny { \wordsSingleB } }
      >>
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

\book {
  \bookOutputSuffix "singlepage-alto"
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
    \new ChoirStaff <<
                                %  Soprano staff
      \new Staff = soprano
      <<
        \magnifyStaff #4/7
        \new Voice { \repeat unfold \verses \RehearsalTrack }
        \new Voice { \repeat unfold \verses \TempoTrack }
        \new Voice { \global \keepWithTag #'v1 \soprano \keepWithTag #'v2 \soprano \bar "|." }
        \addlyrics { \tiny {\wordsSingleB } }
      >>
                                % Alto staff
      \new Staff = alto
      <<
        \new Voice { \global \keepWithTag #'v1 \alto \nl \keepWithTag #'v2 \alto \bar "|." }
        \addlyrics { \wordsSingleB }
      >>
                                % Tenor staff
      \new Staff = tenor
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice { \global \keepWithTag #'v1 \tenor \keepWithTag #'v2 \tenor }
        \addlyrics { \tiny { \wordsSingleB } }
      >>
%    >>
                                % Bass staff
      \new Staff = bass
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Voice { \global \keepWithTag #'v1 \bass \keepWithTag #'v2 \bass }
        \addlyrics { \tiny { \wordsSingleB } }
      >>
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

\book {
  \bookOutputSuffix "singlepage-tenor"
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
    \new ChoirStaff <<
                                %  Soprano staff
      \new Staff = soprano
      <<
        \magnifyStaff #4/7
        \new Voice { \repeat unfold \verses \RehearsalTrack }
        \new Voice { \repeat unfold \verses \TempoTrack }
        \new Voice { \global \keepWithTag #'v1 \soprano \keepWithTag #'v2 \soprano \bar "|." }
        \addlyrics { \tiny {\wordsSingleB } }
      >>
                                % Alto staff
      \new Staff = alto
      <<
        \magnifyStaff #4/7
        \new Voice { \global \keepWithTag #'v1 \alto \nl \keepWithTag #'v2 \alto \bar "|." }
        \addlyrics { \tiny { \wordsSingleB } }
      >>
                                % Tenor staff
      \new Staff = tenor
      <<
        \clef "treble_8"
        \new Voice { \global \keepWithTag #'v1 \tenor \keepWithTag #'v2 \tenor }
        \addlyrics { \wordsSingleB }
      >>
%    >>
                                % Bass staff
      \new Staff = bass
      <<
        \magnifyStaff #4/7
        \clef "bass"
        \new Voice { \global \keepWithTag #'v1 \bass \keepWithTag #'v2 \bass }
        \addlyrics { \tiny \wordsSingleB }
      >>
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

\book {
  \bookOutputSuffix "singlepage-bass"
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
    \new ChoirStaff <<
                                %  Soprano staff
      \new Staff = soprano
      <<
        \magnifyStaff #4/7
        \new Voice { \repeat unfold \verses \RehearsalTrack }
        \new Voice { \repeat unfold \verses \TempoTrack }
        \new Voice { \global \keepWithTag #'v1 \soprano \keepWithTag #'v2 \soprano \bar "|." }
        \addlyrics { \tiny \wordsSingleB }
      >>
                                % Alto staff
      \new Staff = alto
      <<
        \magnifyStaff #4/7
        \new Voice { \global \keepWithTag #'v1 \alto \nl \keepWithTag #'v2 \alto \bar "|." }
        \addlyrics { \tiny { \wordsSingleB } }
      >>
                                % Tenor staff
      \new Staff = tenor
      <<
        \magnifyStaff #4/7
        \clef "treble_8"
        \new Voice { \global \keepWithTag #'v1 \tenor \keepWithTag #'v2 \tenor }
        \addlyrics { \tiny { \wordsSingleB } }
      >>
%    >>
                                % Bass staff
      \new Staff = bass
      <<
        \clef "bass"
        \new Voice { \global \keepWithTag #'v1 \bass \keepWithTag #'v2 \bass }
        \addlyrics { \wordsSingleB }
      >>
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
