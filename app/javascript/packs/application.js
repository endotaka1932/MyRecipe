// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

window.$ = window.jQuery = require('jquery');
require('packs/raty')


document.addEventListener('turbolinks:load', () => {
    $('.assessment_show_btn').on('click', () => {
        $('.assessment_show').removeClass('hidden')
        $('.assessment').addClass('hidden')
    })

    $('.assessment_active_btn').on('click', () => {
        $('.assessment_show').addClass('hidden')
        $('.assessment').removeClass('hidden')
    })

    $('.cancel').on('click', () => {
        $('.assessment_show').addClass('hidden')
        $('.assessment').removeClass('hidden')
    })



    $('.openbtn').on('click', () => {
        $('.openbtn').toggleClass('active')
        $('#g-nav').toggleClass('panelactive')
    })

    $('#g-nav a').on('click', () => {
        $('.openbtn').removeClass('active')
        $('#g-nav').removeClass('panelactive')
    })
})