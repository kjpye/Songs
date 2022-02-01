\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, oh Come, with Thy Broken Heart!"
  subtitle    = "Sankey No. 349"
  subsubtitle = "Sankey 880 No. 333"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Fanny J. Crosby."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s1*4
  \mark \markup { \box "B" } s1*4
  \mark \markup { \box "C" } s1*4
  \mark \markup { \box "D" } s1*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 b' b a8. g16
  g4 e g2
  fis4 8. g16 a4 c
  b2. r4 \break
  d,4 b' b a8. g16 % B
  e4 c'4 2
  d4 g,8. a16 b4 a
  g2. r4
  g4 c8. 16 4 4 % C
  d,4 b'4 2
  a4 8 8 b4 cis
  d2(c)
  b4 8. 16 c4 b % D
  a4 b c2
  g4 8. 16 b4 a
  g2. r4
}

alto = \relative {
  \autoBeamOff
  b4 d d d8. 16
  e4 4 2
  d4 8. 16 4 4
  d2. r4
  b4 d4 4 8. 16 % B
  c4 e e(fis)
  g4 8. a16 4 fis
  d2. r4
  e4 8. 16 4 c % C
  b4 d g2
  g4 8 8 4 4
  fis2(g4 a)
  g4 8. 16 4 4 % D
  e4 4 2
  g4 8. 16 4 fis
  d2. r4
}

tenor = \relative {
  \autoBeamOff
  g4 4 4 fis8. g16
  g4 4 c2
  a4 8. b16 c4 fis,
  g2. r4
  g4 4 4 fis8. g16 % B
  g4 4 4(a)
  b4 8. e16 d4 c
  b2. r4
  c4 g8. 16 4 8[a] % C
  b4 g d'2
  cis4 8 8 d4 a
  a2(d)
  d4 8. 16 e4 d % D
  c8[a] gis4 a2
  b4 d8. e16 d4 c
  b2. r4
}

bass = \relative {
  \autoBeamOff
  g4 4 g, a8. b16
  c4 4 2
  d4 8. 16 4 4
  g,2. r4
  g'4 4 g, a8. b16 % B
  c4 4 2
  b4 e8. c16 d4 4
  g,2. r4
  c4 8. 16 4 e8[g] % C
  g4 g,4 2
  a4 8 8 4 4
  d2(e4 fis)
  g4 8. 16 4 4 % D
  c,4 b a2
  e'4 b8. c16 d4 4
  g,2. r4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, oh come, with thy bro -- ken heart,
  Wea -- ry and worn with care;
  Come and kneel at the o -- pen door,
  Je -- sus is wait -- ing there;
  Wait -- ing to heal thy wound -- ed soul,
  Wait -- ing to give thee rest;
  Why wilt thou walk where sha -- dows fall?
  Come to His lov -- ing breast!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Firm -- ly cling to the bles -- sed cross,
  There shall thy re -- fuge be;
  Wash thee now in the crim -- son fount,
  Flow -- ing so pure for thee:
  List to the gen -- tle warn -- ing voice!
  List to the earn -- est call!
  Leave at the cross thy bur -- den now:
  Je -- sus will bear it all.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come and taste of the pre -- cious feast,
  Feast of e -- ter -- nal loev;
  Think of joys that for e -- ver bloom,
  Bright in the life a -- bove;
  Come with a trust -- ing heart to God,
  Come and be saved by grace;
  Come, for He longs to clasp thee now
  Close in His dear em -- brace.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "oh " "come, " "with " "thy " bro "ken " "heart, "
  "\nWea" "ry " "and " "worn " "with " "care; "
  "\nCome " "and " "kneel " "at " "the " o "pen " "door, "
  "\nJe" "sus " "is " wait "ing " "there; "
  "\nWait" "ing " "to " "heal " "thy " wound "ed " "soul, "
  "\nWait" "ing " "to " "give " "thee " "rest; "
  "\nWhy " "wilt " "thou " "walk " "where " sha "dows " "fall? "
  "\nCome " "to " "His " lov "ing " "breast! "

  \set stanza = "2."
  "\nFirm" "ly " "cling " "to " "the " bles "sed " "cross, "
  "\nThere " "shall " "thy " re "fuge " "be; "
  "\nWash " "thee " "now " "in " "the " crim "son " "fount, "
  "\nFlow" "ing " "so " "pure " "for " "thee: "
  "\nList " "to " "the " gen "tle " warn "ing " "voice! "
  "\nList " "to " "the " earn "est " "call! "
  "\nLeave " "at " "the " "cross " "thy " bur "den " "now: "
  "\nJe" "sus " "will " "bear " "it " "all. "

  \set stanza = "3."
  "\nCome " "and " "taste " "of " "the " pre "cious " "feast, "
  "\nFeast " "of " e ter "nal " "loev; "
  "\nThink " "of " "joys " "that " "for " e "ver " "bloom, "
  "\nBright " "in " "the " "life " a "bove; "
  "\nCome " "with " "a " trust "ing " "heart " "to " "God, "
  "\nCome " "and " "be " "saved " "by " "grace; "
  "\nCome, " "for " "He " "longs " "to " "clasp " "thee " "now "
  "\nClose " "in " "His " "dear " em "brace. "
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
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "aligner" \soprano
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor } { \global \bass }
          >>
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

\book {
  \bookOutputSuffix "single"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
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
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "aligner" { \repeat unfold \verses \soprano }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \repeat unfold \verses \tenor }
                                            { \global \repeat unfold \verses \bass }
          >>
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
