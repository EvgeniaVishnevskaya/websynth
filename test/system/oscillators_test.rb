require "application_system_test_case"

class OscillatorsTest < ApplicationSystemTestCase
  setup do
    @oscillator = oscillators(:one)
  end

  test "visiting the index" do
    visit oscillators_url
    assert_selector "h1", text: "Oscillators"
  end

  test "should create oscillator" do
    visit oscillators_url
    click_on "New oscillator"

    fill_in "Detune", with: @oscillator.detune
    fill_in "Frequency", with: @oscillator.frequency
    fill_in "Wave", with: @oscillator.wave
    click_on "Create Oscillator"

    assert_text "Oscillator was successfully created"
    click_on "Back"
  end

  test "should update Oscillator" do
    visit oscillator_url(@oscillator)
    click_on "Edit this oscillator", match: :first

    fill_in "Detune", with: @oscillator.detune
    fill_in "Frequency", with: @oscillator.frequency
    fill_in "Wave", with: @oscillator.wave
    click_on "Update Oscillator"

    assert_text "Oscillator was successfully updated"
    click_on "Back"
  end

  test "should destroy Oscillator" do
    visit oscillator_url(@oscillator)
    click_on "Destroy this oscillator", match: :first

    assert_text "Oscillator was successfully destroyed"
  end
end
