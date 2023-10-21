\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Wait, and Murmur Not!"
  subtitle    = "Sankey No. 710"
  subsubtitle = "Sankey 880 No. 492"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Wm. J. Kirkpatrick."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup{Arr. \smallCaps "W. H. Bellamy."}
  meter       = \markup\smallCaps "L.M."
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
  \textMark \markup { \box \bold "C" } s4 s1*2
  \textMark \markup { \box \bold "D" }    s1*2 s2.
  \textMark \markup { \box \bold "E" } s4 s1*2 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  g'4 | 4. 8 fis g a g | c2. e,4 | f4. e8 d a' g f | e2. \bar "|" \break
  g4 | c4. 8 b d c g | a2. 4 | g4. 8 b b a b | c2.
  \section \sectionLabel \markup\smallCaps Chorus. \break
  g4 | 2. e8 g | g f f f f4 4 |
  b2. a8 b | c g g g g4 g | e'2. \bar "|" \break
  c4 | 2. a4 | g4. 8 b4 a8[b] | c2.
}

alto = \relative {
  \autoBeamOff
  e'4 | 4. 8 dis e f e |e2. c4 | d4. c8 b f' e d | c2.
  e4 | 4. 8 f f g g | f2. dis4 | e4. 8 d d f f | e2. \section
  e4 | 2. c8 e | e d d d d4 d |
  f2. 8 8 | e e e e e4 e | g2.
  g4 | f2. 4 | e4. 8  f4 4 | e8 e f f e4
}

tenor = \relative {
  \autoBeamOff
  g4 | c4. 8 8 8 8 8 | g2. 4 | 4. 8 8 8 8 8 | 2.
  c4 | g4. 8 8 8 8 c | 2. 4 | 4. 8 g g g g | 2. \section
  c4 | 4 8 8 4 g8 g | g b b b b4 b |
  d4 8 8 4 8 8 | c8 8 8 8 4 4 | 4 8 8 4
  g8[bes] | a4 8 8 4 c | 4. 8 d4 d | c8 g a a g4
}

bass = \relative {
  \autoBeamOff
  c4 | 4. 8 8 8 8 8 | 2. 4 | g4. 8 8 8 8 8 | c2.
  c4 | 4. 8 d d e e | f2. fis4 | g4. 8 8 8 8 8 | c,2. \section
  c4 | 4 8 8 4 8 8 | g8 8 8 8 4 g' |
  g4 8 8 4 8 8 | c,8 8 8 8 4 4 | 4 8 8 4
  e4 | f4 8 8 4 4 | g4. 8 4 4 | c,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Oh, wait, meek -- ly wait, and mur -- mur not!
  Oh, wait, meek -- ly wait, and mur -- mur not!
  Oh,  wait, Oh, wait,
  Oh, wait, and mur -- mur not!
}

chorusMen = \lyricmode {
  \repeat unfold 32 _
  _ _ meek -- ly wait! _ _ _ _ _ _ _
  _ _ meek -- ly wait! _ _ _ _ _ _ _
  _ _ meek -- ly wait! _ _ meek -- ly wait!
  _ _ _ _ _ _ Oh, mur -- mur not!
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  O wea -- ry heart, there is a Home
  Be -- yond the reach of toil and care;
  A Home where chan -- ges nev -- er come:
  Who would not fain be rest -- ing there!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Yet when bow'd down be -- neath the load
  By heav'n al -- low'd, thine earth -- ly lot;
  Look up! thou'lt reach that blest a -- bode:
  Wait, meek -- ly wait, and mur -- mur not!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  If in thy path some thorns are found,
  Oh, think who bore them on His brow;
  If grief thy sor -- rowing heart has found,
  It reached a ho -- li -- er than thou.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Toil on! nor deem, tho' sore it be,
  One sigh un -- heard, one prayer for -- got;
  The day of rest will dawn for thee:
  Wait, meek -- ly wait, and mur -- mur not!
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "O " wea "ry " "heart, " "there " "is " "a " "Home "
  "\nBe" "yond " "the " "reach " "of " "toil " "and " "care; "
  "\nA " "Home " "where " chan "ges " nev "er " "come: "
  "\nWho " "would " "not " "fain " "be " rest "ing " "there! "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, "  "wait, " "Oh, " "wait, "
  "\nOh, " "wait, " "and " mur "mur " "not!\n"

  \set stanza = "2."
  "\nYet " "when " "bow'd " "down " be "neath " "the " "load "
  "\nBy " "heav'n " al "low'd, " "thine " earth "ly " "lot; "
  "\nLook " "up! " "thou'lt " "reach " "that " "blest " a "bode: "
  "\nWait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, "  "wait, " "Oh, " "wait, "
  "\nOh, " "wait, " "and " mur "mur " "not!\n"

  \set stanza = "3."
  "\nIf " "in " "thy " "path " "some " "thorns " "are " "found, "
  "\nOh, " "think " "who " "bore " "them " "on " "His " "brow; "
  "\nIf " "grief " "thy " sor "rowing " "heart " "has " "found, "
  "\nIt " "reached " "a " ho li "er " "than " "thou. "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, "  "wait, " "Oh, " "wait, "
  "\nOh, " "wait, " "and " mur "mur " "not!\n"

  \set stanza = "4."
  "\nToil " "on! " "nor " "deem, " "tho' " "sore " "it " "be, "
  "\nOne " "sigh " un "heard, " "one " "prayer " for "got; "
  "\nThe " "day " "of " "rest " "will " "dawn " "for " "thee: "
  "\nWait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, "  "wait, " "Oh, " "wait, "
  "\nOh, " "wait, " "and " mur "mur " "not! "
}

wordsMidiAlto = \lyricmode {
  \set stanza = "1."
  "O " wea "ry " "heart, " "there " "is " "a " "Home "
  "\nBe" "yond " "the " "reach " "of " "toil " "and " "care; "
  "\nA " "Home " "where " chan "ges " nev "er " "come: "
  "\nWho " "would " "not " "fain " "be " rest "ing " "there! "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, "  "wait, " "Oh, " "wait, "
  "\nOh, " "wait, " "and " mur "mur " "not! "
  "\nOh, " mur "mur " "not!\n"

  \set stanza = "2."
  "\nYet " "when " "bow'd " "down " be "neath " "the " "load "
  "\nBy " "heav'n " al "low'd, " "thine " earth "ly " "lot; "
  "\nLook " "up! " "thou'lt " "reach " "that " "blest " a "bode: "
  "\nWait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, "  "wait, " "Oh, " "wait, "
  "\nOh, " "wait, " "and " mur "mur " "not! "
  "\nOh, " mur "mur " "not!\n"

  \set stanza = "3."
  "\nIf " "in " "thy " "path " "some " "thorns " "are " "found, "
  "\nOh, " "think " "who " "bore " "them " "on " "His " "brow; "
  "\nIf " "grief " "thy " sor "rowing " "heart " "has " "found, "
  "\nIt " "reached " "a " ho li "er " "than " "thou. "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, "  "wait, " "Oh, " "wait, "
  "\nOh, " "wait, " "and " mur "mur " "not! "
  "\nOh, " mur "mur " "not!\n"

  \set stanza = "4."
  "\nToil " "on! " "nor " "deem, " "tho' " "sore " "it " "be, "
  "\nOne " "sigh " un "heard, " "one " "prayer " for "got; "
  "\nThe " "day " "of " "rest " "will " "dawn " "for " "thee: "
  "\nWait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, "  "wait, " "Oh, " "wait, "
  "\nOh, " "wait, " "and " mur "mur " "not! "
  "\nOh, " mur "mur " "not! "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "O " wea "ry " "heart, " "there " "is " "a " "Home "
  "\nBe" "yond " "the " "reach " "of " "toil " "and " "care; "
  "\nA " "Home " "where " chan "ges " nev "er " "come: "
  "\nWho " "would " "not " "fain " "be " rest "ing " "there! "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nOh, " "wait, " "and " mur "mur " "not! "
  "\nOh, " mur "mur " "not!\n"

  \set stanza = "2."
  "\nYet " "when " "bow'd " "down " be "neath " "the " "load "
  "\nBy " "heav'n " al "low'd, " "thine " earth "ly " "lot; "
  "\nLook " "up! " "thou'lt " "reach " "that " "blest " a "bode: "
  "\nWait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nOh, " "wait, " "and " mur "mur " "not! "
  "\nOh, " mur "mur " "not!\n"

  \set stanza = "3."
  "\nIf " "in " "thy " "path " "some " "thorns " "are " "found, "
  "\nOh, " "think " "who " "bore " "them " "on " "His " "brow; "
  "\nIf " "grief " "thy " sor "rowing " "heart " "has " "found, "
  "\nIt " "reached " "a " ho li "er " "than " "thou. "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nOh, " "wait, " "and " mur "mur " "not! "
  "\nOh, " mur "mur " "not!\n"

  \set stanza = "4."
  "\nToil " "on! " "nor " "deem, " "tho' " "sore " "it " "be, "
  "\nOne " "sigh " un "heard, " "one " "prayer " for "got; "
  "\nThe " "day " "of " "rest " "will " "dawn " "for " "thee: "
  "\nWait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nOh, " "wait, " meek "ly " "wait, "
  "\nOh, " "wait, " "and " mur "mur " "not! "
  "\nOh, " mur "mur " "not! "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "O " wea "ry " "heart, " "there " "is " "a " "Home "
  "\nBe" "yond " "the " "reach " "of " "toil " "and " "care; "
  "\nA " "Home " "where " chan "ges " nev "er " "come: "
  "\nWho " "would " "not " "fain " "be " rest "ing " "there! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nOh, " "wait, " "and " mur "mur " "not!\n"

  \set stanza = "2."
  "\nYet " "when " "bow'd " "down " be "neath " "the " "load "
  "\nBy " "heav'n " al "low'd, " "thine " earth "ly " "lot; "
  "\nLook " "up! " "thou'lt " "reach " "that " "blest " a "bode: "
  "\nWait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nOh, " "wait, " "and " mur "mur " "not!\n"

  \set stanza = "3."
  "\nIf " "in " "thy " "path " "some " "thorns " "are " "found, "
  "\nOh, " "think " "who " "bore " "them " "on " "His " "brow; "
  "\nIf " "grief " "thy " sor "rowing " "heart " "has " "found, "
  "\nIt " "reached " "a " ho li "er " "than " "thou. "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nOh, " "wait, " "and " mur "mur " "not!\n"

  \set stanza = "4."
  "\nToil " "on! " "nor " "deem, " "tho' " "sore " "it " "be, "
  "\nOne " "sigh " un "heard, " "one " "prayer " for "got; "
  "\nThe " "day " "of " "rest " "will " "dawn " "for " "thee: "
  "\nWait, " meek "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nmeek" "ly " "wait, " "and " mur "mur " "not! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nOh, " "wait, " meek "ly " "wait! "
  "\nOh, " "wait, " "and " mur "mur " "not! "
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
