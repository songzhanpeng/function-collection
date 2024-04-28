const axios = require("axios");

const request = axios.create({
  // timeout: 30 * 1000, // 设置超时时间为 30 秒
  cancelToken: false,
});

// http://api.suxun.site/api/sixs?type=json
const getSixs = () => {
  return request.get("http://api.suxun.site/api/sixs?type=json");
};

module.exports ={
    getSixs
}