\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "God moves in a Mysterious Way."
  subtitle    = "Sankey No. 516"
  subsubtitle = "Sankey 880 No. 636"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Croft."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "W. Cowper."
  meter       = \markup\smallCaps "C. M."
  piece       = \markup\smallCaps "St. Ann."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 | e a g c | c b c g | c g a fis | g2. \bar "|" \break b4 |
  c4 a d b | c a b g | a c d b | c2.
}

alto = \relative {
  \autoBeamOff
  c'4 | 4. d8 e4 4 | d d e e | e e e d | d2. 4 |
  e c f d | e4. d8 b4 c | f e d d | e2.
}

tenor = \relative {
  \autoBeamOff
  e4 | g a8[b] c4 4 | a g g c | c b a a | b2. g4 |
  g4 a a g | g a gis g | f g a g | 2.
}

bass = \relative {
  \autoBeamOff
  c4 | c f e a | f g c, c | a e' c d | g,2. g'4 |
  c,4 f d g | c, f e e | d c f g | c,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 6

wordsOne = \lyricmode {
  \set stanza = "1."
  God moves in a my -- ster -- ious way
  His won -- ders to per -- form;
  He plants His foot -- steps in the sea,
  And rides up -- on the storm.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Deep in un -- fath -- om -- ab -- le mines
  Of ne -- ver -- fail -- ing skill,
  He trea -- sures up His bright de -- signs,
  And works His sov -- 'reign will.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Ye fear -- ful saints, fresh cou -- rage take!
  The clouds ye so much dread
  Are big with mer -- cy, and will break
  In bless -- ings on your head.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Judge not the Lord by fee -- ble sence,
  But trust Him for His grace;
  Be -- hind a frown -- ing pro -- vi -- dence
  He hides a smil -- ing face.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  His pur -- po -- ses will ri -- pen fast,
  Un -- fold -- ing ev -- 'ry hour;
  The bud may have a bit -- ter taste,
  But sweet will be the flower.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Blind un -- be -- lief is sure to err,
  And scan His work in vain;
  God is His own in-- ter -- pre -- ter,
  And He will make it plain.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "God " "moves " "in " "a " my ster "ious " "way "
  "\nHis " won "ders " "to " per "form; "
  "\nHe " "plants " "His " foot "steps " "in " "the " "sea, "
  "\nAnd " "rides " up "on " "the " "storm.\n"

  \set stanza = "2."
  "\nDeep " "in " un fath om ab "le " "mines "
  "\nOf " ne ver fail "ing " "skill, "
  "\nHe " trea "sures " "up " "His " "bright " de "signs, "
  "\nAnd " "works " "His " sov "'reign " "will.\n"

  \set stanza = "3."
  "\nYe " fear "ful " "saints, " "fresh " cou "rage " "take! "
  "\nThe " "clouds " "ye " "so " "much " "dread "
  "\nAre " "big " "with " mer "cy, " "and " "will " "break "
  "\nIn " bless "ings " "on " "your " "head.\n"

  \set stanza = "4."
  "\nJudge " "not " "the " "Lord " "by " fee "ble " "sence, "
  "\nBut " "trust " "Him " "for " "His " "grace; "
  "\nBe" "hind " "a " frown "ing " pro vi "dence "
  "\nHe " "hides " "a " smil "ing " "face.\n"

  \set stanza = "5."
  "\nHis " pur po "ses " "will " ri "pen " "fast, "
  "\nUn" fold "ing " ev "'ry " "hour; "
  "\nThe " "bud " "may " "have " "a " bit "ter " "taste, "
  "\nBut " "sweet " "will " "be " "the " "flower.\n"

  \set stanza = "6."
  "\nBlind " un be "lief " "is " "sure " "to " "err, "
  "\nAnd " "scan " "His " "work " "in " "vain; "
  "\nGod " "is " "His " "own " in ter pre "ter, "
  "\nAnd " "He " "will " "make " "it " "plain. "
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
            \new Lyrics \lyricsto "aligner"   \wordsSix
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
                                              \wordsFive  \chorus
                                              \wordsSix   \chorus
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
