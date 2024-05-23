const knex = require('../../config/database')

class performdailytasksModel {

   
    add_tasks(data) {
        return knex('performdailytasks').insert(data)
    }
    update_tasks(task_id, data) {
        return knex('performdailytasks').update(data).where({ task_id })
    }

  
    async delete_tasks(task_id) {
        try {
            await knex('performdailytasks').where({ task_id }).del();
            return true; 
        } catch (error) {
            console.log(error);
            throw new Error('Failed to delete task');
        }
    }
    
   

    get_tasks() {
        return knex('performdailytasks').select('*');
    }

 

}

module.exports = new performdailytasksModel()