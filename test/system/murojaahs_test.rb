require "application_system_test_case"

class MurojaahsTest < ApplicationSystemTestCase
  setup do
    @murojaah = murojaahs(:one)
  end

  test "visiting the index" do
    visit murojaahs_url
    assert_selector "h1", text: "Murojaahs"
  end

  test "should create murojaah" do
    visit murojaahs_url
    click_on "New murojaah"

    fill_in "Aa", with: @murojaah.AA
    fill_in "At", with: @murojaah.AT
    fill_in "Ia", with: @murojaah.IA
    fill_in "Ib", with: @murojaah.IB
    fill_in "It", with: @murojaah.IT
    fill_in "Ll", with: @murojaah.LL
    fill_in "Lu", with: @murojaah.LU
    fill_in "Lw", with: @murojaah.LW
    fill_in "Ma", with: @murojaah.MA
    fill_in "Mb", with: @murojaah.MB
    fill_in "Mt", with: @murojaah.MT
    fill_in "Sh", with: @murojaah.SH
    fill_in "Sq", with: @murojaah.SQ
    fill_in "St", with: @murojaah.ST
    fill_in "Zb", with: @murojaah.ZB
    fill_in "Zq", with: @murojaah.ZQ
    fill_in "Zt", with: @murojaah.ZT
    fill_in "Grade", with: @murojaah.grade
    fill_in "No surah", with: @murojaah.no_surah
    fill_in "Total page", with: @murojaah.total_page
    fill_in "Total rakaat", with: @murojaah.total_rakaat
    fill_in "User", with: @murojaah.user_id
    click_on "Create Murojaah"

    assert_text "Murojaah was successfully created"
    click_on "Back"
  end

  test "should update Murojaah" do
    visit murojaah_url(@murojaah)
    click_on "Edit this murojaah", match: :first

    fill_in "Aa", with: @murojaah.AA
    fill_in "At", with: @murojaah.AT
    fill_in "Ia", with: @murojaah.IA
    fill_in "Ib", with: @murojaah.IB
    fill_in "It", with: @murojaah.IT
    fill_in "Ll", with: @murojaah.LL
    fill_in "Lu", with: @murojaah.LU
    fill_in "Lw", with: @murojaah.LW
    fill_in "Ma", with: @murojaah.MA
    fill_in "Mb", with: @murojaah.MB
    fill_in "Mt", with: @murojaah.MT
    fill_in "Sh", with: @murojaah.SH
    fill_in "Sq", with: @murojaah.SQ
    fill_in "St", with: @murojaah.ST
    fill_in "Zb", with: @murojaah.ZB
    fill_in "Zq", with: @murojaah.ZQ
    fill_in "Zt", with: @murojaah.ZT
    fill_in "Grade", with: @murojaah.grade
    fill_in "No surah", with: @murojaah.no_surah
    fill_in "Total page", with: @murojaah.total_page
    fill_in "Total rakaat", with: @murojaah.total_rakaat
    fill_in "User", with: @murojaah.user_id
    click_on "Update Murojaah"

    assert_text "Murojaah was successfully updated"
    click_on "Back"
  end

  test "should destroy Murojaah" do
    visit murojaah_url(@murojaah)
    click_on "Destroy this murojaah", match: :first

    assert_text "Murojaah was successfully destroyed"
  end
end
