\version "2.25.0"

\include "articulate.ly"

today = #(strftime "%Y-%m-%d %H:%M:%S" (localtime (current-time)))

\header {
% centered at top
%  dedication  = "dedication"
  title       = "They that Wait upon the Lord."
  subtitle    = "Sankey No. 753"
  subsubtitle = "Sankey 880 No. 607"
%  instrument  = "instrument"
  
% arrangement of following lines:
%
%  poet    composer
%  meter   arranger
%  piece       opus

  composer    = \markup\smallCaps "James McGranahan"
%  arranger    = "arranger"
%  opus        = "opus"

  poet        = \markup\smallCaps "G. M. J."
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
  \partial 4
}

RehearsalTrack = {
% \set Score.currentBarNumber = #5
  \textMark \markup { \box \bold "A" } s4 s1*3 s2.
  \textMark \markup { \box \bold "B" } s4 s1*3 s2.
  \textMark \markup { \box \bold "C" } s4 s1*2 s2.
  \textMark \markup { \box \bold "D" } s4 s1*3
  \textMark \markup { \box \bold "E" }    s1*3
  \textMark \markup { \box \bold "F" }    s1*3
  \textMark \markup { \box \bold "G" }    s1*3
  \textMark \markup { \box \bold "H" }    s1*4 s2.
}

TempoTrack = {
  \set Score.tempoHideNote = ##t
  \tempo "Allegretto." 4=120
}

nl = { \bar "||" \break }

soprano = \relative {
  \autoBeamOff
  ees'4 | aes4. 8 8 g f g | aes2 ees4 aes | c4. 8 des4 c | bes2. \bar "|" \break
  ees,4 | bes'4. 8 8 aes g aes | bes2 ees4 c | bes g aes f | ees2.
  \section \sectionLabel \markup\smallCaps "Chorus." \break
  ees4 | c'4.. des16 c8. bes16 aes8. f16 | ees2(f4) aes8. 16 | 4.(g8 aes4) \bar "|" \break
  c4 | bes2. 8 8 | 2 des4 g, | bes2. 8. 16 |
  bes4 8. 16 c4 d | ees2 ees,4 8 8 | ees'2~8. f16 ees8. des16 |
  c2~8. des16 c8. bes16 | a4. 8 c2 | des2. f,8 8 |
  d'2~8. ees16 des8. c16 | bes2~8. c16 bes8. aes16 | g4. 8 f2 |
  ees2. 8 8 | ees'4 des c bes | aes4.(g8) f4 des' | c4. des8 bes2 | aes2.
}

alto = \relative {
  \autoBeamOff
  ees'4 | aes4. 8 8 g f g | aes2 ees4 4 | 4. 8 4 4 | 2.
  ees4 | bes'4. 8 8 aes g aes | bes2 g4 aes | g ees <d f> d | ees2. \section
  ees4 | 4.. f16 ees8. des16 c8. des16 | c2(des4) f8. 16 | ees2.
  aes4 | g2. 8 8 | 2 bes4 ees, | g2. 8. 16 |
  aes4 8. 16 4 4 | g2 ees4 8 8 | c'2~8. des16 c8. bes16 |
  aes2~8. bes16 aes8. g16 | f4. 8 ges2 | f2. des8 8 |
  bes'2~8. c16 bes8. aes16 | g2~8. aes16 g8. f16 | ees4. 8 d2 |
  ees2. 8 8 | 4 4 4 e | f4.(e8) f4 4 | ees4. 8 des2 | c2.
}

tenor = \relative {
  \autoBeamOff
  ees4 |aes4. 8 8 g f g | aes2 ees4 aes | 4. 8 bes4 aes | g2.
  ees4 | bes'4. 8 8 aes g aes | bes2 4 ees | ees bes bes aes | g2. \section
  g4 | aes4 4 4 4 | 8. 16 8. 16 4 8. 16 | 4.(bes8 c4)
  ees8. 16 | 4 4 4 8 8 | ees1~ | 4 8. 16 4 8. 16 |
  d4 8. 16 ees4 f | ees2 ees,4 r | r aes8 8 4 4 |
  aes4 4 8 8 r4 | r c8 c aes4 4 | 8. 16 4 4 r |
  r4 g8 8 4 4 | bes4 4 ees8 8 r4 | r bes8 8 4 aes |
  g8. 16 4 4 8 8 | aes4 g aes c | 4.(bes8) aes4 4 | 4. bes8 g2 | aes2.
}

bass = \relative {
  \autoBeamOff
  ees4 | aes4. 8 8 g f g | aes2 ees4 c | aes4. 8 g4 aes8[c] | ees2.
  ees4  bes'4. 8 8 aes g aes | bes2 ees,4 aes, | bes4 4 4 4 | ees2. \section
  ees4 | aes,4 4 4 4 | 8. 16 8. 16 des4 8. 16 | c4.(bes8 aes4)
  aes8. 16 | ees'4 4 4 8 8 | 2 4 4 | 4 8. 16 4 8. 16 |
  bes'4 8. 16 4 4 | ees,2 4 r | r aes,8 8 4 4 |
  aes4 4 8 8 r4 | r f'8 8 ees4 4 | des8. 16 4 4 r |
  r4 ees8 8 4 4 | 4 4 8 8 r4 | r4 ees8 8 bes4 4 |
  ees8. 16 4 4 8 des | c4 ees aes g | f(c) des4 4 | ees4. 8 2 | aes,2.
}

nom  = {   \set ignoreMelismata = ##t }
yesm = { \unset ignoreMelismata       }

chorus = \lyricmode {
  For “they that wait up -- on the Lord __
  shall re -- new __ their strength,
  they shall mount up with wings,
  they shall mount up with wings as ea -- gles;
  They shall run __ and not be wea -- ry;
  they shall walk and not faint;
  They shall run __ and not be wea -- ry;
  they shall walk and not faint;
  They shall run __ and not be wea -- ry,
  shall walk and not faint.”
}

chorusTenor = \lyricmode {
  \repeat unfold 34 \skip 1
  that wait up -- on the Lord shall re -- new, __
  shall re -- new their strength,
  they shall mount __ up with wings,
  \repeat unfold 9 \skip 1
  They shall run and not be wea -- ry,
  they shall walk, shall walk and not faint;
  They shall run and not be wea -- ry,
  they shall walk, shall walk and not faint;
  \repeat unfold 13 \skip 1
}

chorusBass = \lyricmode {
  \repeat unfold 48 \skip 1
  they shall mount __ up, shall mount up with wings,
  \repeat unfold 54 \skip 1
}

verses = 3

wordsOne = \lyricmode {
  \set stanza = "1."
  Ho, reap -- ers in the whi -- tened har -- vest!
  Oft fee -- ble, faint and few;
  Come, wait up -- on the bles -- sed Mas -- ter,
  Our strength He will re -- new.
}
  
wordsTwo = \lyricmode {
  \set stanza = "2."
  Too oft a -- wea -- ry and dis -- cour -- aged,
  We pour a sad com -- plaint;
  Be -- liev -- ing in a \markup\italic liv -- \markup\italic ing Sa -- viour,
  Why should we ev -- er faint?
}
  
wordsThree = \lyricmode {
  \set stanza = "3."
  Re -- joice! for He is with us al -- way,
  Lo, ev -- en to the end!
  Look up! take cou -- rage and go for -- ward—
  All need -- ed grace He'll send!
}
  
wordsMidi = \lyricmode {
  \set stanza = "1."
  "Ho, " reap "ers " "in " "the " whi "tened " har "vest! "
  "\nOft " fee "ble, " "faint " "and " "few; "
  "\nCome, " "wait " up "on " "the " bles "sed " Mas "ter, "
  "\nOur " "strength " "He " "will " re "new. "
  "\nFor " "“they " "that " "wait " up "on " "the " "Lord " 
  "\nshall " re "new "  "their " "strength, "
  "\nthey " "shall " "mount " "up " "with " "wings, "
  "\nthey " "shall " "mount " "up " "with " "wings " "as " ea "gles; "
  "\nThey " "shall " "run "  "and " "not " "be " wea "ry; "
  "\nthey " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run "  "and " "not " "be " wea "ry; "
  "\nthey " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run "  "and " "not " "be " wea "ry, "
  "\nshall " "walk " "and " "not " "faint.”\n"

  \set stanza = "2."
  "\nToo " "oft " a wea "ry " "and " dis cour "aged, "
  "\nWe " "pour " "a " "sad " com "plaint; "
  "\nBe" liev "ing " "in " "a " liv "ing " Sa "viour, "
  "\nWhy " "should " "we " ev "er " "faint? "
  "\nFor " "“they " "that " "wait " up "on " "the " "Lord " 
  "\nshall " re "new "  "their " "strength, "
  "\nthey " "shall " "mount " "up " "with " "wings, "
  "\nthey " "shall " "mount " "up " "with " "wings " "as " ea "gles; "
  "\nThey " "shall " "run "  "and " "not " "be " wea "ry; "
  "\nthey " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run "  "and " "not " "be " wea "ry; "
  "\nthey " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run "  "and " "not " "be " wea "ry, "
  "\nshall " "walk " "and " "not " "faint.”\n"

  \set stanza = "3."
  "\nRe" "joice! " "for " "He " "is " "with " "us " al "way, "
  "\nLo, " ev "en " "to " "the " "end! "
  "\nLook " "up! " "take " cou "rage " "and " "go " for "ward— "
  "\nAll " need "ed " "grace " "He'll " "send! "
  "\nFor " "“they " "that " "wait " up "on " "the " "Lord " 
  "\nshall " re "new "  "their " "strength, "
  "\nthey " "shall " "mount " "up " "with " "wings, "
  "\nthey " "shall " "mount " "up " "with " "wings " "as " ea "gles; "
  "\nThey " "shall " "run "  "and " "not " "be " wea "ry; "
  "\nthey " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run "  "and " "not " "be " wea "ry; "
  "\nthey " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run "  "and " "not " "be " wea "ry, "
  "\nshall " "walk " "and " "not " "faint.” "
}

wordsMidiTenor = \lyricmode {
  \set stanza = "1."
  "Ho, " reap "ers " "in " "the " whi "tened " har "vest! "
  "\nOft " fee "ble, " "faint " "and " "few; "
  "\nCome, " "wait " up "on " "the " bles "sed " Mas "ter, "
  "\nOur " "strength " "He " "will " re "new. "
  "\nFor " "they " "that " "wait, "
  "\nthat " "wait " up "on " "the " "Lord " "shall " re "new, " 
  "\nshall " re "new " "their " "strength, "
  "\nthey " "shall " "mount "  "up " "with " "wings, "
  "\nthey " "shall " "mount " "up " "with " "wings " "as " ea "gles; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nthey " "shall " "walk, " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nthey " "shall " "walk, " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nshall " "walk " "and " "not " "faint.”\n"

  \set stanza = "2."
  "\nToo " "oft " a wea "ry " "and " dis cour "aged, "
  "\nWe " "pour " "a " "sad " com "plaint; "
  "\nBe" liev "ing " "in " "a " liv "ing " Sa "viour, "
  "\nWhy " "should " "we " ev "er " "faint? "
  "\nFor " "they " "that " "wait, "
  "\nthat " "wait " up "on " "the " "Lord " "shall " re "new, " 
  "\nshall " re "new " "their " "strength, "
  "\nthey " "shall " "mount "  "up " "with " "wings, "
  "\nthey " "shall " "mount " "up " "with " "wings " "as " ea "gles; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nthey " "shall " "walk, " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nthey " "shall " "walk, " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nshall " "walk " "and " "not " "faint.”\n"

  \set stanza = "3."
  "\nRe" "joice! " "for " "He " "is " "with " "us " al "way, "
  "\nLo, " ev "en " "to " "the " "end! "
  "\nLook " "up! " "take " cou "rage " "and " "go " for "ward— "
  "\nAll " need "ed " "grace " "He'll " "send! "
  "\nFor " "they " "that " "wait, "
  "\nthat " "wait " up "on " "the " "Lord " "shall " re "new, " 
  "\nshall " re "new " "their " "strength, "
  "\nthey " "shall " "mount "  "up " "with " "wings, "
  "\nthey " "shall " "mount " "up " "with " "wings " "as " ea "gles; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nthey " "shall " "walk, " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nthey " "shall " "walk, " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nshall " "walk " "and " "not " "faint.” "
}

wordsMidiBass = \lyricmode {
  \set stanza = "1."
  "Ho, " reap "ers " "in " "the " whi "tened " har "vest! "
  "\nOft " fee "ble, " "faint " "and " "few; "
  "\nCome, " "wait " up "on " "the " bles "sed " Mas "ter, "
  "\nOur " "strength " "He " "will " re "new. "
  "\nFor " "they " "that " "wait, "
  "\nthat " "wait " up "on " "the " "Lord " "shall " re "new, " 
  "\nshall " re "new " "their " "strength, "
  "\nthey " "shall " "mount " "up, " "shall " "mount " "up " "with " "wings, "
  "\nthey " "shall " "mount " "up " "with " "wings " "as " ea "gles; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nthey " "shall " "walk, " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nthey " "shall " "walk, " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nshall " "walk " "and " "not " "faint.”\n"

  \set stanza = "2."
  "\nToo " "oft " a wea "ry " "and " dis cour "aged, "
  "\nWe " "pour " "a " "sad " com "plaint; "
  "\nBe" liev "ing " "in " "a " liv "ing " Sa "viour, "
  "\nWhy " "should " "we " ev "er " "faint? "
  "\nFor " "they " "that " "wait, "
  "\nthat " "wait " up "on " "the " "Lord " "shall " re "new, " 
  "\nshall " re "new " "their " "strength, "
  "\nthey " "shall " "mount " "up, " "shall " "mount " "up " "with " "wings, "
  "\nthey " "shall " "mount " "up " "with " "wings " "as " ea "gles; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nthey " "shall " "walk, " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nthey " "shall " "walk, " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nshall " "walk " "and " "not " "faint.” "\n

  \set stanza = "3."
  "\nRe" "joice! " "for " "He " "is " "with " "us " al "way, "
  "\nLo, " ev "en " "to " "the " "end! "
  "\nLook " "up! " "take " cou "rage " "and " "go " for "ward— "
  "\nAll " need "ed " "grace " "He'll " "send! "
  "\nFor " "they " "that " "wait, "
  "\nthat " "wait " up "on " "the " "Lord " "shall " re "new, " 
  "\nshall " re "new " "their " "strength, "
  "\nthey " "shall " "mount " "up, " "shall " "mount " "up " "with " "wings, "
  "\nthey " "shall " "mount " "up " "with " "wings " "as " ea "gles; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nthey " "shall " "walk, " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nthey " "shall " "walk, " "shall " "walk " "and " "not " "faint; "
  "\nThey " "shall " "run " "and " "not " "be " wea "ry, "
  "\nshall " "walk " "and " "not " "faint.” "
}

\book {
  \bookOutputSuffix "midi-women"
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
          >>
                                  % Joint tenor/bass staff
          \new Staff = men \with { printPartCombineTexts = ##f }
          <<
            \clef "bass"
            \new Voice \partCombine #'(2 . 88) { \global \tenor } { \global \bass }
            \new NullVoice = alignerT { \tenor }
            \new NullVoice = alignerB { \bass  }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT \chorusTenor
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB \chorusBass
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
            \new NullVoice = alignerB { \repeat unfold \verses \bass  }
          >>
          \new Lyrics \with {alignAboveContext = men} \lyricsto alignerT { \repeat unfold \verses \chorusTenor }
          \new Lyrics \with {alignBelowContext = men} \lyricsto alignerB { \repeat unfold \verses \chorusBass  }
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
