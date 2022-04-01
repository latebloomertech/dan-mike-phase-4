puts "Destroying old seeds"

Ingredient.destroy_all
RecipeIngredient.destroy_all
Recipe.destroy_all


puts "All old seeds destroyed"
puts "Seeding data"

i1 =  Ingredient.create(name: "Flour")
i2 =  Ingredient.create(name: "Yeast")
i3 =  Ingredient.create(name: "Sugar")
i4 =  Ingredient.create(name: "Milk")
i5 =  Ingredient.create(name: "Water")
i6 =  Ingredient.create(name: "Salt")
i7 =  Ingredient.create(name: "Butter")
i8 =  Ingredient.create(name: "Parsely")
i9 =  Ingredient.create(name: "Chives")
i10 =  Ingredient.create(name: "Dill")
i11 =  Ingredient.create(name: "Garlic")
i12 =  Ingredient.create(name: "Black Pepper")
i13 =  Ingredient.create(name: "Baking Powder")
i14 =  Ingredient.create(name: "Cream of Tarter")
i15 =  Ingredient.create(name: "Eggs")
i16 =  Ingredient.create(name: "Cheddar Cheese")
i17 =  Ingredient.create(name: "Buttermilk")
i18 =  Ingredient.create(name: "Thyme")
i19 =  Ingredient.create(name: "Rosemary")
i20 =  Ingredient.create(name: "Pistachios")
i21 =  Ingredient.create(name: "Cinnamon")
i22 =  Ingredient.create(name: "Cardamom")
i23 =  Ingredient.create(name: "Nutmeg")
i24 =  Ingredient.create(name: "Cocoa Powder")
i25 =  Ingredient.create(name: "Baking Soda")
i26 =  Ingredient.create(name: "Brown Sugar")
i27 =  Ingredient.create(name: "Canola Oil")
i28 =  Ingredient.create(name: "Vanilla Extract")
i29 =  Ingredient.create(name: "Confectioner's Sugar")
i30 =  Ingredient.create(name: "Heavy Cream")
i31 =  Ingredient.create(name: "Food Coloring")
i32 =  Ingredient.create(name: "Pecans")
i33 =  Ingredient.create(name: "Bittersweet Chocolate")
i34 =  Ingredient.create(name: "Cream Cheese")
i35 =  Ingredient.create(name: "White Chocolate")
i36 =  Ingredient.create(name: "Sage")
i37 =  Ingredient.create(name: "Bourbon")
i38 = Ingredient.create(name: "Peppermint Extract")


r1 = Recipe.create(name: "Dirt Bomb Muffin", description: "A cinnamon sugar coated donut that's actually a muffin!", instructions: "Ingredients:

4 1⁄2 cups unsalted butter, softened, plus more for greasing
3 cups (13 1/2 oz.) all-purpose flour, sifted
1 tbsp. baking powder
1⁄2 tsp. kosher salt
1⁄2 tsp. freshly grated nutmeg
1⁄4 tsp. ground cardamom
3 1⁄2 cups sugar
2 eggs
1 cup milk
2 1⁄2 tbsp. ground cinnamon
    

Heat oven to 400°. Grease three 6-cup muffin tins with butter; set aside. 
    
Whisk flour, baking powder, salt, nutmeg, and cardamom in a bowl; set aside.
     
Using a hand mixer, beat 12 tbsp. butter and 1 cup sugar in a bowl until fluffy. Add eggs, one at a time, beating well after each addition. Alternate adding dry ingredients in 3 batches and milk in 2 batches; beat until batter is smooth. 
    
Spoon about 1⁄4 cup batter into prepared muffin tins; 
        
Bake until golden and a toothpick inserted into donut comes out clean, 15-20 minutes. Invert donuts onto a baking sheet with a wire rack; let cool completely.
    
Melt remaining butter in a bowl; in another bowl mix remaining sugar and the cinnamon. Working one at a time, dip entire donut in butter and roll in the cinnamon sugar. Repeat dipping and rolling; return to wire rack until crust is set.
", image: "/images/DirtBombs.jpg")

r2 = Recipe.create(name: "Italian Pistachios Cookies", description: "A simple sweet and savory cookie", instructions: "Ingredients:

1 cup + 2 tablespoons all purpose flour (160 grams)
½ cup granulated sugar (100 grams)
½ teaspoon baking powder
½ teaspoon cinnamon
1 teaspoon cardamom
¾ cup pistachios (finely chopped) divided (100 grams)
1 pinch salt
⅓ cup + 2 tablespoons butter (softened & cubed) (100 grams)
1 large egg
    

For this recipe, you can use either a food processor, stand mixer, or by hand. In the bowl whisk together the flour, sugar, baking powder, cinnamon, cardamom, chopped pistachios (remove 1 tablespoon to sprinkle on the unbaked cookies set aside) and the salt, then add the butter and egg, pulse, beat with the flat beater or mix with a fork until combined.
    
On a lightly floured flat surface, form the dough into a ball, the dough should be soft but not sticky. Wrap it in plastic and refrigerate for 1 hour.
    
Remove the dough from the fridge and roll the dough into small golfball size balls, approximately 21, place the cookies on a parchment paper lined cookie sheet, lightly flatten (but not too much) each ball with the tongs of a fork, and sprinkle with the remaining chopped pistachios.
    
Pre-heat oven to 350F (180C).
    
While the oven is pre-heating chill the cookies for about 15-20 minutes, then bake for approximately 10-12 minutes or until golden around the edges (the bottom of the cookies should be lightly browned), let the cookies cool on the cookie sheet for approximately 15 minutes, then move to a wire rack to cool completely. Enjoy!
    
Notes
I was able to find finely chopped skinned pistachios in the store, but if you can’t find them then you will have to chop them yourself. You can use either roasted and shelled salted or unsalted nuts. Place the whole pistachios in a blender or food processor and chop until finely chopped but not powder.
")
r3 = Recipe.create(name: "Black and White Brownies", description: "Three layered brownie that is the definition of decadence", instructions: "
    
Ingredients: Pecan halves, Butter, Bittersweet Chocolate, Cocoa powder, Sugar, Eggs, Vanilla Extract, Cream Cheese, Flour, Salt

BROWNIE BATTER

Pecan halves - 1 cup plus 2 tablespoons or 113 grams
Butter - 14 tablespoons or 200 grams
Bittersweet chocolate, 60% to 62% cacao, chopped - 85 grams
Cocoa powder - ⅔ cup 50 grams
Sugar - 1 cup or 200 grams
3 large eggs room temp 
Vanilla extract - 2 teaspoons
Cream cheese room temp - ⅓ cup 85 grams
Flour - ½ cup + 2 tablespoons or 76 grams 
Salt - a pinch


SPECIAL EQUIPMENT One 8 by 2 inch square baking pan, wrapped with a cake strip, coated
with shortening, lined with two pieces of crisscrossed parchment or heavy-duty aluminum foil
(bottom and sides), extending a few inches past the edge of the pan, attached to each other by
a thin coating of shortening, then lightly coated with baking spray with flour

PREHEAT THE OVEN Twenty minutes or longer before baking, set an oven rack in the middle of the oven and preheat the oven to 325°F/160°C (300°F/150°C if using a Pyrex or dark pan).

BREAK AND TOAST THE PECANS Break the pecans into medium pieces. Spread them evenly on a baking sheet and bake for about 10 minutes to enhance their flavor. Stir once or twice to ensure even toasting and avoid overbrowning. Cool completely.

MELT THE BUTTER AND CHOCOLATE In a double boiler over hot, not simmering, water (do not let the bottom of the container touch the water), melt the butter and chocolate, stirring often. Scrape the melted chocolate mixture into the bowl of a stand mixer or large mixing bowl.

MAKE THE BATTER STAND MIXER METHOD In the bowl of a stand mixer fitted with the flat beater, beat the cocoa and sugar into the melted chocolate mixture on medium speed until incorporated. Scrape down the sides of the bowl. Beat in the eggs and vanilla for about 30 seconds. The mixture will become thick and glossy. Beat in the cream cheese until only small bits remain. Add the flour and salt and mix on low speed just until the flour is moistened, about 10 seconds. Add the pecans and mix for 3 seconds.

HAND METHOD In the bowl containing the melted chocolate mixture, whisk in the
cocoa and then the sugar until incorporated. Whisk in the eggs and vanilla until the mixture becomes thick and glossy. With a blending fork or wooden spoon, stir in the cream
cheese until only small bits remain. Add the flour and salt and stir just until the flour is
moistened. Stir in the pecans.

FILL THE PAN Scrape the batter into the prepared pan and smooth the surface evenly with an offset spatula.

BAKE THE BROWNIE Bake for 25 to 35 minutes, or until the batter has set only to 1 inch from the edge and a toothpick inserted 1 inch from the edge comes out clean. (An instant-read thermometer inserted into the center should read about 190°F/88°C.)

COOL THE BROWNIE Let the brownie cool in the pan on a wire rack until completely cool to the touch, about 2 hours. To speed cooling, the pan can be set in the refrigerator. Run a small metal spatula between the pan and the parchment to ensure that no batter has leaked through and stuck to the sides. Gently grasp the ends of the parchment and lift it up a little to make sure the brownie will release from the pan. If desired, lift the brownie out of the pan, use a long serrated knife to level the top, then return the brownie to the pan.

WHITE CHOCOLATE BUTTERCREAM BASE

White Chocolate - 150 grams
Butter 5 ½ tablespoons or 78 grams
2 large eggs at room temp


MAKE THE WHITE CHOCOLATE CUSTARD BASE 

Have ready a fine-mesh strainer suspended over a medium bowl.
In a double boiler over barely simmering water (do not let the bottom of the container touch the water), melt the white chocolate and butter, stirring often until smooth and creamy. 
Whisk the eggs lightly to break them up and then whisk them into the melted chocolate until incorporated. With a silicone spatula, continue stirring, being sure to scrape the mixture from the bottom of the container so that it doesn't risk overcooking.

Stir until an instant-read thermometer reads 160°F/71°C. The mixture will have thickened slightly. Pour it at once into the strainer and press it through.
Cover it tightly and refrigerate for about 1 hour, stirring every 15 minutes, until cool to the touch. (An instant-read thermometer should read 65° to 70°F/19° to 21°C.) To speed cooling, place the bowl in an ice water bath (see page 538), stirring often.


COMPLETE BUTTERCREAM

Butter - 5 tablespoons or 71 grams
White Chocolate Buttercream Base 
Vanilla extract 1 teaspoon

COMPLETE THE BUTTERCREAM In the bowl of a stand mixer fitted with the whisk beater, beat the butter on medium-low speed until creamy, about 30 seconds.
Gradually beat the white chocolate custard base into the butter, scraping down the sides of the bowl as needed. Raise the speed to medium-high and beat for 2 minutes. The color will lighten and stiff peaks will form when the beater is raised. 
Cover and set aside for 1½ to 2 hours, or until the mixture is slightly thickened and spongy. It should be no warmer than 70°F/21°C. If necessary, place the bowl in an ice water bath for a few minutes, stirring constantly. 
Beat on medium-high speed until smooth, light, and creamy, about 30 seconds. Add the vanilla and beat just until incorporated. The volume of the buttercream will vary depending on the temperature of the ingredients and the shape of the mixer bowl.

FROST THE BROWNIE Scrape the white chocolate buttercream onto the brownie and, using a small offset spatula, evenly frost it with about 1½ cups/9.7 ounces/275 grams of the white chocolate buttercream. (Refrigerate or freeze the leftover buttercream for future use.) Refrigerate the frosted brownie for a minimum of 1 hour to firm the buttercream before applying the ganache glaze.


DARK CHOCOLATE GANACHE GLAZE
Bittersweet Chocolate, 60% to 62% cacao - 130 grams
Heavy Cream - ½ cup or 116 grams
Bourbon or Vanilla Extract - 1 tablespoon or ½ oz or 15 grams

Have ready a fine-mesh strainer suspended over a 2 cup glass measure with a spout.
In a food processor, process the chocolate until very fine. Transfer it to a small heatproof glass bowl.
In a 1 cup or larger microwavable measure with a spout (or in a small saucepan over medium heat, stirring often), scald the cream (heat it to the boiling point; small bubbles will form around the periphery) and pour it over the chocolate. 
Cover the bowl for 5 minutes to let the chocolate melt. Using a silicone spatula, gently stir together the chocolate and cream until smooth. 
Stir in the bourbon until smooth. 
Press the mixture through the strainer and cool it to warm room temperature so that it is still fluid but not warm to the touch (75° to 82°F/24° to 28°C). (This takes only about 10 minutes, so set it in a warm spot to keep it pourable. If it becomes too firm, reheat it in the microwave with 3 second bursts or in the top of a double boiler.)

GLAZE THE BROWNIE Starting at the center, with the measuring cup's spout just above the buttercream, slowly pour the ganache glaze, moving the cup as needed to coat all the buttercream. 
With the small offset spatula, smooth the glaze evenly on top. Refrigerate for a minimum of 1 hour to set the glaze.

UNMOLD AND CUT THE BROWNIES Grasp two of the opposite overhanging edges of the parchment and lift out the brownie. Set it on a countertop. If desired, for perfectly squared off corners, use a serrated knife to trim the sides of the brownie. Use a thin bladed knife, run under warm water, and wiped dry between each cut, to cut the brownie into squares. To retain the pristine white of the buttercream, cut straight down and then pull the knife straight out. If desired, cut each square in half diagonally to make triangles. 
STORE Airtight: room temperature, 1 day; refrigerated, 2 weeks; frozen, 6 months.
")
r4 = Recipe.create(name: "Monkey Bread", description: "A savory and herbalicious tear and share loaf", instructions: "Ingredients:

500 g bread flour 
7 g instant dry yeast
50 g granulated sugar 
100 g whole milk, warm (~85 °F)
200 g water, warm (~85 °F)
10 g kosher salt
85 g unsalted butter, cubed + very soft (~75-80 °F)
As needed cooking olive oil or non-stick spray 
Melted unsalted butter 
Parsely, chopped 
Chives, chopped
Dill, chopped
Garlic, minced
Kosher salt
Freshly ground black pepper
    
Combine the flour, yeast, and sugar in the bowl of a stand mixer.
    
Evenly combine the dry ingredients using a whisk or fork. 
    
Add the milk, water, and salt to the bowl. With the mixer fitted with a dough hook attachment, combine the dough on medium-low speed until almost homogeneous. 
    
Begin adding the butter, one cube at a time, and waiting until each cube is incorporated before adding another one until all of the butter has been added. 
    
Increase the speed to medium-high and mix until the dough is smooth, elastic, and clears the sides of the bowl, about 4-5 minutes.
    
Transfer the dough to a large greased bowl and cover it with plastic wrap. 
    
Let the dough proof until about doubled in size, about 1-2 hours depending on the warmth of the room. 
    
Meanwhile, grease 1 large tube or bundt pan or loaf pan or muffin tin generously with non-stick spray.
    
Remove the dough from the bowl and place it on a lightly oiled work surface. Divide and shape the dough into even golf-ball-sized portions.*If using a muffin tin, make portions half the size. 
    
Roll the dough balls in a mixture of the melted butter, fresh herbs (of your choice), salt, and pepper. Place them into the prepared baking pan(s).
    
Loosely cover the pan(s), and allow the dough to proof for another 45 minutes - 1 hour, until puffed. 
    
Meanwhile, preheat the oven to 350 °F. 
    
Once risen, remove the plastic wrap from the pan(s). 
    
Bake the monkey bread for 30-35 minutes, turning halfway through, until the dough is cooked through (200-205 °F) and golden brown on top. 
    
Allow the bread to cool for 10 minutes, then flip it onto a serving platter of your choice. Brush the dough with any remaining herb butter. Serve warm.
    ")
r5 = Recipe.create(name: "Chocolate Cupackes and Vanilla Frosting", description: "Moist and rich chocolate cupcakes with vanilla frosting make for a classic pairing", instructions:"Cupcake Ingredients and Instructions:

¾ cup (94g) all-purpose flour (spoon & leveled)
½ cup (41g) unsweetened natural cocoa powder
¾ teaspoon baking powder
½ teaspoon baking soda
¼ teaspoon salt
2 large eggs, at room temperature*
½ cup (100g) granulated sugar
½ cup (100g) packed light brown sugar
⅓ cup (80ml) vegetable or canola oil (or melted coconut oil)
2 teaspoons pure vanilla extract
½ cup (120ml) buttermilk, at room temperature


Preheat the oven to 350°F (177°C). Line a 12-cup muffin pan with cupcake liners. Line a second pan with 2 liners – this recipe makes about 14 cupcakes. Set aside.

Whisk the flour, cocoa powder, baking powder, baking soda, and salt together in a large bowl until thoroughly combined. Set aside. 

In a medium bowl, whisk the eggs, granulated sugar, brown sugar, oil, and vanilla together until combined. 

Pour half of the wet ingredients into the dry ingredients. Then half of the buttermilk. Gently whisk for a few seconds. Repeat with the remaining wet ingredients and buttermilk. Stir until *just* combined; do not overmix. The batter will be thin.

Pour or spoon the batter into the liners. Fill only halfway (this is imperative! only halfway!) to avoid spilling over the sides or sinking.

Bake for 18-21 minutes, or until a toothpick inserted in the center comes out clean. Allow to cool completely before frosting. I usually let them cool in the pan.

Frosting Ingredients and Instructions:

1 cup (230g) unsalted butter, softened to room temperature
4 – 5 cups (480-600g) confectioners’ sugar 
¼ cup (60ml) heavy cream, half-and-half, or whole milk, at room temperature
2 teaspoons pure vanilla extract
Salt, to taste
Food Coloring, drops as needed *optional

With a handheld or stand mixer fitted with a paddle attachment, beat the butter on medium speed until creamy, about 2 minutes. Add 4 and ½ cups confectioners’ sugar, the heavy cream, and vanilla extract. Beat on low speed for 30 seconds, then increase to medium-high speed and beat for 2 full minutes. Taste. Add a pinch of salt if frosting is too sweet. ⅛ teaspoon recommended.

Adjust if needed: You can control the consistency at this point– add up to ½  cup more confectioners’ sugar if frosting is too thin or more heavy cream if frosting is too thick (add only 1 Tablespoon at a time, beat together, then taste and add more if desired).
If desired add food coloring. Mix in a drop of the desired color(s) one at a time.

Use immediately or cover tightly and store for up to 1 week in the refrigerator or up to 3 months in the freezer. After freezing, thaw in the refrigerator then beat the frosting on medium speed for a few seconds so it’s creamy again. After thawing or refrigerating, beating in a splash of heavy cream or milk will help thin the frosting out again, if needed.
" )
r6 = Recipe.create(name: "Cheddar Herb Biscuits", description: "Buttermilk Biscuits with a cheesey twist!", instructions: "Ingredients:

3 cups all-purpose flour
4 teaspoons baking powder
2 tablespoons granulated sugar
¾ teaspoons cream of tartar
½ teaspoon salt
¾ cup butter, cold and cut into cubes
1 large egg
1 cup buttermilk (or whole milk)
1 cup sharp cheddar cheese, shredded
¼ cup chopped fresh herbs, any combination, I used thyme, sage, parsley, and rosemary
    

Preheat the oven to 450 degrees F. and grease or spray a cast-iron skillet with cooking spray. 
    
In a medium bowl, whisk together the all-purpose flour, baking powder, sugar, cream of tartar, and salt. Set aside.
    
In a separate small bowl, whisk together the egg, milk, cheddar cheese, and chopped fresh herbs. Set aside.
    
Using a fork or pastry cutter, cut the cubed cold butter into the flour mixture until it resembles a coarse meal and the butter is about the size of a pea.
    
Mix the egg mixture into the flour mixture using a wooden spoon until it comes together to form a loose dough ball.
    
Roll the dough into a ball, flour a clean work surface, and then using a rolling pin. Roll out the dough and cut the biscuits using a biscuit cutter or anything with a round shape.

Place the cut biscuits into the prepared pan and bake for 10 to 15 minutes, until the tops of the biscuits are golden brown.
    
Brush the tops of the biscuits with additional butter if you would like and serve immediately.
")

r7 = Recipe.create(name: "Thicc Mints", description: "Bigger is better when it comes to this grown up Girl Scout Classic", instructions: "Ingredients

For the cookie:
    
2 cups (260 g) all-purpose flour
½ cup (42 g) unsweetened Dutch-processed cocoa powder
½ teaspoon salt
1 cup (226 g) unsalted butter, softened
⅔ cup (133 g) granulated sugar
1 large egg white
1 teaspoon vanilla extract
½ teaspoon peppermint extract
    
For the coating:
    
12 ounces (339 g) dark or semisweet chocolate, coarsely chopped
½ teaspoon vegetable oil
¼ teaspoon peppermint extract
    
Cookies:
    
In a medium bowl, combine the flour, cocoa powder, and salt. Stir with a whisk; set aside.
    
Using a stand mixer fitted with the paddle attachment or with a hand-held mixer, beat the butter and sugar together on medium speed until smooth and creamy, about 3 minutes. Beat in the egg white followed by the vanilla and peppermint extract. The dough may appear curdled, this is normal. Gradually add the flour in 3 additions, beating just until incorporated after each one. Scrape down the sides of the bowl as needed. 
    
Divide the dough in half. Working with one half at a time. Place the dough between two pieces of parchment paper and roll it to a ¼ inch thickness. Leaving the dough in between the parchment paper, transfer it to a baking sheet. It's okay to stack the slabs of rolled dough. Refrigerate for at least 3 hours or freeze it for 1 hour.
    
Preheat the oven to 350°F. Line 2 baking sheets with parchment paper. 
    
Working with one disk at a time. Remove the top layer of parchment paper and cut circles with a 2-inch cookie cutter. Place the cookies on the prepared baking sheets about 1 and ½ inches apart. Gather the scraps of dough, reroll and chill to continue cutting and baking.
    
Bake for 15 to 18 minutes, until the cookies feel firm to the touch. Cool on the baking sheet for 5 minutes before transferring them to a wire rack to cool completely.
    
Coating:

Combine the chocolate, oil, and extract in a medium heatproof bowl set over a pot of barely simmering water. Stir continuously until melted and smooth.
    
Using a fork, dip each cookie into the melted chocolate, turning to coat and tapping off any excess. Place cookies onto a parchment-lined baking sheet.
    
Refrigerate the cookies until set, about 10 minutes. Cookies are best when served cold.
" )

ri1 = RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i1.id)
ri2 = RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i3.id)
ri3 = RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i4.id)
ri4 = RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i6.id)
ri5 = RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i7.id)
ri6 = RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i13.id)
ri7 = RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i15.id)
ri8 = RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i21.id)
ri9 = RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i22.id)
ri10 = RecipeIngredient.create(recipe_id: r1.id, ingredient_id: i23.id)

ri11 = RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i1.id)
ri12 = RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i3.id)
ri13 = RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i6.id)
ri14 = RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i7.id)
ri15 = RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i13.id)
ri16 = RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i15.id)
ri17 = RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i20.id)
ri18 = RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i21.id)
ri19 = RecipeIngredient.create(recipe_id: r2.id, ingredient_id: i22.id)

ri20 = RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i1.id)
ri21 = RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i3.id)
ri22 = RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i6.id)
ri23 = RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i7.id)
ri24 = RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i15.id)
ri25 = RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i24.id)
ri26 = RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i28.id)
ri27 = RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i30.id)
ri28 = RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i32.id)
ri29 = RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i33.id)
ri30 = RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i34.id)
ri31 = RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i35.id)
ri32 = RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i36.id)
ri33 = RecipeIngredient.create(recipe_id: r3.id, ingredient_id: i37.id)

ri34 = RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i1.id)
ri35 = RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i2.id)
ri36 = RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i3.id)
ri37 = RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i4.id)
ri38 = RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i5.id)
ri39 = RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i6.id)
ri40 = RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i7.id)
ri41 = RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i8.id)
ri42 = RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i9.id)
ri43 = RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i10.id)
ri53 = RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i11.id)
ri54 = RecipeIngredient.create(recipe_id: r4.id, ingredient_id: i12.id)

ri55 = RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i1.id)
ri56 = RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i3.id)
ri57 = RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i6.id)
ri58 = RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i7.id)
ri59 = RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i13.id)
ri60 = RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i15.id)
ri61 = RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i17.id)
ri62 = RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i24.id)
ri63 = RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i25.id)
ri64 = RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i26.id)
ri65 = RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i27.id)
ri66 = RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i28.id)
ri67 = RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i29.id)
ri68 = RecipeIngredient.create(recipe_id: r5.id, ingredient_id: i30.id)
ri69 = RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i1.id)
ri70 = RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i3.id)
ri71 = RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i6.id)
ri72 = RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i7.id)
ri73 = RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i8.id)
ri74 = RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i13.id)
ri75 = RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i14.id)
ri76 = RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i15.id)
ri77 = RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i16.id)
ri78 = RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i17.id)
ri79 = RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i18.id)
ri80 = RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i19.id)
ri81 = RecipeIngredient.create(recipe_id: r6.id, ingredient_id: i36.id)

ri82 = RecipeIngredient.create(recipe_id: r7.id, ingredient_id: i1.id)
ri83 = RecipeIngredient.create(recipe_id: r7.id, ingredient_id: i24.id)
ri84 = RecipeIngredient.create(recipe_id: r7.id, ingredient_id: i6.id)
ri85 = RecipeIngredient.create(recipe_id: r7.id, ingredient_id: i7.id)
ri86 = RecipeIngredient.create(recipe_id: r7.id, ingredient_id: i3.id)
ri86 = RecipeIngredient.create(recipe_id: r7.id, ingredient_id: i15.id)
ri87 = RecipeIngredient.create(recipe_id: r7.id, ingredient_id: i28.id)
ri82 = RecipeIngredient.create(recipe_id: r7.id, ingredient_id: i38.id)


puts "Finished seeding"
