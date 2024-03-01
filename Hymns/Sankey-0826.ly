\version "2.25.13"

\include "../kjp.ly"
\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "My Father Knows."
  subtitle    = "Sankey No. 826"
  subsubtitle = "Sankey 880 No. 376"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. F. Root."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Mrs, Maxwell."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
  \textMark \markup { \box \bold "C" } s4 s2.*3 s2
  \textMark \markup { \box \bold "B" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

sopTwo = \relative {
  e'8. f16 | g4 c e8. d16 | c4 g a8 d | c2 b4 | c2
}

soprano = \relative {
  \autoBeamOff
  e'8. f16 | g4 c e8. d16 | c4 g e8. f16 | g4. a8 g e | d2 \bar "|" \break
  \sopTwo \bar "|" \break
  b'8. c16 | d4 4 e8. d16 | 4 b4 8. c16 | d4 g, b8. a16 | g4(f) \bar "|" \break
  \sopTwo
}

altoTwo = \relative {
  c'8. d16 | e4 g e8. 16 | e4 c f8 8 | e2 d4 | c2
}

alto = \relative {
  \autoBeamOff
  c'8. d16 | e4 4 g8. f16 | e4 4 c8. d16 | e4. f8 e c | b2
  \altoTwo
  g'8. fis16 | g4 4 8. 16 | 4 d g8. fis16 | g4 d4 8. c16 | b2
  \altoTwo
}

tenorTwo = \relative {
  c'8. b16 | c4 4 8. b16 | c4 4 a8 8 | g2 f4 | e2
}

tenor = \relative {
  \autoBeamOff
  c'8. b16 | c4 g c8. b16 | g4 4 8. 16 | 4. f8 g8 8 | 2
  \tenorTwo
  g8. a16 | b4 4 c8. b16 | 4 g4 8. a16 | b4 g4 8. fis16 | g2
  \tenorTwo
}

bassTwo = \relative {
  c8. 16 | 4 e g8. gis16 | a4 e f8 d | g2 g,4 | c2
}

bass = \relative {
  \autoBeamOff
  c8. 16 | 4 4 g8. 16 | c4 4 8. 16 | 4. 8 8 8 | g2
  \bassTwo
  g8. 16 | 4 4 8. 16 | 4 4 b8. a16 | g4 b d8. 16 | g,2
  \bassTwo
}

chorus = \lyricmode {
}

chorusMen = \lyricmode {
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  I'm a pil -- grim and a stran -- ger,
  Rough and thorn -- y is the road;
  Of -- ten in the midst of dan -- ger;
  But it leads to God;
  Clouds and dark -- ness oft dis -- tress me,
  Great and ma -- ny are my foes;
  An -- xious cares and thoughts op -- press me:
  But my Fa -- ther knows.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Oh, how sweet is this as -- sur -- ance,
  'Mid the con -- flict and the strife!
  Al -- though sor -- rows past en -- dur -- ance
  fol -- low me through life.
  Home in pro -- spect still can cheer me,
  Yes, and give me sweet re -- pose.
  While I feel his pre -- sence near me:
  For my Fa -- ther knows.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Yes, He sees and knows me dai -- ly,
  Watch -- es o -- ver me in love;
  Sends me help when foes as -- sail me—
  Bids me look a -- bove.
  Soon my hour -- ney will be end -- ed,
  Life is draw -- ing to a close;
  I shall then be well at -- tend -- ed:
  This my Fa -- ther knows.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  I shall then with joy be -- hold Him—
  Face to face my Fa -- ther see:
  Fall with rap -- ture and a -- dore Him,
  For His love to me.
  No -- thing more shall then dis -- tress me,
  In the land of sweet re -- pose:
  Je -- sus stands en -- gaged to bless me;
  This my Fa -- ther knows.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "I'm " "a " pil "grim " "and " "a " stran "ger, "
  "\nRough " "and " thorn "y " "is " "the " "road; "
  "\nOf" "ten " "in " "the " "midst " "of " dan "ger; "
  "\nBut " "it " "leads " "to " "God; "
  "\nClouds " "and " dark "ness " "oft " dis "tress " "me, "
  "\nGreat " "and " ma "ny " "are " "my " "foes; "
  "\nAn" "xious " "cares " "and " "thoughts " op "press " "me: "
  "\nBut " "my " Fa "ther " "knows.\n"

  \set stanza = "2."
  "\nOh, " "how " "sweet " "is " "this " as sur "ance, "
  "\n'Mid " "the " con "flict " "and " "the " "strife! "
  "\nAl" "though " sor "rows " "past " en dur "ance "
  "\nfol" "low " "me " "through " "life. "
  "\nHome " "in " pro "spect " "still " "can " "cheer " "me, "
  "\nYes, " "and " "give " "me " "sweet " re "pose. "
  "\nWhile " "I " "feel " "his " pre "sence " "near " "me: "
  "\nFor " "my " Fa "ther " "knows.\n"

  \set stanza = "3."
  "\nYes, " "He " "sees " "and " "knows " "me " dai "ly, "
  "\nWatch" "es " o "ver " "me " "in " "love; "
  "\nSends " "me " "help " "when " "foes " as "sail " "me— "
  "\nBids " "me " "look " a "bove. "
  "\nSoon " "my " hour "ney " "will " "be " end "ed, "
  "\nLife " "is " draw "ing " "to " "a " "close; "
  "\nI " "shall " "then " "be " "well " at tend "ed: "
  "\nThis " "my " Fa "ther " "knows.\n"

  \set stanza = "4."
  "\nI " "shall " "then " "with " "joy " be "hold " "Him— "
  "\nFace " "to " "face " "my " Fa "ther " "see: "
  "\nFall " "with " rap "ture " "and " a "dore " "Him, "
  "\nFor " "His " "love " "to " "me. "
  "\nNo" "thing " "more " "shall " "then " dis "tress " "me, "
  "\nIn " "the " "land " "of " "sweet " re "pose: "
  "\nJe" "sus " "stands " en "gaged " "to " "bless " "me; "
  "\nThis " "my " Fa "ther " "knows. "
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
