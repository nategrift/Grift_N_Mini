// import your packages here
import { fetchData } from "./modules/fetchData.js";




fetchData("./includes/index.php").then(data => console.log(data)).catch(err => console.log(err));