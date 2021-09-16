\version "2.22.1"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "Glorious Things of Thee are Spoken."
  subtitle    = "Sankey No. 221"
  subsubtitle = "Sankey 880 No. 675"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "J. Haydn."
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "John Newton."
  meter       = \markup\smallCaps "8.7.D"
  piece       = \markup\smallCaps "Austria."

% centered at bottom
% tagline     = "tagline" % default lilypond version
  tagline   = ##f
  copyright   = \today
}

% #(set-global-staff-size 16)

global = {
  \key f \major
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
  f'4. g8 a4 g
  bes4 a g8[e] f4
  d'4 c bes a
  g4 a8[f] c'2
  f,4. g8 a4 g % B
  bes4 a g8[e] f4
  d'4 c bes a
  g4 a8[f] c'2
  g4 a g8[e] c4 % C
  bes'4 a g8[e] c4
  c'4 bes a4. 8
  b4. 8 c2
  f4. e8 d4 c % D
  d4. c8 c[bes] a4
  g4 a8[bes] c[d] bes[g]
  f4 e f2
}

alto = \relative {
  \autoBeamOff
  c'4. 8 f4 e
  c4 4 4 4
  f4 4 g f
  d4 f e2
  f4. 8 4 e % B
  c4 4 bes a
  f'4 4 d8[e] f4
  d4 f e2
  e4 f e8[c] 4 % C
  d8[e] f4 e8[c] 4
  c4 d8[e] f4. 8
  f4. 8 e2
  f4. 8 4 4 % D
  f4. 8 8[c] 4
  c4 4 f8[ees] d4
  c4 bes a2
}

tenor = \relative {
  \autoBeamOff
  a4. bes8 c4 4
  g4 a bes a
  bes4 a c c
  d4 4 c2
  a4 b c c % B
  g4 a e8[g] f4
  bes4 a bes c
  d4 4 c2
  c4 4 8[g] e4 % C
  f8[g] a[b] c[g] e4
  a4 g f a
  g4 d' c2
  c4. 8 bes4 a % D
  bes4. a8 8[g] f4
  e4 4 f f8[g]
  a4 g f2
}

bass = \relative {
  \autoBeamOff
  f4. 8 4 c
  e4 f c f
  f4 4 e f
  bes,4 b c2
  d4. 8 c4 4 % B
  e4 f c f
  bes,4 f' g f
  bes,4 b c2
  c4 4 4 4 % C
  c4 4 4 4
  a4 bes8[c] d4. 8
  g,4 g' c,2
  a'4. 8 bes4 f % D
  bes,4. c8 d[e] f4
  bes,4 4 a bes
  c4 4 f,2
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
}

wordsOne = \lyricmode {
  \set stanza = "1."
  Glo -- rious things of Thee are spo -- ken,
  Zi -- on ci -- ty of our God!
  He, whose word can -- not be bro -- ken,
  Form'd thee for His own a -- bode.
  On the Rock of A -- ges found -- ed,
  What can shake thy sure re -- pose?
  With sal -- va -- tion's walls sur -- round -- ed,
  Thou may'st smile at all thy foes.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  See, the streams of liv -- ing wa -- ters,
  Spring -- ing from e -- ter -- nal love,
  Wee sup -- ply thy sons and duagh -- ters,
  And all fear of want re -- move;
  Who can faint, while such a riv -- er
  Ev -- er flows their thirst t'ass -- uage?—
  Grace, which, like the Lord, the giv -- er,
  Nev -- er fails from age to age.
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Round each hab -- i -- ta -- tion hov -- 'ring,
  See the cloud and fier ap -- pear!
  For a glo -- ry and a cov -- 'ring,
  Show -- ing that the Lord is near;
  He who gives them dai -- ly man -- na,
  He who list -- ens when they cry—
  Let Him hear the loud ho -- san -- na
  Ris -- ing to His throne on high.
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Glo" "rious " "things " "of " "Thee " "are " spo "ken, "
  "\nZi" "on " ci "ty " "of " "our " "God! "
  "\nHe, " "whose " "word " can "not " "be " bro "ken, "
  "\nForm'd " "thee " "for " "His " "own " a "bode. "
  "\nOn " "the " "Rock " "of " A "ges " found "ed, "
  "\nWhat " "can " "shake " "thy " "sure " re "pose? "
  "\nWith " sal va "tion's " "walls " sur round "ed, "
  "\nThou " "may'st " "smile " "at " "all " "thy " "foes. "

  \set stanza = "2."
  "\nSee, " "the " "streams " "of " liv "ing " wa "ters, "
  "\nSpring" "ing " "from " e ter "nal " "love, "
  "\nWee " sup "ply " "thy " "sons " "and " duagh "ters, "
  "\nAnd " "all " "fear " "of " "want " re "move; "
  "\nWho " "can " "faint, " "while " "such " "a " riv "er "
  "\nEv" "er " "flows " "their " "thirst " t'ass "uage?— "
  "\nGrace, " "which, " "like " "the " "Lord, " "the " giv "er, "
  "\nNev" "er " "fails " "from " "age " "to " "age. "

  \set stanza = "3."
  "\nRound " "each " hab i ta "tion " hov "'ring, "
  "\nSee " "the " "cloud " "and " "fier " ap "pear! "
  "\nFor " "a " glo "ry " "and " "a " cov "'ring, "
  "\nShow" "ing " "that " "the " "Lord " "is " "near; "
  "\nHe " "who " "gives " "them " dai "ly " man "na, "
  "\nHe " "who " list "ens " "when " "they " "cry— "
  "\nLet " "Him " "hear " "the " "loud " ho san "na "
  "\nRis" "ing " "to " "His " "throne " "on " "high. "
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
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
    system-system-spacing.basic-distance = #15
    system-separator-markup = \slashSeparator
  }
  \score {
        \new ChoirStaff <<
                                  % Joint soprano/alto staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \new Voice {
               \RehearsalTrack
               \RehearsalTrack
               \RehearsalTrack
            }
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new NullVoice = "aligner" { \soprano \soprano \soprano }
            \new Voice = "women" \partCombine { \global \soprano \soprano \soprano \bar "|." }
                                               { \global \alto \nl \alto \nl \alto }
            \new Lyrics \lyricsto "aligner" { \wordsOne   \chorus
                                              \wordsTwo   \chorus
                                              \wordsThree \chorus
                                            }
          >>
                                  % Joint tenor/bass staff
          \new Staff \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice = "men" \partCombine { \global \tenor \tenor \tenor }
                                            { \global \bass \bass \bass }
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
            \new Voice {
              \TempoTrack
              \TempoTrack
              \TempoTrack
            }
            \new Voice { \global \soprano \soprano \soprano \bar "|." }
            \addlyrics\wordsMidi
          >>
                                % Alto staff
          \new Staff = alto
          <<
            \new Voice { \global \alto \nl \alto \nl \alto }
          >>
                                % Tenor staff
          \new Staff = tenor
          <<
            \clef "treble_8"
            \new Voice { \global \tenor \tenor \tenor }
          >>
                                % Bass staff
          \new Staff = bass
          <<
            \clef "bass"
            \new Voice { \global \bass \bass \bass }
          >>
        >>
    \midi {}
  }
}
