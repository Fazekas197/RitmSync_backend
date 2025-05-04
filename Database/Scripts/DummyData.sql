DELETE FROM users;
DELETE FROM user_socials;
DELETE FROM user_instruments;
DELETE FROM user_genres;
DELETE FROM user_experience;
DELETE FROM posts;
DELETE FROM post_socials;
DELETE FROM post_instruments;
DELETE FROM post_genres;

---------------------
--------USERS--------
---------------------

INSERT INTO public.users (id, first_name, last_name, county_id, description, email, open_for_collab, pass_hash, phone) VALUES
(1, 'Liam', 'Byrne', 7, 
'With over a decade of professional drumming experience across Dublin''s vibrant music scene, I bring precision and passion to every beat. Specializing in rock, funk, and jazz fusion, I''ve performed with notable acts like The Midnight Echo and supported international artists on tour. My setup includes a custom Tama Starclassic kit with Zildjian cymbals, optimized for both studio sessions and live performances. I hold a BA in Music Performance from BIMM Dublin and have contributed to over 30 album projects. Seeking collaborative opportunities with bands who value technical proficiency and creative improvisation. Available for touring, studio work, and last-minute dep gigs. Host drum workshops focusing on polyrhythms and groove development.',
'liam.byrne@musicianapp.com', true, 'hash123', '5552145678'),
(2, 'Aoife', 'Ryan', 3,
'A classically-trained jazz vocalist with 8 years of professional experience, specializing in bebop and contemporary jazz styles. Graduated from Cork School of Music with distinction in vocal performance. Regular performer at the Guinness Jazz Festival and collaborator with the Cork Jazz Orchestra. My repertoire spans from Ella Fitzgerald classics to modern interpretations of jazz standards. Equally comfortable with scat singing and lyrical balladry. Currently working on my debut album of original material blending Irish folk motifs with jazz harmonies. Available for session work, choir coaching, and festival performances. Seeking creative partnerships with pianists and composers for innovative projects.',
'aoife.ryan@musicianapp.com', true, 'hash123', '5553456789'),
(3, 'Darren', 'Quinn', 10,
'Shred-focused guitarist with 12 years in the Irish metal scene. Founding member of Galway-based progressive metal act "Celtic Frostbite", touring nationally since 2018. Specialize in 7-string extended range techniques and drop-tuned riffcraft. Gear includes an Ibanez RGIXL7 through a Kemper Profiler rig. Influences range from Meshuggah to Thin Lizzy. Available for session work, songwriting collaborations, and tour dep roles. Certified guitar technician offering setup services for Floyd Rose systems. Currently developing an online course on modern metal rhythm techniques. Let''s create something heavy!',
'darren.quinn@musicianapp.com', true, 'hash123', '5554567890'),
(4, 'Niamh', 'Collins', 16,
'Grammy-nominated producer/engineer with credits on 3 platinum-selling Irish albums. Specializing in indie-folk and post-rock production at my Limerick-based studio "Waveform Workshop". Equipped with Pro Tools HDX, Neumann U87 pair, and vintage outboard gear. MA in Music Technology from UL. Currently accepting mixing/mastering commissions but not taking on full production projects until 2025. Offering 1-day intensive mixing workshops for home producers. My production philosophy focuses on capturing authentic performances while enhancing them with subtle textural layers.',
'niamh.collins@musicianapp.com', false, 'hash123', '5555678901'),
(5, 'Oisín', 'Murphy', 23,
'Versatile session bassist with 150+ studio credits across genres from trad to hip-hop. Main axes: 1976 Fender Precision (flatwounds) for vintage tones, Dingwall NG3 5-string for modern metal. Endorsed by Darkglass Electronics. Available for last-minute dep work, album sessions, and tour support. Currently playing 6 nights/week with Waterford''s premier function band "The Marquee Players". Offering online lessons focusing on groove construction and walking bass lines. Particularly interested in psych-rock and Afrobeat projects. Reliable, punctual, and ready to lock in that pocket!',
'oisin.murphy@musicianapp.com', true, 'hash123', '5556789012'),
(6, 'Clara', 'O''Brien', 11,
'Kerry-born folk singer and bouzouki player preserving Ireland''s musical heritage. Released 2 critically-acclaimed albums of original material blending English and Irish language lyrics. Regular performer at fleadh cheoils and cultural festivals. Specialize in unaccompanied sean-nós singing and contemporary folk arrangements. Collaborated with renowned poet Michael Hartnett on musical adaptations. Available for intimate venue performances, songwriting workshops, and cultural events. Seeking multi-instrumentalists for new project exploring Kerry''s musical history through modern lens.',
'clara.obrien@musicianapp.com', true, 'hash123', '5557890123'),
(7, 'Evan', 'Fitzgerald', 7,
'Dublin''s underground electronica producer pushing boundaries in IDM and ambient techno. Hardware-centric setup featuring Eurorack modular system, Elektron gear, and custom Max/MSP patches. Released on labels like All City and Untitled (recs). Resident DJ at The Complex''s "Signal" night. Available for live AV performances, sound design commissions, and collaborative album projects. Offering Ableton Live production masterclasses. Current obsession: granular synthesis of traditional Irish instrumentation. Let''s fuse the ancient and futuristic!',
'evan.fitzgerald@musicianapp.com', true, 'hash123', '5558901234'),
(8, 'Mia', 'Donovan', 14,
'Classically-trained pianist (LTCL Diploma) with 15 years teaching experience. Specialize in graded exam preparation (RIAM/ABRSM) and adult beginner courses. Perform regularly as accompanist for Kildare Choral Society. Home studio features a Yamaha C3 grand piano with full recording capabilities. Not currently accepting performance engagements due to teaching commitments. Offering specialized courses in sight-reading improvement and Baroque ornamentation. Passionate about making classical music accessible through community outreach programs.',
'mia.donovan@musicianapp.com', false, 'hash123', '5559012345'),
(9, 'Tomás', 'Kelly', 5,
'First-chair violinist with the Clare Symphony Orchestra and in-demand session player. Versatile across classical, folk, and contemporary genres. Instruments: 1780 Giovanni Gagliano (classical) and 5-string Jordan Electric (modern). Featured on RTÉ documentary soundtracks and with Celtic Woman touring ensemble. Available for studio sessions, string arrangement composition, and live performances. Offering intensive summer workshops in advanced bowing techniques. Particularly interested in cross-genre collaborations blending classical rigor with electronic elements.',
'tomas.kelly@musicianapp.com', true, 'hash123', '5550123456'),
(10, 'Dylan', 'Burke', 7,
'Boom-bap specialist crafting beats since 2012. Founder of Dublin Hip-Hop Collective. Production credits include Kojaque and Nealo. Workflow combines SP-404 sampling with Logic Pro X precision. Massive drum break collection amassed from Dublin''s record shops. Available for beat commissions, mix engineering, and vocal production. Offering 1-on-1 beatmaking mentorship. Current obsession: layering Irish traditional melodies over dusty drum breaks. Let''s make that Dublin sound!',
'dylan.burke@musicianapp.com', true, 'hash123', '5551234567'),
(11, 'Siobhán', 'Doyle', 25,
'Blues harp player keeping the delta spirit alive in Ireland. 20+ years studying Chicago blues masters. Custom-modified Hohner harmonicas through vintage Fender amps. Frontwoman of "Crossroads Revival", touring blues clubs nationwide. Available for session work, harmonica lessons, and festival slots. Specialize in amplified blues harp techniques and rack playing. Passionate about mentoring female musicians in male-dominated genres. Let''s wail some Muddy Waters covers!',
'siobhan.doyle@musicianapp.com', true, 'hash123', '5552345678'),
(12, 'Adam', 'Reilly', 19,
'Multi-instrumental music educator (BA Music Education, Maynooth) teaching guitar, piano, and music theory. Developed innovative "Music Map" curriculum blending traditional and popular styles. Conductor of Meath Youth Orchestra. Available for school workshops, private lessons, and community music projects. Instruments: Taylor acoustic, Nord Stage 3, and collection of world percussion. Passionate about making music education accessible through inclusive teaching methods.',
'adam.reilly@musicianapp.com', true, 'hash123', '5553456789'),
(13, 'Róisín', 'Farrell', 15,
'High-energy punk drummer with DIY ethos. Anchored Louth''s underground scene with bands "The Shrapnels" and "Riot Diet". Influences: Toilet Boys, Stiff Little Fingers. Kit setup: Ludwig Vistalite with Paiste Rude cymbals. Available for tour fill-ins, recording sessions, and benefit gigs. Offering punk drumming workshops focusing on stamina and crash technique. "Play fast, leave sweat" philosophy. No stadium rockers - basement shows only!',
'roisin.farrell@musicianapp.com', true, 'hash123', '5554567890'),
(14, 'Cian', 'Gallagher', 20,
'All-Ireland Fleadh champion flute player preserving Mayo''s musical traditions. Handcrafted wooden flute specialist. Teach weekly classes at Westport Arts Centre. Available for session work, céilí bands, and cultural events. Recent collaboration with experimental folk group "Lankum". Passionate about maintaining oral transmission of tunes while innovating with microtonal techniques. Not currently seeking new projects but open to session work.',
'cian.gallagher@musicianapp.com', false, 'hash123', '5555678901'),
(15, 'Emma', 'Sullivan', 31,
'Chief engineer at Wicklow''s renowned "Cliff Edge Studios". Specialize in acoustic folk and post-rock recording techniques. Pro Tools HD Certified Expert with 10 years studio experience. Gear highlights: Neumann M149 pair, Studer A800 tape machine, vintage Neve preamps. Available for freelance mixing/mastering and location recording. Passionate about capturing "that perfect take" rather than endless comping. Offering studio mentorship days for aspiring engineers.',
'emma.sullivan@musicianapp.com', true, 'hash123', '5556789012');


--------USER_SOCIALS--------


INSERT INTO public.user_socials (user_id, platform, link) VALUES
(1, 'spotify', 'https://open.spotify.com/artist/liambyrnedrums'),
(1, 'instagram', 'https://www.instagram.com/liam_drumbeats'),
(1, 'youtube', 'https://www.youtube.com/@LiamByrneDrums'),
(2, 'spotify', 'https://open.spotify.com/artist/aoiferyanjazz'),
(2, 'instagram', 'https://www.instagram.com/aoife_jazzvoice'),
(2, 'tiktok', 'https://www.tiktok.com/@aoife_scats'),
(3, 'youtube', 'https://www.youtube.com/@DarrenShreds'),
(3, 'instagram', 'https://www.instagram.com/darren.metal7string'),
(4, 'spotify', 'https://open.spotify.com/user/waveformworkshop'),
(4, 'facebook', 'https://www.facebook.com/WaveformWorkshopProd'),
(5, 'instagram', 'https://www.instagram.com/oisin_basslines'),
(5, 'tiktok', 'https://www.tiktok.com/@slapthatbassdude'),
(6, 'youtube', 'https://www.youtube.com/@ClaraIrishFolk'),
(6, 'facebook', 'https://www.facebook.com/ClaraTradSongs'),
(7, 'spotify', 'https://open.spotify.com/artist/evansynth'),
(7, 'youtube', 'https://www.youtube.com/@EvanSynthTutorials'),
(7, 'instagram', 'https://www.instagram.com/evanmodular'),
(8, 'facebook', 'https://www.facebook.com/MiaPianoLessonsKD'),
(8, 'youtube', 'https://www.youtube.com/@MiaPianoTutorials'),
(9, 'instagram', 'https://www.instagram.com/tomas_violin'),
(9, 'spotify', 'https://open.spotify.com/artist/tomaskellyviolin'),
(9, 'facebook', 'https://www.facebook.com/TomasKellyStrings'),
(10, 'tiktok', 'https://www.tiktok.com/@dublindeveloper'),
(10, 'youtube', 'https://www.youtube.com/@DylanBeats'),
(10, 'instagram', 'https://www.instagram.com/dylan.404beats'),
(11, 'facebook', 'https://www.facebook.com/SiobhanBluesHarp'),
(11, 'youtube', 'https://www.youtube.com/@HarpinOnTheBlues'),
(12, 'instagram', 'https://www.instagram.com/adams.music.class'),
(12, 'facebook', 'https://www.facebook.com/MeathMusicTutor'),
(13, 'instagram', 'https://www.instagram.com/roisin_riotdrums'),
(13, 'youtube', 'https://www.youtube.com/@PunkDrumBasics'),
(14, 'facebook', 'https://www.facebook.com/CianTradFlute'),
(14, 'spotify', 'https://open.spotify.com/artist/ciantraditional'),
(15, 'instagram', 'https://www.instagram.com/cliffedge_engineer'),
(15, 'youtube', 'https://www.youtube.com/@StudioEngineeringTips'),
(1, 'facebook', 'https://www.facebook.com/LiamByrneDrumWorkshops'),
(2, 'youtube', 'https://www.youtube.com/@AoifeRyanVocalMasterclass'),
(3, 'spotify', 'https://open.spotify.com/artist/darrenquinnmetal'),
(4, 'instagram', 'https://www.instagram.com/waveformworkshop_studio'),
(5, 'youtube', 'https://www.youtube.com/@OisinBassLessons'),
(6, 'instagram', 'https://www.instagram.com/clara_irishfolk'),
(7, 'tiktok', 'https://www.tiktok.com/@evansynthlive'),
(8, 'instagram', 'https://www.instagram.com/miaspianostudio'),
(9, 'youtube', 'https://www.youtube.com/@TomasKellyViolinTutorials'),
(10, 'facebook', 'https://www.facebook.com/DylanBurkeBeats'),
(11, 'instagram', 'https://www.instagram.com/siobhan_bluesharp'),
(12, 'youtube', 'https://www.youtube.com/@AdamsMusicClassroom'),
(13, 'tiktok', 'https://www.tiktok.com/@roisin_drumsofchaos'),
(14, 'instagram', 'https://www.instagram.com/ciantradflute'),
(15, 'facebook', 'https://www.facebook.com/CliffEdgeStudioSessions');


--------USER_INSTRUMENTS--------


INSERT INTO public.user_instruments (user_id, instrument_id) VALUES
(1, 1), (1, 11),
(2, 5), (2, 4), (2, 10),
(3, 2), (3, 5), (3, 3),
(4, 4), (4, 9), (4, 11),
(5, 3), (5, 4),
(6, 5), (6, 10), (6, 4),
(7, 9), (7, 1), (7, 5),
(8, 4), (8, 5),
(9, 6), (9, 9),
(10, 9), (10, 2), (10, 3), (10, 5),
(11, 8), (11, 5),
(12, 4), (12, 2), (12, 11), (12, 5),
(13, 1), (13, 11),
(14, 7), (14, 10), (14, 5), (14, 4),
(15, 4), (15, 9);


--------USER_INSTRUMENTS--------


INSERT INTO public.user_genres (user_id, genres_id) VALUES
(1, 1), (1, 5), (1, 3), (1, 17),
(2, 3), (2, 14), (2, 8),
(3, 10), (3, 1), (3, 18),
(4, 7), (4, 17), (4, 1),
(5, 5), (5, 6), (5, 9),
(6, 11), (6, 16), (6, 15),
(7, 7), (7, 17), (7, 1),
(8, 4), (8, 3),
(9, 4), (9, 11),
(10, 6), (10, 7), (10, 5),
(11, 8), (11, 1), (11, 14),
(12, 2), (12, 4), (12, 1),
(13, 12), (13, 1),
(14, 11), (14, 16), (14, 4),
(15, 1), (15, 7), (15, 17);


--------USER_INSTRUMENTS--------


INSERT INTO public.user_experience (user_id, project_name, start_date, end_date) VALUES
(1, 'The Midnight Echo Tour', '2018-03-01', '2020-11-30'),
(1, 'Dublin Studio Session Collective', '2021-02-01', '2023-06-15'),
(1, 'Groove Development Workshops', '2023-07-01', NULL),
(2, 'Cork Jazz Orchestra', '2019-09-01', '2022-05-31'),
(2, 'Guinness Jazz Festival Residency', '2022-06-15', '2023-06-14'),
(2, 'Soul Revival Album Recording', '2023-07-01', NULL),
(3, 'Celtic Frostbite Debut Album', '2018-01-15', '2019-12-01'),
(3, 'Metal Masters European Tour', '2020-03-01', '2022-08-31'),
(4, 'Waveform Workshop Studio', '2015-06-01', NULL),
(5, 'The Marquee Players Residency', '2020-02-01', NULL),
(6, 'Kerry Folk Heritage Project', '2019-04-01', '2021-03-31'),
(6, 'Crossroads Folk Festival Tour', '2021-05-01', NULL),
(7, 'Signal Residency @ The Complex', '2021-11-01', '2023-04-30'),
(7, 'Dublin Electronic Arts Festival', '2023-05-15', NULL),
(8, 'Kildare Choral Society', '2016-09-01', NULL),
(9, 'Clare Symphony Orchestra', '2017-08-01', '2022-07-31'),
(9, 'Celtic Woman Tour', '2022-09-01', NULL),
(10, 'Dublin Hip-Hop Collective', '2020-05-01', NULL),
(11, 'Crossroads Revival Tour', '2019-07-01', '2023-06-30'),
(11, 'Blues Harp Masterclass Series', '2023-07-15', NULL),
(12, 'Meath Youth Orchestra', '2018-01-01', NULL),
(13, 'The Shrapnels', '2021-04-01', '2023-03-31'),
(13, 'Riot Diet Album Recording', '2023-04-15', NULL),
(14, 'Westport Trad Festival', '2022-06-01', '2023-05-31'),
(14, 'Lankum Collaboration Project', '2023-06-15', NULL),
(15, 'Cliff Edge Studio Engineering', '2019-02-01', NULL);


---------------------
--------POSTS--------
---------------------


INSERT INTO public.posts (id, user_id, title, county_id, description, email, phone, created_at) VALUES
(1, 3, 'Studio Session Urgency', 12, 
'Professional recording project in Timiș County seeking skilled instrumentalist for 5-track EP. Requires immediate availability August 15-20. Must have experience with jazz fusion arrangements and click tracks. Daily sessions 10AM-6PM at Sonic Arts Studio. Gear must include professional-grade equipment with DI capabilities. Compensation: 400 RON/day + royalties. Housing provided for non-local candidates. Required skills: Sight-reading, improvisation within complex time signatures (7/8, 5/4), and experience with double-time swing patterns. Influences: Hiromi Uehara, Snarky Puppy. Submit 3 samples demonstrating blues scale mastery. Non-smokers preferred. Meals and transportation included. Technical rider available upon request. Serious inquiries only - last-minute replacement needed.',
'project.jazz@example.com', '+40712123456', '2023-07-25 09:15:00+02'),
(2, 8, 'Summer Festival Slot', 27, 
'Established arts festival in Constanța requires versatile performer for main stage act. August 10-13 commitment. Must handle 90-minute sets of original material. Backline includes full PA, monitors, and basic drum kit. Travel allowance: 300 RON. Accommodation in 4-star hotel. Seeking energetic musicians comfortable with hybrid electronic/acoustic setups. Required: 5+ years stage experience, own instruments/pedalboards, ability to perform in extreme weather conditions. Repertoire should blend traditional Romanian motifs with modern EDM elements. Performance fee: 2000 RON + merch percentage. Must provide tech rider by July 30. Liability insurance required. Video submission of live performance essential. Equipment storage secured.',
'festival.bookings@example.com', '+40745123456', '2023-07-25 11:30:00+02'),
(3, 12, 'Theater Production Call', 6, 
'Bucharest musical theater seeks pit orchestra members for 3-month Phantom of the Opera run. Rehearsals begin September 1. Must read orchestral scores and follow conductor precisely. 6 shows/week (Tue-Sun evenings). Salary: 3500 RON/month + bonuses. Requirements: Formal music education, black performance attire, availability for daytime rehearsals. Parts include complex operatic arrangements and syncopated rhythmic patterns. Successful candidates must pass audition demonstrating: 1) Chromatic scale mastery 2) Dynamic control (ppp to fff) 3) Extended techniques (flutter, glissando). Union members preferred. Health insurance included. Submit CV with 2 professional references.',
'theater.musicals@example.com', '+40736123456', '2023-07-25 14:45:00+02'),
(4, 5, 'European Tour Opening', 40, 
'International touring act requires support for 15-country tour November 2023-February 2024. Must provide own passport/visas. Backline includes premium backline equipment. Per diem: 50 EUR/day + travel insurance. Seeking musicians with TEFL certification for workshop components. Responsibilities include: Daily soundchecks, meet-and-greets, social media content creation. Must adapt material for festival vs club settings. Audition process: 1) Video submission 2) Live callback August 5 3) Trial rehearsal week. Influences: Jacob Collier, Cory Wong. Rider includes separate dressing room and physiotherapy access. Commission-based bonuses available.',
'world.tour@example.com', '+40757123456', '2023-07-26 10:00:00+02'),
(5, 9, 'Symphonic Collaboration', 18, 
'Cluj-Napoca philharmonic orchestra seeks guest performers for Christmas concert series. December 10-23 commitment. Must prepare 45-minute program blending classical and contemporary holiday music. Sheet music provided October 1. Requirements: Black tie performance wear, extended upper register control, and experience with counterpoint arrangements. Honorarium: 1500 RON/performance (6 shows total). Includes: Professional recording, media exposure, masterclass opportunities. Applicants must demonstrate: 1) Bach interpretation 2) Modern composition reading 3) Circular breathing technique. Housing provided for non-local members. Academic references required.',
'symphony.guest@example.com', '+40788123456', '2023-07-30 16:20:00+02'),
(6, 7, 'Experimental Sound Design', 22,
'Avant-garde art installation in Alba County seeks sonic architect for immersive 8-channel audio experience. October-November 2023 residency. Must master Max/MSP, Pure Data, or similar. Requirements: Portfolio of spatial audio work, field recording expertise, and modular synthesis knowledge. Equipment: Laptop + interface mandatory, hydrophones provided. Stipend: 3000 RON/week + exhibition credit. Daily work hours: Flexible between 10AM-8PM at Fabrica de Arte. Submit 5-minute demo showcasing non-traditional sound sources. Collaborative process with visual artists. Housing in artist commune available. Liability waiver required for experimental equipment use. Technical interview scheduled via email.',
'sound.installation@example.com', '+40723123456', '2023-08-01 14:15:00+02'),
(7, 11, 'Roots Music Revival', 35,
'Documentary film project in Teleorman seeking authentic rural musicians for soundtrack recording. September 15-30 fieldwork. Focus on traditional Romanian folk instruments and oral histories. Compensation: 150 RON/hour + screen credit. Must provide own acoustic instruments and traditional attire. Requirements: Age 50+ preferred, fluency in local dialects, ability to improvise to visual stimuli. Recording occurs on-location at historic sites. Transportation from Bucharest provided. Submit 3-minute unprocessed audio sample. Project supported by National Cultural Fund. Meals and archival documentation included.',
'folk.documentary@example.com', '+40789123456', '2023-08-02 11:45:00+02'),
(8, 4, 'Cinematic Scoring', 1,
'Bucharest film studio requires composer for thriller feature soundtrack. 6-week contract starting September 1. Must deliver 45+ minutes of orchestral hybrid music. Requirements: Proficiency in Spitfire libraries, synchronization to picture (Cubase/Nuendo), thematic development skills. Advance: 15,000 RON + backend points. Demo needed: 1) Tension cue (2:00) 2) Emotional theme (3:30) 3) Action sequence (1:45). Workstation provided at StudioX facilities. Non-disclosure agreement required. Daily meetings with director. Final mix in Dolby Atmos format. Submit reel demonstrating dynamic range control.',
'film.scoring@example.com', '+40756123456', '2023-08-03 16:30:00+02'),
(9, 15, 'Audiobook Narration', 8,
'Cluj publishing house seeks voice artist for 12-hour historical novel recording. September 5-20 studio schedule. Requirements: Neutral Romanian accent, vocal stamina, basic editing skills. Rate: 120 RON/hour. Must pass vocal endurance test (3-hour session simulation). Equipment: Neumann TLM 103 provided. Bring own pop filter and headphones. Contract includes 5% royalty share. Audition text provided upon application. Special consideration for multilingual narrators (Hungarian/German passages). Health certificate verifying vocal cords required.',
'audio.book@example.com', '+40734123456', '2023-08-04 10:00:00+02'),
(10, 2, 'Corporate Event Ensemble', 41,
'Multinational company in Ilfov requires 5-piece group for annual gala (October 12). 3x45-minute sets blending lounge and dance covers. Backline: Yamaha DTX drums, Nord Stage 3. Fee: 4000 RON total. Requirements: Black suits, repertoire from 2000-2023 hits, ability to learn 10 custom arrangements. Rehearsals: September 20-30 @ Pipera Studios. Must pass security clearance. Submit video of "Uptown Funk" and "Blinding Lights" covers. Rider includes green room catering and physio on call. Bonus for LED instrument integration.',
'corporate.gala@example.com', '+40767123456', '2023-08-05 15:20:00+02'),
(11, 9, 'Chamber Music Series', 14,
'Sibiu philharmonic seeks wind quintet for 8-concert autumn program. September-December commitment. Repertoire: Mozart, Ligeti, and Romanian contemporary works. Salary: 6000 RON/month. Requirements: EU work permit, formal conservatory training, own instruments (except piano). Audition pieces: Danzi Quintet Op.67 + modern work of choice. Housing provided. Must participate in educational outreach programs. Video pre-screening by August 20. Final audition August 25 @ Filarmonica de Stat Sibiu. Include 2 letters of recommendation.',
'chamber.music@example.com', '+40745123456', '2023-08-06 09:45:00+02'),
(12, 5, 'Cruise Ship Residency', 16,
'Mediterranean cruise line needs house band for 6-month contract. November 2023-April 2024. Must perform 4x90-minute shows weekly (jazz, pop, Broadway). Package: 2500 EUR/month + cabin + meals. Requirements: Valid seafarer medical, 3+ years ship experience, 25-song audition set. Instruments provided except guitars. Port stops: Barcelona, Marseille, Genoa. Submit CV with maritime employment history. Group auditions August 15 @ Mamaia Port. Age 21-55 only. Contract renewable for Asian routes.',
'cruise.entertainment@example.com', '+40788123456', '2023-08-07 12:10:00+02'),
(13, 13, 'Underground Art Project', 29,
'Experimental performance collective in Brașov seeks noise artists for November festival. 30-minute avant-garde pieces incorporating found sounds. Honorarium: 800 RON + documentation. Equipment: Bring own unconventional instruments/objects. Venue: Former industrial complex (non-heated). Schedule: Nightly 10PM-2AM performances. Must attend 3 workshop sessions in October. Liability waiver required. Submit 10-minute recording of extreme dynamic performance. Collective decisions via consensus. No commercial material allowed.',
'noise.art@example.com', '+40712123456', '2023-08-08 18:00:00+02'),
(14, 10, 'Urban Music Initiative', 7,
'Bucharest cultural center needs beatmakers for youth workshop program. September-December Saturdays. Teach basics of DAW production (FL Studio provided). Requirements: 2+ released tracks, teaching experience, police clearance. Payment: 150 RON/session + equipment budget. Curriculum focuses on sampling Romanian folk music. Must develop final student showcase. Apply with lesson plan proposal and portfolio. Training August 20-22 required. Bilingual (RO/EN) candidates preferred.',
'music.workshop@example.com', '+40732123456', '2023-08-09 14:30:00+02'),
(15, 14, 'Historical Reconstruction', 33,
'Living history museum in Vrancea requires period-accurate musicians for medieval festival (September 8-10). Instruments: lute, hurdy-gurdy, sackbut. Daily 5x30-minute performances. Fee: 500 RON/day + costume provided. Must learn 15th-century repertoire from facsimiles. No electronic amplification. Authentic materials only (gut strings, period bows). Accommodation in historic houses. Submit video of early music performance. Workshop August 20-22 mandatory. Bonus for juggling/fire skills.',
'medieval.fest@example.com', '+40777123456', '2023-08-10 11:00:00+02');


--------POST_SOCIALS--------


INSERT INTO public.post_socials (post_id, platform, link) VALUES
(1, 'spotify', 'https://open.spotify.com/playlist/37i9dQZF1DX4WYpdgoIcn6'),
(1, 'instagram', 'https://www.instagram.com/p/Cx9G3d0sJkH/'),
(1, 'youtube', 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'),
(2, 'facebook', 'https://www.facebook.com/events/123456789012345/'),
(2, 'tiktok', 'https://www.tiktok.com/@jazzclubcork/video/1234567890123456789'),
(2, 'spotify', 'https://open.spotify.com/artist/3Nrfpe0tUJi4K4DXYWgMUX'),
(3, 'youtube', 'https://www.youtube.com/channel/UC_x5XG1OV2P6uZZ5FSM9Ttw'),
(3, 'instagram', 'https://www.instagram.com/p/CyBCGd0sJkH/'),
(3, 'tiktok', 'https://www.tiktok.com/@metaltourgalway/video/1234567890123456789'),
(4, 'facebook', 'https://www.facebook.com/WaveformWorkshop/posts/123456789012345'),
(4, 'spotify', 'https://open.spotify.com/show/3Nrfpe0tUJi4K4DXYWgMUX'),
(5, 'instagram', 'https://www.instagram.com/reel/Cx9G3d0sJkH/'),
(5, 'tiktok', 'https://www.tiktok.com/@weddingbassist/video/1234567890123456789'),
(5, 'youtube', 'https://www.youtube.com/watch?v=JGwWNGJdvx8'),
(6, 'facebook', 'https://www.facebook.com/KerryFolkFest/posts/123456789012345'),
(6, 'spotify', 'https://open.spotify.com/playlist/37i9dQZF1DX4WYpdgoIcn7'),
(7, 'tiktok', 'https://www.tiktok.com/@dublinelectronic/video/1234567890123456789'),
(7, 'instagram', 'https://www.instagram.com/p/CyBCGd1sJkH/'),
(8, 'youtube', 'https://www.youtube.com/channel/UC_x5XG1OV2P6uZZ5FSM9Ttx'),
(8, 'facebook', 'https://www.facebook.com/KildareChoral/posts/123456789012345'),
(9, 'spotify', 'https://open.spotify.com/artist/4Nrfpe0tUJi4K4DXYWgMUY'),
(9, 'tiktok', 'https://www.tiktok.com/@violintours/video/1234567890123456789'),
(10, 'instagram', 'https://www.instagram.com/p/CyBCGd2sJkH/'),
(10, 'youtube', 'https://www.youtube.com/watch?v=JGwWNGJdvx9'),
(10, 'facebook', 'https://www.facebook.com/DublinHipHopCollective/posts/123456789012345'),
(11, 'spotify', 'https://open.spotify.com/show/3Nrfpe0tUJi4K4DXYWgMUZ'),
(11, 'tiktok', 'https://www.tiktok.com/@bluesharpireland/video/1234567890123456789'),
(12, 'facebook', 'https://www.facebook.com/MeathMusicSchool/posts/123456789012345'),
(12, 'youtube', 'https://www.youtube.com/watch?v=dQw4w9WgXcR'),
(13, 'instagram', 'https://www.instagram.com/p/CyBCGd3sJkH/'),
(13, 'spotify', 'https://open.spotify.com/playlist/37i9dQZF1DX4WYpdgoIcn8'),
(14, 'tiktok', 'https://www.tiktok.com/@tradflutemayo/video/1234567890123456789'),
(14, 'facebook', 'https://www.facebook.com/WestportTradFest/posts/123456789012345'),
(15, 'youtube', 'https://www.youtube.com/channel/UC_x5XG1OV2P6uZZ5FSM9Tty'),
(15, 'instagram', 'https://www.instagram.com/p/CyBCGd4sJkH/');


--------POST_INSTRUMENTS--------


INSERT INTO public.post_instruments (post_id, instrument_id) VALUES
(1, 1), (1, 4), (1, 3),
(2, 2), (2, 5), (2, 9),
(3, 6), (3, 4), (3, 1),
(4, 2), (4, 5), (4, 9),
(5, 3), (5, 4), (5, 1),
(6, 10), (6, 7), (6, 8),
(7, 4), (7, 9), (7, 6),
(8, 5),
(9, 2), (9, 3), (9, 5),
(10, 6), (10, 7), (10, 4),
(11, 9), (11, 11), (11, 8),
(12, 9), (12, 3), (12, 5),
(13, 10), (13, 7), (13, 11),
(14, 9), (14, 1), (14, 11),
(15, 6), (15, 4), (15, 1);


--------POST_GENRES--------


INSERT INTO public.post_genres (post_id, genres_id) VALUES
(1, 3), (1, 1), (1, 17),
(2, 7), (2, 2), (2, 15),
(3, 4), (3, 2),
(4, 1), (4, 2), (4, 18),
(5, 2), (5, 3), (5, 9),
(6, 11), (6, 15), (6, 16),
(7, 4), (7, 17), (7, 1),
(8, 17),
(9, 2), (9, 7), (9, 9),
(10, 4), (10, 17), (10, 11),
(11, 17), (11, 12),
(12, 6), (12, 7), (12, 9),
(13, 16), (13, 11), (13, 15),
(14, 17), (14, 7),
(15, 4), (15, 17);