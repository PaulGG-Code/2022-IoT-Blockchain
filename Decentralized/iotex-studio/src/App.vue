<template>
  <div id="app">
    <router-view></router-view>
  </div>
</template>

<script lang="ts">
import { Vue, Component } from "vue-property-decorator";

@Component
export default class App extends Vue {}
</script>

<style lang="stylus">
@import './assets/tailwind.css'
@import '~v-contextmenu/dist/index.css'
@import './assets/global.styl'

#app
  background color-dark
  font-family 'Avenir', Helvetica, Arial, sans-serif
  -webkit-font-smoothing antialiased
  -moz-osx-font-smoothing grayscale
  // text-align center
  color color-dark-text
div
  border-color color-dark-border
#app
  .ace_gutter
    color color-dark-text
    background-color color-dark
    border-color color-dark-border
  .gutter
    background transparent
body
  .el-button--text
    color grey
    &:hover
      color color-primary
  .el-form-item
    margin-bottom 0
  .el-form-item__content
    line-height 30px
  .el-form-item__label
    font-size 12px
    line-height 30px
  .el-icon-caret-right
    display none
  .el-tree, .el-input_inner, .el-input, .el-input__inner, .el-select-dropdown, .el-popper, .el-form-item__label, .el-message-box, .v-contextmenu, .el-dialog, .el-checkbox__input, .el-checkbox__label
    color color-dark-text
    background-color color-dark
    border-color color-dark-input-border
  .el-checkbox,
    .is-checked
      .el-checkbox__input, .el-checkbox__label, .el-checkbox__inner
        color color-dark-text !important
        background-color color-dark !important
        border-color color-dark-input-border !important
  .el-select-dropdown__item
    &.selected
      color lighten(color-dark-text, 20%)
    &.hover
      background-color darken(color-dark, 5)
  .el-divider
    background-color lighten(color-dark, 10)
  .el-button--primary, .el-button--default, .el-button.is-disabled
    &:hover, &:focus, color color-dark-text
      background saturation(color-primary, 60%)
    color color-dark-text
    background saturation(color-primary, 30%)

    // border-color darken(color-primary, 30%)
    border none
    font-weight bold
  .el-input__inner
    &:hover, &:focus
      color color-dark-text
      background lighten(color-dark, 10%)
      border-color lighten(color-dark-input-border, 10%)
    border-color color-dark-input-border
  .el-tree-node
    &:focus, &:hover, &.is-current
      > .el-tree-node__content
        background-color lighten(color-dark, 10%) !important
  .el-message-box, .el-dialog
    &__title, &__header
      color color-dark-text
    &__content, &__body
      color darken(color-dark-text, 20%)
  .v-contextmenu
    box-shadow 2px 2px 8px darken(color-dark, 30%)
    .v-contextmenu-item
      color color-dark-text
  .el-tabs
    .el-tabs__item
      border-left none !important
      border-bottom none
      color color-dark-text
      line-height 30px
      height 30px
      &.is-active
        border-bottom 1px solid color-primary !important
    .el-tabs__header
      margin 0
    .el-tabs__nav, .el-tabs__header
      border none !important
  .el-alert
    padding 4px 16px
    .el-alert__title
      cursor pointer
      opacity 1
      &:hover
        opacity 0.7
</style>
