puts "🦸 Seeding recipes..."
 recipes=Recipe.create!([
    {
    name:"Ugali Sukuma",
    image_url:"https://en.wikipedia.org/wiki/Ugali#/media/File:Ugali_&_Sukuma_Wiki.jpg",
    description:"Ugali, or sima, is a type of stiff maize flour porridge made in Africa. It is also known as vhuswa, bogobe, fufu, gauli, gima, isitshwala, kimnyet, kuon, mieliepap, ngima,nkima, sembe, nshima, obokima"
   },
   {
    name:"Rice Beef",
    image_url:"https://bellyfull.net/wp-content/uploads/2021/09/Beef-Fried-Rice-blog-2-768x1024.jpg",
    description:"Ugali, or sima, is a type of stiff maize flour porridge made in Africa. It is also known as vhuswa, bogobe, fufu, gauli, gima, isitshwala, kimnyet, kuon, mieliepap, ngima,nkima, sembe, nshima, obokima"

   },
   {
    name:"Chapo stew",
    image_url:"https://farm1.staticflickr.com/318/19368433420_98a6a89727_z.jpg",
    description:"Ugali, or sima, is a type of stiff maize flour porridge made in Africa. It is also known as vhuswa, bogobe, fufu, gauli, gima, isitshwala, kimnyet, kuon, mieliepap, ngima,nkima, sembe, nshima, obokima"
    
    
   }
])
puts "🦸 Seeding reviews..."
Review.create!([
    {
        recipe_id:1,
        description:"it was easier to prepare and fast"
    },
    {
        recipe_id:2,
        description:"The recipe was complicated and many ingredients"
    }
])  
