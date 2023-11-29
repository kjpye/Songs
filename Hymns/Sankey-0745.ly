\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Count your Blessings."
  subtitle    = "Sankey No. 745"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "E. O. Excell."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Oatman, Jr."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key ees \major
  \time 2/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s2*5
  \textMark \markup { \box \bold "B" } s2*5
  \textMark \markup { \box \bold "C" } s2*6
  \textMark \markup { \box \bold "D" } s2*5
  \textMark \markup { \box \bold "E" } s2*5
  \textMark \markup { \box \bold "F" } s2*6
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'8 8 8 aes | bes8 8 8 g | aes4 g | aes2 | f8 g aes bes |
  d8 c bes aes | g4 aes | bes2 | g8 8 8 aes | bes8 8 8 g |
  aes4 g | aes2 | f8 g aes bes | d c bes aes | g4 f | ees2 |
  \section \sectionLabel \markup\smallCaps "Chorus." \break
  bes'4. 8 | ees bes8 8 g | aes4 4 | 2 | 4. 8 |
  d8 c bes aes | g4 aes | bes2 | ees4. 8 | d c \partCombineApart r4 |
  \partCombineAutomatic d8 8 c c | bes2\fermata | ees8 8 d ees | d c bes aes | g4 f | ees2 |
  
}

alto = \relative {
  \autoBeamOff
  ees'8 8 8 f | g8 8 8 ees | f4 e | f2 | d8 ees f g |
  bes8 aes g f | ees4 f | g2 | ees8 8 8 f | g g g ees |
  f4 e | f2 | d8 ees f g | bes aes g f | ees4 d | ees2 \section |
  g4. 8 | 8 8 8 ees | f[ees] d[c] | bes2 | f'4. 8 |
  bes8 aes g f | ees4 f | g2 | 4. 8 | bes aes \tiny bes[aes] \normalsize |
  aes8 8 8 8 | 2\fermata | g8 8 8 8 | bes aes f f | ees4 d | ees2 |
}

tenor = \relative {
  \autoBeamOff
  bes8 8 8 8 | ees8 8 8 bes | 4 4 | 2 | 8 8 8 8 |
  bes8 8 8 8 | 4 4 | ees2 | bes8 8 8 8 | ees8 8 8 bes |
  bes4 4 | 2 | 8 8 8 8 | 8 8 8 8 | 4 aes | g2 \section |
  ees'8 8 8 8 | bes8 8 r4 | 8 8 8 8 | 2 | 8 8 8 8 |
  bes8 8 r4 | 8 8 8 8 | ees2 | bes8 8 8 ees | 8 8 \partCombineApart \tiny d[c] \normalsize |
  \partCombineAutomatic bes8 f' ees8 8 | d2\fermata | ees8 8 8 8 | 8 8 c c | bes4 aes | g2 |
}

bass = \relative {
  \autoBeamOff
  ees8 8 8 8 | 8 8 8 8 | bes4 4 | 2 | 8 8 8 8 |
  bes8 8 8 8 | ees4 4 | 2 | 8 8 8 8 | 8 8 8 8 |
  bes4 4 | 2 | 8 8 8 8 | 8 8 8 8 | 4 4 | ees2 \section |
  ees8 8 8 8 | 8 8 r4 | bes8 8 8 8 | 2 | 8 8 8 8 |
  bes8 8 r4 | ees8 8 8 8 | 2 | 8 8 8 8 | aes8 8 r4 |
  bes8 8 8 8 | 2\fermata | ees,8 8 8  8 | aes8 8 8 8 | bes4 bes, | ees2 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Count your bless -- ings, name them one by one;
  Count your bless -- ings, see what God has done!
  Count your bless -- ings, name them one by one;
  And it will sur -- prise you what the Lord has done.
}

chorusMen = \lyricmode {
  \tiny
  \repeat unfold 44 _
  Count your ma -- ny bless -- ings, name them one  -- by one;
  Count your ma -- ny bless -- ings, see what God has done!
  Count your ma -- ny bless -- ings, _
  _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  When up -- on life's bil -- lows you are tem -- pest toss'd,
  When you are dis -- cour -- aged think -- ing all is lost,
  Count your ma -- ny bless -- ings, name them one by one,
  And it will sur -- prise you what the Lord hath done.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Are you ev -- er bur -- den'd with a load of care?
  Does the cross see, hea -- vy you are call'd to bear?
  Count your ma -- ny bless -- ingsm ev -- 'ry doubt will fly.
  And you will keep sing -- ing as the days go by.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When you look at oth -- ers with their lands and gold,
  Think that Christ has prom -- ised you His wealth un -- told;
  Count your ma -- ny bless -- ingsm wealth can nev -- er buy
  Your re -- ward in hea -- ven, nor your name on high.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  So, a -- mid the con -- flict, whe -- ther great or small,
  Do not be dis -- hear -- ten'd, God is o -- ver all;
  Count your ma -- ny bless -- ings, an -- gels will at -- tend,
  Help and com -- fort give you to your jour -- ney's end.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "When " up "on " "life's " bil "lows " "you " "are " tem "pest " "toss'd, "
  "\nWhen " "you " "are " dis cour "aged " think "ing " "all " "is " "lost, "
  "\nCount " "your " ma "ny " bless "ings, " "name " "them " "one " "by " "one, "
  "\nAnd " "it " "will " sur "prise " "you " "what " "the " "Lord " "hath " "done. "
  "\nCount " "your " bless "ings, " "name " "them " "one " "by " "one; "
  "\nCount " "your " bless "ings, " "see " "what " "God " "has " "done! "
  "\nCount " "your " bless "ings, " "name " "them " "one " "by " "one; "
  "\nAnd " "it " "will " sur "prise " "you " "what " "the " "Lord " "has " "done.\n"

  \set stanza = "2."
  "\nAre " "you " ev "er " bur "den'd " "with " "a " "load " "of " "care? "
  "\nDoes " "the " "cross " "see, " hea "vy " "you " "are " "call'd " "to " "bear? "
  "\nCount " "your " ma "ny " bless "ingsm " ev "'ry " "doubt " "will " "fly. "
  "\nAnd " "you " "will " "keep " sing "ing " "as " "the " "days " "go " "by. "
  "\nCount " "your " bless "ings, " "name " "them " "one " "by " "one; "
  "\nCount " "your " bless "ings, " "see " "what " "God " "has " "done! "
  "\nCount " "your " bless "ings, " "name " "them " "one " "by " "one; "
  "\nAnd " "it " "will " sur "prise " "you " "what " "the " "Lord " "has " "done.\n"

  \set stanza = "3."
  "\nWhen " "you " "look " "at " oth "ers " "with " "their " "lands " "and " "gold, "
  "\nThink " "that " "Christ " "has " prom "ised " "you " "His " "wealth " un "told; "
  "\nCount " "your " ma "ny " bless "ingsm " "wealth " "can " nev "er " "buy "
  "\nYour " re "ward " "in " hea "ven, " "nor " "your " "name " "on " "high. "
  "\nCount " "your " bless "ings, " "name " "them " "one " "by " "one; "
  "\nCount " "your " bless "ings, " "see " "what " "God " "has " "done! "
  "\nCount " "your " bless "ings, " "name " "them " "one " "by " "one; "
  "\nAnd " "it " "will " sur "prise " "you " "what " "the " "Lord " "has " "done.\n"

  \set stanza = "4."
  "\nSo, " a "mid " "the " con "flict, " whe "ther " "great " "or " "small, "
  "\nDo " "not " "be " dis hear "ten'd, " "God " "is " o "ver " "all; "
  "\nCount " "your " ma "ny " bless "ings, " an "gels " "will " at "tend, "
  "\nHelp " "and " com "fort " "give " "you " "to " "your " jour "ney's " "end. "
  "\nCount " "your " bless "ings, " "name " "them " "one " "by " "one; "
  "\nCount " "your " bless "ings, " "see " "what " "God " "has " "done! "
  "\nCount " "your " bless "ings, " "name " "them " "one " "by " "one; "
  "\nAnd " "it " "will " sur "prise " "you " "what " "the " "Lord " "has " "done. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "When " up "on " "life's " bil "lows " "you " "are " tem "pest " "toss'd, "
  "\nWhen " "you " "are " dis cour "aged " think "ing " "all " "is " "lost, "
  "\nCount " "your " ma "ny " bless "ings, " "name " "them " "one " "by " "one, "
  "\nAnd " "it " "will " sur "prise " "you " "what " "the " "Lord " "hath " "done. "
  "\nCount " "your " ma "ny " bless "ings, " "name " "them " "one " "by " "one; "
  "\nCount " "your " ma "ny " bless "ings, " "see " "what " "God " "has " "done! "
  "\nCount " "your " ma "ny " bless "ings, " "" "name " "them " "one " "by " "one; "
  "\nAnd " "it " "will " sur "prise " "you " "what " "the " "Lord " "has " "done.\n"

  \set stanza = "2."
  "\nAre " "you " ev "er " bur "den'd " "with " "a " "load " "of " "care? "
  "\nDoes " "the " "cross " "see, " hea "vy " "you " "are " "call'd " "to " "bear? "
  "\nCount " "your " ma "ny " bless "ingsm " ev "'ry " "doubt " "will " "fly. "
  "\nAnd " "you " "will " "keep " sing "ing " "as " "the " "days " "go " "by. "
  "\nCount " "your " ma "ny " bless "ings, " "name " "them " "one " "by " "one; "
  "\nCount " "your " ma "ny " bless "ings, " "see " "what " "God " "has " "done! "
  "\nCount " "your " ma "ny " bless "ings, " "" "name " "them " "one " "by " "one; "
  "\nAnd " "it " "will " sur "prise " "you " "what " "the " "Lord " "has " "done.\n"

  \set stanza = "3."
  "\nWhen " "you " "look " "at " oth "ers " "with " "their " "lands " "and " "gold, "
  "\nThink " "that " "Christ " "has " prom "ised " "you " "His " "wealth " un "told; "
  "\nCount " "your " ma "ny " bless "ingsm " "wealth " "can " nev "er " "buy "
  "\nYour " re "ward " "in " hea "ven, " "nor " "your " "name " "on " "high. "
  "\nCount " "your " ma "ny " bless "ings, " "name " "them " "one " "by " "one; "
  "\nCount " "your " ma "ny " bless "ings, " "see " "what " "God " "has " "done! "
  "\nCount " "your " ma "ny " bless "ings, " "" "name " "them " "one " "by " "one; "
  "\nAnd " "it " "will " sur "prise " "you " "what " "the " "Lord " "has " "done.\n"

  \set stanza = "4."
  "\nSo, " a "mid " "the " con "flict, " whe "ther " "great " "or " "small, "
  "\nDo " "not " "be " dis hear "ten'd, " "God " "is " o "ver " "all; "
  "\nCount " "your " ma "ny " bless "ings, " an "gels " "will " at "tend, "
  "\nHelp " "and " com "fort " "give " "you " "to " "your " jour "ney's " "end. "
  "\nCount " "your " ma "ny " bless "ings, " "name " "them " "one " "by " "one; "
  "\nCount " "your " ma "ny " bless "ings, " "see " "what " "God " "has " "done! "
  "\nCount " "your " ma "ny " bless "ings, " "" "name " "them " "one " "by " "one; "
  "\nAnd " "it " "will " sur "prise " "you " "what " "the " "Lord " "has " "done. "
}

\book {
  \bookOutputSuffix "midi-women"
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
  \bookOutputSuffix "midi-men"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
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
