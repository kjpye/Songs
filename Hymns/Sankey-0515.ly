\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "When all Thy Mercies."
  subtitle    = "Sankey No. 515"
  subsubtitle = "Sankey 880 No. 652"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Dr. Croft."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Addison."
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
  When all Thy mer -- cies, O my God,
  My ris -- ing soul sur -- veys,
  Trans -- port -- ed with the view, I'm lost
  In won -- der, love and praise.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Un -- num -- bered com -- forts on my soul
  Thy ten -- der care be -- stowed,
  Be -- fore my in -- fant heart con -- ceived
  From whom these com -- forts flowed.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  When worn with sick -- ness, oft hast Thou
  With health re -- newed my face;
  And when in sins and sor -- rows sunk,
  Re -- vived my soul with grace.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Ten thou -- sand thou -- sand pre -- cious gifts
  My dai -- ly thanks em -- ploy;
  Nor is the least a cheer -- ful heart
  That tastes those gifts with joy.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Through ev -- 'ry per -- iod of my life
  Thy good -- ness I;ll pur -- sue;
  And af -- ter death, in dis -- tant worlds,
  The glo -- rious theme re -- new.
}
  
wordsSix = \lyricmode {
  \set stanza = "6."
  Through all e -- ter -- ni -- ty to Thee
  A joy -- ful song I'll raise;
  But oh, e -- ter -- ni -- ty's too short
  To ut -- ter all Thy praise!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "When " "all " "Thy " mer "cies, " "O " "my " "God, "
  "\nMy " ris "ing " "soul " sur "veys, "
  "\nTrans" port "ed " "with " "the " "view, " "I'm " "lost "
  "\nIn " won "der, " "love " "and " "praise.\n"

  \set stanza = "2."
  "\nUn" num "bered " com "forts " "on " "my " "soul "
  "\nThy " ten "der " "care " be "stowed, "
  "\nBe" "fore " "my " in "fant " "heart " con "ceived "
  "\nFrom " "whom " "these " com "forts " "flowed.\n"

  \set stanza = "3."
  "\nWhen " "worn " "with " sick "ness, " "oft " "hast " "Thou "
  "\nWith " "health " re "newed " "my " "face; "
  "\nAnd " "when " "in " "sins " "and " sor "rows " "sunk, "
  "\nRe" "vived " "my " "soul " "with " "grace.\n"

  \set stanza = "4."
  "\nTen " thou "sand " thou "sand " pre "cious " "gifts "
  "\nMy " dai "ly " "thanks " em "ploy; "
  "\nNor " "is " "the " "least " "a " cheer "ful " "heart "
  "\nThat " "tastes " "those " "gifts " "with " "joy.\n"

  \set stanza = "5."
  "\nThrough " ev "'ry " per "iod " "of " "my " "life "
  "\nThy " good "ness " "I;ll " pur "sue; "
  "\nAnd " af "ter " "death, " "in " dis "tant " "worlds, "
  "\nThe " glo "rious " "theme " re "new.\n"

  \set stanza = "6."
  "\nThrough " "all " e ter ni "ty " "to " "Thee "
  "\nA " joy "ful " "song " "I'll " "raise; "
  "\nBut " "oh, " e ter ni "ty's " "too " "short "
  "\nTo " ut "ter " "all " "Thy " "praise! "
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
