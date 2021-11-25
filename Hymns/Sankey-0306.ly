\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "There shall be Showers of Blessing."
  subtitle    = "Sankey No. 306"
  subsubtitle = "Sankey 880 No. 522"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan"
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

% #(set-global-staff-size 16)

global = {
  \key bes \major
  \time 6/8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*4
  \mark \markup { \box "B" } s2.*4
  \mark \markup { \box "C" } s2.*4
  \mark \markup { \box "D" } s2.*4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'8 8 8 8 g a
  bes4. f
  a8 8 8 8 bes c
  bes2.
  g8 8 8 bes a g % B
  f4. bes
  bes8 8 8 8 a bes
  c2.
  d4.^\markup\smallCaps Chorus. ~8 cis d % C
  bes4. f
  d'8 c bes bes a bes
  c2.
  d8 8 8 c bes g % D
  f4. bes
  a8 8 8 8 bes c
  bes2.
}

alto = \relative {
  \autoBeamOff
  d'8 8 8 ees ees ees
  d4. d
  f8 8 8 ees ees ees
  d2.
  ees8 8 8 g f ees % B
  d4. f
  g8 8 8 8 fis g
  a2.
  bes8[f] f f e f % C
  d4. 4.
  f8 ees d f ees d
  f2.
  f8 8 8 ees ees ees % D
  d4. d4(f8)
  ees8 8 8 8 8 8
  d2.
}

tenor = \relative {
  \autoBeamOff
  bes8 8 8 a bes c
  bes4. 4(d8)
  c8 8 8 8 g a
  bes2.
  bes8 8 8 8 8 8 % B
  bes4. 4.
  d8 8 8 8 8 8
  ees2.
  d8[bes] 8 8 8 8 % C
  f4. bes
  bes8 f f f f f
  a2.
  aes8 8 8 g g bes % D
  bes4. f8[bes d]
  c8 8 8 8 g a
  bes2.
}

bass = \relative {
  \autoBeamOff
  bes,8 8 8 f' f f
  bes,4. 4.
  f'8 8 8 8 8 8
  bes,2.
  ees8 8 8 8 8 8 % B
  bes4. d
  g8 8 8 d d g
  f2.
  bes,4 8 8 8 8 % C
  bes4. 4.
  bes8 8 8 d c bes
  f'2.
  bes,8 8 8 ees ees ees % D
  bes4. 4.
  f'8 8 8 8 8 8
  <bes, f'>2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Show -- ers, show -- ers of bless -- ing,
  Show -- ers of bless -- ing we need;
  Mer -- cy- -- drops round us are fall -- ing,
  But for the show -- ers we plead.
}

chorusSopAbove = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Show -- ers of bless -- ing
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"There" shall be show -- ers of bless -- "ing:\""
  This is the prom -- ise of lovel
  There shall be sea -- sons re -- fresh -- ing,
  Sent from the Sa -- viour a -- bove.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"There" shall be show -- ers of bless -- "ing\"—"
  Pre -- cious re -- vi -- ving a -- gain;
  O -- ver the hills and the val -- leys,
  Sound of a -- bun -- dance of rain.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"There" shall be show -- ers of bless -- "ing:\""
  Send them up -- on us, O Lord!
  Grant to us now a re -- fresh -- ing;
  Come, and now hon -- our Thy Word.
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  "\"There" shall be show -- ers of bless -- "ing:\""
  Oh that to -- day they might fall.
  Now as to God we're con -- fess -- ing,
  Now as on Je -- sus we call.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"There " "shall " "be " show "ers " "of " bless "ing:\" "
  "\nThis " "is " "the " prom "ise " "of " "lovel "
  "\nThere " "shall " "be " sea "sons " re fresh "ing, "
  "\nSent " "from " "the " Sa "viour " a "bove. "
  "\nShow" "ers, " show "ers " "of " bless "ing, "
  "\nShow" "ers " "of " bless "ing " "we " "need; "
  "\nMer" cy- "drops " "round " "us " "are " fall "ing, "
  "\nBut " "for " "the " show "ers " "we " "plead. "

  \set stanza = "2."
  "\n\"There " "shall " "be " show "ers " "of " bless "ing\"— "
  "\nPre" "cious " re vi "ving " a "gain; "
  "\nO" "ver " "the " "hills " "and " "the " val "leys, "
  "\nSound " "of " a bun "dance " "of " "rain. "
  "\nShow" "ers, " show "ers " "of " bless "ing, "
  "\nShow" "ers " "of " bless "ing " "we " "need; "
  "\nMer" cy- "drops " "round " "us " "are " fall "ing, "
  "\nBut " "for " "the " show "ers " "we " "plead. "

  \set stanza = "3."
  "\n\"There " "shall " "be " show "ers " "of " bless "ing:\" "
  "\nSend " "them " up "on " "us, " "O " "Lord! "
  "\nGrant " "to " "us " "now " "a " re fresh "ing; "
  "\nCome, " "and " "now " hon "our " "Thy " "Word. "
  "\nShow" "ers, " show "ers " "of " bless "ing, "
  "\nShow" "ers " "of " bless "ing " "we " "need; "
  "\nMer" cy- "drops " "round " "us " "are " fall "ing, "
  "\nBut " "for " "the " show "ers " "we " "plead. "

  \set stanza = "4."
  "\n\"There " "shall " "be " show "ers " "of " bless "ing:\" "
  "\nOh " "that " to "day " "they " "might " "fall. "
  "\nNow " "as " "to " "God " "we're " con fess "ing, "
  "\nNow " "as " "on " Je "sus " "we " "call. "
  "\nShow" "ers, " show "ers " "of " bless "ing, "
  "\nShow" "ers " "of " bless "ing " "we " "need; "
  "\nMer" cy- "drops " "round " "us " "are " fall "ing, "
  "\nBut " "for " "the " show "ers " "we " "plead. "
}
  
wordsMidiSop = \lyricmode {
  \set stanza = "1."
  "\"There " "shall " "be " show "ers " "of " bless "ing:\" "
  "\nThis " "is " "the " prom "ise " "of " "lovel "
  "\nThere " "shall " "be " sea "sons " re fresh "ing, "
  "\nSent " "from " "the " Sa "viour " a "bove. "
  "\nShow" "ers " "of " bless "ing, "
  "\nShow" "ers " "of " bless "ing " "we " "need; "
  "\nMer" cy- "drops " "round " "us " "are " fall "ing, "
  "\nBut " "for " "the " show "ers " "we " "plead. "

  \set stanza = "2."
  "\n\"There " "shall " "be " show "ers " "of " bless "ing\"— "
  "\nPre" "cious " re vi "ving " a "gain; "
  "\nO" "ver " "the " "hills " "and " "the " val "leys, "
  "\nSound " "of " a bun "dance " "of " "rain. "
  "\nShow" "ers " "of " bless "ing, "
  "\nShow" "ers " "of " bless "ing " "we " "need; "
  "\nMer" cy- "drops " "round " "us " "are " fall "ing, "
  "\nBut " "for " "the " show "ers " "we " "plead. "

  \set stanza = "3."
  "\n\"There " "shall " "be " show "ers " "of " bless "ing:\" "
  "\nSend " "them " up "on " "us, " "O " "Lord! "
  "\nGrant " "to " "us " "now " "a " re fresh "ing; "
  "\nCome, " "and " "now " hon "our " "Thy " "Word. "
  "\nShow" "ers " "of " bless "ing, "
  "\nShow" "ers " "of " bless "ing " "we " "need; "
  "\nMer" cy- "drops " "round " "us " "are " fall "ing, "
  "\nBut " "for " "the " show "ers " "we " "plead. "

  \set stanza = "4."
  "\n\"There " "shall " "be " show "ers " "of " bless "ing:\" "
  "\nOh " "that " to "day " "they " "might " "fall. "
  "\nNow " "as " "to " "God " "we're " con fess "ing, "
  "\nNow " "as " "on " Je "sus " "we " "call. "
  "\nShow" "ers " "of " bless "ing, "
  "\nShow" "ers " "of " bless "ing " "we " "need; "
  "\nMer" cy- "drops " "round " "us " "are " fall "ing, "
  "\nBut " "for " "the " show "ers " "we " "plead. "
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
            \new Voice { \global \repeat unfold \verses \alto \bar "|." }
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
  \bookOutputSuffix "midi-sop"
  \score {
%    \articulate
        \new ChoirStaff <<
                                % Soprano staff
          \new Staff = soprano
          <<
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
  \bookOutputSuffix "repeat"
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice \RehearsalTrack
            \new Voice \TempoTrack
            \new NullVoice = "alignerS" \soprano
            \new NullVoice = "aligner"  \alto
            \new Voice = "women" \partCombine { \global \soprano \bar "|." } { \global \alto }
            \new Lyrics \with {alignAboveContext = women} \lyricsto "alignerS" { \chorusSopAbove }
            \new Lyrics \lyricsto "aligner" { \wordsOne \chorus }
            \new Lyrics \lyricsto "aligner"   \wordsTwo
            \new Lyrics \lyricsto "aligner"   \wordsThree
            \new Lyrics \lyricsto "aligner"   \wordsFour
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "aligner" { \repeat unfold \verses \alto }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS { \repeat unfold \verses \chorusSopAbove }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
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
          \new Staff = women \with { printPartCombineTexts = ##f }
          <<
            \new Voice { \repeat unfold \verses \RehearsalTrack }
            \new Voice { \repeat unfold \verses \TempoTrack }
            \new NullVoice = "alignerS" { \repeat unfold \verses \soprano }
            \new NullVoice = "aligner" { \repeat unfold \verses \alto }
            \new Voice = "women" \partCombine { \global \repeat unfold \verses \soprano \bar "|." }
                                               { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \new Lyrics \with {alignAboveContext = women} \lyricsto alignerS { \repeat unfold \verses \chorusSopAbove }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                              \wordsFour  \chorus
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
  }
}
