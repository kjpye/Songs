\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "I Will!"
  subtitle    = "Sankey No. 474"
  subsubtitle = "C. C. No. 74"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "El Nathan."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 18)

global = {
  \key a \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s1*3 s2.
  \mark \markup { \box "B" } s4 s1*3 s2.
  \mark \markup { \box "C" } s4 s1*3
  \mark \markup { \box "D" }    s1*3 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'4 | a a cis4. a8 | b8 a a fis e4. 8 | fis4 a d cis | b2. \bar "|" \break e,4 |
  a4 4 cis4. a8 | b a a fis e4. 8 | fis4 d' cis b | a2. \bar "||" \break r8^\markup\smallCaps Chorus. e |
  b'4. e,8 cis'4. e,8 | d'4 4 cis8 b a b | cis4 e, a cis |
  b2. e,4 | a a cis4. a8 | b8 a a fis e4. 8 | fis4 d' cis b | a2.
}

alto = \relative {
  \autoBeamOff
  cis'4 | 4 4 e4. 8 | d8 8 8 8 cis4. 8 | d4 e e e | e2. d4 |
  cis4 4 e4. gis8 | fis8 8 8 d cis4. 8 | d4 fis e d | cis2. r4 |
  \partCombineApart r8 gis' gis r r a \partCombineChords a e | fis4 4 e8 d cis d | e4 4 4 4 |
  e2. d4 | cis4 4 e4. gis8 | fis8 8 8 d cis4. 8 | d4 fis e d | cis2.
  
}

tenor = \relative {
  \autoBeamOff
  a4 | e e a4. 8 |
  fis8 8 8 a8 4. 8 | 4 4 gis a | gis2. 4 |
  a4 e a4. 8 | 8 8 8 8 4. 8 | 4 4 4 gis | a2. r4 |
  r8 d d r r e e cis | a4 4 8 e e gis | a4 gis a a |
  gis2. 4 | a e a4. 8 | 8 8 8 8 4. 8 | 4 4 4 gis8[e] | 2.
}

bass = \relative {
  \autoBeamOff
  a,4 | 4 4 4. cis8 |d d d d a4. 8 | d4 cis b a | e'2. 4 |
  a,4 4 4. cis8 | d d d d a4. 8 | d4 b e e | <a, e'>2. r4 |
  r8 e' e r r a a a | d,4 4 a8 8 8 e' | a,4 b cis a |
  e'2. 4 | a, a4 4. 8 | d d d d a4. 8 | d4 b e e | a,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  I will! __ I will! __ I will!
  God help -- ing me, I will, O Lord, be Thine!
  Thy pre -- cious blood was shed to pur -- chase me—
  I will be whol -- ly Thine!
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  I will! I will!
  _ _ _ _ _ _ _ _
  _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
}

verses = 5

wordsOne = \lyricmode {
  \set stanza = "1."
  Once more, my soul, thy Sa -- viour, thro' the Word,
  Is of -- fered full and free;
  And now, O Lord, I must, I must de -- cide:
  Shall I ac -- cept of Thee?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  By grace I will Thy mer -- cy no re -- cieve,
  Thy love my heart hath won:
  On Thee, O Christ, I will, I will be -- lieve,
  And trust in Thee a -- lone!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Thou know -- est, Lord, how ve -- ry weak I am,
  And how I fear to stray;
  For strength to serve I look to Thee a -- lone—
  The strength Thou must sup -- ply!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  And now, O Lord, give all with us to -- day
  The grace to join our song;
  And from the heart to glad -- ly with us say:
  "\"I" \markup\smallCaps will to Christ be -- "long!\""
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  To all who came, when Thou wast here be -- low
  And said, "\"O" Lord, wilt "Thou?\""
  To them, "\"I" "will!\"" was ev -- er Thy re -- ply:
  We rest up -- on it now.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Once " "more, " "my " "soul, " "thy " Sa "viour, " "thro' " "the " "Word, "
  "\nIs " of "fered " "full " "and " "free; "
  "\nAnd " "now, " "O " "Lord, " "I " "must, " "I " "must " de "cide: "
  "\nShall " "I " ac "cept " "of " "Thee? "
  "\nI " "will! "  "I " "will! "  "I " "will! "
  "\nGod " help "ing " "me, " "I " "will, " "O " "Lord, " "be " "Thine! "
  "\nThy " pre "cious " "blood " "was " "shed " "to " pur "chase " "me— "
  "\nI " "will " "be " whol "ly " "Thine!\n"

  \set stanza = "2."
  "\nBy " "grace " "I " "will " "Thy " mer "cy " "no " re "cieve, "
  "\nThy " "love " "my " "heart " "hath " "won: "
  "\nOn " "Thee, " "O " "Christ, " "I " "will, " "I " "will " be "lieve, "
  "\nAnd " "trust " "in " "Thee " a "lone! "
  "\nI " "will! "  "I " "will! "  "I " "will! "
  "\nGod " help "ing " "me, " "I " "will, " "O " "Lord, " "be " "Thine! "
  "\nThy " pre "cious " "blood " "was " "shed " "to " pur "chase " "me— "
  "\nI " "will " "be " whol "ly " "Thine!\n"

  \set stanza = "3."
  "\nThou " know "est, " "Lord, " "how " ve "ry " "weak " "I " "am, "
  "\nAnd " "how " "I " "fear " "to " "stray; "
  "\nFor " "strength " "to " "serve " "I " "look " "to " "Thee " a "lone— "
  "\nThe " "strength " "Thou " "must " sup "ply! "
  "\nI " "will! "  "I " "will! "  "I " "will! "
  "\nGod " help "ing " "me, " "I " "will, " "O " "Lord, " "be " "Thine! "
  "\nThy " pre "cious " "blood " "was " "shed " "to " pur "chase " "me— "
  "\nI " "will " "be " whol "ly " "Thine!\n"

  \set stanza = "4."
  "\nAnd " "now, " "O " "Lord, " "give " "all " "with " "us " to "day "
  "\nThe " "grace " "to " "join " "our " "song; "
  "\nAnd " "from " "the " "heart " "to " glad "ly " "with " "us " "say: "
  "\n\"I " "will " "to " "Christ " be "long!\" "
  "\nI " "will! "  "I " "will! "  "I " "will! "
  "\nGod " help "ing " "me, " "I " "will, " "O " "Lord, " "be " "Thine! "
  "\nThy " pre "cious " "blood " "was " "shed " "to " pur "chase " "me— "
  "\nI " "will " "be " whol "ly " "Thine!\n"

  \set stanza = "5."
  "\nTo " "all " "who " "came, " "when " "Thou " "wast " "here " be "low "
  "\nAnd " "said, " "\"O " "Lord, " "wilt " "Thou?\" "
  "\nTo " "them, " "\"I " "will!\" " "was " ev "er " "Thy " re "ply: "
  "\nWe " "rest " up "on " "it " "now. "
  "\nI " "will! "  "I " "will! "  "I " "will! "
  "\nGod " help "ing " "me, " "I " "will, " "O " "Lord, " "be " "Thine! "
  "\nThy " pre "cious " "blood " "was " "shed " "to " pur "chase " "me— "
  "\nI " "will " "be " whol "ly " "Thine! "
}

\book {
  \bookOutputSuffix "midi-sop"
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
  \bookOutputSuffix "midi"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsMidi
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
