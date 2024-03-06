require "test_helper"

class MurojaahsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @murojaah = murojaahs(:one)
  end

  test "should get index" do
    get murojaahs_url
    assert_response :success
  end

  test "should get new" do
    get new_murojaah_url
    assert_response :success
  end

  test "should create murojaah" do
    assert_difference("Murojaah.count") do
      post murojaahs_url, params: { murojaah: { AA: @murojaah.AA, AT: @murojaah.AT, IA: @murojaah.IA, IB: @murojaah.IB, IT: @murojaah.IT, LL: @murojaah.LL, LU: @murojaah.LU, LW: @murojaah.LW, MA: @murojaah.MA, MB: @murojaah.MB, MT: @murojaah.MT, SH: @murojaah.SH, SQ: @murojaah.SQ, ST: @murojaah.ST, ZB: @murojaah.ZB, ZQ: @murojaah.ZQ, ZT: @murojaah.ZT, grade: @murojaah.grade, no_surah: @murojaah.no_surah, total_page: @murojaah.total_page, total_rakaat: @murojaah.total_rakaat, user_id: @murojaah.user_id } }
    end

    assert_redirected_to murojaah_url(Murojaah.last)
  end

  test "should show murojaah" do
    get murojaah_url(@murojaah)
    assert_response :success
  end

  test "should get edit" do
    get edit_murojaah_url(@murojaah)
    assert_response :success
  end

  test "should update murojaah" do
    patch murojaah_url(@murojaah), params: { murojaah: { AA: @murojaah.AA, AT: @murojaah.AT, IA: @murojaah.IA, IB: @murojaah.IB, IT: @murojaah.IT, LL: @murojaah.LL, LU: @murojaah.LU, LW: @murojaah.LW, MA: @murojaah.MA, MB: @murojaah.MB, MT: @murojaah.MT, SH: @murojaah.SH, SQ: @murojaah.SQ, ST: @murojaah.ST, ZB: @murojaah.ZB, ZQ: @murojaah.ZQ, ZT: @murojaah.ZT, grade: @murojaah.grade, no_surah: @murojaah.no_surah, total_page: @murojaah.total_page, total_rakaat: @murojaah.total_rakaat, user_id: @murojaah.user_id } }
    assert_redirected_to murojaah_url(@murojaah)
  end

  test "should destroy murojaah" do
    assert_difference("Murojaah.count", -1) do
      delete murojaah_url(@murojaah)
    end

    assert_redirected_to murojaahs_url
  end
end
