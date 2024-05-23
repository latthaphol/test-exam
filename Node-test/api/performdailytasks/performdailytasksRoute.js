const express = require('express')
const { sessionChecker } = require('../../middlewares/session')
const controller = require('./performdailytasksController')
const router = express.Router()
const multer = require('multer');




router.post('/add_tasks', controller.add_tasks)
router.put('/update_tasks',controller.update_tasks)
router.post('/delete_tasks',controller.delete_tasks)

router.get('', controller.get_tasks)

module.exports = router