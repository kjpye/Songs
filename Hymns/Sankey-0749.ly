\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Where are the Reapers?"
  subtitle    = "Sankey No. 749"
  subsubtitle = "Sankey 880 No. 199"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. F. Root."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "E. E. Rexford."
  meter       = \markup\smallCaps "10s."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key g \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3
  \textMark \markup { \box \bold "B" }    s1*3
  \textMark \markup { \box \bold "C" }    s1*3
  \textMark \markup { \box \bold "D" }    s1*3
  \textMark \markup { \box \bold "E" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 | g4 8. 16 4 a8. b16 | d,4 e d r8 g | a4 8. 16 4 b8. a16 |
  g4 e g r8 g | b4 8. 16 4 8. 16 | c4 c c r8 c |
  d4 8. 16 4 c8. a16 | g4 fis g r
  \section \sectionLabel \markup\smallCaps Chorus.
  d'4 8. 16 8 8 r d, |
  d4 fis g r8 g | a4 8. 16 8 g b8. g16 |a4 4 4 r8 8 |
  b4 4 8 8 r b | c4 4 4 r8 c | d4 4 4 c8. a16 | g4 fis g
}

alto = \relative {
  \autoBeamOff
  d'4 | b4 8. 16 4 c8. d16 | b4 c b r8 b | d4 8. 16 4 8. c16 |
  b4 c b r8 b | d4 8. 16 4 8. 16 | e4 4 4 r8 e |
  d4 8. 16 g4 e8. 16 | d4 c b r \section | d4 8. 16 8 8 r d |
  d4 fis g r8 g | a4 8. 16 8 g b8. g16 | f4 4 4 r8 d |
  d4 4 8 8 r d | e4 4 4 r8 e | d4 d g e8. 16 | d4 c b
}

tenor = \relative {
  \autoBeamOff
  d4 | g4 8. 16 4 8. 16 | 4 4 4 r8 g | fis4 8. 16 4 8. 16 |
  g4 4 4 r8 g | 4 8. 16 4 8. 16 | 4 4 4 r8 g |
  g4 8. 16 4 a8. c16 | b4 a g r \section | d'4 8. 16 8 8 r d |
  d4 d d r8 d | 4 8. 16 8 8 8. 16 | 4 4 4 r8 fis, |
  g4 4 8 8 r g | 4 4 4 r8 g | 4 4 4 a8. c16 | b4 a g
}

bass = \relative {
  \autoBeamOff
  d4 | g4 8. 16 4 8. 16 | 4 4 4 r8 g | d4 8. 16 4 8. 16 |
  g,4 c g r8 g | g'4 8. 16 4 8. 16 | c,4 4 4 r8 c |
  b4 8. 16 4 c8. 16 | d4 d g, r \section | d'4 8. 16 8 8 r d |
  b4 d g r8 g | fis4 8. 16 g8 8 8. 16 | d4 d d r8 d |
  g4 4 8 8 r g | c,4 4 4 r8 c | b4 4 4 c8. 16 | d4 d g,
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Where are the reap -- ers? Oh, who will come
  And share in the glo -- ry of the “har -- vest home”?
  Oh, who will help us to gar -- ner in
  The sheaves of good from the fields of sin?
  
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Oh, where are the reap -- ers that gar -- ner in
  The sheaves of the good from the fields of sin?
  With sic -- kles of truth must the work be done,
  And no one may rest till the “har -- vest home.”
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Go out in the by -- ways and search them all,
  The wheat may be there, tho' the weeds are tall;
  Then search in the high -- way, and pass none by,
  But ga -- ther from all for the home on high.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The fields all are rip -- 'ning, and far and wide
  The world now is wait -- ing the har -- vest -- tide;
  But reap -- ers are few, and the work is great,
  And much will be lost should the har -- vest wait.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  So come with your sic -- kles, ye sons of men,
  And ga -- ther to -- ge -- ther the gold -- en grain;
  Toil on till the Lord of the har -- vest come,
  Then share in the joy of the “har -- vest home.”
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Oh, " "where " "are " "the " reap "ers " "that " gar "ner " "in "
  "\nThe " "sheaves " "of " "the " "good " "from " "the " "fields " "of " "sin? "
  "\nWith " sic "kles " "of " "truth " "must " "the " "work " "be " "done, "
  "\nAnd " "no " "one " "may " "rest " "till " "the " “har "vest " "home.” "
  "\nWhere " "are " "the " reap "ers? " "Oh, " "who " "will " "come "
  "\nAnd " "share " "in " "the " glo "ry " "of " "the " “har "vest " "home”? "
  "\nOh, " "who " "will " "help " "us " "to " gar "ner " "in "
  "\nThe " "sheaves " "of " "good " "from " "the " "fields " "of " "sin?\n"

  \set stanza = "2."
  "\nGo " "out " "in " "the " by "ways " "and " "search " "them " "all, "
  "\nThe " "wheat " "may " "be " "there, " "tho' " "the " "weeds " "are " "tall; "
  "\nThen " "search " "in " "the " high "way, " "and " "pass " "none " "by, "
  "\nBut " ga "ther " "from " "all " "for " "the " "home " "on " "high. "
  "\nWhere " "are " "the " reap "ers? " "Oh, " "who " "will " "come "
  "\nAnd " "share " "in " "the " glo "ry " "of " "the " “har "vest " "home”? "
  "\nOh, " "who " "will " "help " "us " "to " gar "ner " "in "
  "\nThe " "sheaves " "of " "good " "from " "the " "fields " "of " "sin?\n"

  \set stanza = "3."
  "\nThe " "fields " "all " "are " rip "'ning, " "and " "far " "and " "wide "
  "\nThe " "world " "now " "is " wait "ing " "the " har vest "tide; "
  "\nBut " reap "ers " "are " "few, " "and " "the " "work " "is " "great, "
  "\nAnd " "much " "will " "be " "lost " "should " "the " har "vest " "wait. "
  "\nWhere " "are " "the " reap "ers? " "Oh, " "who " "will " "come "
  "\nAnd " "share " "in " "the " glo "ry " "of " "the " “har "vest " "home”? "
  "\nOh, " "who " "will " "help " "us " "to " gar "ner " "in "
  "\nThe " "sheaves " "of " "good " "from " "the " "fields " "of " "sin?\n"

  \set stanza = "4."
  "\nSo " "come " "with " "your " sic "kles, " "ye " "sons " "of " "men, "
  "\nAnd " ga "ther " to ge "ther " "the " gold "en " "grain; "
  "\nToil " "on " "till " "the " "Lord " "of " "the " har "vest " "come, "
  "\nThen " "share " "in " "the " "joy " "of " "the " “har "vest " "home.” "
  "\nWhere " "are " "the " reap "ers? " "Oh, " "who " "will " "come "
  "\nAnd " "share " "in " "the " glo "ry " "of " "the " “har "vest " "home”? "
  "\nOh, " "who " "will " "help " "us " "to " gar "ner " "in "
  "\nThe " "sheaves " "of " "good " "from " "the " "fields " "of " "sin? "
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

#(set-global-staff-size 19)

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
