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
   * Init isotope layout and filters
   */
  document.querySelectorAll(".isotope-layout").forEach(function (isotopeItem) {
    let layout = isotopeItem.getAttribute("data-layout") ?? "masonry";
    let filter = isotopeItem.getAttribute("data-default-filter") ?? "*";
    let sort = isotopeItem.getAttribute("data-sort") ?? "original-order";

    let initIsotope;
    imagesLoaded(isotopeItem.querySelector(".isotope-container"), function () {
      initIsotope = new Isotope(
        isotopeItem.querySelector(".isotope-container"),
        {
          itemSelector: ".isotope-item",
          layoutMode: layout,
          filter: filter,
          sortBy: sort,
        }
      );
    });

    isotopeItem
      .querySelectorAll(".isotope-filters li")
      .forEach(function (filters) {
        filters.addEventListener(
          "click",
          function () {
            isotopeItem
              .querySelector(".isotope-filters .filter-active")
              .classList.remove("filter-active");
            this.classList.add("filter-active");
            initIsotope.arrange({
              filter: this.getAttribute("data-filter"),
            });
            if (typeof aosInit === "function") {
              aosInit();
            }
          },
          false
        );
      });
  });

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

// JakselApp Pagination Handler

$(document).ready(function () {
  $(document).on("click", ".pagination-button", function () {
    if (!$(this).prop("disabled")) {
      var page = $(this).data("page");
      loadApps(page);
    }
  });

  function loadApps(page) {
    // Fade out effect
    $(".box").css("opacity", "0");

    setTimeout(() => {
      $.ajax({
        url: "/daftarapp/getApps",
        method: "GET",
        data: { page: page },
        success: function (response) {
          // Update konten
          $(".box").html(response).css("opacity", "1");

          $(".box a").attr("target", "_blank");

          // Update tombol pagination
          updatePaginationButtons(page);

          // Animasi untuk setiap item
          $(".list").each(function (index) {
            $(this)
              .css({
                opacity: "0",
                transform: "translateX(50px)",
                transition: "all 0.5s ease",
              })
              .delay(index * 200)
              .queue(function (next) {
                $(this).css({
                  opacity: "1",
                  transform: "translateX(0)",
                });
                next();
              });
          });
        },
        error: function (xhr, status, error) {
          console.error(error);
          $(".box")
            .html('<div class="error">Terjadi kesalahan saat memuat data</div>')
            .css("opacity", "1");
        },
      });
    }, 300);
  }

  loadApps(1);
});

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

$(document).ready(function () {
  $(".form-select").select2({
    dropdownAutoWidth: true, // Atur lebar dropdown
    maximumSelectionLength: 28, // Atur jumlah maksimum item yang bisa dipilih
  });
});
