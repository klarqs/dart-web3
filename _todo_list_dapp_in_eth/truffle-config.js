module.exports = {
  networks: {
    development: {
      host: "192.168.43.60",
      port: 7545,
      network_id: "*",
    },
    advanced: {
      websockets: true,
    }
  },

  mocha: {
    // timeout: 100000
  },

  contracts_build_directory: "./scr/abis/",
  compilers: {
    solc: {
      optimizer: {
        enabled: true,
        runs: 200,
      }
    }
  },
};
