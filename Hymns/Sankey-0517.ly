\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "God will take Care of You!"
  subtitle    = "Sankey No. 517"
  subsubtitle = "C. C. No. 189"
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
  \key des \major
  \time 3/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s2.*6
  \mark \markup { \box "B" } s2.*6
  \mark \markup { \box "C" } s2.*6
  \mark \markup { \box "D" } s2.*7
  \mark \markup { \box "E" } s2.*7
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  f'4 4 ges | aes4. bes8 aes4 | f4 ges bes | aes2. | 4 ees f | ges4. f8 ges4 |
  ees4 aes ges | f2. | 4 4 ges | aes4. bes8 aes4 | f4 aes des | bes2. |
  des4 c bes | aes4. f8 des4 | f des ees | des2. \bar "||" | aes'4^\markup\smallCaps Chorus. bes c | des4. c8 des4 |
  ees4 des c | des2. | 4 c bes | aes4. f8 4 | 4 ees des | aes'2. | f4 4 ges |
  aes4. bes8 aes4 | f aes des | f2. | ees4 des bes | aes4. f8 des4 | f des ees | des2. |
}

alto = \relative {
  \autoBeamOff
  des'4 4 ees | f4. ges8 f4 | des4 4 4 | 2. | c4 4 des | ees4. des8 ees4 |
  c4 4 ees | des2. | 4 4 ees | f4. ges8 f4 | des4 f f | ges2. |
  bes4 aes ges | f4. des8 4 | 4 4 c | des2. | aes'4 g ges | f4. ees8 f4 |
  ges4 f ges | f2. | bes4 aes ges | f4. des8 4 | 4 4 bes | c2. | des4 4 ees |
  f4. ges8 f4 | des4 f f | aes2. | ges4 4 4 | f4. des8 4 | 4 bes c | des2. |
}

tenor = \relative {
  \autoBeamOff
  aes4 4 4 | des4. 8 4 | aes4 ges ges | f2. | ees4 aes aes | 4. 8 4 |
  aes4 4 4 | 2. | 4 4 4 | des4. 8 4 | aes des des | 2. |
  des4 4 4 | 4. aes8 f4 | aes f ges | f2. | c'4 des ees | des4. aes8 4 |
  c4 des ees |
  des2. | 4 4 4 | 4. aes8 4 | g4 4 bes | aes2. | 4 4 4 |
  des4. 8 4 | aes des aes | des2. | bes4 4 des | 4. aes8 f4 | aes f ges | f2. |
}

bass = \relative {
  \autoBeamOff
  des4 4 4 | 4. 8 4 | 4 bes ges | des'2. | aes4 4 4 | 4. 8 4 |
  aes4 4 c | des2. | 4 4 4 | 4. 8 4 | 4 4 4 | ges2. |
  ges4 4 ges, | des'4. 8 4 | aes4 4 4 | des2. | aes'4 4 4 | des,4. 8 4 |
  aes'4 4 4 | bes2. | ges4 4 4 | des4. 8 4 | ees4 4 4 | aes,2. | des4 4 4 |
  des4. 8 4 | 4 4 4 | 2. | ges4 4 4 | des4. 8 4 | aes4 4 4 | des2. |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  God will take care of you still to the end;
  Oh, what a Fa -- ther, Re -- deem -- er and Friend!
  Je -- sus will ans -- wer when -- ev -- er you call.
  He will take care of you— trust Him for all!
}

chorusMen = \lyricmode {
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  God will take care of you— be not a -- fraid!
  He is your safe -- guard thro' sun -- shine and shade;
  Ten -- der -- ly watch -- ing and keep -- ing His own,
  He will not leave you to wan -- der a -- lone.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  God will take care of you thro' all the day,
  Shield -- ing your foot -- steps, di -- rect -- ing your way:
  He is your Shep -- herd, Pro -- tec -- tor and Guide,
  Lead -- ing His chil -- dren where still wa -- ters glide.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  God will take care of you, long as you live.
  Grant -- ing you bless -- ings no oth -- er can give;
  He will take care of you when time is past,
  Safe to His king -- dom will bring you at last.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "God " "will " "take " "care " "of " "you— " "be " "not " a "fraid! "
  "\nHe " "is " "your " safe "guard " "thro' " sun "shine " "and " "shade; "
  "\nTen" der "ly " watch "ing " "and " keep "ing " "His " "own, "
  "\nHe " "will " "not " "leave " "you " "to " wan "der " a "lone. "
  "\nGod " "will " "take " "care " "of " "you " "still " "to " "the " "end; "
  "\nOh, " "what " "a " Fa "ther, " Re deem "er " "and " "Friend! "
  "\nJe" "sus " "will " ans "wer " when ev "er " "you " "call. "
  "\nHe " "will " "take " "care " "of " "you— " "trust " "Him " "for " "all!\n"

  \set stanza = "2."
  "\nGod " "will " "take " "care " "of " "you " "thro' " "all " "the " "day, "
  "\nShield" "ing " "your " foot "steps, " di rect "ing " "your " "way: "
  "\nHe " "is " "your " Shep "herd, " Pro tec "tor " "and " "Guide, "
  "\nLead" "ing " "His " chil "dren " "where " "still " wa "ters " "glide. "
  "\nGod " "will " "take " "care " "of " "you " "still " "to " "the " "end; "
  "\nOh, " "what " "a " Fa "ther, " Re deem "er " "and " "Friend! "
  "\nJe" "sus " "will " ans "wer " when ev "er " "you " "call. "
  "\nHe " "will " "take " "care " "of " "you— " "trust " "Him " "for " "all!\n"

  \set stanza = "3."
  "\nGod " "will " "take " "care " "of " "you, " "long " "as " "you " "live. "
  "\nGrant" "ing " "you " bless "ings " "no " oth "er " "can " "give; "
  "\nHe " "will " "take " "care " "of " "you " "when " "time " "is " "past, "
  "\nSafe " "to " "His " king "dom " "will " "bring " "you " "at " "last. "
  "\nGod " "will " "take " "care " "of " "you " "still " "to " "the " "end; "
  "\nOh, " "what " "a " Fa "ther, " Re deem "er " "and " "Friend! "
  "\nJe" "sus " "will " ans "wer " when ev "er " "you " "call. "
  "\nHe " "will " "take " "care " "of " "you— " "trust " "Him " "for " "all! "
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
