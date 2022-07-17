*** Settings ***
Documentation       Test Suite for booking appointment in Migri system
Library             SeleniumLibrary
Resource            ../Pages/migri_home.robot


*** Test Cases ***
Book Appointment With Available Time Checked as True
    [Documentation]         Verifes  appointment works
    Open Browser and Navigate to Booking system
    Book for One Person








