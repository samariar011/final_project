require 'bundler'
Bundler.require
require './models/person.rb'
require './models/exercise.rb'

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end
  
  get '/information' do
    erb :information
  end
  
  post '/exercise' do
    
    @age = params[:age]
    @gender = params[:gender]
    @type = params[:type]
    
     @teen_female_fat = [Exercise.new("Zumba", "45 mins", "http://zumbawithmegan.com/wordpress/wp-content/uploads/2013/04/ZumbaCharity-595.jpg"),
      Exercise.new("Pull-ups", "15", "http://assets4.tribesports.com/system/challenges/images/000/036/918/original/20130607225532-this-one-s-for-girls-do-one-full-chin-up-from-a-de.jpg"),
      Exercise.new("Tricep Dips", "10", "http://media.tumblr.com/e5929abb4c657bfc26df3cd2adcfae04/tumblr_inline_mx43w3P8sE1rdu2za.jpg"),
      Exercise.new("Plank", "40 seconds", "http://www.self.com/wp-content/uploads/2011/07/right-way-to-plank-01-fiss431.jpg"),
      Exercise.new("Mountainclimbers", "60 seconds", "http://www.newhealthguide.org/images/10415585/image002.jpg"),
      Exercise.new("Speed-Skaters", "45", "http://www.coreexercisestudio.com/wp-content/uploads/2010/02/1001-skaters.preview.jpg"),
      Exercise.new("Jump-Rope", "3 mins", "http://www.alimcwilliams.com/alirocks/wp-content/uploads/2013/04/jump-rope.jpg"),
      Exercise.new("High-knees", "20", "https://hifitnessclub.files.wordpress.com/2013/05/060_high_knees.jpg"),
      Exercise.new("Sprinting", "20 mins", "http://previews.123rf.com/images/ostill/ostill1307/ostill130700088/20726385-one-caucasian-woman-runner-jogger-in-silhouette-studio-isolated-on-white-background-Stock-Photo.jpg"),
      Exercise.new("Marching Glute Bridge", "2 secs 10 reps", "http://www.womenshealthmag.com/files/wh6_uploads/images/marching-glute-bridge.jpg"),
      Exercise.new("Swimming", "45 mins", "http://previews.123rf.com/images/quintanilla/quintanilla1201/quintanilla120100053/11989899-woman-with-swimsuit-swimming-on-a-blue-water-pool-Stock-Photo.jpg")]
  
  @teen_female_muscle = [Exercise.new("Squats", "30","http://www.womenshealthmag.com/files/wh6_uploads/images/slide2-bweight-squat.jpg"),
    Exercise.new("Dumbells Shoulder Press", "2 reps of 5 mins", "http://www.womenshealthmag.com/files/images/dbell-shoulder-press.jpg"),
    Exercise.new("Pull-ups", "12", "http://assets4.tribesports.com/system/challenges/images/000/036/918/original/20130607225532-this-one-s-for-girls-do-one-full-chin-up-from-a-de.jpg"),
    Exercise.new("Seated Leg Curls", "30", "http://www.fittrax.com/wp-content/uploads/2012/12/CybexDualLegExtCurl.png"),
    Exercise.new("Hip Thrusts", "24", "http://strong.top.me/wp-content/uploads/2014/07/Resistance-Band-Hip-Thrusts.jpg"),
    Exercise.new("Seated Calf Raise", "40", "http://ecx.images-amazon.com/images/I/41uMBDYmP%2BL._SY355_.jpg"),
    Exercise.new("Skull Crusher", "32", "http://munfitnessblog.com/wp-content/uploads/2008/03/skull-crusher-with-dumbbell-woman.JPG"),
    Exercise.new("Dumbell Bicep Curl", "32", "http://www.womenshealthmag.com/files/images/0410_biceps_curl.jpg"),
    Exercise.new("Side Lateral Raise", "30", "http://lateralraises.com/images/Dumbbell-Lateral-Raise.jpg"),
     Exercise.new("Ab Twists", "30", "http://www.womenshealthmag.com/files/wh6_uploads/images/med-ball-russian-twist2.jpg"),
    Exercise.new("Swimming", "60 mins", "http://previews.123rf.com/images/quintanilla/quintanilla1201/quintanilla120100053/11989899-woman-with-swimsuit-swimming-on-a-blue-water-pool-Stock-Photo.jpg"),
    Exercise.new("Sprinting", "25 mins", "http://previews.123rf.com/images/ostill/ostill1307/ostill130700088/20726385-one-caucasian-woman-runner-jogger-in-silhouette-studio-isolated-on-white-background-Stock-Photo.jpg"),
    Exercise.new("Cycling", "30 mins", "http://previews.123rf.com/images/gemenacom/gemenacom1201/gemenacom120100010/11741404-Woman-on-a-bicycle-isolated-on-white-background-Stock-Photo-cycling.jpg"),
    Exercise.new("Rowing", "20 mins", "http://cache2.asset-cache.net/xt/157730772.jpg?v=1&g=fs1%7C0%7CEPL%7C30%7C772&s=1")]
  
  @teen_male_fat = [Exercise.new("Pull-ups", "20", "http://www.pullupbarsg.com/wp-content/uploads/2012/12/1B_Wide-Grip_Pull_Up_Article.jpg"),
      Exercise.new("Tricep Dips", "20", "http://www.pt-thailand.com/wp/wp-content/uploads/tricepsdip.jpg"),
    Exercise.new("Spiderman Plank", "55 seconds", "http://www.thefitindian.com/wp-content/uploads/2015/02/walking-spiderman-workout-at-home.jpg"),
      Exercise.new("Mountainclimbers", "90 seconds", "http://www.menshealth.com/mhlists/cms/uploads/1/1001-mountain-climber-483x300.jpg"),
      Exercise.new("Speed-Skaters", "55", "http://www.menshealth.com/build-gold-medal-muscle/images/speedskating8.jpg"),
      Exercise.new("Jump-Rope", "5 mins", "http://www.tagtheworkout.com/wp-content/uploads/2014/08/male-jump-roping.jpg"),
      Exercise.new("High-knees", "35", "http://healthyceleb.com/wp-content/uploads/2015/07/Running-High-Knees.jpg"),
      Exercise.new("Sprinting", "20 mins", "http://previews.123rf.com/images/ostill/ostill1306/ostill130600369/20519323-one-caucasian-man-young-sprinter-runner-in-starting-blocks-silhouette-studio-on-white-background-Stock-Photo.jpg"),
      Exercise.new("Marching Glute Bridge", "5 secs 10 reps", "http://l.yimg.com/ea/img/-/131114/triple_your_metabolism_single_leg_glute_bridge_1988pkl-1988ppa.jpg?x=450&q=80&n=1&sig=ygazBGfeXA2JINam6bvBrg--"),
      Exercise.new("Swimming", "60 mins", "http://previews.123rf.com/images/ishtygashev/ishtygashev1307/ishtygashev130700048/21198709-Close-up-shot-of-a-young-male-swimming-front-crawl-stroke-Stock-Photo.jpg"),
    Exercise.new("Soccer","2 hours(With Breaks)", "http://photos2.demandstudios.com/DM-Resize/photos.demandstudios.com/getty/article/25/174/rbs1_66_XS.jpg?w=1200&h=630&crop_min=1&keep_ratio=1")]
  
  @teen_male_muscle = [Exercise.new("Squats", "50", "http://www.directlyfitness.com/store/wp-content/uploads/2012/03/images-6.jpg"),
    Exercise.new("Dumbells Shoulder Press", "2 reps of 10 mins","http://beachfrontnews.com/wp-content/uploads/2014/12/dumbbellpress.jpg"),
    Exercise.new("Pull-ups", "20", "http://www.pullupbarsg.com/wp-content/uploads/2012/12/1B_Wide-Grip_Pull_Up_Article.jpg"),
    Exercise.new("Seated Leg Curls", "55", "http://build-muscle-101.com/wp-content/uploads/2014/12/seated-leg-curl-264x300.jpg"),
    Exercise.new("Seated Calf Raise", "55", "http://incredibody.com/images/plce165x.jpg"),
    Exercise.new("Skull Crusher", "40", "http://www.leanitup.com/wp-content/uploads/2013/05/skull-crushers-plan-b-13062012-de.jpg"),
    Exercise.new("Dumbell Bicep Curl(Larger Weight)", "35", "http://www.indianworkouts.com/wp-content/uploads/2015/02/Hammer-Curls.jpg"),
    Exercise.new("Side Lateral Raise", "40", "http://www.ibodz.com/files/exerciseimages/side-lying-lateral-raise-0.JPG"),
     Exercise.new("Ab Twists", "50", "http://urbanwired.com/health/wp-content/uploads/sites/2/2014/08/Kettlebell-Workouts-for-Russian-Twist.jpg"),
    Exercise.new("Swimming", "60 mins", "http://previews.123rf.com/images/ishtygashev/ishtygashev1307/ishtygashev130700048/21198709-Close-up-shot-of-a-young-male-swimming-front-crawl-stroke-Stock-Photo.jpg"),
    Exercise.new("Sprinting", "30 mins", "http://previews.123rf.com/images/ostill/ostill1306/ostill130600369/20519323-one-caucasian-man-young-sprinter-runner-in-starting-blocks-silhouette-studio-on-white-background-Stock-Photo.jpg"),
    Exercise.new("Cycling", "30 mins", "http://cache3.asset-cache.net/xc/476393983.jpg?v=2&c=IWSAsset&k=2&d=pJLBl36BHfdBOKj2iAfI5Y9ip3AUOzWT6VbgZBBgMqqJxz88Sk6NzqI2NlAEOc580"),
    Exercise.new("Rowing", "20 mins", "https://www.colourbox.com/preview/3328095-man-doing-exercises-on-rowing-machine-on-white-background.jpg")]
    
    @adult_female_fat = [Exercise.new("Zumba", "60 mins", "http://zumbawithmegan.com/wordpress/wp-content/uploads/2013/04/ZumbaCharity-595.jpg"),
      Exercise.new("Pull-ups", "25","http://assets4.tribesports.com/system/challenges/images/000/036/918/original/20130607225532-this-one-s-for-girls-do-one-full-chin-up-from-a-de.jpg" ),
      Exercise.new("Tricep Dips", "30", "http://media.tumblr.com/e5929abb4c657bfc26df3cd2adcfae04/tumblr_inline_mx43w3P8sE1rdu2za.jpg"),
      Exercise.new("Plank", "45 seconds", "http://www.self.com/wp-content/uploads/2011/07/right-way-to-plank-01-fiss431.jpg"),
      Exercise.new("Mountainclimbers", "60 seconds", "http://www.newhealthguide.org/images/10415585/image002.jpg"),
      Exercise.new("Speed-Skaters", "45", "http://www.coreexercisestudio.com/wp-content/uploads/2010/02/1001-skaters.preview.jpg"),
      Exercise.new("Jump-Rope", "3 mins", "http://www.alimcwilliams.com/alirocks/wp-content/uploads/2013/04/jump-rope.jpg"),
      Exercise.new("High-knees", "20", "https://hifitnessclub.files.wordpress.com/2013/05/060_high_knees.jpg"),
      Exercise.new("Sprinting", "20 mins", "http://previews.123rf.com/images/ostill/ostill1307/ostill130700088/20726385-one-caucasian-woman-runner-jogger-in-silhouette-studio-isolated-on-white-background-Stock-Photo.jpg"),
      Exercise.new("Marching Glute Bridge", "2 secs 10 reps", "http://www.womenshealthmag.com/files/wh6_uploads/images/marching-glute-bridge.jpg"),
      Exercise.new("Inverted Shoulder-Press", "25", "http://www.favao.com/files/favao.com/inverted-shoulder-press_0.jpg")]
    
    @adult_female_muscle = [Exercise.new("Squats", "35", "http://www.womenshealthmag.com/files/wh6_uploads/images/slide2-bweight-squat.jpg"),
    Exercise.new("Dumbells Shoulder Press", "3 reps of 5 mins", "http://www.womenshealthmag.com/files/images/dbell-shoulder-press.jpg"),
    Exercise.new("Pull-ups", "15", "http://assets4.tribesports.com/system/challenges/images/000/036/918/original/20130607225532-this-one-s-for-girls-do-one-full-chin-up-from-a-de.jpg"),
    Exercise.new("Seated Leg Curls", "35", "http://www.fittrax.com/wp-content/uploads/2012/12/CybexDualLegExtCurl.png"),
    Exercise.new("Hip Thrusts", "30", "http://strong.top.me/wp-content/uploads/2014/07/Resistance-Band-Hip-Thrusts.jpg"),
    Exercise.new("Seated Calf Raise", "45", "http://ecx.images-amazon.com/images/I/41uMBDYmP%2BL._SY355_.jpg"),
    Exercise.new("Skull Crusher", "48", "http://www.leanitup.com/wp-content/uploads/2013/05/skull-crushers-plan-b-13062012-de.jpg"),
    Exercise.new("Dumbell Bicep Curl", "48", "http://www.womenshealthmag.com/files/images/0410_biceps_curl.jpg"),
    Exercise.new("Side Lateral Raise", "35", "http://lateralraises.com/images/Dumbbell-Lateral-Raise.jpg"),
     Exercise.new("Ab Twists", "35", "http://www.womenshealthmag.com/files/wh6_uploads/images/med-ball-russian-twist2.jpg"),
     Exercise.new("Yoga", "90 mins", "https://deborahmyersfitness.files.wordpress.com/2013/03/warrior-2_d2i7487.jpg"),
    Exercise.new("Swimming", "90 mins", "http://previews.123rf.com/images/quintanilla/quintanilla1201/quintanilla120100053/11989899-woman-with-swimsuit-swimming-on-a-blue-water-pool-Stock-Photo.jpg"),
    Exercise.new("Sprinting", "25 mins", "http://previews.123rf.com/images/ostill/ostill1307/ostill130700088/20726385-one-caucasian-woman-runner-jogger-in-silhouette-studio-isolated-on-white-background-Stock-Photo.jpg"),
    Exercise.new("Cycling", "60 mins", "http://previews.123rf.com/images/gemenacom/gemenacom1201/gemenacom120100010/11741404-Woman-on-a-bicycle-isolated-on-white-background-Stock-Photo-cycling.jpg"),
    Exercise.new("Rowing", "40 mins", "http://cache2.asset-cache.net/xt/157730772.jpg?v=1&g=fs1%7C0%7CEPL%7C30%7C772&s=1")]
    
    @adult_male_fat = [Exercise.new("Pull-ups", "20", "http://www.pullupbarsg.com/wp-content/uploads/2012/12/1B_Wide-Grip_Pull_Up_Article.jpg"),
      Exercise.new("Tricep Dips", "20", "http://www.pt-thailand.com/wp/wp-content/uploads/tricepsdip.jpg"),
      Exercise.new("Spiderman Plank", "55 seconds", "http://www.thefitindian.com/wp-content/uploads/2015/02/walking-spiderman-workout-at-home.jpg"),
      Exercise.new("Mountainclimbers", "90 seconds", "http://www.menshealth.com/mhlists/cms/uploads/1/1001-mountain-climber-483x300.jpg"),
      Exercise.new("Speed-Skaters", "60", "http://www.menshealth.com/build-gold-medal-muscle/images/speedskating8.jpg"),
      Exercise.new("Jump-Rope", "5 mins", "http://www.tagtheworkout.com/wp-content/uploads/2014/08/male-jump-roping.jpg"),
      Exercise.new("High-knees", "35", "http://healthyceleb.com/wp-content/uploads/2015/07/Running-High-Knees.jpg"),
      Exercise.new("Benchpress", "6 lifts", "http://www.menshealth.com/sites/default/files/imagecache/workout_center_exercise_gallery/dumb-bench-a-male.jpg"),
      Exercise.new("Sprinting", "20 mins", "http://previews.123rf.com/images/ostill/ostill1306/ostill130600369/20519323-one-caucasian-man-young-sprinter-runner-in-starting-blocks-silhouette-studio-on-white-background-Stock-Photo.jpg"),
      Exercise.new("Marching Glute Bridge", "5 secs 10 reps", "http://l.yimg.com/ea/img/-/131114/triple_your_metabolism_single_leg_glute_bridge_1988pkl-1988ppa.jpg?x=450&q=80&n=1&sig=ygazBGfeXA2JINam6bvBrg--"),
      Exercise.new("Swimming", "60 mins", "http://previews.123rf.com/images/ishtygashev/ishtygashev1307/ishtygashev130700048/21198709-Close-up-shot-of-a-young-male-swimming-front-crawl-stroke-Stock-Photo.jpg"),
      Exercise.new("Soccer","2 hours", "http://theshopcompany.com/media/catalog/product/cache/1/image/1200x1800/43ecdab235741713120884e123efb51d/t/n/tny3.jpeg")]
      
    @adult_male_muscle = [Exercise.new("Squats", "55", "http://www.directlyfitness.com/store/wp-content/uploads/2012/03/images-6.jpg"),
    Exercise.new("Dumbells Shoulder Press", "3 reps of 10 mins", "http://beachfrontnews.com/wp-content/uploads/2014/12/dumbbellpress.jpg"),
    Exercise.new("Pull-ups", "25", "http://www.pullupbarsg.com/wp-content/uploads/2012/12/1B_Wide-Grip_Pull_Up_Article.jpg"),
    Exercise.new("Seated Leg Curls", "60", "http://build-muscle-101.com/wp-content/uploads/2014/12/seated-leg-curl-264x300.jpg"),
    Exercise.new("Seated Calf Raise", "60", "http://incredibody.com/images/plce165x.jpg"),
    Exercise.new("Skull Crusher", "45", "http://www.leanitup.com/wp-content/uploads/2013/05/skull-crushers-plan-b-13062012-de.jpg"),
    Exercise.new("Dumbell Bicep Curl(Larger Weight)", "55", "http://www.indianworkouts.com/wp-content/uploads/2015/02/Hammer-Curls.jpg"),
    Exercise.new("Side Lateral Raise", "45", "http://www.ibodz.com/files/exerciseimages/side-lying-lateral-raise-0.JPG"),
     Exercise.new("Ab Twists", "55", "http://urbanwired.com/health/wp-content/uploads/sites/2/2014/08/Kettlebell-Workouts-for-Russian-Twist.jpg"),
    Exercise.new("Swimming", "90 mins", "http://previews.123rf.com/images/ishtygashev/ishtygashev1307/ishtygashev130700048/21198709-Close-up-shot-of-a-young-male-swimming-front-crawl-stroke-Stock-Photo.jpg"),
    Exercise.new("Sprinting", "60 mins", "http://previews.123rf.com/images/ostill/ostill1306/ostill130600369/20519323-one-caucasian-man-young-sprinter-runner-in-starting-blocks-silhouette-studio-on-white-background-Stock-Photo.jpg"),
    Exercise.new("Cycling", "60 mins", "http://cache3.asset-cache.net/xc/476393983.jpg?v=2&c=IWSAsset&k=2&d=pJLBl36BHfdBOKj2iAfI5Y9ip3AUOzWT6VbgZBBgMqqJxz88Sk6NzqI2NlAEOc580"),
    Exercise.new("Rowing", "40 mins", "https://www.colourbox.com/preview/3328095-man-doing-exercises-on-rowing-machine-on-white-background.jpg")]
    
    @middleage_female_fat = [Exercise.new("Zumba", "60 mins", "http://zumbawithmegan.com/wordpress/wp-content/uploads/2013/04/ZumbaCharity-595.jpg"),
      Exercise.new("Push-ups", "15", "http://www.bobgarontraining.com/wp-content/uploads/2013/03/woman-pushup.jpg"),
      Exercise.new("Inverted Push-ups", "15", "http://images.teamsugar.com/files/users/1/12981/13_2007/women_pushups.jpg"),
      Exercise.new("Plank", "35 seconds", "http://www.self.com/wp-content/uploads/2011/07/right-way-to-plank-01-fiss431.jpg"),
      Exercise.new("Mountainclimbers", "60 seconds", "http://www.newhealthguide.org/images/10415585/image002.jpg"),
      Exercise.new("Speed-Skaters", "35", "http://www.coreexercisestudio.com/wp-content/uploads/2010/02/1001-skaters.preview.jpg"),
      Exercise.new("Jump-Rope", "2 mins", "http://www.alimcwilliams.com/alirocks/wp-content/uploads/2013/04/jump-rope.jpg"),
      Exercise.new("High-knees", "20", "https://hifitnessclub.files.wordpress.com/2013/05/060_high_knees.jpg"),
      Exercise.new("Walking", "30 mins", "http://image1.masterfile.com/em_t/03/25/71/640-03257179er.jpg"),
      Exercise.new("Squats", "2 secs 10 reps", "http://www.womenshealthmag.com/files/wh6_uploads/images/slide2-bweight-squat.jpg"),
      Exercise.new("Pilates", "30 mins", "http://1mhowto.com/wp-content/uploads/2015/04/01_pilates.jpg")]
    
    @middleage_female_muscle = [Exercise.new("Yoga", "30 mins", "https://deborahmyersfitness.files.wordpress.com/2013/03/warrior-2_d2i7487.jpg"),
      Exercise.new("Kick Boxing", "30 minutes", "http://www.myelitetraining.com/wp-content/uploads/2013/09/train.jpg"),
      Exercise.new("Pilates", "55 minutes", "http://1mhowto.com/wp-content/uploads/2015/04/01_pilates.jpg"),
      Exercise.new("Aerobics", "60 minutes","http://stepupdanceacademy.in/wp-content/uploads/Best-Aerobics-Classes-Mumbai-Arpita-Step-Up-Dance-Academy.jpg"),
      Exercise.new("Jazzercise", "60 minutes", "http://product-images.imshopping.com/nimblebuy/jazzercise-10-jazzercise-classes-for-39-2214182-regular.jpg"),
      Exercise.new("Spinning", "30 mins", "https://partnersinwellness.files.wordpress.com/2013/06/row-of-spinning-feet_936946.jpg"),
      Exercise.new("Tennis", "30 mins", "http://p1.pichost.me/i/31/1544163.jpg"),
      Exercise.new("Swimming", "30 mins", "http://ucdavis.edu/local_resources/images/hpbg/2012/january/hpbg_swimming.jpg")]
    
    @middleage_male_fat = [Exercise.new("Pull-ups", "20", "http://www.pullupbarsg.com/wp-content/uploads/2012/12/1B_Wide-Grip_Pull_Up_Article.jpg"),
      Exercise.new("Tricep Dips", "20", "http://www.pt-thailand.com/wp/wp-content/uploads/tricepsdip.jpg"),
      Exercise.new("Spiderman Plank", "55 seconds", "http://www.thefitindian.com/wp-content/uploads/2015/02/walking-spiderman-workout-at-home.jpg"),
      Exercise.new("Mountainclimbers", "90 seconds", "http://www.menshealth.com/mhlists/cms/uploads/1/1001-mountain-climber-483x300.jpg"),
      Exercise.new("Speed-Skaters", "60", "http://www.menshealth.com/build-gold-medal-muscle/images/speedskating8.jpg"),
      Exercise.new("Jump-Rope", "3 mins", "http://www.tagtheworkout.com/wp-content/uploads/2014/08/male-jump-roping.jpg"),
      Exercise.new("High-knees", "35", "http://healthyceleb.com/wp-content/uploads/2015/07/Running-High-Knees.jpg"),
      Exercise.new("Benchpress", "3 lifts", "http://www.menshealth.com/sites/default/files/imagecache/workout_center_exercise_gallery/dumb-bench-a-male.jpg"),
      Exercise.new("Tennis", "30 mins", "http://www.tennisworldusa.org/Editor/Img/Tennis-Stories-img7598_668.jpg"),
      Exercise.new("Marching Glute Bridge", "5 secs 10 reps", "http://l.yimg.com/ea/img/-/131114/triple_your_metabolism_single_leg_glute_bridge_1988pkl-1988ppa.jpg?x=450&q=80&n=1&sig=ygazBGfeXA2JINam6bvBrg--"),
      Exercise.new("Swimming", "45 mins", "http://previews.123rf.com/images/ishtygashev/ishtygashev1307/ishtygashev130700048/21198709-Close-up-shot-of-a-young-male-swimming-front-crawl-stroke-Stock-Photo.jpg"),
      Exercise.new("Golfing","2 hours", "http://mtnvacations.net/wp-content/uploads/2010/07/golfing.jpg")]
    
    @middleage_male_muscle = [Exercise.new("Squats", "55", "http://www.directlyfitness.com/store/wp-content/uploads/2012/03/images-6.jpg"),
    Exercise.new("Dumbells Shoulder Press", "3 reps of 10 mins", "http://beachfrontnews.com/wp-content/uploads/2014/12/dumbbellpress.jpg"),
    Exercise.new("Pull-ups", "25", "http://www.pullupbarsg.com/wp-content/uploads/2012/12/1B_Wide-Grip_Pull_Up_Article.jpg"),
    Exercise.new("Seated Leg Curls", "60", "http://build-muscle-101.com/wp-content/uploads/2014/12/seated-leg-curl-264x300.jpg"),
    Exercise.new("Seated Calf Raise", "60", "http://incredibody.com/images/plce165x.jpg"),
    Exercise.new("Skull Crusher", "45", "http://www.leanitup.com/wp-content/uploads/2013/05/skull-crushers-plan-b-13062012-de.jpg"),
    Exercise.new("Dumbell Bicep Curl(Larger Weight)", "55", "http://www.indianworkouts.com/wp-content/uploads/2015/02/Hammer-Curls.jpg"),
    Exercise.new("Side Lateral Raise", "45", "http://www.ibodz.com/files/exerciseimages/side-lying-lateral-raise-0.JPG"),
    Exercise.new("Ab Twists", "55", "http://urbanwired.com/health/wp-content/uploads/sites/2/2014/08/Kettlebell-Workouts-for-Russian-Twist.jpg"),
    Exercise.new("Swimming", "90 mins", "http://previews.123rf.com/images/ishtygashev/ishtygashev1307/ishtygashev130700048/21198709-Close-up-shot-of-a-young-male-swimming-front-crawl-stroke-Stock-Photo.jpg"),
    Exercise.new("Cycling", "60 mins", "http://previews.123rf.com/images/gemenacom/gemenacom1201/gemenacom120100010/11741404-Woman-on-a-bicycle-isolated-on-white-background-Stock-Photo-cycling.jpg")]
    

    if @age.to_i >= 13 && @age.to_i <= 19 && @gender == "female" && @type == "fat"
      @exercises = @teen_female_fat 
    elsif @age.to_i >= 13 && @age.to_i <= 19 && @gender == "male" && @type == "fat"
      @exercises = @teen_male_fat 
    elsif @age.to_i >= 13 && @age.to_i <= 19 && @gender == "female" && @type == "muscle"
      @exercises = @teen_female_muscle 
    elsif @age.to_i >= 13 && @age.to_i <= 19 && @gender == "male" && @type == "muscle"
      @exercises = @teen_male_muscle 
      elsif @age.to_i >= 20 && @age.to_i <= 39 && @gender == "female" && @type == "fat"
      @exercises = @adult_female_fat 
    elsif @age.to_i >= 20 && @age.to_i <= 39 && @gender == "male" && @type == "fat"
      @exercises = @adult_male_fat 
    elsif @age.to_i >= 20 && @age.to_i <= 39 && @gender == "female" && @type == "muscle"
      @exercises = @adult_female_muscle 
    elsif @age.to_i >= 20 && @age.to_i <= 39 && @gender == "male" && @type == "muscle"
      @exercises = @adult_male_muscle 
    elsif @age.to_i >= 40 && @gender == "female" && @type == "fat"
      @exercises = @middleage_female_fat 
    elsif @age.to_i >= 40 && @gender == "male" && @type == "fat"
      @exercises = @middleage_male_fat 
    elsif @age.to_i >= 40 && @gender == "female" && @type == "muscle"
      @exercises = @middleage_female_muscle 
    elsif @age.to_i >= 40 && @gender == "male" && @type == "muscle"
      @exercises = @middleage_male_muscle
    else
      @exercises = []
    end
    erb :exercise
  end
  
  
  
    #create your instance of Male or Female clas based on input from user (stored in the params hash)
#     @male = Male.new()
    #create the arrays of the categories of exercises - inside those arrays create each individual exercise
    
    
#     if @male.muscle_group == "legs"
#       @teen_male_muscle_legs
#       elsif 
    
    
#     erb :results_fat
#   end 
  
end