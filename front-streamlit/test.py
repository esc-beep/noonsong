import streamlit as st
import folium
from streamlit_folium import folium_static
from geopy.geocoders import Nominatim

def main():
    # Streamlit 앱 제목 설정
    st.set_page_config(page_title="숙명여대 캠퍼스 지도", page_icon=":mortar_board:", layout="wide")
    
    # 사이드바 메뉴 생성
    menu = ["인구분포도", "오늘의 학식", "마이페이지"]
    choice = st.sidebar.selectbox("메뉴", menu)
    
    if choice == "인구분포도":
        # 숙명여대 캠퍼스 좌표 설정
        smwu_location = [37.5452, 126.9649]
        
        # folium 지도 생성
        m = folium.Map(location=smwu_location, zoom_start=16)
        
        # 1캠퍼스와 2캠퍼스 건물 폴리곤 추가
        folium.Polygon(
            locations=[(37.5452, 126.9649), (37.5455, 126.9651), (37.5457, 126.9648), (37.5454, 126.9646)],
            color='blue',
            fill=True,
            fill_color='blue',
            fill_opacity=0.2
        ).add_to(m)
        
        folium.Polygon(
            locations=[(37.5440, 126.9665), (37.5443, 126.9667), (37.5445, 126.9664), (37.5442, 126.9662)],
            color='red',
            fill=True,
            fill_color='red',
            fill_opacity=0.2  
        ).add_to(m)
        
        # 현재 위치 확인 기능 추가
        if st.button("현재 위치 확인"):
            geolocator = Nominatim(user_agent="my_app")
            location = geolocator.geocode("서울특별시 용산구 청파로47길 100")
            if location:
                folium.Marker(
                    location=[location.latitude, location.longitude],
                    popup="현재 위치",
                    icon=folium.Icon(color='green')
                ).add_to(m)
        
        # 지도를 Streamlit 앱에 표시
        folium_static(m)
    
    elif choice == "오늘의 학식":
        st.subheader("오늘의 학식 정보")
        # 오늘의 학식 정보를 표시하는 코드 작성
        
    elif choice == "마이페이지":
        st.subheader("마이페이지")
        # 마이페이지 관련 코드 작성

if __name__ == '__main__':
    main()
