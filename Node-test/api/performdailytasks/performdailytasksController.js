const model = require('./performdailytasksModel')
const { success, failed } = require('../../config/response');
const { check_field } = require('../../middlewares/utils');
const { myFs } = require('../..');

class performdailytasksController {

    async add_tasks(req, res) {
        try {
            const fields = ["task_name","task_type","start_time", "end_time", "status",]
            let { object, missing } = await check_field(req, fields)
            if (missing.length > 0) {
                failed(res, `Column "${missing}" is missing!`)
            } else {
                const dbRes = await model.add_tasks(object)
                success(res, object, "Add success!")
            }
        } catch (error) {
            console.log(error)
            failed(res, 'Internal Server Error')
        }
    }

    async update_tasks(req, res) {
        try {
            const { task_id } = req.body
            let object = req.body
            delete object.task_id
            if (!task_id) {
                failed(res, `Column "task_id" is missing!`)
            } else {
                await model.update_tasks(task_id, object)
                success(res, object, "Update product success!")
            }
        } catch (error) {
            console.log(error)
            failed(res, 'Internal Server Error')
        }
    }

    async delete_tasks(req, res) {
        try {
            const { task_id } = req.body
            let object = req.body
            delete object.task_id
            if (!task_id) {
                failed(res, `Column "task_id" is missing!`)
            } else {
                await model.delete_tasks(task_id, object)
                success(res, object, "delete product success!")
            }
        } catch (error) {
            console.log(error)
            failed(res, 'Internal Server Error')
        }
    }


    async get_tasks(req, res) {
        try {
            const result = await model.get_tasks();
            success(res, result, "Product list")
        } catch (error) {
            console.log(error)
            failed(res, 'Internal Server Error')
        }
    }

}

module.exports = new performdailytasksController() 