// const { default: AddressControler } = require("../controllers/AddressControler");
// const { default: GoldLoanController } = require("../controllers/GoldLoanController");

const { default: AdminsController } = require("../controllers/AdminsController");
const { default: BrandsController } = require("../controllers/BrandsController");
const { default: CartController } = require("../controllers/CartController");
const { default: CategoriesController } = require("../controllers/CategoriesController");
const { default: CityController } = require("../controllers/CityController");
const { default: CountryController } = require("../controllers/CountryController");
const { default: HsnCodeController } = require("../controllers/HsnCodeController");
const { default: OrdersController } = require("../controllers/OrdersController");
const { default: OrederProductsController } = require("../controllers/OrdersProductsController");
const { default: PagesController } = require("../controllers/PagesController");
const { default: ProductAttributesController } = require("../controllers/ProductAttributesController");
const { default: ProductImagesController } = require("../controllers/ProductImagesController");

const { default: ProductsController } = require("../controllers/ProductsController");

const { default: ProductVariantsController } = require("../controllers/ProductVariantsController");
const { default: SitesController } = require("../controllers/SitesController");
const { default: StateController } = require("../controllers/StateController");

const { default: UomsController } = require("../controllers/UomsController");

const { default: UsersAddressesController } = require("../controllers/UsersAddressesController");
const { default: UsersController } = require("../controllers/UsersController");
const { default: WishlistController } = require("../controllers/WishlistsController");
// const { default: ProductsController } = require("../controllers/ProductsController");


// const { default: UserController } = require("../controllers/UserController");


const routes =(app) =>{
    app.get("/admin", AdminsController.index);
    app.post("/admin", AdminsController.store);
    app.get("/admin/:id", AdminsController.onedata);
    app.put("/admin/:id", AdminsController.update); 
    app.delete("/admin/:id", AdminsController.deletedata); 

    app.get("/brands", BrandsController.index);
    app.post("/brands", BrandsController.store);
    app.get("/brands/:id", BrandsController.onedata);
    app.put("/brands/:id", BrandsController.update); 
    app.delete("/brands/:id", BrandsController.deletedata); 

    app.get("/cart", CartController.index);
    app.post("/cart", CartController.store);
    app.get("/cart/:id", CartController.onedata);
    app.put("/cart/:id", CartController.update); 
    app.delete("/cart/:id", CartController.deletedata); 

    app.get("/categories", CategoriesController.index);
    app.post("/categories", CategoriesController.store);
    app.get("/categories/:id", CategoriesController.onedata);
    app.put("/categories/:id", CategoriesController.update); 
    app.delete("/categories/:id", CategoriesController.deletedata); 

    app.get("/city", CityController.index);
    app.post("/city", CityController.store);
    app.get("/city/:id", CityController.onedata);
    app.put("/city/:id", CityController.update); 
    app.delete("/city/:id", CityController.deletedata); 

    app.get("/country", CountryController.index);
    app.post("/country", CountryController.store);
    app.get("/country/:id", CountryController.onedata);
    app.put("/country/:id", CountryController.update); 
    app.delete("/country/:id", CountryController.deletedata); 

    app.get("/hsncode", HsnCodeController.index);
    app.post("/hsncode", HsnCodeController.store);
    app.get("/hsncode/:id", HsnCodeController.onedata);
    app.put("/hsncode/:id", HsnCodeController.update); 
    app.delete("/hsncode/:id", HsnCodeController.deletedata); 

    app.get("/order", OrdersController.index);
    app.post("/order", OrdersController.store);
    app.get("/order/:id", OrdersController.onedata);
    app.put("/order/:id", OrdersController.update); 
    app.delete("/order/:id", OrdersController.deletedata); 

    app.get("/orderproducts", OrederProductsController.index);
    app.post("/orderproducts", OrederProductsController.store);
    app.get("/orderproducts/:id", OrederProductsController.onedata);
    app.put("/orderproducts/:id", OrederProductsController.update); 
    app.delete("/orderproducts/:id", OrederProductsController.deletedata); 

    app.get("/pages", PagesController.index);
    app.post("/pages", PagesController.store);
    app.get("/pages/:id", PagesController.onedata);
    app.put("/pages/:id", PagesController.update); 
    app.delete("/pages/:id", PagesController.deletedata); 

    app.get("/productattributes", ProductAttributesController.index);
    app.post("/productattributes", ProductAttributesController.store);
    app.get("/productattributes/:id", ProductAttributesController.onedata);
    app.put("/productattributes/:id", ProductAttributesController.update); 
    app.delete("/productattributes/:id", ProductAttributesController.deletedata); 

    app.get("/productimage", ProductImagesController.index);
    app.post("/productimage", ProductImagesController.store);
    app.get("/productimage/:id", ProductImagesController.onedata);
    app.put("/productimage/:id", ProductImagesController.update); 
    app.delete("/productimage/:id", ProductImagesController.deletedata); 

    app.get("/products", ProductsController.index);
    app.post("/products", ProductsController.store);
    app.get("/products/:id", ProductsController.onedata);
    app.put("/products/:id", ProductsController.update); 
    app.delete("/products/:id", ProductsController.deletedata); 

    app.get("/productvariants", ProductVariantsController.index);
    app.post("/productvariants", ProductVariantsController.store);
    app.get("/productvariants/:id", ProductVariantsController.onedata);
    app.put("/productvariants/:id", ProductVariantsController.update); 
    app.delete("/productvariants/:id", ProductVariantsController.deletedata); 
     
    app.get("/sites", SitesController.index);
    app.post("/sites", SitesController.store);
    app.get("/sites/:id", SitesController.onedata);
    app.put("/sites/:id", SitesController.update); 
    app.delete("/sites/:id", SitesController.deletedata); 

    app.get("/state", StateController.index);
    app.post("/state", StateController.store);
    app.get("/state/:id", StateController.onedata);
    app.put("/state/:id", StateController.update); 
    app.delete("/state/:id", StateController.deletedata); 

    app.get("/uoms", UomsController.index);
    app.post("/uoms", UomsController.store);
    app.get("/uoms/:id", UomsController.onedata);
    app.put("/uoms/:id", UomsController.update); 
    app.delete("/uoms/:id", UomsController.deletedata); 

    app.get("/usersaddresses", UsersAddressesController.index);
    app.post("/usersaddresses", UsersAddressesController.store);
    app.get("/usersaddresses/:id", UsersAddressesController.onedata);
    app.put("/usersaddresses/:id", UsersAddressesController.update); 
    app.delete("/usersaddresses/:id", UsersAddressesController.deletedata); 

    app.get("/users", UsersController.index);
    app.post("/users", UsersController.store);
    app.get("/users/:id", UsersController.onedata);
    app.put("/users/:id", UsersController.update); 
    app.delete("/users/:id", UsersController.deletedata);
    
    app.get("/wishlist", WishlistController.index);
    app.post("/wishlist", WishlistController.store);
    app.get("/wishlist/:id", WishlistController.onedata);
    app.put("/wishlist/:id", WishlistController.update); 
    app.delete("/wishlist/:id", WishlistController.deletedata); 

   



};
exports.default = {
    routes,
};
  
  
