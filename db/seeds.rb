puts "🦸 Seeding recipes..."
 recipes=Recipe.create!([
    {
    name:"Ugali Sukuma",
    image_url:"https://en.wikipedia.org/wiki/Ugali#/media/File:Ugali_&_Sukuma_Wiki.jpg"
   },
   {
    name:"Rice Beef",
    image_url:"https://bellyfull.net/wp-content/uploads/2021/09/Beef-Fried-Rice-blog-2-768x1024.jpg"
   },
   {
    name:"Chapo stew",
    image_url:"https://farm1.staticflickr.com/318/19368433420_98a6a89727_z.jpg"
   }
])
puts "🦸 Seeding reviews..."
Review.create!([
    {
        title:"Best Recipe Ever",
        description:"it was easier to prepare and fast"
    },
    {
        title:"Worst Experience",
        description:"The recipe was complicated and many ingredients"
    }
])  