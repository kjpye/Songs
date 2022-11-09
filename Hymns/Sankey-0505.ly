\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Praise the Saviour!"
  subtitle    = "Sankey No. 505"
  subsubtitle = "Sankey 880 No. 562"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

%  composer    = \markup\smallCaps ""
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "T. Kelly."
%  meter       = \markup\smallCaps "meter"
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

#(set-global-staff-size 19)

global = {
  \key a \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3 s2
  \mark \markup { \box "B" } s4 s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  e'8. 16 | a4 4 gis8. a16 | b4 4 a8. b16 | cis4 4 b8. a16 | b4 4 \bar "|" \break cis8. d16 |
  e4 4 cis8. a16 | fis4 4 b8. d16 | e,2 gis4 | a2
}

alto = \relative {
  \autoBeamOff
  cis'8. 16 | e4 4 8. 16 | gis4 4 a8. gis16 | a4 4 8. 16 | gis4 4 a8. gis16 |
  a4 4 e8. 16 | d4 4 fis8. 16 | e2 4 | 2
}

tenor = \relative {
  \autoBeamOff
  a8. 16 | 4 4 d8. cis16 | e4 4 8. 16 | 4 4 dis 8. 16 | e4 4 a,8. b16 |
  cis4 4 a8. 16 | 4 4 b8. 16 | cis2 d4 | cis2
}

bass = \relative {
  \autoBeamOff
  a8. 16 | cis,4 4 b8. a16 | e'4 4 cis'8. b16 | a4 4 f8. 16 | e4 4 a8. 16 |
  a4 4 a, 8. cis16 | d4 4 8. 16 | e2 4 | <a, a'>2
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
  Praise the Sa -- viour, ye who know Him;
  Who can tell how much we owe Him?
  Glad -- ly let us ren -- der to Him
  All we are and have.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Je" -- "sus\"" is the name that charms us;
  He for con -- flicts fits and arms us;
  No -- thing moves and no -- thing harms us,
  When we trust in Him.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Trust in Him, ye saints, for ev -- er;
  He is faith -- ful, chang -- ing ne -- ver;
  Nei -- ther force nor guile can se -- ver
  Those He loves from Him.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Keep us, Lord, oh, keep us cleav -- ing
  To Thy -- self, and still be -- liev -- ing.
  Till the hour of our re -- ceiv -- ing
  Pro -- mised joys in heaven.
}
  
wordsFive = \lyricmode {
  \set stanza = "5."
  Then we shall be where we would be,
  Then we shall be what we should be;
  Things which are not now, nor could be,
  Then shall be our own.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Praise " "the " Sa "viour, " "ye " "who " "know " "Him; "
  "\nWho " "can " "tell " "how " "much " "we " "owe " "Him? "
  "\nGlad" "ly " "let " "us " ren "der " "to " "Him "
  "\nAll " "we " "are " "and " "have.\n"

  \set stanza = "2."
  "\n\"Je" "sus\" " "is " "the " "name " "that " "charms " "us; "
  "\nHe " "for " con "flicts " "fits " "and " "arms " "us; "
  "\nNo" "thing " "moves " "and " no "thing " "harms " "us, "
  "\nWhen " "we " "trust " "in " "Him.\n"

  \set stanza = "3."
  "\nTrust " "in " "Him, " "ye " "saints, " "for " ev "er; "
  "\nHe " "is " faith "ful, " chang "ing " ne "ver; "
  "\nNei" "ther " "force " "nor " "guile " "can " se "ver "
  "\nThose " "He " "loves " "from " "Him.\n"

  \set stanza = "4."
  "\nKeep " "us, " "Lord, " "oh, " "keep " "us " cleav "ing "
  "\nTo " Thy "self, " "and " "still " be liev "ing. "
  "\nTill " "the " "hour " "of " "our " re ceiv "ing "
  "\nPro" "mised " "joys " "in " "heaven.\n"

  \set stanza = "5."
  "\nThen " "we " "shall " "be " "where " "we " "would " "be, "
  "\nThen " "we " "shall " "be " "what " "we " "should " "be; "
  "\nThings " "which " "are " "not " "now, " "nor " "could " "be, "
  "\nThen " "shall " "be " "our " "own. "
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
