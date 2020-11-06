const fs = require("fs")

const filename = process.argv[2]
const field = process.argv[3].split(".")
const value = process.argv[4]


const file = fs.readFileSync(filename)
const package = JSON.parse(file)
let record = package
field.forEach((fieldName, index) => {
  if (index < field.length - 1) {
    if (!package[fieldName]) {
      package[fieldName] = {}
    }
    record = package[fieldName]
  }
})
record[field[field.length - 1]] = value
const serialized = JSON.stringify(package, null, 2)
fs.writeFileSync(filename, serialized)