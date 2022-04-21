const mysql = require('mysql')
const inquirer = require('inquirer')

const promptMenu = {
    viewAllEmployees: 'View All Employees',
    viewByDepartment: 'View All Employees By Department',
    viewByManager: 'View All Employees by Manager',
    addEmployee: 'Add an Employee',
    deleteEmployee: 'Delete an Employee',
    updateRole: 'Update Employees Role',
    updateEmployeeManager: 'Update Employees Manager',
    viewAllRoles: 'View All Roles',
    exit: 'Exit'
};

const connection = mysql.createConnection({host: 'localhost', port: 3001, user: 'root', password: 'Apollo2021!', database: 'employees', });
connection.connect(err => {
    if (err) throw err;
    prompt();
});

function prompt() {
    inquirer
        .prompt({
            name: 'action',
            type: 'list',
            message: 'What Would you like to do?',
            choices: [
               promptMenu.viewAllEmployees, 
               promptMenu.viewByDepartment,
               promptMenu.viewByManager,
               promptMenu.addEmployee,
               promptMenu.deleteEmployee,
               promptMenu.updateRole,
               promptMenu.updateEmployeeManager,
               promptMenu.exit
            ]
        })
        .then(anser => {
            console.log('answer', answer);
            switch (answer.action) {
                case promptMenu.viewAllEmployees:
                    viewAllEmployees();
                    break;
                
                case promptMenu.viewByDepartment:
                    viewAllEmployees();
                    break;

                case promptMenu.viewByManager:
                    viewByManager();
                    break;
                
                case promptMenu.addEmployee:
                    addEmployee();
                    break;

                case promptMenu.deleteEmployee:
                    deleteEmployee();
                    break;

                case promptMenu.updateRole:
                    updateRole();
                    break;

                case promptMenu.viewAllRoles:
                    viewAllRoles();
                    break;

                case promptMenu.exit:
                    exit();
                    break;
            }              
        });


function viewAllEmployees() {

}

function viewByDepartment() {

}

function viewByManager() {

}

function viewAllRoles() {

}

async function addEmployee() {

}

async function deleteEmployee() {

}

async function updateRole() {

}

function askName() {
    return ([
       {
           name: 'first',
           type: 'input',
           message: 'Enter first name:'
       },
       {
        name: 'last',
        type: 'input',
        message: 'Enter last name:'
        }
    ])
}


}