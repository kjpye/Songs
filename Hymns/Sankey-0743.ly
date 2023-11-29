\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "God Holds the Key."
  subtitle    = "Sankey No. 743"
  subsubtitle = "Sankey 880 No. 592"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "J. Parker."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key aes \major
  \time 6/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1.*3 s2. s2
  \textMark \markup { \box \bold "B" } s4 s1.*3
  \textMark \markup { \box \bold "C" }    s1.*4 s2. s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  c''4 | 2 4 bes(aes) f | ees2 d4 ees2 aes4 | 2. g | bes2.~2 \bar "|" \break
  des4 | 2 4 4(c) bes | aes2 bes4 c2 ees4 | 2 4 4(des) c |
  bes2 c4 des2 f,4 | aes2. bes | aes2.~2 ees4 | f2. ees | 2.~2
  
}

alto = \relative {
  \autoBeamOff
  ees'4 | 2 4 f2 des4 | c2 b4 c2 ees4 | 2. 2. | des2.~2
  ees4 | 2 4 2 4 | 2 4 2 aes4 | 2 4 ees2 4 |
  ees2 ges4 f2 des4 | c2. des | c2.~2 4 | des2. 2. | c2.~2
}

tenor = \relative {
  \autoBeamOff
  aes4 | 2 4 2 4 | 2 4 2 c4 | 2. bes | g2.~2
  bes4 | 2 4 4(ees) 4 | 2 4 2 c4 | 2 4 4(bes) aes |
  g2 aes4 2 4 | 2. g | aes2.~2 4 | 2. g | aes2.~2
}

bass = \relative {
  \autoBeamOff
  aes,4 | 2 4 des2 4 | aes2 4 2 4 | ees'2. 2. | 2.~2
  ees4 | 2 4 2 des4 | c2 ees4 aes2 4 | 2 4 2 4 |
  ees2 aes,4 des2 4 | ees2. 2. | aes,2.~2 4 | des2. ees | aes,2.~2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  God holds the key of all un -- known,
  And I am glad;
  If o -- ther hands should hold the key,
  Or if He trust -- ed it to me,
  I might be sad,
  I might be sad.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  What if to -- mor -- row's cares were here'
  With -- out its rest!
  I'd rath -- er He un -- locked the day;
  And, as the hours swing o -- pen, say
  “My will is best,”
  “My will is best.”
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  The ve -- ry dim -- ness of my sight
  Makes me se -- cure;
  For, gro -- ping in my mis -- ty way,
  I feel His hand; I hear Him say,
  “My help is sure,”
  “My help is sure.”
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I can -- not read His fu -- ture plans;
  But this I know:
  I have the smil -- ing of His face,
  And all the re -- fuge of His grace,
  While here be -- low,
  While here be -- low.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  E -- nough! this co -- vers all my wants,
  And so I rest!
  For what I can -- not, He can see,
  And in His care I saved shall be,
  For ev -- er blest,
  For ev -- er blest.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "God " "holds " "the " "key " "of " "all " un "known, "
  "\nAnd " "I " "am " "glad; "
  "\nIf " o "ther " "hands " "should " "hold " "the " "key, "
  "\nOr " "if " "He " trust "ed " "it " "to " "me, "
  "\nI " "might " "be " "sad, "
  "\nI " "might " "be " "sad.\n"

  \set stanza = "2."
  "\nWhat " "if " to mor "row's " "cares " "were " "here' "
  "\nWith" "out " "its " "rest! "
  "\nI'd " rath "er " "He " un "locked " "the " "day; "
  "\nAnd, " "as " "the " "hours " "swing " o "pen, " "say "
  "\n“My " "will " "is " "best,” "
  "\n“My " "will " "is " "best.”\n"

  \set stanza = "3."
  "\nThe " ve "ry " dim "ness " "of " "my " "sight "
  "\nMakes " "me " se "cure; "
  "\nFor, " gro "ping " "in " "my " mis "ty " "way, "
  "\nI " "feel " "His " "hand; " "I " "hear " "Him " "say, "
  "\n“My " "help " "is " "sure,” "
  "\n“My " "help " "is " "sure.”\n"

  \set stanza = "4."
  "\nI " can "not " "read " "His " fu "ture " "plans; "
  "\nBut " "this " "I " "know: "
  "\nI " "have " "the " smil "ing " "of " "His " "face, "
  "\nAnd " "all " "the " re "fuge " "of " "His " "grace, "
  "\nWhile " "here " be "low, "
  "\nWhile " "here " be "low.\n"

  \set stanza = "5."
  "\nE" "nough! " "this " co "vers " "all " "my " "wants, "
  "\nAnd " "so " "I " "rest! "
  "\nFor " "what " "I " can "not, " "He " "can " "see, "
  "\nAnd " "in " "His " "care " "I " "saved " "shall " "be, "
  "\nFor " ev "er " "blest, "
  "\nFor " ev "er " "blest. "
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
