\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Rejoice, ye Saints!"
  subtitle    = "Sankey No. 654"
  subsubtitle = "N. H. No. 92"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. H. Burke."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "C. Russell Hurditch."
  meter       = \markup\smallCaps "C. M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key c \major
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

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 | e g c4. e,8 | f4 a g c | b4. g8 f4 d | e2. \bar "|" \break
  g4 | e g c4. e,8 | f4 a g c | b4. g8 a4 b | c2.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  g4 | c2. a4 | d4 8. 16 4 c | b a8. 16 g4(f) | e g2 \bar "|" \break
  g4 | c2. a4 | d4 8. 16 4 c8 8 | b4 a g4. b8 | c2.
}

alto = \relative {
  \autoBeamOff
  e'4 | c e e4. c8 | 4 f e e | f4. 8 d4 b | c2.
  e4 | c e4 4. c8 | 4 f e e | f4. 8 4 4 | e2. \section
  e4 | 4 8. 16 4 g | fis4 8. 16 4 4 | f4 8. 16 4(d) | c e2
  e4 | 4 8. 16 4 g | fis4 8. 16 4 8 8 | f4 4 4. 8 | e2.
}

tenor = \relative {
  \autoBeamOff
  g4 | g g g4. 8 | a4 c c g | 4. 8 4 4 | 2.
  g4 | 4 4 4. 8 | a4 c c g | 4. 8 4 4 | 2. \section
  g4 | g c8. 16 4 cis | d a8. 16 4 d | d c8. 16 b4(g) | g c2
  c4 | g c8. 16 4 cis | d a8. 16 4 d8 8 | 4 c b4. d8 | c2.
}

bass = \relative {
  \autoBeamOff
  c4 | 4 4 4. 8 | f4 f c c | g4. 8 4 4 | c2.
  c4 | 4 4 4. 8 | f4 f c c | g4. 8 4 4 | c2. \section
  c4 | 4 8. 16 4 e | d4 8. 16 4 4 | g4 8. 16 2 | c,4 2 |
  c4 | 4 8. 16 4 e | d4 8. 16 4 8 8 | g4 4 4. 8 | c,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Re" -- joice! Re -- joice in the Lord!
  Re -- joice in the Lord al -- way;
  Re -- joice! Re -- joiec in the Lord!
  and a -- gain I say, Re -- "joice!\""
}

chorusMen = \lyricmode {
  \small
  \repeat unfold 28 _
  _ _ in the Lord! _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ in the Lord! _ _ _ _ _
  _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Re -- joice! re -- joice! ye saints, re -- joice!
  Re -- joice with one ac -- cord;
  Re -- joice, with all your heart and voice,
  In Christ, "th' ex" -- alt -- ed Lord.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Re -- joice! re -- joice! lift up your head,
  And praise the liv -- ing God.
  That for your souls the Sa -- viour shed
  His own most pre -- cious blood.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Re -- joice! re -- joice! let praise a -- bound
  Be -- fore Je -- ho -- vah's throne,
  For dead ones raised, and lost ones found,
  And pro -- di -- gals brought home.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Re -- joice! re -- joice! the Lord will come,
  Ac -- cord -- ing to His word;
  And gath -- er all His ran -- somed home,
  "\"For" ev -- er with the "Lord.\""
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Re" "joice! " re "joice! " "ye " "saints, " re "joice! "
  "\nRe" "joice " "with " "one " ac "cord; "
  "\nRe" "joice, " "with " "all " "your " "heart " "and " "voice, "
  "\nIn " "Christ, " "th' ex" alt "ed " "Lord. "
  "\n\"Re" "joice! " Re "joice " "in " "the " "Lord! "
  "\nRe" "joice " "in " "the " "Lord " al "way; "
  "\nRe" "joice! " Re "joice " "in " "the " "Lord! "
  "\nand " a "gain " "I " "say, " Re "joice!\"\n"

  \set stanza = "2."
  "\nRe" "joice! " re "joice! " "lift " "up " "your " "head, "
  "\nAnd " "praise " "the " liv "ing " "God. "
  "\nThat " "for " "your " "souls " "the " Sa "viour " "shed "
  "\nHis " "own " "most " pre "cious " "blood. "
  "\n\"Re" "joice! " Re "joice " "in " "the " "Lord! "
  "\nRe" "joice " "in " "the " "Lord " al "way; "
  "\nRe" "joice! " Re "joice " "in " "the " "Lord! "
  "\nand " a "gain " "I " "say, " Re "joice!\"\n"

  \set stanza = "3."
  "\nRe" "joice! " re "joice! " "let " "praise " a "bound "
  "\nBe" "fore " Je ho "vah's " "throne, "
  "\nFor " "dead " "ones " "raised, " "and " "lost " "ones " "found, "
  "\nAnd " pro di "gals " "brought " "home. "
  "\n\"Re" "joice! " Re "joice " "in " "the " "Lord! "
  "\nRe" "joice " "in " "the " "Lord " al "way; "
  "\nRe" "joice! " Re "joice " "in " "the " "Lord! "
  "\nand " a "gain " "I " "say, " Re "joice!\"\n"

  \set stanza = "4."
  "\nRe" "joice! " re "joice! " "the " "Lord " "will " "come, "
  "\nAc" cord "ing " "to " "His " "word; "
  "\nAnd " gath "er " "all " "His " ran "somed " "home, "
  "\n\"For " ev "er " "with " "the " "Lord.\" "
  "\n\"Re" "joice! " Re "joice " "in " "the " "Lord! "
  "\nRe" "joice " "in " "the " "Lord " al "way; "
  "\nRe" "joice! " Re "joice " "in " "the " "Lord! "
  "\nand " a "gain " "I " "say, " Re "joice!\" "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Re" "joice! " re "joice! " "ye " "saints, " re "joice! "
  "\nRe" "joice " "with " "one " ac "cord; "
  "\nRe" "joice, " "with " "all " "your " "heart " "and " "voice, "
  "\nIn " "Christ, " "th' ex" alt "ed " "Lord. "
  "\n\"Re" "joice " "in " "the " "Lord! " Re "joice " "in " "the " "Lord! "
  "\nRe" "joice " "in " "the " "Lord " al "way; "
  "\nRe" joice "in " "the " "Lord! " Re "joice " "in " "the " "Lord! "
  "\nand " a "gain " "I " "say, " Re "joice!\"\n"

  \set stanza = "2."
  "\nRe" "joice! " re "joice! " "lift " "up " "your " "head, "
  "\nAnd " "praise " "the " liv "ing " "God. "
  "\nThat " "for " "your " "souls " "the " Sa "viour " "shed "
  "\nHis " "own " "most " pre "cious " "blood. "
  "\n\"Re" "joice " "in " "the " "Lord! " Re "joice " "in " "the " "Lord! "
  "\nRe" "joice " "in " "the " "Lord " al "way; "
  "\nRe" joice "in " "the " "Lord! " Re "joice " "in " "the " "Lord! "
  "\nand " a "gain " "I " "say, " Re "joice!\"\n"

  \set stanza = "3."
  "\nRe" "joice! " re "joice! " "let " "praise " a "bound "
  "\nBe" "fore " Je ho "vah's " "throne, "
  "\nFor " "dead " "ones " "raised, " "and " "lost " "ones " "found, "
  "\nAnd " pro di "gals " "brought " "home. "
  "\n\"Re" "joice " "in " "the " "Lord! " Re "joice " "in " "the " "Lord! "
  "\nRe" "joice " "in " "the " "Lord " al "way; "
  "\nRe" joice "in " "the " "Lord! " Re "joice " "in " "the " "Lord! "
  "\nand " a "gain " "I " "say, " Re "joice!\"\n"

  \set stanza = "4."
  "\nRe" "joice! " re "joice! " "the " "Lord " "will " "come, "
  "\nAc" cord "ing " "to " "His " "word; "
  "\nAnd " gath "er " "all " "His " ran "somed " "home, "
  "\n\"For " ev "er " "with " "the " "Lord.\" "
  "\n\"Re" "joice " "in " "the " "Lord! " Re "joice " "in " "the " "Lord! "
  "\nRe" "joice " "in " "the " "Lord " al "way; "
  "\nRe" joice "in " "the " "Lord! " Re "joice " "in " "the " "Lord! "
  "\nand " a "gain " "I " "say, " Re "joice!\" "
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
%            \new Voice \RehearsalTrack
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
