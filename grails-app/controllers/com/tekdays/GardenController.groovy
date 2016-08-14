package com.tekdays


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GardenController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Garden.list(params), model: [gardenInstanceCount: Garden.count()]
    }

    def show(Garden gardenInstance) {
        respond gardenInstance
    }

    def create() {
        respond new Garden(params)
    }

    @Transactional
    def save(Garden gardenInstance) {
        if (gardenInstance == null) {
            notFound()
            return
        }

        if (gardenInstance.hasErrors()) {
            respond gardenInstance.errors, view: 'create'
            return
        }

        gardenInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'garden.label', default: 'Garden'), gardenInstance.id])
                redirect gardenInstance
            }
            '*' { respond gardenInstance, [status: CREATED] }
        }
    }

    def edit(Garden gardenInstance) {
        respond gardenInstance
    }

    @Transactional
    def update(Garden gardenInstance) {
        if (gardenInstance == null) {
            notFound()
            return
        }

        if (gardenInstance.hasErrors()) {
            respond gardenInstance.errors, view: 'edit'
            return
        }

        gardenInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Garden.label', default: 'Garden'), gardenInstance.id])
                redirect gardenInstance
            }
            '*' { respond gardenInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Garden gardenInstance) {

        if (gardenInstance == null) {
            notFound()
            return
        }

        gardenInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Garden.label', default: 'Garden'), gardenInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'garden.label', default: 'Garden'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
