\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Trusting in Thee."
  subtitle    = "Sankey No. 567"
%  subsubtitle = "Sankey 880 No. Y"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "Geo. C. Stebbins."
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

global = {
  \key aes \major
  \time 4/4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s1*3
  \textMark \markup { \box \bold "B" } s1*3
  \textMark \markup { \box \bold "C" } s1*4
  \textMark \markup { \box \bold "D" } s1*3
  \textMark \markup { \box \bold "E" } s1*3
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 d8. f16 ees4 aes8 bes | c4 des8. aes16 c2 | 4 bes8. ees,16 bes'2 |
  bes4 aes8. c,16 ees2 | 4 d8. f16 ees4 aes8 bes | c4 des8. aes16 c2 |
  ees4 c8 aes bes4 ees,8 bes' | c2. r4 \section \sectionLabel \markup\smallCaps Chorus. aes2 des | des c |
  c4 bes8. 16 4 c8 d | ees2.\fermata r4 | ees,4 d8. f16 ees4 aes8 bes |
  c4 | des8. aes16 c2 | ees4 c8 aes bes4 ees,8 bes' | aes2. r4 |
}

alto = \relative {
  \autoBeamOff
  c'4 b8. des16 c4 ees8 8 | 4 f8. 16 ees2 | 4 des8. 16 2 |
  c4 8. 16 2 | 4 b8. des16 c4 ees8 8 | 4 f8. 16 ees2 |
  aes4 ees8 c des4 8 8 | c2. r4 | f2 f | f ees |
  ees4 8. 16 d4 ees8 aes | g4 aes bes\fermata r4 | c,4 b8. des16 c4 ees8 8 |
  ees4 f8. 16 ees2 | aes4 ees8 c des4 8 8 | c2. r4 |
}

tenor = \relative {
  \autoBeamOff
  aes4 8. 16 4 8 g | aes4 8. 16 2 | g4 8. 16 2 |
  aes4 ees8. 16 aes2 | 4 8. 16 4 8 g | aes4 8. 16 2 |
  c4 aes8 8 g4 8 8 | aes2. r4 | 4 des a a | a a a a |
  aes4 g8. 16 f4 aes8 bes | 4 c des\fermata r | aes4 8. 16 4 8 g |
  aes4 8. 16 2 | c4 aes8 8 g4 8 8 | aes2. r4 |
}

bass = \relative {
  \autoBeamOff
  aes,4 8. 16 4 c8 ees | aes4 8. 16 2 | ees4 8. 16 2 |
  aes,4 8. 16 2 | 4 8. 16 4 c8 ees | aes4 8. 16 2 |
  ees4 8 8 4 8 8 | aes,2. r4 | des4 4 4 4 | aes4 4 4 4 |
  ees'4 8. 16 bes4 8 8 | ees2.\fermata r4 | aes,4 8. 16 4 c8 ees |
  aes4 8. 16 2 | ees4 8 8 4 8 8 | aes,2. r4 |
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  Trust -- ing, trust -- ing, Je -- sus my Sa -- viour in Thee;
  Oh, what a fore -- taste of glo -- ry is mine,
  While I am trust -- ing in Thee!
}

chorusMen = \lyricmode {
  \tiny
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  Trust -- ing trust -- ing, I am trust -- ing,
  _ _ _ _ _ _ _ in Thee;
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _
}

verses = 4

wordsOne = \lyricmode {
  \set stanza = "1."
  Je -- sus my Shep -- herd and Sa -- viour Di -- vine,
  Trust -- ing in Thee, trust -- ing in Thee.
  Oh what a fore -- taste of glo -- ry is mine,
  While I am trust -- ing in Thee!
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  What tho' a -- round me the bil -- lows may roll?
  Trust -- ing in Thee, trust -- ing in Thee.
  Firm on the Rock I have an -- chored my soul:
  Lord, I am trust -- ing in Thee!
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  What if the sha -- dows e -- com -- pass my way?
  Trust -- ing in Thee, trust -- ing in Thee.
  Lord, Thou hast pro -- mised Thy strength as my day,
  While I am trust -- ing in Thee!
}
  
wordsFour = \lyricmode {
  \set stanza = "4."
  Je -- sus, my Sa -- viour, Re -- deem -- er and Friend,
  Trust -- ing in Thee, trust -- ing in Thee.
  Thou wilt de -- liv -- er, and Thou wilt de -- fend,
  While I am trust -- ing in Thee!
}
  
wordsSopMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "my " Shep "herd " "and " Sa "viour " Di "vine, "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nOh " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
  "\nTrust" "ing, " trust "ing, " Je "sus " "my " Sa "viour " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee!\n"

  \set stanza = "2."
  "\nWhat " "tho' " a "round " "me " "the " bil "lows " "may " "roll? "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nFirm " "on " "the " "Rock " "I " "have " an "chored " "my " "soul: "
  "\nLord, " "I " "am " trust "ing " "in " "Thee! "
  "\nTrust" "ing, " trust "ing, " Je "sus " "my " Sa "viour " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee!\n"

  \set stanza = "3."
  "\nWhat " "if " "the " sha "dows " e com "pass " "my " "way? "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nLord, " "Thou " "hast " pro "mised " "Thy " "strength " "as " "my " "day, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
  "\nTrust" "ing, " trust "ing, " Je "sus " "my " Sa "viour " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee!\n"

  \set stanza = "4."
  "\nJe" "sus, " "my " Sa "viour, " Re deem "er " "and " "Friend, "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nThou " "wilt " de liv "er, " "and " "Thou " "wilt " de "fend, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
  "\nTrust" "ing, " trust "ing, " Je "sus " "my " Sa "viour " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
}

wordsAltoMidi = \lyricmode {
  \set stanza = "1."
  Je -- sus my Shep -- herd and Sa -- viour Di -- vine,
  Trust -- ing in Thee, trust -- ing in Thee.
  Oh what a fore -- taste of glo -- ry is mine,
  While I am trust -- ing in Thee!
  Trust -- ing, trust -- ing, Je -- sus my Sa -- viour in Thee, in Thee;
  Oh, what a fore -- taste of glo -- ry is mine,
  While I am trust -- ing in Thee!

  \set stanza = "2."
  What tho' a -- round me the bil -- lows may roll?
  Trust -- ing in Thee, trust -- ing in Thee.
  Firm on the Rock I have an -- chored my soul:
  Lord, I am trust -- ing in Thee!
  Trust -- ing, trust -- ing, Je -- sus my Sa -- viour in Thee, in Thee;
  Oh, what a fore -- taste of glo -- ry is mine,
  While I am trust -- ing in Thee!

  \set stanza = "3."
  What if the sha -- dows e -- com -- pass my way?
  Trust -- ing in Thee, trust -- ing in Thee.
  Lord, Thou hast pro -- mised Thy strength as my day,
  While I am trust -- ing in Thee!
  Trust -- ing, trust -- ing, Je -- sus my Sa -- viour in Thee, in Thee;
  Oh, what a fore -- taste of glo -- ry is mine,
  While I am trust -- ing in Thee!

  \set stanza = "4."
  Je -- sus, my Sa -- viour, Re -- deem -- er and Friend,
  Trust -- ing in Thee, trust -- ing in Thee.
  Thou wilt de -- liv -- er, and Thou wilt de -- fend,
  While I am trust -- ing in Thee!
  Trust -- ing, trust -- ing, Je -- sus my Sa -- viour in Thee, in Thee;
  Oh, what a fore -- taste of glo -- ry is mine,
  While I am trust -- ing in Thee!
}

wordsAltoMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "my " Shep "herd " "and " Sa "viour " Di "vine, "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nOh " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
  "\nTrust" "ing, " trust "ing, " Je "sus " "my " Sa "viour " "in " "Thee, " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee!\n"

  \set stanza = "2."
  "\nWhat " "tho' " a "round " "me " "the " bil "lows " "may " "roll? "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nFirm " "on " "the " "Rock " "I " "have " an "chored " "my " "soul: "
  "\nLord, " "I " "am " trust "ing " "in " "Thee! "
  "\nTrust" "ing, " trust "ing, " Je "sus " "my " Sa "viour " "in " "Thee, " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee!\n"

  \set stanza = "3."
  "\nWhat " "if " "the " sha "dows " e com "pass " "my " "way? "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nLord, " "Thou " "hast " pro "mised " "Thy " "strength " "as " "my " "day, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
  "\nTrust" "ing, " trust "ing, " Je "sus " "my " Sa "viour " "in " "Thee, " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee!\n"

  \set stanza = "4."
  "\nJe" "sus, " "my " Sa "viour, " Re deem "er " "and " "Friend, "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nThou " "wilt " de liv "er, " "and " "Thou " "wilt " de "fend, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
  "\nTrust" "ing, " trust "ing, " Je "sus " "my " Sa "viour " "in " "Thee, " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
}

wordsTenorMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "my " Shep "herd " "and " Sa "viour " Di "vine, "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nOh " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
  "\nTrust" "ing, " trust "ing, " "I " "am " trust "ing, "
  "\nJe" "sus " "my " Sa "viour " "in " "Thee, " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee!\n"

  \set stanza = "2."
  "\nWhat " "tho' " a "round " "me " "the " bil "lows " "may " "roll? "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nFirm " "on " "the " "Rock " "I " "have " an "chored " "my " "soul: "
  "\nLord, " "I " "am " trust "ing " "in " "Thee! "
  "\nJe" "sus " "my " Sa "viour " "in " "Thee, " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee!\n"

  \set stanza = "3."
  "\nWhat " "if " "the " sha "dows " e com "pass " "my " "way? "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nLord, " "Thou " "hast " pro "mised " "Thy " "strength " "as " "my " "day, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
  "\nJe" "sus " "my " Sa "viour " "in " "Thee, " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee!\n"

  \set stanza = "4."
  "\nJe" "sus, " "my " Sa "viour, " Re deem "er " "and " "Friend, "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nThou " "wilt " de liv "er, " "and " "Thou " "wilt " de "fend, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
  "\nJe" "sus " "my " Sa "viour " "in " "Thee, " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
}

wordsBassMidi = \lyricmode {
  \set stanza = "1."
  "Je" "sus " "my " Shep "herd " "and " Sa "viour " Di "vine, "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nOh " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
  "\nTrust" "ing, " trust "ing, " "I " "am " trust "ing, "
  "\nJe" "sus " "my " Sa "viour " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee!\n"

  \set stanza = "2."
  "\nWhat " "tho' " a "round " "me " "the " bil "lows " "may " "roll? "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nFirm " "on " "the " "Rock " "I " "have " an "chored " "my " "soul: "
  "\nLord, " "I " "am " trust "ing " "in " "Thee! "
  "\nTrust" "ing, " trust "ing, " "I " "am " trust "ing, "
  "\nJe" "sus " "my " Sa "viour " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee!\n"

  \set stanza = "3."
  "\nWhat " "if " "the " sha "dows " e com "pass " "my " "way? "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nLord, " "Thou " "hast " pro "mised " "Thy " "strength " "as " "my " "day, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
  "\nTrust" "ing, " trust "ing, " "I " "am " trust "ing, "
  "\nJe" "sus " "my " Sa "viour " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee!\n"

  \set stanza = "4."
  "\nJe" "sus, " "my " Sa "viour, " Re deem "er " "and " "Friend, "
  "\nTrust" "ing " "in " "Thee, " trust "ing " "in " "Thee. "
  "\nThou " "wilt " de liv "er, " "and " "Thou " "wilt " de "fend, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
  "\nTrust" "ing, " trust "ing, " "I " "am " trust "ing, "
  "\nJe" "sus " "my " Sa "viour " "in " "Thee; "
  "\nOh, " "what " "a " fore "taste " "of " glo "ry " "is " "mine, "
  "\nWhile " "I " "am " trust "ing " "in " "Thee! "
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
            \addlyrics \wordsSopMidi
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
            \new Voice { \repeat unfold \verses \TempoTrack     }
            \new Voice { \global \repeat unfold \verses \soprano \bar "|." }
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \repeat unfold \verses { \alto \nl } \bar "|." }
            \addlyrics \wordsAltoMidi
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
            \addlyrics \wordsTenorMidi
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
            \addlyrics \wordsBassMidi
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
      #(layout-set-staff-size 20)
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
