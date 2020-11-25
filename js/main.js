// import your packages here
import { fetchData } from "./modules/fetchData.js";

(() => {
    let mini_vue = new Vue({

        data: {
            error: '',
            selectedMiniVideo: '',
            selectedCar: '',
            mini_cars: [],
            lightBoxShown: false,
            selectedVideo: '',
            videoPlaying: true,
        },

        mounted: function() {
            fetchData("./includes/index.pp").then(data => this.updateCars(data)).catch(err => this.error = err);
        },


        methods: {
            toggleVideoPlaying() {
                let video = this.$refs.car_video;
                if (this.videoPlaying) {
                    video.pause();
                    this.videoPlaying = false
                } else {
                    video.play();
                    this.videoPlaying = true
                }
            },
            changeVideo(id) {
                if (this.mini_cars[id] && this.mini_cars[id].car_id == id) {
                    this.selectedVideo = this.mini_cars[id];
                } else {
                    fetchData(`./includes/index.php?id=${id}`).then(data => this.selectedVideo = data[0]).catch(err => this.error = err);
                }
            },
            updateCars(cars) {
                this.mini_cars = cars;
                if (this.selectedVideo == '') {
                    this.selectedVideo = cars[0];
                }
            },
            carLightBox(carID) {
                fetchData(`./includes/index.php?id=${carID}`).then(data => this.showLightBox(data[0])).catch(err => this.error = err);
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
