// import your packages here
import { fetchData } from "./modules/fetchData.js";

(() => {
    let mini_vue = new Vue({

        data: {
            selectedMiniVideo: '',
            selectedCar: '',
            mini_cars: [],
            lightBoxShown: false,
        },

        // this is the "mounted" lifecycle hook. Vue is done creating itself, and has attached itself to the "app" div on the page
        mounted: function() {
            console.log("Vue is mounted!");

            fetchData("./includes/index.php").then(data => this.mini_cars = data).catch(err => console.log(err));
        },


        methods: {
            changeVideo(id) {
                console.log("id");
            },
            updateCars(cars) {
                console.log('Updated cars');
                console.log(cars);
                this.mini_cars = cars;
            },
            carLightBox(carID) {
                fetchData(`./includes/index.php?id=${carID}`).then(data => this.showLightBox(data[0])).catch(err => console.log(err));
            },
            showLightBox(car) {
                this.selectedCar = car;
                this.lightBoxShown = true;
            },
            hideLightBox() {
                this.lightBoxShown = false;
            }
        }
    }).$mount("#app"); 

})();
