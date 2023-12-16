\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Go and Work!"
  subtitle    = "Sankey No. 748"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "I. Allan Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Frances Hope."
  meter       = \markup\smallCaps "7s."
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
  \textMark \markup { \box \bold "C" } s4 s1*2 s2 s8.
  \textMark \markup { \box \bold "D" } s16 s4 s1*2
  \textMark \markup { \box \bold "E" } s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff \time 3/4 \partial 4
  e'8. f16 | g4. 8 b8. a16 | g4(e) a8. 16 | g4. e8 f8. e16 | d2 \bar "|" \break
  e8. f16 | g4. 8 b8. a16 | c4(g) a8. 16 | g4. c8 8. b16 | c2
  \section \sectionLabel \markup\smallCaps "Chorus." \time 4/4 \partial 4 \break
  g8. c16 | b2~8. g16 b8. d16 | c2~4 g8. 16 | a2~8. \bar "|" \break
  a16 b8. c16 | b2~4 8. d16 | c2~8 g f8. e16 |
  a2~4\fermata 8. 16 | g4 c c b | c2~4\fermata
}

alto = \relative {
  \autoBeamOff
  c'8. d16 | e4. 8 dis8. 16 | e4(c) 8. 16 | 4. 8 d8. c16 | b2
  c8. d16 | e4. 8 dis8. 16 | e4(g) f8. dis16 | e4. g8 f8. 16 | e2 \section
  e8. 16 | f4 8. 16 8. 16 8. 16 | e8 8 f8. 16 e4 8. 16 | f4 8. 16 ees8.
  ees16 8. 16 | d8 f8 8. 16 4 d8. f16 | e4 8. 16 8 8 d8. cis16 |
  d8. f16 8. 16 dis4\fermata 8. 16 | e4 g f f | e8 8 f8. 16 e4\fermata
}

tenor = \relative {
  \autoBeamOff
  g8. 16 | c4. g8 fis8. 16 | g2 f8. a16 | c4. g8 8. 16 | 2
  g8. 16 | c4. g8 fis8. 16 | g4(c) 8. 16 | 4. 8 a8. g16 | 2 \section
  r4 | r d'8. 16 8. b16 d8. b16 | c8 g a8. 16 g4 c8. 16 | 4 8. 16 8.
  c16 b8. a16 | g8 d'8 8. 16 4 r | r g,8. 16 8 bes8 a8. 16 |
  a8. d16 8. 16 c4\fermata 8. 16 | 4 4 a g | 8 8 a8. aes16 g4\fermata
}

bass = \relative {
  \autoBeamOff
  c8. 16 | 4. 8 8. 16 | c2 f8. 16 | e4. c8 b8. c16 | g2
  c8. 16 | 4. 8 8. 16 | c4(e) f8. fis16 | g4. e8 d8. g16 | c,2 \section
  r4 | r g'8. 16 8. 16 8. 16 | c,2~4 8. 16 | f4 8. 16 fis8.
  fis16 8. 16 | g2~4 r | r c,8. 16 8 cis d8. 16 |
  f8. 16 8. 16 fis4\fermata 8. 16 | g4 e d g | c,2~4\fermata
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Go and work! __ this hour be -- gin; __
  Go and seek __ the lost to win; __
  From the dark __ a -- bodes of sin, __
  To the feast, oh, bring them in! __
}

chorusMen = \lyricmode {
  \repeat unfold 28 \skip1
  Go and work! "" "" "" ""
  this hour be -- gin; "" "" ""
  Go and seek "" "" "" "" the lost to win;
  From the dark "" "" "" "" a -- bodes of sin,
  "" "" "" "" "" "" "" oh, bring them in!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Chris -- tians, wake, no long -- er sleep;
  Shall we rest while o -- thers weep?
  Shall we sit with fold -- ed hands
  When the Lord Him -- self com -- mands?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Do we love the Sa -- viour's name?
  Can our faith His pro -- mise claim?
  Have we pledged to Him our all?
  Shall we not o -- bey His call?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Do we trust Him as we ought?
  Do we live as He has taught?
  Are we His, and His a -- lone?
  Let our faith by works be shown.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  There's a cross that we must bear
  If the crown we hope to wear:
  On -- ward, then, with vi -- gour new;
  Time is short, the days are few.
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "Chris" "tians, " "wake, " "no " long "er " "sleep; "
  "\nShall " "we " "rest " "while " o "thers " "weep? "
  "\nShall " "we " "sit " "with " fold "ed " "hands "
  "\nWhen " "the " "Lord " Him "self " com "mands? "
  "\nGo " "and " "work! "  "this " "hour " be "gin; " 
  "\nGo " "and " "seek "  "the " "lost " "to " "win; " 
  "\nFrom " "the " "dark "  a "bodes " "of " "sin, " 
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in!\n" 

  \set stanza = "2."
  "\nDo " "we " "love " "the " Sa "viour's " "name? "
  "\nCan " "our " "faith " "His " pro "mise " "claim? "
  "\nHave " "we " "pledged " "to " "Him " "our " "all? "
  "\nShall " "we " "not " o "bey " "His " "call? "
  "\nGo " "and " "work! "  "this " "hour " be "gin; " 
  "\nGo " "and " "seek "  "the " "lost " "to " "win; " 
  "\nFrom " "the " "dark "  a "bodes " "of " "sin, " 
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in!\n" 

  \set stanza = "3."
  "\nDo " "we " "trust " "Him " "as " "we " "ought? "
  "\nDo " "we " "live " "as " "He " "has " "taught? "
  "\nAre " "we " "His, " "and " "His " a "lone? "
  "\nLet " "our " "faith " "by " "works " "be " "shown. "
  "\nGo " "and " "work! "  "this " "hour " be "gin; " 
  "\nGo " "and " "seek "  "the " "lost " "to " "win; " 
  "\nFrom " "the " "dark "  a "bodes " "of " "sin, " 
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in!\n" 

  \set stanza = "4."
  "\nThere's " "a " "cross " "that " "we " "must " "bear "
  "\nIf " "the " "crown " "we " "hope " "to " "wear: "
  "\nOn" "ward, " "then, " "with " vi "gour " "new; "
  "\nTime " "is " "short, " "the " "days " "are " "few. "
  "\nGo " "and " "work! "  "this " "hour " be "gin; " 
  "\nGo " "and " "seek "  "the " "lost " "to " "win; " 
  "\nFrom " "the " "dark "  a "bodes " "of " "sin, " 
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in! " 
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "Chris" "tians, " "wake, " "no " long "er " "sleep; "
  "\nShall " "we " "rest " "while " o "thers " "weep? "
  "\nShall " "we " "sit " "with " fold "ed " "hands "
  "\nWhen " "the " "Lord " Him "self " com "mands? "
  "\nGo " "and " "work! " "Go " "and " "work! "
  "\nthis " "hour " be "gin, " "this " "hour " be "gin; "
  "\nGo " "and " "seek, " "Go " "and " "seek "
  "\nthe " "lost " "to " "win, " "the " "lost " "to " "win; "
  "\nFrom " "the " "dark, " "from " "the " "dark "
  "\na" "bodes " "of " "sin, " a "bodes " "of " "sin, "
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in, " "oh, " "bring " "them " "in!\n"

  \set stanza = "2."
  "\nDo " "we " "love " "the " Sa "viour's " "name? "
  "\nCan " "our " "faith " "His " pro "mise " "claim? "
  "\nHave " "we " "pledged " "to " "Him " "our " "all? "
  "\nShall " "we " "not " o "bey " "His " "call? "
  "\nGo " "and " "work! " "Go " "and " "work! "
  "\nthis " "hour " be "gin, " "this " "hour " be "gin; "
  "\nGo " "and " "seek, " "Go " "and " "seek "
  "\nthe " "lost " "to " "win, " "the " "lost " "to " "win; "
  "\nFrom " "the " "dark, " "from " "the " "dark "
  "\na" "bodes " "of " "sin, " a "bodes " "of " "sin, "
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in, " "oh, " "bring " "them " "in!\n"

  \set stanza = "3."
  "\nDo " "we " "trust " "Him " "as " "we " "ought? "
  "\nDo " "we " "live " "as " "He " "has " "taught? "
  "\nAre " "we " "His, " "and " "His " a "lone? "
  "\nLet " "our " "faith " "by " "works " "be " "shown. "
  "\nGo " "and " "work! " "Go " "and " "work! "
  "\nthis " "hour " be "gin, " "this " "hour " be "gin; "
  "\nGo " "and " "seek, " "Go " "and " "seek "
  "\nthe " "lost " "to " "win, " "the " "lost " "to " "win; "
  "\nFrom " "the " "dark, " "from " "the " "dark "
  "\na" "bodes " "of " "sin, " a "bodes " "of " "sin, "
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in, " "oh, " "bring " "them " "in!\n"

  \set stanza = "4."
  "\nThere's " "a " "cross " "that " "we " "must " "bear "
  "\nIf " "the " "crown " "we " "hope " "to " "wear: "
  "\nOn" "ward, " "then, " "with " vi "gour " "new; "
  "\nTime " "is " "short, " "the " "days " "are " "few. "
  "\nGo " "and " "work! " "Go " "and " "work! "
  "\nthis " "hour " be "gin, " "this " "hour " be "gin; "
  "\nGo " "and " "seek, " "Go " "and " "seek "
  "\nthe " "lost " "to " "win, " "the " "lost " "to " "win; "
  "\nFrom " "the " "dark, " "from " "the " "dark "
  "\na" "bodes " "of " "sin, " a "bodes " "of " "sin, "
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in, " "oh, " "bring " "them " "in! "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Chris" "tians, " "wake, " "no " long "er " "sleep; "
  "\nShall " "we " "rest " "while " o "thers " "weep? "
  "\nShall " "we " "sit " "with " fold "ed " "hands "
  "\nWhen " "the " "Lord " Him "self " com "mands? "
  "\nGo " "and " "work! "
  "\nthis " "hour " be "gin, " "this " "hour " be "gin; "
  "\nGo " "and " "seek, " "go " "and " "seek "
  "\nthe " "lost " "to " "win, " "the " "lost " "to " "win; "
  "\nFrom " "the " "dark "  a "bodes " "of " "sin, " a "bodes " "of " "sin, "
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in, " "oh, " "bring " "them " "in!\n"

  \set stanza = "2."
  "\nDo " "we " "love " "the " Sa "viour's " "name? "
  "\nCan " "our " "faith " "His " pro "mise " "claim? "
  "\nHave " "we " "pledged " "to " "Him " "our " "all? "
  "\nShall " "we " "not " o "bey " "His " "call? "
  "\nGo " "and " "work! "
  "\nthis " "hour " be "gin, " "this " "hour " be "gin; "
  "\nGo " "and " "seek, " "go " "and " "seek "
  "\nthe " "lost " "to " "win, " "the " "lost " "to " "win; "
  "\nFrom " "the " "dark "  a "bodes " "of " "sin, " a "bodes " "of " "sin, "
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in, " "oh, " "bring " "them " "in!\n"

  \set stanza = "3."
  "\nDo " "we " "trust " "Him " "as " "we " "ought? "
  "\nDo " "we " "live " "as " "He " "has " "taught? "
  "\nAre " "we " "His, " "and " "His " a "lone? "
  "\nLet " "our " "faith " "by " "works " "be " "shown. "
  "\nGo " "and " "work! "
  "\nthis " "hour " be "gin, " "this " "hour " be "gin; "
  "\nGo " "and " "seek, " "go " "and " "seek "
  "\nthe " "lost " "to " "win, " "the " "lost " "to " "win; "
  "\nFrom " "the " "dark "  a "bodes " "of " "sin, " a "bodes " "of " "sin, "
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in, " "oh, " "bring " "them " "in!\n"

  \set stanza = "4."
  "\nThere's " "a " "cross " "that " "we " "must " "bear "
  "\nIf " "the " "crown " "we " "hope " "to " "wear: "
  "\nOn" "ward, " "then, " "with " vi "gour " "new; "
  "\nTime " "is " "short, " "the " "days " "are " "few. "
  "\nGo " "and " "work! "
  "\nthis " "hour " be "gin, " "this " "hour " be "gin; "
  "\nGo " "and " "seek, " "go " "and " "seek "
  "\nthe " "lost " "to " "win, " "the " "lost " "to " "win; "
  "\nFrom " "the " "dark "  a "bodes " "of " "sin, " a "bodes " "of " "sin, "
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in, " "oh, " "bring " "them " "in! "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Chris" "tians, " "wake, " "no " long "er " "sleep; "
  "\nShall " "we " "rest " "while " o "thers " "weep? "
  "\nShall " "we " "sit " "with " fold "ed " "hands "
  "\nWhen " "the " "Lord " Him "self " com "mands? "
  "\nGo " "and " "work! "
  "\nthis " "hour " be "gin; "
  "\nGo " "and " "seek, " "go " "and " "seek "
  "\nthe " "lost " "to " "win; "
  "\nFrom " "the " "dark "
  "\na" "bodes " "of " "sin, " a "bodes " "of " "sin, "
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in!\n"

  \set stanza = "2."
  "\nDo " "we " "love " "the " Sa "viour's " "name? "
  "\nCan " "our " "faith " "His " pro "mise " "claim? "
  "\nHave " "we " "pledged " "to " "Him " "our " "all? "
  "\nShall " "we " "not " o "bey " "His " "call? "
  "\nGo " "and " "work! "
  "\nthis " "hour " be "gin; "
  "\nGo " "and " "seek, " "go " "and " "seek "
  "\nthe " "lost " "to " "win; "
  "\nFrom " "the " "dark "
  "\na" "bodes " "of " "sin, " a "bodes " "of " "sin, "
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in!\n"

  \set stanza = "3."
  "\nDo " "we " "trust " "Him " "as " "we " "ought? "
  "\nDo " "we " "live " "as " "He " "has " "taught? "
  "\nAre " "we " "His, " "and " "His " a "lone? "
  "\nLet " "our " "faith " "by " "works " "be " "shown. "
  "\nGo " "and " "work! "
  "\nthis " "hour " be "gin; "
  "\nGo " "and " "seek, " "go " "and " "seek "
  "\nthe " "lost " "to " "win; "
  "\nFrom " "the " "dark "
  "\na" "bodes " "of " "sin, " a "bodes " "of " "sin, "
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in!\n"

  \set stanza = "4."
  "\nThere's " "a " "cross " "that " "we " "must " "bear "
  "\nIf " "the " "crown " "we " "hope " "to " "wear: "
  "\nOn" "ward, " "then, " "with " vi "gour " "new; "
  "\nTime " "is " "short, " "the " "days " "are " "few. "
  "\nGo " "and " "work! "
  "\nthis " "hour " be "gin; "
  "\nGo " "and " "seek, " "go " "and " "seek "
  "\nthe " "lost " "to " "win; "
  "\nFrom " "the " "dark "
  "\na" "bodes " "of " "sin, " a "bodes " "of " "sin, "
  "\nTo " "the " "feast, " "oh, " "bring " "them " "in! "
}

\book {
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
            \addlyrics \wordsMidiSop
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
  \bookOutputSuffix "midi-alto"
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
            \addlyrics \wordsMidiAlto
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
  \bookOutputSuffix "midi-tenor"
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
            \addlyrics \wordsMidiTenor
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
  \bookOutputSuffix "midi-bass"
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
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \repeat unfold \verses \bass }
            \addlyrics \wordsMidiBass
          >>
        >>
    \midi {}
  }
}

#(set-global-staff-size 18)

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
