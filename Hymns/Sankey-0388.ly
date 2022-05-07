\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Come, oh Come!"
  subtitle    = "Sankey No. 388"
  subsubtitle = "C. C. No. 165"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "I. H. Meredith."
%  arranger    = "arranger"
%  opus        = "opus"

%  poet        = \markup\smallCaps "poet"
  meter       = \markup\smallCaps "8.7."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key g \major
  \time 3/4
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s4 s2.*3
  \mark \markup { \box "B" } s2.*3
  \mark \markup { \box "C" } s2.*3
  \mark \markup { \box "D" } s2.*3
  \mark \markup { \box "E" } s2.*3 s2
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  b'8 c
  a4. gis8 a b
  g4 d g8 8
  g4. fis8 g e
  d4. r8 b' c % B
  a4. g8 a b
  g4 d g8 fis
  e8 8 c'4 fis,4 % C
  g4. r8 \bar "||" d'8^\markup\smallCaps Chorus. e
  c2 8 d
  b2 8 8 % D
  a8 b c4 d
  b2 d8 e
  c2 8 d % E
  b2 8 8
  a8 b c4 fis,
  g2
}

alto = \relative {
  \autoBeamOff
  d'8 e
  c4. b8 c d
  b4 4 d8 dis
  e4. dis8 e c
  b4. r8 d e % B
  c4. b8 c d
  b4 4 d8 8
  c8 8 e4 c % C
  b4. r8 b' c
  a2 8 fis
  g2 8 8 % D
  f8 g f4 4
  g2 b8 c
  a2 8 fis % E
  g2 8 8
  e8 8 4 d8[c]
  b2
}

tenor = \relative {
  \autoBeamOff
  g8 8
  fis4. eis8 fis fis
  g4 4 8 8
  g4. a8 g g
  g4. r8 8 8 % B
  fis4. eis8 f f
  g4 4 8 8
  g8 8 a4 4 % C
  g4. r8 r4
  d'8 8 4 r
  d8 8 4 8 8 % D
  d8 8 4 4
  d8 8 4 r
  d8 8 4 r % E
  d8 8 4 8 8
  c8 gis a4 4
  g2
}

bass = \relative {
  \autoBeamOff
  g,8 8
  d'4. 8 8 8
  g,4 4 b8 8
  c4. 8 8 8
  g4. r8 8 8 % B
  d'4. 8 8 8
  g,4 4 b8 8
  c8 8 a4 d % C
  g,4. r8 r4
  d8 8 4 r
  g8 8 4 8 8 % D
  c8 b a4 d,
  g8 8 4 r
  d8 8 4 r % E
  g8 8 4 8 8
  c8 b a4 d
  g,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Call -- ing now, __ call -- ing now, __
  Hear the Sa -- viour call -- ing now; __
  Call -- ing now, __ call -- ing now, __
  Hear the Sa -- viour call -- ing now.
}

chorusMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Call -- ing now, call -- ing now,
  _ _ _ _ _ _
  call -- ing now;
  Call -- ing now, call -- ing now,
  _ _ _ _ _ _ _
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Come, oh come, while Christ is call -- ing,
  Lin -- ger not in paths of sin;
  Sev -- er ev -- 'ry tie that binds you,
  And the heaven -- ly race be -- gin.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Come, oh come, while Christ is plead -- ing,
  Oh, what love His tones con -- vey!
  Will you slight His prof -- fered mer -- cy?
  Will you long -- er from Him stray?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Come, oh come, de -- lay no long -- er,
  For th'ac -- cept -- ed time is now;
  Yield, oh yield your -- self to Je -- sus,
  And be -- fore His scep -- tre bow.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Come, " "oh " "come, " "while " "Christ " "is " call "ing, "
  "\nLin" "ger " "not " "in " "paths " "of " "sin; "
  "\nSev" "er " ev "'ry " "tie " "that " "binds " "you, "
  "\nAnd " "the " heaven "ly " "race " be "gin. "
  "\nCall" "ing " "now, "  call "ing " "now, " 
  "\nHear " "the " Sa "viour " call "ing " "now; " 
  "\nCall" "ing " "now, "  call "ing " "now, " 
  "\nHear " "the " Sa "viour " call "ing " "now. "

  \set stanza = "2."
  "\nCome, " "oh " "come, " "while " "Christ " "is " plead "ing, "
  "\nOh, " "what " "love " "His " "tones " con "vey! "
  "\nWill " "you " "slight " "His " prof "fered " mer "cy? "
  "\nWill " "you " long "er " "from " "Him " "stray? "
  "\nCall" "ing " "now, "  call "ing " "now, " 
  "\nHear " "the " Sa "viour " call "ing " "now; " 
  "\nCall" "ing " "now, "  call "ing " "now, " 
  "\nHear " "the " Sa "viour " call "ing " "now. "

  \set stanza = "3."
  "\nCome, " "oh " "come, " de "lay " "no " long "er, "
  "\nFor " th'ac cept "ed " "time " "is " "now; "
  "\nYield, " "oh " "yield " your "self " "to " Je "sus, "
  "\nAnd " be "fore " "His " scep "tre " "bow. "
  "\nCall" "ing " "now, "  call "ing " "now, " 
  "\nHear " "the " Sa "viour " call "ing " "now; " 
  "\nCall" "ing " "now, "  call "ing " "now, " 
  "\nHear " "the " Sa "viour " call "ing " "now. "
}

wordsMidiMen = \lyricmode {
  \set stanza = "1."
  "Come, " "oh " "come, " "while " "Christ " "is " call "ing, "
  "\nLin" "ger " "not " "in " "paths " "of " "sin; "
  "\nSev" "er " ev "'ry " "tie " "that " "binds " "you, "
  "\nAnd " "the " heaven "ly " "race " be "gin. "
  "\nCall" "ing " "now, "  call "ing " "now, " 
  "\nHear " "the " Sa "viour " call "ing, " call "ing " "now; " 
  "\nCall" "ing " "now, "  call "ing " "now, " 
  "\nHear " "the " Sa "viour " call "ing " "now. "

  \set stanza = "2."
  "\nCome, " "oh " "come, " "while " "Christ " "is " plead "ing, "
  "\nOh, " "what " "love " "His " "tones " con "vey! "
  "\nWill " "you " "slight " "His " prof "fered " mer "cy? "
  "\nWill " "you " long "er " "from " "Him " "stray? "
  "\nCall" "ing " "now, "  call "ing " "now, " 
  "\nHear " "the " Sa "viour " call "ing, " call "ing " "now; " 
  "\nCall" "ing " "now, "  call "ing " "now, " 
  "\nHear " "the " Sa "viour " call "ing " "now. "

  \set stanza = "3."
  "\nCome, " "oh " "come, " de "lay " "no " long "er, "
  "\nFor " th'ac cept "ed " "time " "is " "now; "
  "\nYield, " "oh " "yield " your "self " "to " Je "sus, "
  "\nAnd " be "fore " "His " scep "tre " "bow. "
  "\nCall" "ing " "now, "  call "ing " "now, " 
  "\nHear " "the " Sa "viour " call "ing, " call "ing " "now; " 
  "\nCall" "ing " "now, "  call "ing " "now, " 
  "\nHear " "the " Sa "viour " call "ing " "now. "
}

\book {
  \bookOutputSuffix "midi-women"
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
  \bookOutputSuffix "midi-men"
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \chorusMen }
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusMen}
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
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine { \global \repeat unfold \verses \tenor }
                                    { \global \repeat unfold \verses \bass }
            \new NullVoice = alignerT { \repeat unfold \verses \tenor }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT {\repeat unfold \verses \chorusMen}
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
