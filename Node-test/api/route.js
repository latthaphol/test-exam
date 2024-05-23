
const performdailytasks  = require("../api/performdailytasks/performdailytasksRoute");

exports.routeApi = (app, version) => {
     app.use(version + "/performdaily", performdailytasks);
};