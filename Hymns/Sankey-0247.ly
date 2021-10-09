\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Oh, Serve the Lord."
  subtitle    = "Sankey No. 247"
  subsubtitle = "C. C. No. 148"
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
  meter       = \markup\smallCaps "7.6.d."
%  piece       = \markup\smallCaps "piece"

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 18)

global = {
  \key g \major
  \time 6/8
  \partial 8
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \mark \markup { \box "A" } s8  s2.*4 s4.
  \mark \markup { \box "B" } s4. s2.*4
  \mark \markup { \box "C" }     s2.*4 s4. s4
  \mark \markup { \box "D" } s8  s2.*4 s4.
  \mark \markup { \box "E" } s4. s2.*4 s4. s4
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  d'8
  d4 8 d8[g] a
  b4. g4 b8
  d4 8 4 a8
  b4.~4 d,8
  d4 8 \bar "|" \break d8[g] a
  b4. g4 b8 % B
  a4 g8 fis4 e8
  d4.~4 8
  d8[fis] a c4 e8
  d4. b4 d,8 % C
  d8[fis] a c4 e8
  d4.~4 b8
  b4 8 8[d] c
  b4. g4 \bar "|" \break d8
  e8[fis] g8 4 fis8
  g4.~4 \bar "||" d'8^\markup\smallCaps Chorus.
  d4 a8 b4 c8 % D
  c4. b4 e8
  e4 b8 \bar "|" \break c4 d8
  c4.~4 8 % E
  c4 a8 b4 c8
  d4. g,4 c8
  b4 g8 a4 g8
  g4.~4
}

alto = \relative {
  \autoBeamOff
  b8
  b4 8 8 d fis
  g4. d4 8
  fis4 8 4 8
  g4.~4 b,8
  b4 8 8[d] fis
  g4. d4 8 % B
  d4 e8 d4 cis8
  d4.~4 8
  d8[fis] 8 4 8
  g4. d4 8 % C
  d8[fis] 8 4 8
  g4.~4 8
  g4 8 8[f] e
  d4. 4 8
  c8[d] d c4 8 % D
  b4.~4 g'8
  fis4 8 g4 a8
  a4. g4 8
  gis4 8 a4 b8
  a4.~4 8
  a4 fis8 g4 a8
  b4(g8) 4 8
  g4 d8 fis4 d8
  d4.~4
}

tenor = \relative {
  \autoBeamOff
  g8
  g4 8 8[b] d
  d4. b4 g8
  a4 8 4 d8
  d4.~4 g,8
  g4 8 8[b] d
  d4. b4 d8 % B
  d4 b8 a4 g8
  fis4.~4 8
  fis8[a] d a4 c8
  b4. g4 b8 % C
  a4 d8 a4 c8
  b4.~4 d8
  d4 8 8[b] g
  g4. b4 g8
  g8[a] g a4 8 % D
  g4.~4 b8
  a4 d8 4 8
  d4. 4 b8
  b4 e8 4 8
  e4.~4 d8 % E
  d4 8 4 8
  d4(b8) 4 e8
  d4 b8 c4 b8
  b4.~4
}

bass = \relative {
  \autoBeamOff
  g,8
  g4 8 4 d'8
  g4. 4 8
  d4 8 4 8
  g4.~4 8
  g4 8 4 d8
  g4. 4 8 % B
  fis4 g8 e4 a,8
  d4.~4 8
  d4 8 4 8
  g4. 4 8 % C
  fis8[d] 8 4 8
  g4.~4 8
  g4 8 4 8
  g4. 4 b,8
  c4 b8 d4 8 % D
  g,4.~4 g'8
  d4 8 4 8
  g4. 4 8
  e4 8 4 8
  a4.~4 d,8 % E
  d4 c'8 b4 a8
  g4. e4 a,8
  d4 8 4 g,8
  g4.~4
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  "\"Oh," serve the Lord with glad -- "ness\""
  And come be -- fore His throne;
  He is our great re -- deem -- er,
  And He is God a -- lone.
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  "\"Oh," serve the Lord with glad -- "ness,\""
  And come be -- fore His throne;
  He is the great Cre -- a -- tor,
  And He is God a -- lone;
  The heavens de -- clare His glo -- ry,
  The earth His power dis -- plays;
  While mil -- lions with -- out num -- ber
  To Him glad an -- thems raise.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  "\"Oh," serve the Lord with glad -- "ness,\""
  And glad ho -- san -- nas bring
  To Him the Sov -- 'reign Ru -- ler,
  The u -- ni --ver -- sal King;
  For ev -- er thro' th a -- ges
  His teeth un -- chang -- ing stands;
  Let all the na -- tions fear Him,
  And rev -- 'rence His com -- mands.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  "\"Oh," serve the Lord with glad -- "ness,\""
  His love to all pro -- claim;
  Ex -- alt Him in the high -- est,
  And spread a -- broad His fame;
  All ma -- jes -- ty, do -- min -- ion,
  All power and glo -- ry, be
  To Him who reigns in tri -- umph,
  Thro' all e -- ter -- ni -- ty.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "\"Oh, " "serve " "the " "Lord " "with " glad "ness,\" "
  "\nAnd " "come " be "fore " "His " "throne; "
  "\nHe " "is " "the " "great " Cre a "tor, "
  "\nAnd " "He " "is " "God " a "lone; "
  "\nThe " "heavens " de "clare " "His " glo "ry, "
  "\nThe " "earth " "His " "power " dis "plays; "
  "\nWhile " mil "lions " with "out " num "ber "
  "\nTo " "Him " "glad " an "thems " "raise. "
  "\n\"Oh, " "serve " "the " "Lord " "with " glad "ness\" "
  "\nAnd " "come " be "fore " "His " "throne; "
  "\nHe " "is " "our " "great " re deem "er, "
  "\nAnd " "He " "is " "God " a "lone. "

  \set stanza = "2."
  "\n\"Oh, " "serve " "the " "Lord " "with " glad "ness,\" "
  "\nAnd " "glad " ho san "nas " "bring "
  "\nTo " "Him " "the " Sov "'reign " Ru "ler, "
  "\nThe " u niver "sal " "King; "
  "\nFor " ev "er " "thro' " "th " a "ges "
  "\nHis " "teeth " un chang "ing " "stands; "
  "\nLet " "all " "the " na "tions " "fear " "Him, "
  "\nAnd " rev "'rence " "His " com "mands. "
  "\n\"Oh, " "serve " "the " "Lord " "with " glad "ness\" "
  "\nAnd " "come " be "fore " "His " "throne; "
  "\nHe " "is " "our " "great " re deem "er, "
  "\nAnd " "He " "is " "God " a "lone. "

  \set stanza = "3."
  "\n\"Oh, " "serve " "the " "Lord " "with " glad "ness,\" "
  "\nHis " "love " "to " "all " pro "claim; "
  "\nEx" "alt " "Him " "in " "the " high "est, "
  "\nAnd " "spread " a "broad " "His " "fame; "
  "\nAll " ma jes "ty, " do min "ion, "
  "\nAll " "power " "and " glo "ry, " "be "
  "\nTo " "Him " "who " "reigns " "in " tri "umph, "
  "\nThro' " "all " e ter ni "ty. "
  "\n\"Oh, " "serve " "the " "Lord " "with " glad "ness\" "
  "\nAnd " "come " be "fore " "His " "throne; "
  "\nHe " "is " "our " "great " re deem "er, "
  "\nAnd " "He " "is " "God " a "lone. "
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
    paper-height = 2000\mm
    ragged-bottom = true
    system-system-spacing.basic-distance = #22
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
      \context {
        \Staff \RemoveAllEmptyStaves
      }
    }
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
            \new Voice { \repeat unfold \verses \TempoTrack }
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
