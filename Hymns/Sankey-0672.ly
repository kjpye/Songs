\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "A Soldier of the Cross."
  subtitle    = "Sankey No. 672"
  subsubtitle = "N. H. No. 60"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Ira D. Sankey."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "Isaac Watts, D.D."
  meter       = \markup\smallCaps "C.M."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

global = {
  \key d \major
  \time 4/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*2 s2
  \textMark \markup { \box \bold "D" } s2 s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'4 | fis4 4 g8. fis16 g8. b16 | a2. fis4 | a d cis b | a2. \bar "|" \break
  g4 | fis4 4 g8. fis16 g8. b16 | a2. d,4 | fis4 g e4. d8 | 2.
  \section \sectionLabel \markup\smallCaps Chorus
  a'8. d16 | cis2~8 a b8. cis16 | d2. cis8[d] | e4 d \bar "|" \break
  cis4 b | a2. g4 | fis4 4 g8. fis16 g8. b16 | a2. d,4 | fis g e4. d8 | 2.
}

apart = \partCombineApart
auto  = \partCombineAutomatic

alto = \relative {
  \autoBeamOff
  d'4 | 4 4 8. 16 8. 16 | d2. 4 | fis4 4 e d | cis2.
  e4 | d d d8. 16 8. g16 | fis2. d4 | d d cis4. d8 | 2. \section
  \apart r4 | r4 e8. 16 8 r r4 | r8 fis8 8. 16 4 4 \auto | e4 fis
  e4 d | cis2. e4 | d4 4 8. 16 8. g16 | fis2. d4 | d d cis4. d8 | 2.
}

tenor = \relative {
  \autoBeamOff
  fis4 | a a b8. a16 b8. g16 | fis2. a4 | d a a gis | a2.
  a4 | a a b8. a16 b8. d16 | 2. fis,4 | a b g4. fis8 | 2. \section
  r4 | r a8. 16 8 r r4 | r8 8 8. 16 4 4 | 4 4
  a4 gis | a2. 4 | 4 4 b8. a16 b8. d16 | 2. fis,4 | a b g4. fis8 | 2.
}

bass = \relative {
  \autoBeamOff
  d4 | 4 4 8. 16 8. 16 | 2. 4 | 4 4 e e | a,2.
  a4 | d d d8. 16 8. 16 | 2. 4 | 4 g, a4. d8 | 2. \section
  r4 | r a'8. 16 8 r r4 |r8 d,8 8. 16 4 a' | cis, d
  e4 e | a,2. cis4 | d4 4 8. 16 8. 16 | 2. 4 | d g, a4. d8 | 2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  In the name, __ the pre -- cious name __
  Of Him who died for me.
  Thro' grace I'll win the prom -- ised crown,
  What -- e'er my cross may be!
}

chorusMen = \lyricmode {
  \repeat unfold 28 _
  In the name, the pre -- cious name,
  \repeat unfold 20 _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Am I a sol -- dier of the cross—
  A follow -- er of the Lamb?
  And shall I fear to own His cause,
  Or blush to speak His name?
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Must I be car -- ried to the skies
  On flow -- 'ry beds of ease,
  While oth -- ers fought to win the prize,
  And sailed thro' blood -- y seas?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Are there no foes for me to face?
  Must I not stem the flood?
  Is this vile world a friend to grace,
  To help me on to God?
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Since I must fight if I would reign,
  In -- crease my cour -- age, Lord!
  I'll bear the toil, en -- dure the pain,
  Sup -- port -- ed by Thy word.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Am " "I " "a " sol "dier " "of " "the " "cross— "
  "\nA " follow "er " "of " "the " "Lamb? "
  "\nAnd " "shall " "I " "fear " "to " "own " "His " "cause, "
  "\nOr " "blush " "to " "speak " "His " "name? "
  "\nIn " "the " "name, "  "the " pre "cious " "name " 
  "\nOf " "Him " "who " "died " "for " "me. "
  "\nThro' " "grace " "I'll " "win " "the " prom "ised " "crown, "
  "\nWhat" "e'er " "my " "cross " "may " "be!\n"

  \set stanza = "2."
  "\nMust " "I " "be " car "ried " "to " "the " "skies "
  "\nOn " flow "'ry " "beds " "of " "ease, "
  "\nWhile " oth "ers " "fought " "to " "win " "the " "prize, "
  "\nAnd " "sailed " "thro' " blood "y " "seas? "
  "\nIn " "the " "name, "  "the " pre "cious " "name " 
  "\nOf " "Him " "who " "died " "for " "me. "
  "\nThro' " "grace " "I'll " "win " "the " prom "ised " "crown, "
  "\nWhat" "e'er " "my " "cross " "may " "be!\n"

  \set stanza = "3."
  "\nAre " "there " "no " "foes " "for " "me " "to " "face? "
  "\nMust " "I " "not " "stem " "the " "flood? "
  "\nIs " "this " "vile " "world " "a " "friend " "to " "grace, "
  "\nTo " "help " "me " "on " "to " "God? "
  "\nIn " "the " "name, "  "the " pre "cious " "name " 
  "\nOf " "Him " "who " "died " "for " "me. "
  "\nThro' " "grace " "I'll " "win " "the " prom "ised " "crown, "
  "\nWhat" "e'er " "my " "cross " "may " "be!\n"

  \set stanza = "4."
  "\nSince " "I " "must " "fight " "if " "I " "would " "reign, "
  "\nIn" "crease " "my " cour "age, " "Lord! "
  "\nI'll " "bear " "the " "toil, " en "dure " "the " "pain, "
  "\nSup" port "ed " "by " "Thy " "word. "
  "\nIn " "the " "name, "  "the " pre "cious " "name " 
  "\nOf " "Him " "who " "died " "for " "me. "
  "\nThro' " "grace " "I'll " "win " "the " prom "ised " "crown, "
  "\nWhat" "e'er " "my " "cross " "may " "be! "
}

wordsMidiMen = \lyricmode {
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
            \addlyrics \wordsMidi
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
