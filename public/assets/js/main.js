/**
 * Template Name: Plato
 * Template URL: https://bootstrapmade.com/plato-responsive-bootstrap-website-template/
 * Updated: Aug 07 2024 with Bootstrap v5.3.3
 * Author: BootstrapMade.com
 * License: https://bootstrapmade.com/license/
 */

(function () {
  "use strict";

  /**
   * Apply .scrolled class to the body as the page is scrolled down
   */
  function toggleScrolled() {
    const selectBody = document.querySelector("body");
    const selectHeader = document.querySelector("#header");

    if (!selectHeader) return;

    if (
      !selectHeader.classList.contains("scroll-up-sticky") &&
      !selectHeader.classList.contains("sticky-top") &&
      !selectHeader.classList.contains("fixed-top")
    )
      return;
    window.scrollY > 100
      ? selectBody.classList.add("scrolled")
      : selectBody.classList.remove("scrolled");
  }

  document.addEventListener("scroll", toggleScrolled);
  window.addEventListener("load", toggleScrolled);

  /**
   * Scroll top button
   */
  let scrollTop = document.querySelector(".scroll-top");

  function toggleScrollTop() {
    if (scrollTop) {
      window.scrollY > 100
        ? scrollTop.classList.add("active")
        : scrollTop.classList.remove("active");
    }
  }
  scrollTop.addEventListener("click", (e) => {
    e.preventDefault();
    window.scrollTo({
      top: 0,
      behavior: "smooth",
    });
  });

  window.addEventListener("load", toggleScrollTop);
  document.addEventListener("scroll", toggleScrollTop);

  /**
   * Animation on scroll function and init
   */
  function aosInit() {
    AOS.init({
      duration: 600,
      easing: "ease-in-out",
      once: true,
      mirror: false,
    });
  }
  window.addEventListener("load", aosInit);

  /**
   * Init swiper sliders
   */
  function initSwiper() {
    document.querySelectorAll(".init-swiper").forEach(function (swiperElement) {
      let config = JSON.parse(
        swiperElement.querySelector(".swiper-config").innerHTML.trim()
      );

      if (swiperElement.classList.contains("swiper-tab")) {
        initSwiperWithCustomPagination(swiperElement, config);
      } else {
        new Swiper(swiperElement, config);
      }
    });
  }

  window.addEventListener("load", initSwiper);

  /**
   * Correct scrolling position upon page load for URLs containing hash links.
   */
  window.addEventListener("load", function (e) {
    if (window.location.hash) {
      if (document.querySelector(window.location.hash)) {
        setTimeout(() => {
          let section = document.querySelector(window.location.hash);
          let scrollMarginTop = getComputedStyle(section).scrollMarginTop;
          window.scrollTo({
            top: section.offsetTop - parseInt(scrollMarginTop),
            behavior: "smooth",
          });
        }, 100);
      }
    }
  });

  /**
   * Navmenu Scrollspy
   */
  let navmenulinks = document.querySelectorAll(".navmenu a");

  function navmenuScrollspy() {
    navmenulinks.forEach((navmenulink) => {
      if (!navmenulink.hash) return;
      let section = document.querySelector(navmenulink.hash);
      if (!section) return;
      let position = window.scrollY + 200;
      if (
        position >= section.offsetTop &&
        position <= section.offsetTop + section.offsetHeight
      ) {
        document
          .querySelectorAll(".navmenu a.active")
          .forEach((link) => link.classList.remove("active"));
        navmenulink.classList.add("active");
      } else {
        navmenulink.classList.remove("active");
      }
    });
  }
  window.addEventListener("load", navmenuScrollspy);
  document.addEventListener("scroll", navmenuScrollspy);
})();

// Kecamatan Pagination Handler
$(document).ready(function () {
  $(document).on("click", ".kecamatan-pagination-button", function () {
    var page = $(this).data("page");
    loadKecamatan(page);

    $(".kecamatan-pagination-button").removeClass("active");
    $(this).addClass("active");
  });

  function loadKecamatan(page) {
    $("#kecamatan-container").css("opacity", "0");

    $("#kecamatan-pagination-container").css("opacity", "1");

    setTimeout(() => {
      $.ajax({
        url: "/daftarapp/getKecamatan",
        method: "GET",
        data: { page: page },
        success: function (response) {
          $("#kecamatan-container").html(response);

          $("#kecamatan-container").css("opacity", "1");

          $(".isotope-item").each(function (index) {
            $(this)
              .css({
                opacity: "0",
                transform: "translateX(50px)",
                transition: "all 0.5s ease",
              })
              .delay(index * 200) // Delay untuk setiap item
              .queue(function (next) {
                $(this).css({
                  opacity: "1",
                  transform: "translateX(0)",
                });
                next();
              });
          });
          updatePaginationButtons(page);
        },
        error: function (xhr, status, error) {
          console.error(error);
          $("#kecamatan-container")
            .html('<div class="error">Terjadi kesalahan saat memuat data</div>')
            .css("opacity", "1");
        },
      });
    }, 300);
  }

  function updatePaginationButtons(currentPage) {
    $(
      "#kecamatan-pagination-container .kecamatan-pagination-button"
    ).removeClass("active");
    $(
      "#kecamatan-pagination-container .kecamatan-pagination-button[data-page='" +
        currentPage +
        "']"
    ).addClass("active");
  }

  loadKecamatan(1);
});

// Jaksel App Filtering
$(document).ready(function () {
  $(".portfolio-filters li").on("click", function () {
    var filterValue = $(this).data("filter");

    $(".portfolio-filters li").removeClass("filter-active");
    $(this).addClass("filter-active");
    $(".list").hide();

    if (filterValue === "*") {
      $(".list").show();
    } else {
      $(".list" + filterValue).show();
    }
  });
});

// Jaksel App Searching
$(document).ready(function () {
  $("#search-input").on("input", function () {
    var keyword = $(this).val().toLowerCase();
    SearchApps(keyword);
  });

  function SearchApps(keyword) {
    $(".list").each(function () {
      var appName = $(this).find("h4").text().toLowerCase();
      if (appName.includes(keyword)) {
        $(this).show();
      } else {
        $(this).hide();
      }
    });
  }

  $(document).ready(function () {
    $("#search-input").on("input", function () {
      var keyword = $(this).val().toLowerCase();
      if (keyword.length > 0) {
        SearchApps(keyword);
      } else {
        $(".list").show();
      }
    });
  });
});

// Dropdown Text Handler
const dropdownButton = document.getElementById("dropdownButton");
const dropdownItems = document.querySelectorAll(".dropdown-item");
const defaultText = "--- Pilih Bagian / Suku Dinas ---";

dropdownButton.textContent = defaultText;

dropdownItems.forEach((item) => {
  item.addEventListener("click", function () {
    if (this.textContent == "All") {
      dropdownButton.textContent = defaultText;
    } else {
      dropdownButton.textContent = this.textContent;
    }
  });
});
